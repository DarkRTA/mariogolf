; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02b", ROMX[$4000], BANK[$2b]

    db $ed                                        ; $4000: $ed
    ld [hl], e                                    ; $4001: $73
    sub h                                         ; $4002: $94
    ld [hl], h                                    ; $4003: $74
    ld b, b                                       ; $4004: $40
    ld b, b                                       ; $4005: $40
    ld c, b                                       ; $4006: $48
    ld b, b                                       ; $4007: $40
    add l                                         ; $4008: $85
    ld c, d                                       ; $4009: $4a
    ld b, c                                       ; $400a: $41
    ld c, a                                       ; $400b: $4f
    db $fc                                        ; $400c: $fc
    ld d, b                                       ; $400d: $50
    ld b, d                                       ; $400e: $42
    ld d, c                                       ; $400f: $51
    adc b                                         ; $4010: $88
    ld d, c                                       ; $4011: $51
    adc c                                         ; $4012: $89
    ld d, c                                       ; $4013: $51
    adc b                                         ; $4014: $88
    ld b, b                                       ; $4015: $40
    xor a                                         ; $4016: $af
    ld d, l                                       ; $4017: $55
    or a                                          ; $4018: $b7
    ld d, l                                       ; $4019: $55
    ldh [$5e], a                                  ; $401a: $e0 $5e
    ld e, $62                                     ; $401c: $1e $62
    ld a, [$5363]                                 ; $401e: $fa $63 $53
    ld h, h                                       ; $4021: $64
    and d                                         ; $4022: $a2
    ld h, h                                       ; $4023: $64
    and e                                         ; $4024: $a3
    ld h, h                                       ; $4025: $64
    rst $30                                       ; $4026: $f7
    ld d, l                                       ; $4027: $55
    add hl, hl                                    ; $4028: $29
    ld h, l                                       ; $4029: $65
    ld sp, $6c65                                  ; $402a: $31 $65 $6c
    ld l, h                                       ; $402d: $6c

Jump_02b_402e:
    rst $30                                       ; $402e: $f7
    ld l, a                                       ; $402f: $6f
    xor d                                         ; $4030: $aa
    ld [hl], d                                    ; $4031: $72
    ld d, $73                                     ; $4032: $16 $73
    ld h, [hl]                                    ; $4034: $66
    ld [hl], e                                    ; $4035: $73
    ld h, a                                       ; $4036: $67
    ld [hl], e                                    ; $4037: $73
    ld [hl], c                                    ; $4038: $71
    ld h, l                                       ; $4039: $65
    adc b                                         ; $403a: $88
    ld d, c                                       ; $403b: $51
    and d                                         ; $403c: $a2
    ld h, h                                       ; $403d: $64
    ld h, [hl]                                    ; $403e: $66
    ld [hl], e                                    ; $403f: $73
    nop                                           ; $4040: $00
    nop                                           ; $4041: $00
    nop                                           ; $4042: $00
    nop                                           ; $4043: $00
    ccf                                           ; $4044: $3f
    ccf                                           ; $4045: $3f
    nop                                           ; $4046: $00
    nop                                           ; $4047: $00
    xor $6b                                       ; $4048: $ee $6b
    rst $38                                       ; $404a: $ff
    ld a, a                                       ; $404b: $7f
    adc $39                                       ; $404c: $ce $39
    nop                                           ; $404e: $00
    nop                                           ; $404f: $00
    adc e                                         ; $4050: $8b
    ld hl, $218b                                  ; $4051: $21 $8b $21
    adc e                                         ; $4054: $8b
    ld hl, $218b                                  ; $4055: $21 $8b $21
    rst $18                                       ; $4058: $df
    nop                                           ; $4059: $00
    rra                                           ; $405a: $1f
    inc bc                                        ; $405b: $03
    ld [$000b], sp                                ; $405c: $08 $0b $00
    nop                                           ; $405f: $00
    ld d, h                                       ; $4060: $54
    ld h, d                                       ; $4061: $62
    rst $38                                       ; $4062: $ff
    ld l, e                                       ; $4063: $6b
    add b                                         ; $4064: $80
    ld [de], a                                    ; $4065: $12
    nop                                           ; $4066: $00
    nop                                           ; $4067: $00
    ld d, h                                       ; $4068: $54
    ld h, d                                       ; $4069: $62
    rst $38                                       ; $406a: $ff
    ld l, e                                       ; $406b: $6b
    ld a, [hl]                                    ; $406c: $7e
    ld hl, $0000                                  ; $406d: $21 $00 $00
    ld d, h                                       ; $4070: $54
    ld h, d                                       ; $4071: $62
    rst $38                                       ; $4072: $ff
    ld l, e                                       ; $4073: $6b
    sbc a                                         ; $4074: $9f
    ld bc, $0000                                  ; $4075: $01 $00 $00
    ld d, h                                       ; $4078: $54
    ld h, d                                       ; $4079: $62
    rst $38                                       ; $407a: $ff
    ld l, e                                       ; $407b: $6b
    rst $38                                       ; $407c: $ff
    jr nz, jr_02b_407f                            ; $407d: $20 $00

jr_02b_407f:
    nop                                           ; $407f: $00
    ld d, h                                       ; $4080: $54
    ld h, d                                       ; $4081: $62
    rst $38                                       ; $4082: $ff
    ld l, e                                       ; $4083: $6b
    ret c                                         ; $4084: $d8

    ld a, h                                       ; $4085: $7c
    nop                                           ; $4086: $00
    nop                                           ; $4087: $00
    db $fd                                        ; $4088: $fd
    rst $38                                       ; $4089: $ff
    rst $38                                       ; $408a: $ff
    db $ec                                        ; $408b: $ec
    jp Jump_02b_5a3c                              ; $408c: $c3 $3c $5a


    and l                                         ; $408f: $a5
    inc a                                         ; $4090: $3c
    jp $fee6                                      ; $4091: $c3 $e6 $fe


    pop hl                                        ; $4094: $e1
    and l                                         ; $4095: $a5
    ld e, d                                       ; $4096: $5a
    ld sp, hl                                     ; $4097: $f9
    ld [c], a                                     ; $4098: $e2
    ldh a, [$e4]                                  ; $4099: $f0 $e4
    dec sp                                        ; $409b: $3b
    rst $00                                       ; $409c: $c7
    and a                                         ; $409d: $a7
    sbc a                                         ; $409e: $9f
    ld e, h                                       ; $409f: $5c
    rst $08                                       ; $40a0: $cf
    add hl, sp                                    ; $40a1: $39
    rst $08                                       ; $40a2: $cf
    dec sp                                        ; $40a3: $3b
    ldh [$e5], a                                  ; $40a4: $e0 $e5
    ret z                                         ; $40a6: $c8

    ldh [rP1], a                                  ; $40a7: $e0 $00
    cp $d0                                        ; $40a9: $fe $d0

jr_02b_40ab:
    jp hl                                         ; $40ab: $e9


    call c, $e5e3                                 ; $40ac: $dc $e3 $e5
    ld a, d                                       ; $40af: $7a
    di                                            ; $40b0: $f3
    inc a                                         ; $40b1: $3c
    di                                            ; $40b2: $f3
    ld a, a                                       ; $40b3: $7f
    cp h                                          ; $40b4: $bc
    di                                            ; $40b5: $f3
    cp h                                          ; $40b6: $bc
    ld a, [$fcb5]                                 ; $40b7: $fa $b5 $fc
    or e                                          ; $40ba: $b3
    cp $e1                                        ; $40bb: $fe $e1
    ei                                            ; $40bd: $fb
    push af                                       ; $40be: $f5
    cp d                                          ; $40bf: $ba
    ld a, [c]                                     ; $40c0: $f2
    pop hl                                        ; $40c1: $e1
    di                                            ; $40c2: $f3
    inc a                                         ; $40c3: $3c
    ld a, [$ec75]                                 ; $40c4: $fa $75 $ec
    ld a, a                                       ; $40c7: $7f
    di                                            ; $40c8: $f3
    call z, $1cf3                                 ; $40c9: $cc $f3 $1c
    db $e3                                        ; $40cc: $e3
    dec h                                         ; $40cd: $25
    jp c, $e1a9                                   ; $40ce: $da $a9 $e1

    ld a, [c]                                     ; $40d1: $f2
    ret z                                         ; $40d2: $c8

    push hl                                       ; $40d3: $e5
    nop                                           ; $40d4: $00
    pop bc                                        ; $40d5: $c1
    ldh [$99], a                                  ; $40d6: $e0 $99
    pop hl                                        ; $40d8: $e1
    rst $08                                       ; $40d9: $cf
    add hl, sp                                    ; $40da: $39
    ld e, a                                       ; $40db: $5f
    xor h                                         ; $40dc: $ac
    rst $38                                       ; $40dd: $ff
    scf                                           ; $40de: $37
    rst $08                                       ; $40df: $cf
    inc sp                                        ; $40e0: $33
    rst $08                                       ; $40e1: $cf
    jr c, jr_02b_40ab                             ; $40e2: $38 $c7

    and h                                         ; $40e4: $a4
    ld e, e                                       ; $40e5: $5b
    cp [hl]                                       ; $40e6: $be
    ldh a, [$e2]                                  ; $40e7: $f0 $e2
    dec sp                                        ; $40e9: $3b
    ld e, a                                       ; $40ea: $5f
    xor e                                         ; $40eb: $ab
    ccf                                           ; $40ec: $3f
    set 7, [hl]                                   ; $40ed: $cb $fe
    pop hl                                        ; $40ef: $e1
    xor a                                         ; $40f0: $af
    ld a, a                                       ; $40f1: $7f
    ld e, e                                       ; $40f2: $5b
    rst $08                                       ; $40f3: $cf
    dec sp                                        ; $40f4: $3b
    rst $08                                       ; $40f5: $cf
    dec sp                                        ; $40f6: $3b
    ldh a, [rP1]                                  ; $40f7: $f0 $00
    cp $e3                                        ; $40f9: $fe $e3
    ld d, c                                       ; $40fb: $51
    rrca                                          ; $40fc: $0f
    cp $ec                                        ; $40fd: $fe $ec
    add sp, -$1b                                  ; $40ff: $e8 $e5
    ldh [$e7], a                                  ; $4101: $e0 $e7
    nop                                           ; $4103: $00
    ld [hl], b                                    ; $4104: $70
    ldh [rP1], a                                  ; $4105: $e0 $00
    ldh [$e8], a                                  ; $4107: $e0 $e8
    ret nz                                        ; $4109: $c0

    ldh a, [$e3]                                  ; $410a: $f0 $e3
    sub a                                         ; $410c: $97
    ld [c], a                                     ; $410d: $e2
    ld a, [$e6f0]                                 ; $410e: $fa $f0 $e6
    pop hl                                        ; $4111: $e1
    rst $38                                       ; $4112: $ff
    pop hl                                        ; $4113: $e1
    db $10                                        ; $4114: $10
    pop hl                                        ; $4115: $e1
    dec l                                         ; $4116: $2d
    rst $18                                       ; $4117: $df
    rst $38                                       ; $4118: $ff
    scf                                           ; $4119: $37
    di                                            ; $411a: $f3
    ld a, l                                       ; $411b: $7d
    pop bc                                        ; $411c: $c1
    cp $40                                        ; $411d: $fe $40
    rst $18                                       ; $411f: $df
    ld b, b                                       ; $4120: $40
    rst $38                                       ; $4121: $ff
    cp a                                          ; $4122: $bf
    ld h, b                                       ; $4123: $60
    jp $f73c                                      ; $4124: $c3 $3c $f7


    rst $38                                       ; $4127: $ff
    ld a, a                                       ; $4128: $7f
    ld [$fff7], sp                                ; $4129: $08 $f7 $ff
    ld [$5ff7], sp                                ; $412c: $08 $f7 $5f

jr_02b_412f:
    ldh [$fe], a                                  ; $412f: $e0 $fe
    nop                                           ; $4131: $00
    rst $38                                       ; $4132: $ff
    ld bc, $c3ff                                  ; $4133: $01 $ff $c3
    inc a                                         ; $4136: $3c
    sbc d                                         ; $4137: $9a
    push hl                                       ; $4138: $e5
    db $fd                                        ; $4139: $fd
    ld b, e                                       ; $413a: $43
    ld a, e                                       ; $413b: $7b

jr_02b_413c:
    ld a, [hl]                                    ; $413c: $7e
    rst $38                                       ; $413d: $ff
    cp l                                          ; $413e: $bd
    adc h                                         ; $413f: $8c
    rst $38                                       ; $4140: $ff
    adc h                                         ; $4141: $8c
    ei                                            ; $4142: $fb
    adc b                                         ; $4143: $88
    ld a, a                                       ; $4144: $7f
    ld [$e0fe], sp                                ; $4145: $08 $fe $e0
    pop bc                                        ; $4148: $c1
    db $db                                        ; $4149: $db

jr_02b_414a:
    rst $20                                       ; $414a: $e7
    or $2c                                        ; $414b: $f6 $2c
    db $eb                                        ; $414d: $eb
    jr c, jr_02b_412f                             ; $414e: $38 $df

    rst $38                                       ; $4150: $ff
    jr jr_02b_414a                                ; $4151: $18 $f7

    db $10                                        ; $4153: $10
    rst $38                                       ; $4154: $ff
    db $10                                        ; $4155: $10
    jp Jump_02b_723c                              ; $4156: $c3 $3c $72


    rst $38                                       ; $4159: $ff
    db $fd                                        ; $415a: $fd
    db $ec                                        ; $415b: $ec
    rst $08                                       ; $415c: $cf
    ld a, [$fec3]                                 ; $415d: $fa $c3 $fe
    ld b, e                                       ; $4160: $43
    ld a, e                                       ; $4161: $7b
    rst $38                                       ; $4162: $ff
    ld b, d                                       ; $4163: $42
    cp l                                          ; $4164: $bd
    add [hl]                                      ; $4165: $86
    rst $30                                       ; $4166: $f7
    add h                                         ; $4167: $84
    jp $573c                                      ; $4168: $c3 $3c $57


    ld a, a                                       ; $416b: $7f
    xor a                                         ; $416c: $af
    dec de                                        ; $416d: $1b
    ld hl, sp+$6f                                 ; $416e: $f8 $6f
    ldh [$7f], a                                  ; $4170: $e0 $7f
    ret nz                                        ; $4172: $c0

    or d                                          ; $4173: $b2
    pop hl                                        ; $4174: $e1
    rst $38                                       ; $4175: $ff
    rst $28                                       ; $4176: $ef
    jr nz, jr_02b_413c                            ; $4177: $20 $c3

    inc a                                         ; $4179: $3c
    reti                                          ; $417a: $d9


    and a                                         ; $417b: $a7
    or [hl]                                       ; $417c: $b6
    adc $ff                                       ; $417d: $ce $ff
    xor e                                         ; $417f: $ab
    ret c                                         ; $4180: $d8

    sub a                                         ; $4181: $97
    ldh a, [$ae]                                  ; $4182: $f0 $ae
    ldh [rIE], a                                  ; $4184: $e0 $ff
    and c                                         ; $4186: $a1
    rst $38                                       ; $4187: $ff
    rst $28                                       ; $4188: $ef
    and c                                         ; $4189: $a1
    jp $993c                                      ; $418a: $c3 $3c $99


    rst $20                                       ; $418d: $e7
    ld l, d                                       ; $418e: $6a
    halt                                          ; $418f: $76
    rst $38                                       ; $4190: $ff
    push de                                       ; $4191: $d5
    inc e                                         ; $4192: $1c
    db $eb                                        ; $4193: $eb
    ld [$c4d5], sp                                ; $4194: $08 $d5 $c4
    ei                                            ; $4197: $fb
    ld [hl+], a                                   ; $4198: $22
    rst $38                                       ; $4199: $ff
    ei                                            ; $419a: $fb
    ld [hl+], a                                   ; $419b: $22
    jp $f23c                                      ; $419c: $c3 $3c $f2


    db $fd                                        ; $419f: $fd
    rst $28                                       ; $41a0: $ef
    rrca                                          ; $41a1: $0f
    ld a, [hl]                                    ; $41a2: $7e
    sub [hl]                                      ; $41a3: $96
    pop hl                                        ; $41a4: $e1
    or l                                          ; $41a5: $b5
    ld sp, $7ece                                  ; $41a6: $31 $ce $7e
    or e                                          ; $41a9: $b3
    ld a, $80                                     ; $41aa: $3e $80
    pop bc                                        ; $41ac: $c1
    rst $38                                       ; $41ad: $ff
    db $fc                                        ; $41ae: $fc
    rst $38                                       ; $41af: $ff
    db $fc                                        ; $41b0: $fc
    add a                                         ; $41b1: $87
    ld a, h                                       ; $41b2: $7c
    rlca                                          ; $41b3: $07
    db $fd                                        ; $41b4: $fd
    ld b, $ef                                     ; $41b5: $06 $ef
    ei                                            ; $41b7: $fb
    inc a                                         ; $41b8: $3c
    ei                                            ; $41b9: $fb
    inc c                                         ; $41ba: $0c
    rst $10                                       ; $41bb: $d7
    jp nz, $fe03                                  ; $41bc: $c2 $03 $fe

    rlca                                          ; $41bf: $07
    rst $38                                       ; $41c0: $ff
    db $fc                                        ; $41c1: $fc
    rrca                                          ; $41c2: $0f
    ld hl, sp+$0f                                 ; $41c3: $f8 $0f
    cp $0f                                        ; $41c5: $fe $0f
    cp $03                                        ; $41c7: $fe $03
    and $c7                                       ; $41c9: $e6 $c7
    jp nz, Jump_000_3fe0                          ; $41cb: $c2 $e0 $3f

    cp $e6                                        ; $41ce: $fe $e6
    ldh [$e3], a                                  ; $41d0: $e0 $e3
    db $fc                                        ; $41d2: $fc
    rrca                                          ; $41d3: $0f
    ldh a, [$7f]                                  ; $41d4: $f0 $7f
    rra                                           ; $41d6: $1f
    pop af                                        ; $41d7: $f1
    rra                                           ; $41d8: $1f
    di                                            ; $41d9: $f3
    ld e, $ff                                     ; $41da: $1e $ff
    ld e, $e0                                     ; $41dc: $1e $e0
    db $e3                                        ; $41de: $e3
    rst $38                                       ; $41df: $ff
    rra                                           ; $41e0: $1f
    ld hl, sp+$07                                 ; $41e1: $f8 $07
    db $fc                                        ; $41e3: $fc
    rst $00                                       ; $41e4: $c7
    db $fc                                        ; $41e5: $fc
    rst $20                                       ; $41e6: $e7
    inc a                                         ; $41e7: $3c
    ei                                            ; $41e8: $fb
    rst $00                                       ; $41e9: $c7
    ld a, h                                       ; $41ea: $7c
    ldh [$fc], a                                  ; $41eb: $e0 $fc
    db $fc                                        ; $41ed: $fc
    rst $28                                       ; $41ee: $ef
    jr nz, @+$61                                  ; $41ef: $20 $5f

    or b                                          ; $41f1: $b0
    rst $38                                       ; $41f2: $ff
    scf                                           ; $41f3: $37
    ret nc                                        ; $41f4: $d0

    cpl                                           ; $41f5: $2f
    ret c                                         ; $41f6: $d8

    dec sp                                        ; $41f7: $3b
    ret z                                         ; $41f8: $c8

    and [hl]                                      ; $41f9: $a6
    ld e, h                                       ; $41fa: $5c
    ei                                            ; $41fb: $fb
    jp Jump_02b_603f                              ; $41fc: $c3 $3f $60


    ret nz                                        ; $41ff: $c0

    ld bc, $01bd                                  ; $4200: $01 $bd $01
    rst $38                                       ; $4203: $ff
    ld b, e                                       ; $4204: $43
    rst $38                                       ; $4205: $ff
    rst $18                                       ; $4206: $df
    ld b, e                                       ; $4207: $43
    cp $63                                        ; $4208: $fe $63
    sbc l                                         ; $420a: $9d
    cp $43                                        ; $420b: $fe $43
    cp h                                          ; $420d: $bc
    db $fc                                        ; $420e: $fc
    ld d, b                                       ; $420f: $50
    ret nz                                        ; $4210: $c0

    db $f4                                        ; $4211: $f4
    ret nz                                        ; $4212: $c0

    rst $38                                       ; $4213: $ff
    ld [$087e], sp                                ; $4214: $08 $7e $08
    rst $38                                       ; $4217: $ff
    adc c                                         ; $4218: $89
    rst $30                                       ; $4219: $f7
    db $ed                                        ; $421a: $ed
    adc l                                         ; $421b: $8d
    halt                                          ; $421c: $76
    ld [c], a                                     ; $421d: $e2
    and b                                         ; $421e: $a0
    xor $00                                       ; $421f: $ee $00
    ld a, a                                       ; $4221: $7f
    ld bc, $ffff                                  ; $4222: $01 $ff $ff
    add c                                         ; $4225: $81
    cp l                                          ; $4226: $bd
    add c                                         ; $4227: $81
    ld a, [hl]                                    ; $4228: $7e
    jp nz, Jump_02b_43df                          ; $4229: $c2 $df $43

    rst $38                                       ; $422c: $ff
    cp h                                          ; $422d: $bc
    ld a, a                                       ; $422e: $7f
    jp $fb3c                                      ; $422f: $c3 $3c $fb


    adc h                                         ; $4232: $8c
    cp d                                          ; $4233: $ba
    adc l                                         ; $4234: $8d
    rst $38                                       ; $4235: $ff
    ld [hl], h                                    ; $4236: $74
    ld a, e                                       ; $4237: $7b
    call c, $ec13                                 ; $4238: $dc $13 $ec
    inc sp                                        ; $423b: $33
    and l                                         ; $423c: $a5
    ld a, [hl-]                                   ; $423d: $3a
    rst $38                                       ; $423e: $ff
    jp $c3fc                                      ; $423f: $c3 $fc $c3


    inc a                                         ; $4242: $3c
    rst $18                                       ; $4243: $df
    jr nc, jr_02b_429d                            ; $4244: $30 $57

    or b                                          ; $4246: $b0
    xor $b2                                       ; $4247: $ee $b2
    pop hl                                        ; $4249: $e1
    scf                                           ; $424a: $37
    call z, $b0a5                                 ; $424b: $cc $a5 $b0
    ld [c], a                                     ; $424e: $e2
    call c, $f7bc                                 ; $424f: $dc $bc $f7
    rst $18                                       ; $4252: $df
    or d                                          ; $4253: $b2
    rst $18                                       ; $4254: $df
    jp nz, $02fe                                  ; $4255: $c2 $fe $02

    inc a                                         ; $4258: $3c
    ldh [$03], a                                  ; $4259: $e0 $03
    db $fd                                        ; $425b: $fd
    db $fd                                        ; $425c: $fd
    cp $e0                                        ; $425d: $fe $e0
    ldh [$c7], a                                  ; $425f: $e0 $c7
    db $f4                                        ; $4261: $f4
    rlca                                          ; $4262: $07
    add sp, $0f                                   ; $4263: $e8 $0f
    call nc, $1bdf                                ; $4265: $d4 $df $1b
    xor l                                         ; $4268: $ad
    inc sp                                        ; $4269: $33
    call nz, $99fb                                ; $426a: $c4 $fb $99
    and c                                         ; $426d: $a1
    ld l, a                                       ; $426e: $6f
    ld c, $ff                                     ; $426f: $0e $ff
    cp e                                          ; $4271: $bb
    add d                                         ; $4272: $82
    ld a, a                                       ; $4273: $7f
    jp nz, $82ba                                  ; $4274: $c2 $ba $82

    ld [hl], l                                    ; $4277: $75
    rlca                                          ; $4278: $07
    rst $28                                       ; $4279: $ef
    ret                                           ; $427a: $c9


    adc $b3                                       ; $427b: $ce $b3
    ld a, h                                       ; $427d: $7c
    or b                                          ; $427e: $b0
    ldh [$0c], a                                  ; $427f: $e0 $0c
    ld [$ff6d], a                                 ; $4281: $ea $6d $ff
    ret c                                         ; $4284: $d8

    rra                                           ; $4285: $1f
    or $07                                        ; $4286: $f6 $07
    cp d                                          ; $4288: $ba
    add e                                         ; $4289: $83
    ld l, l                                       ; $428a: $6d
    and $e5                                       ; $428b: $e6 $e5
    rst $18                                       ; $428d: $df
    ld [hl], a                                    ; $428e: $77
    and b                                         ; $428f: $a0
    cp $c8                                        ; $4290: $fe $c8
    ldh [$fc], a                                  ; $4292: $e0 $fc
    pop hl                                        ; $4294: $e1
    ld [bc], a                                    ; $4295: $02
    inc bc                                        ; $4296: $03
    cp $df                                        ; $4297: $fe $df
    rrca                                          ; $4299: $0f
    ld [$0f0f], sp                                ; $429a: $08 $0f $0f

jr_02b_429d:
    rrca                                          ; $429d: $0f
    ld b, $e5                                     ; $429e: $06 $e5
    jr nz, @-$1e                                  ; $42a0: $20 $e0

    rst $38                                       ; $42a2: $ff
    ccf                                           ; $42a3: $3f
    ld hl, sp+$08                                 ; $42a4: $f8 $08
    ld hl, sp-$08                                 ; $42a6: $f8 $f8
    ld hl, sp-$01                                 ; $42a8: $f8 $ff
    ld bc, $fe7f                                  ; $42aa: $01 $7f $fe
    inc bc                                        ; $42ad: $03
    db $fc                                        ; $42ae: $fc
    rlca                                          ; $42af: $07
    ld hl, sp+$0f                                 ; $42b0: $f8 $0f
    add hl, bc                                    ; $42b2: $09
    cp $c0                                        ; $42b3: $fe $c0
    rst $38                                       ; $42b5: $ff
    db $10                                        ; $42b6: $10
    rra                                           ; $42b7: $1f
    rra                                           ; $42b8: $1f
    rra                                           ; $42b9: $1f
    add a                                         ; $42ba: $87
    db $fc                                        ; $42bb: $fc
    rra                                           ; $42bc: $1f
    ld hl, sp-$01                                 ; $42bd: $f8 $ff
    ld a, a                                       ; $42bf: $7f
    ldh [rIE], a                                  ; $42c0: $e0 $ff
    sbc h                                         ; $42c2: $9c
    db $e4                                        ; $42c3: $e4
    db $fc                                        ; $42c4: $fc
    rlca                                          ; $42c5: $07
    db $fc                                        ; $42c6: $fc
    cp a                                          ; $42c7: $bf
    inc b                                         ; $42c8: $04
    db $fc                                        ; $42c9: $fc
    db $fc                                        ; $42ca: $fc
    db $fc                                        ; $42cb: $fc
    rst $38                                       ; $42cc: $ff
    ld bc, $e0fe                                  ; $42cd: $01 $fe $e0
    ld e, $ff                                     ; $42d0: $1e $ff
    di                                            ; $42d2: $f3
    ld e, $11                                     ; $42d3: $1e $11
    rra                                           ; $42d5: $1f
    ldh a, [$1f]                                  ; $42d6: $f0 $1f
    inc c                                         ; $42d8: $0c
    rrca                                          ; $42d9: $0f
    xor e                                         ; $42da: $ab
    inc bc                                        ; $42db: $03
    inc bc                                        ; $42dc: $03
    cp c                                          ; $42dd: $b9

jr_02b_42de:
    ret nz                                        ; $42de: $c0

    ld hl, sp-$1a                                 ; $42df: $f8 $e6
    pop bc                                        ; $42e1: $c1
    call nz, $e0e0                                ; $42e2: $c4 $e0 $e0
    jr jr_02b_42de                                ; $42e5: $18 $f7

    ld hl, sp-$20                                 ; $42e7: $f8 $e0
    ldh [rNR41], a                                ; $42e9: $e0 $20
    and a                                         ; $42eb: $a7
    and l                                         ; $42ec: $a5
    ld e, h                                       ; $42ed: $5c
    srl c                                         ; $42ee: $cb $39
    ei                                            ; $42f0: $fb
    sub $32                                       ; $42f1: $d6 $32
    nop                                           ; $42f3: $00
    and l                                         ; $42f4: $a5
    db $f4                                        ; $42f5: $f4
    ei                                            ; $42f6: $fb
    db $ed                                        ; $42f7: $ed
    ld a, [bc]                                    ; $42f8: $0a
    ei                                            ; $42f9: $fb
    rst $30                                       ; $42fa: $f7
    db $ec                                        ; $42fb: $ec
    dec sp                                        ; $42fc: $3b
    inc l                                         ; $42fd: $2c
    ldh a, [$85]                                  ; $42fe: $f0 $85
    cpl                                           ; $4300: $2f
    rst $18                                       ; $4301: $df
    or a                                          ; $4302: $b7
    ld [hl], b                                    ; $4303: $70
    rst $28                                       ; $4304: $ef
    ld e, a                                       ; $4305: $5f
    rst $00                                       ; $4306: $c7
    cp b                                          ; $4307: $b8
    sbc b                                         ; $4308: $98
    ldh [$e8], a                                  ; $4309: $e0 $e8
    ld c, $fa                                     ; $430b: $0e $fa
    db $e3                                        ; $430d: $e3
    di                                            ; $430e: $f3
    dec e                                         ; $430f: $1d
    add hl, de                                    ; $4310: $19
    ldh [rIE], a                                  ; $4311: $e0 $ff
    or b                                          ; $4313: $b0
    add l                                         ; $4314: $85
    cp b                                          ; $4315: $b8
    ld a, a                                       ; $4316: $7f
    push de                                       ; $4317: $d5
    ld b, a                                       ; $4318: $47
    rst $38                                       ; $4319: $ff
    rst $38                                       ; $431a: $ff
    ld d, a                                       ; $431b: $57
    db $db                                        ; $431c: $db
    inc a                                         ; $431d: $3c
    halt                                          ; $431e: $76
    and l                                         ; $431f: $a5
    inc l                                         ; $4320: $2c
    rst $28                                       ; $4321: $ef
    rst $38                                       ; $4322: $ff
    inc a                                         ; $4323: $3c
    rst $38                                       ; $4324: $ff
    inc [hl]                                      ; $4325: $34
    rst $20                                       ; $4326: $e7
    rst $38                                       ; $4327: $ff
    rst $38                                       ; $4328: $ff
    inc a                                         ; $4329: $3c
    nop                                           ; $432a: $00
    ei                                            ; $432b: $fb
    add a                                         ; $432c: $87
    add a                                         ; $432d: $87
    sub b                                         ; $432e: $90
    add a                                         ; $432f: $87
    dec e                                         ; $4330: $1d
    cp $ab                                        ; $4331: $fe $ab
    ld [c], a                                     ; $4333: $e2
    rst $38                                       ; $4334: $ff
    rst $38                                       ; $4335: $ff
    ld [$7ebd], a                                 ; $4336: $ea $bd $7e
    ld e, d                                       ; $4339: $5a
    jp $99bd                                      ; $433a: $c3 $bd $99


    rst $38                                       ; $433d: $ff
    cp $fe                                        ; $433e: $fe $fe
    pop hl                                        ; $4340: $e1
    add c                                         ; $4341: $81
    rst $38                                       ; $4342: $ff
    sbc c                                         ; $4343: $99
    ld h, [hl]                                    ; $4344: $66
    rst $38                                       ; $4345: $ff
    ld a, l                                       ; $4346: $7d
    cp $df                                        ; $4347: $fe $df
    ld a, [$fe83]                                 ; $4349: $fa $83 $fe
    sbc e                                         ; $434c: $9b
    db $fd                                        ; $434d: $fd
    db $f4                                        ; $434e: $f4
    ldh [rIE], a                                  ; $434f: $e0 $ff
    sbc c                                         ; $4351: $99
    rst $28                                       ; $4352: $ef
    db $fd                                        ; $4353: $fd
    add c                                         ; $4354: $81
    ld a, [hl]                                    ; $4355: $7e
    rst $38                                       ; $4356: $ff
    ldh [$e4], a                                  ; $4357: $e0 $e4
    sbc a                                         ; $4359: $9f
    rst $38                                       ; $435a: $ff
    sbc c                                         ; $435b: $99
    xor e                                         ; $435c: $ab
    cp l                                          ; $435d: $bd
    sbc c                                         ; $435e: $99
    sub $e0                                       ; $435f: $d6 $e0
    ld a, [hl]                                    ; $4361: $7e
    ldh [$e1], a                                  ; $4362: $e0 $e1
    db $fd                                        ; $4364: $fd
    ret nc                                        ; $4365: $d0

    ld [c], a                                     ; $4366: $e2
    db $fd                                        ; $4367: $fd
    rst $38                                       ; $4368: $ff
    sbc c                                         ; $4369: $99
    ld a, [$7d83]                                 ; $436a: $fa $83 $7d
    cp $7e                                        ; $436d: $fe $7e
    rst $38                                       ; $436f: $ff
    rst $38                                       ; $4370: $ff
    rst $38                                       ; $4371: $ff
    add c                                         ; $4372: $81
    cp $9f                                        ; $4373: $fe $9f
    cp $83                                        ; $4375: $fe $83
    db $fc                                        ; $4377: $fc
    sbc a                                         ; $4378: $9f
    cp $eb                                        ; $4379: $fe $eb
    sbc a                                         ; $437b: $9f
    rst $38                                       ; $437c: $ff
    ret nc                                        ; $437d: $d0

    ldh [$fe], a                                  ; $437e: $e0 $fe
    ldh a, [$e6]                                  ; $4380: $f0 $e6
    push af                                       ; $4382: $f5
    sbc d                                         ; $4383: $9a
    di                                            ; $4384: $f3
    rst $20                                       ; $4385: $e7
    sbc h                                         ; $4386: $9c
    ld h, e                                       ; $4387: $63
    db $fc                                        ; $4388: $fc
    and b                                         ; $4389: $a0
    db $e3                                        ; $438a: $e3
    db $e4                                        ; $438b: $e4
    ldh [$91], a                                  ; $438c: $e0 $91
    cp a                                          ; $438e: $bf
    sbc c                                         ; $438f: $99
    rst $38                                       ; $4390: $ff
    ld e, e                                       ; $4391: $5b
    pop bc                                        ; $4392: $c1
    cp [hl]                                       ; $4393: $be
    ld a, a                                       ; $4394: $7f
    db $ec                                        ; $4395: $ec
    inc h                                         ; $4396: $24
    ld a, b                                       ; $4397: $78
    xor b                                         ; $4398: $a8
    rst $38                                       ; $4399: $ff
    ld a, $ee                                     ; $439a: $3e $ee
    ld l, $e2                                     ; $439c: $2e $e2
    ld a, $da                                     ; $439e: $3e $da
    xor [hl]                                      ; $43a0: $ae
    ld e, d                                       ; $43a1: $5a
    rst $38                                       ; $43a2: $ff
    adc $3a                                       ; $43a3: $ce $3a
    adc $3a                                       ; $43a5: $ce $3a
    dec sp                                        ; $43a7: $3b
    inc l                                         ; $43a8: $2c
    ld a, [hl-]                                   ; $43a9: $3a
    dec l                                         ; $43aa: $2d
    ei                                            ; $43ab: $fb
    inc a                                         ; $43ac: $3c
    dec hl                                        ; $43ad: $2b
    cp $e1                                        ; $43ae: $fe $e1
    dec a                                         ; $43b0: $3d
    ld a, [hl+]                                   ; $43b1: $2a
    dec sp                                        ; $43b2: $3b
    inc l                                         ; $43b3: $2c
    dec sp                                        ; $43b4: $3b
    rst $38                                       ; $43b5: $ff
    inc l                                         ; $43b6: $2c
    ldh [$a0], a                                  ; $43b7: $e0 $a0
    db $e3                                        ; $43b9: $e3
    and e                                         ; $43ba: $a3
    rst $20                                       ; $43bb: $e7
    and h                                         ; $43bc: $a4
    rst $20                                       ; $43bd: $e7
    rst $38                                       ; $43be: $ff
    and l                                         ; $43bf: $a5
    rst $38                                       ; $43c0: $ff
    cp h                                          ; $43c1: $bc
    cp a                                          ; $43c2: $bf
    add c                                         ; $43c3: $81
    halt                                          ; $43c4: $76
    ld a, [c]                                     ; $43c5: $f2
    xor h                                         ; $43c6: $ac
    rst $38                                       ; $43c7: $ff
    ld h, h                                       ; $43c8: $64
    rlca                                          ; $43c9: $07
    dec b                                         ; $43ca: $05

jr_02b_43cb:
    rst $00                                       ; $43cb: $c7
    push bc                                       ; $43cc: $c5
    rst $20                                       ; $43cd: $e7
    dec h                                         ; $43ce: $25
    ld h, a                                       ; $43cf: $67
    rst $38                                       ; $43d0: $ff
    dec h                                         ; $43d1: $25
    rst $00                                       ; $43d2: $c7
    ld b, l                                       ; $43d3: $45
    add a                                         ; $43d4: $87
    add l                                         ; $43d5: $85
    dec e                                         ; $43d6: $1d
    add hl, de                                    ; $43d7: $19
    ld a, d                                       ; $43d8: $7a
    db $ed                                        ; $43d9: $ed
    ld h, e                                       ; $43da: $63
    ldh [$e3], a                                  ; $43db: $e0 $e3
    rst $38                                       ; $43dd: $ff
    cp h                                          ; $43de: $bc

Jump_02b_43df:
    xor $a0                                       ; $43df: $ee $a0
    ld a, [$fa7e]                                 ; $43e1: $fa $7e $fa
    ei                                            ; $43e4: $fb
    cp l                                          ; $43e5: $bd
    add c                                         ; $43e6: $81
    ldh [$e3], a                                  ; $43e7: $e0 $e3
    rst $20                                       ; $43e9: $e7
    dec h                                         ; $43ea: $25
    rst $00                                       ; $43eb: $c7
    push bc                                       ; $43ec: $c5
    rrca                                          ; $43ed: $0f
    rst $38                                       ; $43ee: $ff
    add hl, bc                                    ; $43ef: $09
    dec c                                         ; $43f0: $0d
    add hl, bc                                    ; $43f1: $09
    rst $00                                       ; $43f2: $c7
    push bc                                       ; $43f3: $c5
    db $f4                                        ; $43f4: $f4
    ld d, h                                       ; $43f5: $54
    ld l, e                                       ; $43f6: $6b
    rst $38                                       ; $43f7: $ff
    bit 3, [hl]                                   ; $43f8: $cb $5e
    adc $37                                       ; $43fa: $ce $37
    rst $20                                       ; $43fc: $e7
    ld l, $e6                                     ; $43fd: $2e $e6
    sub [hl]                                      ; $43ff: $96
    rst $38                                       ; $4400: $ff
    ld [hl], d                                    ; $4401: $72
    ret z                                         ; $4402: $c8

    jr c, jr_02b_43cb                             ; $4403: $38 $c6

    inc a                                         ; $4405: $3c
    cp $00                                        ; $4406: $fe $00
    inc bc                                        ; $4408: $03
    di                                            ; $4409: $f3
    inc bc                                        ; $440a: $03
    cp [hl]                                       ; $440b: $be
    db $fc                                        ; $440c: $fc
    ld [c], a                                     ; $440d: $e2
    cp $e1                                        ; $440e: $fe $e1
    cp h                                          ; $4410: $bc
    nop                                           ; $4411: $00
    cpl                                           ; $4412: $2f
    ld a, [hl+]                                   ; $4413: $2a
    rst $38                                       ; $4414: $ff
    sub $d3                                       ; $4415: $d6 $d3
    ld a, d                                       ; $4417: $7a
    ld [hl], e                                    ; $4418: $73
    db $ec                                        ; $4419: $ec
    rst $20                                       ; $441a: $e7
    ld [hl], h                                    ; $441b: $74
    ld h, a                                       ; $441c: $67
    rst $38                                       ; $441d: $ff
    ld l, c                                       ; $441e: $69
    ld c, [hl]                                    ; $441f: $4e
    inc de                                        ; $4420: $13
    inc e                                         ; $4421: $1c
    inc hl                                        ; $4422: $23
    inc a                                         ; $4423: $3c
    ld h, [hl]                                    ; $4424: $66
    rst $38                                       ; $4425: $ff
    db $f4                                        ; $4426: $f4
    inc b                                         ; $4427: $04
    push hl                                       ; $4428: $e5
    db $fc                                        ; $4429: $fc
    pop bc                                        ; $442a: $c1
    ld h, [hl]                                    ; $442b: $66
    db $10                                        ; $442c: $10
    ldh [$7e], a                                  ; $442d: $e0 $7e
    jp $e73c                                      ; $442f: $c3 $3c $e7


    sbc [hl]                                      ; $4432: $9e
    cp $e1                                        ; $4433: $fe $e1
    cp l                                          ; $4435: $bd
    ld h, [hl]                                    ; $4436: $66
    rst $38                                       ; $4437: $ff
    ld b, d                                       ; $4438: $42
    ld a, [c]                                     ; $4439: $f2
    ldh [rNR41], a                                ; $443a: $e0 $20
    ldh [$7e], a                                  ; $443c: $e0 $7e
    rst $38                                       ; $443e: $ff

Jump_02b_443f:
    di                                            ; $443f: $f3
    ld a, [hl]                                    ; $4440: $7e
    di                                            ; $4441: $f3
    cp $93                                        ; $4442: $fe $93
    cp e                                          ; $4444: $bb
    add d                                         ; $4445: $82
    ld d, l                                       ; $4446: $55
    rst $38                                       ; $4447: $ff
    add $bb                                       ; $4448: $c6 $bb
    ld a, h                                       ; $444a: $7c
    xor $ff                                       ; $444b: $ee $ff
    rst $30                                       ; $444d: $f7
    sub c                                         ; $444e: $91
    db $ed                                        ; $444f: $ed
    rst $38                                       ; $4450: $ff
    add c                                         ; $4451: $81
    ld a, [$fa83]                                 ; $4452: $fa $83 $fa
    add e                                         ; $4455: $83
    db $ed                                        ; $4456: $ed
    add c                                         ; $4457: $81
    rst $30                                       ; $4458: $f7
    rst $38                                       ; $4459: $ff
    sub c                                         ; $445a: $91
    ld l, [hl]                                    ; $445b: $6e
    rst $38                                       ; $445c: $ff
    ld h, e                                       ; $445d: $63
    db $fc                                        ; $445e: $fc
    ld a, [$fc95]                                 ; $445f: $fa $95 $fc
    ld sp, hl                                     ; $4462: $f9
    sub e                                         ; $4463: $93
    cp $e1                                        ; $4464: $fe $e1
    nop                                           ; $4466: $00
    db $e3                                        ; $4467: $e3
    halt                                          ; $4468: $76
    rst $38                                       ; $4469: $ff
    db $eb                                        ; $446a: $eb
    adc c                                         ; $446b: $89
    rst $30                                       ; $446c: $f7
    rst $38                                       ; $446d: $ff
    add c                                         ; $446e: $81
    db $eb                                        ; $446f: $eb
    add c                                         ; $4470: $81
    rst $30                                       ; $4471: $f7
    sub l                                         ; $4472: $95
    rst $38                                       ; $4473: $ff

jr_02b_4474:
    sbc l                                         ; $4474: $9d
    rst $30                                       ; $4475: $f7
    ld d, a                                       ; $4476: $57
    sbc l                                         ; $4477: $9d

jr_02b_4478:
    ld h, d                                       ; $4478: $62
    rst $38                                       ; $4479: $ff
    and b                                         ; $447a: $a0
    pop hl                                        ; $447b: $e1
    rst $28                                       ; $447c: $ef
    xor $e0                                       ; $447d: $ee $e0
    rst $28                                       ; $447f: $ef
    jp nc, $fee0                                  ; $4480: $d2 $e0 $fe

    and b                                         ; $4483: $a0
    pop bc                                        ; $4484: $c1
    adc $3a                                       ; $4485: $ce $3a
    ld e, [hl]                                    ; $4487: $5e
    cp d                                          ; $4488: $ba
    ld l, $e6                                     ; $4489: $2e $e6
    inc a                                         ; $448b: $3c
    rst $38                                       ; $448c: $ff
    db $ec                                        ; $448d: $ec
    jr c, jr_02b_4478                             ; $448e: $38 $e8

    cp a                                          ; $4490: $bf
    ld l, a                                       ; $4491: $6f
    rst $28                                       ; $4492: $ef
    jr nz, jr_02b_4474                            ; $4493: $20 $df

    rst $38                                       ; $4495: $ff
    ccf                                           ; $4496: $3f
    dec sp                                        ; $4497: $3b
    inc l                                         ; $4498: $2c
    inc a                                         ; $4499: $3c
    cpl                                           ; $449a: $2f
    ld a, [hl-]                                   ; $449b: $3a
    inc sp                                        ; $449c: $33
    ld e, $ff                                     ; $449d: $1e $ff
    dec de                                        ; $449f: $1b
    ld c, $0b                                     ; $44a0: $0e $0b
    rst $38                                       ; $44a2: $ff
    ld a, [$02fb]                                 ; $44a3: $fa $fb $02
    db $fd                                        ; $44a6: $fd
    rst $38                                       ; $44a7: $ff
    cp $d8                                        ; $44a8: $fe $d8
    ld c, b                                       ; $44aa: $48
    ld [hl], c                                    ; $44ab: $71
    pop de                                        ; $44ac: $d1
    or c                                          ; $44ad: $b1
    sub c                                         ; $44ae: $91
    ldh [rIE], a                                  ; $44af: $e0 $ff
    and b                                         ; $44b1: $a0
    ldh [$a0], a                                  ; $44b2: $e0 $a0
    rst $38                                       ; $44b4: $ff
    cp a                                          ; $44b5: $bf
    cp a                                          ; $44b6: $bf
    add b                                         ; $44b7: $80
    ld a, a                                       ; $44b8: $7f
    db $fd                                        ; $44b9: $fd
    rst $38                                       ; $44ba: $ff
    halt                                          ; $44bb: $76
    ret nz                                        ; $44bc: $c0

    dec a                                         ; $44bd: $3d
    rst $20                                       ; $44be: $e7
    push hl                                       ; $44bf: $e5
    rlca                                          ; $44c0: $07
    dec b                                         ; $44c1: $05
    rlca                                          ; $44c2: $07
    rst $18                                       ; $44c3: $df
    dec b                                         ; $44c4: $05
    rst $38                                       ; $44c5: $ff
    db $fd                                        ; $44c6: $fd
    db $fd                                        ; $44c7: $fd
    ld bc, $c0a2                                  ; $44c8: $01 $a2 $c0
    cp h                                          ; $44cb: $bc
    rst $20                                       ; $44cc: $e7
    rst $38                                       ; $44cd: $ff
    and h                                         ; $44ce: $a4
    db $e3                                        ; $44cf: $e3
    and e                                         ; $44d0: $a3
    ldh [$a0], a                                  ; $44d1: $e0 $a0
    cp b                                          ; $44d3: $b8
    sbc b                                         ; $44d4: $98
    ld e, a                                       ; $44d5: $5f
    rst $18                                       ; $44d6: $df
    rst $00                                       ; $44d7: $c7
    or a                                          ; $44d8: $b7
    ld [hl], b                                    ; $44d9: $70
    rst $08                                       ; $44da: $cf

jr_02b_44db:
    ccf                                           ; $44db: $3f
    inc b                                         ; $44dc: $04
    db $e3                                        ; $44dd: $e3
    rlca                                          ; $44de: $07
    dec b                                         ; $44df: $05
    rst $38                                       ; $44e0: $ff
    dec e                                         ; $44e1: $1d
    add hl, de                                    ; $44e2: $19
    ld a, [$ede3]                                 ; $44e3: $fa $e3 $ed
    ld c, $f3                                     ; $44e6: $0e $f3
    db $fc                                        ; $44e8: $fc
    rst $18                                       ; $44e9: $df
    call nz, Call_02b_5a3c                        ; $44ea: $c4 $3c $5a
    and [hl]                                      ; $44ed: $a6
    dec a                                         ; $44ee: $3d
    or b                                          ; $44ef: $b0
    ld c, b                                       ; $44f0: $48
    ld e, b                                       ; $44f1: $58
    nop                                           ; $44f2: $00
    rst $38                                       ; $44f3: $ff
    ld bc, $ff01                                  ; $44f4: $01 $01 $ff
    rst $38                                       ; $44f7: $ff
    ld e, d                                       ; $44f8: $5a
    jp $e724                                      ; $44f9: $c3 $24 $e7


    rst $38                                       ; $44fc: $ff
    or l                                          ; $44fd: $b5
    ld h, [hl]                                    ; $44fe: $66
    db $db                                        ; $44ff: $db
    ld b, d                                       ; $4500: $42
    ld l, [hl]                                    ; $4501: $6e
    rst $28                                       ; $4502: $ef
    and e                                         ; $4503: $a3
    cp h                                          ; $4504: $bc
    add e                                         ; $4505: $83
    ld e, d                                       ; $4506: $5a
    ld h, l                                       ; $4507: $65
    sbc c                                         ; $4508: $99

jr_02b_4509:
    add b                                         ; $4509: $80
    sub b                                         ; $450a: $90
    ld b, [hl]                                    ; $450b: $46
    nop                                           ; $450c: $00
    rst $00                                       ; $450d: $c7
    jr nz, jr_02b_44db                            ; $450e: $20 $cb

    ld [hl+], a                                   ; $4510: $22
    pop bc                                        ; $4511: $c1
    db $fd                                        ; $4512: $fd
    add hl, bc                                    ; $4513: $09
    sbc [hl]                                      ; $4514: $9e
    ld b, b                                       ; $4515: $40
    push bc                                       ; $4516: $c5
    ld [c], a                                     ; $4517: $e2
    and c                                         ; $4518: $a1
    cp l                                          ; $4519: $bd
    ld b, b                                       ; $451a: $40
    jp nz, $e9e0                                  ; $451b: $c2 $e0 $e9

    ret nc                                        ; $451e: $d0

    and c                                         ; $451f: $a1
    sbc $a0                                       ; $4520: $de $a0
    ld e, $c8                                     ; $4522: $1e $c8
    and b                                         ; $4524: $a0
    or [hl]                                       ; $4525: $b6
    add a                                         ; $4526: $87
    ld l, l                                       ; $4527: $6d
    pop hl                                        ; $4528: $e1
    sbc $a0                                       ; $4529: $de $a0
    ret nc                                        ; $452b: $d0

    and b                                         ; $452c: $a0
    ret nc                                        ; $452d: $d0

    jp nz, $c0e6                                  ; $452e: $c2 $e6 $c0

    push bc                                       ; $4531: $c5
    inc h                                         ; $4532: $24
    db $db                                        ; $4533: $db
    and b                                         ; $4534: $a0
    push bc                                       ; $4535: $c5
    and b                                         ; $4536: $a0
    and $7f                                       ; $4537: $e6 $7f
    rst $38                                       ; $4539: $ff
    cp a                                          ; $453a: $bf
    or a                                          ; $453b: $b7
    add b                                         ; $453c: $80
    rst $38                                       ; $453d: $ff
    cp a                                          ; $453e: $bf
    ld a, [de]                                    ; $453f: $1a
    pop bc                                        ; $4540: $c1
    db $e3                                        ; $4541: $e3
    and d                                         ; $4542: $a2
    cp $e1                                        ; $4543: $fe $e1
    ei                                            ; $4545: $fb
    rst $38                                       ; $4546: $ff
    db $fc                                        ; $4547: $fc
    db $f4                                        ; $4548: $f4
    rlca                                          ; $4549: $07
    ld a, [$0df3]                                 ; $454a: $fa $f3 $0d
    add hl, bc                                    ; $454d: $09
    add a                                         ; $454e: $87
    rlca                                          ; $454f: $07
    add l                                         ; $4550: $85
    rst $00                                       ; $4551: $c7
    ld b, l                                       ; $4552: $45
    cp $e1                                        ; $4553: $fe $e1
    db $db                                        ; $4555: $db
    ld b, d                                       ; $4556: $42
    rst $38                                       ; $4557: $ff
    rst $38                                       ; $4558: $ff
    rst $30                                       ; $4559: $f7
    or $b0                                        ; $455a: $f6 $b0
    ld hl, $3dfb                                  ; $455c: $21 $fb $3d
    jp $e1fe                                      ; $455f: $c3 $fe $e1


    and e                                         ; $4562: $a3
    ld e, a                                       ; $4563: $5f
    call nz, $c73c                                ; $4564: $c4 $3c $c7
    rst $38                                       ; $4567: $ff
    ccf                                           ; $4568: $3f
    cp l                                          ; $4569: $bd
    add c                                         ; $456a: $81
    rst $00                                       ; $456b: $c7
    rst $00                                       ; $456c: $c7
    ld a, [hl]                                    ; $456d: $7e
    nop                                           ; $456e: $00
    ld e, h                                       ; $456f: $5c
    adc $fe                                       ; $4570: $ce $fe
    ldh [$83], a                                  ; $4572: $e0 $83
    add e                                         ; $4574: $83
    cp [hl]                                       ; $4575: $be
    cp [hl]                                       ; $4576: $be
    jr nz, jr_02b_4509                            ; $4577: $20 $90

    ld hl, $c3bc                                  ; $4579: $21 $bc $c3
    ld a, [hl]                                    ; $457c: $7e
    cp $e1                                        ; $457d: $fe $e1
    push bc                                       ; $457f: $c5
    ld a, [$3c23]                                 ; $4580: $fa $23 $3c
    ei                                            ; $4583: $fb
    db $fc                                        ; $4584: $fc
    ld h, b                                       ; $4585: $60
    push hl                                       ; $4586: $e5
    rst $18                                       ; $4587: $df
    and l                                         ; $4588: $a5

jr_02b_4589:
    add c                                         ; $4589: $81
    ld a, [hl]                                    ; $458a: $7e
    jp Jump_000_10db                              ; $458b: $c3 $db $10


    ret nz                                        ; $458e: $c0

    ld h, e                                       ; $458f: $63
    rst $38                                       ; $4590: $ff
    cp $48                                        ; $4591: $fe $48
    ret nz                                        ; $4593: $c0

    sub l                                         ; $4594: $95

jr_02b_4595:
    xor e                                         ; $4595: $ab
    add c                                         ; $4596: $81
    cp a                                          ; $4597: $bf
    add c                                         ; $4598: $81
    ld [hl], l                                    ; $4599: $75
    pop bc                                        ; $459a: $c1
    rst $28                                       ; $459b: $ef
    cp $4b                                        ; $459c: $fe $4b
    or a                                          ; $459e: $b7
    ld a, [hl]                                    ; $459f: $7e
    ldh [$a1], a                                  ; $45a0: $e0 $a1
    cp l                                          ; $45a2: $bd
    add c                                         ; $45a3: $81
    ld e, d                                       ; $45a4: $5a

jr_02b_45a5:
    ld de, $dac3                                  ; $45a5: $11 $c3 $da
    add b                                         ; $45a8: $80
    ldh [$82], a                                  ; $45a9: $e0 $82
    ret nc                                        ; $45ab: $d0

    and e                                         ; $45ac: $a3
    and l                                         ; $45ad: $a5
    xor $e0                                       ; $45ae: $ee $e0
    jr nz, jr_02b_4595                            ; $45b0: $20 $e3

    nop                                           ; $45b2: $00
    and c                                         ; $45b3: $a1
    rst $38                                       ; $45b4: $ff
    ld l, l                                       ; $45b5: $6d
    pop hl                                        ; $45b6: $e1
    ld a, [hl-]                                   ; $45b7: $3a
    db $e3                                        ; $45b8: $e3
    ld e, h                                       ; $45b9: $5c
    rst $00                                       ; $45ba: $c7
    or [hl]                                       ; $45bb: $b6
    add a                                         ; $45bc: $87
    call nz, $a100                                ; $45bd: $c4 $00 $a1
    or b                                          ; $45c0: $b0
    add c                                         ; $45c1: $81
    ld a, [hl]                                    ; $45c2: $7e
    jp nc, $d4e0                                  ; $45c3: $d2 $e0 $d4

jr_02b_45c6:
    add c                                         ; $45c6: $81
    or b                                          ; $45c7: $b0
    pop hl                                        ; $45c8: $e1
    srl h                                         ; $45c9: $cb $3c
    rst $38                                       ; $45cb: $ff
    ld e, h                                       ; $45cc: $5c
    or a                                          ; $45cd: $b7
    ld l, e                                       ; $45ce: $6b
    db $e3                                        ; $45cf: $e3
    rst $38                                       ; $45d0: $ff
    add c                                         ; $45d1: $81
    ld e, l                                       ; $45d2: $5d
    pop bc                                        ; $45d3: $c1
    ccf                                           ; $45d4: $3f
    push de                                       ; $45d5: $d5
    ld b, c                                       ; $45d6: $41
    db $eb                                        ; $45d7: $eb
    ld c, c                                       ; $45d8: $49
    or [hl]                                       ; $45d9: $b6
    ld a, a                                       ; $45da: $7f
    ld b, h                                       ; $45db: $44

jr_02b_45dc:
    pop bc                                        ; $45dc: $c1
    inc b                                         ; $45dd: $04
    db $e3                                        ; $45de: $e3
    rst $30                                       ; $45df: $f7
    rst $38                                       ; $45e0: $ff
    cp [hl]                                       ; $45e1: $be
    cp [hl]                                       ; $45e2: $be
    jr nz, jr_02b_45a5                            ; $45e3: $20 $c0

    add a                                         ; $45e5: $87
    add l                                         ; $45e6: $85
    dec c                                         ; $45e7: $0d
    add hl, bc                                    ; $45e8: $09
    rst $38                                       ; $45e9: $ff
    ld a, [$f4f3]                                 ; $45ea: $fa $f3 $f4
    rlca                                          ; $45ed: $07
    ld hl, sp-$01                                 ; $45ee: $f8 $ff
    and l                                         ; $45f0: $a5
    jp c, $c30f                                   ; $45f1: $da $0f $c3

    cp h                                          ; $45f4: $bc
    ld b, e                                       ; $45f5: $43
    cp h                                          ; $45f6: $bc
    ld e, $ff                                     ; $45f7: $1e $ff
    rst $38                                       ; $45f9: $ff
    rst $38                                       ; $45fa: $ff
    rst $38                                       ; $45fb: $ff
    rst $38                                       ; $45fc: $ff
    add sp, -$19                                  ; $45fd: $e8 $e7
    ldh a, [rP1]                                  ; $45ff: $f0 $00
    add e                                         ; $4601: $83
    ld h, d                                       ; $4602: $62
    and b                                         ; $4603: $a0
    jr nz, jr_02b_45c6                            ; $4604: $20 $c0

    jr nz, jr_02b_4589                            ; $4606: $20 $81

    rst $38                                       ; $4608: $ff
    inc a                                         ; $4609: $3c
    ld e, [hl]                                    ; $460a: $5e
    push bc                                       ; $460b: $c5
    and a                                         ; $460c: $a7
    ld a, h                                       ; $460d: $7c
    rst $00                                       ; $460e: $c7
    ld a, h                                       ; $460f: $7c
    cp $80                                        ; $4610: $fe $80
    ld b, l                                       ; $4612: $45
    and b                                         ; $4613: $a0
    ld b, d                                       ; $4614: $42
    ld hl, $7ec0                                  ; $4615: $21 $c0 $7e
    ld a, [hl]                                    ; $4618: $7e
    jr nz, jr_02b_45dc                            ; $4619: $20 $c1

    rst $30                                       ; $461b: $f7
    pop af                                        ; $461c: $f1
    cp c                                          ; $461d: $b9
    add c                                         ; $461e: $81
    rst $28                                       ; $461f: $ef
    adc a                                         ; $4620: $8f
    sbc $60                                       ; $4621: $de $60
    db $fd                                        ; $4623: $fd
    rst $38                                       ; $4624: $ff
    ldh a, [$e1]                                  ; $4625: $f0 $e1
    rst $30                                       ; $4627: $f7
    sub c                                         ; $4628: $91
    ld a, [hl]                                    ; $4629: $7e
    db $e3                                        ; $462a: $e3
    rst $38                                       ; $462b: $ff
    ld sp, hl                                     ; $462c: $f9
    db $fc                                        ; $462d: $fc
    db $10                                        ; $462e: $10
    pop bc                                        ; $462f: $c1
    ld bc, $3ec0                                  ; $4630: $01 $c0 $3e
    ld e, [hl]                                    ; $4633: $5e
    jp $83be                                      ; $4634: $c3 $be $83


    cp $77                                        ; $4637: $fe $77
    sub e                                         ; $4639: $93
    rst $38                                       ; $463a: $ff
    sub e                                         ; $463b: $93
    ret nz                                        ; $463c: $c0

    ld h, b                                       ; $463d: $60
    di                                            ; $463e: $f3
    rst $18                                       ; $463f: $df
    ld a, $22                                     ; $4640: $3e $22
    nop                                           ; $4642: $00
    rst $20                                       ; $4643: $e7
    add c                                         ; $4644: $81
    rst $38                                       ; $4645: $ff
    sbc a                                         ; $4646: $9f
    ret nz                                        ; $4647: $c0

    ld h, b                                       ; $4648: $60
    ldh [$e3], a                                  ; $4649: $e0 $e3
    cp $ff                                        ; $464b: $fe $ff
    ld a, [hl]                                    ; $464d: $7e
    ldh a, [$e2]                                  ; $464e: $f0 $e2
    ldh [$f0], a                                  ; $4650: $e0 $f0
    pop hl                                        ; $4652: $e1
    sbc [hl]                                      ; $4653: $9e
    and c                                         ; $4654: $a1
    ret nc                                        ; $4655: $d0

    ldh [$c3], a                                  ; $4656: $e0 $c3
    ccf                                           ; $4658: $3f
    ld e, d                                       ; $4659: $5a
    and [hl]                                      ; $465a: $a6
    ei                                            ; $465b: $fb
    ccf                                           ; $465c: $3f
    jp nz, $e1fe                                  ; $465d: $c2 $fe $e1

    and a                                         ; $4660: $a7
    ld e, d                                       ; $4661: $5a
    jp nz, $c33e                                  ; $4662: $c2 $3e $c3

    rst $38                                       ; $4665: $ff
    ccf                                           ; $4666: $3f
    ei                                            ; $4667: $fb
    rst $38                                       ; $4668: $ff
    cp d                                          ; $4669: $ba
    ld l, $ff                                     ; $466a: $2e $ff
    xor d                                         ; $466c: $aa
    rst $38                                       ; $466d: $ff
    db $dd                                        ; $466e: $dd
    ld [$e0fe], a                                 ; $466f: $ea $fe $e0
    xor [hl]                                      ; $4672: $ae
    cp [hl]                                       ; $4673: $be
    ld [hl+], a                                   ; $4674: $22
    ld d, [hl]                                    ; $4675: $56
    ld bc, $22ab                                  ; $4676: $01 $ab $22
    rst $38                                       ; $4679: $ff
    rst $38                                       ; $467a: $ff
    xor d                                         ; $467b: $aa
    db $eb                                        ; $467c: $eb
    and d                                         ; $467d: $a2
    rst $30                                       ; $467e: $f7
    or d                                          ; $467f: $b2
    rst $38                                       ; $4680: $ff
    xor d                                         ; $4681: $aa
    db $fc                                        ; $4682: $fc
    or $e0                                        ; $4683: $f6 $e0
    ld b, l                                       ; $4685: $45
    nop                                           ; $4686: $00
    db $eb                                        ; $4687: $eb
    ld [hl+], a                                   ; $4688: $22
    rst $38                                       ; $4689: $ff
    db $eb                                        ; $468a: $eb
    db $eb                                        ; $468b: $eb
    inc hl                                        ; $468c: $23
    ei                                            ; $468d: $fb
    rst $30                                       ; $468e: $f7
    di                                            ; $468f: $f3
    ld a, [$ffe1]                                 ; $4690: $fa $e1 $ff
    rst $38                                       ; $4693: $ff
    rst $28                                       ; $4694: $ef
    rst $38                                       ; $4695: $ff
    rst $38                                       ; $4696: $ff
    rst $38                                       ; $4697: $ff
    jr z, @+$01                                   ; $4698: $28 $ff

    ld l, l                                       ; $469a: $6d
    rst $38                                       ; $469b: $ff
    ld b, l                                       ; $469c: $45
    rst $38                                       ; $469d: $ff
    ld b, l                                       ; $469e: $45
    rst $20                                       ; $469f: $e7
    rst $38                                       ; $46a0: $ff
    ld e, l                                       ; $46a1: $5d
    rst $00                                       ; $46a2: $c7
    ld a, l                                       ; $46a3: $7d
    rst $00                                       ; $46a4: $c7
    rst $38                                       ; $46a5: $ff
    ei                                            ; $46a6: $fb
    rst $38                                       ; $46a7: $ff
    xor e                                         ; $46a8: $ab
    cp c                                          ; $46a9: $b9
    adc [hl]                                      ; $46aa: $8e
    ret nz                                        ; $46ab: $c0

    ldh [$fe], a                                  ; $46ac: $e0 $fe
    ld [c], a                                     ; $46ae: $e2
    xor e                                         ; $46af: $ab
    adc [hl]                                      ; $46b0: $8e
    ei                                            ; $46b1: $fb
    ret nc                                        ; $46b2: $d0

    ldh [$bf], a                                  ; $46b3: $e0 $bf
    rst $38                                       ; $46b5: $ff
    dec hl                                        ; $46b6: $2b
    db $fd                                        ; $46b7: $fd
    xor c                                         ; $46b8: $a9
    cp $a8                                        ; $46b9: $fe $a8
    cp l                                          ; $46bb: $bd

jr_02b_46bc:
    jr z, jr_02b_46bc                             ; $46bc: $28 $fe

    rst $38                                       ; $46be: $ff
    ld [$abff], a                                 ; $46bf: $ea $ff $ab
    rst $38                                       ; $46c2: $ff
    cp a                                          ; $46c3: $bf
    jp $dafc                                      ; $46c4: $c3 $fc $da


    rst $30                                       ; $46c7: $f7
    ld h, l                                       ; $46c8: $65
    db $fc                                        ; $46c9: $fc
    ld b, e                                       ; $46ca: $43
    cp $e1                                        ; $46cb: $fe $e1
    push hl                                       ; $46cd: $e5
    ld e, d                                       ; $46ce: $5a
    jp $ef7c                                      ; $46cf: $c3 $7c $ef


    jp $e3fc                                      ; $46d2: $c3 $fc $e3


    ld a, h                                       ; $46d5: $7c
    ld d, b                                       ; $46d6: $50

jr_02b_46d7:
    add b                                         ; $46d7: $80
    db $d3                                        ; $46d8: $d3
    call c, $f393                                 ; $46d9: $dc $93 $f3
    ld a, h                                       ; $46dc: $7c
    db $e3                                        ; $46dd: $e3
    nop                                           ; $46de: $00
    and e                                         ; $46df: $a3
    ld d, b                                       ; $46e0: $50
    pop hl                                        ; $46e1: $e1
    push af                                       ; $46e2: $f5
    pop af                                        ; $46e3: $f1
    ld l, $e3                                     ; $46e4: $2e $e3
    dec de                                        ; $46e6: $1b
    ld a, [hl-]                                   ; $46e7: $3a
    db $e3                                        ; $46e8: $e3
    ld d, b                                       ; $46e9: $50
    and c                                         ; $46ea: $a1
    rst $38                                       ; $46eb: $ff
    inc a                                         ; $46ec: $3c
    db $10                                        ; $46ed: $10
    db $e3                                        ; $46ee: $e3
    inc l                                         ; $46ef: $2c
    and c                                         ; $46f0: $a1
    jr nz, jr_02b_46d7                            ; $46f1: $20 $e4

    cp l                                          ; $46f3: $bd
    ld a, h                                       ; $46f4: $7c
    db $f4                                        ; $46f5: $f4
    db $e3                                        ; $46f6: $e3
    cp a                                          ; $46f7: $bf
    add c                                         ; $46f8: $81
    rst $38                                       ; $46f9: $ff
    ld a, c                                       ; $46fa: $79
    db $10                                        ; $46fb: $10
    ld [c], a                                     ; $46fc: $e2
    inc a                                         ; $46fd: $3c
    cpl                                           ; $46fe: $2f
    ld a, [hl]                                    ; $46ff: $7e
    and l                                         ; $4700: $a5
    rst $38                                       ; $4701: $ff
    rst $20                                       ; $4702: $e7
    call nc, $8140                                ; $4703: $d4 $40 $81
    ld a, [$d0e0]                                 ; $4706: $fa $e0 $d0
    ldh [rSVBK], a                                ; $4709: $e0 $70
    or b                                          ; $470b: $b0
    ld b, c                                       ; $470c: $41
    inc c                                         ; $470d: $0c
    ld [c], a                                     ; $470e: $e2
    db $e4                                        ; $470f: $e4
    ret nz                                        ; $4710: $c0

    xor c                                         ; $4711: $a9
    add c                                         ; $4712: $81
    rst $20                                       ; $4713: $e7
    rst $38                                       ; $4714: $ff
    db $db                                        ; $4715: $db
    ld [c], a                                     ; $4716: $e2
    and d                                         ; $4717: $a2
    ccf                                           ; $4718: $3f
    ld e, d                                       ; $4719: $5a
    jp $81a5                                      ; $471a: $c3 $a5 $81


    db $db                                        ; $471d: $db
    sbc c                                         ; $471e: $99
    adc e                                         ; $471f: $8b
    ld b, c                                       ; $4720: $41
    ret nc                                        ; $4721: $d0

    db $e4                                        ; $4722: $e4
    inc l                                         ; $4723: $2c
    add b                                         ; $4724: $80
    ld b, b                                       ; $4725: $40
    ret nz                                        ; $4726: $c0

    pop bc                                        ; $4727: $c1
    rrca                                          ; $4728: $0f
    nop                                           ; $4729: $00
    cp $e3                                        ; $472a: $fe $e3
    ldh a, [$fe]                                  ; $472c: $f0 $fe
    db $ec                                        ; $472e: $ec
    add sp, -$1b                                  ; $472f: $e8 $e5
    ret nc                                        ; $4731: $d0

    ldh [$fd], a                                  ; $4732: $e0 $fd
    ret nc                                        ; $4734: $d0

    rst $38                                       ; $4735: $ff
    ldh [$fb], a                                  ; $4736: $e0 $fb
    ret nc                                        ; $4738: $d0

    or $07                                        ; $4739: $f6 $07
    inc de                                        ; $473b: $13
    jr nz, @+$11                                  ; $473c: $20 $0f

    rra                                           ; $473e: $1f
    ld a, l                                       ; $473f: $7d
    rra                                           ; $4740: $1f
    or b                                          ; $4741: $b0
    add sp, -$80                                  ; $4742: $e8 $80
    ldh a, [$c0]                                  ; $4744: $f0 $c0
    ldh a, [$f0]                                  ; $4746: $f0 $f0
    add b                                         ; $4748: $80
    or $fd                                        ; $4749: $f6 $fd
    ld bc, $e3fe                                  ; $474b: $01 $fe $e3
    daa                                           ; $474e: $27
    ccf                                           ; $474f: $3f
    ld b, b                                       ; $4750: $40
    ld a, a                                       ; $4751: $7f
    adc a                                         ; $4752: $8f
    rst $38                                       ; $4753: $ff
    rst $38                                       ; $4754: $ff
    sbc [hl]                                      ; $4755: $9e
    rst $38                                       ; $4756: $ff
    ld [hl+], a                                   ; $4757: $22
    rst $38                                       ; $4758: $ff
    ld l, h                                       ; $4759: $6c
    rst $38                                       ; $475a: $ff
    ld e, [hl]                                    ; $475b: $5e
    di                                            ; $475c: $f3
    rst $38                                       ; $475d: $ff
    sbc $f7                                       ; $475e: $de $f7
    adc b                                         ; $4760: $88
    ld hl, sp+$04                                 ; $4761: $f8 $04
    db $fc                                        ; $4763: $fc
    ld [c], a                                     ; $4764: $e2
    cp $f7                                        ; $4765: $fe $f7
    ld a, [c]                                     ; $4767: $f2
    cp $89                                        ; $4768: $fe $89
    ld e, e                                       ; $476a: $5b
    ret nz                                        ; $476b: $c0

    push af                                       ; $476c: $f5
    sbc a                                         ; $476d: $9f
    rst $30                                       ; $476e: $f7
    rst $18                                       ; $476f: $df
    or $60                                        ; $4770: $f6 $60
    db $ed                                        ; $4772: $ed
    ld c, $03                                     ; $4773: $0e $03
    cp $e3                                        ; $4775: $fe $e3
    ld sp, hl                                     ; $4777: $f9
    add hl, de                                    ; $4778: $19
    db $e4                                        ; $4779: $e4
    inc a                                         ; $477a: $3c
    rst $38                                       ; $477b: $ff
    db $e4                                        ; $477c: $e4
    inc a                                         ; $477d: $3c
    ld [c], a                                     ; $477e: $e2
    ld a, $5e                                     ; $477f: $3e $5e
    rst $30                                       ; $4781: $f7
    sbc $f7                                       ; $4782: $de $f7
    rst $38                                       ; $4784: $ff
    ld b, c                                       ; $4785: $41
    rst $38                                       ; $4786: $ff
    nop                                           ; $4787: $00
    rst $38                                       ; $4788: $ff
    add h                                         ; $4789: $84
    rst $38                                       ; $478a: $ff
    add e                                         ; $478b: $83
    rst $38                                       ; $478c: $ff

jr_02b_478d:
    rst $38                                       ; $478d: $ff
    ld b, b                                       ; $478e: $40
    ld a, a                                       ; $478f: $7f
    jr nc, jr_02b_47d1                            ; $4790: $30 $3f

    db $f4                                        ; $4792: $f4
    rst $18                                       ; $4793: $df
    or $df                                        ; $4794: $f6 $df
    push af                                       ; $4796: $f5
    inc b                                         ; $4797: $04
    ldh a, [$e0]                                  ; $4798: $f0 $e0
    ld b, e                                       ; $479a: $43
    ldh a, [$e0]                                  ; $479b: $f0 $e0
    ld b, $fe                                     ; $479d: $06 $fe
    ld e, $fe                                     ; $479f: $1e $fe
    ld hl, sp+$7a                                 ; $47a1: $f8 $7a
    ldh [$fe], a                                  ; $47a3: $e0 $fe
    ld [c], a                                     ; $47a5: $e2
    jr jr_02b_478d                                ; $47a6: $18 $e5

    ei                                            ; $47a8: $fb
    rra                                           ; $47a9: $1f
    ld a, [c]                                     ; $47aa: $f2
    rra                                           ; $47ab: $1f
    db $ed                                        ; $47ac: $ed
    rst $38                                       ; $47ad: $ff
    ccf                                           ; $47ae: $3f
    db $e3                                        ; $47af: $e3
    ccf                                           ; $47b0: $3f
    inc e                                         ; $47b1: $1c
    rra                                           ; $47b2: $1f
    ld de, $0e1f                                  ; $47b3: $11 $1f $0e
    rst $38                                       ; $47b6: $ff
    rrca                                          ; $47b7: $0f
    rrca                                          ; $47b8: $0f
    inc bc                                        ; $47b9: $03
    ld a, h                                       ; $47ba: $7c
    ld c, a                                       ; $47bb: $4f
    rst $38                                       ; $47bc: $ff
    db $e3                                        ; $47bd: $e3
    ld a, a                                       ; $47be: $7f
    rst $38                                       ; $47bf: $ff
    pop af                                        ; $47c0: $f1
    ld a, a                                       ; $47c1: $7f
    ei                                            ; $47c2: $fb
    rst $18                                       ; $47c3: $df
    rst $38                                       ; $47c4: $ff
    rst $18                                       ; $47c5: $df
    rst $38                                       ; $47c6: $ff
    cp a                                          ; $47c7: $bf
    ld a, [hl]                                    ; $47c8: $7e
    jp nc, Jump_02b_7ca0                          ; $47c9: $d2 $a0 $7c

    db $fc                                        ; $47cc: $fc
    ld hl, sp-$38                                 ; $47cd: $f8 $c8
    cp $8e                                        ; $47cf: $fe $8e

jr_02b_47d1:
    di                                            ; $47d1: $f3
    ldh [$ce], a                                  ; $47d2: $e0 $ce
    and $a0                                       ; $47d4: $e6 $a0
    ei                                            ; $47d6: $fb
    rst $38                                       ; $47d7: $ff
    db $fd                                        ; $47d8: $fd
    sub b                                         ; $47d9: $90
    rst $00                                       ; $47da: $c7
    cp b                                          ; $47db: $b8
    ldh [rSVBK], a                                ; $47dc: $e0 $70
    ret nz                                        ; $47de: $c0

    di                                            ; $47df: $f3
    ld [hl], b                                    ; $47e0: $70
    ldh [$d0], a                                  ; $47e1: $e0 $d0
    call $a18e                                    ; $47e3: $cd $8e $a1
    rst $38                                       ; $47e6: $ff
    rst $38                                       ; $47e7: $ff
    ret nz                                        ; $47e8: $c0

    ld a, a                                       ; $47e9: $7f
    ld [hl], a                                    ; $47ea: $77
    ld b, b                                       ; $47eb: $40
    ld a, a                                       ; $47ec: $7f
    add b                                         ; $47ed: $80
    sub h                                         ; $47ee: $94
    and b                                         ; $47ef: $a0
    ld b, c                                       ; $47f0: $41
    ld a, a                                       ; $47f1: $7f
    db $fd                                        ; $47f2: $fd
    call z, $dde0                                 ; $47f3: $cc $e0 $dd
    rst $38                                       ; $47f6: $ff
    dec a                                         ; $47f7: $3d
    nop                                           ; $47f8: $00
    ld sp, $c1ff                                  ; $47f9: $31 $ff $c1
    add h                                         ; $47fc: $84
    and b                                         ; $47fd: $a0
    jp nz, $ff7e                                  ; $47fe: $c2 $7e $ff

    ldh a, [$90]                                  ; $4801: $f0 $90
    ldh a, [$d0]                                  ; $4803: $f0 $d0
    ldh a, [$b0]                                  ; $4805: $f0 $b0
    ld hl, sp-$58                                 ; $4807: $f8 $a8
    rst $18                                       ; $4809: $df
    rst $38                                       ; $480a: $ff
    ld c, b                                       ; $480b: $48
    rst $38                                       ; $480c: $ff
    ld d, b                                       ; $480d: $50
    rst $28                                       ; $480e: $ef
    jp nz, $f0e0                                  ; $480f: $c2 $e0 $f0

    nop                                           ; $4812: $00
    db $db                                        ; $4813: $db
    di                                            ; $4814: $f3
    inc bc                                        ; $4815: $03
    ld d, d                                       ; $4816: $52
    add b                                         ; $4817: $80
    rrca                                          ; $4818: $0f
    ld [$c0d2], sp                                ; $4819: $08 $d2 $c0
    ld hl, sp-$01                                 ; $481c: $f8 $ff
    ei                                            ; $481e: $fb
    rlca                                          ; $481f: $07
    rlca                                          ; $4820: $07
    ld e, a                                       ; $4821: $5f
    and b                                         ; $4822: $a0
    pop bc                                        ; $4823: $c1
    ccf                                           ; $4824: $3f
    ld [c], a                                     ; $4825: $e2
    rra                                           ; $4826: $1f
    cp $ff                                        ; $4827: $fe $ff
    ld [de], a                                    ; $4829: $12
    cp $fe                                        ; $482a: $fe $fe
    cp $03                                        ; $482c: $fe $03
    rst $38                                       ; $482e: $ff
    db $fc                                        ; $482f: $fc
    db $fc                                        ; $4830: $fc
    ld a, [hl]                                    ; $4831: $7e
    rst $28                                       ; $4832: $ef
    nop                                           ; $4833: $00
    add e                                         ; $4834: $83
    db $fc                                        ; $4835: $fc
    add a                                         ; $4836: $87
    ld hl, sp-$01                                 ; $4837: $f8 $ff
    adc b                                         ; $4839: $88
    xor d                                         ; $483a: $aa
    pop hl                                        ; $483b: $e1
    rst $38                                       ; $483c: $ff
    rst $38                                       ; $483d: $ff
    ld a, a                                       ; $483e: $7f
    ld a, a                                       ; $483f: $7f
    rrca                                          ; $4840: $0f

Call_02b_4841:
    nop                                           ; $4841: $00
    rst $08                                       ; $4842: $cf
    ret nz                                        ; $4843: $c0

    cpl                                           ; $4844: $2f
    rst $28                                       ; $4845: $ef
    ldh [$1f], a                                  ; $4846: $e0 $1f
    ldh a, [rNR10]                                ; $4848: $f0 $10
    or l                                          ; $484a: $b5
    ret nz                                        ; $484b: $c0

    rra                                           ; $484c: $1f
    rst $38                                       ; $484d: $ff
    ldh [$c0], a                                  ; $484e: $e0 $c0
    add b                                         ; $4850: $80
    xor $30                                       ; $4851: $ee $30
    rst $18                                       ; $4853: $df
    nop                                           ; $4854: $00
    rst $18                                       ; $4855: $df
    or b                                          ; $4856: $b0
    rst $38                                       ; $4857: $ff
    nop                                           ; $4858: $00
    rst $18                                       ; $4859: $df
    cp b                                          ; $485a: $b8
    ld [c], a                                     ; $485b: $e2
    inc bc                                        ; $485c: $03
    inc c                                         ; $485d: $0c
    db $ed                                        ; $485e: $ed
    rrca                                          ; $485f: $0f
    or b                                          ; $4860: $b0
    push hl                                       ; $4861: $e5
    db $fc                                        ; $4862: $fc
    inc c                                         ; $4863: $0c
    add e                                         ; $4864: $83
    ret nz                                        ; $4865: $c0

    cp $3e                                        ; $4866: $fe $3e
    cp $ee                                        ; $4868: $fe $ee
    add b                                         ; $486a: $80
    db $fd                                        ; $486b: $fd
    db $10                                        ; $486c: $10
    rra                                           ; $486d: $1f

jr_02b_486e:
    jr nz, jr_02b_486e                            ; $486e: $20 $fe

    and b                                         ; $4870: $a0
    ld b, b                                       ; $4871: $40
    ld a, a                                       ; $4872: $7f
    add c                                         ; $4873: $81
    ld a, [hl]                                    ; $4874: $7e
    ld b, b                                       ; $4875: $40
    ret nz                                        ; $4876: $c0

    add a                                         ; $4877: $87
    rst $38                                       ; $4878: $ff
    adc a                                         ; $4879: $8f
    rst $38                                       ; $487a: $ff
    inc e                                         ; $487b: $1c
    db $fc                                        ; $487c: $fc
    ld c, d                                       ; $487d: $4a
    pop bc                                        ; $487e: $c1
    rst $30                                       ; $487f: $f7
    ld l, l                                       ; $4880: $6d
    rst $38                                       ; $4881: $ff
    reti                                          ; $4882: $d9


    ld a, [c]                                     ; $4883: $f2
    ldh [rIF], a                                  ; $4884: $e0 $0f
    ld sp, hl                                     ; $4886: $f9
    rrca                                          ; $4887: $0f
    ei                                            ; $4888: $fb
    cp $48                                        ; $4889: $fe $48
    push af                                       ; $488b: $f5
    pop af                                        ; $488c: $f1
    ld bc, $01f1                                  ; $488d: $01 $f1 $01
    ld a, [c]                                     ; $4890: $f2
    inc bc                                        ; $4891: $03
    ld a, [c]                                     ; $4892: $f2
    rst $38                                       ; $4893: $ff
    inc bc                                        ; $4894: $03
    sub e                                         ; $4895: $93
    rst $38                                       ; $4896: $ff
    xor l                                         ; $4897: $ad
    rst $38                                       ; $4898: $ff
    and [hl]                                      ; $4899: $a6
    rst $38                                       ; $489a: $ff
    and d                                         ; $489b: $a2
    rst $28                                       ; $489c: $ef
    rst $38                                       ; $489d: $ff
    ld [hl], b                                    ; $489e: $70
    rst $38                                       ; $489f: $ff
    ld a, b                                       ; $48a0: $78
    db $d3                                        ; $48a1: $d3
    ld h, b                                       ; $48a2: $60
    db $ed                                        ; $48a3: $ed
    rst $28                                       ; $48a4: $ef
    adc a                                         ; $48a5: $8f
    xor a                                         ; $48a6: $af
    ei                                            ; $48a7: $fb
    adc [hl]                                      ; $48a8: $8e
    ei                                            ; $48a9: $fb
    nop                                           ; $48aa: $00
    ldh a, [$a0]                                  ; $48ab: $f0 $a0
    nop                                           ; $48ad: $00
    ld a, h                                       ; $48ae: $7c
    ret nz                                        ; $48af: $c0

    ld [bc], a                                    ; $48b0: $02
    db $fc                                        ; $48b1: $fc
    ld a, b                                       ; $48b2: $78
    ret nz                                        ; $48b3: $c0

    ld c, d                                       ; $48b4: $4a
    pop bc                                        ; $48b5: $c1
    ldh a, [$c0]                                  ; $48b6: $f0 $c0
    ld [hl], b                                    ; $48b8: $70
    ret nz                                        ; $48b9: $c0

    ld c, a                                       ; $48ba: $4f
    ret nz                                        ; $48bb: $c0

    rst $30                                       ; $48bc: $f7
    adc a                                         ; $48bd: $8f
    add b                                         ; $48be: $80
    adc a                                         ; $48bf: $8f
    ld a, [$f2a0]                                 ; $48c0: $fa $a0 $f2
    inc bc                                        ; $48c3: $03
    pop af                                        ; $48c4: $f1
    ld bc, $f0ed                                  ; $48c5: $01 $ed $f0
    jp nz, $0fe0                                  ; $48c8: $c2 $e0 $0f

    inc bc                                        ; $48cb: $03
    ld c, [hl]                                    ; $48cc: $4e
    and b                                         ; $48cd: $a0
    rlca                                          ; $48ce: $07
    dec bc                                        ; $48cf: $0b
    rrca                                          ; $48d0: $0f
    rst $38                                       ; $48d1: $ff
    cp $fb                                        ; $48d2: $fe $fb
    rst $38                                       ; $48d4: $ff
    pop af                                        ; $48d5: $f1
    rst $38                                       ; $48d6: $ff
    ld hl, sp-$01                                 ; $48d7: $f8 $ff
    db $fc                                        ; $48d9: $fc
    ld e, c                                       ; $48da: $59
    rst $38                                       ; $48db: $ff
    nop                                           ; $48dc: $00
    ret nz                                        ; $48dd: $c0

    cp $a1                                        ; $48de: $fe $a1
    jp nz, Jump_02b_7cfe                          ; $48e0: $c2 $fe $7c

    ret nz                                        ; $48e3: $c0

    ld c, [hl]                                    ; $48e4: $4e
    reti                                          ; $48e5: $d9


    ld h, c                                       ; $48e6: $61
    call c, $cc00                                 ; $48e7: $dc $00 $cc
    cp $a2                                        ; $48ea: $fe $a2
    ldh a, [$80]                                  ; $48ec: $f0 $80
    ld [$c046], sp                                ; $48ee: $08 $46 $c0
    inc c                                         ; $48f1: $0c
    rlca                                          ; $48f2: $07
    xor e                                         ; $48f3: $ab
    rrca                                          ; $48f4: $0f
    inc bc                                        ; $48f5: $03
    nop                                           ; $48f6: $00
    rst $00                                       ; $48f7: $c7
    ld a, a                                       ; $48f8: $7f
    cp $e0                                        ; $48f9: $fe $e0
    ld b, b                                       ; $48fb: $40
    ld d, h                                       ; $48fc: $54
    ret nz                                        ; $48fd: $c0

    add c                                         ; $48fe: $81
    inc e                                         ; $48ff: $1c
    ld d, d                                       ; $4900: $52
    ret nz                                        ; $4901: $c0

    nop                                           ; $4902: $00
    rst $00                                       ; $4903: $c7
    add hl, de                                    ; $4904: $19
    rst $38                                       ; $4905: $ff
    pop hl                                        ; $4906: $e1
    nop                                           ; $4907: $00
    jp $ce80                                      ; $4908: $c3 $80 $ce


    ld c, b                                       ; $490b: $48
    pop hl                                        ; $490c: $e1
    rst $38                                       ; $490d: $ff
    db $f4                                        ; $490e: $f4
    rlca                                          ; $490f: $07
    inc c                                         ; $4910: $0c
    rlca                                          ; $4911: $07
    rlca                                          ; $4912: $07
    rlca                                          ; $4913: $07
    db $fc                                        ; $4914: $fc
    rst $38                                       ; $4915: $ff
    rst $38                                       ; $4916: $ff
    inc bc                                        ; $4917: $03
    inc bc                                        ; $4918: $03
    ld a, a                                       ; $4919: $7f
    ld a, a                                       ; $491a: $7f
    rst $38                                       ; $491b: $ff
    pop hl                                        ; $491c: $e1
    rra                                           ; $491d: $1f
    ld a, [c]                                     ; $491e: $f2
    rst $20                                       ; $491f: $e7
    rrca                                          ; $4920: $0f
    cp $0a                                        ; $4921: $fe $0a
    nop                                           ; $4923: $00
    rst $18                                       ; $4924: $df
    nop                                           ; $4925: $00
    jp nz, Jump_000_00ff                          ; $4926: $c2 $ff $00

    db $fd                                        ; $4929: $fd
    db $fd                                        ; $492a: $fd
    inc bc                                        ; $492b: $03
    daa                                           ; $492c: $27
    ldh [$03], a                                  ; $492d: $e0 $03
    or [hl]                                       ; $492f: $b6
    ld a, e                                       ; $4930: $7b
    ld l, a                                       ; $4931: $6f
    rst $18                                       ; $4932: $df
    sbc c                                         ; $4933: $99
    rst $38                                       ; $4934: $ff
    cp $bf                                        ; $4935: $fe $bf
    rst $28                                       ; $4937: $ef
    rst $38                                       ; $4938: $ff
    nop                                           ; $4939: $00
    cp a                                          ; $493a: $bf
    ret nz                                        ; $493b: $c0

    ld a, a                                       ; $493c: $7f
    rst $38                                       ; $493d: $ff
    ret nz                                        ; $493e: $c0

    rst $38                                       ; $493f: $ff
    ret nz                                        ; $4940: $c0

    ld l, l                                       ; $4941: $6d
    sbc $fa                                       ; $4942: $de $fa
    rst $30                                       ; $4944: $f7
    dec e                                         ; $4945: $1d
    rst $38                                       ; $4946: $ff
    rst $38                                       ; $4947: $ff
    db $fd                                        ; $4948: $fd
    rst $30                                       ; $4949: $f7
    cp e                                          ; $494a: $bb
    xor $b5                                       ; $494b: $ee $b5
    cp $53                                        ; $494d: $fe $53
    cp $fe                                        ; $494f: $fe $fe
    ldh [$b5], a                                  ; $4951: $e0 $b5
    ld a, [hl]                                    ; $4953: $7e
    rst $10                                       ; $4954: $d7
    ccf                                           ; $4955: $3f
    jp hl                                         ; $4956: $e9


    ld e, $f7                                     ; $4957: $1e $f7
    rst $38                                       ; $4959: $ff
    rrca                                          ; $495a: $0f
    ld e, l                                       ; $495b: $5d
    rst $30                                       ; $495c: $f7
    ld c, l                                       ; $495d: $4d
    rst $38                                       ; $495e: $ff
    ld c, d                                       ; $495f: $4a
    rst $38                                       ; $4960: $ff

jr_02b_4961:
    ld c, e                                       ; $4961: $4b
    rst $38                                       ; $4962: $ff
    cp $2d                                        ; $4963: $fe $2d
    cp $eb                                        ; $4965: $fe $eb
    db $fc                                        ; $4967: $fc
    rla                                           ; $4968: $17
    ld hl, sp-$11                                 ; $4969: $f8 $ef
    rst $38                                       ; $496b: $ff
    ldh a, [$fe]                                  ; $496c: $f0 $fe
    inc bc                                        ; $496e: $03
    ei                                            ; $496f: $fb
    rlca                                          ; $4970: $07
    db $fd                                        ; $4971: $fd
    ld b, $f7                                     ; $4972: $06 $f7
    rst $38                                       ; $4974: $ff
    rrca                                          ; $4975: $0f
    ld sp, hl                                     ; $4976: $f9
    ld c, $ec                                     ; $4977: $0e $ec
    rra                                           ; $4979: $1f
    pop af                                        ; $497a: $f1
    ld e, $ff                                     ; $497b: $1e $ff
    rst $38                                       ; $497d: $ff
    rra                                           ; $497e: $1f
    ld a, a                                       ; $497f: $7f
    ret nz                                        ; $4980: $c0

    rst $18                                       ; $4981: $df
    ldh [$3f], a                                  ; $4982: $e0 $3f
    ldh [$ef], a                                  ; $4984: $e0 $ef
    ld e, a                                       ; $4986: $5f
    ldh a, [$1f]                                  ; $4987: $f0 $1f
    ldh a, [$37]                                  ; $4989: $f0 $37
    ld hl, sp+$6f                                 ; $498b: $f8 $6f
    and b                                         ; $498d: $a0
    ld hl, sp-$60                                 ; $498e: $f8 $a0
    and $5d                                       ; $4990: $e6 $5d
    ld a, d                                       ; $4992: $7a
    and b                                         ; $4993: $a0
    ldh [$dc], a                                  ; $4994: $e0 $dc
    cp a                                          ; $4996: $bf
    xor a                                         ; $4997: $af

jr_02b_4998:
    and b                                         ; $4998: $a0
    ld [$a03f], a                                 ; $4999: $ea $3f $a0
    ld [c], a                                     ; $499c: $e2
    rst $18                                       ; $499d: $df
    rst $38                                       ; $499e: $ff
    ld d, a                                       ; $499f: $57
    rst $38                                       ; $49a0: $ff
    jp nc, $a07a                                  ; $49a1: $d2 $7a $a0

    and $77                                       ; $49a4: $e6 $77
    xor l                                         ; $49a6: $ad
    ld a, a                                       ; $49a7: $7f
    rst $38                                       ; $49a8: $ff
    ld l, d                                       ; $49a9: $6a
    ld a, a                                       ; $49aa: $7f
    set 3, [hl]                                   ; $49ab: $cb $de
    dec l                                         ; $49ad: $2d
    ld a, [hl]                                    ; $49ae: $7e
    and b                                         ; $49af: $a0
    ldh [rHDMA5], a                               ; $49b0: $e0 $55
    ld a, b                                       ; $49b2: $78
    and b                                         ; $49b3: $a0
    add sp, $0c                                   ; $49b4: $e8 $0c
    and b                                         ; $49b6: $a0
    ldh [rNR23], a                                ; $49b7: $e0 $18
    and b                                         ; $49b9: $a0
    db $e4                                        ; $49ba: $e4
    ld h, b                                       ; $49bb: $60
    and b                                         ; $49bc: $a0
    ldh [$dd], a                                  ; $49bd: $e0 $dd
    jr nc, jr_02b_4961                            ; $49bf: $30 $a0

    ldh [rNR23], a                                ; $49c1: $e0 $18
    rst $38                                       ; $49c3: $ff
    ld hl, sp+$10                                 ; $49c4: $f8 $10
    ld h, b                                       ; $49c6: $60
    or l                                          ; $49c7: $b5
    cp h                                          ; $49c8: $bc
    rst $38                                       ; $49c9: $ff
    ei                                            ; $49ca: $fb
    db $f4                                        ; $49cb: $f4
    rst $10                                       ; $49cc: $d7
    call nc, $bdd5                                ; $49cd: $d4 $d5 $bd
    cp b                                          ; $49d0: $b8
    and e                                         ; $49d1: $a3
    rst $00                                       ; $49d2: $c7
    jr nz, jr_02b_4998                            ; $49d3: $20 $c3

    inc l                                         ; $49d5: $2c
    sbc [hl]                                      ; $49d6: $9e
    ccf                                           ; $49d7: $3f
    db $ec                                        ; $49d8: $ec
    db $eb                                        ; $49d9: $eb
    nop                                           ; $49da: $00
    rst $30                                       ; $49db: $f7
    ld a, [c]                                     ; $49dc: $f2
    rst $38                                       ; $49dd: $ff
    cp $00                                        ; $49de: $fe $00
    pop hl                                        ; $49e0: $e1
    cp l                                          ; $49e1: $bd
    xor $b7                                       ; $49e2: $ee $b7
    rst $38                                       ; $49e4: $ff
    ld d, e                                       ; $49e5: $53
    cp $d3                                        ; $49e6: $fe $d3
    db $fd                                        ; $49e8: $fd
    ld a, a                                       ; $49e9: $7f
    nop                                           ; $49ea: $00
    push hl                                       ; $49eb: $e5
    dec a                                         ; $49ec: $3d
    rst $30                                       ; $49ed: $f7
    xor l                                         ; $49ee: $ad
    rst $38                                       ; $49ef: $ff
    ld a, [hl+]                                   ; $49f0: $2a
    rst $38                                       ; $49f1: $ff
    dec b                                         ; $49f2: $05
    xor e                                         ; $49f3: $ab
    nop                                           ; $49f4: $00
    ldh [$cb], a                                  ; $49f5: $e0 $cb
    nop                                           ; $49f7: $00
    rst $38                                       ; $49f8: $ff
    nop                                           ; $49f9: $00
    ldh [$7e], a                                  ; $49fa: $e0 $7e
    rst $38                                       ; $49fc: $ff
    nop                                           ; $49fd: $00
    ccf                                           ; $49fe: $3f
    nop                                           ; $49ff: $00
    ccf                                           ; $4a00: $3f
    db $fc                                        ; $4a01: $fc
    nop                                           ; $4a02: $00
    ccf                                           ; $4a03: $3f
    nop                                           ; $4a04: $00
    dec [hl]                                      ; $4a05: $35
    rst $08                                       ; $4a06: $cf
    ccf                                           ; $4a07: $3f
    ld e, [hl]                                    ; $4a08: $5e
    xor b                                         ; $4a09: $a8
    ccf                                           ; $4a0a: $3f
    jp z, $fe7e                                   ; $4a0b: $ca $7e $fe

    pop hl                                        ; $4a0e: $e1
    xor a                                         ; $4a0f: $af
    ld e, d                                       ; $4a10: $5a
    adc $38                                       ; $4a11: $ce $38
    rst $08                                       ; $4a13: $cf
    ccf                                           ; $4a14: $3f
    ld l, $20                                     ; $4a15: $2e $20
    dec a                                         ; $4a17: $3d
    adc d                                         ; $4a18: $8a
    ld b, b                                       ; $4a19: $40
    ld hl, $8aef                                  ; $4a1a: $21 $ef $8a
    cp $aa                                        ; $4a1d: $fe $aa
    ld d, b                                       ; $4a1f: $50
    jr nz, @+$01                                  ; $4a20: $20 $ff

    ld [bc], a                                    ; $4a22: $02
    ld a, [hl]                                    ; $4a23: $7e
    ld b, b                                       ; $4a24: $40
    ld hl, $a8fd                                  ; $4a25: $21 $fd $a8
    cp [hl]                                       ; $4a28: $be
    ld a, [hl+]                                   ; $4a29: $2a
    rst $38                                       ; $4a2a: $ff
    ld l, e                                       ; $4a2b: $6b
    ld bc, $ff20                                  ; $4a2c: $01 $20 $ff
    db $fd                                        ; $4a2f: $fd
    rst $10                                       ; $4a30: $d7
    ld b, l                                       ; $4a31: $45
    db $fd                                        ; $4a32: $fd
    ld d, a                                       ; $4a33: $57
    db $fd                                        ; $4a34: $fd
    ld e, a                                       ; $4a35: $5f
    db $fd                                        ; $4a36: $fd
    rst $18                                       ; $4a37: $df
    ld b, a                                       ; $4a38: $47
    db $fd                                        ; $4a39: $fd
    ld d, a                                       ; $4a3a: $57
    rst $10                                       ; $4a3b: $d7
    ld b, l                                       ; $4a3c: $45
    ld h, e                                       ; $4a3d: $63
    ld h, c                                       ; $4a3e: $61
    ld d, l                                       ; $4a3f: $55
    ld de, $ff2f                                  ; $4a40: $11 $2f $ff
    ld d, l                                       ; $4a43: $55
    rst $38                                       ; $4a44: $ff
    ld [hl], l                                    ; $4a45: $75
    cp $e0                                        ; $4a46: $fe $e0
    ld d, l                                       ; $4a48: $55
    or $e0                                        ; $4a49: $f6 $e0
    rst $08                                       ; $4a4b: $cf
    ld bc, $68ff                                  ; $4a4c: $01 $ff $68
    cp a                                          ; $4a4f: $bf
    dec l                                         ; $4a50: $2d
    rst $18                                       ; $4a51: $df
    dec c                                         ; $4a52: $0d
    cp a                                          ; $4a53: $bf
    dec c                                         ; $4a54: $0d
    rst $18                                       ; $4a55: $df
    ld sp, hl                                     ; $4a56: $f9
    ld c, l                                       ; $4a57: $4d
    add sp, $00                                   ; $4a58: $e8 $00
    ret nc                                        ; $4a5a: $d0

    nop                                           ; $4a5b: $00
    ld a, [$ff88]                                 ; $4a5c: $fa $88 $ff
    cp d                                          ; $4a5f: $ba
    ld a, [$88e7]                                 ; $4a60: $fa $e7 $88
    db $fd                                        ; $4a63: $fd
    cp h                                          ; $4a64: $bc
    ld a, [$fae1]                                 ; $4a65: $fa $e1 $fa
    ld b, b                                       ; $4a68: $40
    db $fc                                        ; $4a69: $fc
    ld a, [$fb8d]                                 ; $4a6a: $fa $8d $fb
    db $fc                                        ; $4a6d: $fc
    db $d3                                        ; $4a6e: $d3
    cp $e1                                        ; $4a6f: $fe $e1
    push af                                       ; $4a71: $f5
    jp c, $dcf3                                   ; $4a72: $da $f3 $dc

    di                                            ; $4a75: $f3
    ld bc, $70fc                                  ; $4a76: $01 $fc $70
    adc $00                                       ; $4a79: $ce $00
    ccf                                           ; $4a7b: $3f
    nop                                           ; $4a7c: $00
    ccf                                           ; $4a7d: $3f
    nop                                           ; $4a7e: $00
    ccf                                           ; $4a7f: $3f
    nop                                           ; $4a80: $00
    ld h, $00                                     ; $4a81: $26 $00
    nop                                           ; $4a83: $00
    nop                                           ; $4a84: $00
    db $ed                                        ; $4a85: $ed
    ld bc, $e0ff                                  ; $4a86: $01 $ff $e0
    jr nc, jr_02b_4abc                            ; $4a89: $30 $31

    ld a, [$01e1]                                 ; $4a8b: $fa $e1 $01
    ld bc, $c932                                  ; $4a8e: $01 $32 $c9
    inc sp                                        ; $4a91: $33
    ld hl, sp-$1d                                 ; $4a92: $f8 $e3
    ld a, [$00f1]                                 ; $4a94: $fa $f1 $00
    rst $38                                       ; $4a97: $ff
    db $f4                                        ; $4a98: $f4
    ret nz                                        ; $4a99: $c0

    pop hl                                        ; $4a9a: $e1
    ld b, b                                       ; $4a9b: $40
    ld b, c                                       ; $4a9c: $41
    db $db                                        ; $4a9d: $db
    ld h, b                                       ; $4a9e: $60
    ld h, c                                       ; $4a9f: $61
    cp b                                          ; $4aa0: $b8
    pop hl                                        ; $4aa1: $e1
    ld b, d                                       ; $4aa2: $42
    ld b, e                                       ; $4aa3: $43
    ld hl, sp-$1d                                 ; $4aa4: $f8 $e3
    ld bc, $ff01                                  ; $4aa6: $01 $01 $ff
    dec sp                                        ; $4aa9: $3b
    ld e, c                                       ; $4aaa: $59
    ld c, a                                       ; $4aab: $4f
    ccf                                           ; $4aac: $3f
    ld e, h                                       ; $4aad: $5c
    add hl, sp                                    ; $4aae: $39
    ld e, [hl]                                    ; $4aaf: $5e
    ld e, a                                       ; $4ab0: $5f
    rst $38                                       ; $4ab1: $ff
    ld c, l                                       ; $4ab2: $4d
    add hl, sp                                    ; $4ab3: $39
    ld e, [hl]                                    ; $4ab4: $5e
    ld c, d                                       ; $4ab5: $4a
    ld e, c                                       ; $4ab6: $59
    ld c, a                                       ; $4ab7: $4f
    ld e, l                                       ; $4ab8: $5d
    ld l, [hl]                                    ; $4ab9: $6e
    sbc $c0                                       ; $4aba: $de $c0

jr_02b_4abc:
    ei                                            ; $4abc: $fb
    ld d, b                                       ; $4abd: $50
    ld d, c                                       ; $4abe: $51
    ld [hl], b                                    ; $4abf: $70

Call_02b_4ac0:
    ld [hl], c                                    ; $4ac0: $71
    ld a, b                                       ; $4ac1: $78
    pop hl                                        ; $4ac2: $e1
    ld d, d                                       ; $4ac3: $52
    ld d, e                                       ; $4ac4: $53
    ld hl, sp-$08                                 ; $4ac5: $f8 $f8
    db $e3                                        ; $4ac7: $e3
    add b                                         ; $4ac8: $80
    rst $38                                       ; $4ac9: $ff
    add b                                         ; $4aca: $80
    db $eb                                        ; $4acb: $eb
    db $10                                        ; $4acc: $10
    ld de, $1312                                  ; $4acd: $11 $12 $13
    inc d                                         ; $4ad0: $14
    cp [hl]                                       ; $4ad1: $be
    scf                                           ; $4ad2: $37
    ldh [$15], a                                  ; $4ad3: $e0 $15
    ld d, $17                                     ; $4ad5: $16 $17
    jr jr_02b_4af2                                ; $4ad7: $18 $19

    dec [hl]                                      ; $4ad9: $35
    db $e3                                        ; $4ada: $e3
    ld l, a                                       ; $4adb: $6f
    rst $30                                       ; $4adc: $f7
    ld c, [hl]                                    ; $4add: $4e
    add hl, sp                                    ; $4ade: $39
    ld e, h                                       ; $4adf: $5c
    add [hl]                                      ; $4ae0: $86
    ldh [rSB], a                                  ; $4ae1: $e0 $01
    dec sp                                        ; $4ae3: $3b
    ld c, l                                       ; $4ae4: $4d
    ld e, a                                       ; $4ae5: $5f
    ei                                            ; $4ae6: $fb
    ld a, [hl-]                                   ; $4ae7: $3a
    ld l, a                                       ; $4ae8: $6f
    ld b, b                                       ; $4ae9: $40
    db $fd                                        ; $4aea: $fd
    jr nz, jr_02b_4b0e                            ; $4aeb: $20 $21

    ld [hl+], a                                   ; $4aed: $22
    inc hl                                        ; $4aee: $23
    inc h                                         ; $4aef: $24
    cp [hl]                                       ; $4af0: $be
    rst $30                                       ; $4af1: $f7

jr_02b_4af2:
    ret nz                                        ; $4af2: $c0

    dec h                                         ; $4af3: $25
    ld h, $27                                     ; $4af4: $26 $27
    jr z, jr_02b_4b21                             ; $4af6: $28 $29

    db $fd                                        ; $4af8: $fd
    ret                                           ; $4af9: $c9


    ld [hl-], a                                   ; $4afa: $32
    ld e, c                                       ; $4afb: $59
    inc sp                                        ; $4afc: $33
    push hl                                       ; $4afd: $e5
    push bc                                       ; $4afe: $c5
    nop                                           ; $4aff: $00
    ld hl, sp+$02                                 ; $4b00: $f8 $02
    inc bc                                        ; $4b02: $03
    rst $38                                       ; $4b03: $ff
    ld [$ae04], a                                 ; $4b04: $ea $04 $ae
    ret nz                                        ; $4b07: $c0

    cp h                                          ; $4b08: $bc
    db $ed                                        ; $4b09: $ed
    ld [c], a                                     ; $4b0a: $e2
    rst $30                                       ; $4b0b: $f7
    ldh [rSCY], a                                 ; $4b0c: $e0 $42

jr_02b_4b0e:
    ld b, e                                       ; $4b0e: $43
    ld b, b                                       ; $4b0f: $40
    ld b, c                                       ; $4b10: $41
    ld b, b                                       ; $4b11: $40
    cp $09                                        ; $4b12: $fe $09
    rst $38                                       ; $4b14: $ff
    ld a, [bc]                                    ; $4b15: $0a
    sub b                                         ; $4b16: $90
    sub c                                         ; $4b17: $91
    sub d                                         ; $4b18: $92
    sub e                                         ; $4b19: $93
    dec bc                                        ; $4b1a: $0b
    ld a, [bc]                                    ; $4b1b: $0a
    dec bc                                        ; $4b1c: $0b
    ld a, a                                       ; $4b1d: $7f
    ld a, [bc]                                    ; $4b1e: $0a
    or b                                          ; $4b1f: $b0
    or c                                          ; $4b20: $b1

jr_02b_4b21:
    or d                                          ; $4b21: $b2
    or e                                          ; $4b22: $b3
    dec bc                                        ; $4b23: $0b
    dec b                                         ; $4b24: $05
    ld l, [hl]                                    ; $4b25: $6e
    ret nz                                        ; $4b26: $c0

    ld sp, hl                                     ; $4b27: $f9
    add hl, bc                                    ; $4b28: $09
    xor $e1                                       ; $4b29: $ee $e1
    rst $30                                       ; $4b2b: $f7
    ldh [rHDMA2], a                               ; $4b2c: $e0 $52
    ld d, e                                       ; $4b2e: $53
    ld d, b                                       ; $4b2f: $50
    ld d, c                                       ; $4b30: $51
    ld e, l                                       ; $4b31: $5d
    ld a, l                                       ; $4b32: $7d
    ld e, [hl]                                    ; $4b33: $5e
    ret nz                                        ; $4b34: $c0

    db $fd                                        ; $4b35: $fd
    dec bc                                        ; $4b36: $0b
    sub h                                         ; $4b37: $94
    sub l                                         ; $4b38: $95
    sub [hl]                                      ; $4b39: $96
    sub a                                         ; $4b3a: $97
    pop bc                                        ; $4b3b: $c1
    ldh [$3f], a                                  ; $4b3c: $e0 $3f
    dec bc                                        ; $4b3e: $0b
    or h                                          ; $4b3f: $b4
    or l                                          ; $4b40: $b5
    or [hl]                                       ; $4b41: $b6
    or a                                          ; $4b42: $b7
    ld a, [bc]                                    ; $4b43: $0a
    ret nz                                        ; $4b44: $c0

    ld [c], a                                     ; $4b45: $e2
    xor $e1                                       ; $4b46: $ee $e1
    ld a, b                                       ; $4b48: $78
    or a                                          ; $4b49: $b7
    pop hl                                        ; $4b4a: $e1
    ret nz                                        ; $4b4b: $c0

    rst $18                                       ; $4b4c: $df
    add b                                         ; $4b4d: $80
    pop hl                                        ; $4b4e: $e1
    sbc b                                         ; $4b4f: $98
    sbc c                                         ; $4b50: $99
    sbc d                                         ; $4b51: $9a
    sbc e                                         ; $4b52: $9b
    add b                                         ; $4b53: $80
    pop hl                                        ; $4b54: $e1
    rst $08                                       ; $4b55: $cf
    cp b                                          ; $4b56: $b8
    cp c                                          ; $4b57: $b9
    cp d                                          ; $4b58: $ba
    cp e                                          ; $4b59: $bb
    add b                                         ; $4b5a: $80
    db $e3                                        ; $4b5b: $e3
    xor $e1                                       ; $4b5c: $ee $e1
    dec b                                         ; $4b5e: $05
    ld bc, $5dff                                  ; $4b5f: $01 $ff $5d
    dec sp                                        ; $4b62: $3b
    ld e, c                                       ; $4b63: $59
    ld e, h                                       ; $4b64: $5c
    dec a                                         ; $4b65: $3d
    ld bc, $8f01                                  ; $4b66: $01 $01 $8f
    cp l                                          ; $4b69: $bd
    ld a, c                                       ; $4b6a: $79
    add b                                         ; $4b6b: $80
    db $fc                                        ; $4b6c: $fc
    sbc h                                         ; $4b6d: $9c
    sbc l                                         ; $4b6e: $9d
    sbc [hl]                                      ; $4b6f: $9e
    sbc a                                         ; $4b70: $9f
    add b                                         ; $4b71: $80
    pop hl                                        ; $4b72: $e1
    cp h                                          ; $4b73: $bc
    add a                                         ; $4b74: $87
    cp l                                          ; $4b75: $bd
    cp [hl]                                       ; $4b76: $be
    cp a                                          ; $4b77: $bf
    add b                                         ; $4b78: $80
    db $e3                                        ; $4b79: $e3
    xor $e1                                       ; $4b7a: $ee $e1
    add b                                         ; $4b7c: $80
    rst $38                                       ; $4b7d: $ff
    nop                                           ; $4b7e: $00
    push hl                                       ; $4b7f: $e5
    and b                                         ; $4b80: $a0
    rst $30                                       ; $4b81: $f7
    and c                                         ; $4b82: $a1
    and d                                         ; $4b83: $a2
    and e                                         ; $4b84: $a3
    nop                                           ; $4b85: $00
    pop hl                                        ; $4b86: $e1
    ret nz                                        ; $4b87: $c0

    pop bc                                        ; $4b88: $c1
    jp nz, Jump_02b_7cc3                          ; $4b89: $c2 $c3 $7c

    nop                                           ; $4b8c: $00
    db $e3                                        ; $4b8d: $e3
    xor $e1                                       ; $4b8e: $ee $e1
    dec b                                         ; $4b90: $05
    ld l, h                                       ; $4b91: $6c
    ld e, c                                       ; $4b92: $59
    ld e, a                                       ; $4b93: $5f
    adc b                                         ; $4b94: $88
    add b                                         ; $4b95: $80
    ldh [$bd], a                                  ; $4b96: $e0 $bd
    add hl, sp                                    ; $4b98: $39
    nop                                           ; $4b99: $00
    cp $a4                                        ; $4b9a: $fe $a4
    and l                                         ; $4b9c: $a5
    and [hl]                                      ; $4b9d: $a6
    and a                                         ; $4b9e: $a7
    nop                                           ; $4b9f: $00
    pop hl                                        ; $4ba0: $e1
    call nz, $c5e7                                ; $4ba1: $c4 $e7 $c5
    add $c7                                       ; $4ba4: $c6 $c7
    nop                                           ; $4ba6: $00
    db $e3                                        ; $4ba7: $e3
    xor $e1                                       ; $4ba8: $ee $e1
    dec b                                         ; $4baa: $05
    ld e, l                                       ; $4bab: $5d
    ld e, a                                       ; $4bac: $5f
    rst $38                                       ; $4bad: $ff
    ld e, d                                       ; $4bae: $5a
    dec a                                         ; $4baf: $3d
    ld e, h                                       ; $4bb0: $5c
    ld bc, $4d5a                                  ; $4bb1: $01 $5a $4d
    add hl, sp                                    ; $4bb4: $39
    ld l, h                                       ; $4bb5: $6c
    rst $30                                       ; $4bb6: $f7
    dec a                                         ; $4bb7: $3d
    ld e, h                                       ; $4bb8: $5c
    ld l, [hl]                                    ; $4bb9: $6e
    add b                                         ; $4bba: $80
    reti                                          ; $4bbb: $d9


    xor b                                         ; $4bbc: $a8
    xor c                                         ; $4bbd: $a9
    xor d                                         ; $4bbe: $aa
    xor e                                         ; $4bbf: $ab
    ld e, $80                                     ; $4bc0: $1e $80
    pop bc                                        ; $4bc2: $c1
    ret z                                         ; $4bc3: $c8

    ret                                           ; $4bc4: $c9


    jp z, $80cb                                   ; $4bc5: $ca $cb $80

    jp $e1ee                                      ; $4bc8: $c3 $ee $e1


    ld b, b                                       ; $4bcb: $40
    ld [c], a                                     ; $4bcc: $e2
    ld hl, sp+$23                                 ; $4bcd: $f8 $23
    ret nz                                        ; $4bcf: $c0

    cpl                                           ; $4bd0: $2f
    pop bc                                        ; $4bd1: $c1
    ld b, b                                       ; $4bd2: $40
    jp c, $ac0d                                   ; $4bd3: $da $0d $ac

    xor l                                         ; $4bd6: $ad
    xor [hl]                                      ; $4bd7: $ae
    xor a                                         ; $4bd8: $af
    rst $38                                       ; $4bd9: $ff
    inc c                                         ; $4bda: $0c
    dec c                                         ; $4bdb: $0d
    inc c                                         ; $4bdc: $0c
    dec c                                         ; $4bdd: $0d
    call z, $cecd                                 ; $4bde: $cc $cd $ce
    rst $08                                       ; $4be1: $cf
    ld [hl], c                                    ; $4be2: $71
    inc c                                         ; $4be3: $0c
    ld b, b                                       ; $4be4: $40
    jp nz, $e1ee                                  ; $4be5: $c2 $ee $e1

    nop                                           ; $4be8: $00
    ld [c], a                                     ; $4be9: $e2
    add hl, bc                                    ; $4bea: $09
    ret nc                                        ; $4beb: $d0

    pop de                                        ; $4bec: $d1
    ld hl, sp-$3d                                 ; $4bed: $f8 $c3
    sub $c0                                       ; $4bef: $d6 $c0
    sub a                                         ; $4bf1: $97
    ld [$ff07], sp                                ; $4bf2: $08 $07 $ff
    ld [$0006], a                                 ; $4bf5: $ea $06 $00
    pop bc                                        ; $4bf8: $c1
    ld c, $1a                                     ; $4bf9: $0e $1a
    sbc e                                         ; $4bfb: $9b
    dec de                                        ; $4bfc: $1b
    ld c, $c0                                     ; $4bfd: $0e $c0
    db $e3                                        ; $4bff: $e3
    jp nc, $c0d3                                  ; $4c00: $d2 $d3 $c0

    db $fd                                        ; $4c03: $fd
    ld a, $81                                     ; $4c04: $3e $81
    ld e, a                                       ; $4c06: $5f
    cp l                                          ; $4c07: $bd
    ld e, d                                       ; $4c08: $5a
    ld b, [hl]                                    ; $4c09: $46
    add h                                         ; $4c0a: $84
    inc a                                         ; $4c0b: $3c
    ld e, c                                       ; $4c0c: $59
    ld l, d                                       ; $4c0d: $6a
    ld c, a                                       ; $4c0e: $4f
    xor l                                         ; $4c0f: $ad
    and b                                         ; $4c10: $a0
    rrca                                          ; $4c11: $0f
    or a                                          ; $4c12: $b7
    ld a, [hl+]                                   ; $4c13: $2a
    dec hl                                        ; $4c14: $2b
    rrca                                          ; $4c15: $0f
    add b                                         ; $4c16: $80
    db $e3                                        ; $4c17: $e3
    call nc, $c0d5                                ; $4c18: $d4 $d5 $c0
    rst $38                                       ; $4c1b: $ff
    ld a, c                                       ; $4c1c: $79
    rst $38                                       ; $4c1d: $ff
    ld bc, $f1f0                                  ; $4c1e: $01 $f0 $f1
    ld a, [c]                                     ; $4c21: $f2
    di                                            ; $4c22: $f3
    db $f4                                        ; $4c23: $f4
    push af                                       ; $4c24: $f5
    or $01                                        ; $4c25: $f6 $01
    rst $30                                       ; $4c27: $f7
    push af                                       ; $4c28: $f5
    ldh [$ef], a                                  ; $4c29: $e0 $ef
    ld h, c                                       ; $4c2b: $61
    ld l, l                                       ; $4c2c: $6d
    ld [c], a                                     ; $4c2d: $e2
    ld [hl], a                                    ; $4c2e: $77
    pop hl                                        ; $4c2f: $e1
    ld h, e                                       ; $4c30: $63
    pop hl                                        ; $4c31: $e1
    ld hl, sp-$1e                                 ; $4c32: $f8 $e2
    ret nz                                        ; $4c34: $c0

    db $fc                                        ; $4c35: $fc
    rst $38                                       ; $4c36: $ff
    add b                                         ; $4c37: $80
    add c                                         ; $4c38: $81
    add d                                         ; $4c39: $82
    add e                                         ; $4c3a: $83
    add h                                         ; $4c3b: $84
    add l                                         ; $4c3c: $85
    add [hl]                                      ; $4c3d: $86
    add a                                         ; $4c3e: $87
    nop                                           ; $4c3f: $00
    ret nz                                        ; $4c40: $c0

    db $e4                                        ; $4c41: $e4
    ld b, b                                       ; $4c42: $40
    sbc a                                         ; $4c43: $9f
    ld b, b                                       ; $4c44: $40
    db $ec                                        ; $4c45: $ec
    adc b                                         ; $4c46: $88
    ld l, a                                       ; $4c47: $6f
    ld l, h                                       ; $4c48: $6c
    ld l, l                                       ; $4c49: $6d
    add b                                         ; $4c4a: $80
    ld [hl], a                                    ; $4c4b: $77
    sub h                                         ; $4c4c: $94
    ld l, a                                       ; $4c4d: $6f
    ld l, h                                       ; $4c4e: $6c
    ld [hl], c                                    ; $4c4f: $71
    nop                                           ; $4c50: $00
    add b                                         ; $4c51: $80
    rst $38                                       ; $4c52: $ff
    inc b                                         ; $4c53: $04
    ld l, e                                       ; $4c54: $6b
    ld l, h                                       ; $4c55: $6c
    ld l, l                                       ; $4c56: $6d
    nop                                           ; $4c57: $00
    ld a, b                                       ; $4c58: $78
    sub h                                         ; $4c59: $94
    ld l, [hl]                                    ; $4c5a: $6e
    or d                                          ; $4c5b: $b2
    ld b, e                                       ; $4c5c: $43
    ld l, d                                       ; $4c5d: $6a
    ld h, d                                       ; $4c5e: $62
    ld l, l                                       ; $4c5f: $6d
    ld h, b                                       ; $4c60: $60
    nop                                           ; $4c61: $00
    nop                                           ; $4c62: $00
    rst $38                                       ; $4c63: $ff
    sub d                                         ; $4c64: $92
    ld h, [hl]                                    ; $4c65: $66
    add c                                         ; $4c66: $81
    ld c, d                                       ; $4c67: $4a
    ld l, d                                       ; $4c68: $6a
    ld h, d                                       ; $4c69: $62
    ld l, l                                       ; $4c6a: $6d
    ld h, b                                       ; $4c6b: $60
    ret nz                                        ; $4c6c: $c0

    db $fc                                        ; $4c6d: $fc
    sub h                                         ; $4c6e: $94
    ld h, l                                       ; $4c6f: $65
    add c                                         ; $4c70: $81
    ld b, c                                       ; $4c71: $41
    nop                                           ; $4c72: $00
    ld b, c                                       ; $4c73: $41
    ld b, [hl]                                    ; $4c74: $46
    ld l, h                                       ; $4c75: $6c
    ld l, a                                       ; $4c76: $6f
    ld b, b                                       ; $4c77: $40
    ld d, [hl]                                    ; $4c78: $56
    sub h                                         ; $4c79: $94
    ld h, l                                       ; $4c7a: $65
    add c                                         ; $4c7b: $81
    ld b, c                                       ; $4c7c: $41
    sub h                                         ; $4c7d: $94
    ld h, h                                       ; $4c7e: $64
    ld l, h                                       ; $4c7f: $6c
    ld [hl], c                                    ; $4c80: $71
    ret nz                                        ; $4c81: $c0

    rst $30                                       ; $4c82: $f7
    nop                                           ; $4c83: $00
    sub h                                         ; $4c84: $94
    ld l, a                                       ; $4c85: $6f
    ld l, h                                       ; $4c86: $6c
    ld [hl], c                                    ; $4c87: $71
    add b                                         ; $4c88: $80
    rst $30                                       ; $4c89: $f7
    sub h                                         ; $4c8a: $94
    ld h, d                                       ; $4c8b: $62
    sub l                                         ; $4c8c: $95
    ld l, c                                       ; $4c8d: $69
    add b                                         ; $4c8e: $80
    ld [c], a                                     ; $4c8f: $e2
    ld l, h                                       ; $4c90: $6c
    ld l, l                                       ; $4c91: $6d
    ld b, b                                       ; $4c92: $40
    rst $30                                       ; $4c93: $f7
    add b                                         ; $4c94: $80
    sub h                                         ; $4c95: $94
    ld l, a                                       ; $4c96: $6f
    ld l, h                                       ; $4c97: $6c
    ld [hl], c                                    ; $4c98: $71
    nop                                           ; $4c99: $00
    rst $30                                       ; $4c9a: $f7
    sub h                                         ; $4c9b: $94
    ld l, a                                       ; $4c9c: $6f
    ld l, h                                       ; $4c9d: $6c
    ld [hl], c                                    ; $4c9e: $71
    ret nz                                        ; $4c9f: $c0

    rst $10                                       ; $4ca0: $d7
    sub h                                         ; $4ca1: $94
    ld h, d                                       ; $4ca2: $62
    ccf                                           ; $4ca3: $3f
    rrca                                          ; $4ca4: $0f
    ld e, h                                       ; $4ca5: $5c
    dec a                                         ; $4ca6: $3d
    add hl, sp                                    ; $4ca7: $39
    ld e, [hl]                                    ; $4ca8: $5e
    sub h                                         ; $4ca9: $94
    ld h, l                                       ; $4caa: $65
    ld l, h                                       ; $4cab: $6c
    ld [hl], c                                    ; $4cac: $71
    add b                                         ; $4cad: $80
    rst $10                                       ; $4cae: $d7
    sub h                                         ; $4caf: $94
    ld l, a                                       ; $4cb0: $6f
    jr jr_02b_4d1f                                ; $4cb1: $18 $6c

    ld [hl], c                                    ; $4cb3: $71
    ld b, b                                       ; $4cb4: $40
    rst $10                                       ; $4cb5: $d7
    sub h                                         ; $4cb6: $94
    ld h, a                                       ; $4cb7: $67
    sub $d7                                       ; $4cb8: $d6 $d7
    adc h                                         ; $4cba: $8c
    ld b, l                                       ; $4cbb: $45
    ld l, h                                       ; $4cbc: $6c
    ld l, a                                       ; $4cbd: $6f
    nop                                           ; $4cbe: $00
    rst $10                                       ; $4cbf: $d7
    scf                                           ; $4cc0: $37
    ld c, $1c                                     ; $4cc1: $0e $1c
    dec e                                         ; $4cc3: $1d
    sub h                                         ; $4cc4: $94
    ld h, h                                       ; $4cc5: $64
    ret c                                         ; $4cc6: $d8

    reti                                          ; $4cc7: $d9


    ld c, h                                       ; $4cc8: $4c
    ld b, l                                       ; $4cc9: $45
    ld l, h                                       ; $4cca: $6c
    ld l, a                                       ; $4ccb: $6f
    ld l, [hl]                                    ; $4ccc: $6e
    ret nz                                        ; $4ccd: $c0

    or a                                          ; $4cce: $b7
    rrca                                          ; $4ccf: $0f
    inc l                                         ; $4cd0: $2c
    dec l                                         ; $4cd1: $2d
    sub h                                         ; $4cd2: $94
    ld h, h                                       ; $4cd3: $64
    jp c, Jump_000_0cdb                           ; $4cd4: $da $db $0c

    ld b, a                                       ; $4cd7: $47
    inc bc                                        ; $4cd8: $03
    adc a                                         ; $4cd9: $8f
    ld bc, $24c1                                  ; $4cda: $01 $c1 $24
    rst $30                                       ; $4cdd: $f7
    ldh [$80], a                                  ; $4cde: $e0 $80
    ld a, [de]                                    ; $4ce0: $1a
    sub h                                         ; $4ce1: $94
    ld [hl], b                                    ; $4ce2: $70
    ld l, h                                       ; $4ce3: $6c
    ld [hl], c                                    ; $4ce4: $71
    ret nz                                        ; $4ce5: $c0

    sbc a                                         ; $4ce6: $9f
    ldh a, [$86]                                  ; $4ce7: $f0 $86
    ld l, e                                       ; $4ce9: $6b
    ld l, h                                       ; $4cea: $6c
    ld l, l                                       ; $4ceb: $6d
    ret nz                                        ; $4cec: $c0

    ld d, l                                       ; $4ced: $55
    ld e, d                                       ; $4cee: $5a
    add l                                         ; $4cef: $85
    jr jr_02b_4d0b                                ; $4cf0: $18 $19

    inc e                                         ; $4cf2: $1c
    dec e                                         ; $4cf3: $1d
    di                                            ; $4cf4: $f3
    ld e, $1f                                     ; $4cf5: $1e $1f
    add hl, sp                                    ; $4cf7: $39
    jp z, $438d                                   ; $4cf8: $ca $8d $43

    add hl, sp                                    ; $4cfb: $39
    ld a, [hl-]                                   ; $4cfc: $3a
    dec sp                                        ; $4cfd: $3b
    inc a                                         ; $4cfe: $3c
    rst $20                                       ; $4cff: $e7

Jump_02b_4d00:
    dec a                                         ; $4d00: $3d
    ld a, $3f                                     ; $4d01: $3e $3f
    add b                                         ; $4d03: $80
    ld d, l                                       ; $4d04: $55
    ld e, d                                       ; $4d05: $5a
    add l                                         ; $4d06: $85
    jr z, jr_02b_4d32                             ; $4d07: $28 $29

    inc l                                         ; $4d09: $2c
    rst $38                                       ; $4d0a: $ff

jr_02b_4d0b:
    dec l                                         ; $4d0b: $2d
    ld l, $2f                                     ; $4d0c: $2e $2f
    ld c, a                                       ; $4d0e: $4f
    dec a                                         ; $4d0f: $3d
    ld l, e                                       ; $4d10: $6b
    ld e, [hl]                                    ; $4d11: $5e
    ld bc, $5ee7                                  ; $4d12: $01 $e7 $5e
    ld c, d                                       ; $4d15: $4a
    ld c, [hl]                                    ; $4d16: $4e
    jp z, Jump_02b_4d00                           ; $4d17: $ca $00 $4d

    ld b, l                                       ; $4d1a: $45
    ld c, c                                       ; $4d1b: $49
    ld c, d                                       ; $4d1c: $4a
    ld c, e                                       ; $4d1d: $4b
    rst $08                                       ; $4d1e: $cf

jr_02b_4d1f:
    ld c, h                                       ; $4d1f: $4c
    ld c, l                                       ; $4d20: $4d
    ld c, [hl]                                    ; $4d21: $4e
    ld c, a                                       ; $4d22: $4f
    ld b, b                                       ; $4d23: $40
    ld d, l                                       ; $4d24: $55
    jr nz, @+$63                                  ; $4d25: $20 $61

    inc [hl]                                      ; $4d27: $34
    dec [hl]                                      ; $4d28: $35
    cp $20                                        ; $4d29: $fe $20
    ld b, l                                       ; $4d2b: $45
    ld e, [hl]                                    ; $4d2c: $5e
    ld e, h                                       ; $4d2d: $5c
    ld l, h                                       ; $4d2e: $6c
    ld bc, $593e                                  ; $4d2f: $01 $3e $59

jr_02b_4d32:
    ld e, h                                       ; $4d32: $5c
    rst $18                                       ; $4d33: $df
    ld bc, $5d7a                                  ; $4d34: $01 $7a $5d
    ld e, [hl]                                    ; $4d37: $5e
    ld l, [hl]                                    ; $4d38: $6e
    dec c                                         ; $4d39: $0d
    ld b, h                                       ; $4d3a: $44
    ld e, c                                       ; $4d3b: $59
    ld e, d                                       ; $4d3c: $5a
    sbc a                                         ; $4d3d: $9f
    ld e, e                                       ; $4d3e: $5b
    ld e, h                                       ; $4d3f: $5c
    ld e, l                                       ; $4d40: $5d
    ld e, [hl]                                    ; $4d41: $5e
    ld e, a                                       ; $4d42: $5f
    nop                                           ; $4d43: $00
    ld d, l                                       ; $4d44: $55
    dec bc                                        ; $4d45: $0b
    add c                                         ; $4d46: $81
    ld b, h                                       ; $4d47: $44
    pop af                                        ; $4d48: $f1
    ld b, l                                       ; $4d49: $45
    ldh [rNR42], a                                ; $4d4a: $e0 $21
    halt                                          ; $4d4c: $76
    ld [hl], c                                    ; $4d4d: $71
    jp z, Jump_02b_6920                           ; $4d4e: $ca $20 $69

    ld l, d                                       ; $4d51: $6a
    ld l, e                                       ; $4d52: $6b
    ld l, h                                       ; $4d53: $6c
    rst $30                                       ; $4d54: $f7
    ld l, l                                       ; $4d55: $6d
    ld l, [hl]                                    ; $4d56: $6e
    ld l, a                                       ; $4d57: $6f
    ret nz                                        ; $4d58: $c0

    dec [hl]                                      ; $4d59: $35
    ld d, d                                       ; $4d5a: $52
    ld d, e                                       ; $4d5b: $53
    ld c, a                                       ; $4d5c: $4f
    inc a                                         ; $4d5d: $3c
    rst $28                                       ; $4d5e: $ef
    ld d, h                                       ; $4d5f: $54
    ld d, l                                       ; $4d60: $55
    ld e, h                                       ; $4d61: $5c
    inc a                                         ; $4d62: $3c
    or [hl]                                       ; $4d63: $b6
    inc hl                                        ; $4d64: $23
    ld l, a                                       ; $4d65: $6f
    ld e, d                                       ; $4d66: $5a
    add hl, sp                                    ; $4d67: $39
    di                                            ; $4d68: $f3
    ld c, l                                       ; $4d69: $4d
    ld c, [hl]                                    ; $4d6a: $4e
    scf                                           ; $4d6b: $37
    ld l, b                                       ; $4d6c: $68
    adc d                                         ; $4d6d: $8a
    jr nz, @+$7b                                  ; $4d6e: $20 $79

    ld a, d                                       ; $4d70: $7a
    ld a, e                                       ; $4d71: $7b
    ld a, h                                       ; $4d72: $7c
    rst $20                                       ; $4d73: $e7
    ld a, l                                       ; $4d74: $7d
    ld a, [hl]                                    ; $4d75: $7e
    ld a, a                                       ; $4d76: $7f
    add b                                         ; $4d77: $80
    dec [hl]                                      ; $4d78: $35
    pop hl                                        ; $4d79: $e1
    db $e4                                        ; $4d7a: $e4
    adc c                                         ; $4d7b: $89
    adc d                                         ; $4d7c: $8a
    adc e                                         ; $4d7d: $8b
    sbc [hl]                                      ; $4d7e: $9e
    ret nz                                        ; $4d7f: $c0

    ld [c], a                                     ; $4d80: $e2
    inc a                                         ; $4d81: $3c
    ld e, a                                       ; $4d82: $5f
    ld c, a                                       ; $4d83: $4f
    dec a                                         ; $4d84: $3d
    ret nz                                        ; $4d85: $c0

    db $eb                                        ; $4d86: $eb
    and $e0                                       ; $4d87: $e6 $e0
    adc h                                         ; $4d89: $8c
    rst $00                                       ; $4d8a: $c7
    adc l                                         ; $4d8b: $8d
    adc [hl]                                      ; $4d8c: $8e
    adc a                                         ; $4d8d: $8f
    ld b, b                                       ; $4d8e: $40
    dec [hl]                                      ; $4d8f: $35
    db $e4                                        ; $4d90: $e4
    rst $20                                       ; $4d91: $e7
    add b                                         ; $4d92: $80
    ld [c], a                                     ; $4d93: $e2
    ld c, l                                       ; $4d94: $4d
    ld c, d                                       ; $4d95: $4a
    daa                                           ; $4d96: $27
    ld c, a                                       ; $4d97: $4f
    ld c, h                                       ; $4d98: $4c
    ld e, l                                       ; $4d99: $5d
    ld b, b                                       ; $4d9a: $40
    ld [$fcfd], a                                 ; $4d9b: $ea $fd $fc
    ld c, a                                       ; $4d9e: $4f
    ld b, [hl]                                    ; $4d9f: $46
    ldh [$f6], a                                  ; $4da0: $e0 $f6
    dec b                                         ; $4da2: $05
    ld a, a                                       ; $4da3: $7f
    ld l, a                                       ; $4da4: $6f
    ld e, d                                       ; $4da5: $5a
    dec a                                         ; $4da6: $3d
    add hl, sp                                    ; $4da7: $39
    dec sp                                        ; $4da8: $3b
    ld c, c                                       ; $4da9: $49
    adc b                                         ; $4daa: $88
    ret nz                                        ; $4dab: $c0

    ldh [$1f], a                                  ; $4dac: $e0 $1f
    add hl, sp                                    ; $4dae: $39
    ld e, l                                       ; $4daf: $5d
    ld e, [hl]                                    ; $4db0: $5e
    ld c, l                                       ; $4db1: $4d
    dec a                                         ; $4db2: $3d
    ld [hl], h                                    ; $4db3: $74
    ld b, b                                       ; $4db4: $40
    ld b, c                                       ; $4db5: $41
    ld bc, $e5fc                                  ; $4db6: $01 $fc $e5
    ld hl, sp-$42                                 ; $4db9: $f8 $be
    inc de                                        ; $4dbb: $13
    ld b, $e1                                     ; $4dbc: $06 $e1
    and h                                         ; $4dbe: $a4
    inc bc                                        ; $4dbf: $03
    ld l, a                                       ; $4dc0: $6f
    ld e, d                                       ; $4dc1: $5a
    ld c, d                                       ; $4dc2: $4a
    ld e, [hl]                                    ; $4dc3: $5e
    dec sp                                        ; $4dc4: $3b
    cp a                                          ; $4dc5: $bf
    ld c, c                                       ; $4dc6: $49
    ld bc, $5f5a                                  ; $4dc7: $01 $5a $5f
    ld e, [hl]                                    ; $4dca: $5e
    ld e, [hl]                                    ; $4dcb: $5e
    xor h                                         ; $4dcc: $ac
    jr nz, jr_02b_4e2e                            ; $4dcd: $20 $5f

    db $e3                                        ; $4dcf: $e3
    ld e, h                                       ; $4dd0: $5c
    ld e, l                                       ; $4dd1: $5d
    cp a                                          ; $4dd2: $bf
    ldh [rSTAT], a                                ; $4dd3: $e0 $41
    ld bc, $81a9                                  ; $4dd5: $01 $a9 $81
    add hl, bc                                    ; $4dd8: $09
    ldh [$e1], a                                  ; $4dd9: $e0 $e1
    dec c                                         ; $4ddb: $0d
    dec b                                         ; $4ddc: $05
    ld a, [hl]                                    ; $4ddd: $7e
    inc de                                        ; $4dde: $13
    ld e, [hl]                                    ; $4ddf: $5e
    ld c, c                                       ; $4de0: $49
    ld h, [hl]                                    ; $4de1: $66
    dec b                                         ; $4de2: $05
    ld de, $59a2                                  ; $4de3: $11 $a2 $59
    nop                                           ; $4de6: $00
    ld [hl], h                                    ; $4de7: $74
    ld bc, $5238                                  ; $4de8: $01 $38 $52
    dec b                                         ; $4deb: $05
    ld b, c                                       ; $4dec: $41
    ld bc, $81a9                                  ; $4ded: $01 $a9 $81
    add hl, bc                                    ; $4df0: $09
    ld [c], a                                     ; $4df1: $e2
    db $e3                                        ; $4df2: $e3
    ret nz                                        ; $4df3: $c0

    db $f4                                        ; $4df4: $f4
    jp c, $8325                                   ; $4df5: $da $25 $83

    nop                                           ; $4df8: $00
    nop                                           ; $4df9: $00
    ld a, h                                       ; $4dfa: $7c
    dec b                                         ; $4dfb: $05
    dec a                                         ; $4dfc: $3d
    ld bc, $e6c0                                  ; $4dfd: $01 $c0 $e6
    ld b, c                                       ; $4e00: $41
    nop                                           ; $4e01: $00
    xor c                                         ; $4e02: $a9
    add c                                         ; $4e03: $81
    add hl, bc                                    ; $4e04: $09
    inc sp                                        ; $4e05: $33
    db $e4                                        ; $4e06: $e4
    push hl                                       ; $4e07: $e5
    add b                                         ; $4e08: $80
    db $f4                                        ; $4e09: $f4
    jp c, Jump_000_0025                           ; $4e0a: $da $25 $00

    nop                                           ; $4e0d: $00
    ld a, h                                       ; $4e0e: $7c
    dec b                                         ; $4e0f: $05
    sub $89                                       ; $4e10: $d6 $89
    ld a, b                                       ; $4e12: $78
    ld b, c                                       ; $4e13: $41
    ld bc, $e5fc                                  ; $4e14: $01 $fc $e5
    cp a                                          ; $4e17: $bf
    scf                                           ; $4e18: $37
    inc b                                         ; $4e19: $04
    dec b                                         ; $4e1a: $05
    ld b, $07                                     ; $4e1b: $06 $07
    ld a, $05                                     ; $4e1d: $3e $05
    db $fd                                        ; $4e1f: $fd
    adc b                                         ; $4e20: $88
    ld d, b                                       ; $4e21: $50
    call nz, Call_000_0908                        ; $4e22: $c4 $08 $09
    ld a, [bc]                                    ; $4e25: $0a
    dec bc                                        ; $4e26: $0b
    inc c                                         ; $4e27: $0c
    dec c                                         ; $4e28: $0d
    inc bc                                        ; $4e29: $03
    ld c, $0f                                     ; $4e2a: $0e $0f
    ldh [$e5], a                                  ; $4e2c: $e0 $e5

jr_02b_4e2e:
    ldh a, [$e6]                                  ; $4e2e: $f0 $e6
    ret nz                                        ; $4e30: $c0

    sub h                                         ; $4e31: $94
    cp d                                          ; $4e32: $ba
    ld hl, $21f6                                  ; $4e33: $21 $f6 $21
    ld [hl-], a                                   ; $4e36: $32
    ld b, c                                       ; $4e37: $41
    ld e, $6e                                     ; $4e38: $1e $6e
    ld b, c                                       ; $4e3a: $41
    jr jr_02b_4e56                                ; $4e3b: $18 $19

    ld a, [de]                                    ; $4e3d: $1a
    dec de                                        ; $4e3e: $1b
    xor [hl]                                      ; $4e3f: $ae
    add c                                         ; $4e40: $81
    and b                                         ; $4e41: $a0
    add a                                         ; $4e42: $87
    ldh a, [$e3]                                  ; $4e43: $f0 $e3
    ldh [$c0], a                                  ; $4e45: $e0 $c0
    sub l                                         ; $4e47: $95
    ld a, d                                       ; $4e48: $7a
    ld b, c                                       ; $4e49: $41
    or [hl]                                       ; $4e4a: $b6
    ld b, c                                       ; $4e4b: $41
    ld a, [c]                                     ; $4e4c: $f2
    ld b, c                                       ; $4e4d: $41
    ld l, $61                                     ; $4e4e: $2e $61
    jr z, jr_02b_4e7b                             ; $4e50: $28 $29

    ld a, [hl+]                                   ; $4e52: $2a
    pop hl                                        ; $4e53: $e1
    dec hl                                        ; $4e54: $2b
    xor [hl]                                      ; $4e55: $ae

jr_02b_4e56:
    add c                                         ; $4e56: $81
    and b                                         ; $4e57: $a0
    add a                                         ; $4e58: $87
    ldh a, [$e3]                                  ; $4e59: $f0 $e3
    ld hl, sp+$6d                                 ; $4e5b: $f8 $6d
    jr nc, @+$33                                  ; $4e5d: $30 $31

    ld [hl-], a                                   ; $4e5f: $32
    rra                                           ; $4e60: $1f
    inc sp                                        ; $4e61: $33
    inc [hl]                                      ; $4e62: $34
    dec [hl]                                      ; $4e63: $35
    ld [hl], $37                                  ; $4e64: $36 $37
    ld e, b                                       ; $4e66: $58
    ld hl, $2194                                  ; $4e67: $21 $94 $21
    ret nc                                        ; $4e6a: $d0

    ld hl, $0cc2                                  ; $4e6b: $21 $c2 $0c
    ld b, c                                       ; $4e6e: $41
    jr c, jr_02b_4eb9                             ; $4e6f: $38 $48

    add h                                         ; $4e71: $84
    ldh [$e5], a                                  ; $4e72: $e0 $e5
    ldh a, [$e5]                                  ; $4e74: $f0 $e5
    cp b                                          ; $4e76: $b8
    ld l, l                                       ; $4e77: $6d
    ld b, b                                       ; $4e78: $40
    ld b, c                                       ; $4e79: $41
    ccf                                           ; $4e7a: $3f

jr_02b_4e7b:
    ld b, d                                       ; $4e7b: $42
    ld b, e                                       ; $4e7c: $43
    ld b, h                                       ; $4e7d: $44
    ld b, l                                       ; $4e7e: $45
    ld b, [hl]                                    ; $4e7f: $46
    ld b, a                                       ; $4e80: $47
    jr jr_02b_4ec4                                ; $4e81: $18 $41

    ld d, h                                       ; $4e83: $54
    ld b, c                                       ; $4e84: $41
    add h                                         ; $4e85: $84
    sub b                                         ; $4e86: $90
    ld b, c                                       ; $4e87: $41
    call z, Call_02b_4841                         ; $4e88: $cc $41 $48
    ld c, b                                       ; $4e8b: $48
    add h                                         ; $4e8c: $84
    ldh [$e5], a                                  ; $4e8d: $e0 $e5
    ldh a, [$e5]                                  ; $4e8f: $f0 $e5
    ld a, b                                       ; $4e91: $78
    ld l, l                                       ; $4e92: $6d
    ld d, b                                       ; $4e93: $50
    rst $38                                       ; $4e94: $ff
    ld d, c                                       ; $4e95: $51
    ld d, d                                       ; $4e96: $52
    ld d, e                                       ; $4e97: $53
    ld d, h                                       ; $4e98: $54
    ld d, l                                       ; $4e99: $55
    ld d, [hl]                                    ; $4e9a: $56
    ld d, a                                       ; $4e9b: $57
    ret nc                                        ; $4e9c: $d0

    rst $38                                       ; $4e9d: $ff
    pop de                                        ; $4e9e: $d1
    jp nc, $d4d3                                  ; $4e9f: $d2 $d3 $d4

    push de                                       ; $4ea2: $d5
    sub $d7                                       ; $4ea3: $d6 $d7
    ret c                                         ; $4ea5: $d8

    rst $38                                       ; $4ea6: $ff
    reti                                          ; $4ea7: $d9


    jp c, $dcdb                                   ; $4ea8: $da $db $dc

    db $dd                                        ; $4eab: $dd
    sbc $df                                       ; $4eac: $de $df
    ld e, b                                       ; $4eae: $58
    ldh a, [rOBP0]                                ; $4eaf: $f0 $48
    add h                                         ; $4eb1: $84
    ldh [$e5], a                                  ; $4eb2: $e0 $e5
    ldh a, [$e5]                                  ; $4eb4: $f0 $e5
    jr c, jr_02b_4f25                             ; $4eb6: $38 $6d

    ld h, b                                       ; $4eb8: $60

jr_02b_4eb9:
    ld h, c                                       ; $4eb9: $61
    ld h, d                                       ; $4eba: $62
    ld h, e                                       ; $4ebb: $63
    rst $38                                       ; $4ebc: $ff
    ld h, h                                       ; $4ebd: $64
    ld h, l                                       ; $4ebe: $65
    ld h, [hl]                                    ; $4ebf: $66
    ld h, a                                       ; $4ec0: $67
    ldh [$e1], a                                  ; $4ec1: $e0 $e1
    ld [c], a                                     ; $4ec3: $e2

jr_02b_4ec4:
    db $e3                                        ; $4ec4: $e3
    rst $38                                       ; $4ec5: $ff
    db $e4                                        ; $4ec6: $e4
    push hl                                       ; $4ec7: $e5
    and $e7                                       ; $4ec8: $e6 $e7
    add sp, -$17                                  ; $4eca: $e8 $e9
    ld [$1feb], a                                 ; $4ecc: $ea $eb $1f
    db $ec                                        ; $4ecf: $ec
    db $ed                                        ; $4ed0: $ed
    xor $ef                                       ; $4ed1: $ee $ef
    ld l, b                                       ; $4ed3: $68
    ld c, b                                       ; $4ed4: $48
    add h                                         ; $4ed5: $84
    ldh [$e5], a                                  ; $4ed6: $e0 $e5
    ldh a, [$e5]                                  ; $4ed8: $f0 $e5
    cp $f8                                        ; $4eda: $fe $f8
    ld c, l                                       ; $4edc: $4d
    ld [hl], b                                    ; $4edd: $70
    ld [hl], c                                    ; $4ede: $71
    ld [hl], d                                    ; $4edf: $72
    ld [hl], e                                    ; $4ee0: $73
    ld [hl], h                                    ; $4ee1: $74
    ld [hl], l                                    ; $4ee2: $75
    halt                                          ; $4ee3: $76
    db $fd                                        ; $4ee4: $fd
    ld [hl], a                                    ; $4ee5: $77
    jp nc, $f845                                  ; $4ee6: $d2 $45 $f8

    ld sp, hl                                     ; $4ee9: $f9
    ld a, [$fcfb]                                 ; $4eea: $fa $fb $fc
    db $fd                                        ; $4eed: $fd
    rlca                                          ; $4eee: $07
    cp $ff                                        ; $4eef: $fe $ff
    ld a, b                                       ; $4ef1: $78
    ld c, b                                       ; $4ef2: $48
    add h                                         ; $4ef3: $84
    ldh [$e5], a                                  ; $4ef4: $e0 $e5
    ldh a, [$e5]                                  ; $4ef6: $f0 $e5
    cp b                                          ; $4ef8: $b8
    ld c, l                                       ; $4ef9: $4d
    ld [$00cd], sp                                ; $4efa: $08 $cd $00
    db $10                                        ; $4efd: $10
    call $eee0                                    ; $4efe: $cd $e0 $ee
    ld [hl], a                                    ; $4f01: $77
    ld c, h                                       ; $4f02: $4c
    ld [$10cd], sp                                ; $4f03: $08 $cd $10
    call $ade8                                    ; $4f06: $cd $e8 $ad
    jr c, @+$4f                                   ; $4f09: $38 $4d

    ld [$00cd], sp                                ; $4f0b: $08 $cd $00
    db $10                                        ; $4f0e: $10
    call $ade8                                    ; $4f0f: $cd $e8 $ad
    ld hl, sp+$2d                                 ; $4f12: $f8 $2d
    ld [$10cd], sp                                ; $4f14: $08 $cd $10
    call $ade8                                    ; $4f17: $cd $e8 $ad
    cp b                                          ; $4f1a: $b8
    dec l                                         ; $4f1b: $2d
    ld [$00cd], sp                                ; $4f1c: $08 $cd $00
    db $10                                        ; $4f1f: $10
    call $ade8                                    ; $4f20: $cd $e8 $ad
    ld a, b                                       ; $4f23: $78
    dec l                                         ; $4f24: $2d

jr_02b_4f25:
    ld [$10cd], sp                                ; $4f25: $08 $cd $10
    call $ade8                                    ; $4f28: $cd $e8 $ad
    jr c, jr_02b_4f5a                             ; $4f2b: $38 $2d

    ld [$00cd], sp                                ; $4f2d: $08 $cd $00
    db $10                                        ; $4f30: $10
    call $ade8                                    ; $4f31: $cd $e8 $ad
    ld hl, sp+$0d                                 ; $4f34: $f8 $0d
    ld [$10cd], sp                                ; $4f36: $08 $cd $10
    call $ade8                                    ; $4f39: $cd $e8 $ad
    ld b, b                                       ; $4f3c: $40
    dec c                                         ; $4f3d: $0d
    nop                                           ; $4f3e: $00
    nop                                           ; $4f3f: $00
    nop                                           ; $4f40: $00
    add hl, bc                                    ; $4f41: $09
    adc d                                         ; $4f42: $8a
    rst $38                                       ; $4f43: $ff
    rst $38                                       ; $4f44: $ff
    db $e3                                        ; $4f45: $e3
    ld [c], a                                     ; $4f46: $e2
    ld a, [bc]                                    ; $4f47: $0a
    rst $38                                       ; $4f48: $ff
    db $f4                                        ; $4f49: $f4
    add $ff                                       ; $4f4a: $c6 $ff
    jp $c0e1                                      ; $4f4c: $c3 $e1 $c0


    rst $38                                       ; $4f4f: $ff
    nop                                           ; $4f50: $00
    add b                                         ; $4f51: $80
    rst $38                                       ; $4f52: $ff
    ret nz                                        ; $4f53: $c0

    rst $30                                       ; $4f54: $f7
    or a                                          ; $4f55: $b7
    push hl                                       ; $4f56: $e5
    ld hl, sp-$16                                 ; $4f57: $f8 $ea
    rst $38                                       ; $4f59: $ff

jr_02b_4f5a:
    rst $38                                       ; $4f5a: $ff
    ret nz                                        ; $4f5b: $c0

    or $8b                                        ; $4f5c: $f6 $8b
    add sp, -$80                                  ; $4f5e: $e8 $80
    rst $38                                       ; $4f60: $ff
    cp h                                          ; $4f61: $bc
    ld c, e                                       ; $4f62: $4b
    ei                                            ; $4f63: $fb
    ret nz                                        ; $4f64: $c0

    rst $38                                       ; $4f65: $ff
    adc d                                         ; $4f66: $8a
    adc d                                         ; $4f67: $8a
    inc c                                         ; $4f68: $0c
    ld c, $ff                                     ; $4f69: $0e $ff
    ldh [$0c], a                                  ; $4f6b: $e0 $0c
    ret nz                                        ; $4f6d: $c0

    rst $38                                       ; $4f6e: $ff
    ldh [$f8], a                                  ; $4f6f: $e0 $f8
    ld [c], a                                     ; $4f71: $e2
    push af                                       ; $4f72: $f5
    jp nz, $e1ee                                  ; $4f73: $c2 $ee $e1

    ret nz                                        ; $4f76: $c0

    rst $38                                       ; $4f77: $ff
    ret nz                                        ; $4f78: $c0

    cp $8a                                        ; $4f79: $fe $8a
    adc d                                         ; $4f7b: $8a
    ld bc, $ffca                                  ; $4f7c: $01 $ca $ff
    ldh [$c0], a                                  ; $4f7f: $e0 $c0
    rst $38                                       ; $4f81: $ff
    add b                                         ; $4f82: $80
    db $f4                                        ; $4f83: $f4
    dec de                                        ; $4f84: $1b
    jp hl                                         ; $4f85: $e9


    ret nz                                        ; $4f86: $c0

    rst $38                                       ; $4f87: $ff
    add b                                         ; $4f88: $80
    ld a, [c]                                     ; $4f89: $f2
    ld b, b                                       ; $4f8a: $40
    rst $38                                       ; $4f8b: $ff
    nop                                           ; $4f8c: $00
    nop                                           ; $4f8d: $00
    rst $30                                       ; $4f8e: $f7
    sbc a                                         ; $4f8f: $9f
    call nz, $a3dd                                ; $4f90: $c4 $dd $a3
    ret nz                                        ; $4f93: $c0

    rst $38                                       ; $4f94: $ff
    add b                                         ; $4f95: $80
    rst $38                                       ; $4f96: $ff
    ret nz                                        ; $4f97: $c0

    rst $38                                       ; $4f98: $ff
    ret nz                                        ; $4f99: $c0

    adc $5d                                       ; $4f9a: $ce $5d
    and [hl]                                      ; $4f9c: $a6
    jr nc, jr_02b_4f9f                            ; $4f9d: $30 $00

jr_02b_4f9f:
    ret c                                         ; $4f9f: $d8

    ld b, c                                       ; $4fa0: $41
    pop bc                                        ; $4fa1: $c1
    db $fc                                        ; $4fa2: $fc
    rst $20                                       ; $4fa3: $e7
    ret nz                                        ; $4fa4: $c0

    db $ec                                        ; $4fa5: $ec
    dec c                                         ; $4fa6: $0d
    dec c                                         ; $4fa7: $0d
    ld b, b                                       ; $4fa8: $40
    cp $03                                        ; $4fa9: $fe $03
    or b                                          ; $4fab: $b0
    ld a, b                                       ; $4fac: $78
    ret nz                                        ; $4fad: $c0

    rst $38                                       ; $4fae: $ff
    add b                                         ; $4faf: $80
    xor e                                         ; $4fb0: $ab
    cp b                                          ; $4fb1: $b8
    add l                                         ; $4fb2: $85
    jp z, $4a4a                                   ; $4fb3: $ca $4a $4a

    ld a, [hl+]                                   ; $4fb6: $2a
    ld l, l                                       ; $4fb7: $6d
    push hl                                       ; $4fb8: $e5
    ld e, b                                       ; $4fb9: $58
    ret nz                                        ; $4fba: $c0

    rst $38                                       ; $4fbb: $ff
    ld l, h                                       ; $4fbc: $6c
    pop hl                                        ; $4fbd: $e1
    rst $18                                       ; $4fbe: $df
    and c                                         ; $4fbf: $a1
    ld a, [bc]                                    ; $4fc0: $0a
    jp z, $e6f2                                   ; $4fc1: $ca $f2 $e6

    ld a, [bc]                                    ; $4fc4: $0a
    jp nc, Jump_000_00a3                          ; $4fc5: $d2 $a3 $00

    ret                                           ; $4fc8: $c9


    jp z, $9f80                                   ; $4fc9: $ca $80 $9f

    ld [hl+], a                                   ; $4fcc: $22
    and $53                                       ; $4fcd: $e6 $53
    call nz, $9f40                                ; $4fcf: $c4 $40 $9f
    ret nz                                        ; $4fd2: $c0

    sbc a                                         ; $4fd3: $9f
    ret nz                                        ; $4fd4: $c0

    rst $38                                       ; $4fd5: $ff
    or b                                          ; $4fd6: $b0
    di                                            ; $4fd7: $f3
    nop                                           ; $4fd8: $00
    xor h                                         ; $4fd9: $ac
    db $f4                                        ; $4fda: $f4
    add $ff                                       ; $4fdb: $c6 $ff
    ld l, h                                       ; $4fdd: $6c
    ei                                            ; $4fde: $fb
    jp z, Jump_02b_6cff                           ; $4fdf: $ca $ff $6c

    rst $08                                       ; $4fe2: $cf
    ld a, [c]                                     ; $4fe3: $f2
    pop af                                        ; $4fe4: $f1
    rst $38                                       ; $4fe5: $ff
    rst $38                                       ; $4fe6: $ff
    ret nz                                        ; $4fe7: $c0

    rst $38                                       ; $4fe8: $ff
    nop                                           ; $4fe9: $00
    ret nz                                        ; $4fea: $c0

    rst $38                                       ; $4feb: $ff
    ld b, b                                       ; $4fec: $40
    rst $38                                       ; $4fed: $ff
    call nz, $82e7                                ; $4fee: $c4 $e7 $82
    ld h, c                                       ; $4ff1: $61
    db $ec                                        ; $4ff2: $ec
    sbc a                                         ; $4ff3: $9f
    ret nz                                        ; $4ff4: $c0

    rst $38                                       ; $4ff5: $ff
    ret nz                                        ; $4ff6: $c0

    rst $38                                       ; $4ff7: $ff
    ret nz                                        ; $4ff8: $c0

    rst $38                                       ; $4ff9: $ff
    nop                                           ; $4ffa: $00
    ret nz                                        ; $4ffb: $c0

    rst $38                                       ; $4ffc: $ff
    ret nz                                        ; $4ffd: $c0

    rst $38                                       ; $4ffe: $ff
    ret nz                                        ; $4fff: $c0

    rst $38                                       ; $5000: $ff
    ret nz                                        ; $5001: $c0

    rst $38                                       ; $5002: $ff
    ret nz                                        ; $5003: $c0

    rst $38                                       ; $5004: $ff
    ret nz                                        ; $5005: $c0

    rst $38                                       ; $5006: $ff
    ret nz                                        ; $5007: $c0

    rst $38                                       ; $5008: $ff
    ret nz                                        ; $5009: $c0

    rst $38                                       ; $500a: $ff
    ld [hl], h                                    ; $500b: $74

jr_02b_500c:
    ret nz                                        ; $500c: $c0

    rst $38                                       ; $500d: $ff
    ret nz                                        ; $500e: $c0

    db $e4                                        ; $500f: $e4
    ld c, d                                       ; $5010: $4a
    rst $38                                       ; $5011: $ff
    ldh [$0a], a                                  ; $5012: $e0 $0a
    rrca                                          ; $5014: $0f
    rrca                                          ; $5015: $0f
    ld hl, sp-$1d                                 ; $5016: $f8 $e3
    inc c                                         ; $5018: $0c
    ld l, h                                       ; $5019: $6c
    ld [hl], c                                    ; $501a: $71
    add b                                         ; $501b: $80
    ld hl, sp+$0f                                 ; $501c: $f8 $0f
    rrca                                          ; $501e: $0f
    add b                                         ; $501f: $80
    db $e4                                        ; $5020: $e4
    ret nz                                        ; $5021: $c0

    ldh [$c0], a                                  ; $5022: $e0 $c0
    cp a                                          ; $5024: $bf
    ret nz                                        ; $5025: $c0

    rst $38                                       ; $5026: $ff
    add b                                         ; $5027: $80
    db $ec                                        ; $5028: $ec
    ld h, h                                       ; $5029: $64
    ld l, c                                       ; $502a: $69
    inc b                                         ; $502b: $04
    ld b, b                                       ; $502c: $40
    cp a                                          ; $502d: $bf
    ld l, h                                       ; $502e: $6c
    ld a, a                                       ; $502f: $7f
    ret nz                                        ; $5030: $c0

    rst $38                                       ; $5031: $ff
    ld l, h                                       ; $5032: $6c
    ld a, [hl]                                    ; $5033: $7e
    jp z, $0fff                                   ; $5034: $ca $ff $0f

    db $10                                        ; $5037: $10
    rst $38                                       ; $5038: $ff
    ldh [$0d], a                                  ; $5039: $e0 $0d
    rst $38                                       ; $503b: $ff
    ret nz                                        ; $503c: $c0

    rst $38                                       ; $503d: $ff
    inc d                                         ; $503e: $14
    ld h, b                                       ; $503f: $60
    ld a, [hl+]                                   ; $5040: $2a
    ret nz                                        ; $5041: $c0

    rst $38                                       ; $5042: $ff
    nop                                           ; $5043: $00
    ld [hl], a                                    ; $5044: $77
    db $ec                                        ; $5045: $ec
    ld b, [hl]                                    ; $5046: $46
    jr nz, jr_02b_500c                            ; $5047: $20 $c3

    rst $38                                       ; $5049: $ff
    ret nz                                        ; $504a: $c0

    ld c, d                                       ; $504b: $4a
    call nc, $c0ff                                ; $504c: $d4 $ff $c0
    rst $38                                       ; $504f: $ff
    jp c, Jump_000_2ae2                           ; $5050: $da $e2 $2a

    jp z, Jump_02b_7dff                           ; $5053: $ca $ff $7d

    ld e, [hl]                                    ; $5056: $5e
    nop                                           ; $5057: $00
    rst $38                                       ; $5058: $ff
    rst $38                                       ; $5059: $ff
    ld l, a                                       ; $505a: $6f
    add sp, $43                                   ; $505b: $e8 $43
    and c                                         ; $505d: $a1
    ld b, c                                       ; $505e: $41
    and b                                         ; $505f: $a0
    cp a                                          ; $5060: $bf
    rst $38                                       ; $5061: $ff

jr_02b_5062:
    ret nz                                        ; $5062: $c0

    jp nc, $e3be                                  ; $5063: $d2 $be $e3

    db $fc                                        ; $5066: $fc
    db $e3                                        ; $5067: $e3
    jr nz, jr_02b_5062                            ; $5068: $20 $f8

    dec hl                                        ; $506a: $2b
    xor $eb                                       ; $506b: $ee $eb
    ret nz                                        ; $506d: $c0

    ld sp, hl                                     ; $506e: $f9
    add a                                         ; $506f: $87
    ld [$2753], a                                 ; $5070: $ea $53 $27
    ld c, d                                       ; $5073: $4a
    add c                                         ; $5074: $81
    ld bc, $82e9                                  ; $5075: $01 $e9 $82
    inc bc                                        ; $5078: $03
    inc c                                         ; $5079: $0c
    inc c                                         ; $507a: $0c
    inc de                                        ; $507b: $13
    rst $38                                       ; $507c: $ff
    xor h                                         ; $507d: $ac
    pop af                                        ; $507e: $f1
    ret nz                                        ; $507f: $c0

    cp $fd                                        ; $5080: $fe $fd
    db $fc                                        ; $5082: $fc
    ret nz                                        ; $5083: $c0

    rst $38                                       ; $5084: $ff
    rst $38                                       ; $5085: $ff
    rst $38                                       ; $5086: $ff
    db $10                                        ; $5087: $10
    ei                                            ; $5088: $fb
    ld a, [$65d7]                                 ; $5089: $fa $d7 $65
    sub h                                         ; $508c: $94
    ld h, c                                       ; $508d: $61
    db $fc                                        ; $508e: $fc
    jp hl                                         ; $508f: $e9


    dec c                                         ; $5090: $0d
    rst $38                                       ; $5091: $ff
    db $ec                                        ; $5092: $ec
    xor a                                         ; $5093: $af
    ld h, l                                       ; $5094: $65
    ret nz                                        ; $5095: $c0

    rst $38                                       ; $5096: $ff
    nop                                           ; $5097: $00
    ret nz                                        ; $5098: $c0

    rst $38                                       ; $5099: $ff
    ret nz                                        ; $509a: $c0

    rst $38                                       ; $509b: $ff
    ret nz                                        ; $509c: $c0

    rst $38                                       ; $509d: $ff
    ret nz                                        ; $509e: $c0

    rst $38                                       ; $509f: $ff
    ret nz                                        ; $50a0: $c0

    rst $38                                       ; $50a1: $ff
    ret nz                                        ; $50a2: $c0

    rst $38                                       ; $50a3: $ff
    ret nz                                        ; $50a4: $c0

    rst $38                                       ; $50a5: $ff
    ret nz                                        ; $50a6: $c0

    rst $38                                       ; $50a7: $ff
    inc b                                         ; $50a8: $04
    ret nz                                        ; $50a9: $c0

    rst $38                                       ; $50aa: $ff
    ret nz                                        ; $50ab: $c0

    rst $30                                       ; $50ac: $f7
    rrca                                          ; $50ad: $0f
    ret nz                                        ; $50ae: $c0

    rst $38                                       ; $50af: $ff
    add b                                         ; $50b0: $80
    rst $38                                       ; $50b1: $ff
    ret nz                                        ; $50b2: $c0

    ld a, [$e5c8]                                 ; $50b3: $fa $c8 $e5
    ld [bc], a                                    ; $50b6: $02
    ld h, c                                       ; $50b7: $61
    sbc h                                         ; $50b8: $9c
    cp $41                                        ; $50b9: $fe $41
    or e                                          ; $50bb: $b3
    db $e3                                        ; $50bc: $e3
    ld c, $0c                                     ; $50bd: $0e $0c
    dec bc                                        ; $50bf: $0b
    rst $38                                       ; $50c0: $ff
    db $e4                                        ; $50c1: $e4
    cp b                                          ; $50c2: $b8
    push hl                                       ; $50c3: $e5
    ld [$ff08], sp                                ; $50c4: $08 $08 $ff
    db $e4                                        ; $50c7: $e4
    ret nz                                        ; $50c8: $c0

    rst $38                                       ; $50c9: $ff
    pop bc                                        ; $50ca: $c1
    ld [c], a                                     ; $50cb: $e2
    ld c, $c0                                     ; $50cc: $0e $c0
    rst $38                                       ; $50ce: $ff
    add b                                         ; $50cf: $80
    rst $38                                       ; $50d0: $ff
    ret nz                                        ; $50d1: $c0

    rst $38                                       ; $50d2: $ff
    add b                                         ; $50d3: $80
    push af                                       ; $50d4: $f5
    add hl, sp                                    ; $50d5: $39
    ld c, $80                                     ; $50d6: $0e $80
    rst $28                                       ; $50d8: $ef
    or e                                          ; $50d9: $b3
    nop                                           ; $50da: $00
    ld [$0e08], sp                                ; $50db: $08 $08 $0e
    ret nz                                        ; $50de: $c0

    rst $38                                       ; $50df: $ff
    add $04                                       ; $50e0: $c6 $04
    nop                                           ; $50e2: $00
    ret nz                                        ; $50e3: $c0

    ld a, [c]                                     ; $50e4: $f2
    ret nz                                        ; $50e5: $c0

    rst $18                                       ; $50e6: $df
    add b                                         ; $50e7: $80
    ld sp, hl                                     ; $50e8: $f9
    dec a                                         ; $50e9: $3d
    ldh [$80], a                                  ; $50ea: $e0 $80
    rst $38                                       ; $50ec: $ff
    add b                                         ; $50ed: $80
    rst $38                                       ; $50ee: $ff
    ret nz                                        ; $50ef: $c0

    rst $38                                       ; $50f0: $ff
    nop                                           ; $50f1: $00
    ld a, [c]                                     ; $50f2: $f2
    ld bc, $0108                                  ; $50f3: $01 $08 $01
    ld [c], a                                     ; $50f6: $e2
    add b                                         ; $50f7: $80
    xor $00                                       ; $50f8: $ee $00
    nop                                           ; $50fa: $00
    nop                                           ; $50fb: $00
    ld bc, $ff00                                  ; $50fc: $01 $00 $ff
    rst $38                                       ; $50ff: $ff
    rst $38                                       ; $5100: $ff
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
    nop                                           ; $510c: $00
    rst $38                                       ; $510d: $ff
    rst $38                                       ; $510e: $ff
    rst $38                                       ; $510f: $ff
    rst $38                                       ; $5110: $ff
    rst $38                                       ; $5111: $ff
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
    nop                                           ; $511d: $00
    rst $38                                       ; $511e: $ff
    rst $38                                       ; $511f: $ff
    rst $38                                       ; $5120: $ff
    rst $38                                       ; $5121: $ff
    rst $38                                       ; $5122: $ff
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
    nop                                           ; $512e: $00
    rst $38                                       ; $512f: $ff
    rst $38                                       ; $5130: $ff
    rst $38                                       ; $5131: $ff
    rst $38                                       ; $5132: $ff
    rst $38                                       ; $5133: $ff
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
    ldh [rP1], a                                  ; $513e: $e0 $00
    nop                                           ; $5140: $00
    nop                                           ; $5141: $00
    ld bc, $ff00                                  ; $5142: $01 $00 $ff
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
    nop                                           ; $5152: $00
    rst $38                                       ; $5153: $ff
    rst $38                                       ; $5154: $ff
    rst $38                                       ; $5155: $ff
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
    nop                                           ; $5163: $00
    rst $38                                       ; $5164: $ff
    rst $38                                       ; $5165: $ff
    rst $38                                       ; $5166: $ff
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
    nop                                           ; $5174: $00
    rst $38                                       ; $5175: $ff
    rst $38                                       ; $5176: $ff
    rst $38                                       ; $5177: $ff
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
    ldh [rP1], a                                  ; $5184: $e0 $00
    nop                                           ; $5186: $00
    nop                                           ; $5187: $00
    cp $0b                                        ; $5188: $fe $0b
    rrca                                          ; $518a: $0f
    nop                                           ; $518b: $00
    cp $e3                                        ; $518c: $fe $e3
    ldh a, [$fe]                                  ; $518e: $f0 $fe
    db $ec                                        ; $5190: $ec
    add sp, -$1b                                  ; $5191: $e8 $e5
    ldh [rIE], a                                  ; $5193: $e0 $ff
    ldh [rIE], a                                  ; $5195: $e0 $ff
    ret nz                                        ; $5197: $c0

    ldh [rIE], a                                  ; $5198: $e0 $ff
    ldh [rIE], a                                  ; $519a: $e0 $ff
    ldh [rIE], a                                  ; $519c: $e0 $ff
    ldh [rIE], a                                  ; $519e: $e0 $ff
    ldh [$f1], a                                  ; $51a0: $e0 $f1
    ret nc                                        ; $51a2: $d0

    push af                                       ; $51a3: $f5
    di                                            ; $51a4: $f3
    inc bc                                        ; $51a5: $03
    cp a                                          ; $51a6: $bf
    db $fc                                        ; $51a7: $fc
    rrca                                          ; $51a8: $0f
    ldh a, [$3f]                                  ; $51a9: $f0 $3f
    ret nz                                        ; $51ab: $c0

    ld a, a                                       ; $51ac: $7f
    xor b                                         ; $51ad: $a8
    push hl                                       ; $51ae: $e5
    adc a                                         ; $51af: $8f
    ld a, a                                       ; $51b0: $7f
    add b                                         ; $51b1: $80
    ld l, a                                       ; $51b2: $6f
    ldh [$1f], a                                  ; $51b3: $e0 $1f
    ld hl, sp+$07                                 ; $51b5: $f8 $07
    db $fc                                        ; $51b7: $fc
    sub b                                         ; $51b8: $90
    rst $38                                       ; $51b9: $ff
    ldh [$e0], a                                  ; $51ba: $e0 $e0
    push hl                                       ; $51bc: $e5
    cp [hl]                                       ; $51bd: $be
    db $e3                                        ; $51be: $e3
    ld [hl], b                                    ; $51bf: $70
    rst $20                                       ; $51c0: $e7
    cp [hl]                                       ; $51c1: $be
    db $e3                                        ; $51c2: $e3
    ret nz                                        ; $51c3: $c0

    ld hl, sp+$01                                 ; $51c4: $f8 $01
    rrca                                          ; $51c6: $0f
    ld bc, $0efb                                  ; $51c7: $01 $fb $0e
    inc bc                                        ; $51ca: $03
    and b                                         ; $51cb: $a0
    ldh [rTAC], a                                 ; $51cc: $e0 $07
    jr jr_02b_51ef                                ; $51ce: $18 $1f

    ld h, b                                       ; $51d0: $60
    ld a, a                                       ; $51d1: $7f
    rst $20                                       ; $51d2: $e7
    add b                                         ; $51d3: $80
    rst $38                                       ; $51d4: $ff
    nop                                           ; $51d5: $00
    cp $e2                                        ; $51d6: $fe $e2

jr_02b_51d8:
    sbc b                                         ; $51d8: $98
    ldh [$80], a                                  ; $51d9: $e0 $80
    ld [hl], b                                    ; $51db: $70
    ret nz                                        ; $51dc: $c0

    rst $18                                       ; $51dd: $df
    jr c, jr_02b_51d8                             ; $51de: $38 $f8

    daa                                           ; $51e0: $27
    cp $01                                        ; $51e1: $fe $01
    xor $e0                                       ; $51e3: $ee $e0
    ret nz                                        ; $51e5: $c0

    rst $38                                       ; $51e6: $ff
    add d                                         ; $51e7: $82
    add b                                         ; $51e8: $80
    ld [$fe80], a                                 ; $51e9: $ea $80 $fe
    ldh [rNR10], a                                ; $51ec: $e0 $10
    jp hl                                         ; $51ee: $e9


jr_02b_51ef:
    cp [hl]                                       ; $51ef: $be
    ldh [$60], a                                  ; $51f0: $e0 $60
    ld [c], a                                     ; $51f2: $e2
    cp [hl]                                       ; $51f3: $be
    ldh [$e0], a                                  ; $51f4: $e0 $e0
    sbc h                                         ; $51f6: $9c
    cp [hl]                                       ; $51f7: $be
    db $e4                                        ; $51f8: $e4
    ret c                                         ; $51f9: $d8

    db $e3                                        ; $51fa: $e3
    ld [hl], b                                    ; $51fb: $70
    ret nz                                        ; $51fc: $c0

    ccf                                           ; $51fd: $3f
    cp [hl]                                       ; $51fe: $be
    db $e4                                        ; $51ff: $e4
    ld b, b                                       ; $5200: $40
    db $ec                                        ; $5201: $ec
    add b                                         ; $5202: $80
    cp $ca                                        ; $5203: $fe $ca
    db $e4                                        ; $5205: $e4
    ld bc, $00f0                                  ; $5206: $01 $f0 $00
    pop af                                        ; $5209: $f1
    ld bc, $02f3                                  ; $520a: $01 $f3 $02
    rst $38                                       ; $520d: $ff
    rst $30                                       ; $520e: $f7
    dec b                                         ; $520f: $05
    add c                                         ; $5210: $81
    rst $38                                       ; $5211: $ff
    inc de                                        ; $5212: $13
    cp $33                                        ; $5213: $fe $33
    cp $ff                                        ; $5215: $fe $ff
    add hl, sp                                    ; $5217: $39
    rst $28                                       ; $5218: $ef
    cp a                                          ; $5219: $bf
    or $ff                                        ; $521a: $f6 $ff
    ldh [rIE], a                                  ; $521c: $e0 $ff
    ld a, $ff                                     ; $521e: $3e $ff
    rst $38                                       ; $5220: $ff
    push bc                                       ; $5221: $c5
    jp $f1fe                                      ; $5222: $c3 $fe $f1


    ccf                                           ; $5225: $3f
    pop af                                        ; $5226: $f1
    rra                                           ; $5227: $1f
    rst $38                                       ; $5228: $ff
    pop af                                        ; $5229: $f1
    ccf                                           ; $522a: $3f
    ld a, [$fe5e]                                 ; $522b: $fa $5e $fe
    ld b, $fe                                     ; $522e: $06 $fe
    cp $93                                        ; $5230: $fe $93
    rst $38                                       ; $5232: $ff
    ld b, l                                       ; $5233: $45
    and b                                         ; $5234: $a0
    jp nc, $e046                                  ; $5235: $d2 $46 $e0

    pop af                                        ; $5238: $f1
    cp [hl]                                       ; $5239: $be
    ldh [$ec], a                                  ; $523a: $e0 $ec
    pop bc                                        ; $523c: $c1
    ret nz                                        ; $523d: $c0

    db $fd                                        ; $523e: $fd
    ld a, a                                       ; $523f: $7f
    cp [hl]                                       ; $5240: $be
    and $e6                                       ; $5241: $e6 $e6
    rst $38                                       ; $5243: $ff
    ret z                                         ; $5244: $c8

    rst $38                                       ; $5245: $ff
    cp $07                                        ; $5246: $fe $07
    db $fd                                        ; $5248: $fd
    db $fc                                        ; $5249: $fc
    cp [hl]                                       ; $524a: $be
    db $e4                                        ; $524b: $e4
    rra                                           ; $524c: $1f
    ld a, [$fe4e]                                 ; $524d: $fa $4e $fe
    ld h, $fe                                     ; $5250: $26 $fe
    cp l                                          ; $5252: $bd
    cp $60                                        ; $5253: $fe $60
    call Call_000_030e                            ; $5255: $cd $0e $03
    inc c                                         ; $5258: $0c
    rlca                                          ; $5259: $07
    cp $e1                                        ; $525a: $fe $e1
    db $f4                                        ; $525c: $f4
    rst $38                                       ; $525d: $ff
    rlca                                          ; $525e: $07
    ld a, [c]                                     ; $525f: $f2
    inc bc                                        ; $5260: $03
    di                                            ; $5261: $f3
    inc bc                                        ; $5262: $03
    di                                            ; $5263: $f3
    ld [bc], a                                    ; $5264: $02
    ld bc, $ff7f                                  ; $5265: $01 $7f $ff
    inc bc                                        ; $5268: $03
    cp $83                                        ; $5269: $fe $83
    cp $87                                        ; $526b: $fe $87
    db $fc                                        ; $526d: $fc
    cp $e1                                        ; $526e: $fe $e1
    rst $38                                       ; $5270: $ff
    ld c, a                                       ; $5271: $4f
    ld hl, sp-$31                                 ; $5272: $f8 $cf
    ld hl, sp-$08                                 ; $5274: $f8 $f8
    ccf                                           ; $5276: $3f
    db $fc                                        ; $5277: $fc
    rlca                                          ; $5278: $07
    ei                                            ; $5279: $fb
    cp $03                                        ; $527a: $fe $03
    ld l, l                                       ; $527c: $6d
    ldh [rWX], a                                  ; $527d: $e0 $4b
    cp $03                                        ; $527f: $fe $03
    rst $38                                       ; $5281: $ff
    dec a                                         ; $5282: $3d
    rst $28                                       ; $5283: $ef
    rst $38                                       ; $5284: $ff
    ld l, c                                       ; $5285: $69
    ld [hl], b                                    ; $5286: $70
    ret nz                                        ; $5287: $c0

    cp $e3                                        ; $5288: $fe $e3
    ld c, a                                       ; $528a: $4f
    ret nz                                        ; $528b: $c0

    adc a                                         ; $528c: $8f
    xor l                                         ; $528d: $ad
    add b                                         ; $528e: $80
    cp $e1                                        ; $528f: $fe $e1
    ld c, $03                                     ; $5291: $0e $03
    cp [hl]                                       ; $5293: $be
    db $e3                                        ; $5294: $e3
    db $f4                                        ; $5295: $f4
    cp [hl]                                       ; $5296: $be
    db $e4                                        ; $5297: $e4
    nop                                           ; $5298: $00
    db $ed                                        ; $5299: $ed
    rst $38                                       ; $529a: $ff
    cp [hl]                                       ; $529b: $be
    db $eb                                        ; $529c: $eb
    ret nz                                        ; $529d: $c0

    rst $38                                       ; $529e: $ff
    cp [hl]                                       ; $529f: $be
    db $e4                                        ; $52a0: $e4
    inc de                                        ; $52a1: $13
    cp $63                                        ; $52a2: $fe $63
    ld [c], a                                     ; $52a4: $e2
    cp b                                          ; $52a5: $b8
    ldh [$03], a                                  ; $52a6: $e0 $03
    or d                                          ; $52a8: $b2

jr_02b_52a9:
    pop bc                                        ; $52a9: $c1
    ret nz                                        ; $52aa: $c0

    db $e3                                        ; $52ab: $e3
    cp [hl]                                       ; $52ac: $be
    db $e3                                        ; $52ad: $e3
    rst $38                                       ; $52ae: $ff
    ld a, [bc]                                    ; $52af: $0a
    rst $38                                       ; $52b0: $ff
    db $fd                                        ; $52b1: $fd
    add hl, bc                                    ; $52b2: $09
    db $fc                                        ; $52b3: $fc
    pop hl                                        ; $52b4: $e1
    rra                                           ; $52b5: $1f
    inc de                                        ; $52b6: $13
    ccf                                           ; $52b7: $3f
    ld hl, $223f                                  ; $52b8: $21 $3f $22
    rst $38                                       ; $52bb: $ff
    ld a, a                                       ; $52bc: $7f
    ld b, d                                       ; $52bd: $42
    rst $38                                       ; $52be: $ff
    ld b, l                                       ; $52bf: $45
    rst $38                                       ; $52c0: $ff
    and d                                         ; $52c1: $a2
    rst $38                                       ; $52c2: $ff
    ld e, h                                       ; $52c3: $5c
    rst $38                                       ; $52c4: $ff
    rst $38                                       ; $52c5: $ff
    ld b, h                                       ; $52c6: $44
    rst $38                                       ; $52c7: $ff
    jp nz, Jump_000_21ff                          ; $52c8: $c2 $ff $21

    rst $38                                       ; $52cb: $ff
    daa                                           ; $52cc: $27
    rst $38                                       ; $52cd: $ff
    cp $13                                        ; $52ce: $fe $13
    rst $38                                       ; $52d0: $ff
    ld b, [hl]                                    ; $52d1: $46
    rst $38                                       ; $52d2: $ff
    adc b                                         ; $52d3: $88
    rst $38                                       ; $52d4: $ff
    ld [hl], b                                    ; $52d5: $70
    ld l, $ea                                     ; $52d6: $2e $ea
    ldh [$86], a                                  ; $52d8: $e0 $86
    rst $38                                       ; $52da: $ff
    ld [$e030], sp                                ; $52db: $08 $30 $e0
    sub b                                         ; $52de: $90
    adc d                                         ; $52df: $8a
    db $e3                                        ; $52e0: $e3
    nop                                           ; $52e1: $00
    rst $00                                       ; $52e2: $c7
    db $f4                                        ; $52e3: $f4
    jp z, $fec1                                   ; $52e4: $ca $c1 $fe

    pop hl                                        ; $52e7: $e1
    dec c                                         ; $52e8: $0d
    add [hl]                                      ; $52e9: $86
    jp $ff00                                      ; $52ea: $c3 $00 $ff


    ld d, c                                       ; $52ed: $51
    rst $38                                       ; $52ee: $ff
    ld e, a                                       ; $52ef: $5f
    pop de                                        ; $52f0: $d1
    rst $38                                       ; $52f1: $ff
    ld [hl+], a                                   ; $52f2: $22
    rst $38                                       ; $52f3: $ff
    inc e                                         ; $52f4: $1c
    cp [hl]                                       ; $52f5: $be
    db $e4                                        ; $52f6: $e4
    jr nz, jr_02b_52a9                            ; $52f7: $20 $b0

    ldh [$92], a                                  ; $52f9: $e0 $92
    cp [hl]                                       ; $52fb: $be
    jp hl                                         ; $52fc: $e9


    ld [$a1f8], sp                                ; $52fd: $08 $f8 $a1
    ld b, [hl]                                    ; $5300: $46
    pop hl                                        ; $5301: $e1
    ld [hl], b                                    ; $5302: $70
    cp [hl]                                       ; $5303: $be
    and h                                         ; $5304: $a4
    inc c                                         ; $5305: $0c

jr_02b_5306:
    pop hl                                        ; $5306: $e1
    rst $30                                       ; $5307: $f7
    db $fd                                        ; $5308: $fd
    ld b, $80                                     ; $5309: $06 $80
    ldh [rNR11], a                                ; $530b: $e0 $11
    ccf                                           ; $530d: $3f
    inc hl                                        ; $530e: $23
    ccf                                           ; $530f: $3f
    jr nz, jr_02b_5331                            ; $5310: $20 $1f

    rst $38                                       ; $5312: $ff
    db $10                                        ; $5313: $10
    rst $28                                       ; $5314: $ef
    jr c, jr_02b_5306                             ; $5315: $38 $ef

    cp c                                          ; $5317: $b9
    rst $38                                       ; $5318: $ff
    ld e, b                                       ; $5319: $58
    db $fc                                        ; $531a: $fc
    rst $38                                       ; $531b: $ff
    bit 7, [hl]                                   ; $531c: $cb $7e
    pop hl                                        ; $531e: $e1
    rst $38                                       ; $531f: $ff
    ret nc                                        ; $5320: $d0

    rst $38                                       ; $5321: $ff
    call z, $f7ff                                 ; $5322: $cc $ff $f7
    dec sp                                        ; $5325: $3b
    rst $38                                       ; $5326: $ff
    ld [hl], d                                    ; $5327: $72
    rst $30                                       ; $5328: $f7
    and b                                         ; $5329: $a0
    dec b                                         ; $532a: $05
    ld a, a                                       ; $532b: $7f
    add a                                         ; $532c: $87

jr_02b_532d:
    db $fd                                        ; $532d: $fd
    cp a                                          ; $532e: $bf
    rrca                                          ; $532f: $0f
    rst $38                                       ; $5330: $ff

jr_02b_5331:
    ld d, $ef                                     ; $5331: $16 $ef
    ld l, h                                       ; $5333: $6c

jr_02b_5334:
    sbc a                                         ; $5334: $9f
    add b                                         ; $5335: $80
    ld [c], a                                     ; $5336: $e2
    rst $08                                       ; $5337: $cf
    rst $38                                       ; $5338: $ff
    ld b, b                                       ; $5339: $40
    rst $28                                       ; $533a: $ef
    jr nz, jr_02b_532d                            ; $533b: $20 $f0

    sub b                                         ; $533d: $90
    ldh a, [rNR10]                                ; $533e: $f0 $10
    ldh a, [$67]                                  ; $5340: $f0 $67
    jr nz, jr_02b_5334                            ; $5342: $20 $f0

    ld b, b                                       ; $5344: $40
    add d                                         ; $5345: $82
    ldh [$ca], a                                  ; $5346: $e0 $ca
    ret nz                                        ; $5348: $c0

    di                                            ; $5349: $f3
    ld [bc], a                                    ; $534a: $02
    inc b                                         ; $534b: $04
    push bc                                       ; $534c: $c5
    rst $28                                       ; $534d: $ef
    rst $08                                       ; $534e: $cf
    ld hl, sp-$11                                 ; $534f: $f8 $ef
    inc a                                         ; $5351: $3c
    cp [hl]                                       ; $5352: $be
    db $e3                                        ; $5353: $e3
    ld a, l                                       ; $5354: $7d
    ld [c], a                                     ; $5355: $e2
    cp $d7                                        ; $5356: $fe $d7
    sub c                                         ; $5358: $91
    rst $38                                       ; $5359: $ff
    ld a, h                                       ; $535a: $7c
    call z, Call_02b_4ac0                         ; $535b: $cc $c0 $4a
    cp [hl]                                       ; $535e: $be
    db $e3                                        ; $535f: $e3
    ld a, l                                       ; $5360: $7d
    adc a                                         ; $5361: $8f
    rst $28                                       ; $5362: $ef
    rst $38                                       ; $5363: $ff
    ld [de], a                                    ; $5364: $12
    rst $38                                       ; $5365: $ff
    ld a, h                                       ; $5366: $7c
    ld b, b                                       ; $5367: $40
    db $ed                                        ; $5368: $ed
    ld a, a                                       ; $5369: $7f
    ld b, l                                       ; $536a: $45
    ld a, a                                       ; $536b: $7f
    db $dd                                        ; $536c: $dd
    ld b, b                                       ; $536d: $40
    adc b                                         ; $536e: $88
    ldh [rNR24], a                                ; $536f: $e0 $19
    rst $30                                       ; $5371: $f7
    rlca                                          ; $5372: $07
    ld l, $a3                                     ; $5373: $2e $a3
    rst $38                                       ; $5375: $ff
    ld sp, hl                                     ; $5376: $f9
    rst $38                                       ; $5377: $ff
    sbc a                                         ; $5378: $9f
    db $f4                                        ; $5379: $f4
    adc a                                         ; $537a: $8f
    ld a, [$f90f]                                 ; $537b: $fa $0f $f9
    ld b, $ff                                     ; $537e: $06 $ff
    rst $30                                       ; $5380: $f7
    jp nc, $22ff                                  ; $5381: $d2 $ff $22

    db $ed                                        ; $5384: $ed
    ret nz                                        ; $5385: $c0

jr_02b_5386:
    rst $38                                       ; $5386: $ff
    jr nc, @+$01                                  ; $5387: $30 $ff

    ld e, b                                       ; $5389: $58
    rst $38                                       ; $538a: $ff
    rst $20                                       ; $538b: $e7
    cp h                                          ; $538c: $bc
    db $e3                                        ; $538d: $e3
    ld a, $c1                                     ; $538e: $3e $c1
    rst $38                                       ; $5390: $ff
    sub c                                         ; $5391: $91
    rst $38                                       ; $5392: $ff
    adc a                                         ; $5393: $8f
    adc e                                         ; $5394: $8b
    cp $6b                                        ; $5395: $fe $6b
    sbc [hl]                                      ; $5397: $9e
    jr nc, @-$55                                  ; $5398: $30 $a9

    ld a, b                                       ; $539a: $78

jr_02b_539b:
    pop hl                                        ; $539b: $e1
    ldh a, [$85]                                  ; $539c: $f0 $85
    pop af                                        ; $539e: $f1
    rst $18                                       ; $539f: $df
    ld bc, $03f2                                  ; $53a0: $01 $f2 $03
    rst $30                                       ; $53a3: $f7
    dec b                                         ; $53a4: $05
    call c, $13c0                                 ; $53a5: $dc $c0 $13
    rst $38                                       ; $53a8: $ff
    cp a                                          ; $53a9: $bf
    jr jr_02b_539b                                ; $53aa: $18 $ef

    ld a, h                                       ; $53ac: $7c
    adc a                                         ; $53ad: $8f
    ei                                            ; $53ae: $fb
    ld b, $93                                     ; $53af: $06 $93
    ldh [rNR43], a                                ; $53b1: $e0 $22
    rst $38                                       ; $53b3: $ff
    rst $38                                       ; $53b4: $ff
    and c                                         ; $53b5: $a1
    rst $38                                       ; $53b6: $ff
    rst $38                                       ; $53b7: $ff
    sub b                                         ; $53b8: $90
    rst $38                                       ; $53b9: $ff
    jr nc, @-$0f                                  ; $53ba: $30 $ef

    ld l, a                                       ; $53bc: $6f
    ld a, h                                       ; $53bd: $7c
    db $e3                                        ; $53be: $e3
    cp [hl]                                       ; $53bf: $be
    pop bc                                        ; $53c0: $c1
    rst $30                                       ; $53c1: $f7
    ldh [$89], a                                  ; $53c2: $e0 $89
    rst $38                                       ; $53c4: $ff
    ret nz                                        ; $53c5: $c0

    ldh a, [$f3]                                  ; $53c6: $f0 $f3

jr_02b_53c8:
    inc c                                         ; $53c8: $0c
    rrca                                          ; $53c9: $0f
    ld b, h                                       ; $53ca: $44
    pop hl                                        ; $53cb: $e1
    or b                                          ; $53cc: $b0
    add [hl]                                      ; $53cd: $86
    rst $38                                       ; $53ce: $ff
    jr jr_02b_53c8                                ; $53cf: $18 $f7

    inc a                                         ; $53d1: $3c
    rst $38                                       ; $53d2: $ff
    di                                            ; $53d3: $f3
    sbc a                                         ; $53d4: $9f
    ldh a, [$5f]                                  ; $53d5: $f0 $5f
    ld hl, $2f3f                                  ; $53d7: $21 $3f $2f
    ccf                                           ; $53da: $3f
    rst $38                                       ; $53db: $ff
    rra                                           ; $53dc: $1f
    rra                                           ; $53dd: $1f
    rrca                                          ; $53de: $0f
    rrca                                          ; $53df: $0f
    rst $38                                       ; $53e0: $ff
    ld h, b                                       ; $53e1: $60
    rst $38                                       ; $53e2: $ff
    ld sp, $cfff                                  ; $53e3: $31 $ff $cf
    ld a, [$fc07]                                 ; $53e6: $fa $07 $fc
    adc b                                         ; $53e9: $88
    ld hl, sp-$18                                 ; $53ea: $f8 $e8
    ld hl, sp-$2f                                 ; $53ec: $f8 $d1
    ldh a, [rIE]                                  ; $53ee: $f0 $ff
    pop hl                                        ; $53f0: $e1
    ld c, $a4                                     ; $53f1: $0e $a4
    jr nz, jr_02b_5386                            ; $53f3: $20 $91

    pop af                                        ; $53f5: $f1
    ld a, d                                       ; $53f6: $7a
    and b                                         ; $53f7: $a0
    rst $38                                       ; $53f8: $ff
    sbc e                                         ; $53f9: $9b
    rst $38                                       ; $53fa: $ff
    rst $38                                       ; $53fb: $ff
    sbc h                                         ; $53fc: $9c
    di                                            ; $53fd: $f3
    sbc [hl]                                      ; $53fe: $9e
    pop af                                        ; $53ff: $f1
    sbc a                                         ; $5400: $9f
    ldh a, [$9f]                                  ; $5401: $f0 $9f
    rst $38                                       ; $5403: $ff
    di                                            ; $5404: $f3
    sbc a                                         ; $5405: $9f
    rst $38                                       ; $5406: $ff
    rra                                           ; $5407: $1f
    rst $28                                       ; $5408: $ef
    cpl                                           ; $5409: $2f
    rst $38                                       ; $540a: $ff
    or d                                          ; $540b: $b2
    rst $38                                       ; $540c: $ff
    rst $38                                       ; $540d: $ff
    ld [hl-], a                                   ; $540e: $32
    rst $08                                       ; $540f: $cf
    ld a, d                                       ; $5410: $7a
    adc a                                         ; $5411: $8f
    ld a, [$fa0e]                                 ; $5412: $fa $0e $fa
    cp a                                          ; $5415: $bf
    adc $fa                                       ; $5416: $ce $fa
    cp $f2                                        ; $5418: $fe $f2
    rst $38                                       ; $541a: $ff
    pop af                                        ; $541b: $f1
    nop                                           ; $541c: $00
    sbc l                                         ; $541d: $9d
    jr nz, @-$07                                  ; $541e: $20 $f7

    ccf                                           ; $5420: $3f
    ld b, b                                       ; $5421: $40
    ld a, a                                       ; $5422: $7f
    cp $e1                                        ; $5423: $fe $e1
    rst $38                                       ; $5425: $ff
    ld a, a                                       ; $5426: $7f
    ei                                            ; $5427: $fb
    ld l, [hl]                                    ; $5428: $6e
    rst $38                                       ; $5429: $ff

jr_02b_542a:
    rst $38                                       ; $542a: $ff
    ld l, a                                       ; $542b: $6f
    rst $38                                       ; $542c: $ff
    ld b, b                                       ; $542d: $40
    rrca                                          ; $542e: $0f
    db $fc                                        ; $542f: $fc
    rlca                                          ; $5430: $07
    rst $38                                       ; $5431: $ff
    db $fd                                        ; $5432: $fd
    rlca                                          ; $5433: $07
    ld a, [hl-]                                   ; $5434: $3a
    and b                                         ; $5435: $a0
    rst $38                                       ; $5436: $ff
    ld a, [$e1bf]                                 ; $5437: $fa $bf $e1
    rst $38                                       ; $543a: $ff
    pop af                                        ; $543b: $f1
    rst $38                                       ; $543c: $ff
    rst $38                                       ; $543d: $ff
    add hl, bc                                    ; $543e: $09
    rst $28                                       ; $543f: $ef
    jr nz, @+$01                                  ; $5440: $20 $ff

    db $10                                        ; $5442: $10
    rst $38                                       ; $5443: $ff
    db $10                                        ; $5444: $10
    jp nc, $c080                                  ; $5445: $d2 $80 $c0

    ld b, b                                       ; $5448: $40
    add h                                         ; $5449: $84
    add e                                         ; $544a: $83
    ld [$11a0], a                                 ; $544b: $ea $a0 $11
    xor $e0                                       ; $544e: $ee $e0
    ld [$770f], sp                                ; $5450: $08 $0f $77
    inc b                                         ; $5453: $04
    rrca                                          ; $5454: $0f
    inc bc                                        ; $5455: $03
    ld a, $81                                     ; $5456: $3e $81
    ret nz                                        ; $5458: $c0

    ld a, a                                       ; $5459: $7f
    ret nz                                        ; $545a: $c0

    ld e, d                                       ; $545b: $5a
    add b                                         ; $545c: $80
    rst $38                                       ; $545d: $ff
    ret nz                                        ; $545e: $c0

    ld a, a                                       ; $545f: $7f
    rst $38                                       ; $5460: $ff
    ccf                                           ; $5461: $3f
    ei                                            ; $5462: $fb
    ld c, $ff                                     ; $5463: $0e $ff
    rra                                           ; $5465: $1f
    or e                                          ; $5466: $b3
    rst $38                                       ; $5467: $ff
    jr nz, jr_02b_542a                            ; $5468: $20 $c0

    db $fd                                        ; $546a: $fd
    ld d, b                                       ; $546b: $50
    ld l, [hl]                                    ; $546c: $6e
    rrca                                          ; $546d: $0f
    rra                                           ; $546e: $1f
    rst $38                                       ; $546f: $ff
    ldh [$2f], a                                  ; $5470: $e0 $2f
    rst $18                                       ; $5472: $df
    ccf                                           ; $5473: $3f
    rst $20                                       ; $5474: $e7
    ccf                                           ; $5475: $3f
    pop bc                                        ; $5476: $c1
    ld a, a                                       ; $5477: $7f
    cp d                                          ; $5478: $ba
    ldh [$7f], a                                  ; $5479: $e0 $7f
    ldh a, [$0b]                                  ; $547b: $f0 $0b
    ldh a, [$f8]                                  ; $547d: $f0 $f8
    rst $38                                       ; $547f: $ff
    ld [c], a                                     ; $5480: $e2
    rst $20                                       ; $5481: $e7
    xor $80                                       ; $5482: $ee $80
    ld a, d                                       ; $5484: $7a
    ldh [$80], a                                  ; $5485: $e0 $80
    ld l, [hl]                                    ; $5487: $6e
    add d                                         ; $5488: $82
    and c                                         ; $5489: $a1
    cp e                                          ; $548a: $bb
    rst $30                                       ; $548b: $f7
    inc b                                         ; $548c: $04
    xor b                                         ; $548d: $a8
    and b                                         ; $548e: $a0
    ld a, [bc]                                    ; $548f: $0a
    rrca                                          ; $5490: $0f
    add hl, bc                                    ; $5491: $09
    ld a, h                                       ; $5492: $7c
    pop hl                                        ; $5493: $e1
    rst $28                                       ; $5494: $ef
    rst $38                                       ; $5495: $ff
    cpl                                           ; $5496: $2f
    rst $18                                       ; $5497: $df
    ld e, a                                       ; $5498: $5f
    rst $18                                       ; $5499: $df
    ld e, a                                       ; $549a: $5f
    rst $28                                       ; $549b: $ef
    rst $38                                       ; $549c: $ff
    rst $20                                       ; $549d: $e7
    ei                                            ; $549e: $fb
    ld a, a                                       ; $549f: $7f
    pop bc                                        ; $54a0: $c1
    jp nc, $ff60                                  ; $54a1: $d2 $60 $ff

    ld a, a                                       ; $54a4: $7f
    rst $38                                       ; $54a5: $ff
    ld sp, hl                                     ; $54a6: $f9
    rst $38                                       ; $54a7: $ff
    rst $18                                       ; $54a8: $df
    cp $ff                                        ; $54a9: $fe $ff
    ld hl, sp-$01                                 ; $54ab: $f8 $ff
    cp $c0                                        ; $54ad: $fe $c0
    ldh [$fd], a                                  ; $54af: $e0 $fd
    rlca                                          ; $54b1: $07
    add e                                         ; $54b2: $83
    cp $ff                                        ; $54b3: $fe $ff
    ret nz                                        ; $54b5: $c0

    ld h, b                                       ; $54b6: $60
    cp [hl]                                       ; $54b7: $be
    and e                                         ; $54b8: $a3
    ld b, b                                       ; $54b9: $40
    ldh [$3e], a                                  ; $54ba: $e0 $3e
    ld [c], a                                     ; $54bc: $e2
    jr nc, jr_02b_552c                            ; $54bd: $30 $6d

    rst $38                                       ; $54bf: $ff
    ld a, l                                       ; $54c0: $7d
    ld b, b                                       ; $54c1: $40
    cp $e0                                        ; $54c2: $fe $e0
    ld b, [hl]                                    ; $54c4: $46
    rst $38                                       ; $54c5: $ff
    ld b, e                                       ; $54c6: $43
    ld a, a                                       ; $54c7: $7f
    ld b, d                                       ; $54c8: $42
    db $f4                                        ; $54c9: $f4
    add b                                         ; $54ca: $80
    rst $30                                       ; $54cb: $f7
    add d                                         ; $54cc: $82
    rst $38                                       ; $54cd: $ff
    add h                                         ; $54ce: $84
    ldh [$80], a                                  ; $54cf: $e0 $80
    ld a, [bc]                                    ; $54d1: $0a
    rst $38                                       ; $54d2: $ff
    call nz, $dbff                                ; $54d3: $c4 $ff $db
    add h                                         ; $54d6: $84
    db $fc                                        ; $54d7: $fc
    cp $e2                                        ; $54d8: $fe $e2
    cp $42                                        ; $54da: $fe $42
    and b                                         ; $54dc: $a0
    ld e, l                                       ; $54dd: $5d
    rst $38                                       ; $54de: $ff
    and b                                         ; $54df: $a0
    add sp, -$02                                  ; $54e0: $e8 $fe
    ldh [$c0], a                                  ; $54e2: $e0 $c0
    rst $38                                       ; $54e4: $ff
    ret nz                                        ; $54e5: $c0

    rst $30                                       ; $54e6: $f7
    ld b, c                                       ; $54e7: $41
    cp $e0                                        ; $54e8: $fe $e0
    ld b, e                                       ; $54ea: $43
    cp $42                                        ; $54eb: $fe $42
    ld a, [hl-]                                   ; $54ed: $3a
    add $e0                                       ; $54ee: $c6 $e0
    sub h                                         ; $54f0: $94
    jp nz, $88e0                                  ; $54f1: $c2 $e0 $88

    rst $38                                       ; $54f4: $ff
    inc b                                         ; $54f5: $04
    cp $e2                                        ; $54f6: $fe $e2
    ret nz                                        ; $54f8: $c0

    ldh [$a3], a                                  ; $54f9: $e0 $a3
    ld hl, sp-$78                                 ; $54fb: $f8 $88
    cp $e1                                        ; $54fd: $fe $e1
    ret nz                                        ; $54ff: $c0

    rst $38                                       ; $5500: $ff
    cp [hl]                                       ; $5501: $be
    pop hl                                        ; $5502: $e1
    cp $82                                        ; $5503: $fe $82
    push hl                                       ; $5505: $e5
    add h                                         ; $5506: $84
    ldh a, [$c0]                                  ; $5507: $f0 $c0
    rst $20                                       ; $5509: $e7
    add d                                         ; $550a: $82
    pop hl                                        ; $550b: $e1
    add b                                         ; $550c: $80
    rst $28                                       ; $550d: $ef
    ld a, [bc]                                    ; $550e: $0a
    ld h, b                                       ; $550f: $60
    inc bc                                        ; $5510: $03
    db $f4                                        ; $5511: $f4
    rlca                                          ; $5512: $07
    ld hl, sp-$01                                 ; $5513: $f8 $ff
    rrca                                          ; $5515: $0f
    ld [$0f0f], sp                                ; $5516: $08 $0f $0f
    rrca                                          ; $5519: $0f
    ld hl, sp-$01                                 ; $551a: $f8 $ff
    rlca                                          ; $551c: $07
    db $fd                                        ; $551d: $fd
    rlca                                          ; $551e: $07
    sub b                                         ; $551f: $90
    ldh [$c4], a                                  ; $5520: $e0 $c4
    ccf                                           ; $5522: $3f
    ld a, [c]                                     ; $5523: $f2
    cpl                                           ; $5524: $2f
    ld a, [$db16]                                 ; $5525: $fa $16 $db

jr_02b_5528:
    cp $fe                                        ; $5528: $fe $fe
    adc a                                         ; $552a: $8f
    ld h, b                                       ; $552b: $60

jr_02b_552c:
    db $fc                                        ; $552c: $fc
    db $fc                                        ; $552d: $fc
    ld [hl], b                                    ; $552e: $70
    ldh [rVBK], a                                 ; $552f: $e0 $4f
    ld hl, sp-$01                                 ; $5531: $f8 $ff
    sbc a                                         ; $5533: $9f
    add sp, -$41                                  ; $5534: $e8 $bf
    ret nc                                        ; $5536: $d0

    rst $38                                       ; $5537: $ff
    rst $38                                       ; $5538: $ff
    rst $38                                       ; $5539: $ff
    add b                                         ; $553a: $80
    rst $30                                       ; $553b: $f7
    rst $38                                       ; $553c: $ff
    ld a, a                                       ; $553d: $7f
    ld a, a                                       ; $553e: $7f
    jr c, jr_02b_5582                             ; $553f: $38 $41

    ld c, a                                       ; $5541: $4f
    ret nz                                        ; $5542: $c0

    cpl                                           ; $5543: $2f
    ldh [rIE], a                                  ; $5544: $e0 $ff
    jr nc, jr_02b_5528                            ; $5546: $30 $e0

    ldh [$e0], a                                  ; $5548: $e0 $e0
    ccf                                           ; $554a: $3f
    rst $38                                       ; $554b: $ff
    ret nz                                        ; $554c: $c0

    ret nz                                        ; $554d: $c0

    ld [hl], b                                    ; $554e: $70
    ret nz                                        ; $554f: $c0

    rst $38                                       ; $5550: $ff
    ret nz                                        ; $5551: $c0

    ei                                            ; $5552: $fb
    adc b                                         ; $5553: $88
    ld b, d                                       ; $5554: $42

Jump_02b_5555:
    cp [hl]                                       ; $5555: $be
    ldh [$0c], a                                  ; $5556: $e0 $0c
    rlca                                          ; $5558: $07
    rlca                                          ; $5559: $07
    sbc e                                         ; $555a: $9b
    and b                                         ; $555b: $a0
    db $d3                                        ; $555c: $d3
    inc bc                                        ; $555d: $03
    inc bc                                        ; $555e: $03
    ld d, h                                       ; $555f: $54
    ret nz                                        ; $5560: $c0

    sbc b                                         ; $5561: $98
    ld h, b                                       ; $5562: $60
    ccf                                           ; $5563: $3f
    inc hl                                        ; $5564: $23
    add b                                         ; $5565: $80
    ldh a, [$f0]                                  ; $5566: $f0 $f0
    rst $28                                       ; $5568: $ef
    rra                                           ; $5569: $1f
    rst $38                                       ; $556a: $ff
    ldh [$e0], a                                  ; $556b: $e0 $e0
    ld [bc], a                                    ; $556d: $02
    ret nz                                        ; $556e: $c0

    adc b                                         ; $556f: $88
    rst $38                                       ; $5570: $ff
    adc a                                         ; $5571: $8f
    pop de                                        ; $5572: $d1
    ld hl, sp+$7b                                 ; $5573: $f8 $7b
    ld h, b                                       ; $5575: $60
    add b                                         ; $5576: $80
    push hl                                       ; $5577: $e5
    ld a, [hl]                                    ; $5578: $7e
    ld hl, $068f                                  ; $5579: $21 $8f $06
    ld b, b                                       ; $557c: $40
    add b                                         ; $557d: $80
    add b                                         ; $557e: $80
    rst $30                                       ; $557f: $f7
    rst $38                                       ; $5580: $ff
    rst $38                                       ; $5581: $ff

jr_02b_5582:
    nop                                           ; $5582: $00
    ld a, d                                       ; $5583: $7a
    ld h, [hl]                                    ; $5584: $66
    rrca                                          ; $5585: $0f
    ld bc, $0101                                  ; $5586: $01 $01 $01
    or $f0                                        ; $5589: $f6 $f0
    pop hl                                        ; $558b: $e1
    rst $38                                       ; $558c: $ff
    db $fc                                        ; $558d: $fc
    adc h                                         ; $558e: $8c
    ret nz                                        ; $558f: $c0

    db $fc                                        ; $5590: $fc
    ld b, e                                       ; $5591: $43
    cp $82                                        ; $5592: $fe $82
    or [hl]                                       ; $5594: $b6
    add b                                         ; $5595: $80
    db $e4                                        ; $5596: $e4
    cp $7e                                        ; $5597: $fe $7e
    ld a, [bc]                                    ; $5599: $0a
    ldh [$7e], a                                  ; $559a: $e0 $7e
    add [hl]                                      ; $559c: $86
    xor h                                         ; $559d: $ac
    ld b, b                                       ; $559e: $40
    cp $1f                                        ; $559f: $fe $1f
    cp $83                                        ; $55a1: $fe $83
    rst $38                                       ; $55a3: $ff
    ld a, h                                       ; $55a4: $7c
    ld a, h                                       ; $55a5: $7c
    ld b, b                                       ; $55a6: $40
    daa                                           ; $55a7: $27
    call nc, $c0e0                                ; $55a8: $d4 $e0 $c0
    ldh [rP1], a                                  ; $55ab: $e0 $00
    nop                                           ; $55ad: $00
    nop                                           ; $55ae: $00
    nop                                           ; $55af: $00
    nop                                           ; $55b0: $00
    nop                                           ; $55b1: $00
    nop                                           ; $55b2: $00
    inc d                                         ; $55b3: $14
    ld h, $00                                     ; $55b4: $26 $00
    nop                                           ; $55b6: $00
    xor b                                         ; $55b7: $a8
    stop                                          ; $55b8: $10 $00
    nop                                           ; $55ba: $00
    xor l                                         ; $55bb: $ad
    dec [hl]                                      ; $55bc: $35
    sub h                                         ; $55bd: $94
    ld c, [hl]                                    ; $55be: $4e
    xor b                                         ; $55bf: $a8
    stop                                          ; $55c0: $10 $00
    nop                                           ; $55c2: $00
    xor l                                         ; $55c3: $ad
    dec [hl]                                      ; $55c4: $35
    sub h                                         ; $55c5: $94
    ld c, [hl]                                    ; $55c6: $4e
    or $03                                        ; $55c7: $f6 $03
    rst $38                                       ; $55c9: $ff
    ld a, a                                       ; $55ca: $7f
    ldh [rSCX], a                                 ; $55cb: $e0 $43
    ld b, b                                       ; $55cd: $40
    ld a, [hl]                                    ; $55ce: $7e
    rst $38                                       ; $55cf: $ff
    ld a, a                                       ; $55d0: $7f
    adc $76                                       ; $55d1: $ce $76
    dec [hl]                                      ; $55d3: $35
    ld bc, $14e9                                  ; $55d4: $01 $e9 $14
    rst $18                                       ; $55d7: $df
    ld a, l                                       ; $55d8: $7d
    rra                                           ; $55d9: $1f
    ld b, b                                       ; $55da: $40
    ld a, a                                       ; $55db: $7f
    ld a, a                                       ; $55dc: $7f
    adc e                                         ; $55dd: $8b
    inc l                                         ; $55de: $2c
    rst $38                                       ; $55df: $ff
    ld a, a                                       ; $55e0: $7f
    ld a, [bc]                                    ; $55e1: $0a
    ld a, [hl]                                    ; $55e2: $7e
    db $10                                        ; $55e3: $10
    ld a, a                                       ; $55e4: $7f
    inc bc                                        ; $55e5: $03
    ld b, c                                       ; $55e6: $41
    rst $38                                       ; $55e7: $ff
    ld a, a                                       ; $55e8: $7f
    dec de                                        ; $55e9: $1b
    nop                                           ; $55ea: $00
    ccf                                           ; $55eb: $3f
    ld [bc], a                                    ; $55ec: $02
    add b                                         ; $55ed: $80
    ld a, l                                       ; $55ee: $7d
    xor b                                         ; $55ef: $a8
    stop                                          ; $55f0: $10 $00
    nop                                           ; $55f2: $00
    xor l                                         ; $55f3: $ad
    dec [hl]                                      ; $55f4: $35
    sub h                                         ; $55f5: $94
    ld c, [hl]                                    ; $55f6: $4e
    db $fd                                        ; $55f7: $fd
    nop                                           ; $55f8: $00
    rst $38                                       ; $55f9: $ff
    db $e4                                        ; $55fa: $e4
    ld a, [hl]                                    ; $55fb: $7e
    inc a                                         ; $55fc: $3c
    rst $38                                       ; $55fd: $ff
    rst $20                                       ; $55fe: $e7
    jp $ffbd                                      ; $55ff: $c3 $bd $ff


    nop                                           ; $5602: $00
    rst $28                                       ; $5603: $ef
    ld b, $07                                     ; $5604: $06 $07
    ld c, $05                                     ; $5606: $0e $05
    inc c                                         ; $5608: $0c
    rrca                                          ; $5609: $0f
    rst $38                                       ; $560a: $ff
    inc c                                         ; $560b: $0c
    ld a, [bc]                                    ; $560c: $0a
    inc c                                         ; $560d: $0c
    dec bc                                        ; $560e: $0b
    inc c                                         ; $560f: $0c
    rrca                                          ; $5610: $0f
    ld c, $05                                     ; $5611: $0e $05
    rst $38                                       ; $5613: $ff
    ld b, $07                                     ; $5614: $06 $07
    ld b, $03                                     ; $5616: $06 $03
    ld b, $05                                     ; $5618: $06 $05
    inc c                                         ; $561a: $0c
    rlca                                          ; $561b: $07
    rst $38                                       ; $561c: $ff
    inc c                                         ; $561d: $0c
    dec bc                                        ; $561e: $0b
    ld a, $1d                                     ; $561f: $3e $1d
    ld hl, sp+$6f                                 ; $5621: $f8 $6f
    ret z                                         ; $5623: $c8

    or a                                          ; $5624: $b7
    ei                                            ; $5625: $fb
    nop                                           ; $5626: $00
    cp $d0                                        ; $5627: $fe $d0
    push hl                                       ; $5629: $e5
    nop                                           ; $562a: $00
    nop                                           ; $562b: $00
    ld bc, $0300                                  ; $562c: $01 $00 $03
    rst $38                                       ; $562f: $ff
    ld bc, $0207                                  ; $5630: $01 $07 $02
    inc d                                         ; $5633: $14
    db $eb                                        ; $5634: $eb
    xor d                                         ; $5635: $aa
    ld d, l                                       ; $5636: $55
    ld e, l                                       ; $5637: $5d
    rst $28                                       ; $5638: $ef
    and d                                         ; $5639: $a2
    cp $01                                        ; $563a: $fe $01
    rst $38                                       ; $563c: $ff
    ret nz                                        ; $563d: $c0

    db $e4                                        ; $563e: $e4
    ld e, [hl]                                    ; $563f: $5e
    and a                                         ; $5640: $a7
    ld a, $ff                                     ; $5641: $3e $ff
    push bc                                       ; $5643: $c5
    ld e, h                                       ; $5644: $5c
    xor a                                         ; $5645: $af
    cp h                                          ; $5646: $bc
    ld c, d                                       ; $5647: $4a
    ld a, h                                       ; $5648: $7c
    adc e                                         ; $5649: $8b
    cp h                                          ; $564a: $bc
    rst $38                                       ; $564b: $ff
    ld c, a                                       ; $564c: $4f
    ld e, [hl]                                    ; $564d: $5e
    and l                                         ; $564e: $a5
    ld l, $d7                                     ; $564f: $2e $d7
    ld l, $d3                                     ; $5651: $2e $d3
    ld e, [hl]                                    ; $5653: $5e
    cp a                                          ; $5654: $bf
    and l                                         ; $5655: $a5
    cp h                                          ; $5656: $bc
    ld b, a                                       ; $5657: $47
    ld a, h                                       ; $5658: $7c
    adc e                                         ; $5659: $8b
    cp $c0                                        ; $565a: $fe $c0
    push hl                                       ; $565c: $e5
    rst $30                                       ; $565d: $f7
    rst $38                                       ; $565e: $ff
    ld bc, $0abe                                  ; $565f: $01 $be $0a
    push af                                       ; $5662: $f5
    dec d                                         ; $5663: $15
    ld [$542b], a                                 ; $5664: $ea $2b $54
    rst $38                                       ; $5667: $ff
    rla                                           ; $5668: $17
    add sp, $2f                                   ; $5669: $e8 $2f
    pop de                                        ; $566b: $d1
    ld e, a                                       ; $566c: $5f
    and d                                         ; $566d: $a2
    nop                                           ; $566e: $00
    rst $38                                       ; $566f: $ff
    cp e                                          ; $5670: $bb
    nop                                           ; $5671: $00
    db $dd                                        ; $5672: $dd
    db $fc                                        ; $5673: $fc
    ldh [$a7], a                                  ; $5674: $e0 $a7
    nop                                           ; $5676: $00
    push hl                                       ; $5677: $e5
    or $e0                                        ; $5678: $f6 $e0
    cp e                                          ; $567a: $bb
    rst $38                                       ; $567b: $ff
    nop                                           ; $567c: $00
    rst $38                                       ; $567d: $ff
    ld d, l                                       ; $567e: $55
    xor d                                         ; $567f: $aa
    xor d                                         ; $5680: $aa
    ld d, l                                       ; $5681: $55
    ld b, b                                       ; $5682: $40
    cp a                                          ; $5683: $bf
    db $eb                                        ; $5684: $eb
    nop                                           ; $5685: $00
    rst $30                                       ; $5686: $f7
    add sp, -$20                                  ; $5687: $e8 $e0
    cp l                                          ; $5689: $bd
    ld a, [$40e1]                                 ; $568a: $fa $e1 $40
    cp a                                          ; $568d: $bf
    and b                                         ; $568e: $a0
    ld a, a                                       ; $568f: $7f
    ld e, e                                       ; $5690: $5b
    ld b, b                                       ; $5691: $40
    cp a                                          ; $5692: $bf
    add b                                         ; $5693: $80
    ld a, a                                       ; $5694: $7f
    ld b, b                                       ; $5695: $40
    xor l                                         ; $5696: $ad
    db $fc                                        ; $5697: $fc
    ldh [rIE], a                                  ; $5698: $e0 $ff
    cp e                                          ; $569a: $bb
    add b                                         ; $569b: $80
    ld a, a                                       ; $569c: $7f
    xor d                                         ; $569d: $aa
    ld d, l                                       ; $569e: $55
    ld d, l                                       ; $569f: $55
    xor d                                         ; $56a0: $aa
    add d                                         ; $56a1: $82
    db $dd                                        ; $56a2: $dd
    ld a, l                                       ; $56a3: $7d
    xor $e0                                       ; $56a4: $ee $e0
    ld [hl], a                                    ; $56a6: $77
    ld b, b                                       ; $56a7: $40
    cp l                                          ; $56a8: $bd
    and $e1                                       ; $56a9: $e6 $e1
    ld bc, $ff01                                  ; $56ab: $01 $01 $ff
    ld [bc], a                                    ; $56ae: $02
    inc bc                                        ; $56af: $03
    inc b                                         ; $56b0: $04
    rlca                                          ; $56b1: $07
    ld c, $0f                                     ; $56b2: $0e $0f
    db $10                                        ; $56b4: $10
    rra                                           ; $56b5: $1f
    rst $38                                       ; $56b6: $ff
    jr nz, jr_02b_56f8                            ; $56b7: $20 $3f

    ld a, l                                       ; $56b9: $7d
    ld a, a                                       ; $56ba: $7f
    add b                                         ; $56bb: $80
    rst $38                                       ; $56bc: $ff
    ldh [$e0], a                                  ; $56bd: $e0 $e0
    db $fd                                        ; $56bf: $fd
    ld h, b                                       ; $56c0: $60
    cp $e0                                        ; $56c1: $fe $e0
    rst $38                                       ; $56c3: $ff
    rst $38                                       ; $56c4: $ff
    ld a, a                                       ; $56c5: $7f
    rst $38                                       ; $56c6: $ff
    inc bc                                        ; $56c7: $03
    rst $38                                       ; $56c8: $ff
    db $fd                                        ; $56c9: $fd
    ld [hl], a                                    ; $56ca: $77
    db $fc                                        ; $56cb: $fc
    ldh [rIE], a                                  ; $56cc: $e0 $ff
    rst $38                                       ; $56ce: $ff
    ld [bc], a                                    ; $56cf: $02
    inc bc                                        ; $56d0: $03
    inc bc                                        ; $56d1: $03
    inc bc                                        ; $56d2: $03
    db $fd                                        ; $56d3: $fd
    ld [bc], a                                    ; $56d4: $02
    cp $e2                                        ; $56d5: $fe $e2
    ld c, $07                                     ; $56d7: $0e $07
    inc bc                                        ; $56d9: $03
    ld bc, $fefe                                  ; $56da: $01 $fe $fe
    rst $28                                       ; $56dd: $ef
    ret nz                                        ; $56de: $c0

    ret nz                                        ; $56df: $c0

    ld b, b                                       ; $56e0: $40
    ret nz                                        ; $56e1: $c0

    db $fc                                        ; $56e2: $fc
    pop hl                                        ; $56e3: $e1
    db $f4                                        ; $56e4: $f4
    ret nz                                        ; $56e5: $c0

    ld a, d                                       ; $56e6: $7a
    rst $38                                       ; $56e7: $ff
    ldh [$f4], a                                  ; $56e8: $e0 $f4
    add b                                         ; $56ea: $80
    ld a, l                                       ; $56eb: $7d
    add d                                         ; $56ec: $82
    rst $38                                       ; $56ed: $ff
    db $10                                        ; $56ee: $10
    rst $38                                       ; $56ef: $ff
    rst $38                                       ; $56f0: $ff
    xor d                                         ; $56f1: $aa
    rst $38                                       ; $56f2: $ff
    ld d, l                                       ; $56f3: $55
    rst $38                                       ; $56f4: $ff
    cp [hl]                                       ; $56f5: $be
    rst $38                                       ; $56f6: $ff
    rst $20                                       ; $56f7: $e7

jr_02b_56f8:
    rst $38                                       ; $56f8: $ff
    rst $38                                       ; $56f9: $ff
    add c                                         ; $56fa: $81
    db $eb                                        ; $56fb: $eb
    inc d                                         ; $56fc: $14
    ld a, a                                       ; $56fd: $7f
    xor [hl]                                      ; $56fe: $ae
    rst $38                                       ; $56ff: $ff
    inc d                                         ; $5700: $14
    rst $38                                       ; $5701: $ff
    rst $38                                       ; $5702: $ff
    inc l                                         ; $5703: $2c
    cp $59                                        ; $5704: $fe $59
    rst $38                                       ; $5706: $ff

jr_02b_5707:
    jr z, jr_02b_5707                             ; $5707: $28 $fe

    dec e                                         ; $5709: $1d
    ld a, a                                       ; $570a: $7f
    rst $30                                       ; $570b: $f7
    xor h                                         ; $570c: $ac
    rst $38                                       ; $570d: $ff
    ld d, $fe                                     ; $570e: $16 $fe
    ldh [$2c], a                                  ; $5710: $e0 $2c
    cp $5d                                        ; $5712: $fe $5d
    rst $38                                       ; $5714: $ff
    rst $38                                       ; $5715: $ff
    xor b                                         ; $5716: $a8
    cp $7d                                        ; $5717: $fe $7d
    rst $38                                       ; $5719: $ff
    add sp, -$02                                  ; $571a: $e8 $fe
    add c                                         ; $571c: $81
    push de                                       ; $571d: $d5
    rst $38                                       ; $571e: $ff
    ld a, [hl+]                                   ; $571f: $2a
    rst $38                                       ; $5720: $ff
    nop                                           ; $5721: $00
    rst $30                                       ; $5722: $f7
    ld [$40bf], sp                                ; $5723: $08 $bf $40
    rst $38                                       ; $5726: $ff
    rst $38                                       ; $5727: $ff
    ld [bc], a                                    ; $5728: $02
    rst $38                                       ; $5729: $ff
    dec b                                         ; $572a: $05
    ld a, a                                       ; $572b: $7f
    adc e                                         ; $572c: $8b
    rst $38                                       ; $572d: $ff
    rla                                           ; $572e: $17
    rst $38                                       ; $572f: $ff
    reti                                          ; $5730: $d9


    ld c, $40                                     ; $5731: $0e $40
    ldh [$fe], a                                  ; $5733: $e0 $fe
    ld [c], a                                     ; $5735: $e2
    ld a, [hl]                                    ; $5736: $7e
    cp l                                          ; $5737: $bd
    ret nz                                        ; $5738: $c0

    db $e3                                        ; $5739: $e3
    rlca                                          ; $573a: $07
    cp $ff                                        ; $573b: $fe $ff
    rrca                                          ; $573d: $0f
    db $f4                                        ; $573e: $f4
    rrca                                          ; $573f: $0f
    db $fc                                        ; $5740: $fc
    ld c, $f9                                     ; $5741: $0e $f9
    rrca                                          ; $5743: $0f
    ld hl, sp-$41                                 ; $5744: $f8 $bf
    ld c, $fd                                     ; $5746: $0e $fd
    rrca                                          ; $5748: $0f
    db $f4                                        ; $5749: $f4
    rlca                                          ; $574a: $07
    cp $f0                                        ; $574b: $fe $f0
    pop hl                                        ; $574d: $e1
    ld c, $c7                                     ; $574e: $0e $c7
    db $fd                                        ; $5750: $fd
    rra                                           ; $5751: $1f
    add sp, -$20                                  ; $5752: $e8 $e0
    ldh [$c0], a                                  ; $5754: $e0 $c0
    ld [c], a                                     ; $5756: $e2
    ret nc                                        ; $5757: $d0

    push hl                                       ; $5758: $e5
    nop                                           ; $5759: $00
    rst $38                                       ; $575a: $ff
    cp a                                          ; $575b: $bf
    ld bc, $03fe                                  ; $575c: $01 $fe $03
    db $fd                                        ; $575f: $fd
    rlca                                          ; $5760: $07
    ld a, [$e001]                                 ; $5761: $fa $01 $e0
    ld [hl+], a                                   ; $5764: $22
    xor $01                                       ; $5765: $ee $01
    ldh [$58], a                                  ; $5767: $e0 $58
    push hl                                       ; $5769: $e5
    ld a, [de]                                    ; $576a: $1a
    ld bc, $44e0                                  ; $576b: $01 $e0 $44
    rst $38                                       ; $576e: $ff
    nop                                           ; $576f: $00
    rst $38                                       ; $5770: $ff
    nop                                           ; $5771: $00
    ld d, l                                       ; $5772: $55
    nop                                           ; $5773: $00
    xor d                                         ; $5774: $aa
    nop                                           ; $5775: $00
    ld b, b                                       ; $5776: $40
    nop                                           ; $5777: $00
    ld [de], a                                    ; $5778: $12
    xor $fc                                       ; $5779: $ee $fc
    ldh [rP1], a                                  ; $577b: $e0 $00
    nop                                           ; $577d: $00
    ld [$c062], sp                                ; $577e: $08 $62 $c0
    ld b, b                                       ; $5781: $40
    nop                                           ; $5782: $00
    xor b                                         ; $5783: $a8
    cp $f0                                        ; $5784: $fe $f0
    ldh [$90], a                                  ; $5786: $e0 $90
    nop                                           ; $5788: $00
    ld b, d                                       ; $5789: $42
    nop                                           ; $578a: $00
    add b                                         ; $578b: $80
    nop                                           ; $578c: $00
    ld d, b                                       ; $578d: $50
    xor d                                         ; $578e: $aa
    db $fc                                        ; $578f: $fc
    ldh [$aa], a                                  ; $5790: $e0 $aa
    sbc $e0                                       ; $5792: $de $e0
    add d                                         ; $5794: $82
    or $e0                                        ; $5795: $f6 $e0
    add c                                         ; $5797: $81
    and $e2                                       ; $5798: $e6 $e2
    ld b, c                                       ; $579a: $41
    cp $50                                        ; $579b: $fe $50
    add $ab                                       ; $579d: $c6 $ab
    inc c                                         ; $579f: $0c
    ld e, a                                       ; $57a0: $5f
    ld c, $f5                                     ; $57a1: $0e $f5
    ld b, $5f                                     ; $57a3: $06 $5f
    add $be                                       ; $57a5: $c6 $be
    pop bc                                        ; $57a7: $c1
    xor b                                         ; $57a8: $a8
    ld d, a                                       ; $57a9: $57
    ret z                                         ; $57aa: $c8

    pop bc                                        ; $57ab: $c1
    and b                                         ; $57ac: $a0
    db $e3                                        ; $57ad: $e3
    xor [hl]                                      ; $57ae: $ae
    jp $ff00                                      ; $57af: $c3 $00 $ff


    pop bc                                        ; $57b2: $c1
    ld b, h                                       ; $57b3: $44
    and h                                         ; $57b4: $a4
    ret nz                                        ; $57b5: $c0

    ld d, h                                       ; $57b6: $54
    ld [c], a                                     ; $57b7: $e2
    rst $38                                       ; $57b8: $ff
    db $f4                                        ; $57b9: $f4
    nop                                           ; $57ba: $00
    pop bc                                        ; $57bb: $c1
    ld b, b                                       ; $57bc: $40
    ld [c], a                                     ; $57bd: $e2
    ld b, $0f                                     ; $57be: $06 $0f
    rst $38                                       ; $57c0: $ff
    inc b                                         ; $57c1: $04
    rrca                                          ; $57c2: $0f
    inc c                                         ; $57c3: $0c
    ld c, $09                                     ; $57c4: $0e $09
    ld a, a                                       ; $57c6: $7f

jr_02b_57c7:
    jr c, jr_02b_57c7                             ; $57c7: $38 $fe

    ei                                            ; $57c9: $fb
    db $fd                                        ; $57ca: $fd
    rst $38                                       ; $57cb: $ff
    nop                                           ; $57cc: $00
    ldh [rTMA], a                                 ; $57cd: $e0 $06
    rst $38                                       ; $57cf: $ff
    ld c, $f5                                     ; $57d0: $0e $f5
    inc c                                         ; $57d2: $0c
    rst $38                                       ; $57d3: $ff
    rst $38                                       ; $57d4: $ff
    inc c                                         ; $57d5: $0c
    ld a, [$bb7c]                                 ; $57d6: $fa $7c $bb
    db $fc                                        ; $57d9: $fc
    rst $28                                       ; $57da: $ef
    cp $df                                        ; $57db: $fe $df
    add l                                         ; $57dd: $85
    sbc $27                                       ; $57de: $de $27
    nop                                           ; $57e0: $00
    xor $58                                       ; $57e1: $ee $58
    jp $ee00                                      ; $57e3: $c3 $00 $ee


    rst $38                                       ; $57e6: $ff
    ld bc, $03ba                                  ; $57e7: $01 $ba $03
    db $ed                                        ; $57ea: $ed
    rlca                                          ; $57eb: $07
    cp d                                          ; $57ec: $ba
    nop                                           ; $57ed: $00
    ld [hl], a                                    ; $57ee: $77
    db $fc                                        ; $57ef: $fc
    ld a, $c3                                     ; $57f0: $3e $c3
    nop                                           ; $57f2: $00

jr_02b_57f3:
    and $5e                                       ; $57f3: $e6 $5e
    rrca                                          ; $57f5: $0f
    db $e4                                        ; $57f6: $e4
    ld c, $5d                                     ; $57f7: $0e $5d
    rrca                                          ; $57f9: $0f
    rst $38                                       ; $57fa: $ff
    cp b                                          ; $57fb: $b8
    ld c, $59                                     ; $57fc: $0e $59
    rrca                                          ; $57fe: $0f
    xor h                                         ; $57ff: $ac
    rrca                                          ; $5800: $0f
    ld d, h                                       ; $5801: $54
    rlca                                          ; $5802: $07
    rst $38                                       ; $5803: $ff
    xor [hl]                                      ; $5804: $ae
    rlca                                          ; $5805: $07
    ld d, $0f                                     ; $5806: $16 $0f
    and h                                         ; $5808: $a4
    ld c, $4d                                     ; $5809: $0e $4d
    rra                                           ; $580b: $1f
    push de                                       ; $580c: $d5
    xor b                                         ; $580d: $a8
    nop                                           ; $580e: $00
    and $11                                       ; $580f: $e6 $11
    jr nz, jr_02b_57f3                            ; $5811: $20 $e0

    ld b, h                                       ; $5813: $44
    inc e                                         ; $5814: $1c
    ldh [rNR11], a                                ; $5815: $e0 $11
    ld bc, $445f                                  ; $5817: $01 $5f $44
    inc bc                                        ; $581a: $03
    ld de, $4207                                  ; $581b: $11 $07 $42
    add b                                         ; $581e: $80
    and h                                         ; $581f: $a4

jr_02b_5820:
    jr jr_02b_5820                                ; $5820: $18 $fe

    ldh [$82], a                                  ; $5822: $e0 $82
    ld [hl], l                                    ; $5824: $75
    and e                                         ; $5825: $a3
    ld b, h                                       ; $5826: $44
    sbc $e0                                       ; $5827: $de $e0
    db $fc                                        ; $5829: $fc
    pop hl                                        ; $582a: $e1
    jp c, Jump_000_10e4                           ; $582b: $da $e4 $10

    ld [c], a                                     ; $582e: $e2
    inc c                                         ; $582f: $0c
    pop hl                                        ; $5830: $e1
    cp e                                          ; $5831: $bb
    ld a, [bc]                                    ; $5832: $0a
    and $c0                                       ; $5833: $e6 $c0
    xor $f8                                       ; $5835: $ee $f8
    ld [c], a                                     ; $5837: $e2
    xor $fc                                       ; $5838: $ee $fc
    ld [c], a                                     ; $583a: $e2
    ld a, d                                       ; $583b: $7a
    db $e4                                        ; $583c: $e4
    jr nc, @-$09                                  ; $583d: $30 $f5

    sbc h                                         ; $583f: $9c
    ldh [$f9], a                                  ; $5840: $e0 $f9
    nop                                           ; $5842: $00
    sub h                                         ; $5843: $94
    ldh [rHDMA1], a                               ; $5844: $e0 $51
    and a                                         ; $5846: $a7
    add hl, bc                                    ; $5847: $09
    ld [bc], a                                    ; $5848: $02
    nop                                           ; $5849: $00
    dec b                                         ; $584a: $05
    nop                                           ; $584b: $00
    di                                            ; $584c: $f3
    inc bc                                        ; $584d: $03
    ld [$c681], sp                                ; $584e: $08 $81 $c6
    add a                                         ; $5851: $87
    and b                                         ; $5852: $a0
    cp $00                                        ; $5853: $fe $00
    db $fc                                        ; $5855: $fc
    ld bc, $41fe                                  ; $5856: $01 $fe $41
    jp Jump_000_10cf                              ; $5859: $c3 $cf $10


    adc a                                         ; $585c: $8f
    jr c, jr_02b_5866                             ; $585d: $38 $07

    ld a, h                                       ; $585f: $7c
    inc bc                                        ; $5860: $03
    rst $20                                       ; $5861: $e7
    cp [hl]                                       ; $5862: $be
    dec d                                         ; $5863: $15
    ld a, a                                       ; $5864: $7f
    pop hl                                        ; $5865: $e1

jr_02b_5866:
    add sp, -$30                                  ; $5866: $e8 $d0
    call nz, Call_000_0a01                        ; $5868: $c4 $01 $0a
    rlca                                          ; $586b: $07
    rst $38                                       ; $586c: $ff
    jr z, jr_02b_58ce                             ; $586d: $28 $5f

    nop                                           ; $586f: $00
    scf                                           ; $5870: $37

jr_02b_5871:
    ld c, b                                       ; $5871: $48
    db $fc                                        ; $5872: $fc
    inc bc                                        ; $5873: $03
    cp b                                          ; $5874: $b8
    rst $38                                       ; $5875: $ff
    ld b, [hl]                                    ; $5876: $46
    ldh [$1f], a                                  ; $5877: $e0 $1f
    ccf                                           ; $5879: $3f
    ld b, b                                       ; $587a: $40
    ld a, [$7f05]                                 ; $587b: $fa $05 $7f
    rst $38                                       ; $587e: $ff
    add b                                         ; $587f: $80
    ldh [$1f], a                                  ; $5880: $e0 $1f
    nop                                           ; $5882: $00
    ld a, [$df00]                                 ; $5883: $fa $00 $df
    rrca                                          ; $5886: $0f
    rst $38                                       ; $5887: $ff
    rst $38                                       ; $5888: $ff
    ld a, [hl]                                    ; $5889: $7e
    rst $38                                       ; $588a: $ff
    ld b, $01                                     ; $588b: $06 $01
    dec d                                         ; $588d: $15
    ld a, [bc]                                    ; $588e: $0a
    rrca                                          ; $588f: $0f
    rst $38                                       ; $5890: $ff
    jr nz, @+$1c                                  ; $5891: $20 $1a

    dec b                                         ; $5893: $05
    ld e, $61                                     ; $5894: $1e $61
    inc a                                         ; $5896: $3c
    inc bc                                        ; $5897: $03
    jr z, @-$17                                   ; $5898: $28 $e7

    ld d, a                                       ; $589a: $57
    ld a, b                                       ; $589b: $78
    dec b                                         ; $589c: $05
    add sp, -$80                                  ; $589d: $e8 $80
    rst $38                                       ; $589f: $ff
    db $e4                                        ; $58a0: $e4
    rlca                                          ; $58a1: $07
    rlca                                          ; $58a2: $07
    dec b                                         ; $58a3: $05
    rst $38                                       ; $58a4: $ff
    rlca                                          ; $58a5: $07
    rlca                                          ; $58a6: $07
    inc b                                         ; $58a7: $04
    nop                                           ; $58a8: $00
    nop                                           ; $58a9: $00
    ret nz                                        ; $58aa: $c0

    ret nz                                        ; $58ab: $c0

    ldh a, [rIE]                                  ; $58ac: $f0 $ff
    jr nc, jr_02b_5871                            ; $58ae: $30 $c1

    pop bc                                        ; $58b0: $c1
    ld [bc], a                                    ; $58b1: $02
    ld [bc], a                                    ; $58b2: $02
    ld h, c                                       ; $58b3: $61
    ld h, c                                       ; $58b4: $61
    ldh [$f7], a                                  ; $58b5: $e0 $f7
    and b                                         ; $58b7: $a0
    ldh [rNR41], a                                ; $58b8: $e0 $20
    sub b                                         ; $58ba: $90
    add c                                         ; $58bb: $81
    inc [hl]                                      ; $58bc: $34
    inc [hl]                                      ; $58bd: $34
    add c                                         ; $58be: $81
    cp l                                          ; $58bf: $bd
    rst $38                                       ; $58c0: $ff
    nop                                           ; $58c1: $00
    rst $38                                       ; $58c2: $ff
    add b                                         ; $58c3: $80
    cp a                                          ; $58c4: $bf
    ld a, h                                       ; $58c5: $7c
    ld a, l                                       ; $58c6: $7d
    inc bc                                        ; $58c7: $03
    inc bc                                        ; $58c8: $03
    cp $80                                        ; $58c9: $fe $80

jr_02b_58cb:
    add e                                         ; $58cb: $83
    ld a, h                                       ; $58cc: $7c

jr_02b_58cd:
    ld a, h                                       ; $58cd: $7c

jr_02b_58ce:
    ld [bc], a                                    ; $58ce: $02
    ld a, [$f404]                                 ; $58cf: $fa $04 $f4
    jr c, jr_02b_58cb                             ; $58d2: $38 $f7

    cp b                                          ; $58d4: $b8
    ret nz                                        ; $58d5: $c0

    ret nz                                        ; $58d6: $c0

    ld [hl], b                                    ; $58d7: $70
    add l                                         ; $58d8: $85
    ld e, b                                       ; $58d9: $58
    ld e, b                                       ; $58da: $58
    add h                                         ; $58db: $84
    or h                                          ; $58dc: $b4
    ei                                            ; $58dd: $fb
    ld a, b                                       ; $58de: $78
    ld a, b                                       ; $58df: $78
    jr nc, jr_02b_58cd                            ; $58e0: $30 $eb

    rla                                           ; $58e2: $17
    rla                                           ; $58e3: $17
    ld b, b                                       ; $58e4: $40
    ld e, [hl]                                    ; $58e5: $5e
    rst $18                                       ; $58e6: $df
    rst $38                                       ; $58e7: $ff
    rst $18                                       ; $58e8: $df
    cp h                                          ; $58e9: $bc
    rst $28                                       ; $58ea: $ef
    db $fd                                        ; $58eb: $fd
    adc a                                         ; $58ec: $8f
    rst $38                                       ; $58ed: $ff
    rst $38                                       ; $58ee: $ff
    xor b                                         ; $58ef: $a8
    rst $38                                       ; $58f0: $ff
    rst $38                                       ; $58f1: $ff
    xor c                                         ; $58f2: $a9
    rst $38                                       ; $58f3: $ff
    adc d                                         ; $58f4: $8a
    cp $8a                                        ; $58f5: $fe $8a
    cp $fb                                        ; $58f7: $fe $fb
    rst $38                                       ; $58f9: $ff
    ei                                            ; $58fa: $fb
    scf                                           ; $58fb: $37
    db $fd                                        ; $58fc: $fd
    cp a                                          ; $58fd: $bf
    pop af                                        ; $58fe: $f1
    rst $38                                       ; $58ff: $ff
    rst $38                                       ; $5900: $ff
    dec d                                         ; $5901: $15
    rst $38                                       ; $5902: $ff
    rst $38                                       ; $5903: $ff
    sub l                                         ; $5904: $95
    rst $38                                       ; $5905: $ff
    ld d, c                                       ; $5906: $51
    ld a, a                                       ; $5907: $7f
    ld d, c                                       ; $5908: $51
    ld a, a                                       ; $5909: $7f
    ld hl, sp-$01                                 ; $590a: $f8 $ff
    nop                                           ; $590c: $00
    ldh a, [rSB]                                  ; $590d: $f0 $01
    ldh [rSC], a                                  ; $590f: $e0 $02
    ret nz                                        ; $5911: $c0

    add hl, bc                                    ; $5912: $09
    add b                                         ; $5913: $80
    cp $11                                        ; $5914: $fe $11
    pop hl                                        ; $5916: $e1
    ld b, e                                       ; $5917: $43
    nop                                           ; $5918: $00
    dec d                                         ; $5919: $15
    ld a, [bc]                                    ; $591a: $0a
    rst $38                                       ; $591b: $ff
    rlca                                          ; $591c: $07
    ld a, a                                       ; $591d: $7f
    db $fd                                        ; $591e: $fd
    dec hl                                        ; $591f: $2b
    ld [c], a                                     ; $5920: $e2
    ldh [rIF], a                                  ; $5921: $e0 $0f
    rst $38                                       ; $5923: $ff
    ld d, a                                       ; $5924: $57
    rst $38                                       ; $5925: $ff
    dec hl                                        ; $5926: $2b
    rst $38                                       ; $5927: $ff
    rst $38                                       ; $5928: $ff
    rra                                           ; $5929: $1f
    rst $38                                       ; $592a: $ff
    rst $38                                       ; $592b: $ff
    add b                                         ; $592c: $80
    ld a, a                                       ; $592d: $7f
    ret nz                                        ; $592e: $c0

    cp [hl]                                       ; $592f: $be
    ldh [$7f], a                                  ; $5930: $e0 $7f
    call c, $f8f1                                 ; $5932: $dc $f1 $f8
    ld hl, sp-$0c                                 ; $5935: $f8 $f4
    db $fd                                        ; $5937: $fd
    cp $1d                                        ; $5938: $fe $1d
    ret nz                                        ; $593a: $c0

    rst $38                                       ; $593b: $ff
    sbc a                                         ; $593c: $9f
    jr nz, jr_02b_595e                            ; $593d: $20 $1f

    ld [hl], b                                    ; $593f: $70
    rrca                                          ; $5940: $0f
    cp b                                          ; $5941: $b8
    rlca                                          ; $5942: $07
    ld a, h                                       ; $5943: $7c
    rra                                           ; $5944: $1f
    dec hl                                        ; $5945: $2b
    cp $15                                        ; $5946: $fe $15
    ld a, a                                       ; $5948: $7f
    ld c, $dc                                     ; $5949: $0e $dc
    ldh [rSB], a                                  ; $594b: $e0 $01
    ld [$e0d4], a                                 ; $594d: $ea $d4 $e0
    rst $30                                       ; $5950: $f7

jr_02b_5951:
    pop bc                                        ; $5951: $c1
    scf                                           ; $5952: $37
    add e                                         ; $5953: $83
    add sp, -$20                                  ; $5954: $e8 $e0
    rra                                           ; $5956: $1f
    rst $38                                       ; $5957: $ff
    ld [hl], $7f                                  ; $5958: $36 $7f
    rst $38                                       ; $595a: $ff
    inc l                                         ; $595b: $2c
    db $fc                                        ; $595c: $fc
    ld a, b                                       ; $595d: $78

jr_02b_595e:
    ld hl, sp-$10                                 ; $595e: $f8 $f0
    ld hl, sp-$11                                 ; $5960: $f8 $ef
    rst $38                                       ; $5962: $ff
    rst $38                                       ; $5963: $ff
    ld hl, sp-$04                                 ; $5964: $f8 $fc
    pop bc                                        ; $5966: $c1
    pop hl                                        ; $5967: $e1
    sub a                                         ; $5968: $97
    sub a                                         ; $5969: $97
    cpl                                           ; $596a: $2f
    cpl                                           ; $596b: $2f
    rst $38                                       ; $596c: $ff
    rra                                           ; $596d: $1f
    rra                                           ; $596e: $1f
    ld e, a                                       ; $596f: $5f
    ld e, a                                       ; $5970: $5f
    cp a                                          ; $5971: $bf
    cp a                                          ; $5972: $bf
    ld [hl], b                                    ; $5973: $70
    rrca                                          ; $5974: $0f
    rst $38                                       ; $5975: $ff
    ld d, c                                       ; $5976: $51
    and a                                         ; $5977: $a7
    and c                                         ; $5978: $a1
    ld e, e                                       ; $5979: $5b
    ld b, c                                       ; $597a: $41
    or a                                          ; $597b: $b7
    and d                                         ; $597c: $a2
    ld c, e                                       ; $597d: $4b
    cp a                                          ; $597e: $bf
    ld bc, $02f7                                  ; $597f: $01 $f7 $02
    db $eb                                        ; $5982: $eb
    nop                                           ; $5983: $00
    and e                                         ; $5984: $a3
    add b                                         ; $5985: $80
    ret                                           ; $5986: $c9


    ldh a, [rIE]                                  ; $5987: $f0 $ff
    pop af                                        ; $5989: $f1
    inc c                                         ; $598a: $0c
    db $ec                                        ; $598b: $ec
    nop                                           ; $598c: $00

jr_02b_598d:
    ld b, h                                       ; $598d: $44
    jr nc, jr_02b_59c1                            ; $598e: $30 $31

    ld b, l                                       ; $5990: $45
    ld a, a                                       ; $5991: $7f
    ld d, l                                       ; $5992: $55
    ld b, b                                       ; $5993: $40
    ld a, a                                       ; $5994: $7f
    jr nc, jr_02b_598d                            ; $5995: $30 $f6

    rrca                                          ; $5997: $0f
    ld e, a                                       ; $5998: $5f
    ld a, [bc]                                    ; $5999: $0a
    pop bc                                        ; $599a: $c1
    rst $38                                       ; $599b: $ff
    ld [bc], a                                    ; $599c: $02
    ld b, [hl]                                    ; $599d: $46
    jr jr_02b_59db                                ; $599e: $18 $3b

    jr nz, jr_02b_5951                            ; $59a0: $20 $af

    sbc b                                         ; $59a2: $98
    ei                                            ; $59a3: $fb
    rst $28                                       ; $59a4: $ef
    add a                                         ; $59a5: $87
    xor a                                         ; $59a6: $af
    nop                                           ; $59a7: $00
    call nz, $a1fa                                ; $59a8: $c4 $fa $a1
    ret nc                                        ; $59ab: $d0

    push de                                       ; $59ac: $d5
    dec b                                         ; $59ad: $05
    db $fd                                        ; $59ae: $fd
    push af                                       ; $59af: $f5
    cp h                                          ; $59b0: $bc
    add c                                         ; $59b1: $81
    ret nz                                        ; $59b2: $c0

    rst $18                                       ; $59b3: $df
    ccf                                           ; $59b4: $3f
    ld a, a                                       ; $59b5: $7f
    inc b                                         ; $59b6: $04
    xor l                                         ; $59b7: $ad
    ld a, a                                       ; $59b8: $7f
    inc bc                                        ; $59b9: $03
    inc de                                        ; $59ba: $13
    add b                                         ; $59bb: $80
    cp [hl]                                       ; $59bc: $be
    add sp, -$15                                  ; $59bd: $e8 $eb
    ld [bc], a                                    ; $59bf: $02
    ld c, d                                       ; $59c0: $4a

jr_02b_59c1:
    and b                                         ; $59c1: $a0
    cp $ee                                        ; $59c2: $fe $ee
    ld [c], a                                     ; $59c4: $e2
    ccf                                           ; $59c5: $3f
    nop                                           ; $59c6: $00
    ld h, b                                       ; $59c7: $60
    xor d                                         ; $59c8: $aa
    xor e                                         ; $59c9: $ab
    nop                                           ; $59ca: $00
    rst $38                                       ; $59cb: $ff
    db $db                                        ; $59cc: $db
    ret nc                                        ; $59cd: $d0

    jp c, $e1dc                                   ; $59ce: $da $dc $e1

    ccf                                           ; $59d1: $3f
    cp a                                          ; $59d2: $bf
    ld [c], a                                     ; $59d3: $e2
    ret nz                                        ; $59d4: $c0

    ld [bc], a                                    ; $59d5: $02
    ld d, l                                       ; $59d6: $55
    ld a, a                                       ; $59d7: $7f
    push de                                       ; $59d8: $d5
    nop                                           ; $59d9: $00
    rst $38                                       ; $59da: $ff

jr_02b_59db:
    dec bc                                        ; $59db: $0b
    ld e, e                                       ; $59dc: $5b
    and b                                         ; $59dd: $a0
    xor a                                         ; $59de: $af
    ret nz                                        ; $59df: $c0

    pop bc                                        ; $59e0: $c1
    rst $38                                       ; $59e1: $ff
    ld a, a                                       ; $59e2: $7f
    ld a, a                                       ; $59e3: $7f
    nop                                           ; $59e4: $00
    add b                                         ; $59e5: $80
    ld [bc], a                                    ; $59e6: $02
    ld a, e                                       ; $59e7: $7b
    ld e, a                                       ; $59e8: $5f
    ld e, a                                       ; $59e9: $5f
    db $fd                                        ; $59ea: $fd
    nop                                           ; $59eb: $00
    ld c, d                                       ; $59ec: $4a
    jp nz, $ef0f                                  ; $59ed: $c2 $0f $ef

    ld a, [c]                                     ; $59f0: $f2
    ld a, [c]                                     ; $59f1: $f2
    inc c                                         ; $59f2: $0c
    dec l                                         ; $59f3: $2d
    rst $38                                       ; $59f4: $ff
    nop                                           ; $59f5: $00
    xor e                                         ; $59f6: $ab
    nop                                           ; $59f7: $00
    ld e, a                                       ; $59f8: $5f
    ld [bc], a                                    ; $59f9: $02
    rst $38                                       ; $59fa: $ff
    ld de, $7dff                                  ; $59fb: $11 $ff $7d
    ld a, [bc]                                    ; $59fe: $0a
    dec l                                         ; $59ff: $2d
    add b                                         ; $5a00: $80
    xor d                                         ; $5a01: $aa
    rst $38                                       ; $5a02: $ff
    nop                                           ; $5a03: $00
    ld d, l                                       ; $5a04: $55
    xor a                                         ; $5a05: $af
    ld [$07e0], sp                                ; $5a06: $08 $e0 $07
    cp a                                          ; $5a09: $bf
    rst $38                                       ; $5a0a: $ff
    ld e, a                                       ; $5a0b: $5f
    ld hl, sp+$60                                 ; $5a0c: $f8 $60
    ldh a, [$e3]                                  ; $5a0e: $f0 $e3
    rst $28                                       ; $5a10: $ef
    ld h, b                                       ; $5a11: $60
    db $fd                                        ; $5a12: $fd
    db $e4                                        ; $5a13: $e4
    ldh [$e3], a                                  ; $5a14: $e0 $e3
    rst $38                                       ; $5a16: $ff
    xor e                                         ; $5a17: $ab
    rst $38                                       ; $5a18: $ff
    rst $18                                       ; $5a19: $df
    rst $38                                       ; $5a1a: $ff
    rst $28                                       ; $5a1b: $ef
    rst $38                                       ; $5a1c: $ff
    rst $30                                       ; $5a1d: $f7
    rst $38                                       ; $5a1e: $ff
    db $fd                                        ; $5a1f: $fd
    ei                                            ; $5a20: $fb
    ldh [$e5], a                                  ; $5a21: $e0 $e5
    ldh [$df], a                                  ; $5a23: $e0 $df
    ldh a, [rIE]                                  ; $5a25: $f0 $ff
    ld hl, sp-$01                                 ; $5a27: $f8 $ff

jr_02b_5a29:
    rst $30                                       ; $5a29: $f7
    db $fc                                        ; $5a2a: $fc

jr_02b_5a2b:
    rst $38                                       ; $5a2b: $ff
    cp $c0                                        ; $5a2c: $fe $c0
    db $e3                                        ; $5a2e: $e3
    or c                                          ; $5a2f: $b1
    pop af                                        ; $5a30: $f1
    ldh [$e0], a                                  ; $5a31: $e0 $e0
    rst $38                                       ; $5a33: $ff
    ret nz                                        ; $5a34: $c0

jr_02b_5a35:
    ldh [rLCDC], a                                ; $5a35: $e0 $40
    ret nz                                        ; $5a37: $c0

    add c                                         ; $5a38: $81
    pop bc                                        ; $5a39: $c1
    nop                                           ; $5a3a: $00
    ret nz                                        ; $5a3b: $c0

Call_02b_5a3c:
Jump_02b_5a3c:
    rst $38                                       ; $5a3c: $ff
    add c                                         ; $5a3d: $81
    add c                                         ; $5a3e: $81
    ld [bc], a                                    ; $5a3f: $02
    add d                                         ; $5a40: $82
    ld e, a                                       ; $5a41: $5f
    ld e, a                                       ; $5a42: $5f
    ccf                                           ; $5a43: $3f
    ccf                                           ; $5a44: $3f
    rst $38                                       ; $5a45: $ff
    ld d, a                                       ; $5a46: $57
    ld d, a                                       ; $5a47: $57
    xor a                                         ; $5a48: $af
    xor a                                         ; $5a49: $af
    ld d, l                                       ; $5a4a: $55
    ld d, l                                       ; $5a4b: $55
    adc d                                         ; $5a4c: $8a
    adc d                                         ; $5a4d: $8a
    rst $38                                       ; $5a4e: $ff
    ld de, $0211                                  ; $5a4f: $11 $11 $02
    ld [bc], a                                    ; $5a52: $02
    nop                                           ; $5a53: $00
    ld b, l                                       ; $5a54: $45
    ld bc, $ff91                                  ; $5a55: $01 $91 $ff
    pop bc                                        ; $5a58: $c1
    rst $20                                       ; $5a59: $e7
    ld h, $ae                                     ; $5a5a: $26 $ae

Jump_02b_5a5c:
    ret z                                         ; $5a5c: $c8

    db $eb                                        ; $5a5d: $eb
    rlca                                          ; $5a5e: $07
    rst $18                                       ; $5a5f: $df
    cp $30                                        ; $5a60: $fe $30
    ld [c], a                                     ; $5a62: $e2
    call c, Call_02b_7706                         ; $5a63: $dc $06 $77
    ld bc, $06fd                                  ; $5a66: $01 $fd $06
    rst $30                                       ; $5a69: $f7
    rst $28                                       ; $5a6a: $ef
    jr c, jr_02b_5a2b                             ; $5a6b: $38 $be

    ret nz                                        ; $5a6d: $c0

    db $e4                                        ; $5a6e: $e4
    ld a, [de]                                    ; $5a6f: $1a
    and c                                         ; $5a70: $a1
    ldh [$eb], a                                  ; $5a71: $e0 $eb
    rra                                           ; $5a73: $1f
    db $fc                                        ; $5a74: $fc
    ld [$40e1], sp                                ; $5a75: $08 $e1 $40
    and [hl]                                      ; $5a78: $a6
    rrca                                          ; $5a79: $0f
    xor a                                         ; $5a7a: $af
    ldh a, [$f0]                                  ; $5a7b: $f0 $f0
    ld b, b                                       ; $5a7d: $40
    ret nc                                        ; $5a7e: $d0

    rst $30                                       ; $5a7f: $f7
    inc a                                         ; $5a80: $3c
    ld a, l                                       ; $5a81: $7d
    inc bc                                        ; $5a82: $03
    jr nc, jr_02b_5a29                            ; $5a83: $30 $a4

    ldh [$ea], a                                  ; $5a85: $e0 $ea
    rra                                           ; $5a87: $1f
    rra                                           ; $5a88: $1f
    cp a                                          ; $5a89: $bf
    inc b                                         ; $5a8a: $04
    ld d, $38                                     ; $5a8b: $16 $38
    cp l                                          ; $5a8d: $bd
    ret nz                                        ; $5a8e: $c0

    db $db                                        ; $5a8f: $db
    jr nz, jr_02b_5a35                            ; $5a90: $20 $a3

    ld [hl], b                                    ; $5a92: $70
    rst $30                                       ; $5a93: $f7
    ld a, d                                       ; $5a94: $7a
    add b                                         ; $5a95: $80
    push de                                       ; $5a96: $d5
    db $10                                        ; $5a97: $10
    xor d                                         ; $5a98: $aa
    rlca                                          ; $5a99: $07
    ld bc, $0305                                  ; $5a9a: $01 $05 $03
    di                                            ; $5a9d: $f3
    rlca                                          ; $5a9e: $07
    nop                                           ; $5a9f: $00
    cp $e7                                        ; $5aa0: $fe $e7
    sub h                                         ; $5aa2: $94
    ld h, c                                       ; $5aa3: $61
    rst $38                                       ; $5aa4: $ff
    push de                                       ; $5aa5: $d5
    rst $38                                       ; $5aa6: $ff
    ld a, [$377c]                                 ; $5aa7: $fa $7c $37
    db $e4                                        ; $5aaa: $e4
    add b                                         ; $5aab: $80
    ld h, c                                       ; $5aac: $61
    sub [hl]                                      ; $5aad: $96
    rst $38                                       ; $5aae: $ff
    ld bc, $a1ff                                  ; $5aaf: $01 $ff $a1
    dec a                                         ; $5ab2: $3d
    ld h, b                                       ; $5ab3: $60
    rst $38                                       ; $5ab4: $ff
    db $eb                                        ; $5ab5: $eb
    rst $38                                       ; $5ab6: $ff
    db $fd                                        ; $5ab7: $fd
    rst $38                                       ; $5ab8: $ff
    nop                                           ; $5ab9: $00
    ldh [rNR41], a                                ; $5aba: $e0 $20
    or b                                          ; $5abc: $b0
    ld a, a                                       ; $5abd: $7f
    ld [hl], b                                    ; $5abe: $70
    ldh a, [rNR23]                                ; $5abf: $f0 $18
    ldh a, [rNR32]                                ; $5ac1: $f0 $1c
    ldh a, [rNR30]                                ; $5ac3: $f0 $1a
    db $fc                                        ; $5ac5: $fc
    ld [c], a                                     ; $5ac6: $e2
    call c, $e8c6                                 ; $5ac7: $dc $c6 $e8
    cp d                                          ; $5aca: $ba
    ldh [rSB], a                                  ; $5acb: $e0 $01
    dec b                                         ; $5acd: $05
    rst $38                                       ; $5ace: $ff
    dec h                                         ; $5acf: $25
    ldh [$f5], a                                  ; $5ad0: $e0 $f5
    ei                                            ; $5ad2: $fb
    jp hl                                         ; $5ad3: $e9


    rst $30                                       ; $5ad4: $f7
    inc c                                         ; $5ad5: $0c
    ldh [$0a], a                                  ; $5ad6: $e0 $0a
    pop hl                                        ; $5ad8: $e1
    ld a, a                                       ; $5ad9: $7f
    ldh [rLCDC], a                                ; $5ada: $e0 $40
    ld a, a                                       ; $5adc: $7f
    rst $38                                       ; $5add: $ff
    sbc a                                         ; $5ade: $9f
    call z, $c2fe                                 ; $5adf: $cc $fe $c2
    db $ec                                        ; $5ae2: $ec
    pop hl                                        ; $5ae3: $e1
    cp $ff                                        ; $5ae4: $fe $ff
    ret z                                         ; $5ae6: $c8

Jump_02b_5ae7:
    push hl                                       ; $5ae7: $e5
    ret nz                                        ; $5ae8: $c0

    db $e3                                        ; $5ae9: $e3
    ld a, [hl-]                                   ; $5aea: $3a
    or b                                          ; $5aeb: $b0
    ld a, [bc]                                    ; $5aec: $0a
    add h                                         ; $5aed: $84
    pop hl                                        ; $5aee: $e1
    inc bc                                        ; $5aef: $03
    cp $e0                                        ; $5af0: $fe $e0
    ld bc, $25d7                                  ; $5af2: $01 $d7 $25
    db $10                                        ; $5af5: $10
    ld h, b                                       ; $5af6: $60
    add a                                         ; $5af7: $87
    db $e3                                        ; $5af8: $e3
    ld [hl], a                                    ; $5af9: $77
    ld h, c                                       ; $5afa: $61
    ld a, h                                       ; $5afb: $7c
    ld b, [hl]                                    ; $5afc: $46
    and b                                         ; $5afd: $a0
    sbc b                                         ; $5afe: $98
    ldh [$fc], a                                  ; $5aff: $e0 $fc
    ldh a, [$fa]                                  ; $5b01: $f0 $fa
    ldh a, [$fc]                                  ; $5b03: $f0 $fc
    ld c, c                                       ; $5b05: $49
    ld h, b                                       ; $5b06: $60
    xor c                                         ; $5b07: $a9
    ld d, h                                       ; $5b08: $54
    ldh [$e4], a                                  ; $5b09: $e0 $e4
    ld h, b                                       ; $5b0b: $60
    pop hl                                        ; $5b0c: $e1
    ei                                            ; $5b0d: $fb
    sbc b                                         ; $5b0e: $98
    ld [c], a                                     ; $5b0f: $e2
    rst $20                                       ; $5b10: $e7
    ld h, b                                       ; $5b11: $60
    add sp, $75                                   ; $5b12: $e8 $75
    cp a                                          ; $5b14: $bf
    rst $38                                       ; $5b15: $ff
    sbc e                                         ; $5b16: $9b
    rst $38                                       ; $5b17: $ff
    db $ed                                        ; $5b18: $ed
    rst $38                                       ; $5b19: $ff
    rst $18                                       ; $5b1a: $df
    add a                                         ; $5b1b: $87
    ldh [$cf], a                                  ; $5b1c: $e0 $cf
    rst $38                                       ; $5b1e: $ff
    rst $30                                       ; $5b1f: $f7
    pop hl                                        ; $5b20: $e1
    rst $38                                       ; $5b21: $ff
    ret nc                                        ; $5b22: $d0

    rst $38                                       ; $5b23: $ff
    ld [$f5ff], a                                 ; $5b24: $ea $ff $f5
    ld d, h                                       ; $5b27: $54
    ld e, d                                       ; $5b28: $5a
    ld b, b                                       ; $5b29: $40
    adc b                                         ; $5b2a: $88
    db $e3                                        ; $5b2b: $e3
    sub a                                         ; $5b2c: $97
    ld d, b                                       ; $5b2d: $50
    ld b, b                                       ; $5b2e: $40
    or a                                          ; $5b2f: $b7
    ld c, h                                       ; $5b30: $4c
    ld b, b                                       ; $5b31: $40
    cp $b2                                        ; $5b32: $fe $b2
    ld b, d                                       ; $5b34: $42
    rst $18                                       ; $5b35: $df
    ld a, e                                       ; $5b36: $7b
    db $fc                                        ; $5b37: $fc
    db $eb                                        ; $5b38: $eb
    rst $30                                       ; $5b39: $f7
    rst $08                                       ; $5b3a: $cf
    sub $e0                                       ; $5b3b: $d6 $e0
    ei                                            ; $5b3d: $fb
    rst $20                                       ; $5b3e: $e7
    cp e                                          ; $5b3f: $bb
    call $a0f0                                    ; $5b40: $cd $f0 $a0
    ld b, c                                       ; $5b43: $41
    ld a, $ff                                     ; $5b44: $3e $ff
    call $e0d4                                    ; $5b46: $cd $d4 $e0
    push af                                       ; $5b49: $f5
    rst $38                                       ; $5b4a: $ff
    rst $38                                       ; $5b4b: $ff
    rst $10                                       ; $5b4c: $d7
    rst $28                                       ; $5b4d: $ef
    sub l                                         ; $5b4e: $95
    ld a, a                                       ; $5b4f: $7f
    push de                                       ; $5b50: $d5
    ld [$ffc8], a                                 ; $5b51: $ea $c8 $ff
    rst $30                                       ; $5b54: $f7
    sub h                                         ; $5b55: $94
    db $eb                                        ; $5b56: $eb
    jp hl                                         ; $5b57: $e9


    rst $10                                       ; $5b58: $d7
    sbc h                                         ; $5b59: $9c
    db $e3                                        ; $5b5a: $e3
    ret                                           ; $5b5b: $c9


    dec hl                                        ; $5b5c: $2b
    rst $30                                       ; $5b5d: $f7
    ld [$401a], a                                 ; $5b5e: $ea $1a $40
    daa                                           ; $5b61: $27
    jr nz, @-$3c                                  ; $5b62: $20 $c2

    ld a, e                                       ; $5b64: $7b
    ld b, b                                       ; $5b65: $40
    ret nz                                        ; $5b66: $c0

    inc e                                         ; $5b67: $1c

jr_02b_5b68:
    pop bc                                        ; $5b68: $c1
    cp d                                          ; $5b69: $ba
    ld b, b                                       ; $5b6a: $40
    pop hl                                        ; $5b6b: $e1
    sbc d                                         ; $5b6c: $9a
    inc b                                         ; $5b6d: $04
    ldh [$9a], a                                  ; $5b6e: $e0 $9a
    ldh a, [$5c]                                  ; $5b70: $f0 $5c
    ld hl, sp-$1e                                 ; $5b72: $f8 $e2
    ld a, [hl-]                                   ; $5b74: $3a
    rst $08                                       ; $5b75: $cf
    or b                                          ; $5b76: $b0
    ld d, l                                       ; $5b77: $55
    rst $38                                       ; $5b78: $ff
    ld [$ea50], sp                                ; $5b79: $08 $50 $ea
    nop                                           ; $5b7c: $00
    ld l, b                                       ; $5b7d: $68
    rlca                                          ; $5b7e: $07
    inc bc                                        ; $5b7f: $03
    rst $30                                       ; $5b80: $f7
    rra                                           ; $5b81: $1f
    rrca                                          ; $5b82: $0f
    ccf                                           ; $5b83: $3f
    jr nc, @+$29                                  ; $5b84: $30 $27

    jr nz, jr_02b_5b68                            ; $5b86: $20 $e0

    ret z                                         ; $5b88: $c8

    ld hl, sp+$7f                                 ; $5b89: $f8 $7f
    db $f4                                        ; $5b8b: $f4
    db $fc                                        ; $5b8c: $fc
    dec sp                                        ; $5b8d: $3b
    rst $20                                       ; $5b8e: $e7
    dec c                                         ; $5b8f: $0d
    ldh a, [rHDMA5]                               ; $5b90: $f0 $55
    sbc h                                         ; $5b92: $9c
    ldh [$fd], a                                  ; $5b93: $e0 $fd
    call nc, $e09c                                ; $5b95: $d4 $9c $e0
    sub h                                         ; $5b98: $94
    db $eb                                        ; $5b99: $eb
    ld sp, hl                                     ; $5b9a: $f9
    rst $00                                       ; $5b9b: $c7
    call nc, $97ef                                ; $5b9c: $d4 $ef $97
    sub h                                         ; $5b9f: $94
    ld a, a                                       ; $5ba0: $7f
    ld h, $c4                                     ; $5ba1: $26 $c4
    add b                                         ; $5ba3: $80
    cp e                                          ; $5ba4: $bb
    sbc h                                         ; $5ba5: $9c
    db $e4                                        ; $5ba6: $e4
    and b                                         ; $5ba7: $a0
    res 3, d                                      ; $5ba8: $cb $9a
    ld a, [c]                                     ; $5baa: $f2
    and b                                         ; $5bab: $a0
    add $01                                       ; $5bac: $c6 $01
    cp $e0                                        ; $5bae: $fe $e0
    ld d, h                                       ; $5bb0: $54
    pop bc                                        ; $5bb1: $c1
    sub h                                         ; $5bb2: $94
    db $eb                                        ; $5bb3: $eb
    cp c                                          ; $5bb4: $b9
    rst $00                                       ; $5bb5: $c7
    rst $38                                       ; $5bb6: $ff
    db $fc                                        ; $5bb7: $fc
    add e                                         ; $5bb8: $83
    ld a, [hl+]                                   ; $5bb9: $2a
    push bc                                       ; $5bba: $c5
    ld a, h                                       ; $5bbb: $7c
    add e                                         ; $5bbc: $83
    ld a, [hl-]                                   ; $5bbd: $3a
    push bc                                       ; $5bbe: $c5
    ld [hl], a                                    ; $5bbf: $77
    ld d, h                                       ; $5bc0: $54
    xor e                                         ; $5bc1: $ab
    ld a, a                                       ; $5bc2: $7f
    ld l, [hl]                                    ; $5bc3: $6e
    ret nz                                        ; $5bc4: $c0

    ld a, l                                       ; $5bc5: $7d
    rst $38                                       ; $5bc6: $ff
    xor a                                         ; $5bc7: $af
    ret c                                         ; $5bc8: $d8

    ld h, b                                       ; $5bc9: $60
    or a                                          ; $5bca: $b7
    cp a                                          ; $5bcb: $bf
    rst $38                                       ; $5bcc: $ff
    ld d, [hl]                                    ; $5bcd: $56
    ld a, b                                       ; $5bce: $78
    and b                                         ; $5bcf: $a0
    rst $38                                       ; $5bd0: $ff
    rst $38                                       ; $5bd1: $ff
    ld l, b                                       ; $5bd2: $68
    pop hl                                        ; $5bd3: $e1
    call c, $f09b                                 ; $5bd4: $dc $9b $f0
    cp d                                          ; $5bd7: $ba
    db $fc                                        ; $5bd8: $fc
    db $e4                                        ; $5bd9: $e4
    ld a, d                                       ; $5bda: $7a
    or b                                          ; $5bdb: $b0
    ld a, a                                       ; $5bdc: $7f
    ld h, c                                       ; $5bdd: $61
    or b                                          ; $5bde: $b0
    ret                                           ; $5bdf: $c9


    ld e, l                                       ; $5be0: $5d
    set 7, a                                      ; $5be1: $cb $ff
    ld a, [hl+]                                   ; $5be3: $2a
    and b                                         ; $5be4: $a0
    call z, $a09a                                 ; $5be5: $cc $9a $a0
    bit 1, a                                      ; $5be8: $cb $4f
    ld bc, $050f                                  ; $5bea: $01 $0f $05
    rst $38                                       ; $5bed: $ff
    jr c, jr_02b_5c2d                             ; $5bee: $38 $3d

    ld [hl+], a                                   ; $5bf0: $22
    ld [$1437], sp                                ; $5bf1: $08 $37 $14
    dec hl                                        ; $5bf4: $2b
    ld c, c                                       ; $5bf5: $49
    db $fd                                        ; $5bf6: $fd
    ld [hl], a                                    ; $5bf7: $77
    ld b, b                                       ; $5bf8: $40
    ld bc, $f0b0                                  ; $5bf9: $01 $b0 $f0
    xor h                                         ; $5bfc: $ac
    ld e, h                                       ; $5bfd: $5c
    inc h                                         ; $5bfe: $24
    db $fc                                        ; $5bff: $fc
    ccf                                           ; $5c00: $3f
    ld d, h                                       ; $5c01: $54
    db $fc                                        ; $5c02: $fc
    or h                                          ; $5c03: $b4
    db $fc                                        ; $5c04: $fc
    halt                                          ; $5c05: $76
    cp $d0                                        ; $5c06: $fe $d0
    xor c                                         ; $5c08: $a9
    ld l, h                                       ; $5c09: $6c
    pop hl                                        ; $5c0a: $e1
    rst $18                                       ; $5c0b: $df
    ld d, h                                       ; $5c0c: $54
    db $eb                                        ; $5c0d: $eb
    ld l, c                                       ; $5c0e: $69
    rst $10                                       ; $5c0f: $d7
    inc d                                         ; $5c10: $14
    ld l, h                                       ; $5c11: $6c
    ldh [$d4], a                                  ; $5c12: $e0 $d4
    xor e                                         ; $5c14: $ab
    rst $38                                       ; $5c15: $ff
    ld a, [hl-]                                   ; $5c16: $3a
    push bc                                       ; $5c17: $c5
    ld l, h                                       ; $5c18: $6c
    add e                                         ; $5c19: $83
    add $01                                       ; $5c1a: $c6 $01
    ld a, [$1dff]                                 ; $5c1c: $fa $ff $1d
    ld e, d                                       ; $5c1f: $5a
    call nz, Call_02b_7fa0                        ; $5c20: $c4 $a0 $7f
    rst $38                                       ; $5c23: $ff
    xor l                                         ; $5c24: $ad
    ld l, b                                       ; $5c25: $68
    ldh [$6c], a                                  ; $5c26: $e0 $6c
    pop hl                                        ; $5c28: $e1
    ret nc                                        ; $5c29: $d0

    and a                                         ; $5c2a: $a7
    add $68                                       ; $5c2b: $c6 $68

jr_02b_5c2d:
    pop hl                                        ; $5c2d: $e1
    sbc d                                         ; $5c2e: $9a
    ldh a, [$38]                                  ; $5c2f: $f0 $38
    pop hl                                        ; $5c31: $e1
    db $fc                                        ; $5c32: $fc
    db $e3                                        ; $5c33: $e3
    ret nc                                        ; $5c34: $d0

    and e                                         ; $5c35: $a3
    ld l, l                                       ; $5c36: $6d
    add d                                         ; $5c37: $82
    rst $38                                       ; $5c38: $ff
    cp $01                                        ; $5c39: $fe $01
    ld a, h                                       ; $5c3b: $7c
    add e                                         ; $5c3c: $83
    xor d                                         ; $5c3d: $aa
    ld d, l                                       ; $5c3e: $55
    ld d, h                                       ; $5c3f: $54
    xor e                                         ; $5c40: $ab
    ld e, a                                       ; $5c41: $5f
    ld bc, $aaff                                  ; $5c42: $01 $ff $aa
    rst $18                                       ; $5c45: $df
    ld a, a                                       ; $5c46: $7f
    ld [hl], h                                    ; $5c47: $74
    ret nz                                        ; $5c48: $c0

    ld d, a                                       ; $5c49: $57
    push de                                       ; $5c4a: $d5
    nop                                           ; $5c4b: $00
    sub a                                         ; $5c4c: $97
    ld a, a                                       ; $5c4d: $7f
    rst $38                                       ; $5c4e: $ff
    xor [hl]                                      ; $5c4f: $ae
    sbc [hl]                                      ; $5c50: $9e
    nop                                           ; $5c51: $00
    cp l                                          ; $5c52: $bd
    and d                                         ; $5c53: $a2
    nop                                           ; $5c54: $00
    inc [hl]                                      ; $5c55: $34
    db $e3                                        ; $5c56: $e3
    ld a, [$2c2e]                                 ; $5c57: $fa $2e $2c
    db $e4                                        ; $5c5a: $e4
    ld a, [$05b0]                                 ; $5c5b: $fa $b0 $05
    ldh [$ac], a                                  ; $5c5e: $e0 $ac
    ld a, l                                       ; $5c60: $7d
    and e                                         ; $5c61: $a3
    nop                                           ; $5c62: $00
    add b                                         ; $5c63: $80
    jp z, Jump_000_07ff                           ; $5c64: $ca $ff $07

    dec b                                         ; $5c67: $05
    jr jr_02b_5c78                                ; $5c68: $18 $0e

    ld sp, $2b34                                  ; $5c6a: $31 $34 $2b
    add hl, bc                                    ; $5c6d: $09
    rst $38                                       ; $5c6e: $ff
    scf                                           ; $5c6f: $37
    ld d, h                                       ; $5c70: $54
    ld l, e                                       ; $5c71: $6b
    ld l, c                                       ; $5c72: $69
    ld d, a                                       ; $5c73: $57
    inc d                                         ; $5c74: $14

jr_02b_5c75:
    ld l, e                                       ; $5c75: $6b
    ldh [rIE], a                                  ; $5c76: $e0 $ff

jr_02b_5c78:
    ldh [$b8], a                                  ; $5c78: $e0 $b8
    ld a, b                                       ; $5c7a: $78
    inc l                                         ; $5c7b: $2c
    call c, $fca4                                 ; $5c7c: $dc $a4 $fc
    ld [hl], h                                    ; $5c7f: $74
    ccf                                           ; $5c80: $3f
    db $fc                                        ; $5c81: $fc
    or $fe                                        ; $5c82: $f6 $fe
    ld e, d                                       ; $5c84: $5a
    cp $fa                                        ; $5c85: $fe $fa
    ld b, b                                       ; $5c87: $40
    and $78                                       ; $5c88: $e6 $78
    push hl                                       ; $5c8a: $e5
    xor [hl]                                      ; $5c8b: $ae
    ld b, [hl]                                    ; $5c8c: $46
    rst $20                                       ; $5c8d: $e7
    ld b, l                                       ; $5c8e: $45
    add d                                         ; $5c8f: $82
    xor $76                                       ; $5c90: $ee $76
    ldh [$7b], a                                  ; $5c92: $e0 $7b
    ld b, [hl]                                    ; $5c94: $46
    ld [c], a                                     ; $5c95: $e2
    cp l                                          ; $5c96: $bd
    ld [$c0b2], sp                                ; $5c97: $08 $b2 $c0
    halt                                          ; $5c9a: $76
    db $e3                                        ; $5c9b: $e3
    ld b, b                                       ; $5c9c: $40
    db $e3                                        ; $5c9d: $e3
    sbc b                                         ; $5c9e: $98
    ld b, h                                       ; $5c9f: $44
    ld [c], a                                     ; $5ca0: $e2
    xor b                                         ; $5ca1: $a8
    pop bc                                        ; $5ca2: $c1
    ld b, d                                       ; $5ca3: $42
    jp hl                                         ; $5ca4: $e9


    call nz, $fe81                                ; $5ca5: $c4 $81 $fe
    ld b, [hl]                                    ; $5ca8: $46
    db $e3                                        ; $5ca9: $e3
    jp z, $a5bf                                   ; $5caa: $ca $bf $a5

    rst $18                                       ; $5cad: $df
    jp nz, $f1ff                                  ; $5cae: $c2 $ff $f1

    cp e                                          ; $5cb1: $bb
    cp $7e                                        ; $5cb2: $fe $7e
    add hl, sp                                    ; $5cb4: $39
    nop                                           ; $5cb5: $00
    xor [hl]                                      ; $5cb6: $ae
    rst $38                                       ; $5cb7: $ff
    ld a, h                                       ; $5cb8: $7c
    ld b, [hl]                                    ; $5cb9: $46
    ldh [$f9], a                                  ; $5cba: $e0 $f9
    adc a                                         ; $5cbc: $8f
    rst $38                                       ; $5cbd: $ff
    and e                                         ; $5cbe: $a3
    rst $38                                       ; $5cbf: $ff
    ld c, a                                       ; $5cc0: $4f
    inc bc                                        ; $5cc1: $03
    and b                                         ; $5cc2: $a0
    ld b, h                                       ; $5cc3: $44

jr_02b_5cc4:
    db $e3                                        ; $5cc4: $e3

jr_02b_5cc5:
    ld b, b                                       ; $5cc5: $40
    rst $20                                       ; $5cc6: $e7
    inc d                                         ; $5cc7: $14
    ret c                                         ; $5cc8: $d8

    db $eb                                        ; $5cc9: $eb
    jr nz, jr_02b_5cc5                            ; $5cca: $20 $f9

    add b                                         ; $5ccc: $80
    jr nz, jr_02b_5c75                            ; $5ccd: $20 $a6

    db $fd                                        ; $5ccf: $fd
    ld a, a                                       ; $5cd0: $7f
    ld [hl], b                                    ; $5cd1: $70
    set 7, h                                      ; $5cd2: $cb $fc
    ldh a, [$7d]                                  ; $5cd4: $f0 $7d
    jp c, $cf70                                   ; $5cd6: $da $70 $cf

    nop                                           ; $5cd9: $00
    rrca                                          ; $5cda: $0f
    inc bc                                        ; $5cdb: $03
    ld [hl], b                                    ; $5cdc: $70
    ld hl, $60d9                                  ; $5cdd: $21 $d9 $60
    rst $30                                       ; $5ce0: $f7
    add b                                         ; $5ce1: $80
    jr nz, jr_02b_5cc4                            ; $5ce2: $20 $e0

    ld b, b                                       ; $5ce4: $40
    ld b, l                                       ; $5ce5: $45
    cp $bc                                        ; $5ce6: $fe $bc
    ld a, a                                       ; $5ce8: $7f
    adc a                                         ; $5ce9: $8f
    rst $38                                       ; $5cea: $ff
    rlca                                          ; $5ceb: $07
    jp $8302                                      ; $5cec: $c3 $02 $83


    jr nz, jr_02b_5d61                            ; $5cef: $20 $70

    ld b, b                                       ; $5cf1: $40
    or b                                          ; $5cf2: $b0
    rst $38                                       ; $5cf3: $ff
    add b                                         ; $5cf4: $80
    ld b, c                                       ; $5cf5: $41
    add b                                         ; $5cf6: $80
    ld [$8188], sp                                ; $5cf7: $08 $88 $81
    adc b                                         ; $5cfa: $88
    dec h                                         ; $5cfb: $25
    rst $38                                       ; $5cfc: $ff
    call z, Call_02b_65b7                         ; $5cfd: $cc $b7 $65
    ld a, [hl]                                    ; $5d00: $7e
    ld [bc], a                                    ; $5d01: $02
    inc bc                                        ; $5d02: $03
    ld bc, $ff83                                  ; $5d03: $01 $83 $ff
    nop                                           ; $5d06: $00
    push hl                                       ; $5d07: $e5
    ld b, b                                       ; $5d08: $40
    and b                                         ; $5d09: $a0
    ld b, b                                       ; $5d0a: $40
    xor h                                         ; $5d0b: $ac
    ret z                                         ; $5d0c: $c8

    ld [hl], l                                    ; $5d0d: $75
    rst $38                                       ; $5d0e: $ff
    ld sp, hl                                     ; $5d0f: $f9
    ld d, d                                       ; $5d10: $52

jr_02b_5d11:
    di                                            ; $5d11: $f3
    rst $38                                       ; $5d12: $ff
    ld h, b                                       ; $5d13: $60
    ldh [rSVBK], a                                ; $5d14: $e0 $70
    and b                                         ; $5d16: $a0
    rst $38                                       ; $5d17: $ff
    or b                                          ; $5d18: $b0
    ld [hl], b                                    ; $5d19: $70
    or b                                          ; $5d1a: $b0
    ld d, b                                       ; $5d1b: $50
    or b                                          ; $5d1c: $b0
    ret nc                                        ; $5d1d: $d0

    or b                                          ; $5d1e: $b0
    ldh a, [$5f]                                  ; $5d1f: $f0 $5f
    ldh a, [$a0]                                  ; $5d21: $f0 $a0
    ld h, b                                       ; $5d23: $60
    ldh [$38], a                                  ; $5d24: $e0 $38
    ldh [$cc], a                                  ; $5d26: $e0 $cc
    cp $e0                                        ; $5d28: $fe $e0
    call Call_000_00ff                            ; $5d2a: $cd $ff $00
    inc bc                                        ; $5d2d: $03
    inc b                                         ; $5d2e: $04

jr_02b_5d2f:
    inc b                                         ; $5d2f: $04
    ld [$0408], sp                                ; $5d30: $08 $08 $04
    ld a, b                                       ; $5d33: $78
    rst $38                                       ; $5d34: $ff
    jr nc, jr_02b_5d2f                            ; $5d35: $30 $f8

    db $e4                                        ; $5d37: $e4
    ret nz                                        ; $5d38: $c0

    cp d                                          ; $5d39: $ba
    db $10                                        ; $5d3a: $10
    db $e4                                        ; $5d3b: $e4
    nop                                           ; $5d3c: $00
    rst $38                                       ; $5d3d: $ff
    nop                                           ; $5d3e: $00
    add b                                         ; $5d3f: $80
    nop                                           ; $5d40: $00
    ld b, b                                       ; $5d41: $40
    add b                                         ; $5d42: $80
    nop                                           ; $5d43: $00
    ld h, b                                       ; $5d44: $60
    ld a, $ff                                     ; $5d45: $3e $ff
    call z, $570f                                 ; $5d47: $cc $0f $57
    dec bc                                        ; $5d4a: $0b
    add l                                         ; $5d4b: $85
    nop                                           ; $5d4c: $00
    rra                                           ; $5d4d: $1f
    jr nz, @+$01                                  ; $5d4e: $20 $ff

    ld d, h                                       ; $5d50: $54
    jr nz, @-$7e                                  ; $5d51: $20 $80

    jr nz, jr_02b_5d9d                            ; $5d53: $20 $48

    jr nz, jr_02b_5d6c                            ; $5d55: $20 $15

    jr nz, @+$01                                  ; $5d57: $20 $ff

    inc e                                         ; $5d59: $1c
    inc d                                         ; $5d5a: $14
    ld bc, $0914                                  ; $5d5b: $01 $14 $09
    nop                                           ; $5d5e: $00
    rrca                                          ; $5d5f: $0f
    inc b                                         ; $5d60: $04

jr_02b_5d61:
    rst $38                                       ; $5d61: $ff
    adc c                                         ; $5d62: $89
    ld [bc], a                                    ; $5d63: $02
    inc e                                         ; $5d64: $1c
    ld [bc], a                                    ; $5d65: $02
    xor c                                         ; $5d66: $a9

jr_02b_5d67:
    ld [bc], a                                    ; $5d67: $02
    sub b                                         ; $5d68: $90
    ld [bc], a                                    ; $5d69: $02
    ld a, a                                       ; $5d6a: $7f
    cp l                                          ; $5d6b: $bd

jr_02b_5d6c:
    inc d                                         ; $5d6c: $14

jr_02b_5d6d:
    jp nz, Jump_000_3984                          ; $5d6d: $c2 $84 $39

    adc b                                         ; $5d70: $88
    ld [hl], d                                    ; $5d71: $72
    sub b                                         ; $5d72: $90
    pop hl                                        ; $5d73: $e1
    rst $38                                       ; $5d74: $ff
    jr nc, jr_02b_5d67                            ; $5d75: $30 $f0

    jr nc, @-$2e                                  ; $5d77: $30 $d0

    jr nc, jr_02b_5dcb                            ; $5d79: $30 $50

    jr nc, jr_02b_5d6d                            ; $5d7b: $30 $f0

    push bc                                       ; $5d7d: $c5
    ld [hl], b                                    ; $5d7e: $70
    sub b                                         ; $5d7f: $90
    ldh [rTIMA], a                                ; $5d80: $e0 $05
    and l                                         ; $5d82: $a5
    ld h, b                                       ; $5d83: $60
    ld a, e                                       ; $5d84: $7b
    jr nz, jr_02b_5d11                            ; $5d85: $20 $8a

    and $b0                                       ; $5d87: $e6 $b0
    nop                                           ; $5d89: $00
    rst $08                                       ; $5d8a: $cf
    ldh a, [rP1]                                  ; $5d8b: $f0 $00
    ldh [rP1], a                                  ; $5d8d: $e0 $00
    ld l, d                                       ; $5d8f: $6a
    rst $00                                       ; $5d90: $c7
    add b                                         ; $5d91: $80
    ld l, e                                       ; $5d92: $6b
    ld bc, $1107                                  ; $5d93: $01 $07 $11
    or $c0                                        ; $5d96: $f6 $c0
    and d                                         ; $5d98: $a2
    ld a, d                                       ; $5d99: $7a
    rst $00                                       ; $5d9a: $c7
    sub b                                         ; $5d9b: $90
    ld l, c                                       ; $5d9c: $69

jr_02b_5d9d:
    sbc h                                         ; $5d9d: $9c
    db $e4                                        ; $5d9e: $e4
    ret nz                                        ; $5d9f: $c0

    ret nz                                        ; $5da0: $c0

    and a                                         ; $5da1: $a7
    ldh a, [$83]                                  ; $5da2: $f0 $83
    add h                                         ; $5da4: $84
    ld c, d                                       ; $5da5: $4a
    jp $a1c0                                      ; $5da6: $c3 $c0 $a1


    add c                                         ; $5da9: $81
    ld a, d                                       ; $5daa: $7a
    jp nz, $a3c0                                  ; $5dab: $c2 $c0 $a3

    ld a, d                                       ; $5dae: $7a
    rst $00                                       ; $5daf: $c7
    call z, $bce1                                 ; $5db0: $cc $e1 $bc
    ld a, h                                       ; $5db3: $7c
    xor h                                         ; $5db4: $ac
    jp nz, $c2a8                                  ; $5db5: $c2 $a8 $c2

    or b                                          ; $5db8: $b0
    jp nz, $71ff                                  ; $5db9: $c2 $ff $71

    cp $ff                                        ; $5dbc: $fe $ff
    pop hl                                        ; $5dbe: $e1

jr_02b_5dbf:
    ld a, b                                       ; $5dbf: $78
    or b                                          ; $5dc0: $b0
    ld h, c                                       ; $5dc1: $61
    and b                                         ; $5dc2: $a0
    ld h, c                                       ; $5dc3: $61
    ld e, d                                       ; $5dc4: $5a
    jp Jump_02b_7fff                              ; $5dc5: $c3 $ff $7f


    ld a, a                                       ; $5dc8: $7f
    add b                                         ; $5dc9: $80
    add b                                         ; $5dca: $80

jr_02b_5dcb:
    push bc                                       ; $5dcb: $c5
    ld hl, sp-$6c                                 ; $5dcc: $f8 $94
    ld h, b                                       ; $5dce: $60
    add b                                         ; $5dcf: $80
    adc $d8                                       ; $5dd0: $ce $d8
    add b                                         ; $5dd2: $80
    jr c, @+$01                                   ; $5dd3: $38 $ff

    ld [c], a                                     ; $5dd5: $e2
    pop bc                                        ; $5dd6: $c1
    cp [hl]                                       ; $5dd7: $be
    rst $38                                       ; $5dd8: $ff
    nop                                           ; $5dd9: $00
    rst $28                                       ; $5dda: $ef
    jr @+$09                                      ; $5ddb: $18 $07

    jr nz, jr_02b_5df4                            ; $5ddd: $20 $15

    nop                                           ; $5ddf: $00
    ld l, e                                       ; $5de0: $6b
    rst $38                                       ; $5de1: $ff
    ld b, b                                       ; $5de2: $40
    ld a, $3c                                     ; $5de3: $3e $3c
    jp Jump_000_18e7                              ; $5de5: $c3 $e7 $18


    add c                                         ; $5de8: $81
    ld l, [hl]                                    ; $5de9: $6e
    rst $38                                       ; $5dea: $ff
    nop                                           ; $5deb: $00
    cp a                                          ; $5dec: $bf
    nop                                           ; $5ded: $00
    and b                                         ; $5dee: $a0
    ld e, b                                       ; $5def: $58
    and b                                         ; $5df0: $a0
    inc b                                         ; $5df1: $04
    xor d                                         ; $5df2: $aa
    db $db                                        ; $5df3: $db

jr_02b_5df4:
    nop                                           ; $5df4: $00
    rst $38                                       ; $5df5: $ff
    ldh a, [$e3]                                  ; $5df6: $f0 $e3
    ld bc, $a0fc                                  ; $5df8: $01 $fc $a0
    inc b                                         ; $5dfb: $04
    ret nz                                        ; $5dfc: $c0

    ld b, b                                       ; $5dfd: $40
    ld a, a                                       ; $5dfe: $7f
    jr nz, jr_02b_5e21                            ; $5dff: $20 $20

    ret nz                                        ; $5e01: $c0

    and b                                         ; $5e02: $a0
    ld b, b                                       ; $5e03: $40
    ld b, b                                       ; $5e04: $40
    and b                                         ; $5e05: $a0
    sbc [hl]                                      ; $5e06: $9e
    ld b, b                                       ; $5e07: $40
    rst $20                                       ; $5e08: $e7
    xor e                                         ; $5e09: $ab
    ld bc, $2240                                  ; $5e0a: $01 $40 $22
    ld h, b                                       ; $5e0d: $60
    rra                                           ; $5e0e: $1f
    ld h, l                                       ; $5e0f: $65
    ld [hl], a                                    ; $5e10: $77
    nop                                           ; $5e11: $00
    dec l                                         ; $5e12: $2d

jr_02b_5e13:
    rst $38                                       ; $5e13: $ff
    nop                                           ; $5e14: $00
    ld d, a                                       ; $5e15: $57
    nop                                           ; $5e16: $00
    and $80                                       ; $5e17: $e6 $80
    ld [hl], e                                    ; $5e19: $73
    nop                                           ; $5e1a: $00
    rst $10                                       ; $5e1b: $d7
    rst $38                                       ; $5e1c: $ff
    jr nz, jr_02b_5e7a                            ; $5e1d: $20 $5b

    db $10                                        ; $5e1f: $10
    ld l, a                                       ; $5e20: $6f

jr_02b_5e21:
    nop                                           ; $5e21: $00
    ld e, a                                       ; $5e22: $5f
    nop                                           ; $5e23: $00
    or h                                          ; $5e24: $b4
    rst $38                                       ; $5e25: $ff
    nop                                           ; $5e26: $00
    ld a, [hl]                                    ; $5e27: $7e
    jr nz, jr_02b_5dbf                            ; $5e28: $20 $95

    jr nz, @+$51                                  ; $5e2a: $20 $4f

    nop                                           ; $5e2c: $00
    db $fd                                        ; $5e2d: $fd
    rst $38                                       ; $5e2e: $ff
    ld b, c                                       ; $5e2f: $41
    ld a, [hl-]                                   ; $5e30: $3a
    nop                                           ; $5e31: $00
    rst $28                                       ; $5e32: $ef
    ldh [rP1], a                                  ; $5e33: $e0 $00
    and b                                         ; $5e35: $a0
    ld d, b                                       ; $5e36: $50
    rst $38                                       ; $5e37: $ff
    or b                                          ; $5e38: $b0
    nop                                           ; $5e39: $00
    db $10                                        ; $5e3a: $10
    ldh [rNR10], a                                ; $5e3b: $e0 $10
    ldh [$b0], a                                  ; $5e3d: $e0 $b0
    ld b, b                                       ; $5e3f: $40
    ld a, a                                       ; $5e40: $7f
    jr nz, jr_02b_5e13                            ; $5e41: $20 $d0

    ld h, b                                       ; $5e43: $60
    add b                                         ; $5e44: $80
    ccf                                           ; $5e45: $3f
    nop                                           ; $5e46: $00
    rra                                           ; $5e47: $1f
    ld h, e                                       ; $5e48: $63
    ld b, b                                       ; $5e49: $40
    ldh [$2a], a                                  ; $5e4a: $e0 $2a
    and a                                         ; $5e4c: $a7
    pop bc                                        ; $5e4d: $c1
    and b                                         ; $5e4e: $a0
    cp [hl]                                       ; $5e4f: $be
    pop bc                                        ; $5e50: $c1
    ret nz                                        ; $5e51: $c0

    rst $00                                       ; $5e52: $c7
    cpl                                           ; $5e53: $2f
    ld bc, $0101                                  ; $5e54: $01 $01 $01

jr_02b_5e57:
    ld [bc], a                                    ; $5e57: $02
    ei                                            ; $5e58: $fb
    ld a, h                                       ; $5e59: $7c
    dec sp                                        ; $5e5a: $3b
    ld h, b                                       ; $5e5b: $60
    db $e3                                        ; $5e5c: $e3
    jr nz, jr_02b_5eba                            ; $5e5d: $20 $5b

    nop                                           ; $5e5f: $00
    adc $00                                       ; $5e60: $ce $00
    rst $38                                       ; $5e62: $ff
    ei                                            ; $5e63: $fb
    nop                                           ; $5e64: $00
    ld h, b                                       ; $5e65: $60
    inc a                                         ; $5e66: $3c
    jp c, Jump_02b_5ae7                           ; $5e67: $da $e7 $5a

    add c                                         ; $5e6a: $81
    rst $38                                       ; $5e6b: $ff
    ld a, [hl]                                    ; $5e6c: $7e
    nop                                           ; $5e6d: $00
    db $eb                                        ; $5e6e: $eb
    inc c                                         ; $5e6f: $0c
    jp nc, $f601                                  ; $5e70: $d2 $01 $f6

    nop                                           ; $5e73: $00

jr_02b_5e74:
    rra                                           ; $5e74: $1f
    sbc a                                         ; $5e75: $9f
    nop                                           ; $5e76: $00
    dec b                                         ; $5e77: $05
    inc a                                         ; $5e78: $3c

jr_02b_5e79:
    ld e, e                                       ; $5e79: $5b

jr_02b_5e7a:
    ldh a, [$e3]                                  ; $5e7a: $f0 $e3
    ld h, h                                       ; $5e7c: $64
    pop hl                                        ; $5e7d: $e1
    ld l, h                                       ; $5e7e: $6c
    add b                                         ; $5e7f: $80
    rst $38                                       ; $5e80: $ff
    ret nc                                        ; $5e81: $d0

    nop                                           ; $5e82: $00
    ld [hl], b                                    ; $5e83: $70
    sub b                                         ; $5e84: $90
    jr nz, jr_02b_5e57                            ; $5e85: $20 $d0

    jr nz, jr_02b_5ee9                            ; $5e87: $20 $60

    ld a, l                                       ; $5e89: $7d
    sub b                                         ; $5e8a: $90
    cp $20                                        ; $5e8b: $fe $20
    xor [hl]                                      ; $5e8d: $ae
    nop                                           ; $5e8e: $00
    ld b, l                                       ; $5e8f: $45
    nop                                           ; $5e90: $00
    ld [bc], a                                    ; $5e91: $02
    ld h, b                                       ; $5e92: $60
    ldh [$ba], a                                  ; $5e93: $e0 $ba
    cp $e1                                        ; $5e95: $fe $e1
    nop                                           ; $5e97: $00
    xor $20                                       ; $5e98: $ee $20
    and d                                         ; $5e9a: $a2
    nop                                           ; $5e9b: $00
    db $10                                        ; $5e9c: $10
    dec bc                                        ; $5e9d: $0b
    ret nz                                        ; $5e9e: $c0

    nop                                           ; $5e9f: $00
    xor e                                         ; $5ea0: $ab
    nop                                           ; $5ea1: $00
    add d                                         ; $5ea2: $82
    ld [c], a                                     ; $5ea3: $e2
    jr nz, @-$4f                                  ; $5ea4: $20 $af

jr_02b_5ea6:
    ldh a, [$e2]                                  ; $5ea6: $f0 $e2
    ld b, c                                       ; $5ea8: $41
    ldh [$e0], a                                  ; $5ea9: $e0 $e0
    ld de, $e8fe                                  ; $5eab: $11 $fe $e8
    ldh [rHDMA5], a                               ; $5eae: $e0 $55
    nop                                           ; $5eb0: $00
    ld a, [$c020]                                 ; $5eb1: $fa $20 $c0
    jr nz, jr_02b_5ea6                            ; $5eb4: $20 $f0

    ld a, a                                       ; $5eb6: $7f
    jr nc, jr_02b_5e79                            ; $5eb7: $30 $c0

    db $10                                        ; $5eb9: $10

jr_02b_5eba:
    ldh a, [rNR10]                                ; $5eba: $f0 $10
    ld [hl], b                                    ; $5ebc: $70
    jr nc, @-$08                                  ; $5ebd: $30 $f6

    ldh [$df], a                                  ; $5ebf: $e0 $df
    ld h, b                                       ; $5ec1: $60
    add b                                         ; $5ec2: $80
    ld a, b                                       ; $5ec3: $78
    rlca                                          ; $5ec4: $07
    dec h                                         ; $5ec5: $25
    sub b                                         ; $5ec6: $90
    adc d                                         ; $5ec7: $8a
    rst $38                                       ; $5ec8: $ff
    ldh [$dd], a                                  ; $5ec9: $e0 $dd
    cp [hl]                                       ; $5ecb: $be
    sub b                                         ; $5ecc: $90
    adc e                                         ; $5ecd: $8b
    sub c                                         ; $5ece: $91
    nop                                           ; $5ecf: $00
    jr nz, jr_02b_5e74                            ; $5ed0: $20 $a2

    ldh [rNR24], a                                ; $5ed2: $e0 $19
    nop                                           ; $5ed4: $00
    ld a, a                                       ; $5ed5: $7f
    sbc b                                         ; $5ed6: $98
    nop                                           ; $5ed7: $00

jr_02b_5ed8:
    ld b, b                                       ; $5ed8: $40
    nop                                           ; $5ed9: $00
    inc b                                         ; $5eda: $04
    nop                                           ; $5edb: $00
    adc c                                         ; $5edc: $89
    nop                                           ; $5edd: $00
    nop                                           ; $5ede: $00
    nop                                           ; $5edf: $00
    pop hl                                        ; $5ee0: $e1
    inc l                                         ; $5ee1: $2c
    rst $38                                       ; $5ee2: $ff
    rst $38                                       ; $5ee3: $ff
    rst $38                                       ; $5ee4: $ff
    rst $38                                       ; $5ee5: $ff
    rst $38                                       ; $5ee6: $ff
    rst $38                                       ; $5ee7: $ff
    rst $38                                       ; $5ee8: $ff

jr_02b_5ee9:
    rst $38                                       ; $5ee9: $ff
    dec [hl]                                      ; $5eea: $35
    ld [hl], $37                                  ; $5eeb: $36 $37
    db $d3                                        ; $5eed: $d3
    jr c, jr_02b_5f29                             ; $5eee: $38 $39

    reti                                          ; $5ef0: $d9


    rst $38                                       ; $5ef1: $ff
    xor $ed                                       ; $5ef2: $ee $ed
    dec l                                         ; $5ef4: $2d
    rst $38                                       ; $5ef5: $ff
    db $e4                                        ; $5ef6: $e4
    ld a, [hl-]                                   ; $5ef7: $3a
    dec sp                                        ; $5ef8: $3b
    and e                                         ; $5ef9: $a3
    inc a                                         ; $5efa: $3c
    ld b, l                                       ; $5efb: $45
    db $f4                                        ; $5efc: $f4
    push hl                                       ; $5efd: $e5
    jp z, $e8ff                                   ; $5efe: $ca $ff $e8

    rst $20                                       ; $5f01: $e7
    add hl, hl                                    ; $5f02: $29
    rst $38                                       ; $5f03: $ff
    pop hl                                        ; $5f04: $e1
    ld b, [hl]                                    ; $5f05: $46
    rst $38                                       ; $5f06: $ff
    ld b, a                                       ; $5f07: $47
    ld c, b                                       ; $5f08: $48
    ld c, c                                       ; $5f09: $49
    ld c, d                                       ; $5f0a: $4a
    ld c, e                                       ; $5f0b: $4b
    ld c, h                                       ; $5f0c: $4c
    ld d, h                                       ; $5f0d: $54
    ld d, l                                       ; $5f0e: $55
    jp nc, $e2f2                                  ; $5f0f: $d2 $f2 $e2

    add hl, hl                                    ; $5f12: $29
    jp z, $e8ff                                   ; $5f13: $ca $ff $e8

    rst $20                                       ; $5f16: $e7
    ld a, [hl+]                                   ; $5f17: $2a
    rst $38                                       ; $5f18: $ff
    db $e4                                        ; $5f19: $e4
    ld d, [hl]                                    ; $5f1a: $56

jr_02b_5f1b:
    ld d, a                                       ; $5f1b: $57
    inc hl                                        ; $5f1c: $23
    ld e, b                                       ; $5f1d: $58
    ld e, c                                       ; $5f1e: $59
    db $f4                                        ; $5f1f: $f4
    push hl                                       ; $5f20: $e5
    jp z, $e8ff                                   ; $5f21: $ca $ff $e8

    rst $20                                       ; $5f24: $e7
    dec hl                                        ; $5f25: $2b
    rst $38                                       ; $5f26: $ff
    ldh a, [$ca]                                  ; $5f27: $f0 $ca

jr_02b_5f29:
    rst $38                                       ; $5f29: $ff
    add d                                         ; $5f2a: $82
    add sp, -$19                                  ; $5f2b: $e8 $e7
    ld sp, $f0ff                                  ; $5f2d: $31 $ff $f0
    jp z, $c0ff                                   ; $5f30: $ca $ff $c0

    rst $38                                       ; $5f33: $ff
    rst $38                                       ; $5f34: $ff
    rst $38                                       ; $5f35: $ff
    db $e4                                        ; $5f36: $e4
    db $e3                                        ; $5f37: $e3
    rra                                           ; $5f38: $1f
    ld d, $ff                                     ; $5f39: $16 $ff
    db $e3                                        ; $5f3b: $e3
    inc bc                                        ; $5f3c: $03
    nop                                           ; $5f3d: $00
    rst $38                                       ; $5f3e: $ff
    ldh [$03], a                                  ; $5f3f: $e0 $03
    di                                            ; $5f41: $f3
    db $e4                                        ; $5f42: $e4
    jp z, $c0ff                                   ; $5f43: $ca $ff $c0

    xor $3f                                       ; $5f46: $ee $3f
    ld bc, $191b                                  ; $5f48: $01 $1b $19
    add hl, de                                    ; $5f4b: $19
    dec de                                        ; $5f4c: $1b
    ld bc, $ffc0                                  ; $5f4d: $01 $c0 $ff
    rst $28                                       ; $5f50: $ef
    xor $fb                                       ; $5f51: $ee $fb
    cpl                                           ; $5f53: $2f
    jr nc, jr_02b_5ed8                            ; $5f54: $30 $82

    ld [c], a                                     ; $5f56: $e2
    ld [bc], a                                    ; $5f57: $02
    ld a, [de]                                    ; $5f58: $1a
    jr z, jr_02b_5f1b                             ; $5f59: $28 $c0

    jr z, @-$01                                   ; $5f5b: $28 $fd

    ld [bc], a                                    ; $5f5d: $02
    ld a, [hl]                                    ; $5f5e: $7e
    ld [c], a                                     ; $5f5f: $e2
    jr nc, jr_02b_5f91                            ; $5f60: $30 $2f

    inc l                                         ; $5f62: $2c
    jr z, jr_02b_5f8d                             ; $5f63: $28 $28

    jr z, jr_02b_5fd4                             ; $5f65: $28 $6d

    ld [bc], a                                    ; $5f67: $02
    ei                                            ; $5f68: $fb
    db $e4                                        ; $5f69: $e4
    ld l, a                                       ; $5f6a: $6f
    ld [hl], b                                    ; $5f6b: $70
    or $e0                                        ; $5f6c: $f6 $e0
    ld a, e                                       ; $5f6e: $7b
    ld a, h                                       ; $5f6f: $7c
    pop af                                        ; $5f70: $f1
    ldh [$f7], a                                  ; $5f71: $e0 $f7
    add a                                         ; $5f73: $87
    adc b                                         ; $5f74: $88
    ld [bc], a                                    ; $5f75: $02
    or c                                          ; $5f76: $b1
    ldh a, [$3d]                                  ; $5f77: $f0 $3d
    ld a, $3f                                     ; $5f79: $3e $3f
    ld b, b                                       ; $5f7b: $40
    db $fd                                        ; $5f7c: $fd
    ld b, c                                       ; $5f7d: $41
    add d                                         ; $5f7e: $82
    ldh [$28], a                                  ; $5f7f: $e0 $28
    ld e, d                                       ; $5f81: $5a
    ld e, e                                       ; $5f82: $5b
    ld e, h                                       ; $5f83: $5c
    ld e, l                                       ; $5f84: $5d
    dec de                                        ; $5f85: $1b
    rst $38                                       ; $5f86: $ff
    ld bc, $4041                                  ; $5f87: $01 $41 $40
    ccf                                           ; $5f8a: $3f
    ld a, $3d                                     ; $5f8b: $3e $3d

jr_02b_5f8d:
    inc l                                         ; $5f8d: $2c
    ld e, d                                       ; $5f8e: $5a
    ld a, a                                       ; $5f8f: $7f
    ld h, l                                       ; $5f90: $65

jr_02b_5f91:
    ld h, [hl]                                    ; $5f91: $66
    ld e, l                                       ; $5f92: $5d
    inc l                                         ; $5f93: $2c
    ld e, d                                       ; $5f94: $5a
    ld l, c                                       ; $5f95: $69
    ld l, d                                       ; $5f96: $6a
    ei                                            ; $5f97: $fb
    ldh [rIE], a                                  ; $5f98: $e0 $ff
    ld [hl], c                                    ; $5f9a: $71
    ld [hl], d                                    ; $5f9b: $72
    ld [hl], e                                    ; $5f9c: $73
    inc l                                         ; $5f9d: $2c
    ld a, l                                       ; $5f9e: $7d
    ld a, [hl]                                    ; $5f9f: $7e
    ld a, a                                       ; $5fa0: $7f
    add b                                         ; $5fa1: $80
    rst $18                                       ; $5fa2: $df
    inc l                                         ; $5fa3: $2c
    adc c                                         ; $5fa4: $89
    adc d                                         ; $5fa5: $8a
    adc e                                         ; $5fa6: $8b
    adc h                                         ; $5fa7: $8c
    ld [hl], c                                    ; $5fa8: $71
    ldh a, [rKEY1]                                ; $5fa9: $f0 $4d
    ld c, [hl]                                    ; $5fab: $4e
    rst $28                                       ; $5fac: $ef
    ld c, a                                       ; $5fad: $4f
    ld d, b                                       ; $5fae: $50
    ld d, c                                       ; $5faf: $51
    inc e                                         ; $5fb0: $1c
    add d                                         ; $5fb1: $82
    ldh [$5e], a                                  ; $5fb2: $e0 $5e
    ld e, a                                       ; $5fb4: $5f
    ld h, b                                       ; $5fb5: $60
    rst $38                                       ; $5fb6: $ff
    ld h, c                                       ; $5fb7: $61
    ld a, [de]                                    ; $5fb8: $1a
    inc e                                         ; $5fb9: $1c
    ld d, c                                       ; $5fba: $51
    ld d, b                                       ; $5fbb: $50
    ld c, a                                       ; $5fbc: $4f
    ld c, [hl]                                    ; $5fbd: $4e
    ld c, l                                       ; $5fbe: $4d
    rst $38                                       ; $5fbf: $ff
    inc l                                         ; $5fc0: $2c
    ld e, [hl]                                    ; $5fc1: $5e
    ld h, a                                       ; $5fc2: $67
    ld l, b                                       ; $5fc3: $68
    ld h, c                                       ; $5fc4: $61
    inc l                                         ; $5fc5: $2c
    ld e, [hl]                                    ; $5fc6: $5e
    ld l, e                                       ; $5fc7: $6b
    rst $38                                       ; $5fc8: $ff
    ld l, h                                       ; $5fc9: $6c
    ld l, l                                       ; $5fca: $6d
    inc l                                         ; $5fcb: $2c
    ld [hl], h                                    ; $5fcc: $74
    ld [hl], l                                    ; $5fcd: $75
    halt                                          ; $5fce: $76
    ld [hl], a                                    ; $5fcf: $77
    inc l                                         ; $5fd0: $2c
    rst $38                                       ; $5fd1: $ff
    add c                                         ; $5fd2: $81
    add d                                         ; $5fd3: $82

jr_02b_5fd4:
    add e                                         ; $5fd4: $83
    add h                                         ; $5fd5: $84
    inc l                                         ; $5fd6: $2c
    adc l                                         ; $5fd7: $8d
    adc [hl]                                      ; $5fd8: $8e
    adc a                                         ; $5fd9: $8f
    push af                                       ; $5fda: $f5
    sub b                                         ; $5fdb: $90
    ld sp, $1ef0                                  ; $5fdc: $31 $f0 $1e
    rst $38                                       ; $5fdf: $ff
    ldh [rNR33], a                                ; $5fe0: $e0 $1d
    ld [hl+], a                                   ; $5fe2: $22
    ld a, [de]                                    ; $5fe3: $1a
    ret nz                                        ; $5fe4: $c0

    rst $38                                       ; $5fe5: $ff
    jr z, jr_02b_604a                             ; $5fe6: $28 $62

    ld h, e                                       ; $5fe8: $63
    ld h, e                                       ; $5fe9: $63
    ld h, h                                       ; $5fea: $64
    ld a, [de]                                    ; $5feb: $1a
    ld [hl+], a                                   ; $5fec: $22
    dec e                                         ; $5fed: $1d
    ld a, [$e1f0]                                 ; $5fee: $fa $f0 $e1
    inc l                                         ; $5ff1: $2c
    db $f4                                        ; $5ff2: $f4
    pop hl                                        ; $5ff3: $e1
    or b                                          ; $5ff4: $b0
    ld h, d                                       ; $5ff5: $62
    ld h, e                                       ; $5ff6: $63
    ld l, [hl]                                    ; $5ff7: $6e
    ld h, h                                       ; $5ff8: $64
    rst $38                                       ; $5ff9: $ff
    inc l                                         ; $5ffa: $2c
    ld h, d                                       ; $5ffb: $62
    ld a, b                                       ; $5ffc: $78
    ld a, c                                       ; $5ffd: $79
    ld a, d                                       ; $5ffe: $7a
    inc l                                         ; $5fff: $2c
    ld h, d                                       ; $6000: $62
    add l                                         ; $6001: $85
    db $dd                                        ; $6002: $dd
    add [hl]                                      ; $6003: $86
    ei                                            ; $6004: $fb
    ldh [$91], a                                  ; $6005: $e0 $91
    sub d                                         ; $6007: $92

jr_02b_6008:
    sub e                                         ; $6008: $93
    ret nz                                        ; $6009: $c0

    or d                                          ; $600a: $b2
    inc hl                                        ; $600b: $23
    inc h                                         ; $600c: $24
    di                                            ; $600d: $f3
    ld d, $05                                     ; $600e: $16 $05
    ld [bc], a                                    ; $6010: $02
    pop hl                                        ; $6011: $e1
    cp $e0                                        ; $6012: $fe $e0
    ld a, [de]                                    ; $6014: $1a
    dec b                                         ; $6015: $05
    ld d, $24                                     ; $6016: $16 $24
    ld a, c                                       ; $6018: $79
    inc hl                                        ; $6019: $23
    ret nz                                        ; $601a: $c0

    cp a                                          ; $601b: $bf
    ld b, b                                       ; $601c: $40
    xor e                                         ; $601d: $ab
    dec h                                         ; $601e: $25
    dec bc                                        ; $601f: $0b

jr_02b_6020:
    add hl, bc                                    ; $6020: $09
    dec b                                         ; $6021: $05
    add b                                         ; $6022: $80
    ldh [$be], a                                  ; $6023: $e0 $be
    cp a                                          ; $6025: $bf
    pop hl                                        ; $6026: $e1
    ld a, [de]                                    ; $6027: $1a
    dec b                                         ; $6028: $05
    add hl, bc                                    ; $6029: $09
    dec bc                                        ; $602a: $0b
    dec h                                         ; $602b: $25
    ld b, b                                       ; $602c: $40
    and b                                         ; $602d: $a0
    nop                                           ; $602e: $00
    rst $38                                       ; $602f: $ff
    sub h                                         ; $6030: $94
    sub l                                         ; $6031: $95

jr_02b_6032:
    inc bc                                        ; $6032: $03
    inc l                                         ; $6033: $2c
    nop                                           ; $6034: $00
    sbc e                                         ; $6035: $9b
    sbc h                                         ; $6036: $9c
    inc bc                                        ; $6037: $03
    rst $38                                       ; $6038: $ff
    inc l                                         ; $6039: $2c
    xor h                                         ; $603a: $ac
    xor l                                         ; $603b: $ad
    xor [hl]                                      ; $603c: $ae
    xor a                                         ; $603d: $af
    inc l                                         ; $603e: $2c

Jump_02b_603f:
    or [hl]                                       ; $603f: $b6
    or a                                          ; $6040: $b7
    rst $20                                       ; $6041: $e7
    cp b                                          ; $6042: $b8
    cp c                                          ; $6043: $b9
    inc l                                         ; $6044: $2c
    jr nz, jr_02b_6008                            ; $6045: $20 $c1

    ret nz                                        ; $6047: $c0

    sub c                                         ; $6048: $91
    daa                                           ; $6049: $27

jr_02b_604a:
    ld h, $07                                     ; $604a: $26 $07
    ei                                            ; $604c: $fb
    inc b                                         ; $604d: $04
    ld b, $80                                     ; $604e: $06 $80
    push hl                                       ; $6050: $e5
    ld b, $04                                     ; $6051: $06 $04
    rlca                                          ; $6053: $07
    ld h, $27                                     ; $6054: $26 $27
    rst $38                                       ; $6056: $ff
    add hl, hl                                    ; $6057: $29
    inc l                                         ; $6058: $2c
    add hl, de                                    ; $6059: $19
    sub [hl]                                      ; $605a: $96
    sub a                                         ; $605b: $97
    sbc b                                         ; $605c: $98
    inc l                                         ; $605d: $2c
    add hl, de                                    ; $605e: $19
    rst $38                                       ; $605f: $ff
    sbc l                                         ; $6060: $9d
    sbc [hl]                                      ; $6061: $9e
    sbc a                                         ; $6062: $9f
    inc l                                         ; $6063: $2c
    or b                                          ; $6064: $b0
    or c                                          ; $6065: $b1
    or d                                          ; $6066: $b2
    or e                                          ; $6067: $b3
    ccf                                           ; $6068: $3f
    inc l                                         ; $6069: $2c
    cp d                                          ; $606a: $ba
    cp e                                          ; $606b: $bb
    cp h                                          ; $606c: $bc
    cp l                                          ; $606d: $bd
    inc l                                         ; $606e: $2c
    jr nz, jr_02b_6032                            ; $606f: $20 $c1

    ld [hl], c                                    ; $6071: $71
    ldh a, [$cf]                                  ; $6072: $f0 $cf
    jr nz, jr_02b_6097                            ; $6074: $20 $21

    ld a, [bc]                                    ; $6076: $0a
    dec b                                         ; $6077: $05
    add d                                         ; $6078: $82
    ret nz                                        ; $6079: $c0

    add b                                         ; $607a: $80
    db $e3                                        ; $607b: $e3
    jr z, jr_02b_6097                             ; $607c: $28 $19

    rst $38                                       ; $607e: $ff
    dec de                                        ; $607f: $1b
    dec b                                         ; $6080: $05
    dec bc                                        ; $6081: $0b
    ld hl, $2c20                                  ; $6082: $21 $20 $2c
    jr z, jr_02b_6020                             ; $6085: $28 $99

    ld l, l                                       ; $6087: $6d
    sbc d                                         ; $6088: $9a
    ld b, b                                       ; $6089: $40
    ret nz                                        ; $608a: $c0

    and b                                         ; $608b: $a0
    and c                                         ; $608c: $a1
    dec sp                                        ; $608d: $3b
    ret nz                                        ; $608e: $c0

    or h                                          ; $608f: $b4
    or l                                          ; $6090: $b5
    ld [hl], $c0                                  ; $6091: $36 $c0
    dec sp                                        ; $6093: $3b
    cp [hl]                                       ; $6094: $be
    cp a                                          ; $6095: $bf
    ld b, b                                       ; $6096: $40

jr_02b_6097:
    sub $18                                       ; $6097: $d6 $18
    ld de, $020a                                  ; $6099: $11 $0a $02
    push hl                                       ; $609c: $e5
    cp $c3                                        ; $609d: $fe $c3
    rst $30                                       ; $609f: $f7
    ld a, [bc]                                    ; $60a0: $0a
    ld de, $5418                                  ; $60a1: $11 $18 $54
    jp Jump_02b_7ea2                              ; $60a4: $c3 $a2 $7e


    and e                                         ; $60a7: $a3
    and h                                         ; $60a8: $a4
    jr c, @-$03                                   ; $60a9: $38 $fb

    db $e3                                        ; $60ab: $e3
    ld b, l                                       ; $60ac: $45
    jp nz, $d440                                  ; $60ad: $c2 $40 $d4

jr_02b_60b0:
    jr jr_02b_60c3                                ; $60b0: $18 $11

    dec bc                                        ; $60b2: $0b
    ld [bc], a                                    ; $60b3: $02
    push hl                                       ; $60b4: $e5
    cp $c3                                        ; $60b5: $fe $c3
    inc a                                         ; $60b7: $3c
    ret nz                                        ; $60b8: $c0

    pop hl                                        ; $60b9: $e1
    ld d, h                                       ; $60ba: $54
    jp nz, $a6a5                                  ; $60bb: $c2 $a5 $a6

    and a                                         ; $60be: $a7
    xor b                                         ; $60bf: $a8
    ei                                            ; $60c0: $fb
    db $e3                                        ; $60c1: $e3
    ld b, l                                       ; $60c2: $45

jr_02b_60c3:
    jp nz, Jump_02b_402e                          ; $60c3: $c2 $2e $40

    call nc, $1318                                ; $60c6: $d4 $18 $13
    ld [de], a                                    ; $60c9: $12
    add b                                         ; $60ca: $80
    db $eb                                        ; $60cb: $eb
    dec bc                                        ; $60cc: $0b
    add b                                         ; $60cd: $80
    ldh [rHDMA4], a                               ; $60ce: $e0 $54
    jp nz, Jump_02b_620f                          ; $60d0: $c2 $0f $62

    xor c                                         ; $60d3: $a9
    xor d                                         ; $60d4: $aa
    xor e                                         ; $60d5: $ab
    ei                                            ; $60d6: $fb
    db $e4                                        ; $60d7: $e4
    pop af                                        ; $60d8: $f1
    ld [c], a                                     ; $60d9: $e2
    ld b, b                                       ; $60da: $40
    db $d3                                        ; $60db: $d3
    ret nz                                        ; $60dc: $c0

    ld [c], a                                     ; $60dd: $e2
    ld c, $80                                     ; $60de: $0e $80
    jp hl                                         ; $60e0: $e9


    ld [de], a                                    ; $60e1: $12
    inc de                                        ; $60e2: $13
    jr @+$4c                                      ; $60e3: $18 $4a

    rst $18                                       ; $60e5: $df
    ld b, b                                       ; $60e6: $40
    db $ec                                        ; $60e7: $ec
    nop                                           ; $60e8: $00
    and $c0                                       ; $60e9: $e6 $c0
    ret nz                                        ; $60eb: $c0

    add a                                         ; $60ec: $87
    ld [de], a                                    ; $60ed: $12
    db $10                                        ; $60ee: $10
    db $10                                        ; $60ef: $10
    jp z, $c0ff                                   ; $60f0: $ca $ff $c0

    call z, $e602                                 ; $60f3: $cc $02 $e6
    ld b, b                                       ; $60f6: $40
    ret nz                                        ; $60f7: $c0

    add hl, bc                                    ; $60f8: $09
    or e                                          ; $60f9: $b3
    add hl, bc                                    ; $60fa: $09
    dec bc                                        ; $60fb: $0b
    jp z, $e8ff                                   ; $60fc: $ca $ff $e8

    rst $20                                       ; $60ff: $e7
    db $10                                        ; $6100: $10
    ld [de], a                                    ; $6101: $12
    add b                                         ; $6102: $80
    jp Jump_000_2e19                              ; $6103: $c3 $19 $2e


    rst $38                                       ; $6106: $ff
    pop hl                                        ; $6107: $e1
    dec de                                        ; $6108: $1b
    dec b                                         ; $6109: $05
    ld [$e0ff], sp                                ; $610a: $08 $ff $e0
    ld a, [bc]                                    ; $610d: $0a
    jp z, $e8ff                                   ; $610e: $ca $ff $e8

    rst $20                                       ; $6111: $e7
    ld b, a                                       ; $6112: $47
    dec bc                                        ; $6113: $0b
    add hl, bc                                    ; $6114: $09
    ld [$a182], sp                                ; $6115: $08 $82 $a1
    add $a0                                       ; $6118: $c6 $a0
    rst $38                                       ; $611a: $ff
    pop hl                                        ; $611b: $e1
    rlca                                          ; $611c: $07
    ret nz                                        ; $611d: $c0

    rst $38                                       ; $611e: $ff
    ld b, $ed                                     ; $611f: $06 $ed
    db $ec                                        ; $6121: $ec

jr_02b_6122:
    ld a, [bc]                                    ; $6122: $0a
    ld [$e0c0], sp                                ; $6123: $08 $c0 $e0
    ld b, $a1                                     ; $6126: $06 $a1
    add $e1                                       ; $6128: $c6 $e1
    db $fc                                        ; $612a: $fc
    ld [c], a                                     ; $612b: $e2
    ld b, b                                       ; $612c: $40
    rst $38                                       ; $612d: $ff
    jr c, jr_02b_60b0                             ; $612e: $38 $80

    db $eb                                        ; $6130: $eb
    ld [bc], a                                    ; $6131: $02
    and d                                         ; $6132: $a2
    add b                                         ; $6133: $80
    and $09                                       ; $6134: $e6 $09
    dec bc                                        ; $6136: $0b
    ld [de], a                                    ; $6137: $12
    ret nz                                        ; $6138: $c0

    rst $18                                       ; $6139: $df
    nop                                           ; $613a: $00
    jp hl                                         ; $613b: $e9


    ei                                            ; $613c: $fb
    db $10                                        ; $613d: $10
    ld [de], a                                    ; $613e: $12
    ld b, b                                       ; $613f: $40
    and c                                         ; $6140: $a1
    jr z, jr_02b_6171                             ; $6141: $28 $2e

    ld [hl-], a                                   ; $6143: $32
    inc sp                                        ; $6144: $33
    inc sp                                        ; $6145: $33
    ccf                                           ; $6146: $3f
    ld [hl-], a                                   ; $6147: $32
    ld l, $05                                     ; $6148: $2e $05
    ld a, [bc]                                    ; $614a: $0a
    ld [de], a                                    ; $614b: $12
    db $10                                        ; $614c: $10
    ld b, b                                       ; $614d: $40
    rst $18                                       ; $614e: $df
    ld b, b                                       ; $614f: $40
    xor d                                         ; $6150: $aa
    ei                                            ; $6151: $fb
    jr @+$13                                      ; $6152: $18 $11

    ret nz                                        ; $6154: $c0

    add c                                         ; $6155: $81
    ret nz                                        ; $6156: $c0

    inc [hl]                                      ; $6157: $34
    ld b, d                                       ; $6158: $42
    ld b, e                                       ; $6159: $43
    ld b, e                                       ; $615a: $43
    ld c, e                                       ; $615b: $4b
    ld b, d                                       ; $615c: $42
    inc [hl]                                      ; $615d: $34
    ld b, d                                       ; $615e: $42
    and c                                         ; $615f: $a1
    jr jr_02b_6122                                ; $6160: $18 $c0

    rst $38                                       ; $6162: $ff
    ret nz                                        ; $6163: $c0

    ld [$7e13], a                                 ; $6164: $ea $13 $7e
    jp nz, Jump_02b_443f                          ; $6167: $c2 $3f $44

    ld d, d                                       ; $616a: $52
    ld d, e                                       ; $616b: $53
    ld d, e                                       ; $616c: $53
    ld d, d                                       ; $616d: $52
    ld b, h                                       ; $616e: $44
    ret nz                                        ; $616f: $c0

    rst $38                                       ; $6170: $ff

jr_02b_6171:
    ret nz                                        ; $6171: $c0

    db $f4                                        ; $6172: $f4
    ld h, [hl]                                    ; $6173: $66
    pop bc                                        ; $6174: $c1
    ld h, d                                       ; $6175: $62
    inc c                                         ; $6176: $0c
    dec c                                         ; $6177: $0d
    ret nz                                        ; $6178: $c0

    rst $38                                       ; $6179: $ff
    nop                                           ; $617a: $00
    ldh a, [$0b]                                  ; $617b: $f0 $0b
    ld [$c2fe], sp                                ; $617d: $08 $fe $c2
    cpl                                           ; $6180: $2f
    ret nz                                        ; $6181: $c0

    jr z, jr_02b_6192                             ; $6182: $28 $0e

    rrca                                          ; $6184: $0f
    nop                                           ; $6185: $00
    ldh [rNR13], a                                ; $6186: $e0 $13
    ret nz                                        ; $6188: $c0

    rst $38                                       ; $6189: $ff
    add b                                         ; $618a: $80
    call z, $0813                                 ; $618b: $cc $13 $08
    ld [$c2fe], sp                                ; $618e: $08 $fe $c2
    add d                                         ; $6191: $82

jr_02b_6192:
    and d                                         ; $6192: $a2
    ld [$c081], sp                                ; $6193: $08 $81 $c0
    add b                                         ; $6196: $80
    rst $18                                       ; $6197: $df
    nop                                           ; $6198: $00
    sla b                                         ; $6199: $cb $20
    call z, $bca1                                 ; $619b: $cc $a1 $bc
    ld h, b                                       ; $619e: $60
    add d                                         ; $619f: $82
    and h                                         ; $61a0: $a4
    ld b, b                                       ; $61a1: $40
    cp a                                          ; $61a2: $bf
    ret nz                                        ; $61a3: $c0

    pop af                                        ; $61a4: $f1
    rlca                                          ; $61a5: $07
    add d                                         ; $61a6: $82
    and [hl]                                      ; $61a7: $a6
    add b                                         ; $61a8: $80
    cp a                                          ; $61a9: $bf
    nop                                           ; $61aa: $00
    ret nz                                        ; $61ab: $c0

    xor l                                         ; $61ac: $ad
    cp $ed                                        ; $61ad: $fe $ed
    add b                                         ; $61af: $80
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
    nop                                           ; $61bb: $00
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
    nop                                           ; $61cc: $00
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
    nop                                           ; $61dd: $00
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
    nop                                           ; $61ee: $00
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
    nop                                           ; $61ff: $00
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

Jump_02b_620f:
    rst $38                                       ; $620f: $ff
    nop                                           ; $6210: $00
    rst $38                                       ; $6211: $ff
    rst $38                                       ; $6212: $ff
    rst $38                                       ; $6213: $ff
    rst $38                                       ; $6214: $ff
    rst $38                                       ; $6215: $ff
    rst $38                                       ; $6216: $ff
    rst $38                                       ; $6217: $ff
    rst $38                                       ; $6218: $ff
    rst $20                                       ; $6219: $e7
    and $00                                       ; $621a: $e6 $00
    nop                                           ; $621c: $00
    nop                                           ; $621d: $00
    dec b                                         ; $621e: $05
    inc c                                         ; $621f: $0c
    rst $38                                       ; $6220: $ff
    ldh a, [$08]                                  ; $6221: $f0 $08
    rst $38                                       ; $6223: $ff
    rst $38                                       ; $6224: $ff
    rst $20                                       ; $6225: $e7
    and $c0                                       ; $6226: $e6 $c0
    rst $38                                       ; $6228: $ff
    ret nz                                        ; $6229: $c0

    rst $38                                       ; $622a: $ff
    ret nz                                        ; $622b: $c0

    rst $38                                       ; $622c: $ff
    nop                                           ; $622d: $00
    ret nz                                        ; $622e: $c0

    rst $38                                       ; $622f: $ff
    ret nz                                        ; $6230: $c0

    rst $38                                       ; $6231: $ff
    ret nz                                        ; $6232: $c0

    rst $38                                       ; $6233: $ff
    ret nz                                        ; $6234: $c0

    rst $38                                       ; $6235: $ff
    ret nz                                        ; $6236: $c0

    rst $38                                       ; $6237: $ff
    ret nz                                        ; $6238: $c0

    rst $38                                       ; $6239: $ff
    ret nz                                        ; $623a: $c0

    rst $38                                       ; $623b: $ff
    jp z, Jump_02b_70ff                           ; $623c: $ca $ff $70

    ret nz                                        ; $623f: $c0

    rst $38                                       ; $6240: $ff
    rst $38                                       ; $6241: $ff
    rst $38                                       ; $6242: $ff
    ret nz                                        ; $6243: $c0

    rst $38                                       ; $6244: $ff
    rst $38                                       ; $6245: $ff
    rst $38                                       ; $6246: $ff
    ld [$0d08], sp                                ; $6247: $08 $08 $0d
    rst $38                                       ; $624a: $ff
    db $e4                                        ; $624b: $e4
    and c                                         ; $624c: $a1
    dec l                                         ; $624d: $2d
    db $fc                                        ; $624e: $fc
    db $e4                                        ; $624f: $e4
    ldh a, [$e1]                                  ; $6250: $f0 $e1
    jp z, $c0ff                                   ; $6252: $ca $ff $c0

    xor $4d                                       ; $6255: $ee $4d
    cp l                                          ; $6257: $bd
    pop hl                                        ; $6258: $e1
    ld l, l                                       ; $6259: $6d
    adc h                                         ; $625a: $8c
    ret nz                                        ; $625b: $c0

    rst $38                                       ; $625c: $ff
    rst $28                                       ; $625d: $ef
    xor $0a                                       ; $625e: $ee $0a
    ld a, [bc]                                    ; $6260: $0a
    add d                                         ; $6261: $82
    push hl                                       ; $6262: $e5
    ld a, h                                       ; $6263: $7c
    pop hl                                        ; $6264: $e1
    ld a, d                                       ; $6265: $7a
    pop hl                                        ; $6266: $e1
    ld a, [hl+]                                   ; $6267: $2a
    dec [hl]                                      ; $6268: $35
    ld a, [hl+]                                   ; $6269: $2a
    ld l, e                                       ; $626a: $6b
    pop hl                                        ; $626b: $e1
    dec l                                         ; $626c: $2d
    ei                                            ; $626d: $fb
    db $e4                                        ; $626e: $e4
    dec bc                                        ; $626f: $0b
    dec bc                                        ; $6270: $0b
    ei                                            ; $6271: $fb
    jp hl                                         ; $6272: $e9


    ret nz                                        ; $6273: $c0

    pop af                                        ; $6274: $f1
    ld [hl], h                                    ; $6275: $74
    cp $e0                                        ; $6276: $fe $e0
    add d                                         ; $6278: $82

jr_02b_6279:
    pop hl                                        ; $6279: $e1
    dec bc                                        ; $627a: $0b
    rst $38                                       ; $627b: $ff
    ldh [$2d], a                                  ; $627c: $e0 $2d
    ld l, l                                       ; $627e: $6d
    ld a, [hl+]                                   ; $627f: $2a
    rst $38                                       ; $6280: $ff
    pop hl                                        ; $6281: $e1
    ld b, c                                       ; $6282: $41
    ld [$e1f4], sp                                ; $6283: $08 $f4 $e1
    ei                                            ; $6286: $fb
    ld a, [c]                                     ; $6287: $f2
    ret nz                                        ; $6288: $c0

    db $f4                                        ; $6289: $f4
    ei                                            ; $628a: $fb
    pop bc                                        ; $628b: $c1
    ret nz                                        ; $628c: $c0

    ld [c], a                                     ; $628d: $e2
    dec l                                         ; $628e: $2d
    ret nz                                        ; $628f: $c0

    rst $38                                       ; $6290: $ff
    ret nz                                        ; $6291: $c0

    ret nz                                        ; $6292: $c0

    call nc, $e4c0                                ; $6293: $d4 $c0 $e4
    cp $e2                                        ; $6296: $fe $e2
    ret nz                                        ; $6298: $c0

    ld [c], a                                     ; $6299: $e2
    ld l, a                                       ; $629a: $6f
    ld [c], a                                     ; $629b: $e2
    ret nz                                        ; $629c: $c0

    rst $38                                       ; $629d: $ff
    ld c, l                                       ; $629e: $4d
    ld c, l                                       ; $629f: $4d
    ret c                                         ; $62a0: $d8

Jump_02b_62a1:
    add l                                         ; $62a1: $85
    ret nz                                        ; $62a2: $c0

    ei                                            ; $62a3: $fb
    ldh [$78], a                                  ; $62a4: $e0 $78
    jp nz, Jump_02b_6d6d                          ; $62a6: $c2 $6d $6d

    db $fd                                        ; $62a9: $fd
    ret nz                                        ; $62aa: $c0

    ld l, l                                       ; $62ab: $6d
    ld l, l                                       ; $62ac: $6d
    jr jr_02b_6279                                ; $62ad: $18 $ca

    rst $18                                       ; $62af: $df
    ret nz                                        ; $62b0: $c0

    ld [$c648], a                                 ; $62b1: $ea $48 $c6
    dec c                                         ; $62b4: $0d
    dec l                                         ; $62b5: $2d
    cp [hl]                                       ; $62b6: $be
    ret nz                                        ; $62b7: $c0

    ret nz                                        ; $62b8: $c0

    pop hl                                        ; $62b9: $e1
    ret nz                                        ; $62ba: $c0

    ret z                                         ; $62bb: $c8

    jr nz, jr_02b_632f                            ; $62bc: $20 $71

    pop bc                                        ; $62be: $c1
    ei                                            ; $62bf: $fb
    push hl                                       ; $62c0: $e5
    ret nz                                        ; $62c1: $c0

    pop de                                        ; $62c2: $d1
    add [hl]                                      ; $62c3: $86
    db $e4                                        ; $62c4: $e4
    ret nz                                        ; $62c5: $c0

    add sp, $2d                                   ; $62c6: $e8 $2d
    ret nz                                        ; $62c8: $c0

    ld [c], a                                     ; $62c9: $e2
    jp z, Jump_000_00e7                           ; $62ca: $ca $e7 $00

    ret nz                                        ; $62cd: $c0

    and $e7                                       ; $62ce: $e6 $e7
    ldh [rP1], a                                  ; $62d0: $e0 $00
    ld hl, sp+$7e                                 ; $62d2: $f8 $7e
    push hl                                       ; $62d4: $e5
    ld a, h                                       ; $62d5: $7c
    ldh [rWY], a                                  ; $62d6: $e0 $4a
    call $d940                                    ; $62d8: $cd $40 $d9
    ret nz                                        ; $62db: $c0

    ld a, [c]                                     ; $62dc: $f2
    nop                                           ; $62dd: $00
    add b                                         ; $62de: $80
    rst $18                                       ; $62df: $df
    ld b, b                                       ; $62e0: $40
    xor b                                         ; $62e1: $a8
    ld a, $ec                                     ; $62e2: $3e $ec
    ret nz                                        ; $62e4: $c0

    rst $38                                       ; $62e5: $ff
    nop                                           ; $62e6: $00
    xor e                                         ; $62e7: $ab
    add h                                         ; $62e8: $84
    push bc                                       ; $62e9: $c5
    cp [hl]                                       ; $62ea: $be
    push bc                                       ; $62eb: $c5
    ld a, l                                       ; $62ec: $7d
    ret nz                                        ; $62ed: $c0

    add b                                         ; $62ee: $80
    ret nz                                        ; $62ef: $c0

    rst $38                                       ; $62f0: $ff
    ret nz                                        ; $62f1: $c0

    adc d                                         ; $62f2: $8a
    cp [hl]                                       ; $62f3: $be
    jp hl                                         ; $62f4: $e9


    add c                                         ; $62f5: $81
    pop bc                                        ; $62f6: $c1
    nop                                           ; $62f7: $00
    cp a                                          ; $62f8: $bf
    add b                                         ; $62f9: $80
    ld [$c97f], a                                 ; $62fa: $ea $7f $c9
    ld c, l                                       ; $62fd: $4d
    ld [hl], c                                    ; $62fe: $71
    ld l, l                                       ; $62ff: $6d
    dec a                                         ; $6300: $3d
    ret nz                                        ; $6301: $c0

    ret nz                                        ; $6302: $c0

    rst $38                                       ; $6303: $ff
    add b                                         ; $6304: $80
    push de                                       ; $6305: $d5
    dec l                                         ; $6306: $2d
    ld l, l                                       ; $6307: $6d
    ld c, l                                       ; $6308: $4d
    ld a, h                                       ; $6309: $7c
    add b                                         ; $630a: $80
    nop                                           ; $630b: $00
    reti                                          ; $630c: $d9


    sub c                                         ; $630d: $91
    rst $30                                       ; $630e: $f7
    or $83                                        ; $630f: $f6 $83
    and b                                         ; $6311: $a0
    ccf                                           ; $6312: $3f
    add e                                         ; $6313: $83
    rst $38                                       ; $6314: $ff
    pop hl                                        ; $6315: $e1
    add c                                         ; $6316: $81
    and b                                         ; $6317: $a0
    reti                                          ; $6318: $d9


    or h                                          ; $6319: $b4
    ret nz                                        ; $631a: $c0

    ld [hl], a                                    ; $631b: $77
    ld [bc], a                                    ; $631c: $02
    ld b, l                                       ; $631d: $45
    add h                                         ; $631e: $84
    ld l, l                                       ; $631f: $6d
    cp a                                          ; $6320: $bf
    db $e3                                        ; $6321: $e3
    ret nz                                        ; $6322: $c0

    rst $38                                       ; $6323: $ff
    add b                                         ; $6324: $80
    or e                                          ; $6325: $b3
    add hl, bc                                    ; $6326: $09
    pop hl                                        ; $6327: $e1
    db $fc                                        ; $6328: $fc
    add $ca                                       ; $6329: $c6 $ca
    rst $38                                       ; $632b: $ff
    ld a, b                                       ; $632c: $78
    ret nz                                        ; $632d: $c0

    adc c                                         ; $632e: $89

jr_02b_632f:
    adc h                                         ; $632f: $8c
    db $e3                                        ; $6330: $e3
    cp [hl]                                       ; $6331: $be
    ld h, l                                       ; $6332: $65
    ld c, l                                       ; $6333: $4d
    ld l, l                                       ; $6334: $6d
    ld l, l                                       ; $6335: $6d
    ld c, l                                       ; $6336: $4d
    jp z, $f8ff                                   ; $6337: $ca $ff $f8

    add sp, -$19                                  ; $633a: $e8 $e7
    ld c, b                                       ; $633c: $48
    ldh [$81], a                                  ; $633d: $e0 $81
    add d                                         ; $633f: $82
    ld c, $0e                                     ; $6340: $0e $0e
    ld c, $2e                                     ; $6342: $0e $2e
    ld l, $01                                     ; $6344: $2e $01
    ld l, $c2                                     ; $6346: $2e $c2
    add b                                         ; $6348: $80
    cp [hl]                                       ; $6349: $be
    ret nz                                        ; $634a: $c0

    jp z, Jump_000_00ff                           ; $634b: $ca $ff $00

    call z, $e8c0                                 ; $634e: $cc $c0 $e8
    cp b                                          ; $6351: $b8
    ld b, c                                       ; $6352: $41
    jp z, Jump_000_00ff                           ; $6353: $ca $ff $00

    ld b, b                                       ; $6356: $40
    xor d                                         ; $6357: $aa
    inc bc                                        ; $6358: $03
    add d                                         ; $6359: $82
    ret nz                                        ; $635a: $c0

    rst $38                                       ; $635b: $ff
    ld b, b                                       ; $635c: $40
    ld d, a                                       ; $635d: $57
    inc a                                         ; $635e: $3c
    add l                                         ; $635f: $85
    ld a, a                                       ; $6360: $7f
    ld h, d                                       ; $6361: $62
    ret nz                                        ; $6362: $c0

    rst $38                                       ; $6363: $ff
    nop                                           ; $6364: $00
    ld d, b                                       ; $6365: $50
    nop                                           ; $6366: $00
    ld a, a                                       ; $6367: $7f
    ld h, e                                       ; $6368: $63
    cp a                                          ; $6369: $bf
    ld b, c                                       ; $636a: $41
    add b                                         ; $636b: $80
    cp a                                          ; $636c: $bf
    ret nz                                        ; $636d: $c0

    dec l                                         ; $636e: $2d
    add $20                                       ; $636f: $c6 $20
    cp $c2                                        ; $6371: $fe $c2
    add d                                         ; $6373: $82
    and e                                         ; $6374: $a3
    ret nz                                        ; $6375: $c0

    rst $38                                       ; $6376: $ff
    nop                                           ; $6377: $00
    add b                                         ; $6378: $80
    inc sp                                        ; $6379: $33
    add d                                         ; $637a: $82
    and [hl]                                      ; $637b: $a6
    ret nz                                        ; $637c: $c0

    cp a                                          ; $637d: $bf
    ld b, b                                       ; $637e: $40
    ld l, $7e                                     ; $637f: $2e $7e
    db $e3                                        ; $6381: $e3
    add d                                         ; $6382: $82
    and h                                         ; $6383: $a4
    ret nz                                        ; $6384: $c0

    rst $38                                       ; $6385: $ff
    add b                                         ; $6386: $80
    ld c, h                                       ; $6387: $4c
    nop                                           ; $6388: $00
    cp $ee                                        ; $6389: $fe $ee
    add b                                         ; $638b: $80
    cp a                                          ; $638c: $bf
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
    nop                                           ; $6399: $00
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
    nop                                           ; $63aa: $00
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
    nop                                           ; $63bb: $00
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
    nop                                           ; $63cc: $00
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
    nop                                           ; $63dd: $00
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
    nop                                           ; $63ee: $00
    rst $38                                       ; $63ef: $ff
    rst $38                                       ; $63f0: $ff
    rst $38                                       ; $63f1: $ff
    rst $38                                       ; $63f2: $ff
    rst $38                                       ; $63f3: $ff
    rst $38                                       ; $63f4: $ff
    ret nz                                        ; $63f5: $c0

    ld b, $00                                     ; $63f6: $06 $00
    nop                                           ; $63f8: $00
    nop                                           ; $63f9: $00
    dec b                                         ; $63fa: $05
    rrca                                          ; $63fb: $0f
    rst $38                                       ; $63fc: $ff
    and $00                                       ; $63fd: $e6 $00
    rst $38                                       ; $63ff: $ff
    ld a, [c]                                     ; $6400: $f2
    ldh [rIE], a                                  ; $6401: $e0 $ff
    ldh [rIE], a                                  ; $6403: $e0 $ff
    ldh [rIE], a                                  ; $6405: $e0 $ff
    ldh [$fb], a                                  ; $6407: $e0 $fb
    nop                                           ; $6409: $00
    ld a, [$c0e5]                                 ; $640a: $fa $e5 $c0
    db $f4                                        ; $640d: $f4

jr_02b_640e:
    ld sp, hl                                     ; $640e: $f9
    add sp, -$20                                  ; $640f: $e8 $e0
    rst $38                                       ; $6411: $ff
    ldh [rIE], a                                  ; $6412: $e0 $ff
    ld h, b                                       ; $6414: $60
    db $ed                                        ; $6415: $ed
    ld hl, sp-$15                                 ; $6416: $f8 $eb
    ldh [rIE], a                                  ; $6418: $e0 $ff
    ret nz                                        ; $641a: $c0

    ldh [rIE], a                                  ; $641b: $e0 $ff
    ldh [$f0], a                                  ; $641d: $e0 $f0
    rst $18                                       ; $641f: $df
    sub $02                                       ; $6420: $d6 $02
    push hl                                       ; $6422: $e5
    ldh [rIE], a                                  ; $6423: $e0 $ff
    ldh [$f5], a                                  ; $6425: $e0 $f5
    rrca                                          ; $6427: $0f
    nop                                           ; $6428: $00
    nop                                           ; $6429: $00
    cp $e0                                        ; $642a: $fe $e0
    ldh [$fa], a                                  ; $642c: $e0 $fa
    and b                                         ; $642e: $a0
    call c, $dd80                                 ; $642f: $dc $80 $dd
    jr nz, jr_02b_640e                            ; $6432: $20 $da

    rst $38                                       ; $6434: $ff
    rst $38                                       ; $6435: $ff
    rst $38                                       ; $6436: $ff
    rst $38                                       ; $6437: $ff
    rst $38                                       ; $6438: $ff
    rst $38                                       ; $6439: $ff
    nop                                           ; $643a: $00
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
    nop                                           ; $644b: $00
    rst $38                                       ; $644c: $ff
    rst $38                                       ; $644d: $ff
    rst $38                                       ; $644e: $ff
    push hl                                       ; $644f: $e5

jr_02b_6450:
    nop                                           ; $6450: $00
    nop                                           ; $6451: $00
    nop                                           ; $6452: $00
    ld b, c                                       ; $6453: $41
    nop                                           ; $6454: $00
    rst $38                                       ; $6455: $ff
    rst $38                                       ; $6456: $ff
    rst $38                                       ; $6457: $ff
    rst $38                                       ; $6458: $ff
    rst $38                                       ; $6459: $ff
    rst $38                                       ; $645a: $ff
    rst $38                                       ; $645b: $ff
    rst $38                                       ; $645c: $ff
    db $e3                                        ; $645d: $e3
    ld [c], a                                     ; $645e: $e2
    db $10                                        ; $645f: $10
    ldh [rIE], a                                  ; $6460: $e0 $ff
    ld [bc], a                                    ; $6462: $02
    db $ec                                        ; $6463: $ec
    pop af                                        ; $6464: $f1
    ld de, $ffcc                                  ; $6465: $11 $cc $ff
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
    jr z, @+$01                                   ; $6472: $28 $ff

    rst $38                                       ; $6474: $ff
    rst $38                                       ; $6475: $ff
    rst $38                                       ; $6476: $ff
    db $ed                                        ; $6477: $ed
    db $ec                                        ; $6478: $ec
    ld hl, $dde0                                  ; $6479: $21 $e0 $dd
    jr jr_02b_6450                                ; $647c: $18 $d2

    ret c                                         ; $647e: $d8

    ld l, h                                       ; $647f: $6c
    rlc b                                         ; $6480: $cb $00
    or d                                          ; $6482: $b2
    rst $18                                       ; $6483: $df
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
    nop                                           ; $6492: $00
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
    di                                            ; $649e: $f3
    nop                                           ; $649f: $00
    nop                                           ; $64a0: $00
    nop                                           ; $64a1: $00
    cp $01                                        ; $64a2: $fe $01
    nop                                           ; $64a4: $00
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
    nop                                           ; $64b3: $00
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
    nop                                           ; $64c4: $00
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
    nop                                           ; $64d5: $00
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
    nop                                           ; $64e6: $00
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
    nop                                           ; $64f7: $00
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
    nop                                           ; $6508: $00
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
    nop                                           ; $6519: $00
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
    db $e4                                        ; $6525: $e4
    nop                                           ; $6526: $00
    nop                                           ; $6527: $00
    nop                                           ; $6528: $00
    nop                                           ; $6529: $00
    nop                                           ; $652a: $00
    nop                                           ; $652b: $00
    nop                                           ; $652c: $00
    jr z, @+$2a                                   ; $652d: $28 $28

    nop                                           ; $652f: $00
    nop                                           ; $6530: $00
    xor b                                         ; $6531: $a8
    stop                                          ; $6532: $10 $00
    nop                                           ; $6534: $00
    xor l                                         ; $6535: $ad
    dec [hl]                                      ; $6536: $35
    sub h                                         ; $6537: $94
    ld c, [hl]                                    ; $6538: $4e
    xor b                                         ; $6539: $a8
    stop                                          ; $653a: $10 $00
    nop                                           ; $653c: $00
    xor l                                         ; $653d: $ad
    dec [hl]                                      ; $653e: $35
    sub h                                         ; $653f: $94
    ld c, [hl]                                    ; $6540: $4e
    rst $38                                       ; $6541: $ff
    ld a, a                                       ; $6542: $7f
    ld b, [hl]                                    ; $6543: $46
    add hl, sp                                    ; $6544: $39
    ld l, h                                       ; $6545: $6c
    ld a, [hl-]                                   ; $6546: $3a
    ld a, [c]                                     ; $6547: $f2
    inc bc                                        ; $6548: $03
    ld a, [c]                                     ; $6549: $f2
    inc bc                                        ; $654a: $03
    nop                                           ; $654b: $00
    inc bc                                        ; $654c: $03
    db $fd                                        ; $654d: $fd
    ld [$10c8], sp                                ; $654e: $08 $c8 $10
    rst $38                                       ; $6551: $ff
    ld a, a                                       ; $6552: $7f
    ld [hl], a                                    ; $6553: $77
    ld e, a                                       ; $6554: $5f
    jp nc, Jump_02b_694a                          ; $6555: $d2 $4a $69

    dec h                                         ; $6558: $25
    rst $38                                       ; $6559: $ff
    ld a, a                                       ; $655a: $7f
    rst $18                                       ; $655b: $df
    ld c, d                                       ; $655c: $4a
    rra                                           ; $655d: $1f
    add hl, hl                                    ; $655e: $29
    ld l, [hl]                                    ; $655f: $6e
    ld c, h                                       ; $6560: $4c
    ld a, [c]                                     ; $6561: $f2
    inc bc                                        ; $6562: $03
    sbc a                                         ; $6563: $9f
    nop                                           ; $6564: $00
    rra                                           ; $6565: $1f
    ld [bc], a                                    ; $6566: $02
    ld b, b                                       ; $6567: $40
    ld a, l                                       ; $6568: $7d
    xor b                                         ; $6569: $a8
    stop                                          ; $656a: $10 $00
    nop                                           ; $656c: $00
    xor l                                         ; $656d: $ad
    dec [hl]                                      ; $656e: $35
    sub h                                         ; $656f: $94
    ld c, [hl]                                    ; $6570: $4e
    rst $18                                       ; $6571: $df
    add b                                         ; $6572: $80
    nop                                           ; $6573: $00
    ccf                                           ; $6574: $3f
    nop                                           ; $6575: $00
    ld a, a                                       ; $6576: $7f
    cp $e4                                        ; $6577: $fe $e4
    or l                                          ; $6579: $b5
    add b                                         ; $657a: $80
    rst $38                                       ; $657b: $ff
    rst $38                                       ; $657c: $ff
    rst $38                                       ; $657d: $ff
    inc bc                                        ; $657e: $03
    inc bc                                        ; $657f: $03
    db $fd                                        ; $6580: $fd
    ld bc, $01ff                                  ; $6581: $01 $ff $01
    rst $38                                       ; $6584: $ff
    ei                                            ; $6585: $fb
    ld bc, $01f5                                  ; $6586: $01 $f5 $01
    xor c                                         ; $6589: $a9
    ld bc, $0153                                  ; $658a: $01 $53 $01
    ei                                            ; $658d: $fb
    rst $38                                       ; $658e: $ff
    cp $e0                                        ; $658f: $fe $e0
    and $1f                                       ; $6591: $e6 $1f
    rst $38                                       ; $6593: $ff
    ld a, l                                       ; $6594: $7d
    rst $38                                       ; $6595: $ff
    ld [$ffff], a                                 ; $6596: $ea $ff $ff
    ret nc                                        ; $6599: $d0

    rst $38                                       ; $659a: $ff
    ld [$7d7f], a                                 ; $659b: $ea $7f $7d
    cp a                                          ; $659e: $bf
    rra                                           ; $659f: $1f
    rst $28                                       ; $65a0: $ef
    ld b, l                                       ; $65a1: $45
    nop                                           ; $65a2: $00
    add d                                         ; $65a3: $82
    nop                                           ; $65a4: $00
    db $fc                                        ; $65a5: $fc
    db $e3                                        ; $65a6: $e3
    rst $38                                       ; $65a7: $ff
    ld d, a                                       ; $65a8: $57
    rst $38                                       ; $65a9: $ff
    rst $38                                       ; $65aa: $ff
    cp l                                          ; $65ab: $bd
    rst $38                                       ; $65ac: $ff
    pop af                                        ; $65ad: $f1
    cp a                                          ; $65ae: $bf
    ld bc, $05ff                                  ; $65af: $01 $ff $05
    cp a                                          ; $65b2: $bf
    pop bc                                        ; $65b3: $c1
    add hl, bc                                    ; $65b4: $09
    db $fc                                        ; $65b5: $fc
    pop hl                                        ; $65b6: $e1

Call_02b_65b7:
    add sp, -$1b                                  ; $65b7: $e8 $e5
    ldh [$e6], a                                  ; $65b9: $e0 $e6
    add sp, -$1c                                  ; $65bb: $e8 $e4
    ldh [$e6], a                                  ; $65bd: $e0 $e6
    add b                                         ; $65bf: $80
    pop hl                                        ; $65c0: $e1
    rst $38                                       ; $65c1: $ff
    ldh [$7f], a                                  ; $65c2: $e0 $7f
    ld a, a                                       ; $65c4: $7f
    rra                                           ; $65c5: $1f
    adc a                                         ; $65c6: $8f
    nop                                           ; $65c7: $00
    ld b, b                                       ; $65c8: $40
    nop                                           ; $65c9: $00
    rst $38                                       ; $65ca: $ff
    add l                                         ; $65cb: $85
    nop                                           ; $65cc: $00
    ld b, d                                       ; $65cd: $42
    nop                                           ; $65ce: $00
    add l                                         ; $65cf: $85
    rst $38                                       ; $65d0: $ff
    inc bc                                        ; $65d1: $03
    ld e, a                                       ; $65d2: $5f
    rst $38                                       ; $65d3: $ff
    rrca                                          ; $65d4: $0f
    db $fd                                        ; $65d5: $fd
    rst $38                                       ; $65d6: $ff
    pop af                                        ; $65d7: $f1
    rst $38                                       ; $65d8: $ff
    ld bc, $05bf                                  ; $65d9: $01 $bf $05
    ld sp, hl                                     ; $65dc: $f9
    ld a, a                                       ; $65dd: $7f
    cp a                                          ; $65de: $bf
    pop hl                                        ; $65df: $e1
    db $ec                                        ; $65e0: $ec
    ldh [$a5], a                                  ; $65e1: $e0 $a5
    nop                                           ; $65e3: $00
    jp z, $f580                                   ; $65e4: $ca $80 $f5

    rst $38                                       ; $65e7: $ff
    ldh [$7f], a                                  ; $65e8: $e0 $7f
    rst $38                                       ; $65ea: $ff
    ccf                                           ; $65eb: $3f
    db $eb                                        ; $65ec: $eb

jr_02b_65ed:
    ld b, b                                       ; $65ed: $40
    ret nc                                        ; $65ee: $d0

    add b                                         ; $65ef: $80
    cp $c3                                        ; $65f0: $fe $c3
    db $e3                                        ; $65f2: $e3
    inc bc                                        ; $65f3: $03
    cp a                                          ; $65f4: $bf
    rrca                                          ; $65f5: $0f
    cp $ff                                        ; $65f6: $fe $ff
    db $fc                                        ; $65f8: $fc
    cp $7f                                        ; $65f9: $fe $7f
    ld [bc], a                                    ; $65fb: $02
    dec bc                                        ; $65fc: $0b
    ld bc, $077f                                  ; $65fd: $01 $7f $07
    scf                                           ; $6600: $37
    rlca                                          ; $6601: $07
    db $fc                                        ; $6602: $fc
    jp hl                                         ; $6603: $e9


    or l                                          ; $6604: $b5
    rst $38                                       ; $6605: $ff
    rst $38                                       ; $6606: $ff
    db $ec                                        ; $6607: $ec
    ld a, d                                       ; $6608: $7a
    jr nc, jr_02b_65ed                            ; $6609: $30 $e2

    ccf                                           ; $660b: $3f
    nop                                           ; $660c: $00
    rst $38                                       ; $660d: $ff
    ldh [$7f], a                                  ; $660e: $e0 $7f
    rst $38                                       ; $6610: $ff
    dec a                                         ; $6611: $3d
    ld b, d                                       ; $6612: $42
    ld a, [hl+]                                   ; $6613: $2a
    ld d, l                                       ; $6614: $55
    xor a                                         ; $6615: $af
    rrca                                          ; $6616: $0f
    rst $38                                       ; $6617: $ff
    rrca                                          ; $6618: $0f
    ld sp, hl                                     ; $6619: $f9
    rst $28                                       ; $661a: $ef
    db $fc                                        ; $661b: $fc
    ldh [rIE], a                                  ; $661c: $e0 $ff
    ldh [rIE], a                                  ; $661e: $e0 $ff
    ld c, a                                       ; $6620: $4f
    cp b                                          ; $6621: $b8
    adc a                                         ; $6622: $8f
    ld a, h                                       ; $6623: $7c
    sbc a                                         ; $6624: $9f
    ld a, [c]                                     ; $6625: $f2
    ldh a, [$f7]                                  ; $6626: $f0 $f7
    ldh a, [$f3]                                  ; $6628: $f0 $f3
    db $fc                                        ; $662a: $fc
    ldh [rIE], a                                  ; $662b: $e0 $ff
    ldh [$f7], a                                  ; $662d: $e0 $f7
    sbc a                                         ; $662f: $9f
    ld d, e                                       ; $6630: $53
    inc b                                         ; $6631: $04
    ld a, [c]                                     ; $6632: $f2
    dec b                                         ; $6633: $05
    xor a                                         ; $6634: $af
    ld [de], a                                    ; $6635: $12
    ldh [$fe], a                                  ; $6636: $e0 $fe
    pop hl                                        ; $6638: $e1
    ld bc, $00ff                                  ; $6639: $01 $ff $00
    ld bc, $43ff                                  ; $663c: $01 $ff $43
    cp a                                          ; $663f: $bf
    add e                                         ; $6640: $83
    ld a, a                                       ; $6641: $7f
    inc [hl]                                      ; $6642: $34
    rst $38                                       ; $6643: $ff
    ld c, e                                       ; $6644: $4b
    add hl, hl                                    ; $6645: $29
    ld d, [hl]                                    ; $6646: $56
    inc d                                         ; $6647: $14
    ld l, e                                       ; $6648: $6b
    jr nz, @+$61                                  ; $6649: $20 $5f

    ld [$77ff], sp                                ; $664b: $08 $ff $77
    jr nz, jr_02b_66af                            ; $664e: $20 $5f

    nop                                           ; $6650: $00
    ld a, a                                       ; $6651: $7f
    rst $38                                       ; $6652: $ff
    ld a, a                                       ; $6653: $7f
    rrca                                          ; $6654: $0f
    ld a, a                                       ; $6655: $7f
    ld a, [$fd0f]                                 ; $6656: $fa $0f $fd
    ld c, $f0                                     ; $6659: $0e $f0
    nop                                           ; $665b: $00
    rst $38                                       ; $665c: $ff
    cp $e3                                        ; $665d: $fe $e3
    rst $38                                       ; $665f: $ff
    rst $38                                       ; $6660: $ff
    rst $38                                       ; $6661: $ff
    pop af                                        ; $6662: $f1
    ld b, $f2                                     ; $6663: $06 $f2
    dec b                                         ; $6665: $05
    add b                                         ; $6666: $80
    rlca                                          ; $6667: $07
    xor [hl]                                      ; $6668: $ae
    ldh a, [$e7]                                  ; $6669: $f0 $e7
    dec b                                         ; $666b: $05
    rst $38                                       ; $666c: $ff
    inc bc                                        ; $666d: $03
    db $fc                                        ; $666e: $fc
    ldh [rNR13], a                                ; $666f: $e0 $13
    db $fc                                        ; $6671: $fc
    ld [c], a                                     ; $6672: $e2
    ld b, l                                       ; $6673: $45
    cp $73                                        ; $6674: $fe $73
    ldh [$c3], a                                  ; $6676: $e0 $c3
    pop bc                                        ; $6678: $c1
    cp a                                          ; $6679: $bf
    add a                                         ; $667a: $87
    cp $8c                                        ; $667b: $fe $8c
    ld sp, hl                                     ; $667d: $f9
    rst $38                                       ; $667e: $ff
    sbc b                                         ; $667f: $98
    di                                            ; $6680: $f3
    or e                                          ; $6681: $b3
    or $a6                                        ; $6682: $f6 $a6
    db $ec                                        ; $6684: $ec
    db $e4                                        ; $6685: $e4
    db $ec                                        ; $6686: $ec

jr_02b_6687:
    rst $38                                       ; $6687: $ff
    ret z                                         ; $6688: $c8

    ldh a, [$e0]                                  ; $6689: $f0 $e0
    adc [hl]                                      ; $668b: $8e
    nop                                           ; $668c: $00
    ld a, [hl]                                    ; $668d: $7e
    inc a                                         ; $668e: $3c
    ld [$c0ef], a                                 ; $668f: $ea $ef $c0
    add d                                         ; $6692: $82
    nop                                           ; $6693: $00
    ld [bc], a                                    ; $6694: $02
    cp $e2                                        ; $6695: $fe $e2
    ret c                                         ; $6697: $d8

    ret z                                         ; $6698: $c8

    ret c                                         ; $6699: $d8

    ccf                                           ; $669a: $3f
    ret nc                                        ; $669b: $d0

    ret c                                         ; $669c: $d8

    sub b                                         ; $669d: $90
    or b                                          ; $669e: $b0
    sub b                                         ; $669f: $90
    cp b                                          ; $66a0: $b8
    db $fc                                        ; $66a1: $fc
    ldh [$fe], a                                  ; $66a2: $e0 $fe
    pop hl                                        ; $66a4: $e1
    cp [hl]                                       ; $66a5: $be
    ld [$02e0], a                                 ; $66a6: $ea $e0 $02
    ld c, $00                                     ; $66a9: $0e $00
    ld [de], a                                    ; $66ab: $12
    ld [bc], a                                    ; $66ac: $02
    cp $e0                                        ; $66ad: $fe $e0

jr_02b_66af:
    ld [de], a                                    ; $66af: $12
    rst $28                                       ; $66b0: $ef
    ld e, $0e                                     ; $66b1: $1e $0e
    ld c, $02                                     ; $66b3: $0e $02
    and $e3                                       ; $66b5: $e6 $e3
    cp d                                          ; $66b7: $ba
    sub b                                         ; $66b8: $90
    cp a                                          ; $66b9: $bf
    adc a                                         ; $66ba: $8f
    sbc l                                         ; $66bb: $9d
    cp a                                          ; $66bc: $bf
    add b                                         ; $66bd: $80
    add b                                         ; $66be: $80
    ld [hl], b                                    ; $66bf: $70
    ret nz                                        ; $66c0: $c0

    ldh [$e1], a                                  ; $66c1: $e0 $e1
    add $e1                                       ; $66c3: $c6 $e1
    cp $fb                                        ; $66c5: $fe $fb
    ld b, b                                       ; $66c7: $40
    cp $2c                                        ; $66c8: $fe $2c
    ldh [rIE], a                                  ; $66ca: $e0 $ff
    rst $38                                       ; $66cc: $ff
    sub b                                         ; $66cd: $90
    add b                                         ; $66ce: $80
    ret z                                         ; $66cf: $c8

    rst $38                                       ; $66d0: $ff
    ld b, b                                       ; $66d1: $40
    ld h, h                                       ; $66d2: $64
    jr nz, jr_02b_6687                            ; $66d3: $20 $b2

    db $10                                        ; $66d5: $10
    ld e, c                                       ; $66d6: $59
    ld [$f32c], sp                                ; $66d7: $08 $2c $f3
    inc b                                         ; $66da: $04
    ld d, $f0                                     ; $66db: $16 $f0
    ret nz                                        ; $66dd: $c0

    ld b, b                                       ; $66de: $40
    jp nz, Jump_02b_7f05                          ; $66df: $c2 $05 $7f

    ld a, [hl+]                                   ; $66e2: $2a
    rst $38                                       ; $66e3: $ff
    rst $38                                       ; $66e4: $ff
    ld e, a                                       ; $66e5: $5f
    rst $38                                       ; $66e6: $ff
    inc h                                         ; $66e7: $24
    cp $12                                        ; $66e8: $fe $12
    dec hl                                        ; $66ea: $2b
    ld bc, $7f03                                  ; $66eb: $01 $03 $7f
    nop                                           ; $66ee: $00
    db $fd                                        ; $66ef: $fd
    add hl, hl                                    ; $66f0: $29
    rst $38                                       ; $66f1: $ff
    ld d, l                                       ; $66f2: $55
    rst $38                                       ; $66f3: $ff
    db $fd                                        ; $66f4: $fd
    add sp, -$40                                  ; $66f5: $e8 $c0
    rst $18                                       ; $66f7: $df
    inc h                                         ; $66f8: $24
    ei                                            ; $66f9: $fb
    ld c, b                                       ; $66fa: $48
    ret nc                                        ; $66fb: $d0

    sub b                                         ; $66fc: $90
    ret nc                                        ; $66fd: $d0

jr_02b_66fe:
    pop hl                                        ; $66fe: $e1
    jr nz, jr_02b_6701                            ; $66ff: $20 $00

jr_02b_6701:
    rst $38                                       ; $6701: $ff
    rst $30                                       ; $6702: $f7
    nop                                           ; $6703: $00
    rst $30                                       ; $6704: $f7
    jr nz, jr_02b_66fe                            ; $6705: $20 $f7

    ld d, l                                       ; $6707: $55
    rst $30                                       ; $6708: $f7
    or d                                          ; $6709: $b2
    rst $38                                       ; $670a: $ff
    rst $38                                       ; $670b: $ff
    rst $30                                       ; $670c: $f7
    add hl, bc                                    ; $670d: $09
    ld bc, $0213                                  ; $670e: $01 $13 $02
    inc b                                         ; $6711: $04
    nop                                           ; $6712: $00
    rst $38                                       ; $6713: $ff
    ei                                            ; $6714: $fb
    db $10                                        ; $6715: $10
    ei                                            ; $6716: $fb
    xor b                                         ; $6717: $a8
    rst $38                                       ; $6718: $ff
    ld e, c                                       ; $6719: $59
    ei                                            ; $671a: $fb
    ld a, [$ffff]                                 ; $671b: $fa $ff $ff
    ei                                            ; $671e: $fb
    nop                                           ; $671f: $00
    rst $38                                       ; $6720: $ff
    inc sp                                        ; $6721: $33
    call z, $804c                                 ; $6722: $cc $4c $80
    rst $38                                       ; $6725: $ff
    ld c, l                                       ; $6726: $4d
    add b                                         ; $6727: $80
    ld [hl-], a                                   ; $6728: $32
    call $ca35                                    ; $6729: $cd $35 $ca
    ld c, b                                       ; $672c: $48
    add a                                         ; $672d: $87
    ld [hl], e                                    ; $672e: $73
    ld d, l                                       ; $672f: $55
    adc d                                         ; $6730: $8a
    inc e                                         ; $6731: $1c
    ldh [$98], a                                  ; $6732: $e0 $98
    pop hl                                        ; $6734: $e1
    nop                                           ; $6735: $00
    xor b                                         ; $6736: $a8
    ld d, a                                       ; $6737: $57
    ld b, l                                       ; $6738: $45
    ret nz                                        ; $6739: $c0

    rst $38                                       ; $673a: $ff
    ld a, [$d52a]                                 ; $673b: $fa $2a $d5
    nop                                           ; $673e: $00
    rst $38                                       ; $673f: $ff
    ld [$bb15], a                                 ; $6740: $ea $15 $bb
    rst $38                                       ; $6743: $ff
    nop                                           ; $6744: $00
    ld [$0015], a                                 ; $6745: $ea $15 $00
    rst $38                                       ; $6748: $ff
    ld a, [hl+]                                   ; $6749: $2a
    push de                                       ; $674a: $d5
    ld d, l                                       ; $674b: $55
    rst $38                                       ; $674c: $ff
    xor d                                         ; $674d: $aa
    cp a                                          ; $674e: $bf
    ld b, b                                       ; $674f: $40
    ld e, b                                       ; $6750: $58
    add a                                         ; $6751: $87
    ld d, b                                       ; $6752: $50
    adc a                                         ; $6753: $8f
    ld a, c                                       ; $6754: $79
    cp a                                          ; $6755: $bf
    add [hl]                                      ; $6756: $86
    ld d, b                                       ; $6757: $50
    adc a                                         ; $6758: $8f
    ld [hl], b                                    ; $6759: $70
    adc a                                         ; $675a: $8f
    ld e, c                                       ; $675b: $59
    ld a, [$58e0]                                 ; $675c: $fa $e0 $58
    rst $38                                       ; $675f: $ff
    add a                                         ; $6760: $87
    ld d, a                                       ; $6761: $57
    xor b                                         ; $6762: $a8
    cp l                                          ; $6763: $bd
    ld b, d                                       ; $6764: $42
    ld l, a                                       ; $6765: $6f
    sub b                                         ; $6766: $90
    cp a                                          ; $6767: $bf
    rst $38                                       ; $6768: $ff
    ld b, b                                       ; $6769: $40
    cp a                                          ; $676a: $bf
    ld b, b                                       ; $676b: $40
    ld l, a                                       ; $676c: $6f
    sub b                                         ; $676d: $90
    cp l                                          ; $676e: $bd
    ld b, d                                       ; $676f: $42
    ld d, a                                       ; $6770: $57
    rst $20                                       ; $6771: $e7
    xor b                                         ; $6772: $a8
    rst $28                                       ; $6773: $ef
    db $10                                        ; $6774: $10
    push de                                       ; $6775: $d5
    call nz, $c2cd                                ; $6776: $c4 $cd $c2
    rst $28                                       ; $6779: $ef
    db $10                                        ; $677a: $10
    ld a, a                                       ; $677b: $7f
    rst $38                                       ; $677c: $ff
    rst $38                                       ; $677d: $ff
    add b                                         ; $677e: $80
    ret nz                                        ; $677f: $c0

    sub c                                         ; $6780: $91
    add b                                         ; $6781: $80
    xor a                                         ; $6782: $af
    add a                                         ; $6783: $87
    xor d                                         ; $6784: $aa
    rst $38                                       ; $6785: $ff
    adc h                                         ; $6786: $8c
    xor [hl]                                      ; $6787: $ae
    adc c                                         ; $6788: $89
    adc l                                         ; $6789: $8d
    adc d                                         ; $678a: $8a
    xor [hl]                                      ; $678b: $ae
    adc c                                         ; $678c: $89
    rst $38                                       ; $678d: $ff
    rst $38                                       ; $678e: $ff
    rst $38                                       ; $678f: $ff
    ld [hl], b                                    ; $6790: $70
    jr nz, jr_02b_6807                            ; $6791: $20 $74

    jr nz, @+$01                                  ; $6793: $20 $ff

    rst $38                                       ; $6795: $ff
    cp [hl]                                       ; $6796: $be
    rst $38                                       ; $6797: $ff
    inc b                                         ; $6798: $04
    cp [hl]                                       ; $6799: $be
    ld c, c                                       ; $679a: $49
    ld e, l                                       ; $679b: $5d
    xor d                                         ; $679c: $aa
    inc a                                         ; $679d: $3c
    sra b                                         ; $679e: $cb $28
    rst $38                                       ; $67a0: $ff
    adc e                                         ; $67a1: $8b
    ld l, [hl]                                    ; $67a2: $6e
    add hl, bc                                    ; $67a3: $09
    dec e                                         ; $67a4: $1d
    ld a, [bc]                                    ; $67a5: $0a
    rst $38                                       ; $67a6: $ff
    ldh a, [$bf]                                  ; $67a7: $f0 $bf
    rst $38                                       ; $67a9: $ff
    add hl, bc                                    ; $67aa: $09
    cp [hl]                                       ; $67ab: $be
    ld b, [hl]                                    ; $67ac: $46
    ld e, a                                       ; $67ad: $5f
    and h                                         ; $67ae: $a4
    ld a, $c9                                     ; $67af: $3e $c9
    adc b                                         ; $67b1: $88
    rst $38                                       ; $67b2: $ff
    adc e                                         ; $67b3: $8b
    sbc $89                                       ; $67b4: $de $89
    db $fd                                        ; $67b6: $fd
    ld a, [$88df]                                 ; $67b7: $fa $df $88
    adc a                                         ; $67ba: $8f
    rst $38                                       ; $67bb: $ff
    adc e                                         ; $67bc: $8b
    xor [hl]                                      ; $67bd: $ae
    adc h                                         ; $67be: $8c
    adc a                                         ; $67bf: $8f
    adc b                                         ; $67c0: $88
    xor h                                         ; $67c1: $ac
    adc e                                         ; $67c2: $8b
    ld a, $ff                                     ; $67c3: $3e $ff
    ret                                           ; $67c5: $c9


    rra                                           ; $67c6: $1f
    db $e4                                        ; $67c7: $e4
    xor e                                         ; $67c8: $ab
    ld d, d                                       ; $67c9: $52
    rst $18                                       ; $67ca: $df
    dec h                                         ; $67cb: $25
    ei                                            ; $67cc: $fb
    ld a, a                                       ; $67cd: $7f
    adc b                                         ; $67ce: $88
    rst $30                                       ; $67cf: $f7
    ld d, b                                       ; $67d0: $50
    cp $21                                        ; $67d1: $fe $21
    ld a, l                                       ; $67d3: $7d
    sub d                                         ; $67d4: $92
    or b                                          ; $67d5: $b0
    pop hl                                        ; $67d6: $e1
    rst $38                                       ; $67d7: $ff
    sbc [hl]                                      ; $67d8: $9e
    add b                                         ; $67d9: $80
    cp c                                          ; $67da: $b9
    add b                                         ; $67db: $80
    or a                                          ; $67dc: $b7
    add e                                         ; $67dd: $83
    or l                                          ; $67de: $b5
    add h                                         ; $67df: $84
    rst $38                                       ; $67e0: $ff
    sub a                                         ; $67e1: $97
    add h                                         ; $67e2: $84
    xor [hl]                                      ; $67e3: $ae
    add l                                         ; $67e4: $85
    rst $38                                       ; $67e5: $ff
    rst $38                                       ; $67e6: $ff
    ld c, $04                                     ; $67e7: $0e $04
    rst $38                                       ; $67e9: $ff
    and h                                         ; $67ea: $a4
    inc b                                         ; $67eb: $04
    ld c, $04                                     ; $67ec: $0e $04
    rst $38                                       ; $67ee: $ff
    rst $38                                       ; $67ef: $ff
    ld a, [hl]                                    ; $67f0: $7e
    nop                                           ; $67f1: $00
    rst $28                                       ; $67f2: $ef
    ld d, e                                       ; $67f3: $53
    xor c                                         ; $67f4: $a9
    xor e                                         ; $67f5: $ab
    ld d, a                                       ; $67f6: $57
    ld b, c                                       ; $67f7: $41
    pop hl                                        ; $67f8: $e1
    cp l                                          ; $67f9: $bd

jr_02b_67fa:
    nop                                           ; $67fa: $00
    ld [$55be], sp                                ; $67fb: $08 $be $55
    ret nz                                        ; $67fe: $c0

    ld h, b                                       ; $67ff: $60
    ldh [$8a], a                                  ; $6800: $e0 $8a
    ret nz                                        ; $6802: $c0

    ccf                                           ; $6803: $3f
    ld c, l                                       ; $6804: $4d
    ret nz                                        ; $6805: $c0

    ld [hl], b                                    ; $6806: $70

jr_02b_6807:
    rst $28                                       ; $6807: $ef
    jr nz, @+$27                                  ; $6808: $20 $25

    jr nz, jr_02b_687e                            ; $680a: $20 $72

    adc [hl]                                      ; $680c: $8e
    ldh [$29], a                                  ; $680d: $e0 $29
    inc bc                                        ; $680f: $03
    ld a, [c]                                     ; $6810: $f2
    rst $38                                       ; $6811: $ff
    ld b, $a4                                     ; $6812: $06 $a4
    ld c, h                                       ; $6814: $4c
    sub a                                         ; $6815: $97
    add h                                         ; $6816: $84
    add [hl]                                      ; $6817: $86
    add l                                         ; $6818: $85
    rst $08                                       ; $6819: $cf
    rst $38                                       ; $681a: $ff
    add h                                         ; $681b: $84
    db $fc                                        ; $681c: $fc
    db $fd                                        ; $681d: $fd
    rst $08                                       ; $681e: $cf
    add a                                         ; $681f: $87
    sub [hl]                                      ; $6820: $96
    add [hl]                                      ; $6821: $86
    xor h                                         ; $6822: $ac
    rst $38                                       ; $6823: $ff
    add h                                         ; $6824: $84
    sbc l                                         ; $6825: $9d
    add h                                         ; $6826: $84
    inc e                                         ; $6827: $1c
    xor $59                                       ; $6828: $ee $59
    cp b                                          ; $682a: $b8
    db $e3                                        ; $682b: $e3
    rst $38                                       ; $682c: $ff
    ld [hl], b                                    ; $682d: $70
    call $1fc0                                    ; $682e: $cd $c0 $1f
    add b                                         ; $6831: $80
    ld a, [hl]                                    ; $6832: $7e
    ld bc, $fff5                                  ; $6833: $01 $f5 $ff
    ld a, [bc]                                    ; $6836: $0a
    ld l, b                                       ; $6837: $68
    rla                                           ; $6838: $17
    ld a, a                                       ; $6839: $7f
    nop                                           ; $683a: $00
    ld a, [$d505]                                 ; $683b: $fa $05 $d5
    rst $38                                       ; $683e: $ff
    ld a, [hl+]                                   ; $683f: $2a
    and e                                         ; $6840: $a3
    ld e, h                                       ; $6841: $5c
    ret                                           ; $6842: $c9


    inc sp                                        ; $6843: $33
    sbc a                                         ; $6844: $9f
    ld h, [hl]                                    ; $6845: $66
    ld c, l                                       ; $6846: $4d
    rst $38                                       ; $6847: $ff
    sbc h                                         ; $6848: $9c
    db $fd                                        ; $6849: $fd
    ld [hl-], a                                   ; $684a: $32
    ld [$9018], a                                 ; $684b: $ea $18 $90
    jr nc, jr_02b_67fa                            ; $684e: $30 $aa

    rst $38                                       ; $6850: $ff
    ld h, b                                       ; $6851: $60
    call nz, $ffc0                                ; $6852: $c4 $c0 $ff
    rst $38                                       ; $6855: $ff
    rla                                           ; $6856: $17
    nop                                           ; $6857: $00
    jp nc, $2dff                                  ; $6858: $d2 $ff $2d

    ld c, $f0                                     ; $685b: $0e $f0
    xor h                                         ; $685d: $ac
    add h                                         ; $685e: $84
    sub h                                         ; $685f: $94
    add h                                         ; $6860: $84
    add l                                         ; $6861: $85
    rst $38                                       ; $6862: $ff
    add h                                         ; $6863: $84
    call $fc84                                    ; $6864: $cd $84 $fc
    db $fc                                        ; $6867: $fc
    call z, $9785                                 ; $6868: $cc $85 $97
    rst $38                                       ; $686b: $ff
    add a                                         ; $686c: $87
    xor [hl]                                      ; $686d: $ae
    add h                                         ; $686e: $84
    ld a, [c]                                     ; $686f: $f2
    inc c                                         ; $6870: $0c
    and $19                                       ; $6871: $e6 $19
    db $db                                        ; $6873: $db
    rst $38                                       ; $6874: $ff
    daa                                           ; $6875: $27
    ld c, a                                       ; $6876: $4f
    sbc l                                         ; $6877: $9d
    add hl, sp                                    ; $6878: $39
    ld [hl], c                                    ; $6879: $71
    push hl                                       ; $687a: $e5
    pop bc                                        ; $687b: $c1
    sub e                                         ; $687c: $93
    rst $38                                       ; $687d: $ff

jr_02b_687e:
    ld bc, $0105                                  ; $687e: $01 $05 $01
    ld [hl], b                                    ; $6881: $70
    rst $28                                       ; $6882: $ef
    push hl                                       ; $6883: $e5
    sbc d                                         ; $6884: $9a
    add hl, bc                                    ; $6885: $09
    rst $38                                       ; $6886: $ff
    ld [hl], l                                    ; $6887: $75
    jp Jump_000_0e3b                              ; $6888: $c3 $3b $0e


    halt                                          ; $688b: $76
    call $9934                                    ; $688c: $cd $34 $99
    rst $38                                       ; $688f: $ff
    ld l, l                                       ; $6890: $6d
    sbc e                                         ; $6891: $9b
    ld l, c                                       ; $6892: $69
    ld a, a                                       ; $6893: $7f
    adc a                                         ; $6894: $8f
    ldh a, [$78]                                  ; $6895: $f0 $78
    add a                                         ; $6897: $87
    rst $38                                       ; $6898: $ff
    jp $1c3f                                      ; $6899: $c3 $3f $1c


    cp $61                                        ; $689c: $fe $61
    ret nc                                        ; $689e: $d0

    adc a                                         ; $689f: $8f
    ret nz                                        ; $68a0: $c0

    rst $38                                       ; $68a1: $ff
    ccf                                           ; $68a2: $3f
    add b                                         ; $68a3: $80
    ld a, a                                       ; $68a4: $7f
    rst $38                                       ; $68a5: $ff
    rst $38                                       ; $68a6: $ff
    jp nz, $e0c0                                  ; $68a7: $c2 $c0 $e0

    rst $38                                       ; $68aa: $ff
    and b                                         ; $68ab: $a0
    or e                                          ; $68ac: $b3
    sub a                                         ; $68ad: $97
    sub b                                         ; $68ae: $90
    adc h                                         ; $68af: $8c
    adc c                                         ; $68b0: $89
    adc b                                         ; $68b1: $88
    xor d                                         ; $68b2: $aa
    cp a                                          ; $68b3: $bf
    adc b                                         ; $68b4: $88
    adc d                                         ; $68b5: $8a
    adc b                                         ; $68b6: $88
    rst $38                                       ; $68b7: $ff
    rst $38                                       ; $68b8: $ff
    jr z, @+$2a                                   ; $68b9: $28 $28

    jp nz, $bf03                                  ; $68bb: $c2 $03 $bf

    ld bc, $0113                                  ; $68be: $01 $13 $01
    add c                                         ; $68c1: $81
    ld a, a                                       ; $68c2: $7f
    ld d, c                                       ; $68c3: $51
    ld sp, $15a0                                  ; $68c4: $31 $a0 $15
    cp $d6                                        ; $68c7: $fe $d6
    and b                                         ; $68c9: $a0
    rst $38                                       ; $68ca: $ff
    rst $38                                       ; $68cb: $ff
    add b                                         ; $68cc: $80
    nop                                           ; $68cd: $00
    sub h                                         ; $68ce: $94
    nop                                           ; $68cf: $00
    adc c                                         ; $68d0: $89
    db $fd                                        ; $68d1: $fd
    ld a, [hl]                                    ; $68d2: $7e
    adc [hl]                                      ; $68d3: $8e
    and c                                         ; $68d4: $a1
    ld d, e                                       ; $68d5: $53
    inc bc                                        ; $68d6: $03
    add a                                         ; $68d7: $87
    dec b                                         ; $68d8: $05
    call $ffe9                                    ; $68d9: $cd $e9 $ff
    add hl, bc                                    ; $68dc: $09
    ld sp, $1199                                  ; $68dd: $31 $99 $11
    ld d, l                                       ; $68e0: $55
    ld de, $1159                                  ; $68e1: $11 $59 $11
    rst $30                                       ; $68e4: $f7
    xor d                                         ; $68e5: $aa
    adc b                                         ; $68e6: $88
    xor b                                         ; $68e7: $a8
    ret z                                         ; $68e8: $c8

    ldh [$88], a                                  ; $68e9: $e0 $88
    adc b                                         ; $68eb: $88
    xor l                                         ; $68ec: $ad
    adc b                                         ; $68ed: $88
    ld [hl], a                                    ; $68ee: $77
    adc a                                         ; $68ef: $8f
    adc a                                         ; $68f0: $8f
    adc l                                         ; $68f1: $8d
    ld hl, sp-$20                                 ; $68f2: $f8 $e0
    xor e                                         ; $68f4: $ab
    rst $38                                       ; $68f5: $ff
    push af                                       ; $68f6: $f5
    db $fd                                        ; $68f7: $fd
    adc d                                         ; $68f8: $8a
    rst $18                                       ; $68f9: $df
    ld d, b                                       ; $68fa: $50
    rst $38                                       ; $68fb: $ff
    xor d                                         ; $68fc: $aa
    rst $38                                       ; $68fd: $ff
    ld [hl], l                                    ; $68fe: $75
    db $eb                                        ; $68ff: $eb
    adc b                                         ; $6900: $88
    ld e, l                                       ; $6901: $5d
    ld de, $17ff                                  ; $6902: $11 $ff $17
    add hl, de                                    ; $6905: $19
    ld d, c                                       ; $6906: $51
    dec e                                         ; $6907: $1d
    inc de                                        ; $6908: $13
    dec e                                         ; $6909: $1d
    or e                                          ; $690a: $b3

Call_02b_690b:
    dec e                                         ; $690b: $1d
    ld a, a                                       ; $690c: $7f
    ld sp, hl                                     ; $690d: $f9
    rst $38                                       ; $690e: $ff
    or e                                          ; $690f: $b3
    dec e                                         ; $6910: $1d
    add hl, de                                    ; $6911: $19
    rra                                           ; $6912: $1f
    adc d                                         ; $6913: $8a
    call nz, $dde0                                ; $6914: $c4 $e0 $dd
    adc d                                         ; $6917: $8a
    add [hl]                                      ; $6918: $86
    ld [c], a                                     ; $6919: $e2
    xor c                                         ; $691a: $a9
    adc b                                         ; $691b: $88
    xor h                                         ; $691c: $ac
    and b                                         ; $691d: $a0
    ret nz                                        ; $691e: $c0

    inc e                                         ; $691f: $1c

Jump_02b_6920:
    inc c                                         ; $6920: $0c
    rst $38                                       ; $6921: $ff
    ld d, e                                       ; $6922: $53
    ld [de], a                                    ; $6923: $12
    ld de, $f311                                  ; $6924: $11 $11 $f3
    ld h, b                                       ; $6927: $60
    adc c                                         ; $6928: $89
    add b                                         ; $6929: $80
    rst $38                                       ; $692a: $ff
    add a                                         ; $692b: $87
    add b                                         ; $692c: $80
    ld c, a                                       ; $692d: $4f
    ld b, d                                       ; $692e: $42
    rst $30                                       ; $692f: $f7
    ld b, c                                       ; $6930: $41
    nop                                           ; $6931: $00
    nop                                           ; $6932: $00
    rst $38                                       ; $6933: $ff
    ld [hl], h                                    ; $6934: $74
    ld h, b                                       ; $6935: $60
    sub b                                         ; $6936: $90
    sub b                                         ; $6937: $90
    ld e, [hl]                                    ; $6938: $5e
    inc e                                         ; $6939: $1c
    or [hl]                                       ; $693a: $b6
    ld [bc], a                                    ; $693b: $02
    rst $38                                       ; $693c: $ff
    xor $02                                       ; $693d: $ee $02
    cp $84                                        ; $693f: $fe $84
    cp $52                                        ; $6941: $fe $52
    sbc a                                         ; $6943: $9f
    add d                                         ; $6944: $82
    rst $38                                       ; $6945: $ff
    rst $08                                       ; $6946: $cf
    add l                                         ; $6947: $85
    ld a, a                                       ; $6948: $7f
    ld [hl], d                                    ; $6949: $72

Jump_02b_694a:
    ld c, a                                       ; $694a: $4f
    ld a, a                                       ; $694b: $7f
    jr nz, jr_02b_698d                            ; $694c: $20 $3f

    rst $28                                       ; $694e: $ef
    ld hl, $9f3f                                  ; $694f: $21 $3f $9f
    rra                                           ; $6952: $1f
    ld a, b                                       ; $6953: $78
    and b                                         ; $6954: $a0
    xor d                                         ; $6955: $aa
    cp $d4                                        ; $6956: $fe $d4
    rst $38                                       ; $6958: $ff
    db $fc                                        ; $6959: $fc
    db $fc                                        ; $695a: $fc
    db $f4                                        ; $695b: $f4

jr_02b_695c:
    db $fc                                        ; $695c: $fc
    xor h                                         ; $695d: $ac
    ld hl, sp+$5e                                 ; $695e: $f8 $5e
    ld a, [$ffff]                                 ; $6960: $fa $ff $ff
    db $fd                                        ; $6963: $fd
    cp $2a                                        ; $6964: $fe $2a
    rlca                                          ; $6966: $07
    rlca                                          ; $6967: $07
    ld h, $07                                     ; $6968: $26 $07
    ld a, l                                       ; $696a: $7d

jr_02b_696b:
    ld b, $7a                                     ; $696b: $06 $7a
    add b                                         ; $696d: $80
    cp $ff                                        ; $696e: $fe $ff
    ret nz                                        ; $6970: $c0

    rst $38                                       ; $6971: $ff
    xor $fc                                       ; $6972: $ee $fc
    ldh [rIE], a                                  ; $6974: $e0 $ff
    add b                                         ; $6976: $80
    add b                                         ; $6977: $80
    ld c, b                                       ; $6978: $48
    ret nz                                        ; $6979: $c0

    jr nz, jr_02b_695c                            ; $697a: $20 $e0

    ld [hl], d                                    ; $697c: $72
    ldh a, [rIE]                                  ; $697d: $f0 $ff
    ld [$04f8], sp                                ; $697f: $08 $f8 $04
    db $fc                                        ; $6982: $fc
    cp [hl]                                       ; $6983: $be
    cp $01                                        ; $6984: $fe $01
    rst $38                                       ; $6986: $ff
    rst $38                                       ; $6987: $ff
    ld a, a                                       ; $6988: $7f
    ld a, a                                       ; $6989: $7f
    ld [bc], a                                    ; $698a: $02
    inc bc                                        ; $698b: $03
    ld b, e                                       ; $698c: $43

jr_02b_698d:
    inc bc                                        ; $698d: $03
    ld l, d                                       ; $698e: $6a
    inc bc                                        ; $698f: $03
    rst $38                                       ; $6990: $ff
    ld h, d                                       ; $6991: $62

jr_02b_6992:
    inc bc                                        ; $6992: $03
    ld [hl+], a                                   ; $6993: $22
    inc hl                                        ; $6994: $23
    ld c, $07                                     ; $6995: $0e $07
    inc bc                                        ; $6997: $03
    ld bc, $ffff                                  ; $6998: $01 $ff $ff
    rst $38                                       ; $699b: $ff
    ret nz                                        ; $699c: $c0

    ret nz                                        ; $699d: $c0

    ld c, [hl]                                    ; $699e: $4e
    ret nz                                        ; $699f: $c0

    call c, $ffc0                                 ; $69a0: $dc $c0 $ff
    ld b, b                                       ; $69a3: $40
    ret nz                                        ; $69a4: $c0

    db $f4                                        ; $69a5: $f4
    ret nz                                        ; $69a6: $c0

    ld a, d                                       ; $69a7: $7a
    ldh [$f4], a                                  ; $69a8: $e0 $f4
    add b                                         ; $69aa: $80
    rst $38                                       ; $69ab: $ff
    nop                                           ; $69ac: $00
    nop                                           ; $69ad: $00
    inc h                                         ; $69ae: $24
    nop                                           ; $69af: $00
    jr nc, jr_02b_69b2                            ; $69b0: $30 $00

jr_02b_69b2:
    ld [de], a                                    ; $69b2: $12
    nop                                           ; $69b3: $00
    rst $38                                       ; $69b4: $ff
    ld b, $00                                     ; $69b5: $06 $00
    ld h, [hl]                                    ; $69b7: $66
    ld [bc], a                                    ; $69b8: $02
    inc [hl]                                      ; $69b9: $34
    inc d                                         ; $69ba: $14
    nop                                           ; $69bb: $00
    nop                                           ; $69bc: $00
    db $dd                                        ; $69bd: $dd
    ret nz                                        ; $69be: $c0

    and [hl]                                      ; $69bf: $a6
    ld h, b                                       ; $69c0: $60
    sub [hl]                                      ; $69c1: $96
    nop                                           ; $69c2: $00
    call nz, $e0f8                                ; $69c3: $c4 $f8 $e0
    sbc b                                         ; $69c6: $98
    nop                                           ; $69c7: $00
    rst $10                                       ; $69c8: $d7
    adc h                                         ; $69c9: $8c
    ld [$87c0], sp                                ; $69ca: $08 $c0 $87
    add b                                         ; $69cd: $80
    sbc c                                         ; $69ce: $99
    inc [hl]                                      ; $69cf: $34
    add b                                         ; $69d0: $80
    ld h, b                                       ; $69d1: $60
    nop                                           ; $69d2: $00
    db $ed                                        ; $69d3: $ed
    ld [hl-], a                                   ; $69d4: $32
    sbc $e0                                       ; $69d5: $de $e0
    inc h                                         ; $69d7: $24
    inc b                                         ; $69d8: $04
    ld h, [hl]                                    ; $69d9: $66
    and c                                         ; $69da: $a1
    reti                                          ; $69db: $d9


    nop                                           ; $69dc: $00
    add b                                         ; $69dd: $80
    cp a                                          ; $69de: $bf
    nop                                           ; $69df: $00
    ret z                                         ; $69e0: $c8

    nop                                           ; $69e1: $00
    jp nz, $8600                                  ; $69e2: $c2 $00 $86

    sbc $c0                                       ; $69e5: $de $c0
    ret nz                                        ; $69e7: $c0

    xor [hl]                                      ; $69e8: $ae
    jr jr_02b_696b                                ; $69e9: $18 $80

    jr nz, jr_02b_69ed                            ; $69eb: $20 $00

jr_02b_69ed:
    inc b                                         ; $69ed: $04
    ldh [$e0], a                                  ; $69ee: $e0 $e0
    jr nc, jr_02b_6992                            ; $69f0: $30 $a0

    add b                                         ; $69f2: $80
    ld b, h                                       ; $69f3: $44
    db $fc                                        ; $69f4: $fc
    ld a, [bc]                                    ; $69f5: $0a
    add c                                         ; $69f6: $81
    db $fc                                        ; $69f7: $fc
    push hl                                       ; $69f8: $e5
    add hl, bc                                    ; $69f9: $09
    ld [bc], a                                    ; $69fa: $02
    nop                                           ; $69fb: $00
    dec b                                         ; $69fc: $05
    nop                                           ; $69fd: $00
    inc bc                                        ; $69fe: $03
    rst $38                                       ; $69ff: $ff
    ld [$0000], sp                                ; $6a00: $08 $00 $00
    ld bc, $070a                                  ; $6a03: $01 $0a $07
    jr z, @+$61                                   ; $6a06: $28 $5f

    rst $38                                       ; $6a08: $ff
    nop                                           ; $6a09: $00
    scf                                           ; $6a0a: $37
    ld c, b                                       ; $6a0b: $48
    db $fc                                        ; $6a0c: $fc
    inc bc                                        ; $6a0d: $03
    cp b                                          ; $6a0e: $b8
    ld b, [hl]                                    ; $6a0f: $46
    ldh [rIE], a                                  ; $6a10: $e0 $ff
    rra                                           ; $6a12: $1f
    ccf                                           ; $6a13: $3f
    ld b, b                                       ; $6a14: $40
    ld a, [$7f05]                                 ; $6a15: $fa $05 $7f
    add b                                         ; $6a18: $80
    ldh [rIE], a                                  ; $6a19: $e0 $ff
    rra                                           ; $6a1b: $1f
    nop                                           ; $6a1c: $00
    ld a, [$df00]                                 ; $6a1d: $fa $00 $df
    rrca                                          ; $6a20: $0f
    rst $38                                       ; $6a21: $ff
    ld a, [hl]                                    ; $6a22: $7e
    rst $38                                       ; $6a23: $ff
    rst $38                                       ; $6a24: $ff
    ld b, $01                                     ; $6a25: $06 $01
    dec d                                         ; $6a27: $15
    ld a, [bc]                                    ; $6a28: $0a
    rrca                                          ; $6a29: $0f
    jr nz, @+$1c                                  ; $6a2a: $20 $1a

    rst $38                                       ; $6a2c: $ff
    dec b                                         ; $6a2d: $05
    ld e, $61                                     ; $6a2e: $1e $61
    inc a                                         ; $6a30: $3c
    inc bc                                        ; $6a31: $03
    jr z, jr_02b_6a8b                             ; $6a32: $28 $57

    ld a, b                                       ; $6a34: $78
    rst $38                                       ; $6a35: $ff
    dec b                                         ; $6a36: $05
    pop bc                                        ; $6a37: $c1
    scf                                           ; $6a38: $37
    add e                                         ; $6a39: $83
    ld a, a                                       ; $6a3a: $7f
    ld c, $ff                                     ; $6a3b: $0e $ff
    rra                                           ; $6a3d: $1f
    rst $38                                       ; $6a3e: $ff
    rst $38                                       ; $6a3f: $ff
    ld [hl], $7f                                  ; $6a40: $36 $7f
    inc l                                         ; $6a42: $2c
    db $fc                                        ; $6a43: $fc
    ld a, b                                       ; $6a44: $78
    ld hl, sp-$10                                 ; $6a45: $f8 $f0
    rst $38                                       ; $6a47: $ff
    ld hl, sp-$11                                 ; $6a48: $f8 $ef
    rst $38                                       ; $6a4a: $ff
    ld hl, sp-$04                                 ; $6a4b: $f8 $fc
    pop bc                                        ; $6a4d: $c1
    pop hl                                        ; $6a4e: $e1
    sub a                                         ; $6a4f: $97
    rst $38                                       ; $6a50: $ff
    sub a                                         ; $6a51: $97
    cpl                                           ; $6a52: $2f
    cpl                                           ; $6a53: $2f
    rra                                           ; $6a54: $1f
    rra                                           ; $6a55: $1f
    ld e, a                                       ; $6a56: $5f
    ld e, a                                       ; $6a57: $5f
    cp a                                          ; $6a58: $bf
    rst $38                                       ; $6a59: $ff
    cp a                                          ; $6a5a: $bf
    ld [hl], b                                    ; $6a5b: $70
    rrca                                          ; $6a5c: $0f
    ld d, c                                       ; $6a5d: $51
    and a                                         ; $6a5e: $a7
    and c                                         ; $6a5f: $a1
    ld e, e                                       ; $6a60: $5b
    ld b, c                                       ; $6a61: $41
    rst $38                                       ; $6a62: $ff
    or a                                          ; $6a63: $b7
    and d                                         ; $6a64: $a2
    ld c, e                                       ; $6a65: $4b
    ld bc, $02f7                                  ; $6a66: $01 $f7 $02
    db $eb                                        ; $6a69: $eb
    nop                                           ; $6a6a: $00
    rst $38                                       ; $6a6b: $ff
    and e                                         ; $6a6c: $a3
    or c                                          ; $6a6d: $b1
    pop af                                        ; $6a6e: $f1
    ldh [$e0], a                                  ; $6a6f: $e0 $e0
    ret nz                                        ; $6a71: $c0

    ldh [rLCDC], a                                ; $6a72: $e0 $40
    rst $38                                       ; $6a74: $ff
    ret nz                                        ; $6a75: $c0

    add c                                         ; $6a76: $81
    pop bc                                        ; $6a77: $c1
    nop                                           ; $6a78: $00
    ret nz                                        ; $6a79: $c0

    add c                                         ; $6a7a: $81
    add c                                         ; $6a7b: $81
    ld [bc], a                                    ; $6a7c: $02
    rst $38                                       ; $6a7d: $ff
    add d                                         ; $6a7e: $82
    ld e, a                                       ; $6a7f: $5f
    ld e, a                                       ; $6a80: $5f
    ccf                                           ; $6a81: $3f
    ccf                                           ; $6a82: $3f
    ld d, a                                       ; $6a83: $57
    ld d, a                                       ; $6a84: $57
    xor a                                         ; $6a85: $af
    rst $38                                       ; $6a86: $ff
    xor a                                         ; $6a87: $af
    ld d, l                                       ; $6a88: $55
    ld d, l                                       ; $6a89: $55
    adc d                                         ; $6a8a: $8a

jr_02b_6a8b:
    adc d                                         ; $6a8b: $8a
    ld de, $0211                                  ; $6a8c: $11 $11 $02
    rst $38                                       ; $6a8f: $ff
    ld [bc], a                                    ; $6a90: $02
    rst $38                                       ; $6a91: $ff
    nop                                           ; $6a92: $00
    xor d                                         ; $6a93: $aa
    ld d, l                                       ; $6a94: $55
    ld d, l                                       ; $6a95: $55
    xor d                                         ; $6a96: $aa
    nop                                           ; $6a97: $00
    rst $38                                       ; $6a98: $ff
    rst $38                                       ; $6a99: $ff
    inc a                                         ; $6a9a: $3c
    rst $38                                       ; $6a9b: $ff
    rst $20                                       ; $6a9c: $e7
    rst $38                                       ; $6a9d: $ff
    add c                                         ; $6a9e: $81
    jp $ff00                                      ; $6a9f: $c3 $00 $ff


    nop                                           ; $6aa2: $00
    add $3e                                       ; $6aa3: $c6 $3e
    and h                                         ; $6aa5: $a4
    ld e, [hl]                                    ; $6aa6: $5e
    call z, $a83c                                 ; $6aa7: $cc $3c $a8
    rst $38                                       ; $6aaa: $ff
    ld e, h                                       ; $6aab: $5c
    ret z                                         ; $6aac: $c8

    inc a                                         ; $6aad: $3c
    xor h                                         ; $6aae: $ac
    ld e, h                                       ; $6aaf: $5c
    call nz, $a63e                                ; $6ab0: $c4 $3e $a6
    rst $38                                       ; $6ab3: $ff
    ld e, [hl]                                    ; $6ab4: $5e
    ld b, [hl]                                    ; $6ab5: $46
    cp [hl]                                       ; $6ab6: $be
    add h                                         ; $6ab7: $84
    ld a, [hl]                                    ; $6ab8: $7e
    inc l                                         ; $6ab9: $2c
    call c, Call_02b_7f08                         ; $6aba: $dc $08 $7f
    db $fc                                        ; $6abd: $fc
    inc a                                         ; $6abe: $3c
    cp $e8                                        ; $6abf: $fe $e8
    ld hl, sp-$80                                 ; $6ac1: $f8 $80
    ret z                                         ; $6ac3: $c8

    ld c, e                                       ; $6ac4: $4b
    ld h, b                                       ; $6ac5: $60
    cp $80                                        ; $6ac6: $fe $80
    and b                                         ; $6ac8: $a0
    db $ed                                        ; $6ac9: $ed
    ld [de], a                                    ; $6aca: $12
    jp nc, $e82d                                  ; $6acb: $d2 $2d $e8

    rla                                           ; $6ace: $17
    and c                                         ; $6acf: $a1
    cp a                                          ; $6ad0: $bf
    ld e, a                                       ; $6ad1: $5f
    db $d3                                        ; $6ad2: $d3
    cpl                                           ; $6ad3: $2f
    and [hl]                                      ; $6ad4: $a6
    ld e, a                                       ; $6ad5: $5f
    rst $38                                       ; $6ad6: $ff
    inc sp                                        ; $6ad7: $33
    add b                                         ; $6ad8: $80
    xor d                                         ; $6ad9: $aa
    ld a, [hl]                                    ; $6ada: $7e
    add d                                         ; $6adb: $82
    ld h, b                                       ; $6adc: $60
    inc a                                         ; $6add: $3c
    jp Jump_000_18e7                              ; $6ade: $c3 $e7 $18


    add c                                         ; $6ae1: $81
    ld b, d                                       ; $6ae2: $42
    ret nz                                        ; $6ae3: $c0

    ldh [rIE], a                                  ; $6ae4: $e0 $ff
    ld hl, sp-$5c                                 ; $6ae6: $f8 $a4
    ld a, [$f0cc]                                 ; $6ae8: $fa $cc $f0
    xor b                                         ; $6aeb: $a8
    db $f4                                        ; $6aec: $f4
    ret z                                         ; $6aed: $c8

    rst $38                                       ; $6aee: $ff
    db $f4                                        ; $6aef: $f4
    xor h                                         ; $6af0: $ac
    ldh a, [$c4]                                  ; $6af1: $f0 $c4
    ld a, [$f8a6]                                 ; $6af3: $fa $a6 $f8
    ld b, d                                       ; $6af6: $42
    rst $38                                       ; $6af7: $ff
    db $fc                                        ; $6af8: $fc
    and h                                         ; $6af9: $a4
    ld a, [$f844]                                 ; $6afa: $fa $44 $f8
    ld [$1cf4], sp                                ; $6afd: $08 $f4 $1c
    ld e, a                                       ; $6b00: $5f
    ld [c], a                                     ; $6b01: $e2
    ld l, b                                       ; $6b02: $68
    sub b                                         ; $6b03: $90
    add b                                         ; $6b04: $80
    ld c, b                                       ; $6b05: $48
    sbc $61                                       ; $6b06: $de $61
    cp $ee                                        ; $6b08: $fe $ee
    and b                                         ; $6b0a: $a0
    ld a, [hl]                                    ; $6b0b: $7e
    ld d, a                                       ; $6b0c: $57
    ld b, c                                       ; $6b0d: $41
    ldh [rIE], a                                  ; $6b0e: $e0 $ff
    pop de                                        ; $6b10: $d1
    cp $a2                                        ; $6b11: $fe $a2
    db $fd                                        ; $6b13: $fd
    db $ed                                        ; $6b14: $ed
    jp Jump_02b_5555                              ; $6b15: $c3 $55 $55


    ldh a, [rLCDC]                                ; $6b18: $f0 $40
    xor d                                         ; $6b1a: $aa
    ld a, [$ffe0]                                 ; $6b1b: $fa $e0 $ff
    db $ec                                        ; $6b1e: $ec
    ret nz                                        ; $6b1f: $c0

    inc de                                        ; $6b20: $13
    db $fc                                        ; $6b21: $fc
    db $ec                                        ; $6b22: $ec
    rst $30                                       ; $6b23: $f7
    dec bc                                        ; $6b24: $0b
    nop                                           ; $6b25: $00
    daa                                           ; $6b26: $27
    db $fc                                        ; $6b27: $fc
    ldh [$57], a                                  ; $6b28: $e0 $57
    nop                                           ; $6b2a: $00
    xor [hl]                                      ; $6b2b: $ae
    ld bc, $04a4                                  ; $6b2c: $01 $a4 $04
    and c                                         ; $6b2f: $a1
    cp l                                          ; $6b30: $bd
    push bc                                       ; $6b31: $c5
    ld [bc], a                                    ; $6b32: $02
    cp l                                          ; $6b33: $bd
    pop bc                                        ; $6b34: $c1

jr_02b_6b35:
    ld a, [$20e2]                                 ; $6b35: $fa $e2 $20
    ld b, [hl]                                    ; $6b38: $46
    ld h, b                                       ; $6b39: $60
    ld [$00c3], sp                                ; $6b3a: $08 $c3 $00
    db $10                                        ; $6b3d: $10
    ld c, a                                       ; $6b3e: $4f
    ld b, b                                       ; $6b3f: $40
    add c                                         ; $6b40: $81
    ret nz                                        ; $6b41: $c0

    cp $ee                                        ; $6b42: $fe $ee
    add b                                         ; $6b44: $80
    ld b, [hl]                                    ; $6b45: $46
    ld a, a                                       ; $6b46: $7f
    inc de                                        ; $6b47: $13
    ld l, a                                       ; $6b48: $6f
    ld bc, $0103                                  ; $6b49: $01 $03 $01
    ld hl, $4771                                  ; $6b4c: $21 $71 $47
    cp $94                                        ; $6b4f: $fe $94
    ld e, b                                       ; $6b51: $58
    ret nz                                        ; $6b52: $c0

    rst $38                                       ; $6b53: $ff
    inc b                                         ; $6b54: $04
    rst $38                                       ; $6b55: $ff
    ld d, l                                       ; $6b56: $55
    rra                                           ; $6b57: $1f
    add hl, de                                    ; $6b58: $19
    rra                                           ; $6b59: $1f
    ld d, l                                       ; $6b5a: $55
    rra                                           ; $6b5b: $1f
    db $fd                                        ; $6b5c: $fd
    ld e, a                                       ; $6b5d: $5f
    db $fc                                        ; $6b5e: $fc
    ldh [$9f], a                                  ; $6b5f: $e0 $9f
    rra                                           ; $6b61: $1f
    dec d                                         ; $6b62: $15
    ccf                                           ; $6b63: $3f
    add hl, sp                                    ; $6b64: $39
    rst $38                                       ; $6b65: $ff
    rst $38                                       ; $6b66: $ff
    adc l                                         ; $6b67: $8d
    adc e                                         ; $6b68: $8b
    xor c                                         ; $6b69: $a9
    adc a                                         ; $6b6a: $8f
    adc a                                         ; $6b6b: $8f
    add a                                         ; $6b6c: $87
    sbc e                                         ; $6b6d: $9b
    adc b                                         ; $6b6e: $88
    sbc a                                         ; $6b6f: $9f
    or l                                          ; $6b70: $b5
    sub b                                         ; $6b71: $90
    ld [c], a                                     ; $6b72: $e2
    and b                                         ; $6b73: $a0
    ret nz                                        ; $6b74: $c0

    xor d                                         ; $6b75: $aa
    add b                                         ; $6b76: $80
    ld b, b                                       ; $6b77: $40
    ld b, e                                       ; $6b78: $43
    ld a, [hl+]                                   ; $6b79: $2a
    ld a, a                                       ; $6b7a: $7f
    rst $38                                       ; $6b7b: $ff
    add l                                         ; $6b7c: $85
    ld a, a                                       ; $6b7d: $7f
    ret nc                                        ; $6b7e: $d0

    cpl                                           ; $6b7f: $2f
    ld e, d                                       ; $6b80: $5a
    dec b                                         ; $6b81: $05
    cp c                                          ; $6b82: $b9
    ldh [$fa], a                                  ; $6b83: $e0 $fa
    cpl                                           ; $6b85: $2f
    ld b, d                                       ; $6b86: $42
    xor d                                         ; $6b87: $aa
    sub e                                         ; $6b88: $93
    jr nz, jr_02b_6b35                            ; $6b89: $20 $aa

    rst $38                                       ; $6b8b: $ff
    add d                                         ; $6b8c: $82
    ld a, l                                       ; $6b8d: $7d
    rst $38                                       ; $6b8e: $ff
    rst $38                                       ; $6b8f: $ff
    rst $38                                       ; $6b90: $ff
    rst $30                                       ; $6b91: $f7
    db $fd                                        ; $6b92: $fd
    pop af                                        ; $6b93: $f1
    rst $38                                       ; $6b94: $ff
    db $e3                                        ; $6b95: $e3
    db $fd                                        ; $6b96: $fd
    rla                                           ; $6b97: $17
    rst $38                                       ; $6b98: $ff
    ld sp, hl                                     ; $6b99: $f9
    ld e, c                                       ; $6b9a: $59
    db $ed                                        ; $6b9b: $ed
    dec c                                         ; $6b9c: $0d
    rst $30                                       ; $6b9d: $f7
    cp e                                          ; $6b9e: $bb
    ld b, e                                       ; $6b9f: $43
    rst $38                                       ; $6ba0: $ff
    rst $38                                       ; $6ba1: $ff
    rst $38                                       ; $6ba2: $ff
    cpl                                           ; $6ba3: $2f
    rst $38                                       ; $6ba4: $ff
    ld [bc], a                                    ; $6ba5: $02
    add b                                         ; $6ba6: $80
    dec d                                         ; $6ba7: $15
    add b                                         ; $6ba8: $80
    cpl                                           ; $6ba9: $2f

jr_02b_6baa:
    cp $fc                                        ; $6baa: $fe $fc
    ldh [$35], a                                  ; $6bac: $e0 $35
    adc d                                         ; $6bae: $8a
    add b                                         ; $6baf: $80

jr_02b_6bb0:
    nop                                           ; $6bb0: $00
    ld bc, $ff81                                  ; $6bb1: $01 $81 $ff
    rst $28                                       ; $6bb4: $ef
    rst $38                                       ; $6bb5: $ff
    xor e                                         ; $6bb6: $ab
    ld bc, $4e7f                                  ; $6bb7: $01 $7f $4e
    jr nz, @-$01                                  ; $6bba: $20 $fd

    ld bc, $ff0b                                  ; $6bbc: $01 $0b $ff
    push af                                       ; $6bbf: $f5
    nop                                           ; $6bc0: $00
    ld bc, $8199                                  ; $6bc1: $01 $99 $81
    db $e3                                        ; $6bc4: $e3
    db $e3                                        ; $6bc5: $e3
    ld hl, $a1ef                                  ; $6bc6: $21 $ef $a1
    add c                                         ; $6bc9: $81
    and c                                         ; $6bca: $a1
    pop bc                                        ; $6bcb: $c1
    cp $e0                                        ; $6bcc: $fe $e0
    jp Jump_000_00a3                              ; $6bce: $c3 $a3 $00


    rst $38                                       ; $6bd1: $ff
    add b                                         ; $6bd2: $80
    dec h                                         ; $6bd3: $25
    add b                                         ; $6bd4: $80
    sub a                                         ; $6bd5: $97
    add a                                         ; $6bd6: $87
    add a                                         ; $6bd7: $87
    add l                                         ; $6bd8: $85
    sub l                                         ; $6bd9: $95
    ei                                            ; $6bda: $fb
    add a                                         ; $6bdb: $87
    add l                                         ; $6bdc: $85
    cp $e0                                        ; $6bdd: $fe $e0
    rst $00                                       ; $6bdf: $c7
    push bc                                       ; $6be0: $c5
    nop                                           ; $6be1: $00
    ld bc, $eda5                                  ; $6be2: $01 $a5 $ed
    ld bc, $ebc0                                  ; $6be5: $01 $c0 $eb
    inc bc                                        ; $6be8: $03
    add e                                         ; $6be9: $83
    ret nz                                        ; $6bea: $c0

    db $eb                                        ; $6beb: $eb
    ret                                           ; $6bec: $c9


    pop bc                                        ; $6bed: $c1
    and $df                                       ; $6bee: $e6 $df
    and $26                                       ; $6bf0: $e6 $26
    and [hl]                                      ; $6bf2: $a6

jr_02b_6bf3:
    add b                                         ; $6bf3: $80
    and b                                         ; $6bf4: $a0
    jp nz, $c7e1                                  ; $6bf5: $c2 $e1 $c7

    and a                                         ; $6bf8: $a7
    cp $c0                                        ; $6bf9: $fe $c0
    pop hl                                        ; $6bfb: $e1
    ld h, a                                       ; $6bfc: $67
    ld h, a                                       ; $6bfd: $67
    ld h, a                                       ; $6bfe: $67
    ld h, l                                       ; $6bff: $65
    push bc                                       ; $6c00: $c5
    rst $00                                       ; $6c01: $c7
    add l                                         ; $6c02: $85
    rst $18                                       ; $6c03: $df
    add a                                         ; $6c04: $87
    dec h                                         ; $6c05: $25
    daa                                           ; $6c06: $27
    rst $20                                       ; $6c07: $e7
    push hl                                       ; $6c08: $e5
    ret nz                                        ; $6c09: $c0

    pop hl                                        ; $6c0a: $e1
    and $e6                                       ; $6c0b: $e6 $e6
    rst $38                                       ; $6c0d: $ff
    jr nz, jr_02b_6bb0                            ; $6c0e: $20 $a0

    add c                                         ; $6c10: $81
    and c                                         ; $6c11: $a1
    ret nz                                        ; $6c12: $c0

    and b                                         ; $6c13: $a0
    add $a6                                       ; $6c14: $c6 $a6
    cp h                                          ; $6c16: $bc
    and b                                         ; $6c17: $a0
    db $e3                                        ; $6c18: $e3
    ldh [$e3], a                                  ; $6c19: $e0 $e3
    ld h, l                                       ; $6c1b: $65
    ld h, a                                       ; $6c1c: $67
    ld h, l                                       ; $6c1d: $65
    ld h, a                                       ; $6c1e: $67
    and b                                         ; $6c1f: $a0
    db $e3                                        ; $6c20: $e3
    ld [hl], c                                    ; $6c21: $71
    rst $38                                       ; $6c22: $ff
    cp $c0                                        ; $6c23: $fe $c0
    ldh a, [$86]                                  ; $6c25: $f0 $86
    pop bc                                        ; $6c27: $c1
    jr jr_02b_6baa                                ; $6c28: $18 $80

    nop                                           ; $6c2a: $00
    rst $38                                       ; $6c2b: $ff
    add b                                         ; $6c2c: $80
    add b                                         ; $6c2d: $80
    ld b, b                                       ; $6c2e: $40
    add b                                         ; $6c2f: $80
    jr nc, jr_02b_6bf3                            ; $6c30: $30 $c1

    adc [hl]                                      ; $6c32: $8e
    ld [hl], a                                    ; $6c33: $77
    rst $38                                       ; $6c34: $ff
    adc a                                         ; $6c35: $8f
    dec c                                         ; $6c36: $0d
    inc bc                                        ; $6c37: $03
    add d                                         ; $6c38: $82
    ld h, c                                       ; $6c39: $61
    ld bc, $0118                                  ; $6c3a: $01 $18 $01
    rst $38                                       ; $6c3d: $ff
    nop                                           ; $6c3e: $00
    inc bc                                        ; $6c3f: $03
    nop                                           ; $6c40: $00
    dec c                                         ; $6c41: $0d
    nop                                           ; $6c42: $00
    ld [hl], e                                    ; $6c43: $73
    adc l                                         ; $6c44: $8d
    ldh [rIE], a                                  ; $6c45: $e0 $ff
    pop de                                        ; $6c47: $d1
    db $eb                                        ; $6c48: $eb
    db $f4                                        ; $6c49: $f4
    or b                                          ; $6c4a: $b0
    ld hl, sp-$1f                                 ; $6c4b: $f8 $e1
    db $f4                                        ; $6c4d: $f4
    ld b, e                                       ; $6c4e: $43
    rst $38                                       ; $6c4f: $ff
    ldh [$c1], a                                  ; $6c50: $e0 $c1
    ldh [$e0], a                                  ; $6c52: $e0 $e0
    ld hl, sp-$47                                 ; $6c54: $f8 $b9
    cp $0f                                        ; $6c56: $fe $0f
    rst $38                                       ; $6c58: $ff
    ld [hl], e                                    ; $6c59: $73
    rst $38                                       ; $6c5a: $ff
    rlca                                          ; $6c5b: $07
    cp l                                          ; $6c5c: $bd
    ld c, a                                       ; $6c5d: $4f
    ld l, a                                       ; $6c5e: $6f
    add a                                         ; $6c5f: $87
    rst $30                                       ; $6c60: $f7
    ld a, a                                       ; $6c61: $7f
    inc bc                                        ; $6c62: $03
    ld a, l                                       ; $6c63: $7d
    add e                                         ; $6c64: $83
    cp b                                          ; $6c65: $b8
    ld b, a                                       ; $6c66: $47
    pop hl                                        ; $6c67: $e1
    rra                                           ; $6c68: $1f
    nop                                           ; $6c69: $00
    nop                                           ; $6c6a: $00
    nop                                           ; $6c6b: $00
    cp a                                          ; $6c6c: $bf
    ld h, d                                       ; $6c6d: $62
    ld d, a                                       ; $6c6e: $57
    ld e, a                                       ; $6c6f: $5f
    ld e, e                                       ; $6c70: $5b
    dec bc                                        ; $6c71: $0b
    inc c                                         ; $6c72: $0c
    rst $38                                       ; $6c73: $ff
    db $e3                                        ; $6c74: $e3
    ld bc, $0097                                  ; $6c75: $01 $97 $00
    ld bc, $fd00                                  ; $6c78: $01 $00 $fd
    ldh [rSB], a                                  ; $6c7b: $e0 $01
    ld hl, sp-$1b                                 ; $6c7d: $f8 $e5
    jp hl                                         ; $6c7f: $e9


    db $e4                                        ; $6c80: $e4
    dec bc                                        ; $6c81: $0b
    sbc a                                         ; $6c82: $9f
    ld e, e                                       ; $6c83: $5b
    ld e, a                                       ; $6c84: $5f
    ld d, a                                       ; $6c85: $57
    ld h, d                                       ; $6c86: $62
    ld h, e                                       ; $6c87: $63
    rst $38                                       ; $6c88: $ff
    db $f4                                        ; $6c89: $f4
    ret nz                                        ; $6c8a: $c0

    pop hl                                        ; $6c8b: $e1
    dec c                                         ; $6c8c: $0d
    ei                                            ; $6c8d: $fb
    ld c, $0f                                     ; $6c8e: $0e $0f
    cp $e1                                        ; $6c90: $fe $e1
    stop                                          ; $6c92: $10 $00
    ld bc, $0202                                  ; $6c94: $01 $02 $02
    cp a                                          ; $6c97: $bf
    ld bc, $1500                                  ; $6c98: $01 $00 $15
    ld d, $16                                     ; $6c9b: $16 $16
    dec d                                         ; $6c9d: $15
    or $e3                                        ; $6c9e: $f6 $e3
    db $10                                        ; $6ca0: $10
    halt                                          ; $6ca1: $76
    jp hl                                         ; $6ca2: $e9


    ld [c], a                                     ; $6ca3: $e2
    ld c, $0d                                     ; $6ca4: $0e $0d
    ret nz                                        ; $6ca6: $c0

    db $fd                                        ; $6ca7: $fd
    ld de, $1312                                  ; $6ca8: $11 $12 $13
    cp $e1                                        ; $6cab: $fe $e1
    rst $38                                       ; $6cad: $ff
    inc d                                         ; $6cae: $14
    ld bc, $0300                                  ; $6caf: $01 $00 $03
    inc b                                         ; $6cb2: $04
    ld bc, $1700                                  ; $6cb3: $01 $00 $17
    rst $38                                       ; $6cb6: $ff
    jr @+$1a                                      ; $6cb7: $18 $18

    rla                                           ; $6cb9: $17
    nop                                           ; $6cba: $00
    ld bc, $0304                                  ; $6cbb: $01 $04 $03
    nop                                           ; $6cbe: $00
    dec de                                        ; $6cbf: $1b
    ld bc, $e914                                  ; $6cc0: $01 $14 $e9
    ld [c], a                                     ; $6cc3: $e2
    ld [de], a                                    ; $6cc4: $12
    ld de, $fd80                                  ; $6cc5: $11 $80 $fd
    ld c, h                                       ; $6cc8: $4c
    pop hl                                        ; $6cc9: $e1
    db $fc                                        ; $6cca: $fc
    db $e3                                        ; $6ccb: $e3
    rst $38                                       ; $6ccc: $ff
    dec b                                         ; $6ccd: $05
    ld b, $00                                     ; $6cce: $06 $00
    ld bc, $1a19                                  ; $6cd0: $01 $19 $1a
    ld a, [de]                                    ; $6cd3: $1a
    add hl, de                                    ; $6cd4: $19
    cpl                                           ; $6cd5: $2f
    ld bc, $0600                                  ; $6cd6: $01 $00 $06
    dec b                                         ; $6cd9: $05
    db $eb                                        ; $6cda: $eb
    and $00                                       ; $6cdb: $e6 $00
    ld b, b                                       ; $6cdd: $40
    db $fd                                        ; $6cde: $fd
    pop bc                                        ; $6cdf: $c1
    push hl                                       ; $6ce0: $e5
    rst $38                                       ; $6ce1: $ff
    dec de                                        ; $6ce2: $1b
    dec de                                        ; $6ce3: $1b
    dec b                                         ; $6ce4: $05
    ld b, $1b                                     ; $6ce5: $06 $1b
    jr nz, @+$23                                  ; $6ce7: $20 $21

    ld [hl+], a                                   ; $6ce9: $22
    rst $38                                       ; $6cea: $ff
    ld [hl+], a                                   ; $6ceb: $22
    ld hl, $1b20                                  ; $6cec: $21 $20 $1b
    ld b, $05                                     ; $6cef: $06 $05
    dec de                                        ; $6cf1: $1b
    dec de                                        ; $6cf2: $1b
    ldh a, [$a8]                                  ; $6cf3: $f0 $a8
    push hl                                       ; $6cf5: $e5
    add b                                         ; $6cf6: $80
    rst $38                                       ; $6cf7: $ff
    ld a, [hl]                                    ; $6cf8: $7e
    db $e3                                        ; $6cf9: $e3
    ret nz                                        ; $6cfa: $c0

    ld [c], a                                     ; $6cfb: $e2
    inc hl                                        ; $6cfc: $23
    inc h                                         ; $6cfd: $24
    dec h                                         ; $6cfe: $25

Jump_02b_6cff:
    dec h                                         ; $6cff: $25
    db $e3                                        ; $6d00: $e3
    inc h                                         ; $6d01: $24
    inc hl                                        ; $6d02: $23
    ret nz                                        ; $6d03: $c0

    ld [c], a                                     ; $6d04: $e2
    add b                                         ; $6d05: $80
    rst $38                                       ; $6d06: $ff
    ret nz                                        ; $6d07: $c0

    jp nz, Jump_02b_5a5c                          ; $6d08: $c2 $5c $5a

    ld e, l                                       ; $6d0b: $5d
    cp l                                          ; $6d0c: $bd
    ld c, d                                       ; $6d0d: $4a
    rst $38                                       ; $6d0e: $ff
    ld [c], a                                     ; $6d0f: $e2
    dec de                                        ; $6d10: $1b
    dec de                                        ; $6d11: $1b
    rlca                                          ; $6d12: $07
    ld [$e580], sp                                ; $6d13: $08 $80 $e5
    ld [$07ef], sp                                ; $6d16: $08 $ef $07
    dec de                                        ; $6d19: $1b
    dec de                                        ; $6d1a: $1b
    ld c, e                                       ; $6d1b: $4b
    jp hl                                         ; $6d1c: $e9


    ld [c], a                                     ; $6d1d: $e2
    ld e, l                                       ; $6d1e: $5d
    ld e, d                                       ; $6d1f: $5a
    ld e, h                                       ; $6d20: $5c
    cp $80                                        ; $6d21: $fe $80
    jp nz, Jump_000_1b1b                          ; $6d23: $c2 $1b $1b

    ld c, l                                       ; $6d26: $4d
    ld c, [hl]                                    ; $6d27: $4e
    ld c, a                                       ; $6d28: $4f
    ld c, a                                       ; $6d29: $4f
    ld c, [hl]                                    ; $6d2a: $4e
    cp l                                          ; $6d2b: $bd
    ld c, l                                       ; $6d2c: $4d
    add b                                         ; $6d2d: $80
    adc $63                                       ; $6d2e: $ce $63
    ld h, e                                       ; $6d30: $63
    ld e, e                                       ; $6d31: $5b
    ld c, b                                       ; $6d32: $48
    rst $38                                       ; $6d33: $ff
    ld [c], a                                     ; $6d34: $e2
    dec de                                        ; $6d35: $1b
    rst $28                                       ; $6d36: $ef
    dec de                                        ; $6d37: $1b
    add hl, bc                                    ; $6d38: $09
    ld a, [bc]                                    ; $6d39: $0a
    dec de                                        ; $6d3a: $1b
    rst $38                                       ; $6d3b: $ff
    db $e4                                        ; $6d3c: $e4
    ld a, [bc]                                    ; $6d3d: $0a
    add hl, bc                                    ; $6d3e: $09
    dec de                                        ; $6d3f: $1b
    ld a, e                                       ; $6d40: $7b
    dec de                                        ; $6d41: $1b
    ld c, c                                       ; $6d42: $49
    jp hl                                         ; $6d43: $e9


    ld [c], a                                     ; $6d44: $e2
    ld e, e                                       ; $6d45: $5b
    ld h, c                                       ; $6d46: $61
    ld e, [hl]                                    ; $6d47: $5e
    ld h, b                                       ; $6d48: $60
    ret nz                                        ; $6d49: $c0

    db $e3                                        ; $6d4a: $e3
    cp a                                          ; $6d4b: $bf
    ld d, b                                       ; $6d4c: $50
    ld d, c                                       ; $6d4d: $51
    ld d, d                                       ; $6d4e: $52
    ld d, d                                       ; $6d4f: $52
    ld d, c                                       ; $6d50: $51
    ld d, b                                       ; $6d51: $50
    ret nz                                        ; $6d52: $c0

    ld a, [c]                                     ; $6d53: $f2
    ld c, h                                       ; $6d54: $4c
    cp [hl]                                       ; $6d55: $be
    rst $38                                       ; $6d56: $ff
    ldh [rOBP0], a                                ; $6d57: $e0 $48
    nop                                           ; $6d59: $00
    ld bc, $1d1c                                  ; $6d5a: $01 $1c $1d
    cp $e7                                        ; $6d5d: $fe $e7
    nop                                           ; $6d5f: $00
    ei                                            ; $6d60: $fb
    ld bc, $ea49                                  ; $6d61: $01 $49 $ea
    ld [c], a                                     ; $6d64: $e2
    ld e, e                                       ; $6d65: $5b
    ld e, a                                       ; $6d66: $5f
    ld e, c                                       ; $6d67: $59
    ld d, [hl]                                    ; $6d68: $56
    ld e, b                                       ; $6d69: $58
    cp $00                                        ; $6d6a: $fe $00
    ret nz                                        ; $6d6c: $c0

Jump_02b_6d6d:
    nop                                           ; $6d6d: $00
    ld bc, $5453                                  ; $6d6e: $01 $53 $54
    ld d, l                                       ; $6d71: $55
    ld d, l                                       ; $6d72: $55
    ld d, h                                       ; $6d73: $54
    db $fd                                        ; $6d74: $fd
    ld d, e                                       ; $6d75: $53
    add b                                         ; $6d76: $80
    pop af                                        ; $6d77: $f1
    ld c, h                                       ; $6d78: $4c
    ld h, $27                                     ; $6d79: $26 $27
    daa                                           ; $6d7b: $27
    ld h, $49                                     ; $6d7c: $26 $49
    ld [hl], e                                    ; $6d7e: $73
    ld b, b                                       ; $6d7f: $40
    ld b, c                                       ; $6d80: $41
    add d                                         ; $6d81: $82
    push hl                                       ; $6d82: $e5
    ld a, d                                       ; $6d83: $7a
    pop hl                                        ; $6d84: $e1
    ld c, e                                       ; $6d85: $4b
    ld c, d                                       ; $6d86: $4a
    ld c, b                                       ; $6d87: $48
    ld [$9ae2], a                                 ; $6d88: $ea $e2 $9a
    jp nz, Jump_02b_62a1                          ; $6d8b: $c2 $a1 $62

    ret nz                                        ; $6d8e: $c0

    and b                                         ; $6d8f: $a0
    ld b, h                                       ; $6d90: $44
    ld b, l                                       ; $6d91: $45
    ldh a, [$e3]                                  ; $6d92: $f0 $e3
    ret nz                                        ; $6d94: $c0

    ld a, [c]                                     ; $6d95: $f2
    add hl, hl                                    ; $6d96: $29
    rst $38                                       ; $6d97: $ff
    ld a, [hl+]                                   ; $6d98: $2a
    ld a, [hl+]                                   ; $6d99: $2a
    add hl, hl                                    ; $6d9a: $29
    ld c, c                                       ; $6d9b: $49
    ld b, d                                       ; $6d9c: $42
    ld b, e                                       ; $6d9d: $43
    ld e, $1f                                     ; $6d9e: $1e $1f

jr_02b_6da0:
    jr nc, jr_02b_6da0                            ; $6da0: $30 $fe

    rst $20                                       ; $6da2: $e7
    ld b, d                                       ; $6da3: $42
    ldh [$ea], a                                  ; $6da4: $e0 $ea
    ld [c], a                                     ; $6da6: $e2
    add b                                         ; $6da7: $80
    push hl                                       ; $6da8: $e5
    ld b, [hl]                                    ; $6da9: $46
    ld b, a                                       ; $6daa: $47
    ldh a, [$e3]                                  ; $6dab: $f0 $e3
    ret nz                                        ; $6dad: $c0

    pop de                                        ; $6dae: $d1
    rra                                           ; $6daf: $1f
    ld c, h                                       ; $6db0: $4c
    ld h, $28                                     ; $6db1: $26 $28
    jr z, jr_02b_6ddb                             ; $6db3: $28 $26

    ld de, $b8e0                                  ; $6db5: $11 $e0 $b8
    jp $c3b2                                      ; $6db8: $c3 $b2 $c3


    db $e3                                        ; $6dbb: $e3
    ld c, b                                       ; $6dbc: $48
    ld c, b                                       ; $6dbd: $48
    ld [$00e3], a                                 ; $6dbe: $ea $e3 $00
    push hl                                       ; $6dc1: $e5
    add b                                         ; $6dc2: $80
    reti                                          ; $6dc3: $d9


    ld c, b                                       ; $6dc4: $48
    ld c, d                                       ; $6dc5: $4a
    add hl, hl                                    ; $6dc6: $29
    ei                                            ; $6dc7: $fb
    add hl, hl                                    ; $6dc8: $29
    ld c, e                                       ; $6dc9: $4b
    db $fc                                        ; $6dca: $fc
    pop bc                                        ; $6dcb: $c1
    ld c, h                                       ; $6dcc: $4c
    dec hl                                        ; $6dcd: $2b
    inc l                                         ; $6dce: $2c
    dec l                                         ; $6dcf: $2d
    ld l, $0f                                     ; $6dd0: $2e $0f
    ld l, $2d                                     ; $6dd2: $2e $2d
    inc l                                         ; $6dd4: $2c
    dec hl                                        ; $6dd5: $2b
    inc b                                         ; $6dd6: $04
    ld [c], a                                     ; $6dd7: $e2
    ld [$80e2], a                                 ; $6dd8: $ea $e2 $80

jr_02b_6ddb:
    push bc                                       ; $6ddb: $c5
    nop                                           ; $6ddc: $00
    or [hl]                                       ; $6ddd: $b6
    xor $00                                       ; $6dde: $ee $00
    ld [c], a                                     ; $6de0: $e2
    jr z, @+$2a                                   ; $6de1: $28 $28

    daa                                           ; $6de3: $27
    rst $38                                       ; $6de4: $ff
    ldh [rNR52], a                                ; $6de5: $e0 $26
    ld c, c                                       ; $6de7: $49
    cpl                                           ; $6de8: $2f
    rst $38                                       ; $6de9: $ff
    jr nc, jr_02b_6e1d                            ; $6dea: $30 $31

    ld [hl-], a                                   ; $6dec: $32
    ld [hl-], a                                   ; $6ded: $32
    ld sp, $2f30                                  ; $6dee: $31 $30 $2f
    ld c, c                                       ; $6df1: $49
    and $ee                                       ; $6df2: $e6 $ee
    ret nz                                        ; $6df4: $c0

    daa                                           ; $6df5: $27
    daa                                           ; $6df6: $27
    ld l, d                                       ; $6df7: $6a
    db $e3                                        ; $6df8: $e3
    ret nz                                        ; $6df9: $c0

    add e                                         ; $6dfa: $83
    ld l, e                                       ; $6dfb: $6b
    ld l, h                                       ; $6dfc: $6c
    ld h, e                                       ; $6dfd: $63
    ld [hl], e                                    ; $6dfe: $73
    ld l, a                                       ; $6dff: $6f
    ld [hl], b                                    ; $6e00: $70
    db $fd                                        ; $6e01: $fd
    pop hl                                        ; $6e02: $e1
    ret nz                                        ; $6e03: $c0

    adc h                                         ; $6e04: $8c
    ld h, b                                       ; $6e05: $60
    ld e, [hl]                                    ; $6e06: $5e
    ld h, c                                       ; $6e07: $61
    nop                                           ; $6e08: $00
    ld [c], a                                     ; $6e09: $e2
    cp $fe                                        ; $6e0a: $fe $fe
    pop hl                                        ; $6e0c: $e1
    add hl, hl                                    ; $6e0d: $29
    ld c, c                                       ; $6e0e: $49
    inc sp                                        ; $6e0f: $33
    inc [hl]                                      ; $6e10: $34
    dec [hl]                                      ; $6e11: $35
    ld [hl], $36                                  ; $6e12: $36 $36
    rst $08                                       ; $6e14: $cf
    dec [hl]                                      ; $6e15: $35
    inc [hl]                                      ; $6e16: $34
    inc sp                                        ; $6e17: $33
    ld c, c                                       ; $6e18: $49
    xor $e6                                       ; $6e19: $ee $e6
    nop                                           ; $6e1b: $00
    push bc                                       ; $6e1c: $c5

jr_02b_6e1d:
    ld l, l                                       ; $6e1d: $6d
    ld l, [hl]                                    ; $6e1e: $6e
    cp a                                          ; $6e1f: $bf
    ld h, e                                       ; $6e20: $63
    ld [hl], c                                    ; $6e21: $71
    ld [hl], d                                    ; $6e22: $72
    ld h, e                                       ; $6e23: $63
    ld [hl], e                                    ; $6e24: $73
    ld [hl], h                                    ; $6e25: $74
    add b                                         ; $6e26: $80
    adc h                                         ; $6e27: $8c
    ld e, b                                       ; $6e28: $58
    ld [hl], a                                    ; $6e29: $77
    ld d, [hl]                                    ; $6e2a: $56
    ld e, c                                       ; $6e2b: $59
    ld e, a                                       ; $6e2c: $5f
    ret nz                                        ; $6e2d: $c0

    ld a, [$635b]                                 ; $6e2e: $fa $5b $63
    ld h, e                                       ; $6e31: $63
    ld b, b                                       ; $6e32: $40
    sbc c                                         ; $6e33: $99
    add c                                         ; $6e34: $81
    ld h, d                                       ; $6e35: $62
    cp $61                                        ; $6e36: $fe $61
    ld b, b                                       ; $6e38: $40
    pop bc                                        ; $6e39: $c1
    ld a, $e1                                     ; $6e3a: $3e $e1
    ld b, b                                       ; $6e3c: $40
    db $eb                                        ; $6e3d: $eb
    xor $e3                                       ; $6e3e: $ee $e3
    ret nz                                        ; $6e40: $c0

    and l                                         ; $6e41: $a5
    ld [hl], l                                    ; $6e42: $75
    ld a, a                                       ; $6e43: $7f
    halt                                          ; $6e44: $76
    ld h, e                                       ; $6e45: $63
    ld [hl], $36                                  ; $6e46: $36 $36
    ld h, e                                       ; $6e48: $63
    ld c, d                                       ; $6e49: $4a
    ld c, d                                       ; $6e4a: $4a
    ret nz                                        ; $6e4b: $c0

    pop af                                        ; $6e4c: $f1
    adc h                                         ; $6e4d: $8c
    add a                                         ; $6e4e: $87
    pop bc                                        ; $6e4f: $c1
    cp [hl]                                       ; $6e50: $be
    ret nz                                        ; $6e51: $c0

    ld c, d                                       ; $6e52: $4a
    ld c, d                                       ; $6e53: $4a
    ret nz                                        ; $6e54: $c0

    rst $00                                       ; $6e55: $c7
    xor $e6                                       ; $6e56: $ee $e6
    ret nz                                        ; $6e58: $c0

    and l                                         ; $6e59: $a5
    ld [hl], a                                    ; $6e5a: $77
    ld c, l                                       ; $6e5b: $4d

jr_02b_6e5c:
    ld a, b                                       ; $6e5c: $78
    ret nz                                        ; $6e5d: $c0

    pop hl                                        ; $6e5e: $e1
    ld c, b                                       ; $6e5f: $48
    ld c, h                                       ; $6e60: $4c
    add b                                         ; $6e61: $80
    ldh a, [$3e]                                  ; $6e62: $f0 $3e
    ret nc                                        ; $6e64: $d0

    ld c, h                                       ; $6e65: $4c
    ld b, d                                       ; $6e66: $42
    call nz, Call_000_0200                        ; $6e67: $c4 $00 $02
    and e                                         ; $6e6a: $a3
    ret nz                                        ; $6e6b: $c0

    and c                                         ; $6e6c: $a1
    ld b, b                                       ; $6e6d: $40
    ld hl, sp-$42                                 ; $6e6e: $f8 $be
    and [hl]                                      ; $6e70: $a6
    ld hl, sp-$80                                 ; $6e71: $f8 $80
    ld [hl], l                                    ; $6e73: $75
    and e                                         ; $6e74: $a3
    rst $30                                       ; $6e75: $f7
    pop hl                                        ; $6e76: $e1
    jp nz, Jump_000_00a3                          ; $6e77: $c2 $a3 $00

    ld [bc], a                                    ; $6e7a: $02
    ld [c], a                                     ; $6e7b: $e2
    ret nz                                        ; $6e7c: $c0

    ld hl, sp-$40                                 ; $6e7d: $f8 $c0
    pop bc                                        ; $6e7f: $c1
    ld a, $a6                                     ; $6e80: $3e $a6
    ret                                           ; $6e82: $c9


    and $b7                                       ; $6e83: $e6 $b7
    and $c0                                       ; $6e85: $e6 $c0
    cp $40                                        ; $6e87: $fe $40
    pop bc                                        ; $6e89: $c1
    inc b                                         ; $6e8a: $04
    ld a, [hl]                                    ; $6e8b: $7e
    add c                                         ; $6e8c: $81
    ld c, e                                       ; $6e8d: $4b
    ld [c], a                                     ; $6e8e: $e2
    ld c, h                                       ; $6e8f: $4c
    ret nz                                        ; $6e90: $c0

    and $f6                                       ; $6e91: $e6 $f6
    ldh [$39], a                                  ; $6e93: $e0 $39
    ld [c], a                                     ; $6e95: $e2
    ld b, d                                       ; $6e96: $42
    add c                                         ; $6e97: $81
    ret nz                                        ; $6e98: $c0

    add e                                         ; $6e99: $83
    jr c, jr_02b_6e5c                             ; $6e9a: $38 $c0

    cp b                                          ; $6e9c: $b8
    ld a, [hl]                                    ; $6e9d: $7e
    and c                                         ; $6e9e: $a1
    dec a                                         ; $6e9f: $3d
    add c                                         ; $6ea0: $81
    ld c, h                                       ; $6ea1: $4c
    ld b, b                                       ; $6ea2: $40
    ld b, c                                       ; $6ea3: $41
    ld c, c                                       ; $6ea4: $49
    db $e4                                        ; $6ea5: $e4
    or $e1                                        ; $6ea6: $f6 $e1
    ldh [rIE], a                                  ; $6ea8: $e0 $ff
    db $e4                                        ; $6eaa: $e4
    ld b, b                                       ; $6eab: $40
    cp l                                          ; $6eac: $bd
    ret nz                                        ; $6ead: $c0

    and c                                         ; $6eae: $a1
    inc d                                         ; $6eaf: $14
    and b                                         ; $6eb0: $a0
    adc [hl]                                      ; $6eb1: $8e
    pop hl                                        ; $6eb2: $e1
    ld c, b                                       ; $6eb3: $48
    ld b, d                                       ; $6eb4: $42
    ld b, e                                       ; $6eb5: $43
    nop                                           ; $6eb6: $00
    ld b, b                                       ; $6eb7: $40
    push hl                                       ; $6eb8: $e5
    or $e0                                        ; $6eb9: $f6 $e0
    db $ec                                        ; $6ebb: $ec
    db $e4                                        ; $6ebc: $e4
    nop                                           ; $6ebd: $00
    call c, $a2c0                                 ; $6ebe: $dc $c0 $a2
    add [hl]                                      ; $6ec1: $86
    pop hl                                        ; $6ec2: $e1
    add h                                         ; $6ec3: $84
    pop hl                                        ; $6ec4: $e1
    add b                                         ; $6ec5: $80
    jp hl                                         ; $6ec6: $e9


    ld bc, $ec4c                                  ; $6ec7: $01 $4c $ec
    db $e3                                        ; $6eca: $e3
    add b                                         ; $6ecb: $80
    db $fd                                        ; $6ecc: $fd
    nop                                           ; $6ecd: $00
    jp $e086                                      ; $6ece: $c3 $86 $e0


    adc [hl]                                      ; $6ed1: $8e
    pop hl                                        ; $6ed2: $e1
    add b                                         ; $6ed3: $80
    pop hl                                        ; $6ed4: $e1
    add b                                         ; $6ed5: $80
    jp $f200                                      ; $6ed6: $c3 $00 $f2


    db $e3                                        ; $6ed9: $e3
    ld a, d                                       ; $6eda: $7a
    pop hl                                        ; $6edb: $e1
    ret nz                                        ; $6edc: $c0

    ld h, l                                       ; $6edd: $65
    add b                                         ; $6ede: $80
    cp b                                          ; $6edf: $b8
    cp $40                                        ; $6ee0: $fe $40
    add b                                         ; $6ee2: $80
    and $3c                                       ; $6ee3: $e6 $3c
    add d                                         ; $6ee5: $82
    or $c1                                        ; $6ee6: $f6 $c1
    ldh a, [$80]                                  ; $6ee8: $f0 $80
    db $e3                                        ; $6eea: $e3
    nop                                           ; $6eeb: $00
    rst $18                                       ; $6eec: $df
    cp [hl]                                       ; $6eed: $be
    add e                                         ; $6eee: $83
    add b                                         ; $6eef: $80
    and $48                                       ; $6ef0: $e6 $48
    ld c, h                                       ; $6ef2: $4c
    scf                                           ; $6ef3: $37
    jr c, @-$7b                                   ; $6ef4: $38 $83

    add hl, sp                                    ; $6ef6: $39
    ld a, [hl-]                                   ; $6ef7: $3a
    or h                                          ; $6ef8: $b4
    ld h, b                                       ; $6ef9: $60
    ld l, h                                       ; $6efa: $6c
    db $e3                                        ; $6efb: $e3
    ld [bc], a                                    ; $6efc: $02
    ld h, e                                       ; $6efd: $63
    ret nz                                        ; $6efe: $c0

    cp d                                          ; $6eff: $ba
    cp [hl]                                       ; $6f00: $be
    add c                                         ; $6f01: $81
    ld e, h                                       ; $6f02: $5c
    di                                            ; $6f03: $f3
    ld e, d                                       ; $6f04: $5a
    ld e, d                                       ; $6f05: $5a
    ld a, [$8a60]                                 ; $6f06: $fa $60 $8a
    jp nz, Jump_000_3b4c                          ; $6f09: $c2 $4c $3b

    inc a                                         ; $6f0c: $3c
    dec a                                         ; $6f0d: $3d
    dec e                                         ; $6f0e: $1d
    ld a, $34                                     ; $6f0f: $3e $34
    ld h, b                                       ; $6f11: $60
    ld c, b                                       ; $6f12: $48
    ld c, b                                       ; $6f13: $48
    ld e, l                                       ; $6f14: $5d
    db $eb                                        ; $6f15: $eb
    ldh [rSCY], a                                 ; $6f16: $e0 $42
    jp $ba80                                      ; $6f18: $c3 $80 $ba


    ldh a, [$7e]                                  ; $6f1b: $f0 $7e
    ld [c], a                                     ; $6f1d: $e2
    ei                                            ; $6f1e: $fb
    and b                                         ; $6f1f: $a0
    ld a, [$8ac2]                                 ; $6f20: $fa $c2 $8a
    ld h, b                                       ; $6f23: $60
    ccf                                           ; $6f24: $3f
    ld h, h                                       ; $6f25: $64
    ld h, l                                       ; $6f26: $65
    ld h, [hl]                                    ; $6f27: $66
    sbc [hl]                                      ; $6f28: $9e
    add b                                         ; $6f29: $80
    ld [c], a                                     ; $6f2a: $e2
    ld e, e                                       ; $6f2b: $5b
    ld h, e                                       ; $6f2c: $63
    ld h, c                                       ; $6f2d: $61
    ld e, [hl]                                    ; $6f2e: $5e
    add d                                         ; $6f2f: $82
    db $e3                                        ; $6f30: $e3
    ret nz                                        ; $6f31: $c0

    db $fc                                        ; $6f32: $fc
    ld e, b                                       ; $6f33: $58
    ld sp, hl                                     ; $6f34: $f9
    ld d, [hl]                                    ; $6f35: $56
    ld a, e                                       ; $6f36: $7b
    and c                                         ; $6f37: $a1
    ld a, h                                       ; $6f38: $7c
    db $e3                                        ; $6f39: $e3
    ld c, b                                       ; $6f3a: $48
    ld c, h                                       ; $6f3b: $4c
    ld h, a                                       ; $6f3c: $67
    ld l, b                                       ; $6f3d: $68
    ld l, c                                       ; $6f3e: $69
    add hl, bc                                    ; $6f3f: $09
    ld l, d                                       ; $6f40: $6a
    ld a, [bc]                                    ; $6f41: $0a
    add b                                         ; $6f42: $80
    add h                                         ; $6f43: $84
    ldh [$63], a                                  ; $6f44: $e0 $63
    add l                                         ; $6f46: $85
    ld b, b                                       ; $6f47: $40
    add d                                         ; $6f48: $82
    ld [c], a                                     ; $6f49: $e2
    add b                                         ; $6f4a: $80
    db $fc                                        ; $6f4b: $fc
    ld a, l                                       ; $6f4c: $7d
    db $e4                                        ; $6f4d: $e4
    nop                                           ; $6f4e: $00
    ld a, e                                       ; $6f4f: $7b
    ldh [$f6], a                                  ; $6f50: $e0 $f6
    ld hl, $6203                                  ; $6f52: $21 $03 $62
    ld a, [bc]                                    ; $6f55: $0a
    ld b, b                                       ; $6f56: $40
    rst $28                                       ; $6f57: $ef
    ldh [$83], a                                  ; $6f58: $e0 $83
    db $e4                                        ; $6f5a: $e4
    ret nz                                        ; $6f5b: $c0

    rst $38                                       ; $6f5c: $ff
    ld a, l                                       ; $6f5d: $7d
    pop hl                                        ; $6f5e: $e1
    nop                                           ; $6f5f: $00
    ld a, e                                       ; $6f60: $7b
    pop hl                                        ; $6f61: $e1
    ld hl, sp-$3f                                 ; $6f62: $f8 $c1
    db $fd                                        ; $6f64: $fd
    ld [c], a                                     ; $6f65: $e2
    ld c, d                                       ; $6f66: $4a
    and c                                         ; $6f67: $a1
    db $ed                                        ; $6f68: $ed
    ldh [$83], a                                  ; $6f69: $e0 $83
    db $e3                                        ; $6f6b: $e3
    ret nz                                        ; $6f6c: $c0

    rst $38                                       ; $6f6d: $ff
    ld a, e                                       ; $6f6e: $7b
    jp hl                                         ; $6f6f: $e9


    nop                                           ; $6f70: $00
    db $fc                                        ; $6f71: $fc
    db $e3                                        ; $6f72: $e3
    add l                                         ; $6f73: $85
    rst $20                                       ; $6f74: $e7
    ret nz                                        ; $6f75: $c0

    rst $38                                       ; $6f76: $ff
    ld a, e                                       ; $6f77: $7b
    ld [$e5fc], a                                 ; $6f78: $ea $fc $e5
    add l                                         ; $6f7b: $85
    and $c0                                       ; $6f7c: $e6 $c0
    rst $38                                       ; $6f7e: $ff
    rst $38                                       ; $6f7f: $ff
    rst $38                                       ; $6f80: $ff
    nop                                           ; $6f81: $00
    ld b, b                                       ; $6f82: $40
    ld d, $ff                                     ; $6f83: $16 $ff
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
    nop                                           ; $6f92: $00
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
    nop                                           ; $6fa3: $00
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
    nop                                           ; $6fb4: $00
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
    nop                                           ; $6fc5: $00
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
    nop                                           ; $6fd6: $00
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
    nop                                           ; $6fe7: $00
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
    ret nz                                        ; $6ff2: $c0

    dec d                                         ; $6ff3: $15
    nop                                           ; $6ff4: $00
    nop                                           ; $6ff5: $00
    nop                                           ; $6ff6: $00
    ld e, a                                       ; $6ff7: $5f
    inc c                                         ; $6ff8: $0c
    inc l                                         ; $6ff9: $2c
    inc l                                         ; $6ffa: $2c
    ld a, [hl+]                                   ; $6ffb: $2a
    dec c                                         ; $6ffc: $0d
    rst $38                                       ; $6ffd: $ff
    add sp, $2d                                   ; $6ffe: $e8 $2d
    rst $38                                       ; $7000: $ff
    ldh [$7c], a                                  ; $7001: $e0 $7c
    ld hl, sp-$1b                                 ; $7003: $f8 $e5
    db $fc                                        ; $7005: $fc
    push hl                                       ; $7006: $e5
    ld a, [bc]                                    ; $7007: $0a
    inc c                                         ; $7008: $0c
    inc c                                         ; $7009: $0c
    ld c, h                                       ; $700a: $4c
    ld [$f4ff], sp                                ; $700b: $08 $ff $f4
    nop                                           ; $700e: $00
    ret nz                                        ; $700f: $c0

    db $ec                                        ; $7010: $ec
    jp nz, $bee2                                  ; $7011: $c2 $e2 $be

    ld [c], a                                     ; $7014: $e2
    ret nz                                        ; $7015: $c0

    rst $38                                       ; $7016: $ff
    ret nz                                        ; $7017: $c0

    pop af                                        ; $7018: $f1
    ld a, h                                       ; $7019: $7c
    and $80                                       ; $701a: $e6 $80
    rst $38                                       ; $701c: $ff
    ret nz                                        ; $701d: $c0

    rst $38                                       ; $701e: $ff
    nop                                           ; $701f: $00
    ret nz                                        ; $7020: $c0

    rst $38                                       ; $7021: $ff
    ld b, b                                       ; $7022: $40
    db $ec                                        ; $7023: $ec
    ld b, $e2                                     ; $7024: $06 $e2
    inc b                                         ; $7026: $04
    push hl                                       ; $7027: $e5
    db $fd                                        ; $7028: $fd
    rst $00                                       ; $7029: $c7
    ret nz                                        ; $702a: $c0

    rst $38                                       ; $702b: $ff
    pop bc                                        ; $702c: $c1
    rst $20                                       ; $702d: $e7
    dec b                                         ; $702e: $05
    db $e4                                        ; $702f: $e4
    ld a, b                                       ; $7030: $78
    db $fc                                        ; $7031: $fc
    push hl                                       ; $7032: $e5
    ret nz                                        ; $7033: $c0

    rst $38                                       ; $7034: $ff
    add b                                         ; $7035: $80
    ret nz                                        ; $7036: $c0

    ld a, [bc]                                    ; $7037: $0a
    ld a, [hl+]                                   ; $7038: $2a
    dec bc                                        ; $7039: $0b
    dec hl                                        ; $703a: $2b
    cp $e1                                        ; $703b: $fe $e1
    ld a, [hl]                                    ; $703d: $7e
    add b                                         ; $703e: $80
    ld [c], a                                     ; $703f: $e2
    ld c, l                                       ; $7040: $4d
    ld c, l                                       ; $7041: $4d
    ld c, l                                       ; $7042: $4d
    ld l, l                                       ; $7043: $6d
    ld l, l                                       ; $7044: $6d
    ld l, l                                       ; $7045: $6d
    add b                                         ; $7046: $80
    ld [c], a                                     ; $7047: $e2
    or $ea                                        ; $7048: $f6 $ea
    db $e3                                        ; $704a: $e3
    ld a, [bc]                                    ; $704b: $0a
    ld a, [bc]                                    ; $704c: $0a
    add b                                         ; $704d: $80
    db $e3                                        ; $704e: $e3
    dec c                                         ; $704f: $0d
    dec l                                         ; $7050: $2d
    ld c, $0e                                     ; $7051: $0e $0e
    ld l, a                                       ; $7053: $6f
    ld c, $2e                                     ; $7054: $0e $2e
    ld l, $2e                                     ; $7056: $2e $2e
    add b                                         ; $7058: $80
    adc $0c                                       ; $7059: $ce $0c
    inc c                                         ; $705b: $0c
    ret nz                                        ; $705c: $c0

    db $e4                                        ; $705d: $e4
    sub b                                         ; $705e: $90
    add b                                         ; $705f: $80
    db $e3                                        ; $7060: $e3
    cp $e4                                        ; $7061: $fe $e4
    add hl, sp                                    ; $7063: $39
    ret nz                                        ; $7064: $c0

    ret nz                                        ; $7065: $c0

    db $e4                                        ; $7066: $e4
    inc c                                         ; $7067: $0c
    rst $38                                       ; $7068: $ff
    ldh [rLCDC], a                                ; $7069: $e0 $40
    ldh [$2d], a                                  ; $706b: $e0 $2d
    ld d, l                                       ; $706d: $55
    dec c                                         ; $706e: $0d
    ret nz                                        ; $706f: $c0

    rst $30                                       ; $7070: $f7
    dec hl                                        ; $7071: $2b
    add b                                         ; $7072: $80
    pop hl                                        ; $7073: $e1
    dec bc                                        ; $7074: $0b
    cp b                                          ; $7075: $b8
    call Call_02b_690b                            ; $7076: $cd $0b $69
    ld [c], a                                     ; $7079: $e2
    ld [$e5c0], a                                 ; $707a: $ea $c0 $e5
    dec c                                         ; $707d: $0d
    ret nz                                        ; $707e: $c0

    ld hl, sp+$0b                                 ; $707f: $f8 $0b
    sbc h                                         ; $7081: $9c
    ldh [$2c], a                                  ; $7082: $e0 $2c
    dec bc                                        ; $7084: $0b
    dec bc                                        ; $7085: $0b
    and c                                         ; $7086: $a1
    dec bc                                        ; $7087: $0b
    add d                                         ; $7088: $82
    and $b5                                       ; $7089: $e6 $b5
    ret nz                                        ; $708b: $c0

    inc l                                         ; $708c: $2c
    ldh [$a3], a                                  ; $708d: $e0 $a3
    and b                                         ; $708f: $a0
    inc l                                         ; $7090: $2c
    ret nz                                        ; $7091: $c0

    pop hl                                        ; $7092: $e1
    ld c, h                                       ; $7093: $4c
    ld hl, $c04c                                  ; $7094: $21 $4c $c0
    ret nz                                        ; $7097: $c0

    pop hl                                        ; $7098: $e1
    ldh [$f0], a                                  ; $7099: $e0 $f0
    ld [c], a                                     ; $709b: $e2
    add b                                         ; $709c: $80
    ld a, [c]                                     ; $709d: $f2
    ld c, h                                       ; $709e: $4c
    ld a, b                                       ; $709f: $78
    and b                                         ; $70a0: $a0
    ret nz                                        ; $70a1: $c0

    ldh [rDIV], a                                 ; $70a2: $e0 $04
    add d                                         ; $70a4: $82
    db $ec                                        ; $70a5: $ec
    xor e                                         ; $70a6: $ab
    ldh [$6c], a                                  ; $70a7: $e0 $6c
    add b                                         ; $70a9: $80
    ldh [$c1], a                                  ; $70aa: $e0 $c1
    ldh [$c0], a                                  ; $70ac: $e0 $c0
    ld [c], a                                     ; $70ae: $e2
    ldh a, [$e3]                                  ; $70af: $f0 $e3
    add b                                         ; $70b1: $80
    xor [hl]                                      ; $70b2: $ae
    rst $38                                       ; $70b3: $ff
    ld l, d                                       ; $70b4: $6a
    ld c, d                                       ; $70b5: $4a
    ld l, d                                       ; $70b6: $6a
    dec bc                                        ; $70b7: $0b
    ld c, h                                       ; $70b8: $4c
    ld c, h                                       ; $70b9: $4c
    ld l, h                                       ; $70ba: $6c
    ld l, h                                       ; $70bb: $6c
    ret z                                         ; $70bc: $c8

    ld d, c                                       ; $70bd: $51
    db $e3                                        ; $70be: $e3
    db $fc                                        ; $70bf: $fc
    jp hl                                         ; $70c0: $e9


    ld [$0ae2], a                                 ; $70c1: $ea $e2 $0a
    pop bc                                        ; $70c4: $c1
    pop hl                                        ; $70c5: $e1
    add b                                         ; $70c6: $80
    db $dd                                        ; $70c7: $dd
    dec bc                                        ; $70c8: $0b
    ld c, h                                       ; $70c9: $4c
    ld b, c                                       ; $70ca: $41
    inc l                                         ; $70cb: $2c
    ld a, h                                       ; $70cc: $7c
    jp $c1d3                                      ; $70cd: $c3 $d3 $c1


    ld c, d                                       ; $70d0: $4a
    ldh [$33], a                                  ; $70d1: $e0 $33
    ldh [$6d], a                                  ; $70d3: $e0 $6d
    pop bc                                        ; $70d5: $c1
    inc c                                         ; $70d6: $0c
    xor e                                         ; $70d7: $ab
    ldh [rBGP], a                                 ; $70d8: $e0 $47
    ld c, d                                       ; $70da: $4a
    ld c, d                                       ; $70db: $4a
    ld c, d                                       ; $70dc: $4a
    nop                                           ; $70dd: $00
    db $db                                        ; $70de: $db
    nop                                           ; $70df: $00
    db $e3                                        ; $70e0: $e3
    ld a, c                                       ; $70e1: $79
    ret nz                                        ; $70e2: $c0

    inc l                                         ; $70e3: $2c
    db $fc                                        ; $70e4: $fc
    ret nz                                        ; $70e5: $c0

    ld h, b                                       ; $70e6: $60
    ret nz                                        ; $70e7: $c0

    and $f2                                       ; $70e8: $e6 $f2
    pop hl                                        ; $70ea: $e1
    db $fd                                        ; $70eb: $fd
    pop hl                                        ; $70ec: $e1
    cp e                                          ; $70ed: $bb
    ret nz                                        ; $70ee: $c0

    ret nz                                        ; $70ef: $c0

    and e                                         ; $70f0: $a3
    inc c                                         ; $70f1: $0c
    inc c                                         ; $70f2: $0c
    db $fd                                        ; $70f3: $fd
    db $e4                                        ; $70f4: $e4
    nop                                           ; $70f5: $00
    ret nz                                        ; $70f6: $c0

    adc l                                         ; $70f7: $8d
    ld a, [hl]                                    ; $70f8: $7e
    add b                                         ; $70f9: $80
    nop                                           ; $70fa: $00
    ldh [$bf], a                                  ; $70fb: $e0 $bf
    pop hl                                        ; $70fd: $e1
    ret nz                                        ; $70fe: $c0

Jump_02b_70ff:
    db $eb                                        ; $70ff: $eb
    pop bc                                        ; $7100: $c1
    ld [c], a                                     ; $7101: $e2
    nop                                           ; $7102: $00
    ldh [rP1], a                                  ; $7103: $e0 $00
    call nz, $c012                                ; $7105: $c4 $12 $c0
    ld sp, hl                                     ; $7108: $f9
    dec bc                                        ; $7109: $0b
    ret nz                                        ; $710a: $c0

    and $d4                                       ; $710b: $e6 $d4
    pop bc                                        ; $710d: $c1
    ld l, h                                       ; $710e: $6c
    rst $38                                       ; $710f: $ff
    ldh [$c0], a                                  ; $7110: $e0 $c0
    add sp, $00                                   ; $7112: $e8 $00
    call nz, Call_000_3eb8                        ; $7114: $c4 $b8 $3e
    or e                                          ; $7117: $b3
    ld h, l                                       ; $7118: $65
    ret nz                                        ; $7119: $c0

    add b                                         ; $711a: $80
    ld [c], a                                     ; $711b: $e2
    ld l, h                                       ; $711c: $6c
    ld l, h                                       ; $711d: $6c
    ld c, h                                       ; $711e: $4c
    cp $e0                                        ; $711f: $fe $e0
    ld l, h                                       ; $7121: $6c
    ret z                                         ; $7122: $c8

    ret nz                                        ; $7123: $c0

    rst $20                                       ; $7124: $e7
    xor [hl]                                      ; $7125: $ae
    ret nz                                        ; $7126: $c0

    xor $e0                                       ; $7127: $ee $e0
    ld c, h                                       ; $7129: $4c
    ret nz                                        ; $712a: $c0

    db $e4                                        ; $712b: $e4
    ld c, d                                       ; $712c: $4a
    ldh [$0a], a                                  ; $712d: $e0 $0a
    ld a, [bc]                                    ; $712f: $0a
    ld c, $13                                     ; $7130: $0e $13
    add b                                         ; $7132: $80
    ld [$2b0b], sp                                ; $7133: $08 $0b $2b
    ret nz                                        ; $7136: $c0

    pop af                                        ; $7137: $f1
    sub $a1                                       ; $7138: $d6 $a1
    cp [hl]                                       ; $713a: $be
    ret nz                                        ; $713b: $c0

    adc l                                         ; $713c: $8d
    jp nz, $80f0                                  ; $713d: $c2 $f0 $80

    db $e4                                        ; $7140: $e4
    jp nz, $c0c4                                  ; $7141: $c2 $c4 $c0

    and h                                         ; $7144: $a4
    ret nz                                        ; $7145: $c0

    db $e3                                        ; $7146: $e3
    ld c, h                                       ; $7147: $4c
    ld l, h                                       ; $7148: $6c
    ld [$002b], sp                                ; $7149: $08 $2b $00
    nop                                           ; $714c: $00
    call z, $e380                                 ; $714d: $cc $80 $e3
    cp $80                                        ; $7150: $fe $80
    adc c                                         ; $7152: $89
    pop bc                                        ; $7153: $c1
    ld a, $cb                                     ; $7154: $3e $cb
    xor $e2                                       ; $7156: $ee $e2
    ld [bc], a                                    ; $7158: $02
    and d                                         ; $7159: $a2
    cp a                                          ; $715a: $bf
    and b                                         ; $715b: $a0
    nop                                           ; $715c: $00
    ld b, b                                       ; $715d: $40
    ld a, [$81fe]                                 ; $715e: $fa $fe $81
    cp [hl]                                       ; $7161: $be
    and d                                         ; $7162: $a2
    ret                                           ; $7163: $c9


    db $e3                                        ; $7164: $e3
    ld [hl], l                                    ; $7165: $75
    and c                                         ; $7166: $a1
    dec [hl]                                      ; $7167: $35
    jp nz, $e602                                  ; $7168: $c2 $02 $e6

    ret nz                                        ; $716b: $c0

    ld hl, sp-$80                                 ; $716c: $f8 $80
    db $d3                                        ; $716e: $d3
    ret nz                                        ; $716f: $c0

    ret nz                                        ; $7170: $c0

    db $e3                                        ; $7171: $e3
    ld c, e                                       ; $7172: $4b
    db $e4                                        ; $7173: $e4
    ld [hl], l                                    ; $7174: $75
    jp nz, $a4c2                                  ; $7175: $c2 $c2 $a4

    ld [bc], a                                    ; $7178: $02
    push hl                                       ; $7179: $e5
    ret nz                                        ; $717a: $c0

    db $fc                                        ; $717b: $fc
    ld l, h                                       ; $717c: $6c
    ld [$817e], sp                                ; $717d: $08 $7e $81
    dec a                                         ; $7180: $3d
    add d                                         ; $7181: $82
    ld a, [bc]                                    ; $7182: $0a
    ld [c], a                                     ; $7183: $e2
    inc l                                         ; $7184: $2c
    jp z, $b0a0                                   ; $7185: $ca $a0 $b0

    add d                                         ; $7188: $82
    dec hl                                        ; $7189: $2b
    add c                                         ; $718a: $81
    jp nz, Jump_000_00a1                          ; $718b: $c2 $a1 $00

    add b                                         ; $718e: $80
    cp d                                          ; $718f: $ba
    add d                                         ; $7190: $82
    pop hl                                        ; $7191: $e1
    ld a, $a1                                     ; $7192: $3e $a1
    pop bc                                        ; $7194: $c1
    db $e3                                        ; $7195: $e3
    dec bc                                        ; $7196: $0b
    and d                                         ; $7197: $a2
    adc d                                         ; $7198: $8a
    and c                                         ; $7199: $a1
    or l                                          ; $719a: $b5
    ld [c], a                                     ; $719b: $e2
    nop                                           ; $719c: $00
    add e                                         ; $719d: $83
    nop                                           ; $719e: $00
    ld b, b                                       ; $719f: $40
    cp l                                          ; $71a0: $bd
    ret nz                                        ; $71a1: $c0

    and c                                         ; $71a2: $a1
    rst $08                                       ; $71a3: $cf
    db $e4                                        ; $71a4: $e4
    ld a, b                                       ; $71a5: $78
    jp nz, $c3f7                                  ; $71a6: $c2 $f7 $c3

    pop af                                        ; $71a9: $f1
    db $e3                                        ; $71aa: $e3
    ld b, b                                       ; $71ab: $40
    adc b                                         ; $71ac: $88
    ret nz                                        ; $71ad: $c0

    ld sp, hl                                     ; $71ae: $f9
    nop                                           ; $71af: $00
    add [hl]                                      ; $71b0: $86
    ld [c], a                                     ; $71b1: $e2
    ei                                            ; $71b2: $fb
    db $e3                                        ; $71b3: $e3
    push af                                       ; $71b4: $f5
    and c                                         ; $71b5: $a1
    dec [hl]                                      ; $71b6: $35
    add c                                         ; $71b7: $81
    ret nz                                        ; $71b8: $c0

    db $e4                                        ; $71b9: $e4
    ret nz                                        ; $71ba: $c0

    ld h, a                                       ; $71bb: $67
    nop                                           ; $71bc: $00
    ld [hl], h                                    ; $71bd: $74
    pop de                                        ; $71be: $d1
    add c                                         ; $71bf: $81
    nop                                           ; $71c0: $00
    add b                                         ; $71c1: $80
    db $eb                                        ; $71c2: $eb
    add d                                         ; $71c3: $82
    and c                                         ; $71c4: $a1
    add b                                         ; $71c5: $80
    rst $38                                       ; $71c6: $ff
    nop                                           ; $71c7: $00
    call $e680                                    ; $71c8: $cd $80 $e6
    or $c7                                        ; $71cb: $f6 $c7
    ldh a, [$c1]                                  ; $71cd: $f0 $c1
    nop                                           ; $71cf: $00
    rst $18                                       ; $71d0: $df
    nop                                           ; $71d1: $00
    ld b, b                                       ; $71d2: $40
    and b                                         ; $71d3: $a0
    ld a, $e4                                     ; $71d4: $3e $e4
    adc e                                         ; $71d6: $8b
    db $e4                                        ; $71d7: $e4
    db $10                                        ; $71d8: $10
    ld h, c                                       ; $71d9: $61
    ret nz                                        ; $71da: $c0

    rst $20                                       ; $71db: $e7
    ld b, d                                       ; $71dc: $42
    and d                                         ; $71dd: $a2
    ret nz                                        ; $71de: $c0

    rst $38                                       ; $71df: $ff
    sbc d                                         ; $71e0: $9a
    ld b, b                                       ; $71e1: $40
    ld [bc], a                                    ; $71e2: $02
    ld a, [$2bc3]                                 ; $71e3: $fa $c3 $2b
    db $fd                                        ; $71e6: $fd
    ld h, d                                       ; $71e7: $62
    ld b, [hl]                                    ; $71e8: $46
    db $e3                                        ; $71e9: $e3
    rst $38                                       ; $71ea: $ff
    pop hl                                        ; $71eb: $e1
    ret nz                                        ; $71ec: $c0

    rst $38                                       ; $71ed: $ff
    ld b, h                                       ; $71ee: $44
    ld h, c                                       ; $71ef: $61
    ld d, e                                       ; $71f0: $53
    add c                                         ; $71f1: $81
    ld [$c27a], sp                                ; $71f2: $08 $7a $c2
    add b                                         ; $71f5: $80
    jp hl                                         ; $71f6: $e9


    add $83                                       ; $71f7: $c6 $83
    inc c                                         ; $71f9: $0c
    cp d                                          ; $71fa: $ba
    add b                                         ; $71fb: $80
    ret nz                                        ; $71fc: $c0

    ei                                            ; $71fd: $fb
    ld a, $e2                                     ; $71fe: $3e $e2
    ret nz                                        ; $7200: $c0

    ldh [rLCDC], a                                ; $7201: $e0 $40
    ld a, h                                       ; $7203: $7c
    ld [c], a                                     ; $7204: $e2
    add b                                         ; $7205: $80
    db $e4                                        ; $7206: $e4
    add h                                         ; $7207: $84
    rst $20                                       ; $7208: $e7
    ret nz                                        ; $7209: $c0

    rst $38                                       ; $720a: $ff
    cp l                                          ; $720b: $bd
    and $f6                                       ; $720c: $e6 $f6
    and d                                         ; $720e: $a2
    dec hl                                        ; $720f: $2b
    rst $38                                       ; $7210: $ff
    pop hl                                        ; $7211: $e1
    nop                                           ; $7212: $00
    ld c, d                                       ; $7213: $4a
    add h                                         ; $7214: $84
    or l                                          ; $7215: $b5
    and b                                         ; $7216: $a0
    jp nz, $c042                                  ; $7217: $c2 $42 $c0

    rst $38                                       ; $721a: $ff
    ret nz                                        ; $721b: $c0

    push hl                                       ; $721c: $e5
    inc c                                         ; $721d: $0c
    ld [c], a                                     ; $721e: $e2
    add h                                         ; $721f: $84
    rst $20                                       ; $7220: $e7
    add e                                         ; $7221: $83
    db $e3                                        ; $7222: $e3
    nop                                           ; $7223: $00
    ret nz                                        ; $7224: $c0

    rst $38                                       ; $7225: $ff
    ld a, e                                       ; $7226: $7b
    ld [$c3f1], a                                 ; $7227: $ea $f1 $c3
    push bc                                       ; $722a: $c5
    and $c0                                       ; $722b: $e6 $c0
    rst $38                                       ; $722d: $ff
    ret nz                                        ; $722e: $c0

    rst $38                                       ; $722f: $ff
    ret nz                                        ; $7230: $c0

    rst $38                                       ; $7231: $ff
    db $fd                                        ; $7232: $fd
    db $fc                                        ; $7233: $fc
    nop                                           ; $7234: $00
    ld b, b                                       ; $7235: $40
    dec d                                         ; $7236: $15
    rst $38                                       ; $7237: $ff
    rst $38                                       ; $7238: $ff
    rst $38                                       ; $7239: $ff
    rst $38                                       ; $723a: $ff
    rst $38                                       ; $723b: $ff

Jump_02b_723c:
    rst $38                                       ; $723c: $ff
    rst $38                                       ; $723d: $ff
    rst $38                                       ; $723e: $ff
    rst $38                                       ; $723f: $ff
    rst $38                                       ; $7240: $ff
    rst $38                                       ; $7241: $ff
    rst $38                                       ; $7242: $ff
    rst $38                                       ; $7243: $ff
    rst $38                                       ; $7244: $ff
    nop                                           ; $7245: $00
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
    nop                                           ; $7256: $00
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
    nop                                           ; $7267: $00
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
    nop                                           ; $7278: $00
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
    nop                                           ; $7289: $00
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
    nop                                           ; $729a: $00
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
    ret nz                                        ; $72a5: $c0

    dec d                                         ; $72a6: $15
    nop                                           ; $72a7: $00
    nop                                           ; $72a8: $00
    nop                                           ; $72a9: $00
    dec b                                         ; $72aa: $05
    rrca                                          ; $72ab: $0f
    rst $38                                       ; $72ac: $ff
    pop af                                        ; $72ad: $f1
    nop                                           ; $72ae: $00
    rst $38                                       ; $72af: $ff
    rst $20                                       ; $72b0: $e7
    ldh [rIE], a                                  ; $72b1: $e0 $ff
    call $c0e7                                    ; $72b3: $cd $e7 $c0
    db $f4                                        ; $72b6: $f4
    cp d                                          ; $72b7: $ba
    ld [c], a                                     ; $72b8: $e2
    nop                                           ; $72b9: $00
    or h                                          ; $72ba: $b4
    db $e3                                        ; $72bb: $e3
    rst $08                                       ; $72bc: $cf
    db $ec                                        ; $72bd: $ec
    ldh [$e7], a                                  ; $72be: $e0 $e7
    xor a                                         ; $72c0: $af
    di                                            ; $72c1: $f3
    ret nz                                        ; $72c2: $c0

    and $6f                                       ; $72c3: $e6 $6f
    db $ec                                        ; $72c5: $ec
    and b                                         ; $72c6: $a0
    xor $df                                       ; $72c7: $ee $df
    db $ec                                        ; $72c9: $ec
    nop                                           ; $72ca: $00

jr_02b_72cb:
    ldh [$f9], a                                  ; $72cb: $e0 $f9
    ret nz                                        ; $72cd: $c0

    db $fd                                        ; $72ce: $fd
    nop                                           ; $72cf: $00
    ldh a, [$c1]                                  ; $72d0: $f0 $c1
    db $ed                                        ; $72d2: $ed
    ldh [rIE], a                                  ; $72d3: $e0 $ff
    ld h, b                                       ; $72d5: $60
    xor $fb                                       ; $72d6: $ee $fb
    add sp, -$20                                  ; $72d8: $e8 $e0
    rst $08                                       ; $72da: $cf
    nop                                           ; $72db: $00
    db $fd                                        ; $72dc: $fd
    pop hl                                        ; $72dd: $e1
    db $db                                        ; $72de: $db
    db $e3                                        ; $72df: $e3
    di                                            ; $72e0: $f3
    ld [c], a                                     ; $72e1: $e2
    add b                                         ; $72e2: $80
    ret nc                                        ; $72e3: $d0

    ldh [$e7], a                                  ; $72e4: $e0 $e7
    ld h, b                                       ; $72e6: $60
    db $d3                                        ; $72e7: $d3
    cp a                                          ; $72e8: $bf
    pop bc                                        ; $72e9: $c1
    cp e                                          ; $72ea: $bb
    pop hl                                        ; $72eb: $e1
    nop                                           ; $72ec: $00
    ld h, b                                       ; $72ed: $60
    rst $18                                       ; $72ee: $df
    jr nz, jr_02b_72cb                            ; $72ef: $20 $da

    ret nz                                        ; $72f1: $c0

    ld hl, sp-$20                                 ; $72f2: $f8 $e0
    cp a                                          ; $72f4: $bf
    ldh [rIE], a                                  ; $72f5: $e0 $ff
    ldh [$f1], a                                  ; $72f7: $e0 $f1
    rst $38                                       ; $72f9: $ff
    rst $38                                       ; $72fa: $ff
    rst $38                                       ; $72fb: $ff
    rst $38                                       ; $72fc: $ff
    nop                                           ; $72fd: $00
    rst $38                                       ; $72fe: $ff
    rst $38                                       ; $72ff: $ff
    rst $38                                       ; $7300: $ff
    rst $38                                       ; $7301: $ff
    rst $38                                       ; $7302: $ff
    rst $38                                       ; $7303: $ff
    rst $38                                       ; $7304: $ff
    rst $38                                       ; $7305: $ff

jr_02b_7306:
    rst $38                                       ; $7306: $ff
    rst $38                                       ; $7307: $ff
    rst $38                                       ; $7308: $ff
    rst $38                                       ; $7309: $ff
    rst $38                                       ; $730a: $ff
    rst $38                                       ; $730b: $ff
    rst $38                                       ; $730c: $ff
    rst $38                                       ; $730d: $ff
    nop                                           ; $730e: $00
    rst $38                                       ; $730f: $ff
    rst $38                                       ; $7310: $ff
    rst $38                                       ; $7311: $ff
    rst $20                                       ; $7312: $e7
    nop                                           ; $7313: $00
    nop                                           ; $7314: $00
    nop                                           ; $7315: $00
    add hl, de                                    ; $7316: $19
    nop                                           ; $7317: $00
    rst $38                                       ; $7318: $ff
    rst $38                                       ; $7319: $ff
    db $e4                                        ; $731a: $e4
    db $e3                                        ; $731b: $e3
    jr c, jr_02b_7356                             ; $731c: $38 $38

    call c, $ffff                                 ; $731e: $dc $ff $ff
    rst $38                                       ; $7321: $ff
    rst $38                                       ; $7322: $ff
    rst $38                                       ; $7323: $ff
    ld [bc], a                                    ; $7324: $02
    ld [c], a                                     ; $7325: $e2
    pop hl                                        ; $7326: $e1
    jr z, jr_02b_7306                             ; $7327: $28 $dd

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
    ld [hl], h                                    ; $7334: $74
    rst $38                                       ; $7335: $ff
    rst $38                                       ; $7336: $ff
    rst $38                                       ; $7337: $ff
    cp $48                                        ; $7338: $fe $48
    db $dd                                        ; $733a: $dd
    rst $38                                       ; $733b: $ff
    nop                                           ; $733c: $00
    nop                                           ; $733d: $00
    jr @-$21                                      ; $733e: $18 $dd

    rst $38                                       ; $7340: $ff
    nop                                           ; $7341: $00
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
    nop                                           ; $7352: $00
    rst $38                                       ; $7353: $ff
    rst $38                                       ; $7354: $ff
    rst $38                                       ; $7355: $ff

jr_02b_7356:
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
    ld a, [c]                                     ; $7362: $f2
    nop                                           ; $7363: $00
    nop                                           ; $7364: $00
    nop                                           ; $7365: $00
    cp $01                                        ; $7366: $fe $01
    nop                                           ; $7368: $00
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
    nop                                           ; $7377: $00
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
    nop                                           ; $7388: $00
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
    nop                                           ; $7399: $00
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
    nop                                           ; $73aa: $00
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
    nop                                           ; $73bb: $00
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
    nop                                           ; $73cc: $00
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
    nop                                           ; $73dd: $00
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
    db $e4                                        ; $73e9: $e4
    nop                                           ; $73ea: $00
    nop                                           ; $73eb: $00
    nop                                           ; $73ec: $00
    push af                                       ; $73ed: $f5
    push bc                                       ; $73ee: $c5
    push de                                       ; $73ef: $d5
    push hl                                       ; $73f0: $e5
    ld [$c32f], a                                 ; $73f1: $ea $2f $c3
    ld c, a                                       ; $73f4: $4f
    ld a, $ff                                     ; $73f5: $3e $ff
    ld b, $01                                     ; $73f7: $06 $01
    ld hl, $c330                                  ; $73f9: $21 $30 $c3
    ld [hl+], a                                   ; $73fc: $22
    ld [hl], b                                    ; $73fd: $70
    inc hl                                        ; $73fe: $23
    ld [hl+], a                                   ; $73ff: $22
    ld [hl], b                                    ; $7400: $70
    inc hl                                        ; $7401: $23
    ld [hl+], a                                   ; $7402: $22
    ld [hl], b                                    ; $7403: $70
    inc hl                                        ; $7404: $23
    ld [hl+], a                                   ; $7405: $22
    ld [hl], b                                    ; $7406: $70
    inc hl                                        ; $7407: $23
    ld [hl+], a                                   ; $7408: $22
    ld [hl+], a                                   ; $7409: $22
    ld [hl+], a                                   ; $740a: $22
    ld [hl+], a                                   ; $740b: $22
    ld a, c                                       ; $740c: $79
    ld h, $00                                     ; $740d: $26 $00
    ld l, a                                       ; $740f: $6f
    add hl, hl                                    ; $7410: $29
    ld bc, $403a                                  ; $7411: $01 $3a $40
    add hl, bc                                    ; $7414: $09
    ld a, [hl+]                                   ; $7415: $2a
    ld h, [hl]                                    ; $7416: $66
    ld l, a                                       ; $7417: $6f
    ld a, [hl]                                    ; $7418: $7e
    cp $fe                                        ; $7419: $fe $fe
    jr nz, jr_02b_741f                            ; $741b: $20 $02

    jr jr_02b_748f                                ; $741d: $18 $70

jr_02b_741f:
    add sp, -$02                                  ; $741f: $e8 $fe
    ld de, $c332                                  ; $7421: $11 $32 $c3
    push hl                                       ; $7424: $e5
    ld hl, sp+$02                                 ; $7425: $f8 $02
    ld [hl], e                                    ; $7427: $73
    inc hl                                        ; $7428: $23
    ld [hl], d                                    ; $7429: $72
    pop hl                                        ; $742a: $e1
    ld d, h                                       ; $742b: $54
    ld e, l                                       ; $742c: $5d
    ld b, $ff                                     ; $742d: $06 $ff
    ld c, $03                                     ; $742f: $0e $03
    xor a                                         ; $7431: $af
    ld hl, $c330                                  ; $7432: $21 $30 $c3
    ld [hl], a                                    ; $7435: $77
    ld hl, $c338                                  ; $7436: $21 $38 $c3
    ld [hl], a                                    ; $7439: $77
    inc hl                                        ; $743a: $23

jr_02b_743b:
    inc b                                         ; $743b: $04
    ld a, [de]                                    ; $743c: $1a
    inc de                                        ; $743d: $13
    cp $fe                                        ; $743e: $fe $fe
    jr z, jr_02b_7477                             ; $7440: $28 $35

    cp $ff                                        ; $7442: $fe $ff
    jr nz, jr_02b_743b                            ; $7444: $20 $f5

    inc b                                         ; $7446: $04
    ld a, b                                       ; $7447: $78
    inc a                                         ; $7448: $3c
    ld [hl], a                                    ; $7449: $77
    push de                                       ; $744a: $d5
    push hl                                       ; $744b: $e5
    ld hl, sp+$04                                 ; $744c: $f8 $04
    ld e, [hl]                                    ; $744e: $5e
    inc hl                                        ; $744f: $23
    ld d, [hl]                                    ; $7450: $56
    pop hl                                        ; $7451: $e1
    ld [de], a                                    ; $7452: $12
    inc de                                        ; $7453: $13
    inc de                                        ; $7454: $13
    push hl                                       ; $7455: $e5
    ld hl, sp+$04                                 ; $7456: $f8 $04
    ld [hl], e                                    ; $7458: $73
    inc hl                                        ; $7459: $23
    ld [hl], d                                    ; $745a: $72
    pop hl                                        ; $745b: $e1
    pop de                                        ; $745c: $d1
    ld a, [de]                                    ; $745d: $1a
    inc a                                         ; $745e: $3c
    inc de                                        ; $745f: $13
    push hl                                       ; $7460: $e5
    push de                                       ; $7461: $d5
    ld d, a                                       ; $7462: $57
    ld a, $04                                     ; $7463: $3e $04
    sub c                                         ; $7465: $91
    ld hl, $c330                                  ; $7466: $21 $30 $c3
    ld e, a                                       ; $7469: $5f
    ld a, d                                       ; $746a: $7a
    ld d, $00                                     ; $746b: $16 $00
    add hl, de                                    ; $746d: $19
    add hl, de                                    ; $746e: $19
    inc hl                                        ; $746f: $23
    ld [hl], a                                    ; $7470: $77
    pop de                                        ; $7471: $d1
    pop hl                                        ; $7472: $e1
    inc hl                                        ; $7473: $23
    dec c                                         ; $7474: $0d
    jr nz, jr_02b_743b                            ; $7475: $20 $c4

jr_02b_7477:
    ld a, $ff                                     ; $7477: $3e $ff
    dec hl                                        ; $7479: $2b
    ld [hl], a                                    ; $747a: $77
    push hl                                       ; $747b: $e5
    ld hl, sp+$02                                 ; $747c: $f8 $02
    ld e, [hl]                                    ; $747e: $5e
    inc hl                                        ; $747f: $23
    ld d, [hl]                                    ; $7480: $56
    pop hl                                        ; $7481: $e1
    dec de                                        ; $7482: $1b
    dec de                                        ; $7483: $1b
    ld [de], a                                    ; $7484: $12
    ld a, $01                                     ; $7485: $3e $01
    ld hl, $74a3                                  ; $7487: $21 $a3 $74
    call Call_000_23e8                            ; $748a: $cd $e8 $23
    add sp, $02                                   ; $748d: $e8 $02

jr_02b_748f:
    pop hl                                        ; $748f: $e1
    pop de                                        ; $7490: $d1
    pop bc                                        ; $7491: $c1
    pop af                                        ; $7492: $f1
    ret                                           ; $7493: $c9


    push af                                       ; $7494: $f5
    push bc                                       ; $7495: $c5
    push de                                       ; $7496: $d5
    push hl                                       ; $7497: $e5
    ld hl, $74a3                                  ; $7498: $21 $a3 $74
    call Call_000_2449                            ; $749b: $cd $49 $24
    pop hl                                        ; $749e: $e1
    pop de                                        ; $749f: $d1
    pop bc                                        ; $74a0: $c1
    pop af                                        ; $74a1: $f1
    ret                                           ; $74a2: $c9


    rst $30                                       ; $74a3: $f7
    add b                                         ; $74a4: $80
    inc bc                                        ; $74a5: $03
    jr nz, jr_02b_74ac                            ; $74a6: $20 $04

    rst $30                                       ; $74a8: $f7
    nop                                           ; $74a9: $00
    inc bc                                        ; $74aa: $03
    ret nz                                        ; $74ab: $c0

jr_02b_74ac:
    push af                                       ; $74ac: $f5
    push bc                                       ; $74ad: $c5
    push de                                       ; $74ae: $d5
    push hl                                       ; $74af: $e5
    ldh a, [$96]                                  ; $74b0: $f0 $96
    push af                                       ; $74b2: $f5
    ld a, $06                                     ; $74b3: $3e $06
    ldh [$96], a                                  ; $74b5: $e0 $96
    ldh [rSVBK], a                                ; $74b7: $e0 $70
    ld c, $00                                     ; $74b9: $0e $00
    ld hl, $c338                                  ; $74bb: $21 $38 $c3

jr_02b_74be:
    ld a, [hl]                                    ; $74be: $7e
    cp $ff                                        ; $74bf: $fe $ff
    jr z, jr_02b_74e0                             ; $74c1: $28 $1d

    push hl                                       ; $74c3: $e5
    ld l, c                                       ; $74c4: $69
    ld h, $00                                     ; $74c5: $26 $00
    add hl, hl                                    ; $74c7: $29
    ld de, $c330                                  ; $74c8: $11 $30 $c3
    add hl, de                                    ; $74cb: $19
    inc hl                                        ; $74cc: $23
    ld a, [hl]                                    ; $74cd: $7e
    dec a                                         ; $74ce: $3d
    ld [hl], a                                    ; $74cf: $77
    pop hl                                        ; $74d0: $e1
    inc hl                                        ; $74d1: $23
    ld b, c                                       ; $74d2: $41
    inc c                                         ; $74d3: $0c
    or a                                          ; $74d4: $b7
    jr nz, jr_02b_74be                            ; $74d5: $20 $e7

    ld a, b                                       ; $74d7: $78
    call Call_02b_74ea                            ; $74d8: $cd $ea $74
    ld a, c                                       ; $74db: $79
    cp $04                                        ; $74dc: $fe $04
    jr nz, jr_02b_74be                            ; $74de: $20 $de

jr_02b_74e0:
    pop af                                        ; $74e0: $f1
    ldh [$96], a                                  ; $74e1: $e0 $96
    ldh [rSVBK], a                                ; $74e3: $e0 $70
    pop hl                                        ; $74e5: $e1
    pop de                                        ; $74e6: $d1
    pop bc                                        ; $74e7: $c1
    pop af                                        ; $74e8: $f1
    ret                                           ; $74e9: $c9


Call_02b_74ea:
    push af                                       ; $74ea: $f5
    push bc                                       ; $74eb: $c5
    push de                                       ; $74ec: $d5
    push hl                                       ; $74ed: $e5
    push af                                       ; $74ee: $f5
    add sp, -$01                                  ; $74ef: $e8 $ff
    ld hl, sp+$00                                 ; $74f1: $f8 $00
    ld [hl], a                                    ; $74f3: $77
    ld h, $00                                     ; $74f4: $26 $00
    ld l, a                                       ; $74f6: $6f
    add hl, hl                                    ; $74f7: $29
    ld bc, $c330                                  ; $74f8: $01 $30 $c3
    add hl, bc                                    ; $74fb: $09
    ld a, [hl]                                    ; $74fc: $7e
    ld [$c33c], a                                 ; $74fd: $ea $3c $c3

jr_02b_7500:
    ld a, [$c32f]                                 ; $7500: $fa $2f $c3
    ld l, a                                       ; $7503: $6f
    ld h, $00                                     ; $7504: $26 $00
    add hl, hl                                    ; $7506: $29
    ld bc, $403a                                  ; $7507: $01 $3a $40
    add hl, bc                                    ; $750a: $09
    ld a, [hl+]                                   ; $750b: $2a
    ld h, [hl]                                    ; $750c: $66
    ld l, a                                       ; $750d: $6f
    ld a, [$c33c]                                 ; $750e: $fa $3c $c3
    ld c, a                                       ; $7511: $4f
    ld b, $00                                     ; $7512: $06 $00
    add hl, bc                                    ; $7514: $09
    ld a, [hl]                                    ; $7515: $7e
    cp $ff                                        ; $7516: $fe $ff
    jr nz, jr_02b_7529                            ; $7518: $20 $0f

    ld hl, sp+$00                                 ; $751a: $f8 $00
    ld c, [hl]                                    ; $751c: $4e
    ld b, $00                                     ; $751d: $06 $00
    ld hl, $c338                                  ; $751f: $21 $38 $c3
    add hl, bc                                    ; $7522: $09
    ld a, [hl]                                    ; $7523: $7e
    ld [$c33c], a                                 ; $7524: $ea $3c $c3
    jr jr_02b_7500                                ; $7527: $18 $d7

jr_02b_7529:
    ld b, a                                       ; $7529: $47
    inc hl                                        ; $752a: $23
    ld c, [hl]                                    ; $752b: $4e
    inc hl                                        ; $752c: $23
    ld e, [hl]                                    ; $752d: $5e
    inc hl                                        ; $752e: $23
    ld a, [hl]                                    ; $752f: $7e
    push af                                       ; $7530: $f5
    push bc                                       ; $7531: $c5
    ld l, e                                       ; $7532: $6b
    ld h, $00                                     ; $7533: $26 $00
    add hl, hl                                    ; $7535: $29
    add hl, hl                                    ; $7536: $29
    add hl, hl                                    ; $7537: $29
    add hl, hl                                    ; $7538: $29
    ld de, $b000                                  ; $7539: $11 $00 $b0
    add hl, de                                    ; $753c: $19
    push hl                                       ; $753d: $e5
    ld l, b                                       ; $753e: $68
    ld h, $00                                     ; $753f: $26 $00
    add hl, hl                                    ; $7541: $29
    add hl, hl                                    ; $7542: $29
    add hl, hl                                    ; $7543: $29
    add hl, hl                                    ; $7544: $29
    ld bc, $d800                                  ; $7545: $01 $00 $d8
    add hl, bc                                    ; $7548: $09
    pop de                                        ; $7549: $d1
    pop bc                                        ; $754a: $c1
    call Call_000_0468                            ; $754b: $cd $68 $04
    ld a, [$c33c]                                 ; $754e: $fa $3c $c3
    add $04                                       ; $7551: $c6 $04
    ld [$c33c], a                                 ; $7553: $ea $3c $c3
    pop af                                        ; $7556: $f1
    ld d, a                                       ; $7557: $57
    add sp, $01                                   ; $7558: $e8 $01
    pop af                                        ; $755a: $f1
    ld h, $00                                     ; $755b: $26 $00
    ld l, a                                       ; $755d: $6f
    add hl, hl                                    ; $755e: $29
    ld bc, $c330                                  ; $755f: $01 $30 $c3
    add hl, bc                                    ; $7562: $09
    ld a, [$c33c]                                 ; $7563: $fa $3c $c3
    ld [hl+], a                                   ; $7566: $22
    ld [hl], d                                    ; $7567: $72
    pop hl                                        ; $7568: $e1
    pop de                                        ; $7569: $d1
    pop bc                                        ; $756a: $c1
    pop af                                        ; $756b: $f1
    ret                                           ; $756c: $c9


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

Call_02b_7706:
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

Jump_02b_7ca0:
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

Jump_02b_7cc3:
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

Jump_02b_7cfe:
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

Jump_02b_7dff:
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

Jump_02b_7ea2:
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

Jump_02b_7f05:
    rst $38                                       ; $7f05: $ff
    rst $38                                       ; $7f06: $ff
    rst $38                                       ; $7f07: $ff

Call_02b_7f08:
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

Call_02b_7fa0:
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

Jump_02b_7fff:
    rst $38                                       ; $7fff: $ff
