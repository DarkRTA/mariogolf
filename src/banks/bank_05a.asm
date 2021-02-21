; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $05a", ROMX[$4000], BANK[$5a]

    ld a, [de]                                    ; $4000: $1a
    ld b, b                                       ; $4001: $40
    inc h                                         ; $4002: $24
    ld b, l                                       ; $4003: $45
    rst $28                                       ; $4004: $ef
    ld c, c                                       ; $4005: $49
    cp d                                          ; $4006: $ba
    ld c, [hl]                                    ; $4007: $4e
    ld h, d                                       ; $4008: $62
    ld d, e                                       ; $4009: $53
    rst $30                                       ; $400a: $f7
    ld d, a                                       ; $400b: $57
    ld h, c                                       ; $400c: $61
    ld e, h                                       ; $400d: $5c
    reti                                          ; $400e: $d9


    ld h, b                                       ; $400f: $60
    and a                                         ; $4010: $a7
    ld h, l                                       ; $4011: $65
    cp [hl]                                       ; $4012: $be
    ld l, d                                       ; $4013: $6a
    ld [hl], l                                    ; $4014: $75
    ld l, a                                       ; $4015: $6f
    ld d, l                                       ; $4016: $55
    ld [hl], h                                    ; $4017: $74
    ld d, d                                       ; $4018: $52
    ld a, c                                       ; $4019: $79
    ld [hl+], a                                   ; $401a: $22
    ld b, b                                       ; $401b: $40
    ld d, d                                       ; $401c: $52
    ld b, b                                       ; $401d: $40
    ld [$f043], sp                                ; $401e: $08 $43 $f0
    ld b, h                                       ; $4021: $44
    db $ec                                        ; $4022: $ec
    dec hl                                        ; $4023: $2b
    ld [hl+], a                                   ; $4024: $22
    dec sp                                        ; $4025: $3b
    ld b, b                                       ; $4026: $40
    ld [hl+], a                                   ; $4027: $22
    nop                                           ; $4028: $00
    add hl, bc                                    ; $4029: $09
    and l                                         ; $402a: $a5
    ld b, e                                       ; $402b: $43
    xor $37                                       ; $402c: $ee $37
    ld [hl+], a                                   ; $402e: $22
    dec sp                                        ; $402f: $3b
    ld b, b                                       ; $4030: $40
    ld [hl+], a                                   ; $4031: $22
    ccf                                           ; $4032: $3f
    ld a, a                                       ; $4033: $7f
    rla                                           ; $4034: $17
    ld e, [hl]                                    ; $4035: $5e
    ld de, $2249                                  ; $4036: $11 $49 $22
    dec sp                                        ; $4039: $3b
    ld [$0825], sp                                ; $403a: $08 $25 $08
    dec h                                         ; $403d: $25
    ld [$0825], sp                                ; $403e: $08 $25 $08
    dec h                                         ; $4041: $25
    ld [$0825], sp                                ; $4042: $08 $25 $08
    dec h                                         ; $4045: $25
    ld [$0825], sp                                ; $4046: $08 $25 $08
    dec h                                         ; $4049: $25
    ld [$0825], sp                                ; $404a: $08 $25 $08
    dec h                                         ; $404d: $25
    ld [$0825], sp                                ; $404e: $08 $25 $08
    dec h                                         ; $4051: $25
    rst $38                                       ; $4052: $ff
    dec bc                                        ; $4053: $0b
    dec bc                                        ; $4054: $0b
    inc c                                         ; $4055: $0c
    inc c                                         ; $4056: $0c
    inc l                                         ; $4057: $2c
    inc l                                         ; $4058: $2c
    dec bc                                        ; $4059: $0b
    dec hl                                        ; $405a: $2b
    or a                                          ; $405b: $b7
    dec bc                                        ; $405c: $0b
    ld a, [bc]                                    ; $405d: $0a
    dec bc                                        ; $405e: $0b
    rst $38                                       ; $405f: $ff
    ld [c], a                                     ; $4060: $e2
    inc l                                         ; $4061: $2c
    inc c                                         ; $4062: $0c
    rst $38                                       ; $4063: $ff
    ldh [$4c], a                                  ; $4064: $e0 $4c
    add e                                         ; $4066: $83
    ld c, h                                       ; $4067: $4c
    ld c, h                                       ; $4068: $4c
    ld a, [$fde1]                                 ; $4069: $fa $e1 $fd
    ld [c], a                                     ; $406c: $e2
    ld hl, sp-$1c                                 ; $406d: $f8 $e4
    di                                            ; $406f: $f3
    push hl                                       ; $4070: $e5
    db $fc                                        ; $4071: $fc

Call_05a_4072:
    pop af                                        ; $4072: $f1
    inc l                                         ; $4073: $2c
    inc bc                                        ; $4074: $03
    inc l                                         ; $4075: $2c
    ld c, h                                       ; $4076: $4c
    cp a                                          ; $4077: $bf
    ldh [rIE], a                                  ; $4078: $e0 $ff
    db $e4                                        ; $407a: $e4
    cp a                                          ; $407b: $bf
    db $e4                                        ; $407c: $e4
    db $fd                                        ; $407d: $fd
    and $b5                                       ; $407e: $e6 $b5
    db $e3                                        ; $4080: $e3
    ei                                            ; $4081: $fb

Jump_05a_4082:
    and $3a                                       ; $4082: $e6 $3a
    ret nz                                        ; $4084: $c0

    di                                            ; $4085: $f3
    inc l                                         ; $4086: $2c
    add e                                         ; $4087: $83
    ldh [rWX], a                                  ; $4088: $e0 $4b
    dec bc                                        ; $408a: $0b
    ld l, e                                       ; $408b: $6b
    ei                                            ; $408c: $fb
    pop hl                                        ; $408d: $e1
    ld a, [hl]                                    ; $408e: $7e
    ld [c], a                                     ; $408f: $e2
    ret nc                                        ; $4090: $d0

    jp Jump_05a_7ee6                              ; $4091: $c3 $e6 $7e


    ld [c], a                                     ; $4094: $e2
    cp l                                          ; $4095: $bd
    push hl                                       ; $4096: $e5
    ld a, a                                       ; $4097: $7f

Jump_05a_4098:
    or $0c                                        ; $4098: $f6 $0c
    ld a, a                                       ; $409a: $7f
    ldh [$0b], a                                  ; $409b: $e0 $0b
    ld l, e                                       ; $409d: $6b
    add c                                         ; $409e: $81
    ld l, e                                       ; $409f: $6b
    ret nz                                        ; $40a0: $c0

    pop hl                                        ; $40a1: $e1
    cp a                                          ; $40a2: $bf
    db $e3                                        ; $40a3: $e3
    add c                                         ; $40a4: $81
    push hl                                       ; $40a5: $e5
    ld b, d                                       ; $40a6: $42
    rst $20                                       ; $40a7: $e7
    dec sp                                        ; $40a8: $3b
    push hl                                       ; $40a9: $e5
    ld a, $f4                                     ; $40aa: $3e $f4
    inc c                                         ; $40ac: $0c
    nop                                           ; $40ad: $00
    pop bc                                        ; $40ae: $c1
    ldh [$3d], a                                  ; $40af: $e0 $3d
    ld [c], a                                     ; $40b1: $e2
    cp a                                          ; $40b2: $bf
    pop hl                                        ; $40b3: $e1
    nop                                           ; $40b4: $00
    db $e3                                        ; $40b5: $e3
    add e                                         ; $40b6: $83
    ld [c], a                                     ; $40b7: $e2
    cp h                                          ; $40b8: $bc
    db $e4                                        ; $40b9: $e4
    dec sp                                        ; $40ba: $3b
    db $e4                                        ; $40bb: $e4
    cp $c3                                        ; $40bc: $fe $c3
    nop                                           ; $40be: $00
    db $dd                                        ; $40bf: $dd
    jp nz, $e6f9                                  ; $40c0: $c2 $f9 $e6

    db $eb                                        ; $40c3: $eb

jr_05a_40c4:
    jp $e582                                      ; $40c4: $c3 $82 $e5


    cp $e1                                        ; $40c7: $fe $e1
    xor [hl]                                      ; $40c9: $ae
    ret nz                                        ; $40ca: $c0

    push de                                       ; $40cb: $d5
    jp $e50f                                      ; $40cc: $c3 $0f $e5


    ret nc                                        ; $40cf: $d0

    pop bc                                        ; $40d0: $c1
    db $eb                                        ; $40d1: $eb
    cp d                                          ; $40d2: $ba
    adc $94                                       ; $40d3: $ce $94
    ret nz                                        ; $40d5: $c0

    ld b, e                                       ; $40d6: $43
    pop hl                                        ; $40d7: $e1
    ld l, e                                       ; $40d8: $6b
    pop bc                                        ; $40d9: $c1
    db $e4                                        ; $40da: $e4
    ld c, e                                       ; $40db: $4b
    ld c, e                                       ; $40dc: $4b
    nop                                           ; $40dd: $00
    adc e                                         ; $40de: $8b
    add $80                                       ; $40df: $c6 $80
    add $72                                       ; $40e1: $c6 $72
    call nz, $d07e                                ; $40e3: $c4 $7e $d0
    sbc a                                         ; $40e6: $9f
    jp nz, $e105                                  ; $40e7: $c2 $05 $e1

    add c                                         ; $40ea: $81
    and $c0                                       ; $40eb: $e6 $c0
    ld [c], a                                     ; $40ed: $e2
    nop                                           ; $40ee: $00
    ld c, c                                       ; $40ef: $49
    db $e4                                        ; $40f0: $e4
    add b                                         ; $40f1: $80
    push bc                                       ; $40f2: $c5
    add h                                         ; $40f3: $84
    rst $00                                       ; $40f4: $c7
    jr c, jr_05a_40c4                             ; $40f5: $38 $cd

    ld a, [bc]                                    ; $40f7: $0a
    ret nz                                        ; $40f8: $c0

    add h                                         ; $40f9: $84
    pop hl                                        ; $40fa: $e1
    ld b, c                                       ; $40fb: $41
    jp $e340                                      ; $40fc: $c3 $40 $e3


Jump_05a_40ff:
    add c                                         ; $40ff: $81
    dec hl                                        ; $4100: $2b
    pop bc                                        ; $4101: $c1
    push bc                                       ; $4102: $c5
    rst $38                                       ; $4103: $ff
    call nz, $c2f3                                ; $4104: $c4 $f3 $c2
    ld a, [$e8e3]                                 ; $4107: $fa $e3 $e8
    and l                                         ; $410a: $a5
    rlca                                          ; $410b: $07
    db $eb                                        ; $410c: $eb
    ld c, e                                       ; $410d: $4b
    nop                                           ; $410e: $00
    add l                                         ; $410f: $85
    jp nz, $a3c0                                  ; $4110: $c2 $c0 $a3

    nop                                           ; $4113: $00
    db $e4                                        ; $4114: $e4
    rst $38                                       ; $4115: $ff
    and $f4                                       ; $4116: $e6 $f4
    xor c                                         ; $4118: $a9
    xor h                                         ; $4119: $ac
    and d                                         ; $411a: $a2
    ld a, [$49ac]                                 ; $411b: $fa $ac $49
    ret nz                                        ; $411e: $c0

    add b                                         ; $411f: $80
    ld a, l                                       ; $4120: $7d
    db $e3                                        ; $4121: $e3
    ret nz                                        ; $4122: $c0

    and $6e                                       ; $4123: $e6 $6e
    and c                                         ; $4125: $a1
    jp nc, $c0e6                                  ; $4126: $d2 $e6 $c0

    call $e374                                    ; $4129: $cd $74 $e3
    add e                                         ; $412c: $83
    ret z                                         ; $412d: $c8

    dec hl                                        ; $412e: $2b
    nop                                           ; $412f: $00
    add h                                         ; $4130: $84
    db $e3                                        ; $4131: $e3
    ld a, [hl]                                    ; $4132: $7e
    and $bf                                       ; $4133: $e6 $bf
    and b                                         ; $4135: $a0
    ld l, $a0                                     ; $4136: $2e $a0
    rst $10                                       ; $4138: $d7
    rst $20                                       ; $4139: $e7
    ld c, b                                       ; $413a: $48
    and [hl]                                      ; $413b: $a6
    ld b, c                                       ; $413c: $41
    and $38                                       ; $413d: $e6 $38
    xor e                                         ; $413f: $ab
    add hl, bc                                    ; $4140: $09
    ld c, e                                       ; $4141: $4b
    ld b, e                                       ; $4142: $43
    db $e4                                        ; $4143: $e4
    dec a                                         ; $4144: $3d
    add sp, $6b                                   ; $4145: $e8 $6b
    ld b, a                                       ; $4147: $47
    and a                                         ; $4148: $a7
    ld bc, $7acb                                  ; $4149: $01 $cb $7a
    pop de                                        ; $414c: $d1
    adc [hl]                                      ; $414d: $8e
    and b                                         ; $414e: $a0
    ld b, $7e                                     ; $414f: $06 $7e
    db $ec                                        ; $4151: $ec
    ld l, e                                       ; $4152: $6b
    ld l, e                                       ; $4153: $6b
    jp nc, $ff86                                  ; $4154: $d2 $86 $ff

    rst $00                                       ; $4157: $c7
    ld l, l                                       ; $4158: $6d
    rst $20                                       ; $4159: $e7
    xor l                                         ; $415a: $ad
    add d                                         ; $415b: $82
    ld c, $a0                                     ; $415c: $0e $a0
    db $e4                                        ; $415e: $e4
    cp d                                          ; $415f: $ba
    and h                                         ; $4160: $a4
    ld [$2ba0], sp                                ; $4161: $08 $a0 $2b
    inc a                                         ; $4164: $3c
    ldh [$fc], a                                  ; $4165: $e0 $fc
    rst $00                                       ; $4167: $c7
    ld l, e                                       ; $4168: $6b
    ld l, e                                       ; $4169: $6b
    ld a, [bc]                                    ; $416a: $0a
    ldh [rLCDC], a                                ; $416b: $e0 $40
    and a                                         ; $416d: $a7
    pop bc                                        ; $416e: $c1
    add l                                         ; $416f: $85
    ld [de], a                                    ; $4170: $12
    ret z                                         ; $4171: $c8

    adc $85                                       ; $4172: $ce $85
    ret nz                                        ; $4174: $c0

    and $0b                                       ; $4175: $e6 $0b
    dec bc                                        ; $4177: $0b
    dec hl                                        ; $4178: $2b
    nop                                           ; $4179: $00
    rst $00                                       ; $417a: $c7
    and l                                         ; $417b: $a5
    pop bc                                        ; $417c: $c1
    db $e3                                        ; $417d: $e3
    add b                                         ; $417e: $80
    and d                                         ; $417f: $a2
    pop bc                                        ; $4180: $c1
    adc e                                         ; $4181: $8b
    ld a, [hl]                                    ; $4182: $7e
    push hl                                       ; $4183: $e5
    ld [hl], l                                    ; $4184: $75
    add h                                         ; $4185: $84
    add c                                         ; $4186: $81
    rst $20                                       ; $4187: $e7
    ld d, [hl]                                    ; $4188: $56
    ret                                           ; $4189: $c9


    db $10                                        ; $418a: $10
    ei                                            ; $418b: $fb
    add sp, $09                                   ; $418c: $e8 $09
    add $79                                       ; $418e: $c6 $79
    and h                                         ; $4190: $a4
    ld [hl], $8a                                  ; $4191: $36 $8a
    ld c, h                                       ; $4193: $4c
    ret nz                                        ; $4194: $c0

    db $ec                                        ; $4195: $ec
    ld h, e                                       ; $4196: $63
    and [hl]                                      ; $4197: $a6
    adc h                                         ; $4198: $8c
    adc l                                         ; $4199: $8d
    nop                                           ; $419a: $00
    ld a, c                                       ; $419b: $79
    add d                                         ; $419c: $82
    ld a, [hl]                                    ; $419d: $7e
    rst $20                                       ; $419e: $e7
    ld l, [hl]                                    ; $419f: $6e

Jump_05a_41a0:
    add h                                         ; $41a0: $84

Jump_05a_41a1:
    ld sp, hl                                     ; $41a1: $f9
    ld l, h                                       ; $41a2: $6c
    push de                                       ; $41a3: $d5
    ld l, b                                       ; $41a4: $68
    adc h                                         ; $41a5: $8c
    adc e                                         ; $41a6: $8b
    dec b                                         ; $41a7: $05
    xor b                                         ; $41a8: $a8
    cp b                                          ; $41a9: $b8
    db $e4                                        ; $41aa: $e4
    inc b                                         ; $41ab: $04
    scf                                           ; $41ac: $37
    push hl                                       ; $41ad: $e5
    jp nz, Jump_000_2cc1                          ; $41ae: $c2 $c1 $2c

    ld a, c                                       ; $41b1: $79
    add l                                         ; $41b2: $85
    sbc b                                         ; $41b3: $98
    ld l, d                                       ; $41b4: $6a
    adc h                                         ; $41b5: $8c
    adc c                                         ; $41b6: $89
    adc [hl]                                      ; $41b7: $8e
    ld h, [hl]                                    ; $41b8: $66
    or [hl]                                       ; $41b9: $b6
    xor d                                         ; $41ba: $aa
    nop                                           ; $41bb: $00
    inc hl                                        ; $41bc: $23
    ld h, c                                       ; $41bd: $61
    ret nz                                        ; $41be: $c0

    jp hl                                         ; $41bf: $e9


    dec d                                         ; $41c0: $15
    ld l, c                                       ; $41c1: $69
    adc h                                         ; $41c2: $8c
    adc l                                         ; $41c3: $8d
    ld [$b7a5], sp                                ; $41c4: $08 $a5 $b7
    ld l, b                                       ; $41c7: $68
    dec [hl]                                      ; $41c8: $35
    ld h, h                                       ; $41c9: $64
    cp a                                          ; $41ca: $bf
    jp z, $dc00                                   ; $41cb: $ca $00 $dc

    add a                                         ; $41ce: $87
    adc h                                         ; $41cf: $8c
    adc d                                         ; $41d0: $8a
    rlca                                          ; $41d1: $07
    ld h, [hl]                                    ; $41d2: $66
    or a                                          ; $41d3: $b7
    ld l, l                                       ; $41d4: $6d

jr_05a_41d5:
    ld a, a                                       ; $41d5: $7f
    call $6615                                    ; $41d6: $cd $15 $66
    adc h                                         ; $41d9: $8c
    adc e                                         ; $41da: $8b
    call z, Call_000_0086                         ; $41db: $cc $86 $00
    or a                                          ; $41de: $b7
    ld l, [hl]                                    ; $41df: $6e
    nop                                           ; $41e0: $00
    adc h                                         ; $41e1: $8c
    inc hl                                        ; $41e2: $23
    and [hl]                                      ; $41e3: $a6
    adc h                                         ; $41e4: $8c
    adc e                                         ; $41e5: $8b
    adc $44                                       ; $41e6: $ce $44
    or a                                          ; $41e8: $b7
    ld l, a                                       ; $41e9: $6f
    add b                                         ; $41ea: $80
    di                                            ; $41eb: $f3
    adc h                                         ; $41ec: $8c
    adc [hl]                                      ; $41ed: $8e
    nop                                           ; $41ee: $00
    adc h                                         ; $41ef: $8c
    ld c, b                                       ; $41f0: $48
    sbc a                                         ; $41f1: $9f
    jp z, $ab40                                   ; $41f2: $ca $40 $ab

    ld d, l                                       ; $41f5: $55
    ld c, b                                       ; $41f6: $48
    adc h                                         ; $41f7: $8c
    adc [hl]                                      ; $41f8: $8e
    ld c, c                                       ; $41f9: $49
    ld b, l                                       ; $41fa: $45
    dec hl                                        ; $41fb: $2b
    jp hl                                         ; $41fc: $e9


    ld bc, $00a4                                  ; $41fd: $01 $a4 $00
    cp $af                                        ; $4200: $fe $af
    db $d3                                        ; $4202: $d3
    and e                                         ; $4203: $a3
    adc h                                         ; $4204: $8c
    adc b                                         ; $4205: $88
    ld h, e                                       ; $4206: $63
    xor d                                         ; $4207: $aa
    or a                                          ; $4208: $b7
    ld l, d                                       ; $4209: $6a
    ret nz                                        ; $420a: $c0

    jp hl                                         ; $420b: $e9


    add d                                         ; $420c: $82
    add sp, -$74                                  ; $420d: $e8 $8c
    adc h                                         ; $420f: $8c
    nop                                           ; $4210: $00
    ld a, d                                       ; $4211: $7a
    ld h, $01                                     ; $4212: $26 $01
    jp z, $a340                                   ; $4214: $ca $40 $a3

    add d                                         ; $4217: $82
    ld c, e                                       ; $4218: $4b
    dec d                                         ; $4219: $15
    bit 1, l                                      ; $421a: $cb $4d
    ld a, [hl+]                                   ; $421c: $2a
    or a                                          ; $421d: $b7
    ld [hl], c                                    ; $421e: $71
    ret nz                                        ; $421f: $c0

    db $eb                                        ; $4220: $eb
    nop                                           ; $4221: $00
    db $eb                                        ; $4222: $eb
    add $4d                                       ; $4223: $c6 $4d
    inc [hl]                                      ; $4225: $34
    dec hl                                        ; $4226: $2b
    db $ed                                        ; $4227: $ed
    cp d                                          ; $4228: $ba
    dec c                                         ; $4229: $0d
    nop                                           ; $422a: $00
    call z, $878c                                 ; $422b: $cc $8c $87
    add e                                         ; $422e: $83
    ld [$cbe6], a                                 ; $422f: $ea $e6 $cb
    nop                                           ; $4232: $00
    add l                                         ; $4233: $85
    jr z, jr_05a_41d5                             ; $4234: $28 $9f

    ld b, l                                       ; $4236: $45
    ld a, d                                       ; $4237: $7a
    ret                                           ; $4238: $c9


    adc l                                         ; $4239: $8d
    ld a, [bc]                                    ; $423a: $0a
    ld a, b                                       ; $423b: $78
    dec c                                         ; $423c: $0d
    add a                                         ; $423d: $87
    ld h, c                                       ; $423e: $61
    jp $bd80                                      ; $423f: $c3 $80 $bd


    jp hl                                         ; $4242: $e9


    nop                                           ; $4243: $00
    ld d, [hl]                                    ; $4244: $56
    ld b, l                                       ; $4245: $45
    sub [hl]                                      ; $4246: $96
    ld l, e                                       ; $4247: $6b
    sub b                                         ; $4248: $90
    and h                                         ; $4249: $a4
    or a                                          ; $424a: $b7
    ld l, h                                       ; $424b: $6c
    ld b, a                                       ; $424c: $47
    ld h, d                                       ; $424d: $62
    ret nz                                        ; $424e: $c0

    ld l, b                                       ; $424f: $68
    ld d, h                                       ; $4250: $54
    ld c, e                                       ; $4251: $4b
    rst $30                                       ; $4252: $f7
    ld [$0000], a                                 ; $4253: $ea $00 $00
    rst $00                                       ; $4256: $c7
    or a                                          ; $4257: $b7
    ld l, b                                       ; $4258: $68
    ld [$c162], sp                                ; $4259: $08 $62 $c1
    ld [$5354], a                                 ; $425c: $ea $54 $53
    and l                                         ; $425f: $a5
    xor [hl]                                      ; $4260: $ae
    call nz, $8168                                ; $4261: $c4 $68 $81
    jp hl                                         ; $4264: $e9


    nop                                           ; $4265: $00
    ld [c], a                                     ; $4266: $e2
    ret nc                                        ; $4267: $d0

    ld [$2b48], sp                                ; $4268: $08 $48 $2b
    rst $28                                       ; $426b: $ef
    ld a, h                                       ; $426c: $7c
    rrca                                          ; $426d: $0f
    ld l, a                                       ; $426e: $6f
    daa                                           ; $426f: $27
    or h                                          ; $4270: $b4
    pop af                                        ; $4271: $f1
    dec hl                                        ; $4272: $2b
    db $ec                                        ; $4273: $ec
    ld [bc], a                                    ; $4274: $02
    adc l                                         ; $4275: $8d
    nop                                           ; $4276: $00
    jr nc, jr_05a_42e8                            ; $4277: $30 $6f

    ld h, l                                       ; $4279: $65
    rst $08                                       ; $427a: $cf
    pop bc                                        ; $427b: $c1
    ld c, h                                       ; $427c: $4c
    ret nz                                        ; $427d: $c0

    db $ed                                        ; $427e: $ed
    rst $30                                       ; $427f: $f7
    or $fe                                        ; $4280: $f6 $fe
    and l                                         ; $4282: $a5
    db $eb                                        ; $4283: $eb
    ld l, e                                       ; $4284: $6b
    rst $38                                       ; $4285: $ff
    rst $38                                       ; $4286: $ff
    nop                                           ; $4287: $00
    ld l, d                                       ; $4288: $6a
    xor e                                         ; $4289: $ab
    ld [hl], a                                    ; $428a: $77
    dec c                                         ; $428b: $0d
    rst $38                                       ; $428c: $ff
    rst $38                                       ; $428d: $ff
    ld h, b                                       ; $428e: $60
    inc b                                         ; $428f: $04
    ldh [rSCY], a                                 ; $4290: $e0 $42
    ret nz                                        ; $4292: $c0

    adc a                                         ; $4293: $8f
    rst $00                                       ; $4294: $c7
    rst $38                                       ; $4295: $ff
    db $fd                                        ; $4296: $fd
    adc $00                                       ; $4297: $ce $00
    ld l, a                                       ; $4299: $6f
    ret                                           ; $429a: $c9


    ret nz                                        ; $429b: $c0

    rst $38                                       ; $429c: $ff
    add b                                         ; $429d: $80
    rst $20                                       ; $429e: $e7
    db $fc                                        ; $429f: $fc
    ld h, [hl]                                    ; $42a0: $66
    db $eb                                        ; $42a1: $eb
    ld l, b                                       ; $42a2: $68
    ret nz                                        ; $42a3: $c0

    rst $38                                       ; $42a4: $ff
    ld b, b                                       ; $42a5: $40
    xor $24                                       ; $42a6: $ee $24
    inc h                                         ; $42a8: $24
    nop                                           ; $42a9: $00
    cpl                                           ; $42aa: $2f
    ld h, $ff                                     ; $42ab: $26 $ff
    rst $38                                       ; $42ad: $ff
    and d                                         ; $42ae: $a2
    adc e                                         ; $42af: $8b
    ld hl, sp+$05                                 ; $42b0: $f8 $05
    ld b, e                                       ; $42b2: $43
    jr nc, jr_05a_42f4                            ; $42b3: $30 $3f

    call c, $85bc                                 ; $42b5: $dc $bc $85
    add l                                         ; $42b8: $85
    rst $38                                       ; $42b9: $ff
    nop                                           ; $42ba: $00
    inc sp                                        ; $42bb: $33
    cp $cd                                        ; $42bc: $fe $cd
    cp a                                          ; $42be: $bf
    rst $38                                       ; $42bf: $ff
    rst $38                                       ; $42c0: $ff
    rst $38                                       ; $42c1: $ff
    rst $38                                       ; $42c2: $ff
    sub [hl]                                      ; $42c3: $96
    rst $38                                       ; $42c4: $ff
    reti                                          ; $42c5: $d9


    or e                                          ; $42c6: $b3
    rst $38                                       ; $42c7: $ff
    rst $38                                       ; $42c8: $ff
    rst $38                                       ; $42c9: $ff
    rst $38                                       ; $42ca: $ff
    nop                                           ; $42cb: $00
    rst $38                                       ; $42cc: $ff
    rst $38                                       ; $42cd: $ff
    rst $38                                       ; $42ce: $ff
    rst $38                                       ; $42cf: $ff
    scf                                           ; $42d0: $37
    db $eb                                        ; $42d1: $eb
    call c, $ffff                                 ; $42d2: $dc $ff $ff
    rst $38                                       ; $42d5: $ff
    rst $38                                       ; $42d6: $ff
    rst $38                                       ; $42d7: $ff
    rst $38                                       ; $42d8: $ff
    rst $38                                       ; $42d9: $ff
    rst $38                                       ; $42da: $ff
    rst $38                                       ; $42db: $ff
    nop                                           ; $42dc: $00
    rst $38                                       ; $42dd: $ff
    rst $38                                       ; $42de: $ff
    rst $38                                       ; $42df: $ff
    rst $38                                       ; $42e0: $ff
    rst $38                                       ; $42e1: $ff
    rst $38                                       ; $42e2: $ff
    rst $38                                       ; $42e3: $ff
    rst $38                                       ; $42e4: $ff
    rst $38                                       ; $42e5: $ff
    rst $38                                       ; $42e6: $ff
    rst $38                                       ; $42e7: $ff

jr_05a_42e8:
    rst $38                                       ; $42e8: $ff
    rst $38                                       ; $42e9: $ff
    rst $38                                       ; $42ea: $ff
    rst $38                                       ; $42eb: $ff
    rst $38                                       ; $42ec: $ff
    nop                                           ; $42ed: $00
    rst $38                                       ; $42ee: $ff
    rst $38                                       ; $42ef: $ff
    rst $38                                       ; $42f0: $ff
    rst $38                                       ; $42f1: $ff
    rst $38                                       ; $42f2: $ff
    rst $38                                       ; $42f3: $ff

jr_05a_42f4:
    rst $38                                       ; $42f4: $ff
    rst $38                                       ; $42f5: $ff
    rst $38                                       ; $42f6: $ff
    rst $38                                       ; $42f7: $ff
    nop                                           ; $42f8: $00
    cp a                                          ; $42f9: $bf
    rst $38                                       ; $42fa: $ff
    rst $38                                       ; $42fb: $ff
    rst $38                                       ; $42fc: $ff
    rst $38                                       ; $42fd: $ff
    nop                                           ; $42fe: $00
    rst $38                                       ; $42ff: $ff
    rst $38                                       ; $4300: $ff
    rst $38                                       ; $4301: $ff
    rst $38                                       ; $4302: $ff
    ld e, c                                       ; $4303: $59
    ld [hl], e                                    ; $4304: $73
    nop                                           ; $4305: $00
    nop                                           ; $4306: $00
    nop                                           ; $4307: $00
    rst $38                                       ; $4308: $ff
    ld sp, $1131                                  ; $4309: $31 $31 $11
    ld [de], a                                    ; $430c: $12
    ld [de], a                                    ; $430d: $12
    ld de, $6031                                  ; $430e: $11 $31 $60
    rst $38                                       ; $4311: $ff
    ld e, e                                       ; $4312: $5b
    ld e, d                                       ; $4313: $5a
    ld e, e                                       ; $4314: $5b
    ld e, e                                       ; $4315: $5b
    ld e, h                                       ; $4316: $5c
    ld e, l                                       ; $4317: $5d
    ld sp, $9f31                                  ; $4318: $31 $31 $9f
    rrca                                          ; $431b: $0f
    jr nz, jr_05a_433e                            ; $431c: $20 $20

    jr nz, jr_05a_4320                            ; $431e: $20 $00

jr_05a_4320:
    rst $38                                       ; $4320: $ff
    rst $38                                       ; $4321: $ff
    rst $20                                       ; $4322: $e7
    and $11                                       ; $4323: $e6 $11
    ccf                                           ; $4325: $3f
    ld [de], a                                    ; $4326: $12
    ld hl, $2222                                  ; $4327: $21 $22 $22
    ld hl, $bf15                                  ; $432a: $21 $15 $bf
    ldh [$c2], a                                  ; $432d: $e0 $c2
    pop hl                                        ; $432f: $e1
    ldh a, [$fe]                                  ; $4330: $f0 $fe
    ldh [$bf], a                                  ; $4332: $e0 $bf
    ldh [$ca], a                                  ; $4334: $e0 $ca
    rst $38                                       ; $4336: $ff
    add sp, -$19                                  ; $4337: $e8 $e7
    ld hl, $1022                                  ; $4339: $21 $22 $10
    jr nz, @+$01                                  ; $433c: $20 $ff

jr_05a_433e:
    jr nz, jr_05a_4350                            ; $433e: $20 $10

    rla                                           ; $4340: $17
    ld sp, $6231                                  ; $4341: $31 $31 $62
    ld sp, $0f31                                  ; $4344: $31 $31 $0f
    ld b, a                                       ; $4347: $47
    ld d, [hl]                                    ; $4348: $56
    ld d, a                                       ; $4349: $57
    ld c, l                                       ; $434a: $4d
    ld a, [hl]                                    ; $434b: $7e
    pop hl                                        ; $434c: $e1
    jp z, $e8ff                                   ; $434d: $ca $ff $e8

jr_05a_4350:
    rst $20                                       ; $4350: $e7
    ld d, c                                       ; $4351: $51
    ldh [$fc], a                                  ; $4352: $e0 $fc
    ld c, [hl]                                    ; $4354: $4e
    ldh [$7f], a                                  ; $4355: $e0 $7f
    ldh [$31], a                                  ; $4357: $e0 $31
    ld c, l                                       ; $4359: $4d
    ld b, [hl]                                    ; $435a: $46
    ld [hl], $30                                  ; $435b: $36 $30
    jr nc, jr_05a_4350                            ; $435d: $30 $f1

    ld [hl-], a                                   ; $435f: $32
    cp a                                          ; $4360: $bf
    pop hl                                        ; $4361: $e1
    jp z, $c0ff                                   ; $4362: $ca $ff $c0

    db $ed                                        ; $4365: $ed
    jr z, jr_05a_437d                             ; $4366: $28 $15

    ld sp, $434d                                  ; $4368: $31 $4d $43
    ld [hl-], a                                   ; $436b: $32
    jr nc, @+$01                                  ; $436c: $30 $ff

    pop hl                                        ; $436e: $e1
    cp a                                          ; $436f: $bf
    pop hl                                        ; $4370: $e1
    jp z, $80ff                                   ; $4371: $ca $ff $80

    db $ed                                        ; $4374: $ed
    rrca                                          ; $4375: $0f
    pop bc                                        ; $4376: $c1
    ldh [$7f], a                                  ; $4377: $e0 $7f
    ld l, d                                       ; $4379: $6a
    jr nc, @+$32                                  ; $437a: $30 $30

    ld l, l                                       ; $437c: $6d

jr_05a_437d:
    ld l, d                                       ; $437d: $6a
    ld l, b                                       ; $437e: $68
    ld l, b                                       ; $437f: $68
    ld a, [hl]                                    ; $4380: $7e
    ldh [$fc], a                                  ; $4381: $e0 $fc
    jp z, Jump_05a_40ff                           ; $4383: $ca $ff $40

    db $ec                                        ; $4386: $ec
    rrca                                          ; $4387: $0f
    ld sp, $3247                                  ; $4388: $31 $47 $32
    ld l, l                                       ; $438b: $6d
    ld l, d                                       ; $438c: $6a
    and b                                         ; $438d: $a0
    pop bc                                        ; $438e: $c1
    ldh [$c0], a                                  ; $438f: $e0 $c0
    ldh [$bf], a                                  ; $4391: $e0 $bf
    ldh [$ca], a                                  ; $4393: $e0 $ca
    rst $38                                       ; $4395: $ff
    add sp, -$19                                  ; $4396: $e8 $e7
    dec b                                         ; $4398: $05
    rst $38                                       ; $4399: $ff
    ldh [rIF], a                                  ; $439a: $e0 $0f
    db $fd                                        ; $439c: $fd
    ld b, a                                       ; $439d: $47
    dec b                                         ; $439e: $05
    ldh [$6d], a                                  ; $439f: $e0 $6d
    jr nc, @+$32                                  ; $43a1: $30 $30

    ld l, d                                       ; $43a3: $6a
    ld l, d                                       ; $43a4: $6a
    ld l, l                                       ; $43a5: $6d
    dec b                                         ; $43a6: $05
    ld l, h                                       ; $43a7: $6c
    rst $38                                       ; $43a8: $ff
    ldh [$39], a                                  ; $43a9: $e0 $39
    jp z, $e8ff                                   ; $43ab: $ca $ff $e8

    rst $20                                       ; $43ae: $e7
    ld c, h                                       ; $43af: $4c
    ret nz                                        ; $43b0: $c0

    jp nz, Jump_05a_44e0                          ; $43b1: $c2 $e0 $44

    ldh [$5f], a                                  ; $43b4: $e0 $5f
    jr nc, jr_05a_43e8                            ; $43b6: $30 $30

    ld l, c                                       ; $43b8: $69
    ld l, c                                       ; $43b9: $69
    ld l, l                                       ; $43ba: $6d
    ret nz                                        ; $43bb: $c0

    ld [c], a                                     ; $43bc: $e2
    ld d, e                                       ; $43bd: $53
    jp z, Jump_05a_64ff                           ; $43be: $ca $ff $64

    ret nz                                        ; $43c1: $c0

    add sp, -$77                                  ; $43c2: $e8 $89
    pop bc                                        ; $43c4: $c1
    ld l, l                                       ; $43c5: $6d
    ld b, e                                       ; $43c6: $43
    ldh [$c0], a                                  ; $43c7: $e0 $c0
    pop hl                                        ; $43c9: $e1
    ld l, e                                       ; $43ca: $6b
    ld l, e                                       ; $43cb: $6b
    cp h                                          ; $43cc: $bc
    pop bc                                        ; $43cd: $c1
    inc b                                         ; $43ce: $04
    add b                                         ; $43cf: $80
    rst $38                                       ; $43d0: $ff
    jp hl                                         ; $43d1: $e9


    add sp, -$50                                  ; $43d2: $e8 $b0
    ret z                                         ; $43d4: $c8

    pop bc                                        ; $43d5: $c1
    cp a                                          ; $43d6: $bf
    db $e3                                        ; $43d7: $e3
    ret nz                                        ; $43d8: $c0

    db $e4                                        ; $43d9: $e4
    nop                                           ; $43da: $00
    rst $38                                       ; $43db: $ff
    ld [$29e9], a                                 ; $43dc: $ea $e9 $29
    ld a, e                                       ; $43df: $7b
    add h                                         ; $43e0: $84
    db $e3                                        ; $43e1: $e3
    ld a, [hl]                                    ; $43e2: $7e
    pop hl                                        ; $43e3: $e1
    ld l, e                                       ; $43e4: $6b
    ld b, b                                       ; $43e5: $40
    ldh [$6d], a                                  ; $43e6: $e0 $6d

jr_05a_43e8:
    cp $a1                                        ; $43e8: $fe $a1
    jp z, $a6ff                                   ; $43ea: $ca $ff $a6

    add sp, -$19                                  ; $43ed: $e8 $e7
    ld a, c                                       ; $43ef: $79
    ld [hl], c                                    ; $43f0: $71
    cp a                                          ; $43f1: $bf
    rst $20                                       ; $43f2: $e7
    ret nz                                        ; $43f3: $c0

    ret nz                                        ; $43f4: $c0

    ld l, l                                       ; $43f5: $6d
    cp a                                          ; $43f6: $bf
    and b                                         ; $43f7: $a0
    ld h, b                                       ; $43f8: $60
    inc h                                         ; $43f9: $24
    jp z, $e8ff                                   ; $43fa: $ca $ff $e8

    rst $20                                       ; $43fd: $e7
    add b                                         ; $43fe: $80
    cp a                                          ; $43ff: $bf
    db $eb                                        ; $4400: $eb
    pop bc                                        ; $4401: $c1
    pop hl                                        ; $4402: $e1
    ld e, e                                       ; $4403: $5b
    jp z, $c0ff                                   ; $4404: $ca $ff $c0

    add sp, $6f                                   ; $4407: $e8 $6f
    add b                                         ; $4409: $80

Call_05a_440a:
    ld a, c                                       ; $440a: $79
    ld l, [hl]                                    ; $440b: $6e
    ld [hl], $3d                                  ; $440c: $36 $3d
    push hl                                       ; $440e: $e5
    ld [hl], $46                                  ; $440f: $36 $46
    pop bc                                        ; $4411: $c1
    pop hl                                        ; $4412: $e1
    ld sp, hl                                     ; $4413: $f9
    ld e, d                                       ; $4414: $5a
    jp z, $c0ff                                   ; $4415: $ca $ff $c0

    jp hl                                         ; $4418: $e9


    add b                                         ; $4419: $80
    add b                                         ; $441a: $80
    ld l, a                                       ; $441b: $6f
    ld a, h                                       ; $441c: $7c
    ld a, h                                       ; $441d: $7c
    rst $38                                       ; $441e: $ff
    ld a, l                                       ; $441f: $7d
    ld d, a                                       ; $4420: $57
    ld d, [hl]                                    ; $4421: $56
    ld d, [hl]                                    ; $4422: $56
    ld d, a                                       ; $4423: $57
    ld d, a                                       ; $4424: $57
    ld b, a                                       ; $4425: $47
    ld sp, $3700                                  ; $4426: $31 $00 $37
    add d                                         ; $4429: $82
    jp z, $ffff                                   ; $442a: $ca $ff $ff

    rst $38                                       ; $442d: $ff
    rst $38                                       ; $442e: $ff
    rst $38                                       ; $442f: $ff
    rst $38                                       ; $4430: $ff
    rst $38                                       ; $4431: $ff
    rst $38                                       ; $4432: $ff
    rst $38                                       ; $4433: $ff
    rst $38                                       ; $4434: $ff
    rst $38                                       ; $4435: $ff
    rst $38                                       ; $4436: $ff
    rst $38                                       ; $4437: $ff
    nop                                           ; $4438: $00
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
    rst $38                                       ; $4444: $ff
    rst $38                                       ; $4445: $ff
    rst $38                                       ; $4446: $ff
    rst $38                                       ; $4447: $ff
    rst $38                                       ; $4448: $ff
    nop                                           ; $4449: $00
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
    rst $38                                       ; $4455: $ff
    rst $38                                       ; $4456: $ff
    rst $38                                       ; $4457: $ff
    rst $38                                       ; $4458: $ff
    rst $38                                       ; $4459: $ff
    nop                                           ; $445a: $00
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
    rst $38                                       ; $4466: $ff
    rst $38                                       ; $4467: $ff
    rst $38                                       ; $4468: $ff
    rst $38                                       ; $4469: $ff
    rst $38                                       ; $446a: $ff
    nop                                           ; $446b: $00
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
    rst $38                                       ; $4477: $ff
    rst $38                                       ; $4478: $ff
    rst $38                                       ; $4479: $ff
    rst $38                                       ; $447a: $ff
    rst $38                                       ; $447b: $ff
    nop                                           ; $447c: $00
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
    rst $38                                       ; $4488: $ff
    rst $38                                       ; $4489: $ff
    rst $38                                       ; $448a: $ff
    rst $38                                       ; $448b: $ff
    rst $38                                       ; $448c: $ff
    nop                                           ; $448d: $00
    rst $38                                       ; $448e: $ff
    rst $38                                       ; $448f: $ff
    rst $38                                       ; $4490: $ff
    rst $38                                       ; $4491: $ff
    rst $38                                       ; $4492: $ff
    rst $38                                       ; $4493: $ff
    rst $38                                       ; $4494: $ff
    rst $38                                       ; $4495: $ff
    rst $38                                       ; $4496: $ff
    rst $38                                       ; $4497: $ff
    rst $38                                       ; $4498: $ff
    rst $38                                       ; $4499: $ff
    rst $38                                       ; $449a: $ff
    rst $38                                       ; $449b: $ff
    rst $38                                       ; $449c: $ff
    rst $38                                       ; $449d: $ff
    nop                                           ; $449e: $00
    rst $38                                       ; $449f: $ff
    rst $38                                       ; $44a0: $ff
    rst $38                                       ; $44a1: $ff
    rst $38                                       ; $44a2: $ff
    rst $38                                       ; $44a3: $ff
    rst $38                                       ; $44a4: $ff
    rst $38                                       ; $44a5: $ff
    rst $38                                       ; $44a6: $ff
    rst $38                                       ; $44a7: $ff
    rst $38                                       ; $44a8: $ff
    rst $38                                       ; $44a9: $ff
    rst $38                                       ; $44aa: $ff
    rst $38                                       ; $44ab: $ff
    rst $38                                       ; $44ac: $ff
    rst $38                                       ; $44ad: $ff
    rst $38                                       ; $44ae: $ff
    nop                                           ; $44af: $00
    rst $38                                       ; $44b0: $ff
    rst $38                                       ; $44b1: $ff
    rst $38                                       ; $44b2: $ff
    rst $38                                       ; $44b3: $ff
    rst $38                                       ; $44b4: $ff
    rst $38                                       ; $44b5: $ff
    rst $38                                       ; $44b6: $ff
    rst $38                                       ; $44b7: $ff
    rst $38                                       ; $44b8: $ff
    rst $38                                       ; $44b9: $ff
    rst $38                                       ; $44ba: $ff
    rst $38                                       ; $44bb: $ff
    rst $38                                       ; $44bc: $ff
    rst $38                                       ; $44bd: $ff
    rst $38                                       ; $44be: $ff
    rst $38                                       ; $44bf: $ff

Jump_05a_44c0:
    nop                                           ; $44c0: $00
    rst $38                                       ; $44c1: $ff
    rst $38                                       ; $44c2: $ff
    rst $38                                       ; $44c3: $ff
    rst $38                                       ; $44c4: $ff
    rst $38                                       ; $44c5: $ff
    rst $38                                       ; $44c6: $ff
    rst $38                                       ; $44c7: $ff
    rst $38                                       ; $44c8: $ff
    rst $38                                       ; $44c9: $ff
    rst $38                                       ; $44ca: $ff
    rst $38                                       ; $44cb: $ff
    rst $38                                       ; $44cc: $ff
    rst $38                                       ; $44cd: $ff
    rst $38                                       ; $44ce: $ff
    rst $38                                       ; $44cf: $ff
    rst $38                                       ; $44d0: $ff
    nop                                           ; $44d1: $00
    rst $38                                       ; $44d2: $ff
    rst $38                                       ; $44d3: $ff
    rst $38                                       ; $44d4: $ff
    rst $38                                       ; $44d5: $ff
    rst $38                                       ; $44d6: $ff
    rst $38                                       ; $44d7: $ff
    rst $38                                       ; $44d8: $ff
    rst $38                                       ; $44d9: $ff
    rst $38                                       ; $44da: $ff
    rst $38                                       ; $44db: $ff
    rst $38                                       ; $44dc: $ff
    rst $38                                       ; $44dd: $ff
    rst $38                                       ; $44de: $ff
    rst $38                                       ; $44df: $ff

Call_05a_44e0:
Jump_05a_44e0:
    rst $38                                       ; $44e0: $ff
    rst $38                                       ; $44e1: $ff
    nop                                           ; $44e2: $00
    rst $38                                       ; $44e3: $ff
    rst $38                                       ; $44e4: $ff
    rst $38                                       ; $44e5: $ff
    rst $38                                       ; $44e6: $ff
    rst $38                                       ; $44e7: $ff
    rst $38                                       ; $44e8: $ff
    rst $38                                       ; $44e9: $ff
    rst $38                                       ; $44ea: $ff
    rst $38                                       ; $44eb: $ff
    di                                            ; $44ec: $f3
    nop                                           ; $44ed: $00
    nop                                           ; $44ee: $00
    nop                                           ; $44ef: $00
    and l                                         ; $44f0: $a5
    nop                                           ; $44f1: $00
    rst $38                                       ; $44f2: $ff
    push hl                                       ; $44f3: $e5
    ld [hl-], a                                   ; $44f4: $32
    or $e6                                        ; $44f5: $f6 $e6
    rst $30                                       ; $44f7: $f7
    rst $20                                       ; $44f8: $e7
    dec [hl]                                      ; $44f9: $35
    db $ec                                        ; $44fa: $ec
    xor $37                                       ; $44fb: $ee $37
    db $ec                                        ; $44fd: $ec
    jp c, $c7f0                                   ; $44fe: $da $f0 $c7

    add sp, $33                                   ; $4501: $e8 $33
    ld sp, $f2e0                                  ; $4503: $31 $e0 $f2
    ld [hl], $30                                  ; $4506: $36 $30
    scf                                           ; $4508: $37
    cp a                                          ; $4509: $bf
    ld h, $20                                     ; $450a: $26 $20
    daa                                           ; $450c: $27
    db $10                                        ; $450d: $10
    ld d, $17                                     ; $450e: $16 $17
    jp nz, Jump_000_34f6                          ; $4510: $c2 $f6 $34

    rst $38                                       ; $4513: $ff
    ld [hl], $32                                  ; $4514: $36 $32
    jr nc, jr_05a_454f                            ; $4516: $30 $37

    ld sp, $3133                                  ; $4518: $31 $33 $31
    inc sp                                        ; $451b: $33
    nop                                           ; $451c: $00
    and b                                         ; $451d: $a0
    ei                                            ; $451e: $fb
    rst $38                                       ; $451f: $ff
    rst $28                                       ; $4520: $ef
    nop                                           ; $4521: $00
    nop                                           ; $4522: $00
    nop                                           ; $4523: $00
    inc l                                         ; $4524: $2c
    ld b, l                                       ; $4525: $45
    ld e, h                                       ; $4526: $5c
    ld b, l                                       ; $4527: $45
    ld a, [$bb47]                                 ; $4528: $fa $47 $bb
    ld c, c                                       ; $452b: $49
    db $ec                                        ; $452c: $ec
    dec hl                                        ; $452d: $2b
    ld [hl+], a                                   ; $452e: $22
    dec sp                                        ; $452f: $3b
    ld b, b                                       ; $4530: $40
    ld [hl+], a                                   ; $4531: $22
    nop                                           ; $4532: $00
    add hl, bc                                    ; $4533: $09
    and l                                         ; $4534: $a5
    ld b, e                                       ; $4535: $43
    xor $37                                       ; $4536: $ee $37
    ld [hl+], a                                   ; $4538: $22
    dec sp                                        ; $4539: $3b
    ld b, b                                       ; $453a: $40
    ld [hl+], a                                   ; $453b: $22
    ccf                                           ; $453c: $3f
    ld a, a                                       ; $453d: $7f
    rla                                           ; $453e: $17
    ld e, [hl]                                    ; $453f: $5e
    ld de, $2249                                  ; $4540: $11 $49 $22
    dec sp                                        ; $4543: $3b
    ld [$0825], sp                                ; $4544: $08 $25 $08
    dec h                                         ; $4547: $25
    ld [$0825], sp                                ; $4548: $08 $25 $08
    dec h                                         ; $454b: $25
    ld [$0825], sp                                ; $454c: $08 $25 $08

jr_05a_454f:
    dec h                                         ; $454f: $25
    ld [$0825], sp                                ; $4550: $08 $25 $08
    dec h                                         ; $4553: $25
    ld [$0825], sp                                ; $4554: $08 $25 $08
    dec h                                         ; $4557: $25
    ld [$0825], sp                                ; $4558: $08 $25 $08
    dec h                                         ; $455b: $25
    ld a, l                                       ; $455c: $7d
    inc c                                         ; $455d: $0c
    rst $38                                       ; $455e: $ff
    db $e4                                        ; $455f: $e4
    dec bc                                        ; $4560: $0b
    dec bc                                        ; $4561: $0b
    ld l, e                                       ; $4562: $6b
    ld l, e                                       ; $4563: $6b
    ld c, e                                       ; $4564: $4b
    rst $38                                       ; $4565: $ff
    ld [c], a                                     ; $4566: $e2
    rra                                           ; $4567: $1f
    dec bc                                        ; $4568: $0b
    dec bc                                        ; $4569: $0b
    ld c, h                                       ; $456a: $4c
    inc c                                         ; $456b: $0c
    ld c, h                                       ; $456c: $4c
    rst $38                                       ; $456d: $ff
    ldh [$e6], a                                  ; $456e: $e0 $e6
    ldh [$fc], a                                  ; $4570: $e0 $fc
    ldh [$e0], a                                  ; $4572: $e0 $e0
    ld sp, hl                                     ; $4574: $f9
    pop hl                                        ; $4575: $e1
    ld hl, sp-$1e                                 ; $4576: $f8 $e2
    rst $30                                       ; $4578: $f7
    ld [c], a                                     ; $4579: $e2
    db $fc                                        ; $457a: $fc
    rst $28                                       ; $457b: $ef
    sub $e3                                       ; $457c: $d6 $e3
    dec hl                                        ; $457e: $2b
    dec hl                                        ; $457f: $2b
    ld l, e                                       ; $4580: $6b
    add d                                         ; $4581: $82
    rst $38                                       ; $4582: $ff
    pop hl                                        ; $4583: $e1
    dec bc                                        ; $4584: $0b
    cp d                                          ; $4585: $ba
    ldh [$bf], a                                  ; $4586: $e0 $bf
    ldh [$e8], a                                  ; $4588: $e0 $e8
    db $e3                                        ; $458a: $e3
    db $fd                                        ; $458b: $fd
    and $b5                                       ; $458c: $e6 $b5
    db $e3                                        ; $458e: $e3
    ld c, h                                       ; $458f: $4c
    ld h, e                                       ; $4590: $63
    inc c                                         ; $4591: $0c
    inc l                                         ; $4592: $2c
    cp [hl]                                       ; $4593: $be
    pop af                                        ; $4594: $f1
    call $cae0                                    ; $4595: $cd $e0 $ca
    pop hl                                        ; $4598: $e1
    ld l, e                                       ; $4599: $6b
    ld l, e                                       ; $459a: $6b
    cp l                                          ; $459b: $bd
    ld [c], a                                     ; $459c: $e2
    ld b, d                                       ; $459d: $42
    ld a, [c]                                     ; $459e: $f2
    pop hl                                        ; $459f: $e1
    ld c, e                                       ; $45a0: $4b
    add b                                         ; $45a1: $80
    ldh [$c0], a                                  ; $45a2: $e0 $c0
    rst $20                                       ; $45a4: $e7
    ld [hl], h                                    ; $45a5: $74
    ldh [$b2], a                                  ; $45a6: $e0 $b2
    db $e4                                        ; $45a8: $e4
    inc l                                         ; $45a9: $2c
    ret nz                                        ; $45aa: $c0

    ld a, [c]                                     ; $45ab: $f2
    jr jr_05a_45ff                                ; $45ac: $18 $51

    ldh [$c2], a                                  ; $45ae: $e0 $c2
    db $e3                                        ; $45b0: $e3
    ld a, [hl]                                    ; $45b1: $7e
    and $2b                                       ; $45b2: $e6 $2b
    ld c, e                                       ; $45b4: $4b
    ld d, h                                       ; $45b5: $54
    db $e3                                        ; $45b6: $e3
    ld a, [hl]                                    ; $45b7: $7e

jr_05a_45b8:
    db $e3                                        ; $45b8: $e3
    db $fc                                        ; $45b9: $fc
    db $e3                                        ; $45ba: $e3
    adc h                                         ; $45bb: $8c
    ld b, b                                       ; $45bc: $40
    pop hl                                        ; $45bd: $e1
    ret nz                                        ; $45be: $c0

    di                                            ; $45bf: $f3
    dec bc                                        ; $45c0: $0b
    dec hl                                        ; $45c1: $2b
    add e                                         ; $45c2: $83
    pop hl                                        ; $45c3: $e1
    ret nz                                        ; $45c4: $c0

    and $fc                                       ; $45c5: $e6 $fc
    ret nz                                        ; $45c7: $c0

    ld l, e                                       ; $45c8: $6b
    nop                                           ; $45c9: $00
    ld b, b                                       ; $45ca: $40
    pop hl                                        ; $45cb: $e1
    add d                                         ; $45cc: $82
    and $40                                       ; $45cd: $e6 $40
    add sp, -$05                                  ; $45cf: $e8 $fb
    push bc                                       ; $45d1: $c5
    jr c, jr_05a_45b8                             ; $45d2: $38 $e4

    ld sp, $c0e3                                  ; $45d4: $31 $e3 $c0
    rst $20                                       ; $45d7: $e7
    cp b                                          ; $45d8: $b8
    ld [c], a                                     ; $45d9: $e2
    add d                                         ; $45da: $82
    cp e                                          ; $45db: $bb
    ret nz                                        ; $45dc: $c0

    dec bc                                        ; $45dd: $0b
    nop                                           ; $45de: $00
    db $e3                                        ; $45df: $e3
    ld [c], a                                     ; $45e0: $e2
    jp $c7d9                                      ; $45e1: $c3 $d9 $c7


    or e                                          ; $45e4: $b3
    call nz, $cdb8                                ; $45e5: $c4 $b8 $cd
    dec bc                                        ; $45e8: $0b
    nop                                           ; $45e9: $00
    add $c0                                       ; $45ea: $c6 $c0
    ld bc, $fbe2                                  ; $45ec: $01 $e2 $fb
    jp nz, $e2f8                                  ; $45ef: $c2 $f8 $e2

    ret nz                                        ; $45f2: $c0

    jp nz, $e6c1                                  ; $45f3: $c2 $c1 $e6

    ld a, a                                       ; $45f6: $7f
    ret z                                         ; $45f7: $c8

    cp b                                          ; $45f8: $b8
    pop de                                        ; $45f9: $d1
    nop                                           ; $45fa: $00
    ret nz                                        ; $45fb: $c0

    ldh [$8a], a                                  ; $45fc: $e0 $8a
    pop bc                                        ; $45fe: $c1

jr_05a_45ff:
    add c                                         ; $45ff: $81
    ldh [$c6], a                                  ; $4600: $e0 $c6
    ret nz                                        ; $4602: $c0

    ld b, e                                       ; $4603: $43
    pop bc                                        ; $4604: $c1
    ret nz                                        ; $4605: $c0

    pop hl                                        ; $4606: $e1
    pop de                                        ; $4607: $d1
    db $e4                                        ; $4608: $e4
    ret nz                                        ; $4609: $c0

    call nz, Call_000_3f84                        ; $460a: $c4 $84 $3f
    db $eb                                        ; $460d: $eb
    cp b                                          ; $460e: $b8
    call z, $c60b                                 ; $460f: $cc $0b $c6
    ld [c], a                                     ; $4612: $e2
    ld b, c                                       ; $4613: $41
    pop hl                                        ; $4614: $e1
    pop bc                                        ; $4615: $c1
    pop hl                                        ; $4616: $e1
    ret nz                                        ; $4617: $c0

    ld [c], a                                     ; $4618: $e2
    ld l, h                                       ; $4619: $6c
    nop                                           ; $461a: $00
    ld [bc], a                                    ; $461b: $02
    pop hl                                        ; $461c: $e1
    ld a, $c4                                     ; $461d: $3e $c4
    add c                                         ; $461f: $81
    pop bc                                        ; $4620: $c1
    dec [hl]                                      ; $4621: $35
    call nz, $a5f8                                ; $4622: $c4 $f8 $a5
    ret nz                                        ; $4625: $c0

    push af                                       ; $4626: $f5
    jp nz, Jump_05a_41a1                          ; $4627: $c2 $a1 $41

    push hl                                       ; $462a: $e5
    nop                                           ; $462b: $00
    ld c, $c3                                     ; $462c: $0e $c3
    cp $e4                                        ; $462e: $fe $e4
    ld [hl], l                                    ; $4630: $75
    rst $00                                       ; $4631: $c7
    cp l                                          ; $4632: $bd
    add $b4                                       ; $4633: $c6 $b4
    and a                                         ; $4635: $a7
    call z, $8ea0                                 ; $4636: $cc $a0 $8e
    and b                                         ; $4639: $a0
    ld b, c                                       ; $463a: $41
    ret nz                                        ; $463b: $c0

    nop                                           ; $463c: $00
    add h                                         ; $463d: $84
    and h                                         ; $463e: $a4
    add c                                         ; $463f: $81
    pop hl                                        ; $4640: $e1
    rst $10                                       ; $4641: $d7
    and d                                         ; $4642: $a2
    adc l                                         ; $4643: $8d
    rst $20                                       ; $4644: $e7
    ld a, [c]                                     ; $4645: $f2
    add sp, -$08                                  ; $4646: $e8 $f8
    and $b4                                       ; $4648: $e6 $b4
    and [hl]                                      ; $464a: $a6
    ret nz                                        ; $464b: $c0

    pop hl                                        ; $464c: $e1
    add c                                         ; $464d: $81
    ld c, e                                       ; $464e: $4b
    ret nz                                        ; $464f: $c0

    push hl                                       ; $4650: $e5
    ld a, [hl]                                    ; $4651: $7e
    and d                                         ; $4652: $a2
    push bc                                       ; $4653: $c5
    add $8d                                       ; $4654: $c6 $8d
    and $3f                                       ; $4656: $e6 $3f
    and a                                         ; $4658: $a7
    scf                                           ; $4659: $37
    xor a                                         ; $465a: $af
    dec bc                                        ; $465b: $0b
    ld hl, $c96b                                  ; $465c: $21 $6b $c9
    pop bc                                        ; $465f: $c1
    add b                                         ; $4660: $80
    db $e4                                        ; $4661: $e4
    di                                            ; $4662: $f3
    ldh [rSCY], a                                 ; $4663: $e0 $42
    pop bc                                        ; $4665: $c1
    inc l                                         ; $4666: $2c
    ld [de], a                                    ; $4667: $12
    push bc                                       ; $4668: $c5
    ret nz                                        ; $4669: $c0

    and l                                         ; $466a: $a5
    nop                                           ; $466b: $00
    ld b, b                                       ; $466c: $40
    call nz, $a8fc                                ; $466d: $c4 $fc $a8
    ld b, b                                       ; $4670: $40
    xor b                                         ; $4671: $a8
    jp z, Jump_05a_4082                           ; $4672: $ca $82 $40

    ld [c], a                                     ; $4675: $e2
    ld b, b                                       ; $4676: $40
    and e                                         ; $4677: $a3
    rst $18                                       ; $4678: $df
    and h                                         ; $4679: $a4
    dec b                                         ; $467a: $05
    and l                                         ; $467b: $a5
    nop                                           ; $467c: $00
    ld a, l                                       ; $467d: $7d
    jp $e7be                                      ; $467e: $c3 $be $e7


    cp l                                          ; $4681: $bd
    and e                                         ; $4682: $a3
    rst $38                                       ; $4683: $ff

jr_05a_4684:
    ldh [rP1], a                                  ; $4684: $e0 $00
    push hl                                       ; $4686: $e5
    adc [hl]                                      ; $4687: $8e
    add c                                         ; $4688: $81
    ld a, [hl]                                    ; $4689: $7e
    ldh [$81], a                                  ; $468a: $e0 $81
    push hl                                       ; $468c: $e5
    ld b, b                                       ; $468d: $40
    ld b, b                                       ; $468e: $40
    jp hl                                         ; $468f: $e9


    ld b, c                                       ; $4690: $41
    and l                                         ; $4691: $a5
    ld a, a                                       ; $4692: $7f
    and l                                         ; $4693: $a5
    dec l                                         ; $4694: $2d
    and h                                         ; $4695: $a4
    ret nz                                        ; $4696: $c0

    jp hl                                         ; $4697: $e9


    dec bc                                        ; $4698: $0b
    call nz, $c84b                                ; $4699: $c4 $4b $c8
    and c                                         ; $469c: $a1
    nop                                           ; $469d: $00
    pop bc                                        ; $469e: $c1
    add d                                         ; $469f: $82
    add d                                         ; $46a0: $82
    add l                                         ; $46a1: $85
    ret nz                                        ; $46a2: $c0

    db $ed                                        ; $46a3: $ed
    ld a, b                                       ; $46a4: $78
    xor c                                         ; $46a5: $a9
    add c                                         ; $46a6: $81
    rst $20                                       ; $46a7: $e7
    ld e, c                                       ; $46a8: $59
    db $ec                                        ; $46a9: $ec
    ld b, $86                                     ; $46aa: $06 $86
    inc de                                        ; $46ac: $13
    add a                                         ; $46ad: $87
    nop                                           ; $46ae: $00
    call nc, $f7e8                                ; $46af: $d4 $e8 $f7
    ld h, [hl]                                    ; $46b2: $66
    ret nz                                        ; $46b3: $c0

    jp hl                                         ; $46b4: $e9


    ld d, $89                                     ; $46b5: $16 $89
    ld c, $e7                                     ; $46b7: $0e $e7
    jp z, $c265                                   ; $46b9: $ca $65 $c2

    ld l, l                                       ; $46bc: $6d

jr_05a_46bd:
    jr c, jr_05a_4684                             ; $46bd: $38 $c5

    jr nz, jr_05a_46bd                            ; $46bf: $20 $fc

    ld a, [$62d4]                                 ; $46c1: $fa $d4 $62
    jp nz, $3071                                  ; $46c4: $c2 $71 $30

    add h                                         ; $46c7: $84
    jp nz, Jump_000_2cc1                          ; $46c8: $c2 $c1 $2c

    or c                                          ; $46cb: $b1
    ld h, h                                       ; $46cc: $64
    ld [hl+], a                                   ; $46cd: $22
    add h                                         ; $46ce: $84
    nop                                           ; $46cf: $00
    ld a, [de]                                    ; $46d0: $1a
    rst $00                                       ; $46d1: $c7
    ld c, b                                       ; $46d2: $48
    ld h, d                                       ; $46d3: $62
    call nc, $bf60                                ; $46d4: $d4 $60 $bf
    call nz, $69c2                                ; $46d7: $c4 $c2 $69
    ld [hl], a                                    ; $46da: $77
    ld h, [hl]                                    ; $46db: $66
    ret nz                                        ; $46dc: $c0

    jp hl                                         ; $46dd: $e9


    ccf                                           ; $46de: $3f
    ld a, [c]                                     ; $46df: $f2
    nop                                           ; $46e0: $00
    ld h, b                                       ; $46e1: $60
    ret nz                                        ; $46e2: $c0

    ld d, b                                       ; $46e3: $50
    ld h, b                                       ; $46e4: $60
    jp nz, $fc6d                                  ; $46e5: $c2 $6d $fc

    ld b, a                                       ; $46e8: $47
    db $eb                                        ; $46e9: $eb
    jp z, $f140                                   ; $46ea: $ca $40 $f1

    jp $bde0                                      ; $46ed: $c3 $e0 $bd


    pop hl                                        ; $46f0: $e1
    nop                                           ; $46f1: $00
    jp nz, $8c69                                  ; $46f2: $c2 $69 $8c

    rst $00                                       ; $46f5: $c7
    ld b, h                                       ; $46f6: $44
    ldh [$c0], a                                  ; $46f7: $e0 $c0
    ei                                            ; $46f9: $fb
    add a                                         ; $46fa: $87
    ld b, b                                       ; $46fb: $40
    ret nz                                        ; $46fc: $c0

    db $e4                                        ; $46fd: $e4
    jp z, $85d2                                   ; $46fe: $ca $d2 $85

    ld hl, sp+$00                                 ; $4701: $f8 $00
    ld a, a                                       ; $4703: $7f
    rst $20                                       ; $4704: $e7
    ld a, a                                       ; $4705: $7f
    ld l, b                                       ; $4706: $68
    ld b, c                                       ; $4707: $41
    ld c, a                                       ; $4708: $4f
    ccf                                           ; $4709: $3f
    jp z, $cabc                                   ; $470a: $ca $bc $ca

    call nc, $c289                                ; $470d: $d4 $89 $c2
    ld l, e                                       ; $4710: $6b
    add b                                         ; $4711: $80
    or e                                          ; $4712: $b3
    nop                                           ; $4713: $00
    ret nz                                        ; $4714: $c0

    di                                            ; $4715: $f3
    rst $38                                       ; $4716: $ff
    daa                                           ; $4717: $27
    jp nz, $2a68                                  ; $4718: $c2 $68 $2a

    adc b                                         ; $471b: $88
    push af                                       ; $471c: $f5
    add hl, hl                                    ; $471d: $29
    and a                                         ; $471e: $a7
    cpl                                           ; $471f: $2f
    ld d, l                                       ; $4720: $55
    ld h, [hl]                                    ; $4721: $66
    jp nz, Jump_000_006a                          ; $4722: $c2 $6a $00

    cp a                                          ; $4725: $bf
    ld c, c                                       ; $4726: $49
    or l                                          ; $4727: $b5
    daa                                           ; $4728: $27
    xor e                                         ; $4729: $ab
    jr nc, @-$6a                                  ; $472a: $30 $94

    ld b, [hl]                                    ; $472c: $46
    jp nz, $c06b                                  ; $472d: $c2 $6b $c0

    ld l, d                                       ; $4730: $6a
    ret nz                                        ; $4731: $c0

    rst $18                                       ; $4732: $df
    add h                                         ; $4733: $84
    ld b, l                                       ; $4734: $45
    nop                                           ; $4735: $00
    ld c, c                                       ; $4736: $49
    ld b, [hl]                                    ; $4737: $46
    or b                                          ; $4738: $b0
    jr z, jr_05a_47af                             ; $4739: $28 $74

    jp z, Jump_000_0ee7                           ; $473b: $ca $e7 $0e

    db $d3                                        ; $473e: $d3
    ld b, [hl]                                    ; $473f: $46
    jp nz, $bc6b                                  ; $4740: $c2 $6b $bc

    ld a, [hl+]                                   ; $4743: $2a
    inc [hl]                                      ; $4744: $34
    rlc b                                         ; $4745: $cb $00
    call nc, Call_000_3f70                        ; $4747: $d4 $70 $3f
    ld c, d                                       ; $474a: $4a
    push bc                                       ; $474b: $c5
    di                                            ; $474c: $f3
    ld l, d                                       ; $474d: $6a
    adc e                                         ; $474e: $8b
    call nc, $926d                                ; $474f: $d4 $6d $92
    ld b, [hl]                                    ; $4752: $46
    ld a, [bc]                                    ; $4753: $0a
    xor b                                         ; $4754: $a8
    ld a, [hl+]                                   ; $4755: $2a
    adc c                                         ; $4756: $89
    nop                                           ; $4757: $00
    sub d                                         ; $4758: $92
    call $6dd4                                    ; $4759: $cd $d4 $6d
    adc e                                         ; $475c: $8b
    ld l, c                                       ; $475d: $69
    ld e, c                                       ; $475e: $59
    adc [hl]                                      ; $475f: $8e
    ld bc, $d4b4                                  ; $4760: $01 $b4 $d4
    ld l, c                                       ; $4763: $69
    rst $10                                       ; $4764: $d7
    xor [hl]                                      ; $4765: $ae
    xor e                                         ; $4766: $ab
    ld l, e                                       ; $4767: $6b
    nop                                           ; $4768: $00
    ld a, e                                       ; $4769: $7b
    rst $18                                       ; $476a: $df
    ld a, [de]                                    ; $476b: $1a
    ldh a, [$ba]                                  ; $476c: $f0 $ba
    ld h, $c0                                     ; $476e: $26 $c0
    rst $38                                       ; $4770: $ff
    and a                                         ; $4771: $a7
    ld [hl], l                                    ; $4772: $75
    ld [bc], a                                    ; $4773: $02
    rst $18                                       ; $4774: $df
    add a                                         ; $4775: $87
    di                                            ; $4776: $f3
    scf                                           ; $4777: $37
    ld l, c                                       ; $4778: $69
    nop                                           ; $4779: $00
    ld [bc], a                                    ; $477a: $02
    sbc e                                         ; $477b: $9b
    ld [hl], l                                    ; $477c: $75
    xor l                                         ; $477d: $ad
    ld a, d                                       ; $477e: $7a
    rrca                                          ; $477f: $0f
    ret nz                                        ; $4780: $c0

    rst $38                                       ; $4781: $ff
    ld sp, hl                                     ; $4782: $f9
    ld h, [hl]                                    ; $4783: $66
    ld a, d                                       ; $4784: $7a
    ld de, $ffff                                  ; $4785: $11 $ff $ff
    adc $ca                                       ; $4788: $ce $ca
    nop                                           ; $478a: $00
    ld a, d                                       ; $478b: $7a
    dec c                                         ; $478c: $0d
    rst $38                                       ; $478d: $ff
    rst $38                                       ; $478e: $ff
    ld h, [hl]                                    ; $478f: $66
    xor h                                         ; $4790: $ac
    ld a, d                                       ; $4791: $7a
    rrca                                          ; $4792: $0f
    rst $38                                       ; $4793: $ff
    rst $38                                       ; $4794: $ff
    ret nc                                        ; $4795: $d0

    dec hl                                        ; $4796: $2b
    ld a, d                                       ; $4797: $7a
    inc c                                         ; $4798: $0c
    rst $38                                       ; $4799: $ff
    rst $38                                       ; $479a: $ff
    nop                                           ; $479b: $00
    and [hl]                                      ; $479c: $a6
    add h                                         ; $479d: $84
    ld a, d                                       ; $479e: $7a
    ld [de], a                                    ; $479f: $12
    rst $38                                       ; $47a0: $ff
    rst $38                                       ; $47a1: $ff
    and [hl]                                      ; $47a2: $a6
    sbc h                                         ; $47a3: $9c
    rst $38                                       ; $47a4: $ff
    rst $38                                       ; $47a5: $ff
    and [hl]                                      ; $47a6: $a6
    sbc h                                         ; $47a7: $9c
    rst $38                                       ; $47a8: $ff
    rst $38                                       ; $47a9: $ff
    and [hl]                                      ; $47aa: $a6
    sbc d                                         ; $47ab: $9a
    nop                                           ; $47ac: $00
    rst $38                                       ; $47ad: $ff
    rst $38                                       ; $47ae: $ff

jr_05a_47af:
    and [hl]                                      ; $47af: $a6
    sbc e                                         ; $47b0: $9b
    rst $38                                       ; $47b1: $ff
    rst $38                                       ; $47b2: $ff
    rst $38                                       ; $47b3: $ff
    rst $38                                       ; $47b4: $ff
    sub [hl]                                      ; $47b5: $96
    rst $38                                       ; $47b6: $ff
    rst $38                                       ; $47b7: $ff
    rst $38                                       ; $47b8: $ff
    ld [hl], e                                    ; $47b9: $73
    ccf                                           ; $47ba: $3f
    rst $38                                       ; $47bb: $ff
    rst $38                                       ; $47bc: $ff
    nop                                           ; $47bd: $00
    rst $38                                       ; $47be: $ff
    rst $38                                       ; $47bf: $ff
    rst $38                                       ; $47c0: $ff
    rst $38                                       ; $47c1: $ff
    scf                                           ; $47c2: $37
    or $dc                                        ; $47c3: $f6 $dc
    rst $38                                       ; $47c5: $ff
    rst $38                                       ; $47c6: $ff
    rst $38                                       ; $47c7: $ff
    rst $38                                       ; $47c8: $ff
    rst $38                                       ; $47c9: $ff
    rst $38                                       ; $47ca: $ff
    rst $38                                       ; $47cb: $ff
    rst $38                                       ; $47cc: $ff
    rst $38                                       ; $47cd: $ff
    nop                                           ; $47ce: $00
    rst $38                                       ; $47cf: $ff
    rst $38                                       ; $47d0: $ff
    rst $38                                       ; $47d1: $ff
    rst $38                                       ; $47d2: $ff
    rst $38                                       ; $47d3: $ff
    rst $38                                       ; $47d4: $ff
    rst $38                                       ; $47d5: $ff
    rst $38                                       ; $47d6: $ff
    rst $38                                       ; $47d7: $ff
    rst $38                                       ; $47d8: $ff
    rst $38                                       ; $47d9: $ff
    rst $38                                       ; $47da: $ff
    rst $38                                       ; $47db: $ff
    rst $38                                       ; $47dc: $ff
    rst $38                                       ; $47dd: $ff
    rst $38                                       ; $47de: $ff
    nop                                           ; $47df: $00

Jump_05a_47e0:
    rst $38                                       ; $47e0: $ff
    rst $38                                       ; $47e1: $ff
    rst $38                                       ; $47e2: $ff
    rst $38                                       ; $47e3: $ff
    rst $38                                       ; $47e4: $ff
    rst $38                                       ; $47e5: $ff
    rst $38                                       ; $47e6: $ff
    rst $38                                       ; $47e7: $ff
    rst $38                                       ; $47e8: $ff
    rst $38                                       ; $47e9: $ff
    nop                                           ; $47ea: $00
    cp a                                          ; $47eb: $bf
    rst $38                                       ; $47ec: $ff
    rst $38                                       ; $47ed: $ff
    rst $38                                       ; $47ee: $ff
    rst $38                                       ; $47ef: $ff
    nop                                           ; $47f0: $00
    rst $38                                       ; $47f1: $ff
    rst $38                                       ; $47f2: $ff
    rst $38                                       ; $47f3: $ff
    rst $38                                       ; $47f4: $ff
    ld e, d                                       ; $47f5: $5a
    ld [hl], e                                    ; $47f6: $73
    nop                                           ; $47f7: $00
    nop                                           ; $47f8: $00

jr_05a_47f9:
    nop                                           ; $47f9: $00
    db $fd                                        ; $47fa: $fd
    jr nz, @+$01                                  ; $47fb: $20 $ff

    ld [c], a                                     ; $47fd: $e2
    ld a, [bc]                                    ; $47fe: $0a
    dec bc                                        ; $47ff: $0b
    ld sp, $4731                                  ; $4800: $31 $31 $47
    ld b, [hl]                                    ; $4803: $46
    rst $38                                       ; $4804: $ff
    ld d, h                                       ; $4805: $54
    ld d, l                                       ; $4806: $55
    ld d, h                                       ; $4807: $54
    ld d, h                                       ; $4808: $54
    dec sp                                        ; $4809: $3b
    ld c, l                                       ; $480a: $4d
    ld sp, $c931                                  ; $480b: $31 $31 $c9
    nop                                           ; $480e: $00
    rst $38                                       ; $480f: $ff
    rst $38                                       ; $4810: $ff
    rst $20                                       ; $4811: $e7
    and $05                                       ; $4812: $e6 $05
    rst $38                                       ; $4814: $ff
    ldh [$c2], a                                  ; $4815: $e0 $c2
    db $e3                                        ; $4817: $e3
    ld [hl], $6a                                  ; $4818: $36 $6a
    sbc e                                         ; $481a: $9b
    ld l, d                                       ; $481b: $6a
    jr nc, @+$01                                  ; $481c: $30 $ff

    ldh [$32], a                                  ; $481e: $e0 $32
    ld c, l                                       ; $4820: $4d
    ret nz                                        ; $4821: $c0

    rst $38                                       ; $4822: $ff
    jp hl                                         ; $4823: $e9


    add sp, $31                                   ; $4824: $e8 $31
    ld e, h                                       ; $4826: $5c
    rst $38                                       ; $4827: $ff
    ld [c], a                                     ; $4828: $e2
    jp nz, $6de0                                  ; $4829: $c2 $e0 $6d

    ld l, l                                       ; $482c: $6d
    ld l, d                                       ; $482d: $6a
    cp a                                          ; $482e: $bf
    db $e3                                        ; $482f: $e3
    add hl, sp                                    ; $4830: $39
    ret nz                                        ; $4831: $c0

    rst $38                                       ; $4832: $ff
    ld h, d                                       ; $4833: $62
    jp hl                                         ; $4834: $e9


    add sp, $60                                   ; $4835: $e8 $60
    jp nz, $c1e5                                  ; $4837: $c2 $e5 $c1

    pop hl                                        ; $483a: $e1
    ld a, [hl]                                    ; $483b: $7e
    ld [c], a                                     ; $483c: $e2
    ld b, d                                       ; $483d: $42
    inc a                                         ; $483e: $3c
    jp z, $feff                                   ; $483f: $ca $ff $fe

    add sp, -$19                                  ; $4842: $e8 $e7
    ld e, e                                       ; $4844: $5b
    ld h, c                                       ; $4845: $61
    ld sp, $4849                                  ; $4846: $31 $49 $48
    ld l, d                                       ; $4849: $6a
    ld l, d                                       ; $484a: $6a
    ret nc                                        ; $484b: $d0

    ret nz                                        ; $484c: $c0

    push hl                                       ; $484d: $e5
    dec a                                         ; $484e: $3d
    ldh [$c0], a                                  ; $484f: $e0 $c0
    rst $38                                       ; $4851: $ff
    ret nz                                        ; $4852: $c0

    db $ec                                        ; $4853: $ec
    add hl, sp                                    ; $4854: $39
    ld b, a                                       ; $4855: $47

jr_05a_4856:
    ldh [$6d], a                                  ; $4856: $e0 $6d
    ld l, l                                       ; $4858: $6d
    ld h, e                                       ; $4859: $63
    jr nc, jr_05a_488c                            ; $485a: $30 $30

    cp a                                          ; $485c: $bf
    db $e4                                        ; $485d: $e4
    ld b, b                                       ; $485e: $40
    rst $38                                       ; $485f: $ff
    add b                                         ; $4860: $80
    db $eb                                        ; $4861: $eb
    ld c, c                                       ; $4862: $49
    ld c, b                                       ; $4863: $48
    add $e1                                       ; $4864: $c6 $e1
    add sp, -$40                                  ; $4866: $e8 $c0
    push hl                                       ; $4868: $e5
    ret nz                                        ; $4869: $c0

    rst $18                                       ; $486a: $df
    ld b, b                                       ; $486b: $40
    db $ed                                        ; $486c: $ed
    add hl, sp                                    ; $486d: $39
    adc d                                         ; $486e: $8a
    ret nz                                        ; $486f: $c0

Call_05a_4870:
    ld l, d                                       ; $4870: $6a
    ld l, c                                       ; $4871: $69
    ld l, c                                       ; $4872: $69
    jr nz, jr_05a_47f9                            ; $4873: $20 $84

    ret nz                                        ; $4875: $c0

    ei                                            ; $4876: $fb
    ret nz                                        ; $4877: $c0

    pop bc                                        ; $4878: $c1
    pop hl                                        ; $4879: $e1
    ret nz                                        ; $487a: $c0

    rst $38                                       ; $487b: $ff
    ret nz                                        ; $487c: $c0

    xor $69                                       ; $487d: $ee $69
    ret nz                                        ; $487f: $c0

    pop hl                                        ; $4880: $e1
    cp h                                          ; $4881: $bc
    ret nz                                        ; $4882: $c0

    dec h                                         ; $4883: $25
    ld l, l                                       ; $4884: $6d
    pop bc                                        ; $4885: $c1
    pop hl                                        ; $4886: $e1
    dec d                                         ; $4887: $15

jr_05a_4888:
    jp z, $c0ff                                   ; $4888: $ca $ff $c0

    ret                                           ; $488b: $c9


jr_05a_488c:
    ld d, b                                       ; $488c: $50
    ret nz                                        ; $488d: $c0

    db $e4                                        ; $488e: $e4
    pop bc                                        ; $488f: $c1
    pop hl                                        ; $4890: $e1
    bit 6, a                                      ; $4891: $cb $77
    xor a                                         ; $4893: $af
    jr nc, jr_05a_4856                            ; $4894: $30 $c0

    rla                                           ; $4896: $17
    jp z, $e8ff                                   ; $4897: $ca $ff $e8

    rst $20                                       ; $489a: $e7
    ld e, a                                       ; $489b: $5f
    ld sp, $af73                                  ; $489c: $31 $73 $af
    ld [hl], c                                    ; $489f: $71
    add b                                         ; $48a0: $80
    ld [c], a                                     ; $48a1: $e2
    add d                                         ; $48a2: $82
    pop hl                                        ; $48a3: $e1
    ld l, l                                       ; $48a4: $6d
    add e                                         ; $48a5: $83
    and c                                         ; $48a6: $a1
    add c                                         ; $48a7: $81
    ldh [$f9], a                                  ; $48a8: $e0 $f9
    ld d, $ca                                     ; $48aa: $16 $ca
    rst $38                                       ; $48ac: $ff
    add sp, -$19                                  ; $48ad: $e8 $e7
    ld e, [hl]                                    ; $48af: $5e
    ld sp, $7981                                  ; $48b0: $31 $81 $79
    ld [hl], c                                    ; $48b3: $71
    ld [hl], $c0                                  ; $48b4: $36 $c0
    push hl                                       ; $48b6: $e5
    ld [hl], a                                    ; $48b7: $77
    ld a, c                                       ; $48b8: $79
    ret nz                                        ; $48b9: $c0

    ldh [rNR22], a                                ; $48ba: $e0 $17
    jr z, jr_05a_4888                             ; $48bc: $28 $ca

    rst $38                                       ; $48be: $ff
    add b                                         ; $48bf: $80
    xor b                                         ; $48c0: $a8
    rst $18                                       ; $48c1: $df
    xor h                                         ; $48c2: $ac
    xor c                                         ; $48c3: $a9
    add b                                         ; $48c4: $80
    ld a, c                                       ; $48c5: $79
    ld [hl], c                                    ; $48c6: $71
    add b                                         ; $48c7: $80
    db $e4                                        ; $48c8: $e4
    add e                                         ; $48c9: $83
    add b                                         ; $48ca: $80
    and $80                                       ; $48cb: $e6 $80
    ldh [$2b], a                                  ; $48cd: $e0 $2b
    inc l                                         ; $48cf: $2c
    jp z, Jump_05a_40ff                           ; $48d0: $ca $ff $40

    xor b                                         ; $48d3: $a8
    add c                                         ; $48d4: $81
    add b                                         ; $48d5: $80
    add b                                         ; $48d6: $80
    nop                                           ; $48d7: $00
    cp a                                          ; $48d8: $bf
    ld [c], a                                     ; $48d9: $e2
    add c                                         ; $48da: $81
    ld [c], a                                     ; $48db: $e2
    ret nz                                        ; $48dc: $c0

    rst $38                                       ; $48dd: $ff
    xor $ed                                       ; $48de: $ee $ed
    add c                                         ; $48e0: $81
    ldh [$bf], a                                  ; $48e1: $e0 $bf
    db $e3                                        ; $48e3: $e3
    add c                                         ; $48e4: $81
    ld [c], a                                     ; $48e5: $e2
    ret nz                                        ; $48e6: $c0

    rst $38                                       ; $48e7: $ff
    ld hl, sp-$12                                 ; $48e8: $f8 $ee
    db $ed                                        ; $48ea: $ed
    add c                                         ; $48eb: $81
    pop hl                                        ; $48ec: $e1
    ld a, [hl]                                    ; $48ed: $7e
    pop hl                                        ; $48ee: $e1
    ld l, [hl]                                    ; $48ef: $6e
    ld d, h                                       ; $48f0: $54
    ld d, h                                       ; $48f1: $54
    ld l, [hl]                                    ; $48f2: $6e
    ld a, c                                       ; $48f3: $79
    nop                                           ; $48f4: $00
    ret nz                                        ; $48f5: $c0

    rst $38                                       ; $48f6: $ff
    rst $38                                       ; $48f7: $ff
    rst $38                                       ; $48f8: $ff
    rst $38                                       ; $48f9: $ff
    rst $38                                       ; $48fa: $ff
    rst $38                                       ; $48fb: $ff
    rst $38                                       ; $48fc: $ff
    rst $38                                       ; $48fd: $ff
    rst $38                                       ; $48fe: $ff
    rst $38                                       ; $48ff: $ff
    rst $38                                       ; $4900: $ff
    rst $38                                       ; $4901: $ff
    rst $38                                       ; $4902: $ff
    rst $38                                       ; $4903: $ff
    rst $38                                       ; $4904: $ff
    nop                                           ; $4905: $00
    rst $38                                       ; $4906: $ff
    rst $38                                       ; $4907: $ff
    rst $38                                       ; $4908: $ff
    rst $38                                       ; $4909: $ff
    rst $38                                       ; $490a: $ff
    rst $38                                       ; $490b: $ff
    rst $38                                       ; $490c: $ff
    rst $38                                       ; $490d: $ff
    rst $38                                       ; $490e: $ff
    rst $38                                       ; $490f: $ff
    rst $38                                       ; $4910: $ff
    rst $38                                       ; $4911: $ff
    rst $38                                       ; $4912: $ff
    rst $38                                       ; $4913: $ff
    rst $38                                       ; $4914: $ff
    rst $38                                       ; $4915: $ff
    nop                                           ; $4916: $00
    rst $38                                       ; $4917: $ff
    rst $38                                       ; $4918: $ff
    rst $38                                       ; $4919: $ff
    rst $38                                       ; $491a: $ff
    rst $38                                       ; $491b: $ff
    rst $38                                       ; $491c: $ff
    rst $38                                       ; $491d: $ff
    rst $38                                       ; $491e: $ff
    rst $38                                       ; $491f: $ff
    rst $38                                       ; $4920: $ff
    rst $38                                       ; $4921: $ff
    rst $38                                       ; $4922: $ff
    rst $38                                       ; $4923: $ff
    rst $38                                       ; $4924: $ff
    rst $38                                       ; $4925: $ff
    rst $38                                       ; $4926: $ff
    nop                                           ; $4927: $00
    rst $38                                       ; $4928: $ff
    rst $38                                       ; $4929: $ff
    rst $38                                       ; $492a: $ff
    rst $38                                       ; $492b: $ff
    rst $38                                       ; $492c: $ff
    rst $38                                       ; $492d: $ff
    rst $38                                       ; $492e: $ff
    rst $38                                       ; $492f: $ff
    rst $38                                       ; $4930: $ff
    rst $38                                       ; $4931: $ff
    rst $38                                       ; $4932: $ff
    rst $38                                       ; $4933: $ff
    rst $38                                       ; $4934: $ff
    rst $38                                       ; $4935: $ff
    rst $38                                       ; $4936: $ff
    rst $38                                       ; $4937: $ff
    nop                                           ; $4938: $00
    rst $38                                       ; $4939: $ff
    rst $38                                       ; $493a: $ff
    rst $38                                       ; $493b: $ff
    rst $38                                       ; $493c: $ff
    rst $38                                       ; $493d: $ff
    rst $38                                       ; $493e: $ff
    rst $38                                       ; $493f: $ff
    rst $38                                       ; $4940: $ff
    rst $38                                       ; $4941: $ff
    rst $38                                       ; $4942: $ff
    rst $38                                       ; $4943: $ff
    rst $38                                       ; $4944: $ff
    rst $38                                       ; $4945: $ff
    rst $38                                       ; $4946: $ff
    rst $38                                       ; $4947: $ff
    rst $38                                       ; $4948: $ff
    nop                                           ; $4949: $00
    rst $38                                       ; $494a: $ff
    rst $38                                       ; $494b: $ff
    rst $38                                       ; $494c: $ff
    rst $38                                       ; $494d: $ff
    rst $38                                       ; $494e: $ff
    rst $38                                       ; $494f: $ff
    rst $38                                       ; $4950: $ff
    rst $38                                       ; $4951: $ff
    rst $38                                       ; $4952: $ff
    rst $38                                       ; $4953: $ff
    rst $38                                       ; $4954: $ff
    rst $38                                       ; $4955: $ff
    rst $38                                       ; $4956: $ff
    rst $38                                       ; $4957: $ff
    rst $38                                       ; $4958: $ff
    rst $38                                       ; $4959: $ff
    nop                                           ; $495a: $00
    rst $38                                       ; $495b: $ff
    rst $38                                       ; $495c: $ff
    rst $38                                       ; $495d: $ff
    rst $38                                       ; $495e: $ff
    rst $38                                       ; $495f: $ff
    rst $38                                       ; $4960: $ff
    rst $38                                       ; $4961: $ff
    rst $38                                       ; $4962: $ff
    rst $38                                       ; $4963: $ff
    rst $38                                       ; $4964: $ff
    rst $38                                       ; $4965: $ff
    rst $38                                       ; $4966: $ff
    rst $38                                       ; $4967: $ff
    rst $38                                       ; $4968: $ff
    rst $38                                       ; $4969: $ff
    rst $38                                       ; $496a: $ff
    nop                                           ; $496b: $00
    rst $38                                       ; $496c: $ff
    rst $38                                       ; $496d: $ff
    rst $38                                       ; $496e: $ff
    rst $38                                       ; $496f: $ff
    rst $38                                       ; $4970: $ff
    rst $38                                       ; $4971: $ff
    rst $38                                       ; $4972: $ff
    rst $38                                       ; $4973: $ff
    rst $38                                       ; $4974: $ff
    rst $38                                       ; $4975: $ff
    rst $38                                       ; $4976: $ff
    rst $38                                       ; $4977: $ff
    rst $38                                       ; $4978: $ff
    rst $38                                       ; $4979: $ff
    rst $38                                       ; $497a: $ff
    rst $38                                       ; $497b: $ff
    nop                                           ; $497c: $00
    rst $38                                       ; $497d: $ff
    rst $38                                       ; $497e: $ff
    rst $38                                       ; $497f: $ff
    rst $38                                       ; $4980: $ff
    rst $38                                       ; $4981: $ff
    rst $38                                       ; $4982: $ff
    rst $38                                       ; $4983: $ff
    rst $38                                       ; $4984: $ff
    rst $38                                       ; $4985: $ff
    rst $38                                       ; $4986: $ff
    rst $38                                       ; $4987: $ff
    rst $38                                       ; $4988: $ff
    rst $38                                       ; $4989: $ff
    rst $38                                       ; $498a: $ff
    rst $38                                       ; $498b: $ff
    rst $38                                       ; $498c: $ff
    nop                                           ; $498d: $00
    rst $38                                       ; $498e: $ff
    rst $38                                       ; $498f: $ff
    rst $38                                       ; $4990: $ff
    rst $38                                       ; $4991: $ff
    rst $38                                       ; $4992: $ff
    rst $38                                       ; $4993: $ff
    rst $38                                       ; $4994: $ff
    rst $38                                       ; $4995: $ff
    rst $38                                       ; $4996: $ff
    rst $38                                       ; $4997: $ff
    rst $38                                       ; $4998: $ff
    rst $38                                       ; $4999: $ff
    rst $38                                       ; $499a: $ff
    rst $38                                       ; $499b: $ff
    rst $38                                       ; $499c: $ff
    rst $38                                       ; $499d: $ff
    nop                                           ; $499e: $00
    rst $38                                       ; $499f: $ff
    rst $38                                       ; $49a0: $ff
    rst $38                                       ; $49a1: $ff
    rst $38                                       ; $49a2: $ff
    rst $38                                       ; $49a3: $ff
    rst $38                                       ; $49a4: $ff
    rst $38                                       ; $49a5: $ff
    rst $38                                       ; $49a6: $ff
    rst $38                                       ; $49a7: $ff
    rst $38                                       ; $49a8: $ff
    rst $38                                       ; $49a9: $ff
    rst $38                                       ; $49aa: $ff
    rst $38                                       ; $49ab: $ff
    rst $38                                       ; $49ac: $ff
    rst $38                                       ; $49ad: $ff
    rst $38                                       ; $49ae: $ff
    nop                                           ; $49af: $00
    rst $38                                       ; $49b0: $ff
    rst $38                                       ; $49b1: $ff
    rst $38                                       ; $49b2: $ff
    rst $38                                       ; $49b3: $ff
    rst $38                                       ; $49b4: $ff
    rst $38                                       ; $49b5: $ff
    rst $38                                       ; $49b6: $ff
    ld a, [$0000]                                 ; $49b7: $fa $00 $00
    nop                                           ; $49ba: $00
    and l                                         ; $49bb: $a5
    nop                                           ; $49bc: $00
    rst $38                                       ; $49bd: $ff
    push hl                                       ; $49be: $e5
    ld [hl-], a                                   ; $49bf: $32
    or $e6                                        ; $49c0: $f6 $e6
    rst $30                                       ; $49c2: $f7
    rst $20                                       ; $49c3: $e7
    dec [hl]                                      ; $49c4: $35

Call_05a_49c5:
    db $ec                                        ; $49c5: $ec
    xor $37                                       ; $49c6: $ee $37
    db $ec                                        ; $49c8: $ec
    jp c, $c7f0                                   ; $49c9: $da $f0 $c7

    add sp, $33                                   ; $49cc: $e8 $33
    ld sp, $f2e0                                  ; $49ce: $31 $e0 $f2
    ld [hl], $30                                  ; $49d1: $36 $30
    scf                                           ; $49d3: $37
    cp a                                          ; $49d4: $bf
    ld h, $20                                     ; $49d5: $26 $20
    daa                                           ; $49d7: $27
    db $10                                        ; $49d8: $10
    ld d, $17                                     ; $49d9: $16 $17
    jp nz, Jump_000_34f6                          ; $49db: $c2 $f6 $34

    rst $38                                       ; $49de: $ff
    ld [hl], $32                                  ; $49df: $36 $32
    jr nc, jr_05a_4a1a                            ; $49e1: $30 $37

    ld sp, $3133                                  ; $49e3: $31 $33 $31
    inc sp                                        ; $49e6: $33
    nop                                           ; $49e7: $00
    and b                                         ; $49e8: $a0
    ei                                            ; $49e9: $fb
    rst $38                                       ; $49ea: $ff
    rst $28                                       ; $49eb: $ef
    nop                                           ; $49ec: $00
    nop                                           ; $49ed: $00
    nop                                           ; $49ee: $00
    rst $30                                       ; $49ef: $f7
    ld c, c                                       ; $49f0: $49
    daa                                           ; $49f1: $27
    ld c, d                                       ; $49f2: $4a
    cp a                                          ; $49f3: $bf
    ld c, h                                       ; $49f4: $4c
    add [hl]                                      ; $49f5: $86
    ld c, [hl]                                    ; $49f6: $4e
    db $ec                                        ; $49f7: $ec
    dec hl                                        ; $49f8: $2b
    ld [hl+], a                                   ; $49f9: $22
    dec sp                                        ; $49fa: $3b
    ld b, b                                       ; $49fb: $40
    ld [hl+], a                                   ; $49fc: $22
    nop                                           ; $49fd: $00
    add hl, bc                                    ; $49fe: $09
    and l                                         ; $49ff: $a5
    ld b, e                                       ; $4a00: $43
    xor $37                                       ; $4a01: $ee $37
    ld [hl+], a                                   ; $4a03: $22
    dec sp                                        ; $4a04: $3b
    ld b, b                                       ; $4a05: $40
    ld [hl+], a                                   ; $4a06: $22
    ccf                                           ; $4a07: $3f
    ld a, a                                       ; $4a08: $7f
    rla                                           ; $4a09: $17
    ld e, [hl]                                    ; $4a0a: $5e
    ld de, $2249                                  ; $4a0b: $11 $49 $22
    dec sp                                        ; $4a0e: $3b
    ld [$0825], sp                                ; $4a0f: $08 $25 $08
    dec h                                         ; $4a12: $25
    ld [$0825], sp                                ; $4a13: $08 $25 $08
    dec h                                         ; $4a16: $25
    ld [$0825], sp                                ; $4a17: $08 $25 $08

jr_05a_4a1a:
    dec h                                         ; $4a1a: $25
    ld [$0825], sp                                ; $4a1b: $08 $25 $08
    dec h                                         ; $4a1e: $25
    ld [$0825], sp                                ; $4a1f: $08 $25 $08
    dec h                                         ; $4a22: $25
    ld [$0825], sp                                ; $4a23: $08 $25 $08
    dec h                                         ; $4a26: $25
    db $dd                                        ; $4a27: $dd
    inc c                                         ; $4a28: $0c
    rst $38                                       ; $4a29: $ff
    and $4c                                       ; $4a2a: $e6 $4c
    inc c                                         ; $4a2c: $0c
    dec bc                                        ; $4a2d: $0b
    rst $38                                       ; $4a2e: $ff
    ldh [rOCPD], a                                ; $4a2f: $e0 $6b
    ld l, e                                       ; $4a31: $6b
    inc bc                                        ; $4a32: $03
    dec bc                                        ; $4a33: $0b
    dec bc                                        ; $4a34: $0b
    db $f4                                        ; $4a35: $f4
    ldh [rIE], a                                  ; $4a36: $e0 $ff
    ldh [$ed], a                                  ; $4a38: $e0 $ed
    ld [c], a                                     ; $4a3a: $e2
    db $fd                                        ; $4a3b: $fd
    pop hl                                        ; $4a3c: $e1
    ld hl, sp-$1d                                 ; $4a3d: $f8 $e3
    rst $30                                       ; $4a3f: $f7
    ld [c], a                                     ; $4a40: $e2
    nop                                           ; $4a41: $00
    db $fc                                        ; $4a42: $fc
    push af                                       ; $4a43: $f5
    ret nc                                        ; $4a44: $d0

    pop hl                                        ; $4a45: $e1
    ret nz                                        ; $4a46: $c0

    ld [c], a                                     ; $4a47: $e2
    pop bc                                        ; $4a48: $c1
    pop hl                                        ; $4a49: $e1
    ret nz                                        ; $4a4a: $c0

    ldh [$d0], a                                  ; $4a4b: $e0 $d0
    ld [c], a                                     ; $4a4d: $e2
    db $fd                                        ; $4a4e: $fd
    push hl                                       ; $4a4f: $e5
    or l                                          ; $4a50: $b5
    db $e3                                        ; $4a51: $e3
    rst $00                                       ; $4a52: $c7
    ld c, h                                       ; $4a53: $4c
    inc c                                         ; $4a54: $0c
    inc l                                         ; $4a55: $2c
    cp [hl]                                       ; $4a56: $be
    rst $30                                       ; $4a57: $f7
    add [hl]                                      ; $4a58: $86
    pop hl                                        ; $4a59: $e1
    add d                                         ; $4a5a: $82
    ld [c], a                                     ; $4a5b: $e2
    ld c, e                                       ; $4a5c: $4b
    ld c, e                                       ; $4a5d: $4b
    ld de, $c02b                                  ; $4a5e: $11 $2b $c0
    and $7a                                       ; $4a61: $e6 $7a
    rst $38                                       ; $4a63: $ff
    ret c                                         ; $4a64: $d8

    db $e4                                        ; $4a65: $e4
    dec hl                                        ; $4a66: $2b
    call z, Call_05a_44e0                         ; $4a67: $cc $e0 $44
    push hl                                       ; $4a6a: $e5
    cp [hl]                                       ; $4a6b: $be
    pop hl                                        ; $4a6c: $e1
    add sp, $4b                                   ; $4a6d: $e8 $4b
    and $7a                                       ; $4a6f: $e6 $7a
    rst $38                                       ; $4a71: $ff
    add [hl]                                      ; $4a72: $86
    push hl                                       ; $4a73: $e5
    ld l, e                                       ; $4a74: $6b
    add [hl]                                      ; $4a75: $86
    ldh [rWX], a                                  ; $4a76: $e0 $4b
    ld l, e                                       ; $4a78: $6b
    ld c, e                                       ; $4a79: $4b
    ld h, b                                       ; $4a7a: $60
    or $e3                                        ; $4a7b: $f6 $e3
    di                                            ; $4a7d: $f3
    jp nz, $e54a                                  ; $4a7e: $c2 $4a $e5

    dec a                                         ; $4a81: $3d
    db $e3                                        ; $4a82: $e3
    or d                                          ; $4a83: $b2

Jump_05a_4a84:
    and $2c                                       ; $4a84: $e6 $2c
    inc l                                         ; $4a86: $2c
    jr c, @-$19                                   ; $4a87: $38 $e5

    adc b                                         ; $4a89: $88
    ld sp, $86e3                                  ; $4a8a: $31 $e3 $86
    rst $20                                       ; $4a8d: $e7
    inc a                                         ; $4a8e: $3c
    and $2b                                       ; $4a8f: $e6 $2b
    ld b, c                                       ; $4a91: $41
    push hl                                       ; $4a92: $e5
    ld hl, sp-$39                                 ; $4a93: $f8 $c7
    ldh a, [$e5]                                  ; $4a95: $f0 $e5
    ld c, h                                       ; $4a97: $4c
    nop                                           ; $4a98: $00
    ret nz                                        ; $4a99: $c0

    pop hl                                        ; $4a9a: $e1
    ld b, $f0                                     ; $4a9b: $06 $f0
    jp z, $83c1                                   ; $4a9d: $ca $c1 $83

    pop hl                                        ; $4aa0: $e1
    ld hl, sp-$3e                                 ; $4aa1: $f8 $c2
    ret nz                                        ; $4aa3: $c0

jr_05a_4aa4:
    pop hl                                        ; $4aa4: $e1
    ld l, l                                       ; $4aa5: $6d
    push bc                                       ; $4aa6: $c5
    add d                                         ; $4aa7: $82
    db $e4                                        ; $4aa8: $e4
    inc b                                         ; $4aa9: $04
    cp d                                          ; $4aaa: $ba
    ret z                                         ; $4aab: $c8

    add $cd                                       ; $4aac: $c6 $cd
    ld c, h                                       ; $4aae: $4c
    ld c, h                                       ; $4aaf: $4c
    jp nz, $c1fe                                  ; $4ab0: $c2 $fe $c1

    ld a, [$c0c4]                                 ; $4ab3: $fa $c4 $c0
    ldh [$50], a                                  ; $4ab6: $e0 $50
    add $10                                       ; $4ab8: $c6 $10
    ld c, e                                       ; $4aba: $4b
    jp $c645                                      ; $4abb: $c3 $45 $c6


    jr c, jr_05a_4aa4                             ; $4abe: $38 $e4

    ld b, h                                       ; $4ac0: $44
    call z, $c00b                                 ; $4ac1: $cc $0b $c0
    ret nz                                        ; $4ac4: $c0

    adc c                                         ; $4ac5: $89
    pop bc                                        ; $4ac6: $c1
    cp e                                          ; $4ac7: $bb
    add $50                                       ; $4ac8: $c6 $50
    ld [bc], a                                    ; $4aca: $02
    pop hl                                        ; $4acb: $e1
    jp z, $b7e9                                   ; $4acc: $ca $e9 $b7

    push hl                                       ; $4acf: $e5
    ld sp, hl                                     ; $4ad0: $f9
    or e                                          ; $4ad1: $b3
    inc l                                         ; $4ad2: $2c
    ld b, l                                       ; $4ad3: $45
    ldh [$2b], a                                  ; $4ad4: $e0 $2b
    cp h                                          ; $4ad6: $bc
    pop hl                                        ; $4ad7: $e1
    ld h, b                                       ; $4ad8: $60
    ld a, a                                       ; $4ad9: $7f
    db $e3                                        ; $4ada: $e3
    ret nz                                        ; $4adb: $c0

    and e                                         ; $4adc: $a3
    ld a, $c6                                     ; $4add: $3e $c6
    ret nz                                        ; $4adf: $c0

    add $3f                                       ; $4ae0: $c6 $3f
    push af                                       ; $4ae2: $f5
    inc c                                         ; $4ae3: $0c
    inc l                                         ; $4ae4: $2c
    ld a, $e0                                     ; $4ae5: $3e $e0
    ld [bc], a                                    ; $4ae7: $02
    ld a, $c3                                     ; $4ae8: $3e $c3
    dec hl                                        ; $4aea: $2b
    scf                                           ; $4aeb: $37
    ret nz                                        ; $4aec: $c0

    add c                                         ; $4aed: $81
    and b                                         ; $4aee: $a0
    nop                                           ; $4aef: $00
    db $e3                                        ; $4af0: $e3
    adc e                                         ; $4af1: $8b
    call nz, $c681                                ; $4af2: $c4 $81 $c6
    dec [hl]                                      ; $4af5: $35
    call nz, $8834                                ; $4af6: $c4 $34 $88
    call nz, $a8b4                                ; $4af9: $c4 $b4 $a8
    inc l                                         ; $4afc: $2c
    ld a, a                                       ; $4afd: $7f
    ldh [$0b], a                                  ; $4afe: $e0 $0b
    dec hl                                        ; $4b00: $2b
    jp nz, $7ac3                                  ; $4b01: $c2 $c3 $7a

    ld [c], a                                     ; $4b04: $e2
    ld b, b                                       ; $4b05: $40
    ret nz                                        ; $4b06: $c0

Jump_05a_4b07:
    jp nz, $e54b                                  ; $4b07: $c2 $4b $e5

    ld h, [hl]                                    ; $4b0a: $66
    and d                                         ; $4b0b: $a2
    or a                                          ; $4b0c: $b7
    and e                                         ; $4b0d: $a3
    ld [hl], l                                    ; $4b0e: $75
    call nz, $ae46                                ; $4b0f: $c4 $46 $ae
    inc l                                         ; $4b12: $2c
    cp [hl]                                       ; $4b13: $be
    ld [c], a                                     ; $4b14: $e2
    jr nz, @+$41                                  ; $4b15: $20 $3f

    add $82                                       ; $4b17: $c6 $82
    and l                                         ; $4b19: $a5
    adc $c9                                       ; $4b1a: $ce $c9
    inc bc                                        ; $4b1c: $03
    and h                                         ; $4b1d: $a4
    ret nz                                        ; $4b1e: $c0

    ret nc                                        ; $4b1f: $d0

    dec bc                                        ; $4b20: $0b
    cp a                                          ; $4b21: $bf
    db $e3                                        ; $4b22: $e3
    cp [hl]                                       ; $4b23: $be
    and $80                                       ; $4b24: $e6 $80
    adc d                                         ; $4b26: $8a
    add $45                                       ; $4b27: $c6 $45
    and [hl]                                      ; $4b29: $a6
    cp e                                          ; $4b2a: $bb
    add h                                         ; $4b2b: $84
    rst $38                                       ; $4b2c: $ff
    and l                                         ; $4b2d: $a5
    ld d, b                                       ; $4b2e: $50
    ldh [$4c], a                                  ; $4b2f: $e0 $4c
    pop hl                                        ; $4b31: $e1
    ld hl, sp-$5b                                 ; $4b32: $f8 $a5
    dec bc                                        ; $4b34: $0b
    nop                                           ; $4b35: $00
    cp a                                          ; $4b36: $bf
    pop hl                                        ; $4b37: $e1
    ldh a, [$e1]                                  ; $4b38: $f0 $e1
    ret z                                         ; $4b3a: $c8

    add h                                         ; $4b3b: $84
    adc e                                         ; $4b3c: $8b
    jp z, $e53f                                   ; $4b3d: $ca $3f $e5

    ld sp, $ffc6                                  ; $4b40: $31 $c6 $ff
    push bc                                       ; $4b43: $c5
    ret nz                                        ; $4b44: $c0

    jp hl                                         ; $4b45: $e9


    nop                                           ; $4b46: $00
    ld a, [hl]                                    ; $4b47: $7e
    pop hl                                        ; $4b48: $e1
    ld b, h                                       ; $4b49: $44
    add e                                         ; $4b4a: $83
    ld [$0e8b], a                                 ; $4b4b: $ea $8b $0e
    add $81                                       ; $4b4e: $c6 $81
    call nz, $a578                                ; $4b50: $c4 $78 $a5
    add c                                         ; $4b53: $81
    ld [$e8df], a                                 ; $4b54: $ea $df $e8
    nop                                           ; $4b57: $00
    sub c                                         ; $4b58: $91
    jp hl                                         ; $4b59: $e9


    dec b                                         ; $4b5a: $05
    ret z                                         ; $4b5b: $c8

    add c                                         ; $4b5c: $81
    and $39                                       ; $4b5d: $e6 $39
    adc b                                         ; $4b5f: $88
    ret nz                                        ; $4b60: $c0

    add sp, $5b                                   ; $4b61: $e8 $5b
    sub l                                         ; $4b63: $95
    ret z                                         ; $4b64: $c8

    ld l, e                                       ; $4b65: $6b
    dec a                                         ; $4b66: $3d
    rst $20                                       ; $4b67: $e7
    nop                                           ; $4b68: $00
    ld b, l                                       ; $4b69: $45
    jp z, $a71a                                   ; $4b6a: $ca $1a $a7

    sub d                                         ; $4b6d: $92
    adc b                                         ; $4b6e: $88
    ld e, c                                       ; $4b6f: $59
    and h                                         ; $4b70: $a4
    ret z                                         ; $4b71: $c8

    ld l, e                                       ; $4b72: $6b
    adc [hl]                                      ; $4b73: $8e
    jp hl                                         ; $4b74: $e9


    jp nz, Jump_05a_79c2                          ; $4b75: $c2 $c2 $79

    add [hl]                                      ; $4b78: $86
    nop                                           ; $4b79: $00
    ld e, h                                       ; $4b7a: $5c
    rst $00                                       ; $4b7b: $c7
    ld h, d                                       ; $4b7c: $62
    add c                                         ; $4b7d: $81
    ld e, d                                       ; $4b7e: $5a
    add l                                         ; $4b7f: $85
    ld c, [hl]                                    ; $4b80: $4e
    adc e                                         ; $4b81: $8b
    rst $38                                       ; $4b82: $ff
    adc h                                         ; $4b83: $8c
    ret nz                                        ; $4b84: $c0

    jp hl                                         ; $4b85: $e9


    ld h, c                                       ; $4b86: $61
    rst $20                                       ; $4b87: $e7
    ld h, d                                       ; $4b88: $62
    add d                                         ; $4b89: $82
    nop                                           ; $4b8a: $00
    ld hl, sp-$18                                 ; $4b8b: $f8 $e8
    ld c, [hl]                                    ; $4b8d: $4e
    add a                                         ; $4b8e: $87
    rst $38                                       ; $4b8f: $ff
    adc h                                         ; $4b90: $8c
    rst $38                                       ; $4b91: $ff
    call $8962                                    ; $4b92: $cd $62 $89
    ld e, d                                       ; $4b95: $5a
    add a                                         ; $4b96: $87
    ld c, [hl]                                    ; $4b97: $4e
    adc c                                         ; $4b98: $89
    rst $38                                       ; $4b99: $ff
    adc e                                         ; $4b9a: $8b
    nop                                           ; $4b9b: $00
    cp a                                          ; $4b9c: $bf
    call z, $8661                                 ; $4b9d: $cc $61 $86
    ld h, d                                       ; $4ba0: $62
    add l                                         ; $4ba1: $85
    ld e, d                                       ; $4ba2: $5a
    adc c                                         ; $4ba3: $89
    push af                                       ; $4ba4: $f5
    push bc                                       ; $4ba5: $c5
    rst $38                                       ; $4ba6: $ff
    adc c                                         ; $4ba7: $89
    add c                                         ; $4ba8: $81
    ld d, b                                       ; $4ba9: $50
    add [hl]                                      ; $4baa: $86
    call z, $8200                                 ; $4bab: $cc $00 $82
    ld h, a                                       ; $4bae: $67
    cp $a6                                        ; $4baf: $fe $a6
    rst $38                                       ; $4bb1: $ff
    adc b                                         ; $4bb2: $88
    add b                                         ; $4bb3: $80
    xor d                                         ; $4bb4: $aa
    sbc $e7                                       ; $4bb5: $de $e7
    add hl, sp                                    ; $4bb7: $39
    ld b, [hl]                                    ; $4bb8: $46
    add a                                         ; $4bb9: $87
    ld b, h                                       ; $4bba: $44
    adc l                                         ; $4bbb: $8d
    ld l, d                                       ; $4bbc: $6a
    nop                                           ; $4bbd: $00
    rst $38                                       ; $4bbe: $ff
    adc c                                         ; $4bbf: $89
    ret nz                                        ; $4bc0: $c0

    db $ec                                        ; $4bc1: $ec
    db $db                                        ; $4bc2: $db
    ld [hl+], a                                   ; $4bc3: $22
    ld h, d                                       ; $4bc4: $62
    add l                                         ; $4bc5: $85
    ld hl, sp-$1a                                 ; $4bc6: $f8 $e6
    ld c, a                                       ; $4bc8: $4f
    db $eb                                        ; $4bc9: $eb
    rst $38                                       ; $4bca: $ff
    adc d                                         ; $4bcb: $8a
    ld c, l                                       ; $4bcc: $4d
    add c                                         ; $4bcd: $81
    nop                                           ; $4bce: $00
    sbc l                                         ; $4bcf: $9d
    or d                                          ; $4bd0: $b2
    adc l                                         ; $4bd1: $8d
    ld c, e                                       ; $4bd2: $4b
    ld c, [hl]                                    ; $4bd3: $4e
    add a                                         ; $4bd4: $87
    rst $38                                       ; $4bd5: $ff
    adc l                                         ; $4bd6: $8d
    ret nz                                        ; $4bd7: $c0

    ld [$935b], a                                 ; $4bd8: $ea $5b $93
    ld d, c                                       ; $4bdb: $51
    dec h                                         ; $4bdc: $25
    ret nz                                        ; $4bdd: $c0

    rst $00                                       ; $4bde: $c7
    nop                                           ; $4bdf: $00
    ld [hl], a                                    ; $4be0: $77
    ld c, b                                       ; $4be1: $48
    halt                                          ; $4be2: $76
    inc l                                         ; $4be3: $2c
    ld e, e                                       ; $4be4: $5b
    sub c                                         ; $4be5: $91
    ld d, c                                       ; $4be6: $51
    ld hl, $e7f3                                  ; $4be7: $21 $f3 $e7
    rst $38                                       ; $4bea: $ff
    adc e                                         ; $4beb: $8b
    dec a                                         ; $4bec: $3d
    xor e                                         ; $4bed: $ab
    ld e, e                                       ; $4bee: $5b
    sub h                                         ; $4bef: $94
    nop                                           ; $4bf0: $00
    rla                                           ; $4bf1: $17
    ld b, h                                       ; $4bf2: $44
    di                                            ; $4bf3: $f3
    call nz, $8aff                                ; $4bf4: $c4 $ff $8a
    jp nz, Jump_05a_5b10                          ; $4bf7: $c2 $10 $5b

    adc [hl]                                      ; $4bfa: $8e
    adc c                                         ; $4bfb: $89
    and e                                         ; $4bfc: $a3
    ret                                           ; $4bfd: $c9


    adc b                                         ; $4bfe: $88
    rst $38                                       ; $4bff: $ff
    adc e                                         ; $4c00: $8b
    nop                                           ; $4c01: $00
    ld b, b                                       ; $4c02: $40
    rst $28                                       ; $4c03: $ef
    ld e, e                                       ; $4c04: $5b
    adc h                                         ; $4c05: $8c
    ld a, b                                       ; $4c06: $78
    xor c                                         ; $4c07: $a9
    ld a, d                                       ; $4c08: $7a
    inc c                                         ; $4c09: $0c
    add c                                         ; $4c0a: $81
    ld h, c                                       ; $4c0b: $61
    ld a, [hl]                                    ; $4c0c: $7e
    ret z                                         ; $4c0d: $c8

    ld e, a                                       ; $4c0e: $5f
    and [hl]                                      ; $4c0f: $a6
    ld e, e                                       ; $4c10: $5b
    adc d                                         ; $4c11: $8a
    nop                                           ; $4c12: $00
    dec bc                                        ; $4c13: $0b
    and $75                                       ; $4c14: $e6 $75
    ld c, b                                       ; $4c16: $48
    nop                                           ; $4c17: $00
    inc h                                         ; $4c18: $24
    ld b, c                                       ; $4c19: $41
    xor l                                         ; $4c1a: $ad
    halt                                          ; $4c1b: $76
    ld c, c                                       ; $4c1c: $49
    xor c                                         ; $4c1d: $a9
    ld [$679c], a                                 ; $4c1e: $ea $9c $67
    nop                                           ; $4c21: $00
    dec l                                         ; $4c22: $2d
    nop                                           ; $4c23: $00
    jp nz, Jump_000_198a                          ; $4c24: $c2 $8a $19

    ld b, a                                       ; $4c27: $47
    rst $10                                       ; $4c28: $d7
    ld l, $00                                     ; $4c29: $2e $00
    inc [hl]                                      ; $4c2b: $34
    jp nz, $d78d                                  ; $4c2c: $c2 $8d $d7

    inc [hl]                                      ; $4c2f: $34
    nop                                           ; $4c30: $00
    ccf                                           ; $4c31: $3f
    sub e                                         ; $4c32: $93
    ld c, e                                       ; $4c33: $4b
    nop                                           ; $4c34: $00
    rst $10                                       ; $4c35: $d7
    dec [hl]                                      ; $4c36: $35
    nop                                           ; $4c37: $00
    ld l, $01                                     ; $4c38: $2e $01
    db $ec                                        ; $4c3a: $ec
    ld c, e                                       ; $4c3b: $4b
    adc c                                         ; $4c3c: $89
    ld a, h                                       ; $4c3d: $7c
    xor d                                         ; $4c3e: $aa
    nop                                           ; $4c3f: $00
    dec [hl]                                      ; $4c40: $35
    ld [bc], a                                    ; $4c41: $02
    adc e                                         ; $4c42: $8b
    and l                                         ; $4c43: $a5
    add hl, bc                                    ; $4c44: $09
    nop                                           ; $4c45: $00
    ld a, h                                       ; $4c46: $7c
    xor e                                         ; $4c47: $ab
    add hl, hl                                    ; $4c48: $29
    or $bf                                        ; $4c49: $f6 $bf

Jump_05a_4c4b:
    or b                                          ; $4c4b: $b0
    ld a, h                                       ; $4c4c: $7c
    or d                                          ; $4c4d: $b2
    nop                                           ; $4c4e: $00
    ccf                                           ; $4c4f: $3f
    ld b, b                                       ; $4c50: $40
    ld [$8ed8], a                                 ; $4c51: $ea $d8 $8e
    nop                                           ; $4c54: $00
    ccf                                           ; $4c55: $3f
    nop                                           ; $4c56: $00
    ld b, b                                       ; $4c57: $40
    ld [$8ed8], a                                 ; $4c58: $ea $d8 $8e
    nop                                           ; $4c5b: $00
    ld [hl-], a                                   ; $4c5c: $32
    ld b, b                                       ; $4c5d: $40
    ld hl, sp-$28                                 ; $4c5e: $f8 $d8
    adc h                                         ; $4c60: $8c
    nop                                           ; $4c61: $00
    inc [hl]                                      ; $4c62: $34
    cp $fa                                        ; $4c63: $fe $fa
    ld h, h                                       ; $4c65: $64
    call Call_000_2900                            ; $4c66: $cd $00 $29
    di                                            ; $4c69: $f3
    rst $38                                       ; $4c6a: $ff
    rst $38                                       ; $4c6b: $ff
    nop                                           ; $4c6c: $00
    scf                                           ; $4c6d: $37
    rst $38                                       ; $4c6e: $ff
    rst $38                                       ; $4c6f: $ff
    add hl, hl                                    ; $4c70: $29
    db $fc                                        ; $4c71: $fc
    rst $38                                       ; $4c72: $ff
    rst $38                                       ; $4c73: $ff
    add hl, hl                                    ; $4c74: $29
    cp $ff                                        ; $4c75: $fe $ff
    rst $38                                       ; $4c77: $ff
    nop                                           ; $4c78: $00
    rst $38                                       ; $4c79: $ff
    rst $38                                       ; $4c7a: $ff
    sub [hl]                                      ; $4c7b: $96
    rst $38                                       ; $4c7c: $ff
    rst $38                                       ; $4c7d: $ff
    rst $38                                       ; $4c7e: $ff
    ld sp, $ff11                                  ; $4c7f: $31 $11 $ff
    rst $38                                       ; $4c82: $ff
    rst $38                                       ; $4c83: $ff
    rst $38                                       ; $4c84: $ff
    rst $38                                       ; $4c85: $ff
    rst $38                                       ; $4c86: $ff
    rst $38                                       ; $4c87: $ff
    rst $38                                       ; $4c88: $ff
    nop                                           ; $4c89: $00
    add hl, sp                                    ; $4c8a: $39
    rst $38                                       ; $4c8b: $ff
    rst $38                                       ; $4c8c: $ff
    rst $38                                       ; $4c8d: $ff
    rst $38                                       ; $4c8e: $ff
    rst $38                                       ; $4c8f: $ff
    rst $38                                       ; $4c90: $ff
    rst $38                                       ; $4c91: $ff
    rst $38                                       ; $4c92: $ff
    rst $38                                       ; $4c93: $ff
    rst $38                                       ; $4c94: $ff
    rst $38                                       ; $4c95: $ff
    rst $38                                       ; $4c96: $ff
    rst $38                                       ; $4c97: $ff
    rst $38                                       ; $4c98: $ff
    rst $38                                       ; $4c99: $ff
    nop                                           ; $4c9a: $00
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
    rst $38                                       ; $4ca5: $ff
    rst $38                                       ; $4ca6: $ff
    rst $38                                       ; $4ca7: $ff
    rst $38                                       ; $4ca8: $ff
    rst $38                                       ; $4ca9: $ff
    rst $38                                       ; $4caa: $ff
    nop                                           ; $4cab: $00
    rst $38                                       ; $4cac: $ff
    rst $38                                       ; $4cad: $ff
    rst $38                                       ; $4cae: $ff
    rst $38                                       ; $4caf: $ff
    nop                                           ; $4cb0: $00
    cp a                                          ; $4cb1: $bf
    rst $38                                       ; $4cb2: $ff
    rst $38                                       ; $4cb3: $ff
    rst $38                                       ; $4cb4: $ff
    rst $38                                       ; $4cb5: $ff
    rst $38                                       ; $4cb6: $ff
    rst $38                                       ; $4cb7: $ff
    rst $38                                       ; $4cb8: $ff
    rst $38                                       ; $4cb9: $ff
    ld e, e                                       ; $4cba: $5b
    ld [hl], l                                    ; $4cbb: $75
    nop                                           ; $4cbc: $00
    nop                                           ; $4cbd: $00
    nop                                           ; $4cbe: $00
    db $ed                                        ; $4cbf: $ed
    jr nz, @+$01                                  ; $4cc0: $20 $ff

    rst $20                                       ; $4cc2: $e7
    nop                                           ; $4cc3: $00
    ld sp, $e0ff                                  ; $4cc4: $31 $ff $e0
    ld [hl], b                                    ; $4cc7: $70
    xor [hl]                                      ; $4cc8: $ae
    add b                                         ; $4cc9: $80
    and e                                         ; $4cca: $a3
    add b                                         ; $4ccb: $80
    nop                                           ; $4ccc: $00
    rst $38                                       ; $4ccd: $ff
    rst $38                                       ; $4cce: $ff
    rst $20                                       ; $4ccf: $e7
    and $c0                                       ; $4cd0: $e6 $c0
    db $e3                                        ; $4cd2: $e3
    dec b                                         ; $4cd3: $05
    rst $38                                       ; $4cd4: $ff
    pop hl                                        ; $4cd5: $e1
    rrca                                          ; $4cd6: $0f
    sbc b                                         ; $4cd7: $98
    pop bc                                        ; $4cd8: $c1
    db $e4                                        ; $4cd9: $e4
    ret nz                                        ; $4cda: $c0

    rst $38                                       ; $4cdb: $ff
    ret nz                                        ; $4cdc: $c0

    db $ec                                        ; $4cdd: $ec
    ld a, [bc]                                    ; $4cde: $0a
    dec bc                                        ; $4cdf: $0b
    add [hl]                                      ; $4ce0: $86
    pop hl                                        ; $4ce1: $e1

Call_05a_4ce2:
    add d                                         ; $4ce2: $82
    pop hl                                        ; $4ce3: $e1
    inc a                                         ; $4ce4: $3c
    ld h, a                                       ; $4ce5: $67
    ld d, l                                       ; $4ce6: $55
    ld l, [hl]                                    ; $4ce7: $6e
    ld a, b                                       ; $4ce8: $78
    ret nz                                        ; $4ce9: $c0

    rst $38                                       ; $4cea: $ff
    ld [$05e9], a                                 ; $4ceb: $ea $e9 $05
    dec b                                         ; $4cee: $05
    jp nz, $ffe7                                  ; $4cef: $c2 $e7 $ff

    ld c, l                                       ; $4cf2: $4d
    ld b, l                                       ; $4cf3: $45
    ld b, d                                       ; $4cf4: $42
    ld l, l                                       ; $4cf5: $6d
    jr nc, @+$46                                  ; $4cf6: $30 $44

    ld l, [hl]                                    ; $4cf8: $6e
    ld a, b                                       ; $4cf9: $78
    ld hl, sp-$36                                 ; $4cfa: $f8 $ca
    rst $38                                       ; $4cfc: $ff
    add sp, -$19                                  ; $4cfd: $e8 $e7
    push bc                                       ; $4cff: $c5
    push hl                                       ; $4d00: $e5
    ld b, [hl]                                    ; $4d01: $46
    ld d, l                                       ; $4d02: $55
    ld d, h                                       ; $4d03: $54
    ld d, l                                       ; $4d04: $55
    ld b, h                                       ; $4d05: $44
    ld a, a                                       ; $4d06: $7f
    jr nc, jr_05a_4d70                            ; $4d07: $30 $67

    ld l, d                                       ; $4d09: $6a
    ld l, l                                       ; $4d0a: $6d
    jr nc, jr_05a_4d3d                            ; $4d0b: $30 $30

    add e                                         ; $4d0d: $83
    jp z, Jump_05a_4eff                           ; $4d0e: $ca $ff $4e

    ret nz                                        ; $4d11: $c0

    db $ed                                        ; $4d12: $ed
    ld c, l                                       ; $4d13: $4d
    ld [hl-], a                                   ; $4d14: $32
    ld l, l                                       ; $4d15: $6d
    call nz, $bfe3                                ; $4d16: $c4 $e3 $bf
    pop hl                                        ; $4d19: $e1
    ld d, d                                       ; $4d1a: $52
    jp z, Jump_000_26ff                           ; $4d1b: $ca $ff $26

    add b                                         ; $4d1e: $80
    db $ec                                        ; $4d1f: $ec
    inc [hl]                                      ; $4d20: $34
    ld [hl-], a                                   ; $4d21: $32
    add a                                         ; $4d22: $87
    pop hl                                        ; $4d23: $e1
    cp a                                          ; $4d24: $bf
    push hl                                       ; $4d25: $e5
    ld d, e                                       ; $4d26: $53
    jp z, Jump_05a_40ff                           ; $4d27: $ca $ff $40

    add sp, -$7b                                  ; $4d2a: $e8 $85
    inc b                                         ; $4d2c: $04
    jp z, Jump_05a_44c0                           ; $4d2d: $ca $c0 $44

    add a                                         ; $4d30: $87
    db $e3                                        ; $4d31: $e3
    ld a, [hl]                                    ; $4d32: $7e
    db $e4                                        ; $4d33: $e4
    add b                                         ; $4d34: $80
    rst $38                                       ; $4d35: $ff
    jp hl                                         ; $4d36: $e9


    add sp, $29                                   ; $4d37: $e8 $29
    ld l, e                                       ; $4d39: $6b
    ld hl, $c015                                  ; $4d3a: $21 $15 $c0

jr_05a_4d3d:
    ldh [$67], a                                  ; $4d3d: $e0 $67
    cp a                                          ; $4d3f: $bf
    add sp, $30                                   ; $4d40: $e8 $30
    add hl, sp                                    ; $4d42: $39
    jp z, Jump_05a_4eff                           ; $4d43: $ca $ff $4e

Call_05a_4d46:
    add sp, -$19                                  ; $4d46: $e8 $e7
    dec hl                                        ; $4d48: $2b
    inc l                                         ; $4d49: $2c
    rla                                           ; $4d4a: $17
    ld b, b                                       ; $4d4b: $40
    ld [c], a                                     ; $4d4c: $e2
    dec b                                         ; $4d4d: $05
    ldh [rLY], a                                  ; $4d4e: $e0 $44
    ret nz                                        ; $4d50: $c0

    jp Jump_000_32b3                              ; $4d51: $c3 $b3 $32


    ld c, l                                       ; $4d54: $4d
    jp z, $c0ff                                   ; $4d55: $ca $ff $c0

    jp hl                                         ; $4d58: $e9


    ld d, $15                                     ; $4d59: $16 $15
    ret nz                                        ; $4d5b: $c0

    pop bc                                        ; $4d5c: $c1
    ld h, a                                       ; $4d5d: $67
    rst $18                                       ; $4d5e: $df
    ld [hl], $46                                  ; $4d5f: $36 $46
    ld c, l                                       ; $4d61: $4d
    ld c, l                                       ; $4d62: $4d
    ld b, l                                       ; $4d63: $45
    ld [hl], a                                    ; $4d64: $77
    ldh [$32], a                                  ; $4d65: $e0 $32
    ld c, l                                       ; $4d67: $4d
    jp hl                                         ; $4d68: $e9


    ld sp, $ffca                                  ; $4d69: $31 $ca $ff
    add b                                         ; $4d6c: $80
    jp hl                                         ; $4d6d: $e9


    jr z, jr_05a_4def                             ; $4d6e: $28 $7f

jr_05a_4d70:
    ldh [$31], a                                  ; $4d70: $e0 $31
    ld c, l                                       ; $4d72: $4d
    ld d, a                                       ; $4d73: $57
    sbc l                                         ; $4d74: $9d
    ld b, a                                       ; $4d75: $47
    cp $a3                                        ; $4d76: $fe $a3
    ld b, [hl]                                    ; $4d78: $46
    ld c, l                                       ; $4d79: $4d
    ld sp, $ffc0                                  ; $4d7a: $31 $c0 $ff
    nop                                           ; $4d7d: $00
    ld [$6728], a                                 ; $4d7e: $ea $28 $67
    ld d, $12                                     ; $4d81: $16 $12
    ld de, $a580                                  ; $4d83: $11 $80 $a5
    cp $81                                        ; $4d86: $fe $81
    ld de, $ca12                                  ; $4d88: $11 $12 $ca
    rst $38                                       ; $4d8b: $ff
    db $ec                                        ; $4d8c: $ec
    ret nz                                        ; $4d8d: $c0

    xor b                                         ; $4d8e: $a8
    cp a                                          ; $4d8f: $bf
    ldh [rNR43], a                                ; $4d90: $e0 $22
    ld hl, $e7be                                  ; $4d92: $21 $be $e7
    ld de, $2112                                  ; $4d95: $11 $12 $21
    pop af                                        ; $4d98: $f1
    ld [hl+], a                                   ; $4d99: $22
    jp z, $80ff                                   ; $4d9a: $ca $ff $80

    xor c                                         ; $4d9d: $a9
    ld a, [hl]                                    ; $4d9e: $7e
    ldh [rNR41], a                                ; $4d9f: $e0 $20
    ld [hl+], a                                   ; $4da1: $22
    ld hl, $fe01                                  ; $4da2: $21 $01 $fe
    add e                                         ; $4da5: $83
    add b                                         ; $4da6: $80
    add hl, hl                                    ; $4da7: $29
    inc d                                         ; $4da8: $14
    inc d                                         ; $4da9: $14
    inc d                                         ; $4daa: $14
    ld hl, $1022                                  ; $4dab: $21 $22 $10
    reti                                          ; $4dae: $d9


    jr nz, @-$34                                  ; $4daf: $20 $ca

    rst $38                                       ; $4db1: $ff
    ld b, b                                       ; $4db2: $40
    xor d                                         ; $4db3: $aa
    add hl, hl                                    ; $4db4: $29
    daa                                           ; $4db5: $27
    add h                                         ; $4db6: $84
    add e                                         ; $4db7: $83
    ld sp, $072b                                  ; $4db8: $31 $2b $07
    inc h                                         ; $4dbb: $24
    inc h                                         ; $4dbc: $24
    inc h                                         ; $4dbd: $24
    scf                                           ; $4dbe: $37
    add d                                         ; $4dbf: $82
    rst $38                                       ; $4dc0: $ff
    rst $38                                       ; $4dc1: $ff
    rst $38                                       ; $4dc2: $ff
    rst $38                                       ; $4dc3: $ff
    rst $38                                       ; $4dc4: $ff
    rst $38                                       ; $4dc5: $ff
    rst $38                                       ; $4dc6: $ff
    rst $38                                       ; $4dc7: $ff
    nop                                           ; $4dc8: $00
    rst $38                                       ; $4dc9: $ff
    rst $38                                       ; $4dca: $ff
    rst $38                                       ; $4dcb: $ff
    rst $38                                       ; $4dcc: $ff
    rst $38                                       ; $4dcd: $ff
    rst $38                                       ; $4dce: $ff
    rst $38                                       ; $4dcf: $ff
    rst $38                                       ; $4dd0: $ff
    rst $38                                       ; $4dd1: $ff
    rst $38                                       ; $4dd2: $ff
    rst $38                                       ; $4dd3: $ff
    rst $38                                       ; $4dd4: $ff
    rst $38                                       ; $4dd5: $ff
    rst $38                                       ; $4dd6: $ff
    rst $38                                       ; $4dd7: $ff
    rst $38                                       ; $4dd8: $ff
    nop                                           ; $4dd9: $00
    rst $38                                       ; $4dda: $ff
    rst $38                                       ; $4ddb: $ff
    rst $38                                       ; $4ddc: $ff
    rst $38                                       ; $4ddd: $ff
    rst $38                                       ; $4dde: $ff
    rst $38                                       ; $4ddf: $ff
    rst $38                                       ; $4de0: $ff
    rst $38                                       ; $4de1: $ff
    rst $38                                       ; $4de2: $ff
    rst $38                                       ; $4de3: $ff
    rst $38                                       ; $4de4: $ff
    rst $38                                       ; $4de5: $ff
    rst $38                                       ; $4de6: $ff
    rst $38                                       ; $4de7: $ff
    rst $38                                       ; $4de8: $ff
    rst $38                                       ; $4de9: $ff
    nop                                           ; $4dea: $00
    rst $38                                       ; $4deb: $ff
    rst $38                                       ; $4dec: $ff
    rst $38                                       ; $4ded: $ff
    rst $38                                       ; $4dee: $ff

jr_05a_4def:
    rst $38                                       ; $4def: $ff
    rst $38                                       ; $4df0: $ff
    rst $38                                       ; $4df1: $ff
    rst $38                                       ; $4df2: $ff
    rst $38                                       ; $4df3: $ff
    rst $38                                       ; $4df4: $ff
    rst $38                                       ; $4df5: $ff
    rst $38                                       ; $4df6: $ff
    rst $38                                       ; $4df7: $ff
    rst $38                                       ; $4df8: $ff
    rst $38                                       ; $4df9: $ff
    rst $38                                       ; $4dfa: $ff
    nop                                           ; $4dfb: $00
    rst $38                                       ; $4dfc: $ff
    rst $38                                       ; $4dfd: $ff
    rst $38                                       ; $4dfe: $ff
    rst $38                                       ; $4dff: $ff
    rst $38                                       ; $4e00: $ff
    rst $38                                       ; $4e01: $ff
    rst $38                                       ; $4e02: $ff
    rst $38                                       ; $4e03: $ff
    rst $38                                       ; $4e04: $ff
    rst $38                                       ; $4e05: $ff
    rst $38                                       ; $4e06: $ff
    rst $38                                       ; $4e07: $ff
    rst $38                                       ; $4e08: $ff
    rst $38                                       ; $4e09: $ff
    rst $38                                       ; $4e0a: $ff
    rst $38                                       ; $4e0b: $ff
    nop                                           ; $4e0c: $00
    rst $38                                       ; $4e0d: $ff
    rst $38                                       ; $4e0e: $ff
    rst $38                                       ; $4e0f: $ff
    rst $38                                       ; $4e10: $ff
    rst $38                                       ; $4e11: $ff
    rst $38                                       ; $4e12: $ff
    rst $38                                       ; $4e13: $ff
    rst $38                                       ; $4e14: $ff
    rst $38                                       ; $4e15: $ff
    rst $38                                       ; $4e16: $ff
    rst $38                                       ; $4e17: $ff
    rst $38                                       ; $4e18: $ff
    rst $38                                       ; $4e19: $ff
    rst $38                                       ; $4e1a: $ff
    rst $38                                       ; $4e1b: $ff
    rst $38                                       ; $4e1c: $ff
    nop                                           ; $4e1d: $00
    rst $38                                       ; $4e1e: $ff
    rst $38                                       ; $4e1f: $ff
    rst $38                                       ; $4e20: $ff
    rst $38                                       ; $4e21: $ff
    rst $38                                       ; $4e22: $ff
    rst $38                                       ; $4e23: $ff
    rst $38                                       ; $4e24: $ff
    rst $38                                       ; $4e25: $ff
    rst $38                                       ; $4e26: $ff
    rst $38                                       ; $4e27: $ff
    rst $38                                       ; $4e28: $ff
    rst $38                                       ; $4e29: $ff
    rst $38                                       ; $4e2a: $ff
    rst $38                                       ; $4e2b: $ff
    rst $38                                       ; $4e2c: $ff
    rst $38                                       ; $4e2d: $ff
    nop                                           ; $4e2e: $00
    rst $38                                       ; $4e2f: $ff
    rst $38                                       ; $4e30: $ff
    rst $38                                       ; $4e31: $ff
    rst $38                                       ; $4e32: $ff
    rst $38                                       ; $4e33: $ff
    rst $38                                       ; $4e34: $ff
    rst $38                                       ; $4e35: $ff
    rst $38                                       ; $4e36: $ff
    rst $38                                       ; $4e37: $ff
    rst $38                                       ; $4e38: $ff
    rst $38                                       ; $4e39: $ff
    rst $38                                       ; $4e3a: $ff
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
    ld a, [c]                                     ; $4e82: $f2
    nop                                           ; $4e83: $00
    nop                                           ; $4e84: $00
    nop                                           ; $4e85: $00
    and l                                         ; $4e86: $a5
    nop                                           ; $4e87: $00
    rst $38                                       ; $4e88: $ff
    push hl                                       ; $4e89: $e5
    ld [hl-], a                                   ; $4e8a: $32
    or $e6                                        ; $4e8b: $f6 $e6
    rst $30                                       ; $4e8d: $f7
    rst $20                                       ; $4e8e: $e7
    dec [hl]                                      ; $4e8f: $35
    db $ec                                        ; $4e90: $ec
    xor $37                                       ; $4e91: $ee $37
    db $ec                                        ; $4e93: $ec
    jp c, $c7f0                                   ; $4e94: $da $f0 $c7

    add sp, $33                                   ; $4e97: $e8 $33
    ld sp, $f2e0                                  ; $4e99: $31 $e0 $f2
    ld [hl], $30                                  ; $4e9c: $36 $30
    scf                                           ; $4e9e: $37
    cp a                                          ; $4e9f: $bf
    ld h, $20                                     ; $4ea0: $26 $20
    daa                                           ; $4ea2: $27
    db $10                                        ; $4ea3: $10
    ld d, $17                                     ; $4ea4: $16 $17
    jp nz, Jump_000_34f6                          ; $4ea6: $c2 $f6 $34

    rst $38                                       ; $4ea9: $ff
    ld [hl], $32                                  ; $4eaa: $36 $32
    jr nc, jr_05a_4ee5                            ; $4eac: $30 $37

    ld sp, $3133                                  ; $4eae: $31 $33 $31
    inc sp                                        ; $4eb1: $33
    nop                                           ; $4eb2: $00
    and b                                         ; $4eb3: $a0
    ei                                            ; $4eb4: $fb
    rst $38                                       ; $4eb5: $ff
    rst $28                                       ; $4eb6: $ef
    nop                                           ; $4eb7: $00
    nop                                           ; $4eb8: $00
    nop                                           ; $4eb9: $00
    jp nz, $f24e                                  ; $4eba: $c2 $4e $f2

    ld c, [hl]                                    ; $4ebd: $4e
    ld d, [hl]                                    ; $4ebe: $56
    ld d, c                                       ; $4ebf: $51
    ld l, $53                                     ; $4ec0: $2e $53
    db $ec                                        ; $4ec2: $ec
    dec hl                                        ; $4ec3: $2b
    ld [hl+], a                                   ; $4ec4: $22
    dec sp                                        ; $4ec5: $3b
    ld b, b                                       ; $4ec6: $40
    ld [hl+], a                                   ; $4ec7: $22
    nop                                           ; $4ec8: $00
    add hl, bc                                    ; $4ec9: $09
    and l                                         ; $4eca: $a5
    ld b, e                                       ; $4ecb: $43
    xor $37                                       ; $4ecc: $ee $37
    ld [hl+], a                                   ; $4ece: $22
    dec sp                                        ; $4ecf: $3b
    ld b, b                                       ; $4ed0: $40
    ld [hl+], a                                   ; $4ed1: $22
    ccf                                           ; $4ed2: $3f
    ld a, a                                       ; $4ed3: $7f
    rla                                           ; $4ed4: $17
    ld e, [hl]                                    ; $4ed5: $5e
    ld de, $2249                                  ; $4ed6: $11 $49 $22
    dec sp                                        ; $4ed9: $3b
    ld [$0825], sp                                ; $4eda: $08 $25 $08
    dec h                                         ; $4edd: $25
    ld [$0825], sp                                ; $4ede: $08 $25 $08
    dec h                                         ; $4ee1: $25
    ld [$0825], sp                                ; $4ee2: $08 $25 $08

jr_05a_4ee5:
    dec h                                         ; $4ee5: $25
    ld [$0825], sp                                ; $4ee6: $08 $25 $08
    dec h                                         ; $4ee9: $25
    ld [$0825], sp                                ; $4eea: $08 $25 $08
    dec h                                         ; $4eed: $25
    ld [$0825], sp                                ; $4eee: $08 $25 $08
    dec h                                         ; $4ef1: $25
    ld a, l                                       ; $4ef2: $7d
    inc c                                         ; $4ef3: $0c
    rst $38                                       ; $4ef4: $ff
    ldh [$0b], a                                  ; $4ef5: $e0 $0b
    dec bc                                        ; $4ef7: $0b
    dec bc                                        ; $4ef8: $0b
    ld l, e                                       ; $4ef9: $6b

jr_05a_4efa:
    ld c, e                                       ; $4efa: $4b
    ei                                            ; $4efb: $fb
    ldh [rPCM34], a                               ; $4efc: $e0 $77
    ld c, h                                       ; $4efe: $4c

Jump_05a_4eff:
    ld c, h                                       ; $4eff: $4c
    ld c, h                                       ; $4f00: $4c
    ld a, [c]                                     ; $4f01: $f2
    ld [c], a                                     ; $4f02: $e2
    inc c                                         ; $4f03: $0c
    ld c, h                                       ; $4f04: $4c
    inc c                                         ; $4f05: $0c
    push af                                       ; $4f06: $f5
    ld [c], a                                     ; $4f07: $e2
    jr jr_05a_4efa                                ; $4f08: $18 $f0

    ldh [$ef], a                                  ; $4f0a: $e0 $ef
    pop hl                                        ; $4f0c: $e1
    ld [$0ce2], a                                 ; $4f0d: $ea $e2 $0c
    inc l                                         ; $4f10: $2c
    rst $30                                       ; $4f11: $f7
    add sp, -$02                                  ; $4f12: $e8 $fe
    db $eb                                        ; $4f14: $eb
    pop bc                                        ; $4f15: $c1
    pop hl                                        ; $4f16: $e1
    dec bc                                        ; $4f17: $0b
    ld l, e                                       ; $4f18: $6b
    ld c, e                                       ; $4f19: $4b
    cp a                                          ; $4f1a: $bf
    ldh [$2c], a                                  ; $4f1b: $e0 $2c
    ret nz                                        ; $4f1d: $c0

    push hl                                       ; $4f1e: $e5
    xor e                                         ; $4f1f: $ab
    pop hl                                        ; $4f20: $e1
    set 4, d                                      ; $4f21: $cb $e2
    rst $30                                       ; $4f23: $f7
    ld [c], a                                     ; $4f24: $e2
    ld d, b                                       ; $4f25: $50
    or d                                          ; $4f26: $b2
    ldh [$f7], a                                  ; $4f27: $e0 $f7
    db $eb                                        ; $4f29: $eb
    ret nz                                        ; $4f2a: $c0

    xor $c1                                       ; $4f2b: $ee $c1
    ldh [$2b], a                                  ; $4f2d: $e0 $2b
    cp a                                          ; $4f2f: $bf
    ldh [$2b], a                                  ; $4f30: $e0 $2b
    ret nz                                        ; $4f32: $c0

    add sp, $48                                   ; $4f33: $e8 $48
    add a                                         ; $4f35: $87
    ld [c], a                                     ; $4f36: $e2
    cp b                                          ; $4f37: $b8
    db $e4                                        ; $4f38: $e4
    ld l, c                                       ; $4f39: $69
    ld [c], a                                     ; $4f3a: $e2
    inc l                                         ; $4f3b: $2c
    rst $30                                       ; $4f3c: $f7
    and $80                                       ; $4f3d: $e6 $80
    ld [$c14c], a                                 ; $4f3f: $ea $4c $c1
    db $e3                                        ; $4f42: $e3
    dec c                                         ; $4f43: $0d
    dec bc                                        ; $4f44: $0b
    ret nz                                        ; $4f45: $c0

    ldh [rWX], a                                  ; $4f46: $e0 $4b
    dec hl                                        ; $4f48: $2b
    call c, $80e1                                 ; $4f49: $dc $e1 $80
    ld [c], a                                     ; $4f4c: $e2
    adc h                                         ; $4f4d: $8c
    pop hl                                        ; $4f4e: $e1
    db $fc                                        ; $4f4f: $fc
    db $e3                                        ; $4f50: $e3
    nop                                           ; $4f51: $00
    ccf                                           ; $4f52: $3f
    and $49                                       ; $4f53: $e6 $49
    pop hl                                        ; $4f55: $e1
    ret nz                                        ; $4f56: $c0

    ldh a, [rDIV]                                 ; $4f57: $f0 $04
    ldh [$03], a                                  ; $4f59: $e0 $03
    ld [c], a                                     ; $4f5b: $e2
    pop bc                                        ; $4f5c: $c1
    ldh [$fd], a                                  ; $4f5d: $e0 $fd
    ret nz                                        ; $4f5f: $c0

    ld a, [c]                                     ; $4f60: $f2
    jp $c140                                      ; $4f61: $c3 $40 $c1


    and $b8                                       ; $4f64: $e6 $b8
    db $e3                                        ; $4f66: $e3
    ld b, c                                       ; $4f67: $41
    db $ed                                        ; $4f68: $ed
    rst $38                                       ; $4f69: $ff
    call nz, $c3f8                                ; $4f6a: $c4 $f8 $c3
    ret nz                                        ; $4f6d: $c0

    pop hl                                        ; $4f6e: $e1
    dec hl                                        ; $4f6f: $2b
    add d                                         ; $4f70: $82
    ld [c], a                                     ; $4f71: $e2
    inc bc                                        ; $4f72: $03
    dec bc                                        ; $4f73: $0b
    ld l, e                                       ; $4f74: $6b
    ret nz                                        ; $4f75: $c0

    add sp, -$02                                  ; $4f76: $e8 $fe
    db $e4                                        ; $4f78: $e4
    halt                                          ; $4f79: $76
    db $e4                                        ; $4f7a: $e4
    rst $28                                       ; $4f7b: $ef
    call nz, $e4f7                                ; $4f7c: $c4 $f7 $e4
    add b                                         ; $4f7f: $80
    xor $0d                                       ; $4f80: $ee $0d
    dec hl                                        ; $4f82: $2b
    pop bc                                        ; $4f83: $c1
    ld [c], a                                     ; $4f84: $e2
    ld c, e                                       ; $4f85: $4b
    dec hl                                        ; $4f86: $2b
    add $c2                                       ; $4f87: $c6 $c2
    ld [hl], e                                    ; $4f89: $73
    ret nz                                        ; $4f8a: $c0

    add b                                         ; $4f8b: $80
    pop bc                                        ; $4f8c: $c1
    cp [hl]                                       ; $4f8d: $be
    rst $00                                       ; $4f8e: $c7
    nop                                           ; $4f8f: $00
    ret nz                                        ; $4f90: $c0

    db $db                                        ; $4f91: $db
    ld b, b                                       ; $4f92: $40
    pop hl                                        ; $4f93: $e1
    ld a, a                                       ; $4f94: $7f
    ldh [$c1], a                                  ; $4f95: $e0 $c1
    ldh [$c0], a                                  ; $4f97: $e0 $c0
    pop hl                                        ; $4f99: $e1
    ccf                                           ; $4f9a: $3f
    ret nz                                        ; $4f9b: $c0

    ld a, c                                       ; $4f9c: $79
    ldh [rKEY1], a                                ; $4f9d: $e0 $4d
    jp $be10                                      ; $4f9f: $c3 $10 $be


    call nz, $c5c0                                ; $4fa2: $c4 $c0 $c5
    rst $30                                       ; $4fa5: $f7
    rst $20                                       ; $4fa6: $e7
    ld b, b                                       ; $4fa7: $40
    jp z, $8a2c                                   ; $4fa8: $ca $2c $8a

    ldh [rDMA], a                                 ; $4fab: $e0 $46
    pop hl                                        ; $4fad: $e1

jr_05a_4fae:
    nop                                           ; $4fae: $00
    pop hl                                        ; $4faf: $e1
    jr nc, jr_05a_4fae                            ; $4fb0: $30 $fc

    and c                                         ; $4fb2: $a1
    ld a, [hl-]                                   ; $4fb3: $3a
    db $e3                                        ; $4fb4: $e3
    ld b, h                                       ; $4fb5: $44
    and $40                                       ; $4fb6: $e6 $40
    sbc $2c                                       ; $4fb8: $de $2c
    ld c, h                                       ; $4fba: $4c
    ld [bc], a                                    ; $4fbb: $02
    pop bc                                        ; $4fbc: $c1
    pop bc                                        ; $4fbd: $c1
    pop bc                                        ; $4fbe: $c1
    adc h                                         ; $4fbf: $8c
    cp h                                          ; $4fc0: $bc
    and b                                         ; $4fc1: $a0
    cp a                                          ; $4fc2: $bf
    ld [c], a                                     ; $4fc3: $e2
    dec bc                                        ; $4fc4: $0b
    ld a, [bc]                                    ; $4fc5: $0a
    ret nz                                        ; $4fc6: $c0

    and e                                         ; $4fc7: $a3
    ld a, l                                       ; $4fc8: $7d
    push bc                                       ; $4fc9: $c5
    add b                                         ; $4fca: $80
    db $fc                                        ; $4fcb: $fc
    inc l                                         ; $4fcc: $2c
    nop                                           ; $4fcd: $00
    add e                                         ; $4fce: $83
    and c                                         ; $4fcf: $a1
    add e                                         ; $4fd0: $83
    jp nz, $c0fd                                  ; $4fd1: $c2 $fd $c0

    ld [hl-], a                                   ; $4fd4: $32
    ld [c], a                                     ; $4fd5: $e2
    add b                                         ; $4fd6: $80
    db $e3                                        ; $4fd7: $e3
    dec sp                                        ; $4fd8: $3b
    db $e4                                        ; $4fd9: $e4
    ld a, a                                       ; $4fda: $7f
    and a                                         ; $4fdb: $a7
    rst $30                                       ; $4fdc: $f7
    jp hl                                         ; $4fdd: $e9


    jr nz, @+$7d                                  ; $4fde: $20 $7b

    xor c                                         ; $4fe0: $a9
    add b                                         ; $4fe1: $80
    ret nz                                        ; $4fe2: $c0

    pop bc                                        ; $4fe3: $c1
    db $e3                                        ; $4fe4: $e3
    cp h                                          ; $4fe5: $bc
    pop bc                                        ; $4fe6: $c1
    ld [hl], h                                    ; $4fe7: $74
    ret nz                                        ; $4fe8: $c0

    ld a, [bc]                                    ; $4fe9: $0a
    ret nz                                        ; $4fea: $c0

    xor $fd                                       ; $4feb: $ee $fd
    ei                                            ; $4fed: $fb
    add e                                         ; $4fee: $83
    ld c, h                                       ; $4fef: $4c
    ld c, e                                       ; $4ff0: $4b
    add b                                         ; $4ff1: $80
    ret nz                                        ; $4ff2: $c0

    cp h                                          ; $4ff3: $bc
    db $e4                                        ; $4ff4: $e4
    rst $30                                       ; $4ff5: $f7
    pop hl                                        ; $4ff6: $e1
    ld b, b                                       ; $4ff7: $40
    and h                                         ; $4ff8: $a4
    ld h, h                                       ; $4ff9: $64
    ld [c], a                                     ; $4ffa: $e2
    inc l                                         ; $4ffb: $2c
    ld h, b                                       ; $4ffc: $60
    inc de                                        ; $4ffd: $13
    xor [hl]                                      ; $4ffe: $ae
    ret nz                                        ; $4fff: $c0

    pop af                                        ; $5000: $f1
    ccf                                           ; $5001: $3f
    jp $a2bb                                      ; $5002: $c3 $bb $a2


    inc a                                         ; $5005: $3c
    ret nz                                        ; $5006: $c0

    dec hl                                        ; $5007: $2b
    dec hl                                        ; $5008: $2b
    adc h                                         ; $5009: $8c
    db $fc                                        ; $500a: $fc
    nop                                           ; $500b: $00
    or [hl]                                       ; $500c: $b6
    add b                                         ; $500d: $80
    and [hl]                                      ; $500e: $a6
    ld [$c0be], a                                 ; $500f: $ea $be $c0
    cp $a1                                        ; $5012: $fe $a1
    ld bc, $7cc0                                  ; $5014: $01 $c0 $7c
    call nz, $fc8d                                ; $5017: $c4 $8d $fc
    ret nz                                        ; $501a: $c0

    ldh a, [rP1]                                  ; $501b: $f0 $00
    cp l                                          ; $501d: $bd
    and b                                         ; $501e: $a0
    ld a, [hl-]                                   ; $501f: $3a
    jp nz, $a138                                  ; $5020: $c2 $38 $a1

    ret nz                                        ; $5023: $c0

    cp $27                                        ; $5024: $fe $27
    ld [$85da], a                                 ; $5026: $ea $da $85
    jp nc, Jump_05a_4a84                          ; $5029: $d2 $84 $4a

    and e                                         ; $502c: $a3
    nop                                           ; $502d: $00
    nop                                           ; $502e: $00
    sub e                                         ; $502f: $93
    ld b, b                                       ; $5030: $40
    add a                                         ; $5031: $87
    ret nz                                        ; $5032: $c0

    jp hl                                         ; $5033: $e9


    db $d3                                        ; $5034: $d3
    ld l, d                                       ; $5035: $6a
    adc $64                                       ; $5036: $ce $64
    db $d3                                        ; $5038: $d3
    ld h, d                                       ; $5039: $62
    nop                                           ; $503a: $00
    adc l                                         ; $503b: $8d
    ld [hl], d                                    ; $503c: $72
    reti                                          ; $503d: $d9


    nop                                           ; $503e: $00
    db $d3                                        ; $503f: $d3
    ld [hl], b                                    ; $5040: $70
    nop                                           ; $5041: $00
    adc [hl]                                      ; $5042: $8e
    ld a, a                                       ; $5043: $7f
    adc b                                         ; $5044: $88
    ld h, a                                       ; $5045: $67
    jp nz, Jump_05a_6878                          ; $5046: $c2 $78 $68

    db $d3                                        ; $5049: $d3
    ld [hl], c                                    ; $504a: $71
    nop                                           ; $504b: $00
    adc [hl]                                      ; $504c: $8e
    nop                                           ; $504d: $00
    and a                                         ; $504e: $a7
    nop                                           ; $504f: $00
    ret nz                                        ; $5050: $c0

    ld [$e505], a                                 ; $5051: $ea $05 $e5
    db $d3                                        ; $5054: $d3
    ld l, h                                       ; $5055: $6c
    nop                                           ; $5056: $00
    adc a                                         ; $5057: $8f
    or $49                                        ; $5058: $f6 $49
    and $a7                                       ; $505a: $e6 $a7
    rla                                           ; $505c: $17
    and a                                         ; $505d: $a7
    db $d3                                        ; $505e: $d3
    ld l, h                                       ; $505f: $6c
    nop                                           ; $5060: $00
    nop                                           ; $5061: $00
    adc [hl]                                      ; $5062: $8e
    nop                                           ; $5063: $00
    db $d3                                        ; $5064: $d3
    push de                                       ; $5065: $d5
    ld h, [hl]                                    ; $5066: $66
    db $d3                                        ; $5067: $d3
    ld l, l                                       ; $5068: $6d
    nop                                           ; $5069: $00
    adc a                                         ; $506a: $8f
    add $d4                                       ; $506b: $c6 $d4
    db $d3                                        ; $506d: $d3
    ld [hl], d                                    ; $506e: $72
    nop                                           ; $506f: $00
    sub b                                         ; $5070: $90
    nop                                           ; $5071: $00
    add b                                         ; $5072: $80
    or h                                          ; $5073: $b4
    ld e, l                                       ; $5074: $5d
    add h                                         ; $5075: $84
    db $d3                                        ; $5076: $d3
    ldh a, [$31]                                  ; $5077: $f0 $31
    ld b, e                                       ; $5079: $43
    ld c, c                                       ; $507a: $49
    ld c, a                                       ; $507b: $4f
    ret nz                                        ; $507c: $c0

    rst $28                                       ; $507d: $ef
    db $d3                                        ; $507e: $d3
    ld l, a                                       ; $507f: $6f
    add $64                                       ; $5080: $c6 $64
    nop                                           ; $5082: $00
    nop                                           ; $5083: $00
    adc c                                         ; $5084: $89
    dec bc                                        ; $5085: $0b
    adc d                                         ; $5086: $8a
    ld b, b                                       ; $5087: $40
    db $eb                                        ; $5088: $eb
    db $d3                                        ; $5089: $d3
    ld [hl], d                                    ; $508a: $72
    ld c, $47                                     ; $508b: $0e $47
    ld b, b                                       ; $508d: $40
    ld l, [hl]                                    ; $508e: $6e
    ld l, c                                       ; $508f: $69
    adc c                                         ; $5090: $89
    ld d, h                                       ; $5091: $54
    ld h, $00                                     ; $5092: $26 $00
    db $d3                                        ; $5094: $d3
    db $ed                                        ; $5095: $ed
    ld c, $c9                                     ; $5096: $0e $c9
    add b                                         ; $5098: $80
    inc l                                         ; $5099: $2c
    dec a                                         ; $509a: $3d
    add hl, hl                                    ; $509b: $29
    ret nz                                        ; $509c: $c0

    db $ed                                        ; $509d: $ed
    reti                                          ; $509e: $d9


    sub e                                         ; $509f: $93
    add b                                         ; $50a0: $80
    db $ec                                        ; $50a1: $ec
    xor h                                         ; $50a2: $ac
    sbc e                                         ; $50a3: $9b
    nop                                           ; $50a4: $00
    sub l                                         ; $50a5: $95
    ld [hl], a                                    ; $50a6: $77
    ld [hl], d                                    ; $50a7: $72
    ld a, a                                       ; $50a8: $7f
    rst $28                                       ; $50a9: $ef
    adc l                                         ; $50aa: $8d
    cp $75                                        ; $50ab: $fe $75
    ret nz                                        ; $50ad: $c0

    rst $38                                       ; $50ae: $ff
    cp [hl]                                       ; $50af: $be
    ld a, d                                       ; $50b0: $7a
    ld d, h                                       ; $50b1: $54
    db $fd                                        ; $50b2: $fd
    add b                                         ; $50b3: $80
    db $fc                                        ; $50b4: $fc
    nop                                           ; $50b5: $00
    ld bc, $15ce                                  ; $50b6: $01 $ce $15
    call z, $fc17                                 ; $50b9: $cc $17 $fc
    ld [bc], a                                    ; $50bc: $02
    ld l, d                                       ; $50bd: $6a
    dec d                                         ; $50be: $15
    ld d, c                                       ; $50bf: $51
    ld a, [$9588]                                 ; $50c0: $fa $88 $95
    db $dd                                        ; $50c3: $dd
    dec d                                         ; $50c4: $15
    ld e, d                                       ; $50c5: $5a
    nop                                           ; $50c6: $00
    cp c                                          ; $50c7: $b9
    db $ec                                        ; $50c8: $ec
    or l                                          ; $50c9: $b5
    sub a                                         ; $50ca: $97
    ld b, d                                       ; $50cb: $42
    reti                                          ; $50cc: $d9


    ld [hl], l                                    ; $50cd: $75
    ld l, a                                       ; $50ce: $6f
    dec d                                         ; $50cf: $15
    rst $18                                       ; $50d0: $df
    and d                                         ; $50d1: $a2
    ld c, c                                       ; $50d2: $49
    ld [hl], l                                    ; $50d3: $75
    ld l, a                                       ; $50d4: $6f
    ret nz                                        ; $50d5: $c0

    rst $38                                       ; $50d6: $ff
    nop                                           ; $50d7: $00
    adc l                                         ; $50d8: $8d
    xor c                                         ; $50d9: $a9
    ld [hl], l                                    ; $50da: $75
    ld [hl], d                                    ; $50db: $72
    rst $38                                       ; $50dc: $ff
    rst $38                                       ; $50dd: $ff
    cp h                                          ; $50de: $bc
    ld b, h                                       ; $50df: $44
    and d                                         ; $50e0: $a2
    ld [hl], c                                    ; $50e1: $71
    rst $38                                       ; $50e2: $ff
    rst $38                                       ; $50e3: $ff
    sbc l                                         ; $50e4: $9d
    dec b                                         ; $50e5: $05
    ld [hl], b                                    ; $50e6: $70
    ld b, h                                       ; $50e7: $44
    nop                                           ; $50e8: $00
    ld [hl], l                                    ; $50e9: $75
    ld a, a                                       ; $50ea: $7f
    ccf                                           ; $50eb: $3f
    ld sp, hl                                     ; $50ec: $f9
    ld [hl], l                                    ; $50ed: $75
    ld [hl], a                                    ; $50ee: $77
    add hl, de                                    ; $50ef: $19
    dec sp                                        ; $50f0: $3b
    inc bc                                        ; $50f1: $03
    add h                                         ; $50f2: $84
    and d                                         ; $50f3: $a2
    ld l, a                                       ; $50f4: $6f
    rst $38                                       ; $50f5: $ff
    rst $38                                       ; $50f6: $ff
    ld b, b                                       ; $50f7: $40
    jp hl                                         ; $50f8: $e9


    nop                                           ; $50f9: $00
    ld h, b                                       ; $50fa: $60
    or b                                          ; $50fb: $b0
    rst $38                                       ; $50fc: $ff
    rst $38                                       ; $50fd: $ff
    inc c                                         ; $50fe: $0c
    adc b                                         ; $50ff: $88
    ld h, b                                       ; $5100: $60
    or b                                          ; $5101: $b0
    rst $38                                       ; $5102: $ff
    rst $38                                       ; $5103: $ff
    pop de                                        ; $5104: $d1
    ld h, $60                                     ; $5105: $26 $60
    cp d                                          ; $5107: $ba
    rst $38                                       ; $5108: $ff
    rst $38                                       ; $5109: $ff
    nop                                           ; $510a: $00
    ld h, b                                       ; $510b: $60
    cp a                                          ; $510c: $bf
    rst $38                                       ; $510d: $ff
    rst $38                                       ; $510e: $ff
    rst $38                                       ; $510f: $ff
    rst $38                                       ; $5110: $ff
    sub [hl]                                      ; $5111: $96
    rst $38                                       ; $5112: $ff
    ld [hl], h                                    ; $5113: $74
    ld a, a                                       ; $5114: $7f
    rst $38                                       ; $5115: $ff
    rst $38                                       ; $5116: $ff
    rst $38                                       ; $5117: $ff
    rst $38                                       ; $5118: $ff
    rst $38                                       ; $5119: $ff
    rst $38                                       ; $511a: $ff
    nop                                           ; $511b: $00
    rst $38                                       ; $511c: $ff
    rst $38                                       ; $511d: $ff
    sbc e                                         ; $511e: $9b
    jr nc, @+$01                                  ; $511f: $30 $ff

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
    nop                                           ; $512c: $00
    rst $38                                       ; $512d: $ff
    rst $38                                       ; $512e: $ff
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
    nop                                           ; $513d: $00
    rst $38                                       ; $513e: $ff
    rst $38                                       ; $513f: $ff
    rst $38                                       ; $5140: $ff
    rst $38                                       ; $5141: $ff
    rst $38                                       ; $5142: $ff
    rst $38                                       ; $5143: $ff
    nop                                           ; $5144: $00
    cp a                                          ; $5145: $bf
    rst $38                                       ; $5146: $ff
    rst $38                                       ; $5147: $ff
    rst $38                                       ; $5148: $ff
    rst $38                                       ; $5149: $ff
    rst $38                                       ; $514a: $ff
    rst $38                                       ; $514b: $ff
    rst $38                                       ; $514c: $ff
    rst $38                                       ; $514d: $ff
    nop                                           ; $514e: $00
    rst $38                                       ; $514f: $ff
    rst $38                                       ; $5150: $ff
    rst $38                                       ; $5151: $ff
    ld [$0000], a                                 ; $5152: $ea $00 $00
    nop                                           ; $5155: $00
    rst $38                                       ; $5156: $ff
    jr nz, jr_05a_5179                            ; $5157: $20 $20

    jr nz, @+$17                                  ; $5159: $20 $15

    ld sp, $3131                                  ; $515b: $31 $31 $31
    ld c, l                                       ; $515e: $4d
    db $ed                                        ; $515f: $ed
    ld c, l                                       ; $5160: $4d
    ei                                            ; $5161: $fb
    ldh [rNR22], a                                ; $5162: $e0 $17
    jr z, @-$0c                                   ; $5164: $28 $f2

    ldh [rP1], a                                  ; $5166: $e0 $00
    ld sp, $b931                                  ; $5168: $31 $31 $b9
    nop                                           ; $516b: $00
    rst $38                                       ; $516c: $ff
    rst $38                                       ; $516d: $ff
    rst $20                                       ; $516e: $e7
    and $20                                       ; $516f: $e6 $20
    jr nz, jr_05a_517f                            ; $5171: $20 $0c

    pop bc                                        ; $5173: $c1
    pop hl                                        ; $5174: $e1
    ld [hl-], a                                   ; $5175: $32
    ld c, l                                       ; $5176: $4d
    ld [hl-], a                                   ; $5177: $32
    cp a                                          ; $5178: $bf

jr_05a_5179:
    ldh [$15], a                                  ; $5179: $e0 $15
    ld d, $c0                                     ; $517b: $16 $c0
    rst $38                                       ; $517d: $ff
    ret nz                                        ; $517e: $c0

jr_05a_517f:
    rst $28                                       ; $517f: $ef
    dec c                                         ; $5180: $0d
    pop bc                                        ; $5181: $c1
    pop hl                                        ; $5182: $e1
    jp Jump_000_3067                              ; $5183: $c3 $67 $30


    cp a                                          ; $5186: $bf
    pop hl                                        ; $5187: $e1
    ld a, a                                       ; $5188: $7f
    pop hl                                        ; $5189: $e1
    ret nz                                        ; $518a: $c0

    rst $38                                       ; $518b: $ff
    db $eb                                        ; $518c: $eb
    ld [$0f05], a                                 ; $518d: $ea $05 $0f
    ld b, $c1                                     ; $5190: $06 $c1
    db $e3                                        ; $5192: $e3
    jr nc, @+$69                                  ; $5193: $30 $67

    ld a, [hl]                                    ; $5195: $7e
    ldh [$7f], a                                  ; $5196: $e0 $7f
    pop hl                                        ; $5198: $e1
    ret nz                                        ; $5199: $c0

    rst $38                                       ; $519a: $ff
    db $eb                                        ; $519b: $eb
    ld [$e004], a                                 ; $519c: $ea $04 $e0
    ei                                            ; $519f: $fb
    ld sp, $c139                                  ; $51a0: $31 $39 $c1
    pop hl                                        ; $51a3: $e1
    ld l, d                                       ; $51a4: $6a
    ld l, l                                       ; $51a5: $6d
    add hl, sp                                    ; $51a6: $39
    ld sp, $8f31                                  ; $51a7: $31 $31 $8f
    dec hl                                        ; $51aa: $2b
    inc l                                         ; $51ab: $2c
    jr nz, jr_05a_51c6                            ; $51ac: $20 $18

    ret nz                                        ; $51ae: $c0

    rst $38                                       ; $51af: $ff
    ret nz                                        ; $51b0: $c0

    xor $c1                                       ; $51b1: $ee $c1
    ld [c], a                                     ; $51b3: $e2
    jr nc, @-$61                                  ; $51b4: $30 $9d

    ld d, d                                       ; $51b6: $52
    ret nz                                        ; $51b7: $c0

    ld [c], a                                     ; $51b8: $e2
    dec d                                         ; $51b9: $15
    ld sp, $ca5e                                  ; $51ba: $31 $5e $ca
    rst $38                                       ; $51bd: $ff
    add b                                         ; $51be: $80
    db $eb                                        ; $51bf: $eb
    ld c, c                                       ; $51c0: $49
    dec h                                         ; $51c1: $25
    ld c, b                                       ; $51c2: $48
    pop bc                                        ; $51c3: $c1
    pop hl                                        ; $51c4: $e1
    ld h, a                                       ; $51c5: $67

jr_05a_51c6:
    ret nz                                        ; $51c6: $c0

    ld [c], a                                     ; $51c7: $e2
    or d                                          ; $51c8: $b2
    ret nz                                        ; $51c9: $c0

    ld e, a                                       ; $51ca: $5f
    jp z, Jump_05a_40ff                           ; $51cb: $ca $ff $40

    db $eb                                        ; $51ce: $eb
    db $fc                                        ; $51cf: $fc
    ld a, a                                       ; $51d0: $7f
    ldh [$c1], a                                  ; $51d1: $e0 $c1
    ldh [rOCPS], a                                ; $51d3: $e0 $6a
    ld d, e                                       ; $51d5: $53
    ld sp, $2931                                  ; $51d6: $31 $31 $29
    ld hl, $0d4f                                  ; $51d9: $21 $4f $0d
    ld sp, $5b60                                  ; $51dc: $31 $60 $5b
    jp z, $e8ff                                   ; $51df: $ca $ff $e8

    rst $20                                       ; $51e2: $e7
    ld de, $e73f                                  ; $51e3: $11 $3f $e7
    sbc e                                         ; $51e6: $9b
    ld c, b                                       ; $51e7: $48
    ld c, c                                       ; $51e8: $49
    di                                            ; $51e9: $f3
    pop bc                                        ; $51ea: $c1
    ld h, b                                       ; $51eb: $60
    ld e, e                                       ; $51ec: $5b
    ret nz                                        ; $51ed: $c0

    rst $38                                       ; $51ee: $ff
    jp hl                                         ; $51ef: $e9


    add sp, $16                                   ; $51f0: $e8 $16
    and $c2                                       ; $51f2: $e6 $c2
    and b                                         ; $51f4: $a0
    ld c, c                                       ; $51f5: $49
    ld c, b                                       ; $51f6: $48
    nop                                           ; $51f7: $00
    ld [c], a                                     ; $51f8: $e2
    dec a                                         ; $51f9: $3d
    jp nz, Jump_05a_5b5e                          ; $51fa: $c2 $5e $5b

    ld e, e                                       ; $51fd: $5b
    sbc c                                         ; $51fe: $99
    ld e, d                                       ; $51ff: $5a
    jp z, $e8ff                                   ; $5200: $ca $ff $e8

    rst $20                                       ; $5203: $e7
    jr z, jr_05a_521d                             ; $5204: $28 $17

    ret nz                                        ; $5206: $c0

    pop bc                                        ; $5207: $c1
    pop bc                                        ; $5208: $c1
    ld [c], a                                     ; $5209: $e2
    ld h, a                                       ; $520a: $67
    adc l                                         ; $520b: $8d
    jr nc, jr_05a_528c                            ; $520c: $30 $7e

    ret nz                                        ; $520e: $c0

    ld e, a                                       ; $520f: $5f
    ld e, e                                       ; $5210: $5b
    add b                                         ; $5211: $80
    rst $38                                       ; $5212: $ff
    add b                                         ; $5213: $80
    xor d                                         ; $5214: $aa
    db $10                                        ; $5215: $10
    ret nz                                        ; $5216: $c0

    add hl, sp                                    ; $5217: $39
    ld e, [hl]                                    ; $5218: $5e
    pop bc                                        ; $5219: $c1
    db $e3                                        ; $521a: $e3
    ld l, d                                       ; $521b: $6a
    ld l, l                                       ; $521c: $6d

jr_05a_521d:
    add e                                         ; $521d: $83
    ld [hl], b                                    ; $521e: $70
    ld [bc], a                                    ; $521f: $02
    ldh [$5a], a                                  ; $5220: $e0 $5a
    ret nz                                        ; $5222: $c0

    rst $38                                       ; $5223: $ff
    or $80                                        ; $5224: $f6 $80
    xor h                                         ; $5226: $ac
    ld c, l                                       ; $5227: $4d
    ld [hl-], a                                   ; $5228: $32
    pop bc                                        ; $5229: $c1
    db $e3                                        ; $522a: $e3
    ld c, b                                       ; $522b: $48
    add h                                         ; $522c: $84
    xor c                                         ; $522d: $a9
    xor h                                         ; $522e: $ac
    db $ec                                        ; $522f: $ec
    nop                                           ; $5230: $00
    rst $38                                       ; $5231: $ff
    nop                                           ; $5232: $00
    or b                                          ; $5233: $b0
    ld c, l                                       ; $5234: $4d
    ld [hl-], a                                   ; $5235: $32
    rst $38                                       ; $5236: $ff
    and d                                         ; $5237: $a2
    add e                                         ; $5238: $83
    add b                                         ; $5239: $80
    add b                                         ; $523a: $80
    rra                                           ; $523b: $1f
    add c                                         ; $523c: $81
    ld sp, $5d31                                  ; $523d: $31 $31 $5d
    ld e, h                                       ; $5240: $5c
    jp z, $c0ff                                   ; $5241: $ca $ff $c0

    adc c                                         ; $5244: $89
    add b                                         ; $5245: $80
    add c                                         ; $5246: $81
    ei                                            ; $5247: $fb
    ld c, l                                       ; $5248: $4d
    ld [hl-], a                                   ; $5249: $32
    ret nz                                        ; $524a: $c0

    and b                                         ; $524b: $a0
    ld c, b                                       ; $524c: $48
    add h                                         ; $524d: $84
    add b                                         ; $524e: $80
    add b                                         ; $524f: $80
    xor [hl]                                      ; $5250: $ae
    pop hl                                        ; $5251: $e1
    ld [hl], b                                    ; $5252: $70
    ld [hl], e                                    ; $5253: $73
    add b                                         ; $5254: $80
    jp z, $c0ff                                   ; $5255: $ca $ff $c0

    ld [$a04e], a                                 ; $5258: $ea $4e $a0
    ld sp, $464d                                  ; $525b: $31 $4d $46
    rrca                                          ; $525e: $0f
    ld d, l                                       ; $525f: $55
    ld d, l                                       ; $5260: $55
    ld [hl], d                                    ; $5261: $72
    add b                                         ; $5262: $80
    rst $38                                       ; $5263: $ff
    ldh [$bf], a                                  ; $5264: $e0 $bf
    pop hl                                        ; $5266: $e1
    jp z, $ffff                                   ; $5267: $ca $ff $ff

    rst $38                                       ; $526a: $ff
    nop                                           ; $526b: $00
    rst $38                                       ; $526c: $ff
    rst $38                                       ; $526d: $ff
    rst $38                                       ; $526e: $ff
    rst $38                                       ; $526f: $ff
    rst $38                                       ; $5270: $ff
    rst $38                                       ; $5271: $ff
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
    nop                                           ; $527c: $00
    rst $38                                       ; $527d: $ff
    rst $38                                       ; $527e: $ff
    rst $38                                       ; $527f: $ff
    rst $38                                       ; $5280: $ff
    rst $38                                       ; $5281: $ff
    rst $38                                       ; $5282: $ff
    rst $38                                       ; $5283: $ff
    rst $38                                       ; $5284: $ff
    rst $38                                       ; $5285: $ff
    rst $38                                       ; $5286: $ff
    rst $38                                       ; $5287: $ff
    rst $38                                       ; $5288: $ff
    rst $38                                       ; $5289: $ff
    rst $38                                       ; $528a: $ff
    rst $38                                       ; $528b: $ff

jr_05a_528c:
    rst $38                                       ; $528c: $ff
    nop                                           ; $528d: $00
    rst $38                                       ; $528e: $ff
    rst $38                                       ; $528f: $ff
    rst $38                                       ; $5290: $ff
    rst $38                                       ; $5291: $ff
    rst $38                                       ; $5292: $ff
    rst $38                                       ; $5293: $ff
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
    nop                                           ; $529e: $00
    rst $38                                       ; $529f: $ff
    rst $38                                       ; $52a0: $ff
    rst $38                                       ; $52a1: $ff
    rst $38                                       ; $52a2: $ff
    rst $38                                       ; $52a3: $ff
    rst $38                                       ; $52a4: $ff
    rst $38                                       ; $52a5: $ff
    rst $38                                       ; $52a6: $ff
    rst $38                                       ; $52a7: $ff
    rst $38                                       ; $52a8: $ff
    rst $38                                       ; $52a9: $ff
    rst $38                                       ; $52aa: $ff
    rst $38                                       ; $52ab: $ff
    rst $38                                       ; $52ac: $ff
    rst $38                                       ; $52ad: $ff
    rst $38                                       ; $52ae: $ff
    nop                                           ; $52af: $00
    rst $38                                       ; $52b0: $ff
    rst $38                                       ; $52b1: $ff
    rst $38                                       ; $52b2: $ff
    rst $38                                       ; $52b3: $ff
    rst $38                                       ; $52b4: $ff
    rst $38                                       ; $52b5: $ff
    rst $38                                       ; $52b6: $ff
    rst $38                                       ; $52b7: $ff
    rst $38                                       ; $52b8: $ff
    rst $38                                       ; $52b9: $ff
    rst $38                                       ; $52ba: $ff
    rst $38                                       ; $52bb: $ff
    rst $38                                       ; $52bc: $ff
    rst $38                                       ; $52bd: $ff
    rst $38                                       ; $52be: $ff
    rst $38                                       ; $52bf: $ff
    nop                                           ; $52c0: $00
    rst $38                                       ; $52c1: $ff
    rst $38                                       ; $52c2: $ff
    rst $38                                       ; $52c3: $ff
    rst $38                                       ; $52c4: $ff
    rst $38                                       ; $52c5: $ff
    rst $38                                       ; $52c6: $ff
    rst $38                                       ; $52c7: $ff
    rst $38                                       ; $52c8: $ff
    rst $38                                       ; $52c9: $ff
    rst $38                                       ; $52ca: $ff
    rst $38                                       ; $52cb: $ff
    rst $38                                       ; $52cc: $ff
    rst $38                                       ; $52cd: $ff
    rst $38                                       ; $52ce: $ff
    rst $38                                       ; $52cf: $ff
    rst $38                                       ; $52d0: $ff
    nop                                           ; $52d1: $00
    rst $38                                       ; $52d2: $ff
    rst $38                                       ; $52d3: $ff
    rst $38                                       ; $52d4: $ff
    rst $38                                       ; $52d5: $ff
    rst $38                                       ; $52d6: $ff
    rst $38                                       ; $52d7: $ff
    rst $38                                       ; $52d8: $ff
    rst $38                                       ; $52d9: $ff
    rst $38                                       ; $52da: $ff
    rst $38                                       ; $52db: $ff
    rst $38                                       ; $52dc: $ff
    rst $38                                       ; $52dd: $ff
    rst $38                                       ; $52de: $ff
    rst $38                                       ; $52df: $ff
    rst $38                                       ; $52e0: $ff
    rst $38                                       ; $52e1: $ff
    nop                                           ; $52e2: $00
    rst $38                                       ; $52e3: $ff
    rst $38                                       ; $52e4: $ff
    rst $38                                       ; $52e5: $ff
    rst $38                                       ; $52e6: $ff
    rst $38                                       ; $52e7: $ff
    rst $38                                       ; $52e8: $ff
    rst $38                                       ; $52e9: $ff
    rst $38                                       ; $52ea: $ff
    rst $38                                       ; $52eb: $ff
    rst $38                                       ; $52ec: $ff
    rst $38                                       ; $52ed: $ff
    rst $38                                       ; $52ee: $ff
    rst $38                                       ; $52ef: $ff
    rst $38                                       ; $52f0: $ff
    rst $38                                       ; $52f1: $ff
    rst $38                                       ; $52f2: $ff
    nop                                           ; $52f3: $00
    rst $38                                       ; $52f4: $ff
    rst $38                                       ; $52f5: $ff
    rst $38                                       ; $52f6: $ff
    rst $38                                       ; $52f7: $ff
    rst $38                                       ; $52f8: $ff
    rst $38                                       ; $52f9: $ff
    rst $38                                       ; $52fa: $ff
    rst $38                                       ; $52fb: $ff
    rst $38                                       ; $52fc: $ff
    rst $38                                       ; $52fd: $ff
    rst $38                                       ; $52fe: $ff
    rst $38                                       ; $52ff: $ff
    rst $38                                       ; $5300: $ff
    rst $38                                       ; $5301: $ff
    rst $38                                       ; $5302: $ff
    rst $38                                       ; $5303: $ff
    nop                                           ; $5304: $00
    rst $38                                       ; $5305: $ff
    rst $38                                       ; $5306: $ff
    rst $38                                       ; $5307: $ff
    rst $38                                       ; $5308: $ff
    rst $38                                       ; $5309: $ff
    rst $38                                       ; $530a: $ff
    rst $38                                       ; $530b: $ff
    rst $38                                       ; $530c: $ff
    rst $38                                       ; $530d: $ff
    rst $38                                       ; $530e: $ff
    rst $38                                       ; $530f: $ff
    rst $38                                       ; $5310: $ff
    rst $38                                       ; $5311: $ff
    rst $38                                       ; $5312: $ff
    rst $38                                       ; $5313: $ff
    rst $38                                       ; $5314: $ff
    nop                                           ; $5315: $00
    rst $38                                       ; $5316: $ff
    rst $38                                       ; $5317: $ff
    rst $38                                       ; $5318: $ff
    rst $38                                       ; $5319: $ff
    rst $38                                       ; $531a: $ff
    rst $38                                       ; $531b: $ff
    rst $38                                       ; $531c: $ff
    rst $38                                       ; $531d: $ff
    rst $38                                       ; $531e: $ff
    rst $38                                       ; $531f: $ff
    rst $38                                       ; $5320: $ff
    rst $38                                       ; $5321: $ff
    rst $38                                       ; $5322: $ff
    rst $38                                       ; $5323: $ff
    rst $38                                       ; $5324: $ff
    rst $38                                       ; $5325: $ff
    nop                                           ; $5326: $00
    rst $38                                       ; $5327: $ff
    rst $38                                       ; $5328: $ff
    rst $38                                       ; $5329: $ff
    di                                            ; $532a: $f3
    nop                                           ; $532b: $00
    nop                                           ; $532c: $00
    nop                                           ; $532d: $00
    and l                                         ; $532e: $a5
    nop                                           ; $532f: $00
    rst $38                                       ; $5330: $ff
    push hl                                       ; $5331: $e5
    ld [hl-], a                                   ; $5332: $32
    or $e6                                        ; $5333: $f6 $e6
    rst $30                                       ; $5335: $f7
    rst $20                                       ; $5336: $e7
    dec [hl]                                      ; $5337: $35
    db $ec                                        ; $5338: $ec
    xor $37                                       ; $5339: $ee $37
    db $ec                                        ; $533b: $ec
    jp c, $c7f0                                   ; $533c: $da $f0 $c7

    add sp, $33                                   ; $533f: $e8 $33
    ld sp, $f2e0                                  ; $5341: $31 $e0 $f2
    ld [hl], $30                                  ; $5344: $36 $30
    scf                                           ; $5346: $37
    cp a                                          ; $5347: $bf
    ld h, $20                                     ; $5348: $26 $20
    daa                                           ; $534a: $27
    db $10                                        ; $534b: $10
    ld d, $17                                     ; $534c: $16 $17
    jp nz, Jump_000_34f6                          ; $534e: $c2 $f6 $34

    rst $38                                       ; $5351: $ff
    ld [hl], $32                                  ; $5352: $36 $32
    jr nc, jr_05a_538d                            ; $5354: $30 $37

    ld sp, $3133                                  ; $5356: $31 $33 $31
    inc sp                                        ; $5359: $33
    nop                                           ; $535a: $00
    and b                                         ; $535b: $a0
    ei                                            ; $535c: $fb
    rst $38                                       ; $535d: $ff
    rst $28                                       ; $535e: $ef
    nop                                           ; $535f: $00
    nop                                           ; $5360: $00
    nop                                           ; $5361: $00
    ld l, d                                       ; $5362: $6a
    ld d, e                                       ; $5363: $53
    sbc d                                         ; $5364: $9a
    ld d, e                                       ; $5365: $53
    pop hl                                        ; $5366: $e1
    ld d, l                                       ; $5367: $55
    jp $ec57                                      ; $5368: $c3 $57 $ec


    dec hl                                        ; $536b: $2b
    ld [hl+], a                                   ; $536c: $22
    dec sp                                        ; $536d: $3b
    ld b, b                                       ; $536e: $40
    ld [hl+], a                                   ; $536f: $22
    nop                                           ; $5370: $00
    add hl, bc                                    ; $5371: $09
    and l                                         ; $5372: $a5
    ld b, e                                       ; $5373: $43
    xor $37                                       ; $5374: $ee $37
    ld [hl+], a                                   ; $5376: $22
    dec sp                                        ; $5377: $3b
    ld b, b                                       ; $5378: $40
    ld [hl+], a                                   ; $5379: $22
    ccf                                           ; $537a: $3f
    ld a, a                                       ; $537b: $7f
    rla                                           ; $537c: $17
    ld e, [hl]                                    ; $537d: $5e
    ld de, $2249                                  ; $537e: $11 $49 $22
    dec sp                                        ; $5381: $3b
    ld [$0825], sp                                ; $5382: $08 $25 $08
    dec h                                         ; $5385: $25
    ld [$0825], sp                                ; $5386: $08 $25 $08
    dec h                                         ; $5389: $25
    ld [$0825], sp                                ; $538a: $08 $25 $08

jr_05a_538d:
    dec h                                         ; $538d: $25
    ld [$0825], sp                                ; $538e: $08 $25 $08
    dec h                                         ; $5391: $25
    ld [$0825], sp                                ; $5392: $08 $25 $08
    dec h                                         ; $5395: $25
    ld [$0825], sp                                ; $5396: $08 $25 $08
    dec h                                         ; $5399: $25
    or l                                          ; $539a: $b5
    inc c                                         ; $539b: $0c
    rst $38                                       ; $539c: $ff
    db $e4                                        ; $539d: $e4
    dec bc                                        ; $539e: $0b
    rst $38                                       ; $539f: $ff
    ld [c], a                                     ; $53a0: $e2
    dec hl                                        ; $53a1: $2b
    dec hl                                        ; $53a2: $2b
    ld hl, sp-$1f                                 ; $53a3: $f8 $e1
    inc c                                         ; $53a5: $0c
    ld sp, $ea4c                                  ; $53a6: $31 $4c $ea
    ldh [$fc], a                                  ; $53a9: $e0 $fc
    pop hl                                        ; $53ab: $e1
    db $fd                                        ; $53ac: $fd
    and $4c                                       ; $53ad: $e6 $4c
    ld c, h                                       ; $53af: $4c
    ldh a, [$eb]                                  ; $53b0: $f0 $eb
    and $e9                                       ; $53b2: $e6 $e9
    ld a, d                                       ; $53b4: $7a
    db $e4                                        ; $53b5: $e4
    ldh [$0c], a                                  ; $53b6: $e0 $0c
    ret z                                         ; $53b8: $c8

    pop hl                                        ; $53b9: $e1
    ld l, e                                       ; $53ba: $6b
    dec bc                                        ; $53bb: $0b
    dec bc                                        ; $53bc: $0b
    ld c, e                                       ; $53bd: $4b
    cp [hl]                                       ; $53be: $be
    db $e3                                        ; $53bf: $e3
    nop                                           ; $53c0: $00
    ld [$b8e5], a                                 ; $53c1: $ea $e5 $b8
    pop hl                                        ; $53c4: $e1
    cp c                                          ; $53c5: $b9
    ld [c], a                                     ; $53c6: $e2
    ld hl, sp-$1f                                 ; $53c7: $f8 $e1
    db $f4                                        ; $53c9: $f4
    push hl                                       ; $53ca: $e5
    cp c                                          ; $53cb: $b9
    db $ec                                        ; $53cc: $ec
    adc b                                         ; $53cd: $88
    db $e3                                        ; $53ce: $e3
    add d                                         ; $53cf: $82
    ldh [rTIMA], a                                ; $53d0: $e0 $05
    ld l, e                                       ; $53d2: $6b
    ret nz                                        ; $53d3: $c0

    pop hl                                        ; $53d4: $e1
    ld c, e                                       ; $53d5: $4b
    cp [hl]                                       ; $53d6: $be
    ldh [$c0], a                                  ; $53d7: $e0 $c0
    pop hl                                        ; $53d9: $e1
    adc [hl]                                      ; $53da: $8e
    db $e3                                        ; $53db: $e3
    db $fd                                        ; $53dc: $fd
    db $e4                                        ; $53dd: $e4
    or l                                          ; $53de: $b5
    db $e3                                        ; $53df: $e3
    rlca                                          ; $53e0: $07
    ld c, h                                       ; $53e1: $4c
    inc c                                         ; $53e2: $0c
    inc l                                         ; $53e3: $2c
    ret nz                                        ; $53e4: $c0

    ld hl, sp-$3e                                 ; $53e5: $f8 $c2
    pop hl                                        ; $53e7: $e1
    dec a                                         ; $53e8: $3d
    pop hl                                        ; $53e9: $e1
    ret nz                                        ; $53ea: $c0

    xor $47                                       ; $53eb: $ee $47
    db $e3                                        ; $53ed: $e3
    ld e, d                                       ; $53ee: $5a
    ld b, b                                       ; $53ef: $40
    pop hl                                        ; $53f0: $e1
    inc l                                         ; $53f1: $2c
    ret nz                                        ; $53f2: $c0

    di                                            ; $53f3: $f3
    ld l, e                                       ; $53f4: $6b
    ld l, e                                       ; $53f5: $6b
    adc d                                         ; $53f6: $8a
    ldh [rWX], a                                  ; $53f7: $e0 $4b
    pop bc                                        ; $53f9: $c1
    db $e4                                        ; $53fa: $e4
    adc a                                         ; $53fb: $8f
    dec bc                                        ; $53fc: $0b
    dec hl                                        ; $53fd: $2b
    dec bc                                        ; $53fe: $0b
    ld l, h                                       ; $53ff: $6c
    inc b                                         ; $5400: $04
    push hl                                       ; $5401: $e5
    ld a, [hl]                                    ; $5402: $7e
    db $e3                                        ; $5403: $e3
    ld b, a                                       ; $5404: $47
    push hl                                       ; $5405: $e5
    ld c, h                                       ; $5406: $4c
    inc b                                         ; $5407: $04
    ret nz                                        ; $5408: $c0

    db $e4                                        ; $5409: $e4
    push hl                                       ; $540a: $e5
    ret nz                                        ; $540b: $c0

    inc l                                         ; $540c: $2c
    call z, $f9c3                                 ; $540d: $cc $c3 $f9
    db $e3                                        ; $5410: $e3
    add a                                         ; $5411: $87
    push hl                                       ; $5412: $e5
    ret nz                                        ; $5413: $c0

    and $cf                                       ; $5414: $e6 $cf
    call nz, $8200                                ; $5416: $c4 $00 $82
    push hl                                       ; $5419: $e5
    ld b, b                                       ; $541a: $40
    add sp, -$3c                                  ; $541b: $e8 $c4
    ld [c], a                                     ; $541d: $e2
    cp c                                          ; $541e: $b9
    call $ecc0                                    ; $541f: $cd $c0 $ec
    add c                                         ; $5422: $81
    ld [c], a                                     ; $5423: $e2
    call Call_05a_7bc4                            ; $5424: $cd $c4 $7b
    ret                                           ; $5427: $c9


    nop                                           ; $5428: $00
    ld a, a                                       ; $5429: $7f
    call nz, $ef3c                                ; $542a: $c4 $3c $ef
    adc c                                         ; $542d: $89
    pop bc                                        ; $542e: $c1
    cp [hl]                                       ; $542f: $be
    push bc                                       ; $5430: $c5
    call nz, Call_05a_49c5                        ; $5431: $c4 $c5 $49
    rst $00                                       ; $5434: $c7
    inc [hl]                                      ; $5435: $34
    and $7f                                       ; $5436: $e6 $7f
    jp $c080                                      ; $5438: $c3 $80 $c0


    ld a, [c]                                     ; $543b: $f2
    ccf                                           ; $543c: $3f
    jp hl                                         ; $543d: $e9


    add e                                         ; $543e: $83
    rst $20                                       ; $543f: $e7
    ret nz                                        ; $5440: $c0

    ret z                                         ; $5441: $c8

    ccf                                           ; $5442: $3f
    rst $20                                       ; $5443: $e7
    jp hl                                         ; $5444: $e9


    xor l                                         ; $5445: $ad
    jp $2ba0                                      ; $5446: $c3 $a0 $2b


    ld bc, $856b                                  ; $5449: $01 $6b $85
    call nz, $c001                                ; $544c: $c4 $01 $c0
    adc b                                         ; $544f: $88
    add sp, -$42                                  ; $5450: $e8 $be
    push hl                                       ; $5452: $e5
    ret z                                         ; $5453: $c8

    and c                                         ; $5454: $a1
    dec [hl]                                      ; $5455: $35
    call nz, $f1c2                                ; $5456: $c4 $c2 $f1
    inc bc                                        ; $5459: $03
    inc c                                         ; $545a: $0c
    inc c                                         ; $545b: $0c
    add l                                         ; $545c: $85
    ret nz                                        ; $545d: $c0

    cp l                                          ; $545e: $bd
    add $47                                       ; $545f: $c6 $47
    db $ec                                        ; $5461: $ec
    rst $38                                       ; $5462: $ff
    push hl                                       ; $5463: $e5
    ld [hl], l                                    ; $5464: $75
    add $6b                                       ; $5465: $c6 $6b
    and e                                         ; $5467: $a3
    nop                                           ; $5468: $00
    add c                                         ; $5469: $81
    jp nz, $c47c                                  ; $546a: $c2 $7c $c4

    ld c, b                                       ; $546d: $48
    and b                                         ; $546e: $a0
    cp a                                          ; $546f: $bf
    ld [c], a                                     ; $5470: $e2
    ld [bc], a                                    ; $5471: $02
    jp $ac67                                      ; $5472: $c3 $67 $ac


    add hl, sp                                    ; $5475: $39
    xor c                                         ; $5476: $a9
    ld a, [c]                                     ; $5477: $f2
    db $eb                                        ; $5478: $eb
    ld [bc], a                                    ; $5479: $02
    add b                                         ; $547a: $80
    xor d                                         ; $547b: $aa
    ld c, e                                       ; $547c: $4b
    dec bc                                        ; $547d: $0b
    and d                                         ; $547e: $a2
    rlca                                          ; $547f: $07
    and c                                         ; $5480: $a1
    ld c, d                                       ; $5481: $4a
    and h                                         ; $5482: $a4
    db $fd                                        ; $5483: $fd
    ret z                                         ; $5484: $c8

    or $85                                        ; $5485: $f6 $85
    ret nz                                        ; $5487: $c0

    push bc                                       ; $5488: $c5
    ld b, $40                                     ; $5489: $06 $40
    or d                                          ; $548b: $b2
    ld l, e                                       ; $548c: $6b
    dec hl                                        ; $548d: $2b
    pop bc                                        ; $548e: $c1
    and d                                         ; $548f: $a2
    ld b, l                                       ; $5490: $45
    and c                                         ; $5491: $a1
    db $f4                                        ; $5492: $f4
    add e                                         ; $5493: $83
    sub e                                         ; $5494: $93
    call nz, $e644                                ; $5495: $c4 $44 $e6
    inc b                                         ; $5498: $04
    cp a                                          ; $5499: $bf
    adc e                                         ; $549a: $8b
    jr c, @-$3b                                   ; $549b: $38 $c3

    inc l                                         ; $549d: $2c
    cp d                                          ; $549e: $ba
    and h                                         ; $549f: $a4
    jp nz, Jump_000_03a8                          ; $54a0: $c2 $a8 $03

    and e                                         ; $54a3: $a3
    rst $30                                       ; $54a4: $f7
    add b                                         ; $54a5: $80
    inc a                                         ; $54a6: $3c
    rst $38                                       ; $54a7: $ff
    ld [bc], a                                    ; $54a8: $02
    ret nz                                        ; $54a9: $c0

    ld a, [c]                                     ; $54aa: $f2
    ld a, [bc]                                    ; $54ab: $0a
    cp [hl]                                       ; $54ac: $be
    pop hl                                        ; $54ad: $e1
    ld sp, $40a1                                  ; $54ae: $31 $a1 $40
    sub a                                         ; $54b1: $97
    ld a, $a5                                     ; $54b2: $3e $a5
    add c                                         ; $54b4: $81
    and $9e                                       ; $54b5: $e6 $9e
    add [hl]                                      ; $54b7: $86
    nop                                           ; $54b8: $00
    ld hl, sp-$19                                 ; $54b9: $f8 $e7
    ld c, e                                       ; $54bb: $4b
    xor c                                         ; $54bc: $a9
    ld b, b                                       ; $54bd: $40
    adc l                                         ; $54be: $8d
    ret nz                                        ; $54bf: $c0

    ldh a, [$95]                                  ; $54c0: $f0 $95
    rst $30                                       ; $54c2: $f7
    ld b, b                                       ; $54c3: $40
    sub b                                         ; $54c4: $90
    ld a, [$9570]                                 ; $54c5: $fa $70 $95
    rst $30                                       ; $54c8: $f7
    nop                                           ; $54c9: $00
    ld b, b                                       ; $54ca: $40
    sub b                                         ; $54cb: $90
    ld a, [$c185]                                 ; $54cc: $fa $85 $c1
    pop bc                                        ; $54cf: $c1
    db $fd                                        ; $54d0: $fd
    and [hl]                                      ; $54d1: $a6
    push de                                       ; $54d2: $d5
    ld [hl], h                                    ; $54d3: $74
    ld b, b                                       ; $54d4: $40
    sub d                                         ; $54d5: $92
    ld a, [$c084]                                 ; $54d6: $fa $84 $c0
    ld a, [c]                                     ; $54d9: $f2
    nop                                           ; $54da: $00
    sub l                                         ; $54db: $95
    db $ec                                        ; $54dc: $ec
    ld b, b                                       ; $54dd: $40
    sub d                                         ; $54de: $92
    rst $18                                       ; $54df: $df
    and l                                         ; $54e0: $a5
    ld b, b                                       ; $54e1: $40
    add $d5                                       ; $54e2: $c6 $d5
    ld a, b                                       ; $54e4: $78
    ld b, b                                       ; $54e5: $40
    sub b                                         ; $54e6: $90
    add hl, hl                                    ; $54e7: $29

jr_05a_54e8:
    add [hl]                                      ; $54e8: $86
    ld a, a                                       ; $54e9: $7f
    rst $00                                       ; $54ea: $c7
    nop                                           ; $54eb: $00
    push de                                       ; $54ec: $d5
    halt                                          ; $54ed: $76
    ld b, b                                       ; $54ee: $40
    sub c                                         ; $54ef: $91
    ld a, e                                       ; $54f0: $7b
    add e                                         ; $54f1: $83
    rst $30                                       ; $54f2: $f7
    ld c, h                                       ; $54f3: $4c
    push de                                       ; $54f4: $d5
    ld [hl], e                                    ; $54f5: $73
    ld b, b                                       ; $54f6: $40
    sub d                                         ; $54f7: $92
    cp d                                          ; $54f8: $ba
    ld h, h                                       ; $54f9: $64
    add b                                         ; $54fa: $80
    ld [$d500], a                                 ; $54fb: $ea $00 $d5
    ld [hl], h                                    ; $54fe: $74
    ld b, b                                       ; $54ff: $40
    sub d                                         ; $5500: $92
    cp d                                          ; $5501: $ba
    ld h, h                                       ; $5502: $64
    ld b, b                                       ; $5503: $40
    add sp, -$2b                                  ; $5504: $e8 $d5
    ld [hl], a                                    ; $5506: $77
    ld b, b                                       ; $5507: $40
    sub e                                         ; $5508: $93
    ld sp, hl                                     ; $5509: $f9
    ld l, l                                       ; $550a: $6d
    push de                                       ; $550b: $d5
    ld [hl], a                                    ; $550c: $77
    nop                                           ; $550d: $00
    ld b, b                                       ; $550e: $40
    sub c                                         ; $550f: $91
    halt                                          ; $5510: $76
    jr nc, jr_05a_54e8                            ; $5511: $30 $d5

    ld [hl], l                                    ; $5513: $75
    ld b, b                                       ; $5514: $40
    sub e                                         ; $5515: $93
    scf                                           ; $5516: $37
    sub d                                         ; $5517: $92
    sub l                                         ; $5518: $95
    or $40                                        ; $5519: $f6 $40
    adc [hl]                                      ; $551b: $8e
    rst $30                                       ; $551c: $f7
    ld c, b                                       ; $551d: $48
    nop                                           ; $551e: $00
    sbc d                                         ; $551f: $9a
    ld c, d                                       ; $5520: $4a
    push de                                       ; $5521: $d5
    ld [hl], d                                    ; $5522: $72
    adc $85                                       ; $5523: $ce $85
    or a                                          ; $5525: $b7
    jp nc, $09a5                                  ; $5526: $d2 $a5 $09

    sub l                                         ; $5529: $95
    di                                            ; $552a: $f3
    jp z, $2246                                   ; $552b: $ca $46 $22

    di                                            ; $552e: $f3
    nop                                           ; $552f: $00
    ld h, e                                       ; $5530: $63
    dec bc                                        ; $5531: $0b
    push de                                       ; $5532: $d5
    jr @-$07                                      ; $5533: $18 $f7

    ld d, d                                       ; $5535: $52
    ld bc, $00c9                                  ; $5536: $01 $c9 $00
    or [hl]                                       ; $5539: $b6
    rst $30                                       ; $553a: $f7
    ld e, b                                       ; $553b: $58
    nop                                           ; $553c: $00
    adc d                                         ; $553d: $8a
    push de                                       ; $553e: $d5
    ld [de], a                                    ; $553f: $12
    nop                                           ; $5540: $00
    adc d                                         ; $5541: $8a
    xor c                                         ; $5542: $a9
    rst $30                                       ; $5543: $f7
    ld c, a                                       ; $5544: $4f
    add c                                         ; $5545: $81
    jp hl                                         ; $5546: $e9


    nop                                           ; $5547: $00
    cp c                                          ; $5548: $b9
    push hl                                       ; $5549: $e5
    sub h                                         ; $554a: $94
    ld b, d                                       ; $554b: $42
    xor d                                         ; $554c: $aa
    push de                                       ; $554d: $d5
    inc de                                        ; $554e: $13
    push hl                                       ; $554f: $e5
    db $fd                                        ; $5550: $fd
    nop                                           ; $5551: $00
    dec sp                                        ; $5552: $3b
    rst $08                                       ; $5553: $cf
    nop                                           ; $5554: $00
    xor h                                         ; $5555: $ac
    cp d                                          ; $5556: $ba
    add hl, de                                    ; $5557: $19
    ld b, d                                       ; $5558: $42
    adc c                                         ; $5559: $89
    push de                                       ; $555a: $d5
    add hl, de                                    ; $555b: $19
    push hl                                       ; $555c: $e5
    sub e                                         ; $555d: $93
    ret nz                                        ; $555e: $c0

    db $eb                                        ; $555f: $eb
    sbc $b6                                       ; $5560: $de $b6
    nop                                           ; $5562: $00
    jp Jump_000_00bf                              ; $5563: $c3 $bf $00


    cp e                                          ; $5566: $bb
    jp Jump_000_00bf                              ; $5567: $c3 $bf $00


    cp d                                          ; $556a: $ba
    sbc $22                                       ; $556b: $de $22
    ld a, d                                       ; $556d: $7a
    sub h                                         ; $556e: $94
    nop                                           ; $556f: $00
    cp a                                          ; $5570: $bf
    cp d                                          ; $5571: $ba
    rra                                           ; $5572: $1f
    nop                                           ; $5573: $00
    nop                                           ; $5574: $00
    cp h                                          ; $5575: $bc
    ld h, b                                       ; $5576: $60
    ld b, b                                       ; $5577: $40
    cp d                                          ; $5578: $ba
    add hl, de                                    ; $5579: $19
    rst $38                                       ; $557a: $ff
    rst $38                                       ; $557b: $ff
    ld b, b                                       ; $557c: $40
    and $29                                       ; $557d: $e6 $29
    inc h                                         ; $557f: $24
    ld e, l                                       ; $5580: $5d
    and [hl]                                      ; $5581: $a6
    rst $38                                       ; $5582: $ff
    rst $38                                       ; $5583: $ff
    nop                                           ; $5584: $00
    dec h                                         ; $5585: $25
    adc e                                         ; $5586: $8b
    ld h, $45                                     ; $5587: $26 $45
    inc bc                                        ; $5589: $03
    sub d                                         ; $558a: $92
    jp nz, Jump_05a_64fa                          ; $558b: $c2 $fa $64

    ld h, h                                       ; $558e: $64
    ret nz                                        ; $558f: $c0

    add sp, -$01                                  ; $5590: $e8 $ff
    rst $38                                       ; $5592: $ff
    inc sp                                        ; $5593: $33
    db $f4                                        ; $5594: $f4
    nop                                           ; $5595: $00
    ld c, a                                       ; $5596: $4f
    ld c, [hl]                                    ; $5597: $4e
    rst $38                                       ; $5598: $ff
    rst $38                                       ; $5599: $ff
    rst $38                                       ; $559a: $ff
    rst $38                                       ; $559b: $ff
    sub [hl]                                      ; $559c: $96
    rst $38                                       ; $559d: $ff
    rst $38                                       ; $559e: $ff
    rst $38                                       ; $559f: $ff
    db $d3                                        ; $55a0: $d3
    rst $38                                       ; $55a1: $ff
    rst $38                                       ; $55a2: $ff
    rst $38                                       ; $55a3: $ff
    rst $38                                       ; $55a4: $ff
    rst $38                                       ; $55a5: $ff
    nop                                           ; $55a6: $00
    rst $38                                       ; $55a7: $ff
    rst $38                                       ; $55a8: $ff
    scf                                           ; $55a9: $37
    ldh a, [$dc]                                  ; $55aa: $f0 $dc
    rst $38                                       ; $55ac: $ff
    rst $38                                       ; $55ad: $ff
    rst $38                                       ; $55ae: $ff
    rst $38                                       ; $55af: $ff
    rst $38                                       ; $55b0: $ff
    rst $38                                       ; $55b1: $ff
    rst $38                                       ; $55b2: $ff
    rst $38                                       ; $55b3: $ff
    rst $38                                       ; $55b4: $ff
    rst $38                                       ; $55b5: $ff
    rst $38                                       ; $55b6: $ff
    nop                                           ; $55b7: $00
    rst $38                                       ; $55b8: $ff
    rst $38                                       ; $55b9: $ff
    rst $38                                       ; $55ba: $ff
    rst $38                                       ; $55bb: $ff
    rst $38                                       ; $55bc: $ff
    rst $38                                       ; $55bd: $ff
    rst $38                                       ; $55be: $ff
    rst $38                                       ; $55bf: $ff
    rst $38                                       ; $55c0: $ff
    rst $38                                       ; $55c1: $ff
    rst $38                                       ; $55c2: $ff
    rst $38                                       ; $55c3: $ff
    rst $38                                       ; $55c4: $ff
    rst $38                                       ; $55c5: $ff
    rst $38                                       ; $55c6: $ff
    rst $38                                       ; $55c7: $ff
    nop                                           ; $55c8: $00
    rst $38                                       ; $55c9: $ff
    rst $38                                       ; $55ca: $ff
    rst $38                                       ; $55cb: $ff
    rst $38                                       ; $55cc: $ff
    rst $38                                       ; $55cd: $ff
    rst $38                                       ; $55ce: $ff
    rst $38                                       ; $55cf: $ff
    rst $38                                       ; $55d0: $ff
    nop                                           ; $55d1: $00
    cp a                                          ; $55d2: $bf
    rst $38                                       ; $55d3: $ff
    rst $38                                       ; $55d4: $ff
    rst $38                                       ; $55d5: $ff
    rst $38                                       ; $55d6: $ff
    rst $38                                       ; $55d7: $ff
    rst $38                                       ; $55d8: $ff
    nop                                           ; $55d9: $00
    rst $38                                       ; $55da: $ff
    rst $38                                       ; $55db: $ff
    ld e, c                                       ; $55dc: $59
    ld [hl], e                                    ; $55dd: $73
    nop                                           ; $55de: $00
    nop                                           ; $55df: $00
    nop                                           ; $55e0: $00
    db $dd                                        ; $55e1: $dd
    jr nz, @+$01                                  ; $55e2: $20 $ff

    ld [c], a                                     ; $55e4: $e2
    ld a, [bc]                                    ; $55e5: $0a
    dec bc                                        ; $55e6: $0b
    ld sp, $e2ff                                  ; $55e7: $31 $ff $e2
    ld e, l                                       ; $55ea: $5d
    ld e, h                                       ; $55eb: $5c
    dec h                                         ; $55ec: $25
    ld e, e                                       ; $55ed: $5b
    rst $38                                       ; $55ee: $ff
    ldh [rP1], a                                  ; $55ef: $e0 $00
    rst $38                                       ; $55f1: $ff
    rst $38                                       ; $55f2: $ff
    rst $20                                       ; $55f3: $e7
    and $05                                       ; $55f4: $e6 $05
    rst $38                                       ; $55f6: $ff
    ldh [$c2], a                                  ; $55f7: $e0 $c2
    db $e3                                        ; $55f9: $e3
    rrca                                          ; $55fa: $0f
    ld b, a                                       ; $55fb: $47
    ld d, [hl]                                    ; $55fc: $56
    ld d, a                                       ; $55fd: $57
    ld b, a                                       ; $55fe: $47
    cp [hl]                                       ; $55ff: $be
    db $e3                                        ; $5600: $e3
    jp z, $e8ff                                   ; $5601: $ca $ff $e8

    rst $20                                       ; $5604: $e7
    adc b                                         ; $5605: $88
    db $e3                                        ; $5606: $e3

jr_05a_5607:
    cp $82                                        ; $5607: $fe $82
    ldh [$3c], a                                  ; $5609: $e0 $3c
    ld [hl], $6d                                  ; $560b: $36 $6d
    jr nc, @+$38                                  ; $560d: $30 $36

    ld b, [hl]                                    ; $560f: $46
    ld c, l                                       ; $5610: $4d
    rst $08                                       ; $5611: $cf
    ld sp, $6231                                  ; $5612: $31 $31 $62
    ld h, d                                       ; $5615: $62
    jp z, $c0ff                                   ; $5616: $ca $ff $c0

    xor $47                                       ; $5619: $ee $47
    ld b, [hl]                                    ; $561b: $46
    ld a, a                                       ; $561c: $7f
    ld b, d                                       ; $561d: $42
    ld l, l                                       ; $561e: $6d
    ld l, l                                       ; $561f: $6d
    jr nc, jr_05a_5652                            ; $5620: $30 $30

    jr nc, jr_05a_565d                            ; $5622: $30 $39

    jr c, jr_05a_5607                             ; $5624: $38 $e1

    db $fc                                        ; $5626: $fc
    jp z, $80ff                                   ; $5627: $ca $ff $80

    add sp, $47                                   ; $562a: $e8 $47
    ld b, [hl]                                    ; $562c: $46
    ld d, h                                       ; $562d: $54
    ld d, l                                       ; $562e: $55
    ld d, h                                       ; $562f: $54
    ld d, h                                       ; $5630: $54
    rst $30                                       ; $5631: $f7

jr_05a_5632:
    ld [hl], $69                                  ; $5632: $36 $69
    ld l, l                                       ; $5634: $6d
    rst $38                                       ; $5635: $ff
    ldh [$30], a                                  ; $5636: $e0 $30
    jr nc, @+$54                                  ; $5638: $30 $52

    ld sp, $15e7                                  ; $563a: $31 $e7 $15
    inc d                                         ; $563d: $14
    inc d                                         ; $563e: $14
    jp z, $e8ff                                   ; $563f: $ca $ff $e8

    rst $20                                       ; $5642: $e7
    scf                                           ; $5643: $37
    ld [hl], $6a                                  ; $5644: $36 $6a
    or $ff                                        ; $5646: $f6 $ff
    ldh [$30], a                                  ; $5648: $e0 $30
    jr nc, @-$3e                                  ; $564a: $30 $c0

    db $e4                                        ; $564c: $e4
    ld d, e                                       ; $564d: $53
    ld sp, $2417                                  ; $564e: $31 $17 $24
    ld c, c                                       ; $5651: $49

jr_05a_5652:
    inc h                                         ; $5652: $24
    jp z, $e8ff                                   ; $5653: $ca $ff $e8

    rst $20                                       ; $5656: $e7
    add hl, sp                                    ; $5657: $39
    call nz, $bfe0                                ; $5658: $c4 $e0 $bf
    pop hl                                        ; $565b: $e1
    ld l, d                                       ; $565c: $6a

jr_05a_565d:
    add b                                         ; $565d: $80
    pop hl                                        ; $565e: $e1
    ld a, a                                       ; $565f: $7f
    ld l, l                                       ; $5660: $6d
    ld [hl], $3c                                  ; $5661: $36 $3c
    dec d                                         ; $5663: $15
    ld d, $20                                     ; $5664: $16 $20
    jr nz, jr_05a_5632                            ; $5666: $20 $ca

    rst $38                                       ; $5668: $ff
    ld a, [c]                                     ; $5669: $f2
    add sp, -$19                                  ; $566a: $e8 $e7
    ld d, e                                       ; $566c: $53
    add h                                         ; $566d: $84
    ldh [$bf], a                                  ; $566e: $e0 $bf
    db $e3                                        ; $5670: $e3
    ld l, b                                       ; $5671: $68
    ld b, d                                       ; $5672: $42
    ld d, l                                       ; $5673: $55
    ld b, [hl]                                    ; $5674: $46
    rst $08                                       ; $5675: $cf
    ld b, a                                       ; $5676: $47
    ld sp, $2817                                  ; $5677: $31 $17 $28
    ret nz                                        ; $567a: $c0

    rst $38                                       ; $567b: $ff
    ld [$52e9], a                                 ; $567c: $ea $e9 $52
    ld h, a                                       ; $567f: $67
    inc e                                         ; $5680: $1c
    cp a                                          ; $5681: $bf
    push hl                                       ; $5682: $e5
    call nz, $11c1                                ; $5683: $c4 $c1 $11
    ld [de], a                                    ; $5686: $12
    ld [hl+], a                                   ; $5687: $22
    rst $28                                       ; $5688: $ef
    and b                                         ; $5689: $a0
    jp z, $e8ff                                   ; $568a: $ca $ff $e8

    rst $20                                       ; $568d: $e7
    di                                            ; $568e: $f3
    add e                                         ; $568f: $83
    ld h, a                                       ; $5690: $67
    ld [bc], a                                    ; $5691: $02
    pop hl                                        ; $5692: $e1
    dec a                                         ; $5693: $3d
    ldh [$30], a                                  ; $5694: $e0 $30
    ld [hl-], a                                   ; $5696: $32
    ld c, l                                       ; $5697: $4d
    ld de, $1263                                  ; $5698: $11 $63 $12
    ld hl, $e1c1                                  ; $569b: $21 $c1 $e1
    ret nz                                        ; $569e: $c0

    rst $38                                       ; $569f: $ff
    jp hl                                         ; $56a0: $e9


    add sp, $79                                   ; $56a1: $e8 $79
    ld [hl], c                                    ; $56a3: $71
    cp a                                          ; $56a4: $bf
    ld [c], a                                     ; $56a5: $e2
    ld e, $c1                                     ; $56a6: $1e $c1
    pop hl                                        ; $56a8: $e1
    ld sp, $222b                                  ; $56a9: $31 $2b $22
    db $10                                        ; $56ac: $10
    ld [hl], c                                    ; $56ad: $71
    and d                                         ; $56ae: $a2
    jp z, $e8ff                                   ; $56af: $ca $ff $e8

    rst $20                                       ; $56b2: $e7
    ld [hl], c                                    ; $56b3: $71
    add b                                         ; $56b4: $80
    cp a                                          ; $56b5: $bf
    ldh [$7d], a                                  ; $56b6: $e0 $7d
    pop hl                                        ; $56b8: $e1
    pop bc                                        ; $56b9: $c1
    ldh [$31], a                                  ; $56ba: $e0 $31
    dec hl                                        ; $56bc: $2b
    inc l                                         ; $56bd: $2c
    ld [hl-], a                                   ; $56be: $32
    and e                                         ; $56bf: $a3
    db $fc                                        ; $56c0: $fc
    jp z, $c0ff                                   ; $56c1: $ca $ff $c0

    add sp, -$80                                  ; $56c4: $e8 $80
    ld a, c                                       ; $56c6: $79
    ld l, [hl]                                    ; $56c7: $6e
    ld [hl], $30                                  ; $56c8: $36 $30
    ld b, h                                       ; $56ca: $44
    inc sp                                        ; $56cb: $33
    ld l, [hl]                                    ; $56cc: $6e
    xor a                                         ; $56cd: $af
    rst $38                                       ; $56ce: $ff
    add b                                         ; $56cf: $80
    ld b, b                                       ; $56d0: $40
    db $e3                                        ; $56d1: $e3
    ld a, [bc]                                    ; $56d2: $0a
    dec bc                                        ; $56d3: $0b
    jp z, $c0ff                                   ; $56d4: $ca $ff $c0

    jp hl                                         ; $56d7: $e9


    rst $38                                       ; $56d8: $ff
    add b                                         ; $56d9: $80
    add b                                         ; $56da: $80
    ld l, a                                       ; $56db: $6f
    ld a, h                                       ; $56dc: $7c
    ld a, c                                       ; $56dd: $79
    add b                                         ; $56de: $80
    and c                                         ; $56df: $a1
    ld sp, $62c1                                  ; $56e0: $31 $c1 $62
    cp [hl]                                       ; $56e3: $be
    ld [c], a                                     ; $56e4: $e2
    or [hl]                                       ; $56e5: $b6
    add c                                         ; $56e6: $81
    jp z, $c0ff                                   ; $56e7: $ca $ff $c0

    db $eb                                        ; $56ea: $eb
    cp h                                          ; $56eb: $bc
    pop hl                                        ; $56ec: $e1
    and c                                         ; $56ed: $a1
    ld h, c                                       ; $56ee: $61
    ld b, a                                       ; $56ef: $47
    ld e, e                                       ; $56f0: $5b
    ld e, h                                       ; $56f1: $5c
    ld e, l                                       ; $56f2: $5d
    ld a, h                                       ; $56f3: $7c
    add h                                         ; $56f4: $84
    jp z, $c0ff                                   ; $56f5: $ca $ff $c0

    ld a, [c]                                     ; $56f8: $f2
    ld e, d                                       ; $56f9: $5a
    cp [hl]                                       ; $56fa: $be
    pop hl                                        ; $56fb: $e1
    nop                                           ; $56fc: $00
    add b                                         ; $56fd: $80
    sbc a                                         ; $56fe: $9f
    rst $38                                       ; $56ff: $ff
    rst $38                                       ; $5700: $ff
    rst $38                                       ; $5701: $ff
    rst $38                                       ; $5702: $ff
    rst $38                                       ; $5703: $ff
    rst $38                                       ; $5704: $ff
    rst $38                                       ; $5705: $ff
    rst $38                                       ; $5706: $ff
    rst $38                                       ; $5707: $ff
    rst $38                                       ; $5708: $ff
    rst $38                                       ; $5709: $ff
    rst $38                                       ; $570a: $ff
    rst $38                                       ; $570b: $ff
    rst $38                                       ; $570c: $ff
    nop                                           ; $570d: $00
    rst $38                                       ; $570e: $ff
    rst $38                                       ; $570f: $ff
    rst $38                                       ; $5710: $ff
    rst $38                                       ; $5711: $ff
    rst $38                                       ; $5712: $ff
    rst $38                                       ; $5713: $ff
    rst $38                                       ; $5714: $ff
    rst $38                                       ; $5715: $ff
    rst $38                                       ; $5716: $ff
    rst $38                                       ; $5717: $ff
    rst $38                                       ; $5718: $ff
    rst $38                                       ; $5719: $ff
    rst $38                                       ; $571a: $ff
    rst $38                                       ; $571b: $ff
    rst $38                                       ; $571c: $ff
    rst $38                                       ; $571d: $ff
    nop                                           ; $571e: $00
    rst $38                                       ; $571f: $ff
    rst $38                                       ; $5720: $ff
    rst $38                                       ; $5721: $ff
    rst $38                                       ; $5722: $ff
    rst $38                                       ; $5723: $ff
    rst $38                                       ; $5724: $ff
    rst $38                                       ; $5725: $ff
    rst $38                                       ; $5726: $ff
    rst $38                                       ; $5727: $ff
    rst $38                                       ; $5728: $ff
    rst $38                                       ; $5729: $ff
    rst $38                                       ; $572a: $ff
    rst $38                                       ; $572b: $ff
    rst $38                                       ; $572c: $ff
    rst $38                                       ; $572d: $ff
    rst $38                                       ; $572e: $ff
    nop                                           ; $572f: $00
    rst $38                                       ; $5730: $ff
    rst $38                                       ; $5731: $ff
    rst $38                                       ; $5732: $ff
    rst $38                                       ; $5733: $ff
    rst $38                                       ; $5734: $ff
    rst $38                                       ; $5735: $ff
    rst $38                                       ; $5736: $ff
    rst $38                                       ; $5737: $ff
    rst $38                                       ; $5738: $ff
    rst $38                                       ; $5739: $ff
    rst $38                                       ; $573a: $ff
    rst $38                                       ; $573b: $ff
    rst $38                                       ; $573c: $ff
    rst $38                                       ; $573d: $ff
    rst $38                                       ; $573e: $ff
    rst $38                                       ; $573f: $ff
    nop                                           ; $5740: $00
    rst $38                                       ; $5741: $ff
    rst $38                                       ; $5742: $ff
    rst $38                                       ; $5743: $ff
    rst $38                                       ; $5744: $ff
    rst $38                                       ; $5745: $ff
    rst $38                                       ; $5746: $ff
    rst $38                                       ; $5747: $ff
    rst $38                                       ; $5748: $ff
    rst $38                                       ; $5749: $ff
    rst $38                                       ; $574a: $ff
    rst $38                                       ; $574b: $ff
    rst $38                                       ; $574c: $ff
    rst $38                                       ; $574d: $ff
    rst $38                                       ; $574e: $ff
    rst $38                                       ; $574f: $ff
    rst $38                                       ; $5750: $ff
    nop                                           ; $5751: $00
    rst $38                                       ; $5752: $ff
    rst $38                                       ; $5753: $ff
    rst $38                                       ; $5754: $ff
    rst $38                                       ; $5755: $ff
    rst $38                                       ; $5756: $ff
    rst $38                                       ; $5757: $ff
    rst $38                                       ; $5758: $ff
    rst $38                                       ; $5759: $ff
    rst $38                                       ; $575a: $ff
    rst $38                                       ; $575b: $ff
    rst $38                                       ; $575c: $ff
    rst $38                                       ; $575d: $ff
    rst $38                                       ; $575e: $ff
    rst $38                                       ; $575f: $ff
    rst $38                                       ; $5760: $ff
    rst $38                                       ; $5761: $ff
    nop                                           ; $5762: $00
    rst $38                                       ; $5763: $ff
    rst $38                                       ; $5764: $ff
    rst $38                                       ; $5765: $ff
    rst $38                                       ; $5766: $ff
    rst $38                                       ; $5767: $ff
    rst $38                                       ; $5768: $ff
    rst $38                                       ; $5769: $ff
    rst $38                                       ; $576a: $ff
    rst $38                                       ; $576b: $ff
    rst $38                                       ; $576c: $ff
    rst $38                                       ; $576d: $ff
    rst $38                                       ; $576e: $ff
    rst $38                                       ; $576f: $ff
    rst $38                                       ; $5770: $ff
    rst $38                                       ; $5771: $ff
    rst $38                                       ; $5772: $ff
    nop                                           ; $5773: $00
    rst $38                                       ; $5774: $ff
    rst $38                                       ; $5775: $ff
    rst $38                                       ; $5776: $ff
    rst $38                                       ; $5777: $ff
    rst $38                                       ; $5778: $ff
    rst $38                                       ; $5779: $ff
    rst $38                                       ; $577a: $ff
    rst $38                                       ; $577b: $ff
    rst $38                                       ; $577c: $ff
    rst $38                                       ; $577d: $ff
    rst $38                                       ; $577e: $ff
    rst $38                                       ; $577f: $ff
    rst $38                                       ; $5780: $ff
    rst $38                                       ; $5781: $ff
    rst $38                                       ; $5782: $ff
    rst $38                                       ; $5783: $ff
    nop                                           ; $5784: $00
    rst $38                                       ; $5785: $ff
    rst $38                                       ; $5786: $ff
    rst $38                                       ; $5787: $ff
    rst $38                                       ; $5788: $ff
    rst $38                                       ; $5789: $ff
    rst $38                                       ; $578a: $ff
    rst $38                                       ; $578b: $ff
    rst $38                                       ; $578c: $ff
    rst $38                                       ; $578d: $ff
    rst $38                                       ; $578e: $ff
    rst $38                                       ; $578f: $ff
    rst $38                                       ; $5790: $ff
    rst $38                                       ; $5791: $ff
    rst $38                                       ; $5792: $ff
    rst $38                                       ; $5793: $ff
    rst $38                                       ; $5794: $ff
    nop                                           ; $5795: $00
    rst $38                                       ; $5796: $ff
    rst $38                                       ; $5797: $ff
    rst $38                                       ; $5798: $ff
    rst $38                                       ; $5799: $ff
    rst $38                                       ; $579a: $ff
    rst $38                                       ; $579b: $ff
    rst $38                                       ; $579c: $ff
    rst $38                                       ; $579d: $ff
    rst $38                                       ; $579e: $ff
    rst $38                                       ; $579f: $ff
    rst $38                                       ; $57a0: $ff
    rst $38                                       ; $57a1: $ff
    rst $38                                       ; $57a2: $ff
    rst $38                                       ; $57a3: $ff
    rst $38                                       ; $57a4: $ff
    rst $38                                       ; $57a5: $ff
    nop                                           ; $57a6: $00
    rst $38                                       ; $57a7: $ff
    rst $38                                       ; $57a8: $ff
    rst $38                                       ; $57a9: $ff
    rst $38                                       ; $57aa: $ff
    rst $38                                       ; $57ab: $ff
    rst $38                                       ; $57ac: $ff
    rst $38                                       ; $57ad: $ff
    rst $38                                       ; $57ae: $ff
    rst $38                                       ; $57af: $ff
    rst $38                                       ; $57b0: $ff
    rst $38                                       ; $57b1: $ff
    rst $38                                       ; $57b2: $ff
    rst $38                                       ; $57b3: $ff
    rst $38                                       ; $57b4: $ff
    rst $38                                       ; $57b5: $ff
    rst $38                                       ; $57b6: $ff
    nop                                           ; $57b7: $00
    rst $38                                       ; $57b8: $ff
    rst $38                                       ; $57b9: $ff
    rst $38                                       ; $57ba: $ff
    rst $38                                       ; $57bb: $ff
    rst $38                                       ; $57bc: $ff
    rst $38                                       ; $57bd: $ff
    rst $38                                       ; $57be: $ff
    rst $30                                       ; $57bf: $f7
    nop                                           ; $57c0: $00
    nop                                           ; $57c1: $00
    nop                                           ; $57c2: $00
    and l                                         ; $57c3: $a5
    nop                                           ; $57c4: $00
    rst $38                                       ; $57c5: $ff
    push hl                                       ; $57c6: $e5
    ld [hl-], a                                   ; $57c7: $32
    or $e6                                        ; $57c8: $f6 $e6
    rst $30                                       ; $57ca: $f7
    rst $20                                       ; $57cb: $e7
    dec [hl]                                      ; $57cc: $35
    db $ec                                        ; $57cd: $ec
    xor $37                                       ; $57ce: $ee $37
    db $ec                                        ; $57d0: $ec
    jp c, $c7f0                                   ; $57d1: $da $f0 $c7

    add sp, $33                                   ; $57d4: $e8 $33
    ld sp, $f2e0                                  ; $57d6: $31 $e0 $f2
    ld [hl], $30                                  ; $57d9: $36 $30
    scf                                           ; $57db: $37
    cp a                                          ; $57dc: $bf
    ld h, $20                                     ; $57dd: $26 $20
    daa                                           ; $57df: $27

jr_05a_57e0:
    db $10                                        ; $57e0: $10
    ld d, $17                                     ; $57e1: $16 $17
    jp nz, Jump_000_34f6                          ; $57e3: $c2 $f6 $34

    rst $38                                       ; $57e6: $ff
    ld [hl], $32                                  ; $57e7: $36 $32

Call_05a_57e9:
    jr nc, jr_05a_5822                            ; $57e9: $30 $37

    ld sp, $3133                                  ; $57eb: $31 $33 $31
    inc sp                                        ; $57ee: $33
    nop                                           ; $57ef: $00
    and b                                         ; $57f0: $a0
    ei                                            ; $57f1: $fb
    rst $38                                       ; $57f2: $ff
    rst $28                                       ; $57f3: $ef
    nop                                           ; $57f4: $00
    nop                                           ; $57f5: $00
    nop                                           ; $57f6: $00
    rst $38                                       ; $57f7: $ff
    ld d, a                                       ; $57f8: $57
    cpl                                           ; $57f9: $2f
    ld e, b                                       ; $57fa: $58
    ld c, b                                       ; $57fb: $48
    ld e, d                                       ; $57fc: $5a
    dec l                                         ; $57fd: $2d
    ld e, h                                       ; $57fe: $5c
    db $ec                                        ; $57ff: $ec
    dec hl                                        ; $5800: $2b
    ld [hl+], a                                   ; $5801: $22
    dec sp                                        ; $5802: $3b
    ld b, b                                       ; $5803: $40
    ld [hl+], a                                   ; $5804: $22
    nop                                           ; $5805: $00
    add hl, bc                                    ; $5806: $09
    and l                                         ; $5807: $a5
    ld b, e                                       ; $5808: $43
    xor $37                                       ; $5809: $ee $37
    ld [hl+], a                                   ; $580b: $22
    dec sp                                        ; $580c: $3b
    ld b, b                                       ; $580d: $40
    ld [hl+], a                                   ; $580e: $22
    ccf                                           ; $580f: $3f
    ld a, a                                       ; $5810: $7f
    rla                                           ; $5811: $17
    ld e, [hl]                                    ; $5812: $5e
    ld de, $2249                                  ; $5813: $11 $49 $22
    dec sp                                        ; $5816: $3b
    ld [$0825], sp                                ; $5817: $08 $25 $08
    dec h                                         ; $581a: $25
    ld [$0825], sp                                ; $581b: $08 $25 $08
    dec h                                         ; $581e: $25
    ld [$0825], sp                                ; $581f: $08 $25 $08

jr_05a_5822:
    dec h                                         ; $5822: $25
    ld [$0825], sp                                ; $5823: $08 $25 $08
    dec h                                         ; $5826: $25
    ld [$0825], sp                                ; $5827: $08 $25 $08
    dec h                                         ; $582a: $25
    ld [$0825], sp                                ; $582b: $08 $25 $08
    dec h                                         ; $582e: $25
    rst $38                                       ; $582f: $ff
    dec bc                                        ; $5830: $0b
    dec bc                                        ; $5831: $0b
    ld a, [bc]                                    ; $5832: $0a
    dec bc                                        ; $5833: $0b
    dec bc                                        ; $5834: $0b
    ld c, d                                       ; $5835: $4a
    ld l, d                                       ; $5836: $6a
    ld l, d                                       ; $5837: $6a
    di                                            ; $5838: $f3
    ld l, d                                       ; $5839: $6a
    ld a, [bc]                                    ; $583a: $0a
    rst $38                                       ; $583b: $ff
    db $e3                                        ; $583c: $e3
    or $e1                                        ; $583d: $f6 $e1
    inc c                                         ; $583f: $0c
    inc c                                         ; $5840: $0c
    ld c, h                                       ; $5841: $4c
    inc c                                         ; $5842: $0c
    sub h                                         ; $5843: $94
    rst $38                                       ; $5844: $ff
    rst $38                                       ; $5845: $ff
    db $e4                                        ; $5846: $e4
    db $e3                                        ; $5847: $e3
    dec bc                                        ; $5848: $0b
    rst $38                                       ; $5849: $ff
    pop hl                                        ; $584a: $e1
    dec hl                                        ; $584b: $2b
    cp a                                          ; $584c: $bf
    ldh [$c0], a                                  ; $584d: $e0 $c0
    and $0a                                       ; $584f: $e6 $0a
    or a                                          ; $5851: $b7
    ld l, d                                       ; $5852: $6a
    inc c                                         ; $5853: $0c
    inc l                                         ; $5854: $2c
    ret nz                                        ; $5855: $c0

    ld [c], a                                     ; $5856: $e2
    inc l                                         ; $5857: $2c
    inc l                                         ; $5858: $2c
    pop bc                                        ; $5859: $c1
    rst $38                                       ; $585a: $ff
    inc c                                         ; $585b: $0c
    jr nz, jr_05a_57e0                            ; $585c: $20 $82

    ldh [$bf], a                                  ; $585e: $e0 $bf
    db $e3                                        ; $5860: $e3
    add b                                         ; $5861: $80
    push hl                                       ; $5862: $e5
    ld a, [hl]                                    ; $5863: $7e
    ldh [$c0], a                                  ; $5864: $e0 $c0
    db $e3                                        ; $5866: $e3
    inc l                                         ; $5867: $2c
    ret nz                                        ; $5868: $c0

    jp hl                                         ; $5869: $e9


    or h                                          ; $586a: $b4
    or $7d                                        ; $586b: $f6 $7d
    ld l, e                                       ; $586d: $6b
    ld a, a                                       ; $586e: $7f
    ldh [rOCPD], a                                ; $586f: $e0 $6b
    dec bc                                        ; $5871: $0b
    ld c, e                                       ; $5872: $4b
    dec hl                                        ; $5873: $2b
    ld c, d                                       ; $5874: $4a
    ld b, b                                       ; $5875: $40
    db $e4                                        ; $5876: $e4
    ret nc                                        ; $5877: $d0

    ccf                                           ; $5878: $3f
    pop hl                                        ; $5879: $e1
    ret nz                                        ; $587a: $c0

    push hl                                       ; $587b: $e5
    pop bc                                        ; $587c: $c1
    jp hl                                         ; $587d: $e9


    ret nz                                        ; $587e: $c0

    rst $30                                       ; $587f: $f7
    ld l, e                                       ; $5880: $6b
    rst $38                                       ; $5881: $ff
    ldh [rWX], a                                  ; $5882: $e0 $4b
    ld c, e                                       ; $5884: $4b
    add hl, bc                                    ; $5885: $09
    ld c, e                                       ; $5886: $4b
    scf                                           ; $5887: $37
    ld [c], a                                     ; $5888: $e2
    ld [hl], $e2                                  ; $5889: $36 $e2
    ld l, d                                       ; $588b: $6a
    nop                                           ; $588c: $00
    db $e3                                        ; $588d: $e3
    add c                                         ; $588e: $81
    or $29                                        ; $588f: $f6 $29
    db $e4                                        ; $5891: $e4
    ld [hl+], a                                   ; $5892: $22
    db $e3                                        ; $5893: $e3
    ld a, $c1                                     ; $5894: $3e $c1
    ldh [$0b], a                                  ; $5896: $e0 $0b
    ld l, e                                       ; $5898: $6b
    dec hl                                        ; $5899: $2b
    dec hl                                        ; $589a: $2b
    dec hl                                        ; $589b: $2b
    cp [hl]                                       ; $589c: $be
    ldh [$fd], a                                  ; $589d: $e0 $fd
    pop hl                                        ; $589f: $e1
    jr @-$09                                      ; $58a0: $18 $f5

    jp nz, $ef0a                                  ; $58a2: $c2 $0a $ef

    push af                                       ; $58a5: $f5
    rst $10                                       ; $58a6: $d7
    dec bc                                        ; $58a7: $0b
    ld l, e                                       ; $58a8: $6b
    add [hl]                                      ; $58a9: $86
    ldh [$c0], a                                  ; $58aa: $e0 $c0
    ldh [$fd], a                                  ; $58ac: $e0 $fd
    pop hl                                        ; $58ae: $e1
    ld [bc], a                                    ; $58af: $02
    or h                                          ; $58b0: $b4
    ret nz                                        ; $58b1: $c0

    ld c, e                                       ; $58b2: $4b
    ld [hl], $e0                                  ; $58b3: $36 $e0
    ret nz                                        ; $58b5: $c0

    ld [c], a                                     ; $58b6: $e2
    ld [bc], a                                    ; $58b7: $02
    ldh [$c1], a                                  ; $58b8: $e0 $c1
    rst $18                                       ; $58ba: $df
    add b                                         ; $58bb: $80
    call nz, $e5c3                                ; $58bc: $c4 $c3 $e5
    nop                                           ; $58bf: $00
    halt                                          ; $58c0: $76
    pop bc                                        ; $58c1: $c1
    push af                                       ; $58c2: $f5
    pop bc                                        ; $58c3: $c1
    ret nz                                        ; $58c4: $c0

    db $ed                                        ; $58c5: $ed
    or h                                          ; $58c6: $b4
    ld sp, hl                                     ; $58c7: $f9
    adc $e0                                       ; $58c8: $ce $e0
    add c                                         ; $58ca: $81
    ld [c], a                                     ; $58cb: $e2
    add [hl]                                      ; $58cc: $86
    ldh [$fe], a                                  ; $58cd: $e0 $fe
    jp Jump_05a_4b07                              ; $58cf: $c3 $07 $4b


    dec bc                                        ; $58d2: $0b
    ld c, e                                       ; $58d3: $4b
    ld b, d                                       ; $58d4: $42
    rst $28                                       ; $58d5: $ef
    ret nz                                        ; $58d6: $c0

    ld sp, hl                                     ; $58d7: $f9
    ld b, l                                       ; $58d8: $45
    db $e3                                        ; $58d9: $e3
    cp [hl]                                       ; $58da: $be
    add $b5                                       ; $58db: $c6 $b5
    ret nz                                        ; $58dd: $c0

    inc b                                         ; $58de: $04
    ld c, d                                       ; $58df: $4a
    rst $38                                       ; $58e0: $ff
    add sp, -$19                                  ; $58e1: $e8 $e7
    dec hl                                        ; $58e3: $2b
    ld c, l                                       ; $58e4: $4d
    ldh [$c1], a                                  ; $58e5: $e0 $c1
    db $e3                                        ; $58e7: $e3
    ld a, [hl]                                    ; $58e8: $7e
    call nz, $e07f                                ; $58e9: $c4 $7f $e0
    jp z, $80ff                                   ; $58ec: $ca $ff $80

    ld a, h                                       ; $58ef: $7c
    push bc                                       ; $58f0: $c5
    ret nz                                        ; $58f1: $c0

    ld [c], a                                     ; $58f2: $e2
    rst $00                                       ; $58f3: $c7
    pop bc                                        ; $58f4: $c1
    add e                                         ; $58f5: $83
    jp $c4fd                                      ; $58f6: $c3 $fd $c4


    pop bc                                        ; $58f9: $c1
    rst $38                                       ; $58fa: $ff
    add sp, -$19                                  ; $58fb: $e8 $e7
    ld c, e                                       ; $58fd: $4b
    nop                                           ; $58fe: $00
    add c                                         ; $58ff: $81
    ld [c], a                                     ; $5900: $e2
    ld c, b                                       ; $5901: $48
    db $e3                                        ; $5902: $e3
    ld a, a                                       ; $5903: $7f
    db $e4                                        ; $5904: $e4
    ret nz                                        ; $5905: $c0

    rst $38                                       ; $5906: $ff
    ret nz                                        ; $5907: $c0

    db $ed                                        ; $5908: $ed
    add d                                         ; $5909: $82
    push bc                                       ; $590a: $c5
    ret nz                                        ; $590b: $c0

    rst $38                                       ; $590c: $ff
    xor [hl]                                      ; $590d: $ae
    adc $13                                       ; $590e: $ce $13
    ld a, [bc]                                    ; $5910: $0a
    ld c, e                                       ; $5911: $4b
    call nz, $bea1                                ; $5912: $c4 $a1 $be
    ld [$c06b], a                                 ; $5915: $ea $6b $c0
    rst $38                                       ; $5918: $ff
    ld [c], a                                     ; $5919: $e2
    and a                                         ; $591a: $a7
    call nz, $a4e1                                ; $591b: $c4 $e1 $a4
    ld b, h                                       ; $591e: $44
    and c                                         ; $591f: $a1
    ld a, l                                       ; $5920: $7d
    rst $20                                       ; $5921: $e7
    ld l, e                                       ; $5922: $6b
    add b                                         ; $5923: $80
    rst $18                                       ; $5924: $df
    and h                                         ; $5925: $a4
    adc b                                         ; $5926: $88
    ld c, h                                       ; $5927: $4c
    dec d                                         ; $5928: $15
    add c                                         ; $5929: $81
    ld c, h                                       ; $592a: $4c
    nop                                           ; $592b: $00
    rst $38                                       ; $592c: $ff
    ldh [$fb], a                                  ; $592d: $e0 $fb
    ld [c], a                                     ; $592f: $e2
    db $fc                                        ; $5930: $fc
    db $e3                                        ; $5931: $e3
    ret nz                                        ; $5932: $c0

    rst $38                                       ; $5933: $ff
    ld h, h                                       ; $5934: $64
    adc b                                         ; $5935: $88
    jp nc, $c2e2                                  ; $5936: $d2 $e2 $c2

    ldh [$fb], a                                  ; $5939: $e0 $fb
    db $e3                                        ; $593b: $e3
    db $10                                        ; $593c: $10
    db $fc                                        ; $593d: $fc
    db $e3                                        ; $593e: $e3
    rst $38                                       ; $593f: $ff
    rst $38                                       ; $5940: $ff
    and $87                                       ; $5941: $e6 $87
    dec d                                         ; $5943: $15
    add d                                         ; $5944: $82
    ld c, h                                       ; $5945: $4c
    adc $60                                       ; $5946: $ce $60
    ei                                            ; $5948: $fb
    pop hl                                        ; $5949: $e1
    db $fc                                        ; $594a: $fc
    db $e3                                        ; $594b: $e3
    nop                                           ; $594c: $00
    jp z, $e4ff                                   ; $594d: $ca $ff $e4

    ld h, c                                       ; $5950: $61
    pop hl                                        ; $5951: $e1
    add e                                         ; $5952: $83
    sub l                                         ; $5953: $95
    ld h, d                                       ; $5954: $62
    dec sp                                        ; $5955: $3b
    ld [c], a                                     ; $5956: $e2
    ret nz                                        ; $5957: $c0

    rst $38                                       ; $5958: $ff
    ret nz                                        ; $5959: $c0

    or $10                                        ; $595a: $f6 $10
    add e                                         ; $595c: $83
    nop                                           ; $595d: $00
    ret nz                                        ; $595e: $c0

    xor $7e                                       ; $595f: $ee $7e
    sub a                                         ; $5961: $97
    ld h, d                                       ; $5962: $62
    adc b                                         ; $5963: $88
    ld b, b                                       ; $5964: $40
    db $e3                                        ; $5965: $e3

jr_05a_5966:
    ei                                            ; $5966: $fb
    push bc                                       ; $5967: $c5
    nop                                           ; $5968: $00
    jp hl                                         ; $5969: $e9


    ld a, $98                                     ; $596a: $3e $98
    ret nz                                        ; $596c: $c0

    rst $38                                       ; $596d: $ff
    ld b, b                                       ; $596e: $40
    ret nz                                        ; $596f: $c0

    ld e, a                                       ; $5970: $5f
    ret nz                                        ; $5971: $c0

    jp z, $f100                                   ; $5972: $ca $00 $f1

    ret nz                                        ; $5975: $c0

    ld hl, sp-$5e                                 ; $5976: $f8 $a2
    ld h, a                                       ; $5978: $67
    nop                                           ; $5979: $00
    and $08                                       ; $597a: $e6 $08
    rst $38                                       ; $597c: $ff
    add sp, $00                                   ; $597d: $e8 $00
    adc d                                         ; $597f: $8a
    rst $38                                       ; $5980: $ff
    ret nz                                        ; $5981: $c0

    rst $28                                       ; $5982: $ef
    dec bc                                        ; $5983: $0b
    ld a, a                                       ; $5984: $7f
    ld b, c                                       ; $5985: $41
    sub c                                         ; $5986: $91
    ret nz                                        ; $5987: $c0

    ret                                           ; $5988: $c9


    ret nz                                        ; $5989: $c0

    rst $38                                       ; $598a: $ff
    ret nz                                        ; $598b: $c0

    pop af                                        ; $598c: $f1
    rst $38                                       ; $598d: $ff
    rst $38                                       ; $598e: $ff
    nop                                           ; $598f: $00
    inc sp                                        ; $5990: $33
    rst $38                                       ; $5991: $ff
    call c, $c0ff                                 ; $5992: $dc $ff $c0
    rst $38                                       ; $5995: $ff
    rst $38                                       ; $5996: $ff
    rst $38                                       ; $5997: $ff
    rst $38                                       ; $5998: $ff
    rst $38                                       ; $5999: $ff
    rst $38                                       ; $599a: $ff
    rst $38                                       ; $599b: $ff
    rst $38                                       ; $599c: $ff
    rst $38                                       ; $599d: $ff
    rst $38                                       ; $599e: $ff
    rst $38                                       ; $599f: $ff
    nop                                           ; $59a0: $00
    ld c, h                                       ; $59a1: $4c
    rst $38                                       ; $59a2: $ff
    pop bc                                        ; $59a3: $c1
    rst $38                                       ; $59a4: $ff
    ret nz                                        ; $59a5: $c0

    rst $38                                       ; $59a6: $ff
    ret nz                                        ; $59a7: $c0

    sbc h                                         ; $59a8: $9c
    jp nz, $c0ff                                  ; $59a9: $c2 $ff $c0

    sbc e                                         ; $59ac: $9b
    pop bc                                        ; $59ad: $c1
    rst $38                                       ; $59ae: $ff
    db $db                                        ; $59af: $db
    rst $38                                       ; $59b0: $ff
    nop                                           ; $59b1: $00
    ret nz                                        ; $59b2: $c0

    rst $38                                       ; $59b3: $ff
    ld e, d                                       ; $59b4: $5a
    xor d                                         ; $59b5: $aa
    inc e                                         ; $59b6: $1c
    ld h, d                                       ; $59b7: $62
    ld d, c                                       ; $59b8: $51
    ld h, d                                       ; $59b9: $62
    ld bc, $ecff                                  ; $59ba: $01 $ff $ec
    db $eb                                        ; $59bd: $eb
    and d                                         ; $59be: $a2
    ld b, h                                       ; $59bf: $44
    ld d, [hl]                                    ; $59c0: $56

jr_05a_59c1:
    ld h, [hl]                                    ; $59c1: $66
    nop                                           ; $59c2: $00
    ret nz                                        ; $59c3: $c0

    rst $38                                       ; $59c4: $ff
    ld b, b                                       ; $59c5: $40
    db $eb                                        ; $59c6: $eb
    and [hl]                                      ; $59c7: $a6
    ld b, d                                       ; $59c8: $42
    db $fd                                        ; $59c9: $fd
    db $e3                                        ; $59ca: $e3
    ret                                           ; $59cb: $c9


    rst $38                                       ; $59cc: $ff
    ret nz                                        ; $59cd: $c0

    pop af                                        ; $59ce: $f1
    dec hl                                        ; $59cf: $2b
    ld b, d                                       ; $59d0: $42
    cp [hl]                                       ; $59d1: $be
    db $e3                                        ; $59d2: $e3
    nop                                           ; $59d3: $00
    rst $38                                       ; $59d4: $ff
    rst $38                                       ; $59d5: $ff
    ccf                                           ; $59d6: $3f
    pop af                                        ; $59d7: $f1
    jr c, jr_05a_59c1                             ; $59d8: $38 $e7

    db $d3                                        ; $59da: $d3
    rst $38                                       ; $59db: $ff
    pop bc                                        ; $59dc: $c1
    di                                            ; $59dd: $f3
    rst $18                                       ; $59de: $df
    ld [hl+], a                                   ; $59df: $22
    ld a, a                                       ; $59e0: $7f
    rst $38                                       ; $59e1: $ff
    cp [hl]                                       ; $59e2: $be
    rst $10                                       ; $59e3: $d7
    jr nz, jr_05a_5966                            ; $59e4: $20 $80

    rst $38                                       ; $59e6: $ff
    ld b, c                                       ; $59e7: $41
    ld hl, sp+$1f                                 ; $59e8: $f8 $1f
    inc hl                                        ; $59ea: $23
    add b                                         ; $59eb: $80
    rst $38                                       ; $59ec: $ff
    di                                            ; $59ed: $f3
    ld bc, $9b2c                                  ; $59ee: $01 $2c $9b
    rst $28                                       ; $59f1: $ef
    push bc                                       ; $59f2: $c5
    and $00                                       ; $59f3: $e6 $00
    ret nz                                        ; $59f5: $c0

    rst $38                                       ; $59f6: $ff
    scf                                           ; $59f7: $37
    ld hl, $f7c0                                  ; $59f8: $21 $c0 $f7
    add d                                         ; $59fb: $82
    rst $38                                       ; $59fc: $ff
    sbc e                                         ; $59fd: $9b
    di                                            ; $59fe: $f3
    call $ffbf                                    ; $59ff: $cd $bf $ff
    rst $38                                       ; $5a02: $ff
    rst $38                                       ; $5a03: $ff
    rst $38                                       ; $5a04: $ff
    nop                                           ; $5a05: $00
    sub [hl]                                      ; $5a06: $96
    rst $38                                       ; $5a07: $ff
    ld [hl], l                                    ; $5a08: $75
    ld e, a                                       ; $5a09: $5f
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
    nop                                           ; $5a16: $00
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
    nop                                           ; $5a27: $00
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
    nop                                           ; $5a38: $00
    nop                                           ; $5a39: $00
    cp a                                          ; $5a3a: $bf
    rst $38                                       ; $5a3b: $ff
    rst $38                                       ; $5a3c: $ff
    rst $38                                       ; $5a3d: $ff
    rst $38                                       ; $5a3e: $ff
    rst $38                                       ; $5a3f: $ff
    rst $38                                       ; $5a40: $ff
    rst $38                                       ; $5a41: $ff
    rst $38                                       ; $5a42: $ff
    rst $38                                       ; $5a43: $ff
    or $00                                        ; $5a44: $f6 $00
    nop                                           ; $5a46: $00
    nop                                           ; $5a47: $00
    rst $38                                       ; $5a48: $ff
    ld e, e                                       ; $5a49: $5b
    ld e, e                                       ; $5a4a: $5b
    ld e, d                                       ; $5a4b: $5a
    ld e, e                                       ; $5a4c: $5b
    ld e, e                                       ; $5a4d: $5b
    adc h                                         ; $5a4e: $8c
    ld c, [hl]                                    ; $5a4f: $4e
    ld c, [hl]                                    ; $5a50: $4e
    inc sp                                        ; $5a51: $33
    ld c, [hl]                                    ; $5a52: $4e
    adc b                                         ; $5a53: $88
    rst $38                                       ; $5a54: $ff
    db $e3                                        ; $5a55: $e3
    or $e0                                        ; $5a56: $f6 $e0
    adc e                                         ; $5a58: $8b
    nop                                           ; $5a59: $00
    rst $38                                       ; $5a5a: $ff
    rst $38                                       ; $5a5b: $ff
    rst $20                                       ; $5a5c: $e7
    and $3f                                       ; $5a5d: $e6 $3f
    ld e, e                                       ; $5a5f: $5b
    ld e, e                                       ; $5a60: $5b
    ld e, e                                       ; $5a61: $5b
    ld e, h                                       ; $5a62: $5c
    ld e, l                                       ; $5a63: $5d
    ld h, b                                       ; $5a64: $60
    cp a                                          ; $5a65: $bf
    ldh [$c0], a                                  ; $5a66: $e0 $c0
    and $f3                                       ; $5a68: $e6 $f3
    adc e                                         ; $5a6a: $8b
    ld c, [hl]                                    ; $5a6b: $4e
    jp z, $e8ff                                   ; $5a6c: $ca $ff $e8

    rst $20                                       ; $5a6f: $e7
    ld e, d                                       ; $5a70: $5a
    ld e, h                                       ; $5a71: $5c
    ld e, l                                       ; $5a72: $5d
    ld sp, $3133                                  ; $5a73: $31 $33 $31
    ld sp, $e0bf                                  ; $5a76: $31 $bf $e0
    add b                                         ; $5a79: $80
    push hl                                       ; $5a7a: $e5
    adc e                                         ; $5a7b: $8b
    ld c, [hl]                                    ; $5a7c: $4e
    ret nz                                        ; $5a7d: $c0

    rst $38                                       ; $5a7e: $ff
    jp hl                                         ; $5a7f: $e9


    add sp, $7d                                   ; $5a80: $e8 $7d
    ld e, a                                       ; $5a82: $5f
    jp nz, Jump_05a_47e0                          ; $5a83: $c2 $e0 $47

    ld d, [hl]                                    ; $5a86: $56
    ld b, a                                       ; $5a87: $47
    ld h, b                                       ; $5a88: $60
    adc h                                         ; $5a89: $8c
    ld b, b                                       ; $5a8a: $40
    db $e4                                        ; $5a8b: $e4
    ld hl, sp-$3f                                 ; $5a8c: $f8 $c1
    ldh [$c0], a                                  ; $5a8e: $e0 $c0
    rst $38                                       ; $5a90: $ff
    jp hl                                         ; $5a91: $e9


    add sp, $5e                                   ; $5a92: $e8 $5e
    ld sp, $464d                                  ; $5a94: $31 $4d $46
    ld [hl], $1f                                  ; $5a97: $36 $1f
    jr nc, @+$38                                  ; $5a99: $30 $36

    ld b, [hl]                                    ; $5a9b: $46
    ld b, a                                       ; $5a9c: $47
    ld h, d                                       ; $5a9d: $62
    rst $38                                       ; $5a9e: $ff
    ld [c], a                                     ; $5a9f: $e2
    ld [hl], $e1                                  ; $5aa0: $36 $e1
    ret nz                                        ; $5aa2: $c0

    rst $38                                       ; $5aa3: $ff
    sbc $e9                                       ; $5aa4: $de $e9
    add sp, $31                                   ; $5aa6: $e8 $31
    ld c, l                                       ; $5aa8: $4d
    ld [hl-], a                                   ; $5aa9: $32
    jr nc, @+$01                                  ; $5aaa: $30 $ff

    ldh [$6d], a                                  ; $5aac: $e0 $6d
    ld [hl], $87                                  ; $5aae: $36 $87
    ld b, [hl]                                    ; $5ab0: $46
    sub a                                         ; $5ab1: $97
    sbc [hl]                                      ; $5ab2: $9e
    rst $38                                       ; $5ab3: $ff
    ldh [$36], a                                  ; $5ab4: $e0 $36
    pop hl                                        ; $5ab6: $e1
    ret nz                                        ; $5ab7: $c0

    rst $38                                       ; $5ab8: $ff
    ret nz                                        ; $5ab9: $c0

    jp hl                                         ; $5aba: $e9


    add hl, sp                                    ; $5abb: $39
    cp $c2                                        ; $5abc: $fe $c2
    pop hl                                        ; $5abe: $e1
    ld l, l                                       ; $5abf: $6d
    ld h, a                                       ; $5ac0: $67
    ld l, d                                       ; $5ac1: $6a
    ld l, l                                       ; $5ac2: $6d
    sbc c                                         ; $5ac3: $99
    sbc b                                         ; $5ac4: $98
    sbc h                                         ; $5ac5: $9c
    adc a                                         ; $5ac6: $8f

jr_05a_5ac7:
    sbc h                                         ; $5ac7: $9c
    sbc h                                         ; $5ac8: $9c
    sub [hl]                                      ; $5ac9: $96
    sub a                                         ; $5aca: $97
    or h                                          ; $5acb: $b4
    ret nz                                        ; $5acc: $c0

    jp z, $80ff                                   ; $5acd: $ca $ff $80

    add sp, $52                                   ; $5ad0: $e8 $52
    db $fc                                        ; $5ad2: $fc
    pop bc                                        ; $5ad3: $c1
    db $e4                                        ; $5ad4: $e4
    ld a, d                                       ; $5ad5: $7a
    ldh [$67], a                                  ; $5ad6: $e0 $67
    ld h, a                                       ; $5ad8: $67
    ld l, d                                       ; $5ad9: $6a
    sbc c                                         ; $5ada: $99
    sbc d                                         ; $5adb: $9a
    scf                                           ; $5adc: $37
    ld h, e                                       ; $5add: $63
    ld h, b                                       ; $5ade: $60
    adc h                                         ; $5adf: $8c
    jp z, $80ff                                   ; $5ae0: $ca $ff $80

    db $eb                                        ; $5ae3: $eb
    pop bc                                        ; $5ae4: $c1
    ld [c], a                                     ; $5ae5: $e2
    ld l, h                                       ; $5ae6: $6c
    ld l, h                                       ; $5ae7: $6c
    ret nz                                        ; $5ae8: $c0

    pop hl                                        ; $5ae9: $e1
    sbc a                                         ; $5aea: $9f
    jr nc, jr_05a_5b1d                            ; $5aeb: $30 $30

    add hl, sp                                    ; $5aed: $39
    ld sp, $ca5f                                  ; $5aee: $31 $5f $ca
    rst $38                                       ; $5af1: $ff
    nop                                           ; $5af2: $00
    add sp, $49                                   ; $5af3: $e8 $49
    add hl, sp                                    ; $5af5: $39
    ld c, b                                       ; $5af6: $48
    pop bc                                        ; $5af7: $c1
    db $e4                                        ; $5af8: $e4
    ret nz                                        ; $5af9: $c0

    db $e4                                        ; $5afa: $e4
    ld c, b                                       ; $5afb: $48
    ld c, c                                       ; $5afc: $49
    ld e, [hl]                                    ; $5afd: $5e
    jp z, $80ff                                   ; $5afe: $ca $ff $80

    ret                                           ; $5b01: $c9


    add e                                         ; $5b02: $83
    add hl, sp                                    ; $5b03: $39
    jr nc, jr_05a_5ac7                            ; $5b04: $30 $c1

    db $e3                                        ; $5b06: $e3
    add b                                         ; $5b07: $80
    ld [c], a                                     ; $5b08: $e2
    ld a, a                                       ; $5b09: $7f
    ld [c], a                                     ; $5b0a: $e2
    jp z, Jump_000_00ff                           ; $5b0b: $ca $ff $00

    ret                                           ; $5b0e: $c9


    ld c, l                                       ; $5b0f: $4d

Jump_05a_5b10:
    sub c                                         ; $5b10: $91
    ld [hl-], a                                   ; $5b11: $32
    inc b                                         ; $5b12: $04
    ldh [$c0], a                                  ; $5b13: $e0 $c0
    pop hl                                        ; $5b15: $e1
    ccf                                           ; $5b16: $3f
    db $e4                                        ; $5b17: $e4
    ld d, d                                       ; $5b18: $52
    ret nz                                        ; $5b19: $c0

    rst $38                                       ; $5b1a: $ff
    ld b, b                                       ; $5b1b: $40
    xor c                                         ; $5b1c: $a9

jr_05a_5b1d:
    ld e, [hl]                                    ; $5b1d: $5e
    add a                                         ; $5b1e: $87
    ld sp, $3651                                  ; $5b1f: $31 $51 $36
    ld a, $c1                                     ; $5b22: $3e $c1
    ccf                                           ; $5b24: $3f
    and $80                                       ; $5b25: $e6 $80
    rst $38                                       ; $5b27: $ff
    nop                                           ; $5b28: $00
    xor d                                         ; $5b29: $aa
    ld e, a                                       ; $5b2a: $5f
    rst $08                                       ; $5b2b: $cf
    ld sp, $6fa1                                  ; $5b2c: $31 $a1 $6f
    ld l, [hl]                                    ; $5b2f: $6e
    cp [hl]                                       ; $5b30: $be
    ld [c], a                                     ; $5b31: $e2
    ld a, a                                       ; $5b32: $7f
    jp nz, Jump_000_3230                          ; $5b33: $c2 $30 $32

    ld sp, hl                                     ; $5b36: $f9
    ld c, l                                       ; $5b37: $4d
    ret nz                                        ; $5b38: $c0

    rst $38                                       ; $5b39: $ff
    nop                                           ; $5b3a: $00
    xor c                                         ; $5b3b: $a9
    ld e, e                                       ; $5b3c: $5b
    ld h, c                                       ; $5b3d: $61
    and c                                         ; $5b3e: $a1
    add b                                         ; $5b3f: $80
    add b                                         ; $5b40: $80
    ld [$e4be], sp                                ; $5b41: $08 $be $e4
    ccf                                           ; $5b44: $3f
    ret nz                                        ; $5b45: $c0

    pop bc                                        ; $5b46: $c1
    ldh [$60], a                                  ; $5b47: $e0 $60
    jp z, $80ff                                   ; $5b49: $ca $ff $80

    adc c                                         ; $5b4c: $89
    ret nz                                        ; $5b4d: $c0

    pop hl                                        ; $5b4e: $e1
    cp [hl]                                       ; $5b4f: $be
    pop hl                                        ; $5b50: $e1
    dec d                                         ; $5b51: $15
    ld d, h                                       ; $5b52: $54
    rst $38                                       ; $5b53: $ff
    pop hl                                        ; $5b54: $e1
    dec sp                                        ; $5b55: $3b
    pop bc                                        ; $5b56: $c1
    ldh [$5b], a                                  ; $5b57: $e0 $5b
    jp z, $ffff                                   ; $5b59: $ca $ff $ff

    rst $38                                       ; $5b5c: $ff
    rst $38                                       ; $5b5d: $ff

Jump_05a_5b5e:
    rst $38                                       ; $5b5e: $ff
    nop                                           ; $5b5f: $00
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
    ret nz                                        ; $5b70: $c0

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
    di                                            ; $5b7b: $f3
    ld a, [c]                                     ; $5b7c: $f2
    or h                                          ; $5b7d: $b4
    or l                                          ; $5b7e: $b5
    rst $38                                       ; $5b7f: $ff
    or [hl]                                       ; $5b80: $b6
    or a                                          ; $5b81: $b7
    cp b                                          ; $5b82: $b8
    cp c                                          ; $5b83: $b9
    cp d                                          ; $5b84: $ba
    cp e                                          ; $5b85: $bb
    cp h                                          ; $5b86: $bc
    cp l                                          ; $5b87: $bd
    inc bc                                        ; $5b88: $03
    cp [hl]                                       ; $5b89: $be
    cp a                                          ; $5b8a: $bf
    jp nc, $ffff                                  ; $5b8b: $d2 $ff $ff

    rst $38                                       ; $5b8e: $ff
    rst $38                                       ; $5b8f: $ff
    rst $38                                       ; $5b90: $ff
    rst $38                                       ; $5b91: $ff
    rst $38                                       ; $5b92: $ff
    rst $38                                       ; $5b93: $ff
    rst $38                                       ; $5b94: $ff
    rst $38                                       ; $5b95: $ff
    rst $38                                       ; $5b96: $ff
    nop                                           ; $5b97: $00
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
    nop                                           ; $5ba8: $00
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
    nop                                           ; $5bb9: $00
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
    nop                                           ; $5bca: $00
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
    nop                                           ; $5bdb: $00
    rst $38                                       ; $5bdc: $ff
    rst $38                                       ; $5bdd: $ff
    rst $38                                       ; $5bde: $ff
    rst $38                                       ; $5bdf: $ff

Jump_05a_5be0:
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
    nop                                           ; $5bec: $00
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
    nop                                           ; $5bfd: $00
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
    nop                                           ; $5c0e: $00
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
    nop                                           ; $5c1f: $00
    rst $38                                       ; $5c20: $ff
    rst $38                                       ; $5c21: $ff
    rst $38                                       ; $5c22: $ff
    rst $38                                       ; $5c23: $ff
    rst $38                                       ; $5c24: $ff
    rst $38                                       ; $5c25: $ff
    rst $38                                       ; $5c26: $ff
    rst $38                                       ; $5c27: $ff
    rst $38                                       ; $5c28: $ff
    db $f4                                        ; $5c29: $f4
    nop                                           ; $5c2a: $00
    nop                                           ; $5c2b: $00
    nop                                           ; $5c2c: $00
    and l                                         ; $5c2d: $a5
    nop                                           ; $5c2e: $00
    rst $38                                       ; $5c2f: $ff
    push hl                                       ; $5c30: $e5
    ld [hl-], a                                   ; $5c31: $32
    or $e6                                        ; $5c32: $f6 $e6
    rst $30                                       ; $5c34: $f7
    rst $20                                       ; $5c35: $e7
    dec [hl]                                      ; $5c36: $35
    db $ec                                        ; $5c37: $ec
    xor $37                                       ; $5c38: $ee $37
    db $ec                                        ; $5c3a: $ec
    jp c, $c7f0                                   ; $5c3b: $da $f0 $c7

    add sp, $33                                   ; $5c3e: $e8 $33
    ld sp, $f2e0                                  ; $5c40: $31 $e0 $f2
    ld [hl], $30                                  ; $5c43: $36 $30
    scf                                           ; $5c45: $37
    cp a                                          ; $5c46: $bf
    ld h, $20                                     ; $5c47: $26 $20
    daa                                           ; $5c49: $27
    db $10                                        ; $5c4a: $10
    ld d, $17                                     ; $5c4b: $16 $17
    jp nz, Jump_000_34f6                          ; $5c4d: $c2 $f6 $34

    rst $38                                       ; $5c50: $ff
    ld [hl], $32                                  ; $5c51: $36 $32
    jr nc, jr_05a_5c8c                            ; $5c53: $30 $37

    ld sp, $3133                                  ; $5c55: $31 $33 $31
    inc sp                                        ; $5c58: $33
    nop                                           ; $5c59: $00
    and b                                         ; $5c5a: $a0
    ei                                            ; $5c5b: $fb
    rst $38                                       ; $5c5c: $ff
    rst $28                                       ; $5c5d: $ef
    nop                                           ; $5c5e: $00
    nop                                           ; $5c5f: $00
    nop                                           ; $5c60: $00
    ld l, c                                       ; $5c61: $69
    ld e, h                                       ; $5c62: $5c
    sbc c                                         ; $5c63: $99
    ld e, h                                       ; $5c64: $5c
    jp c, $a55e                                   ; $5c65: $da $5e $a5

    ld h, b                                       ; $5c68: $60
    db $ec                                        ; $5c69: $ec
    dec hl                                        ; $5c6a: $2b
    ld [hl+], a                                   ; $5c6b: $22
    dec sp                                        ; $5c6c: $3b
    ld b, b                                       ; $5c6d: $40
    ld [hl+], a                                   ; $5c6e: $22
    nop                                           ; $5c6f: $00
    add hl, bc                                    ; $5c70: $09
    and l                                         ; $5c71: $a5
    ld b, e                                       ; $5c72: $43
    xor $37                                       ; $5c73: $ee $37
    ld [hl+], a                                   ; $5c75: $22
    dec sp                                        ; $5c76: $3b
    ld b, b                                       ; $5c77: $40
    ld [hl+], a                                   ; $5c78: $22
    ccf                                           ; $5c79: $3f
    ld a, a                                       ; $5c7a: $7f
    rla                                           ; $5c7b: $17
    ld e, [hl]                                    ; $5c7c: $5e
    ld de, $2249                                  ; $5c7d: $11 $49 $22
    dec sp                                        ; $5c80: $3b
    ld [$0825], sp                                ; $5c81: $08 $25 $08
    dec h                                         ; $5c84: $25
    ld [$0825], sp                                ; $5c85: $08 $25 $08
    dec h                                         ; $5c88: $25
    ld [$0825], sp                                ; $5c89: $08 $25 $08

jr_05a_5c8c:
    dec h                                         ; $5c8c: $25
    ld [$0825], sp                                ; $5c8d: $08 $25 $08
    dec h                                         ; $5c90: $25
    ld [$0825], sp                                ; $5c91: $08 $25 $08
    dec h                                         ; $5c94: $25
    ld [$0825], sp                                ; $5c95: $08 $25 $08
    dec h                                         ; $5c98: $25
    rst $18                                       ; $5c99: $df
    inc c                                         ; $5c9a: $0c
    inc c                                         ; $5c9b: $0c
    dec bc                                        ; $5c9c: $0b
    dec bc                                        ; $5c9d: $0b
    ld c, h                                       ; $5c9e: $4c
    rst $38                                       ; $5c9f: $ff
    pop hl                                        ; $5ca0: $e1
    inc l                                         ; $5ca1: $2c
    inc l                                         ; $5ca2: $2c
    add hl, bc                                    ; $5ca3: $09
    inc c                                         ; $5ca4: $0c
    cp $e1                                        ; $5ca5: $fe $e1
    rst $38                                       ; $5ca7: $ff
    ldh [$0b], a                                  ; $5ca8: $e0 $0b
    ei                                            ; $5caa: $fb
    ldh [$ed], a                                  ; $5cab: $e0 $ed
    ld [c], a                                     ; $5cad: $e2
    ld sp, hl                                     ; $5cae: $f9
    pop hl                                        ; $5caf: $e1
    push af                                       ; $5cb0: $f5
    ldh [$96], a                                  ; $5cb1: $e0 $96
    ld a, [c]                                     ; $5cb3: $f2
    pop hl                                        ; $5cb4: $e1
    inc l                                         ; $5cb5: $2c
    inc l                                         ; $5cb6: $2c
    ld a, [c]                                     ; $5cb7: $f2
    ldh [$0c], a                                  ; $5cb8: $e0 $0c
    call c, $ffe0                                 ; $5cba: $dc $e0 $ff
    rst $28                                       ; $5cbd: $ef
    dec bc                                        ; $5cbe: $0b
    nop                                           ; $5cbf: $00
    rst $38                                       ; $5cc0: $ff
    ldh [$d1], a                                  ; $5cc1: $e0 $d1
    db $e3                                        ; $5cc3: $e3
    ld [c], a                                     ; $5cc4: $e2
    db $e4                                        ; $5cc5: $e4
    ret nz                                        ; $5cc6: $c0

    ldh [$c4], a                                  ; $5cc7: $e0 $c4
    ldh [$c0], a                                  ; $5cc9: $e0 $c0
    db $e4                                        ; $5ccb: $e4
    cp d                                          ; $5ccc: $ba
    pop hl                                        ; $5ccd: $e1
    cp c                                          ; $5cce: $b9
    push hl                                       ; $5ccf: $e5
    nop                                           ; $5cd0: $00
    ret nz                                        ; $5cd1: $c0

    rst $30                                       ; $5cd2: $f7
    ld a, h                                       ; $5cd3: $7c

jr_05a_5cd4:
    db $e3                                        ; $5cd4: $e3
    sbc a                                         ; $5cd5: $9f
    ldh [$80], a                                  ; $5cd6: $e0 $80
    db $e3                                        ; $5cd8: $e3
    sub h                                         ; $5cd9: $94
    pop hl                                        ; $5cda: $e1
    adc $e3                                       ; $5cdb: $ce $e3
    rst $30                                       ; $5cdd: $f7
    db $e3                                        ; $5cde: $e3
    or d                                          ; $5cdf: $b2
    ldh [rP1], a                                  ; $5ce0: $e0 $00
    add a                                         ; $5ce2: $87
    ldh a, [$c1]                                  ; $5ce3: $f0 $c1
    jp hl                                         ; $5ce5: $e9


    ld a, h                                       ; $5ce6: $7c
    db $e3                                        ; $5ce7: $e3
    ld [hl], b                                    ; $5ce8: $70
    db $e4                                        ; $5ce9: $e4
    jp z, $bde4                                   ; $5cea: $ca $e4 $bd

    push hl                                       ; $5ced: $e5
    jr c, jr_05a_5cd4                             ; $5cee: $38 $e4

    ld b, d                                       ; $5cf0: $42
    ldh [$3e], a                                  ; $5cf1: $e0 $3e
    ld b, b                                       ; $5cf3: $40
    ldh a, [$0b]                                  ; $5cf4: $f0 $0b
    dec bc                                        ; $5cf6: $0b
    ld l, e                                       ; $5cf7: $6b
    ld l, e                                       ; $5cf8: $6b
    ld c, e                                       ; $5cf9: $4b
    rst $38                                       ; $5cfa: $ff
    ldh [$3a], a                                  ; $5cfb: $e0 $3a
    pop hl                                        ; $5cfd: $e1
    nop                                           ; $5cfe: $00
    ld [bc], a                                    ; $5cff: $02
    db $e3                                        ; $5d00: $e3
    ret nz                                        ; $5d01: $c0

    ldh [rSTAT], a                                ; $5d02: $e0 $41
    ld [c], a                                     ; $5d04: $e2
    ld a, $e2                                     ; $5d05: $3e $e2
    ccf                                           ; $5d07: $3f
    add sp, -$40                                  ; $5d08: $e8 $c0
    and $fb                                       ; $5d0a: $e6 $fb
    call nz, $c3f4                                ; $5d0c: $c4 $f4 $c3
    ld e, $c1                                     ; $5d0f: $1e $c1
    ldh [$0b], a                                  ; $5d11: $e0 $0b
    dec bc                                        ; $5d13: $0b
    dec hl                                        ; $5d14: $2b
    dec hl                                        ; $5d15: $2b
    cp a                                          ; $5d16: $bf
    ldh [$bd], a                                  ; $5d17: $e0 $bd
    ld [c], a                                     ; $5d19: $e2
    inc sp                                        ; $5d1a: $33
    ld [c], a                                     ; $5d1b: $e2
    nop                                           ; $5d1c: $00
    ld c, l                                       ; $5d1d: $4d
    db $e4                                        ; $5d1e: $e4
    ld c, c                                       ; $5d1f: $49
    ld [c], a                                     ; $5d20: $e2
    or l                                          ; $5d21: $b5
    db $e4                                        ; $5d22: $e4
    ld b, c                                       ; $5d23: $41
    or $c1                                        ; $5d24: $f6 $c1
    pop hl                                        ; $5d26: $e1
    ret nz                                        ; $5d27: $c0

    ldh [$fe], a                                  ; $5d28: $e0 $fe
    ldh [$7c], a                                  ; $5d2a: $e0 $7c
    ld [c], a                                     ; $5d2c: $e2
    add b                                         ; $5d2d: $80
    ld a, b                                       ; $5d2e: $78
    ld [c], a                                     ; $5d2f: $e2
    add b                                         ; $5d30: $80
    push bc                                       ; $5d31: $c5
    ld a, h                                       ; $5d32: $7c
    add $26                                       ; $5d33: $c6 $26
    db $e4                                        ; $5d35: $e4
    ret nz                                        ; $5d36: $c0

    ld a, [c]                                     ; $5d37: $f2
    add c                                         ; $5d38: $81
    pop bc                                        ; $5d39: $c1
    ret nz                                        ; $5d3a: $c0

    pop hl                                        ; $5d3b: $e1
    ld l, e                                       ; $5d3c: $6b
    inc bc                                        ; $5d3d: $03
    ld l, e                                       ; $5d3e: $6b
    dec hl                                        ; $5d3f: $2b
    ret nz                                        ; $5d40: $c0

    pop hl                                        ; $5d41: $e1
    ld a, b                                       ; $5d42: $78
    pop hl                                        ; $5d43: $e1
    adc $c6                                       ; $5d44: $ce $c6
    cp [hl]                                       ; $5d46: $be
    call nz, $d9c0                                ; $5d47: $c4 $c0 $d9
    add d                                         ; $5d4a: $82
    jp nz, $c01a                                  ; $5d4b: $c2 $1a $c0

    db $e3                                        ; $5d4e: $e3
    ld l, e                                       ; $5d4f: $6b
    dec a                                         ; $5d50: $3d
    db $e3                                        ; $5d51: $e3
    ld c, e                                       ; $5d52: $4b
    ld c, e                                       ; $5d53: $4b
    adc $c5                                       ; $5d54: $ce $c5
    cp [hl]                                       ; $5d56: $be
    call nz, $c5c0                                ; $5d57: $c4 $c0 $c5
    ld b, b                                       ; $5d5a: $40
    inc b                                         ; $5d5b: $04
    push bc                                       ; $5d5c: $c5
    ld a, [$44aa]                                 ; $5d5d: $fa $aa $44
    db $e3                                        ; $5d60: $e3
    jp $fde0                                      ; $5d61: $c3 $e0 $fd


    pop hl                                        ; $5d64: $e1
    db $fd                                        ; $5d65: $fd
    jp Jump_05a_4c4b                              ; $5d66: $c3 $4b $4c


    jp $c000                                      ; $5d69: $c3 $00 $c0


    and l                                         ; $5d6c: $a5
    ld b, b                                       ; $5d6d: $40
    adc $c0                                       ; $5d6e: $ce $c0
    db $eb                                        ; $5d70: $eb
    push bc                                       ; $5d71: $c5
    db $e4                                        ; $5d72: $e4
    ld a, e                                       ; $5d73: $7b
    pop bc                                        ; $5d74: $c1
    db $f4                                        ; $5d75: $f4
    jp nz, $c0b2                                  ; $5d76: $c2 $b2 $c0

    add c                                         ; $5d79: $81
    and b                                         ; $5d7a: $a0
    ld bc, $c52c                                  ; $5d7b: $01 $2c $c5
    and e                                         ; $5d7e: $a3
    ld a, l                                       ; $5d7f: $7d
    jp $ec80                                      ; $5d80: $c3 $80 $ec


    ld a, h                                       ; $5d83: $7c
    ret z                                         ; $5d84: $c8

    ret nz                                        ; $5d85: $c0

    rst $20                                       ; $5d86: $e7
    inc a                                         ; $5d87: $3c
    pop bc                                        ; $5d88: $c1
    dec a                                         ; $5d89: $3d
    pop hl                                        ; $5d8a: $e1
    nop                                           ; $5d8b: $00
    add b                                         ; $5d8c: $80
    jp nz, $a075                                  ; $5d8d: $c2 $75 $a0

    ld b, c                                       ; $5d90: $41
    and a                                         ; $5d91: $a7
    ld b, b                                       ; $5d92: $40
    add $42                                       ; $5d93: $c6 $42
    push hl                                       ; $5d95: $e5
    ld a, [hl-]                                   ; $5d96: $3a
    xor d                                         ; $5d97: $aa
    ld b, l                                       ; $5d98: $45
    db $e4                                        ; $5d99: $e4
    db $fd                                        ; $5d9a: $fd
    and c                                         ; $5d9b: $a1
    nop                                           ; $5d9c: $00
    ret nz                                        ; $5d9d: $c0

    pop hl                                        ; $5d9e: $e1
    ld [hl], c                                    ; $5d9f: $71
    jp nz, $a30d                                  ; $5da0: $c2 $0d $a3

    ret nz                                        ; $5da3: $c0

    jp hl                                         ; $5da4: $e9


    ld [bc], a                                    ; $5da5: $02
    ld [$8afa], a                                 ; $5da6: $ea $fa $8a
    jp z, $c1e3                                   ; $5da9: $ca $e3 $c1

    ld [c], a                                     ; $5dac: $e2
    nop                                           ; $5dad: $00
    ld b, b                                       ; $5dae: $40
    ld [c], a                                     ; $5daf: $e2
    or a                                          ; $5db0: $b7
    and b                                         ; $5db1: $a0
    nop                                           ; $5db2: $00
    ld [c], a                                     ; $5db3: $e2
    sub e                                         ; $5db4: $93
    ld a, [c]                                     ; $5db5: $f2
    ld a, e                                       ; $5db6: $7b
    ldh a, [$4e]                                  ; $5db7: $f0 $4e
    ret nz                                        ; $5db9: $c0

    pop bc                                        ; $5dba: $c1
    push hl                                       ; $5dbb: $e5
    cp a                                          ; $5dbc: $bf
    and e                                         ; $5dbd: $a3
    nop                                           ; $5dbe: $00
    or b                                          ; $5dbf: $b0
    and b                                         ; $5dc0: $a0
    ld [de], a                                    ; $5dc1: $12
    cp b                                          ; $5dc2: $b8
    ld a, l                                       ; $5dc3: $7d
    push bc                                       ; $5dc4: $c5
    ld [hl], d                                    ; $5dc5: $72
    add [hl]                                      ; $5dc6: $86
    call Call_000_08a0                            ; $5dc7: $cd $a0 $08
    pop bc                                        ; $5dca: $c1
    ld b, $c1                                     ; $5dcb: $06 $c1
    inc a                                         ; $5dcd: $3c
    and c                                         ; $5dce: $a1
    nop                                           ; $5dcf: $00
    ld b, b                                       ; $5dd0: $40
    db $e4                                        ; $5dd1: $e4
    add l                                         ; $5dd2: $85
    add h                                         ; $5dd3: $84
    ld a, $97                                     ; $5dd4: $3e $97
    ld [hl-], a                                   ; $5dd6: $32
    add [hl]                                      ; $5dd7: $86
    and l                                         ; $5dd8: $a5
    and l                                         ; $5dd9: $a5
    inc d                                         ; $5dda: $14
    and l                                         ; $5ddb: $a5
    ld c, [hl]                                    ; $5ddc: $4e
    add h                                         ; $5ddd: $84
    ld a, $9f                                     ; $5dde: $3e $9f
    nop                                           ; $5de0: $00
    or $66                                        ; $5de1: $f6 $66
    push de                                       ; $5de3: $d5
    ld a, b                                       ; $5de4: $78
    ld a, $99                                     ; $5de5: $3e $99
    ld [hl], d                                    ; $5de7: $72
    add l                                         ; $5de8: $85
    sub a                                         ; $5de9: $97
    ld hl, sp+$3e                                 ; $5dea: $f8 $3e
    sbc d                                         ; $5dec: $9a
    ld [hl-], a                                   ; $5ded: $32
    add h                                         ; $5dee: $84
    push de                                       ; $5def: $d5
    ld a, b                                       ; $5df0: $78
    nop                                           ; $5df1: $00
    ld a, $97                                     ; $5df2: $3e $97
    dec a                                         ; $5df4: $3d
    xor $d5                                       ; $5df5: $ee $d5
    ld [hl], d                                    ; $5df7: $72
    dec bc                                        ; $5df8: $0b
    ld h, a                                       ; $5df9: $67
    ld a, a                                       ; $5dfa: $7f
    ld a, b                                       ; $5dfb: $78
    push de                                       ; $5dfc: $d5
    ld a, b                                       ; $5dfd: $78
    dec bc                                        ; $5dfe: $0b
    ld h, a                                       ; $5dff: $67
    ld a, $9a                                     ; $5e00: $3e $9a
    nop                                           ; $5e02: $00
    push de                                       ; $5e03: $d5
    ld [hl], a                                    ; $5e04: $77
    dec bc                                        ; $5e05: $0b
    ld h, a                                       ; $5e06: $67
    cp $59                                        ; $5e07: $fe $59
    push de                                       ; $5e09: $d5
    halt                                          ; $5e0a: $76
    halt                                          ; $5e0b: $76
    db $eb                                        ; $5e0c: $eb
    ccf                                           ; $5e0d: $3f
    ld sp, hl                                     ; $5e0e: $f9
    push de                                       ; $5e0f: $d5
    ld [hl], e                                    ; $5e10: $73
    bit 1, b                                      ; $5e11: $cb $48
    nop                                           ; $5e13: $00
    ld a, [hl]                                    ; $5e14: $7e
    ld d, a                                       ; $5e15: $57
    push de                                       ; $5e16: $d5
    ld a, b                                       ; $5e17: $78
    ld b, c                                       ; $5e18: $41
    add sp, -$80                                  ; $5e19: $e8 $80
    ld hl, sp-$2b                                 ; $5e1b: $f8 $d5
    ld [hl], a                                    ; $5e1d: $77
    inc c                                         ; $5e1e: $0c
    ld c, d                                       ; $5e1f: $4a
    ld b, b                                       ; $5e20: $40
    rst $30                                       ; $5e21: $f7
    push de                                       ; $5e22: $d5
    ld [hl], a                                    ; $5e23: $77
    nop                                           ; $5e24: $00
    cp c                                          ; $5e25: $b9
    sbc [hl]                                      ; $5e26: $9e
    sbc e                                         ; $5e27: $9b
    ld [hl+], a                                   ; $5e28: $22
    push de                                       ; $5e29: $d5
    halt                                          ; $5e2a: $76
    adc d                                         ; $5e2b: $8a
    ld e, b                                       ; $5e2c: $58
    nop                                           ; $5e2d: $00
    db $ec                                        ; $5e2e: $ec
    push de                                       ; $5e2f: $d5
    ld [hl], h                                    ; $5e30: $74
    ret nz                                        ; $5e31: $c0

    rst $38                                       ; $5e32: $ff
    xor b                                         ; $5e33: $a8
    ld [hl], a                                    ; $5e34: $77
    nop                                           ; $5e35: $00
    add b                                         ; $5e36: $80
    rst $38                                       ; $5e37: $ff
    sbc h                                         ; $5e38: $9c
    cp $c0                                        ; $5e39: $fe $c0
    rst $38                                       ; $5e3b: $ff
    db $db                                        ; $5e3c: $db
    rst $38                                       ; $5e3d: $ff
    rst $38                                       ; $5e3e: $ff
    rst $38                                       ; $5e3f: $ff
    rst $38                                       ; $5e40: $ff
    rst $38                                       ; $5e41: $ff
    rst $38                                       ; $5e42: $ff
    rst $38                                       ; $5e43: $ff
    rst $38                                       ; $5e44: $ff
    rst $38                                       ; $5e45: $ff
    nop                                           ; $5e46: $00
    rst $38                                       ; $5e47: $ff
    rst $38                                       ; $5e48: $ff
    rst $38                                       ; $5e49: $ff
    rst $38                                       ; $5e4a: $ff
    rst $38                                       ; $5e4b: $ff
    rst $38                                       ; $5e4c: $ff
    rst $38                                       ; $5e4d: $ff
    rst $38                                       ; $5e4e: $ff
    ld a, [hl+]                                   ; $5e4f: $2a
    ld e, d                                       ; $5e50: $5a
    dec e                                         ; $5e51: $1d
    sbc h                                         ; $5e52: $9c
    ld a, c                                       ; $5e53: $79
    ld a, [hl]                                    ; $5e54: $7e
    ld e, e                                       ; $5e55: $5b
    cp b                                          ; $5e56: $b8
    nop                                           ; $5e57: $00
    ld [c], a                                     ; $5e58: $e2
    ld [hl], b                                    ; $5e59: $70
    rst $38                                       ; $5e5a: $ff
    rst $38                                       ; $5e5b: $ff
    sbc [hl]                                      ; $5e5c: $9e
    adc a                                         ; $5e5d: $8f
    ld [de], a                                    ; $5e5e: $12
    rst $18                                       ; $5e5f: $df
    sbc d                                         ; $5e60: $9a
    cp d                                          ; $5e61: $ba
    ld a, a                                       ; $5e62: $7f
    rst $38                                       ; $5e63: $ff
    ld e, e                                       ; $5e64: $5b
    or a                                          ; $5e65: $b7
    ld [c], a                                     ; $5e66: $e2
    ld l, l                                       ; $5e67: $6d
    nop                                           ; $5e68: $00
    sbc d                                         ; $5e69: $9a
    rst $18                                       ; $5e6a: $df
    ld [hl], b                                    ; $5e6b: $70
    add l                                         ; $5e6c: $85
    ld [c], a                                     ; $5e6d: $e2
    ld [hl], e                                    ; $5e6e: $73
    call nz, $fcfc                                ; $5e6f: $c4 $fc $fc
    db $e3                                        ; $5e72: $e3
    ld [c], a                                     ; $5e73: $e2
    ld a, c                                       ; $5e74: $79
    or b                                          ; $5e75: $b0
    ld d, [hl]                                    ; $5e76: $56
    xor a                                         ; $5e77: $af
    ld h, h                                       ; $5e78: $64
    nop                                           ; $5e79: $00
    ld a, [hl]                                    ; $5e7a: $7e
    ld [c], a                                     ; $5e7b: $e2
    ld [c], a                                     ; $5e7c: $e2
    ld [hl], a                                    ; $5e7d: $77
    xor a                                         ; $5e7e: $af
    ld a, d                                       ; $5e7f: $7a
    cp d                                          ; $5e80: $ba
    add sp, -$1e                                  ; $5e81: $e8 $e2
    halt                                          ; $5e83: $76
    push de                                       ; $5e84: $d5
    ret c                                         ; $5e85: $d8

    ld l, l                                       ; $5e86: $6d
    ld b, c                                       ; $5e87: $41
    ld l, c                                       ; $5e88: $69
    ld h, e                                       ; $5e89: $63
    nop                                           ; $5e8a: $00
    adc l                                         ; $5e8b: $8d
    cp a                                          ; $5e8c: $bf
    ld a, [hl-]                                   ; $5e8d: $3a
    cp $ff                                        ; $5e8e: $fe $ff
    rst $38                                       ; $5e90: $ff
    ld l, b                                       ; $5e91: $68
    inc de                                        ; $5e92: $13
    cp a                                          ; $5e93: $bf
    rst $38                                       ; $5e94: $ff
    sub l                                         ; $5e95: $95
    add $4f                                       ; $5e96: $c6 $4f
    or d                                          ; $5e98: $b2
    ccf                                           ; $5e99: $3f
    db $eb                                        ; $5e9a: $eb
    nop                                           ; $5e9b: $00
    rst $38                                       ; $5e9c: $ff
    rst $38                                       ; $5e9d: $ff
    ld sp, hl                                     ; $5e9e: $f9
    ret nc                                        ; $5e9f: $d0

    ret nz                                        ; $5ea0: $c0

    rst $38                                       ; $5ea1: $ff
    scf                                           ; $5ea2: $37
    ld a, [$ffdc]                                 ; $5ea3: $fa $dc $ff
    rst $38                                       ; $5ea6: $ff
    rst $38                                       ; $5ea7: $ff
    rst $38                                       ; $5ea8: $ff
    rst $38                                       ; $5ea9: $ff
    rst $38                                       ; $5eaa: $ff
    rst $38                                       ; $5eab: $ff
    nop                                           ; $5eac: $00
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
    nop                                           ; $5ebd: $00
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
    nop                                           ; $5eca: $00
    or e                                          ; $5ecb: $b3
    rst $38                                       ; $5ecc: $ff
    rst $38                                       ; $5ecd: $ff
    nop                                           ; $5ece: $00
    rst $38                                       ; $5ecf: $ff
    rst $38                                       ; $5ed0: $ff
    rst $38                                       ; $5ed1: $ff
    rst $38                                       ; $5ed2: $ff
    rst $38                                       ; $5ed3: $ff
    rst $38                                       ; $5ed4: $ff
    rst $38                                       ; $5ed5: $ff
    rst $38                                       ; $5ed6: $ff
    nop                                           ; $5ed7: $00
    nop                                           ; $5ed8: $00
    nop                                           ; $5ed9: $00
    rst $38                                       ; $5eda: $ff
    jr nz, jr_05a_5edd                            ; $5edb: $20 $00

jr_05a_5edd:
    ld sp, $1131                                  ; $5edd: $31 $31 $11
    ld [de], a                                    ; $5ee0: $12
    ld hl, $3b22                                  ; $5ee1: $21 $22 $3b
    inc hl                                        ; $5ee4: $23
    jr nz, @+$01                                  ; $5ee5: $20 $ff

    push hl                                       ; $5ee7: $e5
    nop                                           ; $5ee8: $00
    ld sp, $ff00                                  ; $5ee9: $31 $00 $ff
    rst $38                                       ; $5eec: $ff
    rst $20                                       ; $5eed: $e7
    and $27                                       ; $5eee: $e6 $27
    jr nz, jr_05a_5efe                            ; $5ef0: $20 $0c

    ld sp, $e0ff                                  ; $5ef2: $31 $ff $e0
    cp [hl]                                       ; $5ef5: $be
    jp hl                                         ; $5ef6: $e9


    inc c                                         ; $5ef7: $0c
    ret nz                                        ; $5ef8: $c0

    rst $38                                       ; $5ef9: $ff
    ret nz                                        ; $5efa: $c0

    jp hl                                         ; $5efb: $e9


    sub c                                         ; $5efc: $91
    ld a, [de]                                    ; $5efd: $1a

jr_05a_5efe:
    ret nz                                        ; $5efe: $c0

    pop hl                                        ; $5eff: $e1
    ld a, h                                       ; $5f00: $7c
    ld [c], a                                     ; $5f01: $e2
    ld a, l                                       ; $5f02: $7d
    db $e4                                        ; $5f03: $e4
    ld a, [de]                                    ; $5f04: $1a
    ret nz                                        ; $5f05: $c0

    rst $38                                       ; $5f06: $ff
    jp hl                                         ; $5f07: $e9


    add sp, $0f                                   ; $5f08: $e8 $0f
    ret nz                                        ; $5f0a: $c0

    pop bc                                        ; $5f0b: $c1
    db $e3                                        ; $5f0c: $e3
    ld a, h                                       ; $5f0d: $7c
    ld [c], a                                     ; $5f0e: $e2
    inc a                                         ; $5f0f: $3c
    ld [c], a                                     ; $5f10: $e2
    rst $28                                       ; $5f11: $ef
    ldh [$ca], a                                  ; $5f12: $e0 $ca
    rst $38                                       ; $5f14: $ff
    add sp, -$19                                  ; $5f15: $e8 $e7
    ld sp, $bf31                                  ; $5f17: $31 $31 $bf
    ld c, l                                       ; $5f1a: $4d
    ld a, [hl-]                                   ; $5f1b: $3a
    ld d, h                                       ; $5f1c: $54
    ld d, l                                       ; $5f1d: $55
    ld b, [hl]                                    ; $5f1e: $46
    ld b, a                                       ; $5f1f: $47
    ld a, [hl-]                                   ; $5f20: $3a
    pop hl                                        ; $5f21: $e1
    rlca                                          ; $5f22: $07
    adc a                                         ; $5f23: $8f
    inc bc                                        ; $5f24: $03
    inc bc                                        ; $5f25: $03
    inc bc                                        ; $5f26: $03
    rlca                                          ; $5f27: $07
    ld sp, $cae0                                  ; $5f28: $31 $e0 $ca
    rst $38                                       ; $5f2b: $ff
    ret nz                                        ; $5f2c: $c0

    add sp, $4d                                   ; $5f2d: $e8 $4d
    rst $38                                       ; $5f2f: $ff
    ld [hl-], a                                   ; $5f30: $32
    ld l, d                                       ; $5f31: $6a
    ld l, b                                       ; $5f32: $68
    ld l, d                                       ; $5f33: $6a
    ld l, d                                       ; $5f34: $6a
    ld [hl], $46                                  ; $5f35: $36 $46
    ld d, [hl]                                    ; $5f37: $56
    ret nz                                        ; $5f38: $c0

    cp l                                          ; $5f39: $bd
    ld [c], a                                     ; $5f3a: $e2
    inc sp                                        ; $5f3b: $33
    ld [c], a                                     ; $5f3c: $e2
    jp z, $e8ff                                   ; $5f3d: $ca $ff $e8

    rst $20                                       ; $5f40: $e7
    pop bc                                        ; $5f41: $c1
    ldh [$c0], a                                  ; $5f42: $e0 $c0
    pop hl                                        ; $5f44: $e1
    ld l, d                                       ; $5f45: $6a
    ld l, l                                       ; $5f46: $6d
    adc l                                         ; $5f47: $8d
    ld l, e                                       ; $5f48: $6b
    cp l                                          ; $5f49: $bd
    ldh [$57], a                                  ; $5f4a: $e0 $57
    ld d, a                                       ; $5f4c: $57
    ld a, b                                       ; $5f4d: $78
    ld [c], a                                     ; $5f4e: $e2
    jp z, $e8ff                                   ; $5f4f: $ca $ff $e8

    rst $20                                       ; $5f52: $e7
    add hl, sp                                    ; $5f53: $39
    db $fd                                        ; $5f54: $fd
    ld l, l                                       ; $5f55: $6d
    ret nz                                        ; $5f56: $c0

    ld [c], a                                     ; $5f57: $e2
    ld l, l                                       ; $5f58: $6d
    ld l, e                                       ; $5f59: $6b
    ld l, l                                       ; $5f5a: $6d
    ld l, l                                       ; $5f5b: $6d
    ld l, e                                       ; $5f5c: $6b
    jr nc, jr_05a_5f9e                            ; $5f5d: $30 $3f

    jr nc, @+$6f                                  ; $5f5f: $30 $6d

    ld [hl], $46                                  ; $5f61: $36 $46
    ld d, a                                       ; $5f63: $57
    ld c, l                                       ; $5f64: $4d
    ret nz                                        ; $5f65: $c0

    rst $38                                       ; $5f66: $ff
    jp hl                                         ; $5f67: $e9


    add sp, -$49                                  ; $5f68: $e8 $b7
    ld d, d                                       ; $5f6a: $52
    ld l, h                                       ; $5f6b: $6c
    ld l, h                                       ; $5f6c: $6c
    ld b, b                                       ; $5f6d: $40
    ldh [$6d], a                                  ; $5f6e: $e0 $6d
    ld l, e                                       ; $5f70: $6b
    ret nz                                        ; $5f71: $c0

    ldh [$6d], a                                  ; $5f72: $e0 $6d
    inc c                                         ; $5f74: $0c
    ret nz                                        ; $5f75: $c0

    ldh [$b2], a                                  ; $5f76: $e0 $b2
    ldh [$3d], a                                  ; $5f78: $e0 $3d
    ld c, l                                       ; $5f7a: $4d
    jp z, $c0ff                                   ; $5f7b: $ca $ff $c0

    add sp, -$38                                  ; $5f7e: $e8 $c8
    ldh [$fd], a                                  ; $5f80: $e0 $fd
    and $72                                       ; $5f82: $e6 $72
    cp a                                          ; $5f84: $bf
    db $e3                                        ; $5f85: $e3
    add hl, sp                                    ; $5f86: $39
    jp z, $c0ff                                   ; $5f87: $ca $ff $c0

    ldh a, [$6c]                                  ; $5f8a: $f0 $6c
    ld l, h                                       ; $5f8c: $6c
    ld l, h                                       ; $5f8d: $6c
    ld a, [hl]                                    ; $5f8e: $7e
    db $e4                                        ; $5f8f: $e4
    ld bc, $ca52                                  ; $5f90: $01 $52 $ca
    rst $38                                       ; $5f93: $ff
    add b                                         ; $5f94: $80
    rst $28                                       ; $5f95: $ef
    pop bc                                        ; $5f96: $c1
    ldh [$39], a                                  ; $5f97: $e0 $39
    ldh [$3d], a                                  ; $5f99: $e0 $3d
    ld [c], a                                     ; $5f9b: $e2
    add b                                         ; $5f9c: $80
    rst $38                                       ; $5f9d: $ff

jr_05a_5f9e:
    jp hl                                         ; $5f9e: $e9


    add sp, -$77                                  ; $5f9f: $e8 $89
    add e                                         ; $5fa1: $83
    add d                                         ; $5fa2: $82
    push hl                                       ; $5fa3: $e5
    cp c                                          ; $5fa4: $b9
    jp $be6d                                      ; $5fa5: $c3 $6d $be


    ret nz                                        ; $5fa8: $c0

    nop                                           ; $5fa9: $00
    rst $38                                       ; $5faa: $ff
    jp hl                                         ; $5fab: $e9


    add sp, $79                                   ; $5fac: $e8 $79
    sub c                                         ; $5fae: $91
    ld [hl], c                                    ; $5faf: $71
    ld b, e                                       ; $5fb0: $43
    ld [c], a                                     ; $5fb1: $e2
    ld a, $c0                                     ; $5fb2: $3e $c0
    ld sp, hl                                     ; $5fb4: $f9
    and [hl]                                      ; $5fb5: $a6
    ld h, d                                       ; $5fb6: $62
    jp z, $e8ff                                   ; $5fb7: $ca $ff $e8

    rst $20                                       ; $5fba: $e7
    add b                                         ; $5fbb: $80
    call c, $e1bf                                 ; $5fbc: $dc $bf $e1
    pop bc                                        ; $5fbf: $c1
    ld [c], a                                     ; $5fc0: $e2
    ld l, d                                       ; $5fc1: $6a
    ld l, b                                       ; $5fc2: $68
    ld [hl], $79                                  ; $5fc3: $36 $79
    and c                                         ; $5fc5: $a1
    ld e, l                                       ; $5fc6: $5d
    ld e, h                                       ; $5fc7: $5c
    ld sp, hl                                     ; $5fc8: $f9
    ld e, e                                       ; $5fc9: $5b
    jp z, $c0ff                                   ; $5fca: $ca $ff $c0

    add sp, -$80                                  ; $5fcd: $e8 $80
    ld a, c                                       ; $5fcf: $79
    ld l, [hl]                                    ; $5fd0: $6e
    ld d, l                                       ; $5fd1: $55
    ld d, h                                       ; $5fd2: $54
    sbc a                                         ; $5fd3: $9f
    ld d, h                                       ; $5fd4: $54
    ld d, h                                       ; $5fd5: $54
    dec sp                                        ; $5fd6: $3b
    ld d, [hl]                                    ; $5fd7: $56
    ld d, a                                       ; $5fd8: $57
    ld a, [hl]                                    ; $5fd9: $7e
    and c                                         ; $5fda: $a1
    jp nz, Jump_05a_5be0                          ; $5fdb: $c2 $e0 $5b

    nop                                           ; $5fde: $00
    ret nz                                        ; $5fdf: $c0

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
    nop                                           ; $5fef: $00
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
    nop                                           ; $6000: $00
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
    nop                                           ; $6011: $00
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
    nop                                           ; $6022: $00
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
    nop                                           ; $6033: $00
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
    nop                                           ; $6044: $00
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
    nop                                           ; $6055: $00
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
    nop                                           ; $6066: $00
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
    nop                                           ; $6077: $00
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
    nop                                           ; $6088: $00
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
    nop                                           ; $6099: $00
    rst $38                                       ; $609a: $ff
    rst $38                                       ; $609b: $ff
    rst $38                                       ; $609c: $ff
    rst $38                                       ; $609d: $ff
    rst $38                                       ; $609e: $ff
    rst $38                                       ; $609f: $ff
    rst $38                                       ; $60a0: $ff
    db $f4                                        ; $60a1: $f4
    nop                                           ; $60a2: $00
    nop                                           ; $60a3: $00
    nop                                           ; $60a4: $00
    and l                                         ; $60a5: $a5
    nop                                           ; $60a6: $00
    rst $38                                       ; $60a7: $ff
    push hl                                       ; $60a8: $e5
    ld [hl-], a                                   ; $60a9: $32
    or $e6                                        ; $60aa: $f6 $e6
    rst $30                                       ; $60ac: $f7
    rst $20                                       ; $60ad: $e7
    dec [hl]                                      ; $60ae: $35
    db $ec                                        ; $60af: $ec
    xor $37                                       ; $60b0: $ee $37
    db $ec                                        ; $60b2: $ec
    jp c, $c7f0                                   ; $60b3: $da $f0 $c7

    add sp, $33                                   ; $60b6: $e8 $33
    ld sp, $f2e0                                  ; $60b8: $31 $e0 $f2
    ld [hl], $30                                  ; $60bb: $36 $30
    scf                                           ; $60bd: $37
    cp a                                          ; $60be: $bf
    ld h, $20                                     ; $60bf: $26 $20
    daa                                           ; $60c1: $27
    db $10                                        ; $60c2: $10
    ld d, $17                                     ; $60c3: $16 $17
    jp nz, Jump_000_34f6                          ; $60c5: $c2 $f6 $34

    rst $38                                       ; $60c8: $ff
    ld [hl], $32                                  ; $60c9: $36 $32
    jr nc, jr_05a_6104                            ; $60cb: $30 $37

    ld sp, $3133                                  ; $60cd: $31 $33 $31
    inc sp                                        ; $60d0: $33
    nop                                           ; $60d1: $00
    and b                                         ; $60d2: $a0
    ei                                            ; $60d3: $fb
    rst $38                                       ; $60d4: $ff
    rst $28                                       ; $60d5: $ef
    nop                                           ; $60d6: $00
    nop                                           ; $60d7: $00
    nop                                           ; $60d8: $00

Call_05a_60d9:
    pop hl                                        ; $60d9: $e1
    ld h, b                                       ; $60da: $60
    ld de, $9061                                  ; $60db: $11 $61 $90
    ld h, e                                       ; $60de: $63
    ld [hl], e                                    ; $60df: $73
    ld h, l                                       ; $60e0: $65
    db $ec                                        ; $60e1: $ec
    dec hl                                        ; $60e2: $2b
    ld [hl+], a                                   ; $60e3: $22
    dec sp                                        ; $60e4: $3b
    ld b, b                                       ; $60e5: $40
    ld [hl+], a                                   ; $60e6: $22
    nop                                           ; $60e7: $00
    add hl, bc                                    ; $60e8: $09
    and l                                         ; $60e9: $a5
    ld b, e                                       ; $60ea: $43
    xor $37                                       ; $60eb: $ee $37
    ld [hl+], a                                   ; $60ed: $22
    dec sp                                        ; $60ee: $3b
    ld b, b                                       ; $60ef: $40
    ld [hl+], a                                   ; $60f0: $22
    ccf                                           ; $60f1: $3f
    ld a, a                                       ; $60f2: $7f
    rla                                           ; $60f3: $17
    ld e, [hl]                                    ; $60f4: $5e
    ld de, $2249                                  ; $60f5: $11 $49 $22
    dec sp                                        ; $60f8: $3b
    ld [$0825], sp                                ; $60f9: $08 $25 $08
    dec h                                         ; $60fc: $25
    ld [$0825], sp                                ; $60fd: $08 $25 $08
    dec h                                         ; $6100: $25
    ld [$0825], sp                                ; $6101: $08 $25 $08

jr_05a_6104:
    dec h                                         ; $6104: $25
    ld [$0825], sp                                ; $6105: $08 $25 $08
    dec h                                         ; $6108: $25
    ld [$0825], sp                                ; $6109: $08 $25 $08
    dec h                                         ; $610c: $25
    ld [$0825], sp                                ; $610d: $08 $25 $08
    dec h                                         ; $6110: $25
    dec d                                         ; $6111: $15
    dec bc                                        ; $6112: $0b
    rst $38                                       ; $6113: $ff
    ldh [$4c], a                                  ; $6114: $e0 $4c
    rst $38                                       ; $6116: $ff
    ldh [$0c], a                                  ; $6117: $e0 $0c
    rst $38                                       ; $6119: $ff
    ld [$e0f0], a                                 ; $611a: $ea $f0 $e0
    db $fd                                        ; $611d: $fd
    ld [c], a                                     ; $611e: $e2
    inc c                                         ; $611f: $0c
    ld sp, hl                                     ; $6120: $f9
    ldh [$f2], a                                  ; $6121: $e0 $f2
    db $e4                                        ; $6123: $e4
    inc l                                         ; $6124: $2c
    inc l                                         ; $6125: $2c
    db $dd                                        ; $6126: $dd
    pop hl                                        ; $6127: $e1
    ld a, [$d4e3]                                 ; $6128: $fa $e3 $d4
    jp hl                                         ; $612b: $e9


    ret nz                                        ; $612c: $c0

    pop hl                                        ; $612d: $e1
    nop                                           ; $612e: $00
    cp [hl]                                       ; $612f: $be
    db $e3                                        ; $6130: $e3
    db $fc                                        ; $6131: $fc
    db $e3                                        ; $6132: $e3
    xor $e1                                       ; $6133: $ee $e1
    cp [hl]                                       ; $6135: $be
    db $e3                                        ; $6136: $e3
    xor e                                         ; $6137: $ab
    ld [c], a                                     ; $6138: $e2
    db $fc                                        ; $6139: $fc
    ld [c], a                                     ; $613a: $e2
    or b                                          ; $613b: $b0
    pop hl                                        ; $613c: $e1
    ret nz                                        ; $613d: $c0

    push af                                       ; $613e: $f5
    inc bc                                        ; $613f: $03
    inc l                                         ; $6140: $2c
    inc l                                         ; $6141: $2c
    cp [hl]                                       ; $6142: $be
    db $e3                                        ; $6143: $e3
    ld a, [$8be9]                                 ; $6144: $fa $e9 $8b
    ldh [$82], a                                  ; $6147: $e0 $82
    db $e4                                        ; $6149: $e4
    cp c                                          ; $614a: $b9
    ld [c], a                                     ; $614b: $e2
    ld [hl], b                                    ; $614c: $70
    db $e3                                        ; $614d: $e3
    ldh a, [rPCM12]                               ; $614e: $f0 $76
    ld [c], a                                     ; $6150: $e2
    ld a, [$c0e5]                                 ; $6151: $fa $e5 $c0
    jp hl                                         ; $6154: $e9


    cp [hl]                                       ; $6155: $be
    add sp, $6b                                   ; $6156: $e8 $6b
    ld l, e                                       ; $6158: $6b
    ld c, e                                       ; $6159: $4b
    ld c, e                                       ; $615a: $4b

jr_05a_615b:
    ld b, c                                       ; $615b: $41
    ld c, e                                       ; $615c: $4b
    add b                                         ; $615d: $80
    pop hl                                        ; $615e: $e1
    call nc, Call_000_38ec                        ; $615f: $d4 $ec $38
    db $e4                                        ; $6162: $e4
    jp nz, Jump_05a_7eef                          ; $6163: $c2 $ef $7e

    ld [c], a                                     ; $6166: $e2
    ld l, h                                       ; $6167: $6c
    rst $00                                       ; $6168: $c7
    ldh [$80], a                                  ; $6169: $e0 $80
    pop bc                                        ; $616b: $c1
    db $e4                                        ; $616c: $e4
    cp $e0                                        ; $616d: $fe $e0
    cp a                                          ; $616f: $bf
    ldh [$fb], a                                  ; $6170: $e0 $fb
    push bc                                       ; $6172: $c5
    sub c                                         ; $6173: $91
    push hl                                       ; $6174: $e5
    jr c, jr_05a_615b                             ; $6175: $38 $e4

    ld [bc], a                                    ; $6177: $02
    db $e4                                        ; $6178: $e4
    inc l                                         ; $6179: $2c
    pop bc                                        ; $617a: $c1
    inc l                                         ; $617b: $2c
    ld b, [hl]                                    ; $617c: $46
    db $e4                                        ; $617d: $e4
    db $fd                                        ; $617e: $fd
    add $ca                                       ; $617f: $c6 $ca
    pop hl                                        ; $6181: $e1
    call nz, $80e2                                ; $6182: $c4 $e2 $80
    ld [c], a                                     ; $6185: $e2
    ld c, e                                       ; $6186: $4b
    ld c, e                                       ; $6187: $4b
    nop                                           ; $6188: $00
    rst $00                                       ; $6189: $c7
    jp $c4c0                                      ; $618a: $c3 $c0 $c4


    ccf                                           ; $618d: $3f
    rst $20                                       ; $618e: $e7
    ret nz                                        ; $618f: $c0

    db $ec                                        ; $6190: $ec
    adc [hl]                                      ; $6191: $8e
    push bc                                       ; $6192: $c5
    rst $00                                       ; $6193: $c7
    db $e4                                        ; $6194: $e4
    add e                                         ; $6195: $83
    ld [c], a                                     ; $6196: $e2
    ld a, h                                       ; $6197: $7c
    ld [c], a                                     ; $6198: $e2
    nop                                           ; $6199: $00
    ret nz                                        ; $619a: $c0

    ldh [$7e], a                                  ; $619b: $e0 $7e
    call nz, $c181                                ; $619d: $c4 $81 $c1
    ld [hl], l                                    ; $61a0: $75
    call nz, $cacc                                ; $61a1: $c4 $cc $ca
    pop bc                                        ; $61a4: $c1
    db $eb                                        ; $61a5: $eb
    dec c                                         ; $61a6: $0d
    ldh [$c5], a                                  ; $61a7: $e0 $c5
    pop hl                                        ; $61a9: $e1
    inc b                                         ; $61aa: $04
    ret nz                                        ; $61ab: $c0

    db $e3                                        ; $61ac: $e3
    rst $38                                       ; $61ad: $ff
    ret nz                                        ; $61ae: $c0

    dec hl                                        ; $61af: $2b
    adc [hl]                                      ; $61b0: $8e
    jp $c66f                                      ; $61b1: $c3 $6f $c6


    inc sp                                        ; $61b4: $33
    jp $f4c0                                      ; $61b5: $c3 $c0 $f4


    dec b                                         ; $61b8: $05
    ldh [$2e], a                                  ; $61b9: $e0 $2e
    call $2bc0                                    ; $61bb: $cd $c0 $2b
    dec hl                                        ; $61be: $2b
    dec hl                                        ; $61bf: $2b
    cp h                                          ; $61c0: $bc
    ld [c], a                                     ; $61c1: $e2
    dec bc                                        ; $61c2: $0b
    jp nz, $c0c0                                  ; $61c3: $c2 $c0 $c0

    ldh [rP1], a                                  ; $61c6: $e0 $00
    adc $c6                                       ; $61c8: $ce $c6
    jp hl                                         ; $61ca: $e9


    and h                                         ; $61cb: $a4
    ret nz                                        ; $61cc: $c0

    ret c                                         ; $61cd: $d8

    pop bc                                        ; $61ce: $c1
    pop hl                                        ; $61cf: $e1
    ret nz                                        ; $61d0: $c0

    add sp, -$4b                                  ; $61d1: $e8 $b5
    jp nz, $c6ce                                  ; $61d3: $c2 $ce $c6

    cp [hl]                                       ; $61d6: $be
    call nz, $c000                                ; $61d7: $c4 $00 $c0
    push bc                                       ; $61da: $c5
    ret nz                                        ; $61db: $c0

    di                                            ; $61dc: $f3
    ld a, [hl]                                    ; $61dd: $7e
    and c                                         ; $61de: $a1
    ret nz                                        ; $61df: $c0

    db $ec                                        ; $61e0: $ec
    adc e                                         ; $61e1: $8b
    and e                                         ; $61e2: $a3
    ret nz                                        ; $61e3: $c0

    and l                                         ; $61e4: $a5
    ld b, b                                       ; $61e5: $40
    pop de                                        ; $61e6: $d1
    add e                                         ; $61e7: $83
    add $31                                       ; $61e8: $c6 $31
    dec hl                                        ; $61ea: $2b
    pop bc                                        ; $61eb: $c1
    add sp, $3a                                   ; $61ec: $e8 $3a
    jp $a280                                      ; $61ee: $c3 $80 $a2


    ld c, h                                       ; $61f1: $4c
    inc l                                         ; $61f2: $2c
    push bc                                       ; $61f3: $c5
    and e                                         ; $61f4: $a3
    halt                                          ; $61f5: $76
    call nz, $8060                                ; $61f6: $c4 $60 $80
    rst $30                                       ; $61f9: $f7
    rlca                                          ; $61fa: $07
    ldh [$80], a                                  ; $61fb: $e0 $80
    ld [c], a                                     ; $61fd: $e2
    ld b, e                                       ; $61fe: $43
    ld [c], a                                     ; $61ff: $e2
    jp nz, $0ba2                                  ; $6200: $c2 $a2 $0b

    ld l, e                                       ; $6203: $6b
    ld c, l                                       ; $6204: $4d
    and c                                         ; $6205: $a1
    add c                                         ; $6206: $81
    inc l                                         ; $6207: $2c
    ld b, c                                       ; $6208: $41
    and a                                         ; $6209: $a7
    ld b, b                                       ; $620a: $40
    add $c0                                       ; $620b: $c6 $c0
    or c                                          ; $620d: $b1
    push bc                                       ; $620e: $c5
    ret nz                                        ; $620f: $c0

    ld b, b                                       ; $6210: $40
    pop hl                                        ; $6211: $e1
    ld a, a                                       ; $6212: $7f
    jp nz, Jump_000_000b                          ; $6213: $c2 $0b $00

    ld [hl], e                                    ; $6216: $73
    pop hl                                        ; $6217: $e1

jr_05a_6218:
    dec sp                                        ; $6218: $3b
    ret nz                                        ; $6219: $c0

    adc [hl]                                      ; $621a: $8e
    db $e4                                        ; $621b: $e4
    ret nz                                        ; $621c: $c0

    jp hl                                         ; $621d: $e9


    ld c, d                                       ; $621e: $4a
    or b                                          ; $621f: $b0
    ret nz                                        ; $6220: $c0

    add l                                         ; $6221: $85
    add h                                         ; $6222: $84
    ret nz                                        ; $6223: $c0

    add c                                         ; $6224: $81
    pop hl                                        ; $6225: $e1
    inc bc                                        ; $6226: $03
    ld l, e                                       ; $6227: $6b
    dec hl                                        ; $6228: $2b
    ret nz                                        ; $6229: $c0

    ldh [$79], a                                  ; $622a: $e0 $79
    db $e3                                        ; $622c: $e3
    rst $10                                       ; $622d: $d7
    ld a, [c]                                     ; $622e: $f2
    ret nz                                        ; $622f: $c0

    or $c2                                        ; $6230: $f6 $c2
    call nz, $e03d                                ; $6232: $c4 $3d $e0
    ld c, $79                                     ; $6235: $0e $79
    ldh [$0b], a                                  ; $6237: $e0 $0b
    dec bc                                        ; $6239: $0b
    ld a, [bc]                                    ; $623a: $0a
    ret nz                                        ; $623b: $c0

    add c                                         ; $623c: $81
    jr @-$4d                                      ; $623d: $18 $b1

    xor d                                         ; $623f: $aa
    di                                            ; $6240: $f3
    ld b, $85                                     ; $6241: $06 $85
    nop                                           ; $6243: $00
    ld d, l                                       ; $6244: $55
    and l                                         ; $6245: $a5
    jp z, Jump_000_01c4                           ; $6246: $ca $c4 $01

    sub e                                         ; $6249: $93
    ld l, d                                       ; $624a: $6a
    pop af                                        ; $624b: $f1
    call nc, $c9f7                                ; $624c: $d4 $f7 $c9
    ld h, a                                       ; $624f: $67
    ld bc, $6a85                                  ; $6250: $01 $85 $6a
    di                                            ; $6253: $f3
    nop                                           ; $6254: $00
    push de                                       ; $6255: $d5
    ld [hl], e                                    ; $6256: $73
    ret                                           ; $6257: $c9


    ld l, c                                       ; $6258: $69
    ld bc, $5886                                  ; $6259: $01 $86 $58
    ld h, l                                       ; $625c: $65
    pop bc                                        ; $625d: $c1
    pop bc                                        ; $625e: $c1
    ld a, c                                       ; $625f: $79
    add e                                         ; $6260: $83
    push de                                       ; $6261: $d5
    halt                                          ; $6262: $76
    db $f4                                        ; $6263: $f4
    db $eb                                        ; $6264: $eb
    nop                                           ; $6265: $00
    ld l, [hl]                                    ; $6266: $6e
    rst $20                                       ; $6267: $e7
    ret nz                                        ; $6268: $c0

    db $ec                                        ; $6269: $ec
    push de                                       ; $626a: $d5
    halt                                          ; $626b: $76
    db $f4                                        ; $626c: $f4

jr_05a_626d:
    ld [$8401], a                                 ; $626d: $ea $01 $84
    jr c, jr_05a_6218                             ; $6270: $38 $a6

    ld l, c                                       ; $6272: $69
    call Call_05a_70d5                            ; $6273: $cd $d5 $70
    nop                                           ; $6276: $00
    db $f4                                        ; $6277: $f4
    ld [$65c1], a                                 ; $6278: $ea $c1 $65
    add b                                         ; $627b: $80
    add sp, -$7f                                  ; $627c: $e8 $81
    push hl                                       ; $627e: $e5
    push de                                       ; $627f: $d5

jr_05a_6280:
    halt                                          ; $6280: $76

jr_05a_6281:
    ret                                           ; $6281: $c9


    ld l, b                                       ; $6282: $68
    ld [hl], $6a                                  ; $6283: $36 $6a
    ld d, [hl]                                    ; $6285: $56
    ld c, h                                       ; $6286: $4c
    nop                                           ; $6287: $00
    push de                                       ; $6288: $d5
    ld [hl], l                                    ; $6289: $75
    db $f4                                        ; $628a: $f4
    ld [$edc0], a                                 ; $628b: $ea $c0 $ed
    add b                                         ; $628e: $80
    add sp, -$2b                                  ; $628f: $e8 $d5
    halt                                          ; $6291: $76
    ret                                           ; $6292: $c9


    ld l, b                                       ; $6293: $68
    add b                                         ; $6294: $80
    ld l, h                                       ; $6295: $6c
    rst $38                                       ; $6296: $ff
    xor a                                         ; $6297: $af
    nop                                           ; $6298: $00

jr_05a_6299:
    push de                                       ; $6299: $d5

jr_05a_629a:
    ld [hl], b                                    ; $629a: $70
    ret nz                                        ; $629b: $c0

    rst $08                                       ; $629c: $cf
    ld a, $73                                     ; $629d: $3e $73
    push de                                       ; $629f: $d5
    ld [hl], l                                    ; $62a0: $75
    ret                                           ; $62a1: $c9


    ld l, e                                       ; $62a2: $6b
    ret nz                                        ; $62a3: $c0

    ld hl, sp+$54                                 ; $62a4: $f8 $54
    or a                                          ; $62a6: $b7
    rst $38                                       ; $62a7: $ff
    adc $00                                       ; $62a8: $ce $00
    jr c, jr_05a_629a                             ; $62aa: $38 $ee

    add b                                         ; $62ac: $80
    xor b                                         ; $62ad: $a8
    inc c                                         ; $62ae: $0c
    cp d                                          ; $62af: $ba
    jp c, $8088                                   ; $62b0: $da $88 $80

    adc $55                                       ; $62b3: $ce $55
    dec h                                         ; $62b5: $25
    jr c, jr_05a_626d                             ; $62b6: $38 $b5

    xor c                                         ; $62b8: $a9
    inc c                                         ; $62b9: $0c
    nop                                           ; $62ba: $00
    cp a                                          ; $62bb: $bf
    rst $28                                       ; $62bc: $ef
    adc a                                         ; $62bd: $8f
    dec bc                                        ; $62be: $0b
    dec c                                         ; $62bf: $0d
    cpl                                           ; $62c0: $2f
    ld h, a                                       ; $62c1: $67
    inc c                                         ; $62c2: $0c
    cp l                                          ; $62c3: $bd
    sub d                                         ; $62c4: $92
    jr c, jr_05a_6281                             ; $62c5: $38 $ba

    add b                                         ; $62c7: $80
    ldh a, [rP1]                                  ; $62c8: $f0 $00
    adc b                                         ; $62ca: $88
    nop                                           ; $62cb: $00
    res 5, e                                      ; $62cc: $cb $ab
    jr c, jr_05a_6280                             ; $62ce: $38 $b0

    sbc e                                         ; $62d0: $9b
    add e                                         ; $62d1: $83
    cp b                                          ; $62d2: $b8
    ld c, d                                       ; $62d3: $4a
    ret nz                                        ; $62d4: $c0

    ld l, b                                       ; $62d5: $68
    push bc                                       ; $62d6: $c5
    ld h, [hl]                                    ; $62d7: $66
    jr c, @-$48                                   ; $62d8: $38 $b6

    cp b                                          ; $62da: $b8
    ld d, b                                       ; $62db: $50
    nop                                           ; $62dc: $00
    pop bc                                        ; $62dd: $c1
    ld l, b                                       ; $62de: $68
    ld d, l                                       ; $62df: $55
    dec h                                         ; $62e0: $25
    jr c, jr_05a_6299                             ; $62e1: $38 $b6

    cp b                                          ; $62e3: $b8
    ld d, c                                       ; $62e4: $51
    cp h                                          ; $62e5: $bc
    add hl, bc                                    ; $62e6: $09
    add [hl]                                      ; $62e7: $86
    ld h, e                                       ; $62e8: $63
    dec c                                         ; $62e9: $0d
    dec a                                         ; $62ea: $3d
    cp b                                          ; $62eb: $b8
    ld d, e                                       ; $62ec: $53
    nop                                           ; $62ed: $00
    sbc d                                         ; $62ee: $9a
    xor c                                         ; $62ef: $a9
    jr c, @-$47                                   ; $62f0: $38 $b7

    cp a                                          ; $62f2: $bf
    ld d, c                                       ; $62f3: $51
    ld b, $8a                                     ; $62f4: $06 $8a
    ld [bc], a                                    ; $62f6: $02
    ld h, h                                       ; $62f7: $64
    dec c                                         ; $62f8: $0d
    inc sp                                        ; $62f9: $33
    db $eb                                        ; $62fa: $eb
    pop de                                        ; $62fb: $d1
    ld b, b                                       ; $62fc: $40
    ld [$5500], a                                 ; $62fd: $ea $00 $55
    inc h                                         ; $6300: $24
    dec c                                         ; $6301: $0d
    ld [hl], $23                                  ; $6302: $36 $23
    sub b                                         ; $6304: $90
    add l                                         ; $6305: $85
    ld l, d                                       ; $6306: $6a
    ld d, l                                       ; $6307: $55
    inc hl                                        ; $6308: $23
    dec c                                         ; $6309: $0d
    ld [hl], $eb                                  ; $630a: $36 $eb
    rst $10                                       ; $630c: $d7
    nop                                           ; $630d: $00
    ld b, l                                       ; $630e: $45
    nop                                           ; $630f: $00
    add c                                         ; $6310: $81
    ld b, e                                       ; $6311: $43
    dec c                                         ; $6312: $0d
    inc [hl]                                      ; $6313: $34
    db $eb                                        ; $6314: $eb
    rst $18                                       ; $6315: $df
    cp b                                          ; $6316: $b8
    db $ec                                        ; $6317: $ec
    dec c                                         ; $6318: $0d
    inc l                                         ; $6319: $2c
    inc hl                                        ; $631a: $23
    sub h                                         ; $631b: $94
    cpl                                           ; $631c: $2f
    or a                                          ; $631d: $b7
    dec c                                         ; $631e: $0d
    inc l                                         ; $631f: $2c
    nop                                           ; $6320: $00
    db $eb                                        ; $6321: $eb
    jp nc, $f380                                  ; $6322: $d2 $80 $f3

    and c                                         ; $6325: $a1
    scf                                           ; $6326: $37
    ld b, b                                       ; $6327: $40
    xor l                                         ; $6328: $ad
    pop hl                                        ; $6329: $e1
    add hl, de                                    ; $632a: $19
    ld [hl], b                                    ; $632b: $70
    rst $00                                       ; $632c: $c7
    adc b                                         ; $632d: $88
    ld b, c                                       ; $632e: $41
    db $eb                                        ; $632f: $eb
    call nc, $c100                                ; $6330: $d4 $00 $c1
    ld hl, sp-$48                                 ; $6333: $f8 $b8
    pop bc                                        ; $6335: $c1
    ld a, [hl+]                                   ; $6336: $2a
    ret z                                         ; $6337: $c8

    ld b, b                                       ; $6338: $40
    or d                                          ; $6339: $b2
    pop bc                                        ; $633a: $c1
    ld sp, hl                                     ; $633b: $f9
    ld e, c                                       ; $633c: $59
    inc h                                         ; $633d: $24
    ld a, [hl+]                                   ; $633e: $2a
    call nz, $be40                                ; $633f: $c4 $40 $be
    nop                                           ; $6342: $00
    ld a, [hl-]                                   ; $6343: $3a
    cp $ff                                        ; $6344: $fe $ff
    rst $38                                       ; $6346: $ff
    dec h                                         ; $6347: $25
    ld d, d                                       ; $6348: $52
    cp a                                          ; $6349: $bf
    rst $38                                       ; $634a: $ff
    ld [hl], l                                    ; $634b: $75
    ld c, [hl]                                    ; $634c: $4e
    ld [$3f4a], a                                 ; $634d: $ea $4a $3f
    db $ec                                        ; $6350: $ec
    rst $38                                       ; $6351: $ff
    rst $38                                       ; $6352: $ff
    nop                                           ; $6353: $00
    ld sp, hl                                     ; $6354: $f9
    ret nc                                        ; $6355: $d0

    ret nz                                        ; $6356: $c0

    rst $38                                       ; $6357: $ff
    scf                                           ; $6358: $37
    ld a, [$ffdc]                                 ; $6359: $fa $dc $ff
    rst $38                                       ; $635c: $ff
    rst $38                                       ; $635d: $ff
    rst $38                                       ; $635e: $ff
    rst $38                                       ; $635f: $ff
    rst $38                                       ; $6360: $ff
    rst $38                                       ; $6361: $ff
    rst $38                                       ; $6362: $ff
    rst $38                                       ; $6363: $ff
    nop                                           ; $6364: $00
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
    nop                                           ; $6375: $00
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
    nop                                           ; $6380: $00
    or e                                          ; $6381: $b3
    rst $38                                       ; $6382: $ff
    rst $38                                       ; $6383: $ff
    rst $38                                       ; $6384: $ff
    rst $38                                       ; $6385: $ff
    nop                                           ; $6386: $00
    rst $38                                       ; $6387: $ff
    rst $38                                       ; $6388: $ff
    rst $38                                       ; $6389: $ff
    rst $38                                       ; $638a: $ff
    rst $38                                       ; $638b: $ff
    rst $38                                       ; $638c: $ff
    nop                                           ; $638d: $00
    nop                                           ; $638e: $00
    nop                                           ; $638f: $00
    ld a, l                                       ; $6390: $7d
    ld sp, $e0ff                                  ; $6391: $31 $ff $e0
    ld de, $2112                                  ; $6394: $11 $12 $21
    jr z, @+$22                                   ; $6397: $28 $20

    rst $38                                       ; $6399: $ff
    and $87                                       ; $639a: $e6 $87
    ld a, [bc]                                    ; $639c: $0a
    dec bc                                        ; $639d: $0b
    nop                                           ; $639e: $00
    rst $38                                       ; $639f: $ff
    rst $38                                       ; $63a0: $ff
    rst $20                                       ; $63a1: $e7
    and $c0                                       ; $63a2: $e6 $c0
    pop hl                                        ; $63a4: $e1
    cp [hl]                                       ; $63a5: $be
    pop hl                                        ; $63a6: $e1
    dec b                                         ; $63a7: $05
    sbc [hl]                                      ; $63a8: $9e
    rst $38                                       ; $63a9: $ff
    db $e4                                        ; $63aa: $e4
    ld a, [bc]                                    ; $63ab: $0a
    dec bc                                        ; $63ac: $0b
    ld sp, $ca31                                  ; $63ad: $31 $31 $ca
    rst $38                                       ; $63b0: $ff

jr_05a_63b1:
    add sp, -$19                                  ; $63b1: $e8 $e7
    ld [de], a                                    ; $63b3: $12
    ld h, c                                       ; $63b4: $61
    ld de, $e3be                                  ; $63b5: $11 $be $e3
    ld a, [$cae9]                                 ; $63b8: $fa $e9 $ca
    rst $38                                       ; $63bb: $ff
    add sp, -$19                                  ; $63bc: $e8 $e7
    ld [hl+], a                                   ; $63be: $22
    ld hl, $e8be                                  ; $63bf: $21 $be $e8
    sbc a                                         ; $63c2: $9f
    ld b, a                                       ; $63c3: $47
    ld b, [hl]                                    ; $63c4: $46
    ld d, h                                       ; $63c5: $54
    dec sp                                        ; $63c6: $3b
    ld c, l                                       ; $63c7: $4d
    ret nz                                        ; $63c8: $c0

    rst $38                                       ; $63c9: $ff
    ld [$20e9], a                                 ; $63ca: $ea $e9 $20
    rst $30                                       ; $63cd: $f7
    jr nz, jr_05a_63f1                            ; $63ce: $20 $21

    add hl, hl                                    ; $63d0: $29
    rst $00                                       ; $63d1: $c7
    ldh [rRP], a                                  ; $63d2: $e0 $56
    ld d, [hl]                                    ; $63d4: $56
    ld d, a                                       ; $63d5: $57
    ld d, [hl]                                    ; $63d6: $56
    rst $38                                       ; $63d7: $ff
    ld d, a                                       ; $63d8: $57
    ld b, [hl]                                    ; $63d9: $46
    ld [hl], $6c                                  ; $63da: $36 $6c
    ld l, h                                       ; $63dc: $6c
    ld l, h                                       ; $63dd: $6c
    ld [hl-], a                                   ; $63de: $32
    ld c, l                                       ; $63df: $4d
    inc [hl]                                      ; $63e0: $34
    ret nz                                        ; $63e1: $c0

    rst $38                                       ; $63e2: $ff
    ret nz                                        ; $63e3: $c0

    ld [$890e], a                                 ; $63e4: $ea $0e $89
    ldh [$36], a                                  ; $63e7: $e0 $36
    jr nc, jr_05a_63b1                            ; $63e9: $30 $c6

    ldh [$fd], a                                  ; $63eb: $e0 $fd
    pop hl                                        ; $63ed: $e1
    sbc a                                         ; $63ee: $9f
    jr nc, @+$32                                  ; $63ef: $30 $30

jr_05a_63f1:
    jr nc, jr_05a_6425                            ; $63f1: $30 $32

    ld c, l                                       ; $63f3: $4d
    jp z, $80ff                                   ; $63f4: $ca $ff $80

    add sp, $0e                                   ; $63f7: $e8 $0e
    cp a                                          ; $63f9: $bf
    ld c, l                                       ; $63fa: $4d
    ld b, [hl]                                    ; $63fb: $46
    ld [hl], $6a                                  ; $63fc: $36 $6a
    ld l, d                                       ; $63fe: $6a
    ld l, l                                       ; $63ff: $6d
    cp a                                          ; $6400: $bf
    db $e3                                        ; $6401: $e3
    jr nc, jr_05a_6476                            ; $6402: $30 $72

    cp b                                          ; $6404: $b8
    pop hl                                        ; $6405: $e1
    add hl, sp                                    ; $6406: $39
    jp z, $e8ff                                   ; $6407: $ca $ff $e8

    rst $20                                       ; $640a: $e7
    ld c, $4d                                     ; $640b: $0e $4d
    ld [hl-], a                                   ; $640d: $32
    adc d                                         ; $640e: $8a
    ldh [$7e], a                                  ; $640f: $e0 $7e
    cp a                                          ; $6411: $bf
    push hl                                       ; $6412: $e5
    jr nc, jr_05a_6445                            ; $6413: $30 $30

    ld l, d                                       ; $6415: $6a
    ld l, b                                       ; $6416: $68
    ld l, b                                       ; $6417: $68
    ld d, d                                       ; $6418: $52
    jp z, Jump_05a_7aff                           ; $6419: $ca $ff $7a

    ld b, b                                       ; $641c: $40
    ret z                                         ; $641d: $c8

    add hl, sp                                    ; $641e: $39
    ld b, l                                       ; $641f: $45
    ldh [$30], a                                  ; $6420: $e0 $30
    ld l, c                                       ; $6422: $69
    ld l, c                                       ; $6423: $69
    ld l, e                                       ; $6424: $6b

jr_05a_6425:
    ld a, $e1                                     ; $6425: $3e $e1
    sub a                                         ; $6427: $97
    jr nc, jr_05a_6495                            ; $6428: $30 $6b

    ld l, d                                       ; $642a: $6a
    ccf                                           ; $642b: $3f
    ldh [rHDMA3], a                               ; $642c: $e0 $53
    jp z, $e8ff                                   ; $642e: $ca $ff $e8

    rst $20                                       ; $6431: $e7
    scf                                           ; $6432: $37
    ld a, c                                       ; $6433: $79
    ld b, d                                       ; $6434: $42
    ld a, [bc]                                    ; $6435: $0a
    pop hl                                        ; $6436: $e1
    ret nz                                        ; $6437: $c0

    and $69                                       ; $6438: $e6 $69
    jr nc, @+$6e                                  ; $643a: $30 $6c

    jr nc, jr_05a_647e                            ; $643c: $30 $40

    rst $38                                       ; $643e: $ff
    jp nz, $e8e9                                  ; $643f: $c2 $e9 $e8

    add hl, sp                                    ; $6442: $39
    adc $c0                                       ; $6443: $ce $c0

jr_05a_6445:
    ld c, d                                       ; $6445: $4a
    ldh [rIE], a                                  ; $6446: $e0 $ff
    jp $e2c0                                      ; $6448: $c3 $c0 $e2


    ld [hl], $37                                  ; $644b: $36 $37
    call c, $ffca                                 ; $644d: $dc $ca $ff
    ret nz                                        ; $6450: $c0

    jp hl                                         ; $6451: $e9


    ld l, b                                       ; $6452: $68
    ld l, b                                       ; $6453: $68
    ld l, b                                       ; $6454: $68
    ld bc, $6be6                                  ; $6455: $01 $e6 $6b
    ld l, c                                       ; $6458: $69
    ld h, a                                       ; $6459: $67
    ld [hl], $3b                                  ; $645a: $36 $3b
    ld b, a                                       ; $645c: $47
    ld b, b                                       ; $645d: $40
    rst $18                                       ; $645e: $df
    jp hl                                         ; $645f: $e9


    add sp, $4d                                   ; $6460: $e8 $4d
    ld [hl-], a                                   ; $6462: $32
    ret nz                                        ; $6463: $c0

    ldh [$dd], a                                  ; $6464: $e0 $dd
    ld l, b                                       ; $6466: $68
    add c                                         ; $6467: $81
    pop bc                                        ; $6468: $c1
    ld [hl], $55                                  ; $6469: $36 $55
    ld a, [hl-]                                   ; $646b: $3a
    ld a, [$47a0]                                 ; $646c: $fa $a0 $47
    ld sp, $31c3                                  ; $646f: $31 $c3 $31
    ld h, b                                       ; $6472: $60
    jp z, Jump_000_00ff                           ; $6473: $ca $ff $00

jr_05a_6476:
    xor b                                         ; $6476: $a8
    cp a                                          ; $6477: $bf
    ldh [$09], a                                  ; $6478: $e0 $09
    ret nz                                        ; $647a: $c0

    ld l, h                                       ; $647b: $6c
    ld l, h                                       ; $647c: $6c
    rst $28                                       ; $647d: $ef

jr_05a_647e:
    ld [hl], c                                    ; $647e: $71
    ld l, a                                       ; $647f: $6f
    add b                                         ; $6480: $80
    and c                                         ; $6481: $a1
    or e                                          ; $6482: $b3
    add c                                         ; $6483: $81
    ld e, l                                       ; $6484: $5d
    ld e, h                                       ; $6485: $5c
    ld e, e                                       ; $6486: $5b
    db $ec                                        ; $6487: $ec
    jp z, $c0ff                                   ; $6488: $ca $ff $c0

    adc c                                         ; $648b: $89
    ld c, l                                       ; $648c: $4d
    ld [hl-], a                                   ; $648d: $32
    res 4, b                                      ; $648e: $cb $a0
    ld l, h                                       ; $6490: $6c
    ld [hl], c                                    ; $6491: $71
    ld a, c                                       ; $6492: $79
    ret                                           ; $6493: $c9


    add b                                         ; $6494: $80

jr_05a_6495:
    ret nz                                        ; $6495: $c0

    pop hl                                        ; $6496: $e1
    jp nz, Jump_05a_5be0                          ; $6497: $c2 $e0 $5b

    ret nz                                        ; $649a: $c0

    rst $38                                       ; $649b: $ff
    add b                                         ; $649c: $80
    adc e                                         ; $649d: $8b
    xor a                                         ; $649e: $af
    ld l, [hl]                                    ; $649f: $6e
    rst $20                                       ; $64a0: $e7
    ld d, h                                       ; $64a1: $54
    ld d, h                                       ; $64a2: $54
    ld l, [hl]                                    ; $64a3: $6e
    pop bc                                        ; $64a4: $c1
    ldh [$80], a                                  ; $64a5: $e0 $80
    ldh [$60], a                                  ; $64a7: $e0 $60
    ld e, e                                       ; $64a9: $5b
    ld e, e                                       ; $64aa: $5b
    ld bc, $c05a                                  ; $64ab: $01 $5a $c0
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
    nop                                           ; $64bb: $00
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
    nop                                           ; $64cc: $00
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
    nop                                           ; $64dd: $00
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
    nop                                           ; $64ee: $00
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

Jump_05a_64fa:
    rst $38                                       ; $64fa: $ff
    rst $38                                       ; $64fb: $ff
    rst $38                                       ; $64fc: $ff
    rst $38                                       ; $64fd: $ff
    rst $38                                       ; $64fe: $ff

Jump_05a_64ff:
    nop                                           ; $64ff: $00
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
    nop                                           ; $6510: $00
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
    nop                                           ; $6521: $00
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
    nop                                           ; $6532: $00
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
    nop                                           ; $6543: $00
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
    nop                                           ; $6554: $00
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
    nop                                           ; $6565: $00
    rst $38                                       ; $6566: $ff
    rst $38                                       ; $6567: $ff
    rst $38                                       ; $6568: $ff
    rst $38                                       ; $6569: $ff
    rst $38                                       ; $656a: $ff
    rst $38                                       ; $656b: $ff
    rst $38                                       ; $656c: $ff
    rst $38                                       ; $656d: $ff
    rst $38                                       ; $656e: $ff
    push af                                       ; $656f: $f5
    nop                                           ; $6570: $00
    nop                                           ; $6571: $00
    nop                                           ; $6572: $00
    and l                                         ; $6573: $a5
    nop                                           ; $6574: $00
    rst $38                                       ; $6575: $ff
    push hl                                       ; $6576: $e5
    ld [hl-], a                                   ; $6577: $32
    or $e6                                        ; $6578: $f6 $e6
    rst $30                                       ; $657a: $f7
    rst $20                                       ; $657b: $e7
    dec [hl]                                      ; $657c: $35
    db $ec                                        ; $657d: $ec
    xor $37                                       ; $657e: $ee $37
    db $ec                                        ; $6580: $ec
    jp c, $c7f0                                   ; $6581: $da $f0 $c7

    add sp, $33                                   ; $6584: $e8 $33
    ld sp, $f2e0                                  ; $6586: $31 $e0 $f2
    ld [hl], $30                                  ; $6589: $36 $30
    scf                                           ; $658b: $37
    cp a                                          ; $658c: $bf
    ld h, $20                                     ; $658d: $26 $20
    daa                                           ; $658f: $27
    db $10                                        ; $6590: $10
    ld d, $17                                     ; $6591: $16 $17
    jp nz, Jump_000_34f6                          ; $6593: $c2 $f6 $34

    rst $38                                       ; $6596: $ff
    ld [hl], $32                                  ; $6597: $36 $32
    jr nc, jr_05a_65d2                            ; $6599: $30 $37

    ld sp, $3133                                  ; $659b: $31 $33 $31
    inc sp                                        ; $659e: $33
    nop                                           ; $659f: $00
    and b                                         ; $65a0: $a0
    ei                                            ; $65a1: $fb
    rst $38                                       ; $65a2: $ff
    rst $28                                       ; $65a3: $ef
    nop                                           ; $65a4: $00
    nop                                           ; $65a5: $00
    nop                                           ; $65a6: $00
    xor a                                         ; $65a7: $af
    ld h, l                                       ; $65a8: $65
    rst $18                                       ; $65a9: $df
    ld h, l                                       ; $65aa: $65
    ld a, b                                       ; $65ab: $78
    ld l, b                                       ; $65ac: $68
    adc d                                         ; $65ad: $8a
    ld l, d                                       ; $65ae: $6a
    db $ec                                        ; $65af: $ec
    dec hl                                        ; $65b0: $2b
    ld [hl+], a                                   ; $65b1: $22
    dec sp                                        ; $65b2: $3b
    ld b, b                                       ; $65b3: $40
    ld [hl+], a                                   ; $65b4: $22
    nop                                           ; $65b5: $00
    add hl, bc                                    ; $65b6: $09
    and l                                         ; $65b7: $a5
    ld b, e                                       ; $65b8: $43
    xor $37                                       ; $65b9: $ee $37
    ld [hl+], a                                   ; $65bb: $22
    dec sp                                        ; $65bc: $3b
    ld b, b                                       ; $65bd: $40
    ld [hl+], a                                   ; $65be: $22
    ccf                                           ; $65bf: $3f
    ld a, a                                       ; $65c0: $7f
    rla                                           ; $65c1: $17
    ld e, [hl]                                    ; $65c2: $5e
    ld de, $2249                                  ; $65c3: $11 $49 $22
    dec sp                                        ; $65c6: $3b
    ld [$0825], sp                                ; $65c7: $08 $25 $08
    dec h                                         ; $65ca: $25
    ld [$0825], sp                                ; $65cb: $08 $25 $08
    dec h                                         ; $65ce: $25
    ld [$0825], sp                                ; $65cf: $08 $25 $08

jr_05a_65d2:
    dec h                                         ; $65d2: $25
    ld [$0825], sp                                ; $65d3: $08 $25 $08
    dec h                                         ; $65d6: $25
    ld [$0825], sp                                ; $65d7: $08 $25 $08
    dec h                                         ; $65da: $25
    ld [$0825], sp                                ; $65db: $08 $25 $08
    dec h                                         ; $65de: $25
    db $eb                                        ; $65df: $eb
    ld a, [bc]                                    ; $65e0: $0a
    dec bc                                        ; $65e1: $0b
    rst $38                                       ; $65e2: $ff
    ldh [rOCPD], a                                ; $65e3: $e0 $6b
    ei                                            ; $65e5: $fb
    pop hl                                        ; $65e6: $e1
    dec bc                                        ; $65e7: $0b
    dec bc                                        ; $65e8: $0b
    dec hl                                        ; $65e9: $2b
    ld [hl], a                                    ; $65ea: $77
    dec bc                                        ; $65eb: $0b
    ld c, e                                       ; $65ec: $4b
    dec bc                                        ; $65ed: $0b
    ldh a, [$e1]                                  ; $65ee: $f0 $e1
    inc c                                         ; $65f0: $0c
    inc c                                         ; $65f1: $0c
    ld c, h                                       ; $65f2: $4c
    rst $38                                       ; $65f3: $ff
    ldh [$81], a                                  ; $65f4: $e0 $81
    inc c                                         ; $65f6: $0c
    ld sp, hl                                     ; $65f7: $f9
    ldh [$fd], a                                  ; $65f8: $e0 $fd
    ld [c], a                                     ; $65fa: $e2
    ld hl, sp-$1d                                 ; $65fb: $f8 $e3
    db $f4                                        ; $65fd: $f4
    push hl                                       ; $65fe: $e5
    db $fc                                        ; $65ff: $fc
    db $ec                                        ; $6600: $ec
    jp z, $6be1                                   ; $6601: $ca $e1 $6b

    rst $38                                       ; $6604: $ff
    ld l, e                                       ; $6605: $6b
    dec hl                                        ; $6606: $2b
    dec hl                                        ; $6607: $2b
    dec bc                                        ; $6608: $0b
    dec hl                                        ; $6609: $2b
    dec hl                                        ; $660a: $2b
    dec hl                                        ; $660b: $2b
    ld c, e                                       ; $660c: $4b
    ld e, l                                       ; $660d: $5d
    ld c, e                                       ; $660e: $4b
    cp l                                          ; $660f: $bd
    ldh [$0b], a                                  ; $6610: $e0 $0b
    dec bc                                        ; $6612: $0b
    ld a, [bc]                                    ; $6613: $0a
    call Call_05a_4ce2                            ; $6614: $cd $e2 $4c
    db $fd                                        ; $6617: $fd
    and $0e                                       ; $6618: $e6 $0e
    or l                                          ; $661a: $b5
    db $e3                                        ; $661b: $e3
    ld c, h                                       ; $661c: $4c
    inc c                                         ; $661d: $0c
    inc l                                         ; $661e: $2c
    ret nz                                        ; $661f: $c0

    di                                            ; $6620: $f3
    add c                                         ; $6621: $81
    ldh [$c4], a                                  ; $6622: $e0 $c4
    ldh [$c0], a                                  ; $6624: $e0 $c0
    pop hl                                        ; $6626: $e1
    add e                                         ; $6627: $83

Jump_05a_6628:
    dec hl                                        ; $6628: $2b
    ld c, e                                       ; $6629: $4b
    ld a, h                                       ; $662a: $7c
    ldh [$be], a                                  ; $662b: $e0 $be
    ldh [$c0], a                                  ; $662d: $e0 $c0
    jp hl                                         ; $662f: $e9


    cp c                                          ; $6630: $b9
    ldh [$b2], a                                  ; $6631: $e0 $b2
    db $e4                                        ; $6633: $e4
    inc l                                         ; $6634: $2c
    ld [$f6c0], sp                                ; $6635: $08 $c0 $f6
    add h                                         ; $6638: $84
    pop hl                                        ; $6639: $e1
    add b                                         ; $663a: $80
    pop hl                                        ; $663b: $e1
    ld l, e                                       ; $663c: $6b
    cp a                                          ; $663d: $bf
    pop hl                                        ; $663e: $e1
    inc a                                         ; $663f: $3c
    ldh [rWX], a                                  ; $6640: $e0 $4b
    db $e4                                        ; $6642: $e4
    ld a, [hl]                                    ; $6643: $7e
    ld [c], a                                     ; $6644: $e2
    sbc d                                         ; $6645: $9a
    ld b, a                                       ; $6646: $47
    push hl                                       ; $6647: $e5
    ld c, h                                       ; $6648: $4c
    ret nz                                        ; $6649: $c0

    db $f4                                        ; $664a: $f4
    inc l                                         ; $664b: $2c
    inc l                                         ; $664c: $2c
    ret nz                                        ; $664d: $c0

    db $e4                                        ; $664e: $e4
    ld a, [hl-]                                   ; $664f: $3a
    ldh [rWX], a                                  ; $6650: $e0 $4b
    ld b, b                                       ; $6652: $40
    rst $38                                       ; $6653: $ff
    pop hl                                        ; $6654: $e1
    ret nz                                        ; $6655: $c0

    pop hl                                        ; $6656: $e1
    ld b, $e1                                     ; $6657: $06 $e1
    add d                                         ; $6659: $82
    db $e4                                        ; $665a: $e4
    ld b, b                                       ; $665b: $40
    add sp, $00                                   ; $665c: $e8 $00
    push hl                                       ; $665e: $e5
    inc l                                         ; $665f: $2c
    ld sp, hl                                     ; $6660: $f9
    db $eb                                        ; $6661: $eb
    dec b                                         ; $6662: $05
    inc l                                         ; $6663: $2c
    cp $c2                                        ; $6664: $fe $c2
    ld l, e                                       ; $6666: $6b
    ret nz                                        ; $6667: $c0

    push hl                                       ; $6668: $e5
    cp a                                          ; $6669: $bf
    ldh [$cd], a                                  ; $666a: $e0 $cd
    call nz, $e6fa                                ; $666c: $c4 $fa $e6
    pop af                                        ; $666f: $f1
    call nz, $c214                                ; $6670: $c4 $14 $c2
    ret nc                                        ; $6673: $d0

    ld l, b                                       ; $6674: $68
    ld [c], a                                     ; $6675: $e2
    ld c, h                                       ; $6676: $4c
    ld b, l                                       ; $6677: $45
    pop hl                                        ; $6678: $e1
    ld l, e                                       ; $6679: $6b
    inc b                                         ; $667a: $04
    ldh [$80], a                                  ; $667b: $e0 $80
    ld [c], a                                     ; $667d: $e2
    ld a, e                                       ; $667e: $7b
    ret nz                                        ; $667f: $c0

    nop                                           ; $6680: $00
    db $e3                                        ; $6681: $e3
    rst $20                                       ; $6682: $e7
    or a                                          ; $6683: $b7
    push hl                                       ; $6684: $e5
    ld a, a                                       ; $6685: $7f
    call nz, $f3c0                                ; $6686: $c4 $c0 $f3
    ld a, $e0                                     ; $6689: $3e $e0
    add h                                         ; $668b: $84
    pop bc                                        ; $668c: $c1
    inc b                                         ; $668d: $04
    ld [c], a                                     ; $668e: $e2
    ret nz                                        ; $668f: $c0

    pop hl                                        ; $6690: $e1
    stop                                          ; $6691: $10 $00
    ld [c], a                                     ; $6693: $e2
    ret nz                                        ; $6694: $c0

    ret z                                         ; $6695: $c8

    ccf                                           ; $6696: $3f
    rst $20                                       ; $6697: $e7
    ld a, [hl]                                    ; $6698: $7e
    di                                            ; $6699: $f3
    inc l                                         ; $669a: $2c
    db $fc                                        ; $669b: $fc
    jp nz, $e343                                  ; $669c: $c2 $43 $e3

    ret nz                                        ; $669f: $c0

    push hl                                       ; $66a0: $e5
    nop                                           ; $66a1: $00
    cp [hl]                                       ; $66a2: $be
    push hl                                       ; $66a3: $e5
    add c                                         ; $66a4: $81
    pop bc                                        ; $66a5: $c1
    dec [hl]                                      ; $66a6: $35
    call nz, $f4c1                                ; $66a7: $c4 $c1 $f4
    cp e                                          ; $66aa: $bb
    push bc                                       ; $66ab: $c5
    ret nz                                        ; $66ac: $c0

    push hl                                       ; $66ad: $e5
    ret nz                                        ; $66ae: $c0

    and e                                         ; $66af: $a3
    cp $a2                                        ; $66b0: $fe $a2
    ld [$e4fe], sp                                ; $66b2: $08 $fe $e4
    ld [hl], l                                    ; $66b5: $75
    add $bf                                       ; $66b6: $c6 $bf
    ld hl, sp+$4c                                 ; $66b8: $f8 $4c
    ccf                                           ; $66ba: $3f
    pop hl                                        ; $66bb: $e1
    pop bc                                        ; $66bc: $c1
    db $e4                                        ; $66bd: $e4
    nop                                           ; $66be: $00
    jp nz, $c5ce                                  ; $66bf: $c2 $ce $c5

    nop                                           ; $66c2: $00
    adc h                                         ; $66c3: $8c
    and h                                         ; $66c4: $a4
    ret nz                                        ; $66c5: $c0

    ret z                                         ; $66c6: $c8

    add c                                         ; $66c7: $81
    jp nz, $c47c                                  ; $66c8: $c2 $7c $c4

    jp hl                                         ; $66cb: $e9


    push bc                                       ; $66cc: $c5
    ld a, [hl-]                                   ; $66cd: $3a
    ret nz                                        ; $66ce: $c0

    ld b, d                                       ; $66cf: $42
    and $c0                                       ; $66d0: $e6 $c0
    and h                                         ; $66d2: $a4
    ld [hl], b                                    ; $66d3: $70
    ld c, l                                       ; $66d4: $4d
    and a                                         ; $66d5: $a7
    rst $38                                       ; $66d6: $ff
    and l                                         ; $66d7: $a5
    dec sp                                        ; $66d8: $3b
    or d                                          ; $66d9: $b2
    ld d, $a4                                     ; $66da: $16 $a4
    inc c                                         ; $66dc: $0c
    dec hl                                        ; $66dd: $2b
    ld c, e                                       ; $66de: $4b
    add [hl]                                      ; $66df: $86
    and c                                         ; $66e0: $a1
    add [hl]                                      ; $66e1: $86
    db $fc                                        ; $66e2: $fc
    add c                                         ; $66e3: $81
    dec bc                                        ; $66e4: $0b
    ld l, h                                       ; $66e5: $6c
    sub e                                         ; $66e6: $93
    call nz, $e644                                ; $66e7: $c4 $44 $e6
    ld b, b                                       ; $66ea: $40
    add $3b                                       ; $66eb: $c6 $3b
    or b                                          ; $66ed: $b0
    dec bc                                        ; $66ee: $0b
    ld bc, $d60b                                  ; $66ef: $01 $0b $d6
    add c                                         ; $66f2: $81
    ret z                                         ; $66f3: $c8

    ld [c], a                                     ; $66f4: $e2
    nop                                           ; $66f5: $00
    and c                                         ; $66f6: $a1
    ld bc, $ffe3                                  ; $66f7: $01 $e3 $ff
    add [hl]                                      ; $66fa: $86
    ld a, l                                       ; $66fb: $7d
    add $ad                                       ; $66fc: $c6 $ad
    push hl                                       ; $66fe: $e5
    ld [bc], a                                    ; $66ff: $02
    dec sp                                        ; $6700: $3b
    and b                                         ; $6701: $a0
    inc l                                         ; $6702: $2c
    ret nz                                        ; $6703: $c0

    and b                                         ; $6704: $a0
    adc l                                         ; $6705: $8d
    ret nz                                        ; $6706: $c0

    cp d                                          ; $6707: $ba
    and h                                         ; $6708: $a4
    rrca                                          ; $6709: $0f
    ld [c], a                                     ; $670a: $e2
    adc b                                         ; $670b: $88
    db $e3                                        ; $670c: $e3
    halt                                          ; $670d: $76
    add c                                         ; $670e: $81
    nop                                           ; $670f: $00
    cp $80                                        ; $6710: $fe $80
    add c                                         ; $6712: $81
    ldh [$8d], a                                  ; $6713: $e0 $8d
    add l                                         ; $6715: $85
    ld c, c                                       ; $6716: $49
    add sp, $34                                   ; $6717: $e8 $34
    and h                                         ; $6719: $a4
    ei                                            ; $671a: $fb
    add h                                         ; $671b: $84
    ret nz                                        ; $671c: $c0

    rst $20                                       ; $671d: $e7
    res 4, b                                      ; $671e: $cb $a0
    jr nz, jr_05a_6768                            ; $6720: $20 $46

    and c                                         ; $6722: $a1
    ret nz                                        ; $6723: $c0

    add sp, -$16                                  ; $6724: $e8 $ea
    add $c0                                       ; $6726: $c6 $c0
    db $eb                                        ; $6728: $eb
    db $d3                                        ; $6729: $d3
    push bc                                       ; $672a: $c5
    ld c, h                                       ; $672b: $4c
    add c                                         ; $672c: $81
    ld [$8e15], a                                 ; $672d: $ea $15 $8e
    nop                                           ; $6730: $00
    xor e                                         ; $6731: $ab
    rst $00                                       ; $6732: $c7
    ld c, l                                       ; $6733: $4d
    and [hl]                                      ; $6734: $a6
    dec sp                                        ; $6735: $3b
    xor h                                         ; $6736: $ac
    ret nz                                        ; $6737: $c0

    db $ec                                        ; $6738: $ec
    dec d                                         ; $6739: $15
    adc b                                         ; $673a: $88
    sub l                                         ; $673b: $95
    add $c0                                       ; $673c: $c6 $c0
    add d                                         ; $673e: $82
    dec sp                                        ; $673f: $3b
    or l                                          ; $6740: $b5
    ld b, b                                       ; $6741: $40
    or a                                          ; $6742: $b7
    ld l, [hl]                                    ; $6743: $6e
    dec d                                         ; $6744: $15
    add a                                         ; $6745: $87
    ld [de], a                                    ; $6746: $12
    add $be                                       ; $6747: $c6 $be
    ld l, l                                       ; $6749: $6d
    ld a, d                                       ; $674a: $7a
    adc e                                         ; $674b: $8b
    cp h                                          ; $674c: $bc
    pop bc                                        ; $674d: $c1
    inc l                                         ; $674e: $2c
    ld a, c                                       ; $674f: $79
    add h                                         ; $6750: $84
    nop                                           ; $6751: $00
    dec d                                         ; $6752: $15
    adc c                                         ; $6753: $89
    adc d                                         ; $6754: $8a
    adc b                                         ; $6755: $88
    pop bc                                        ; $6756: $c1
    ret z                                         ; $6757: $c8

    dec sp                                        ; $6758: $3b
    xor l                                         ; $6759: $ad
    ld a, h                                       ; $675a: $7c
    jp $e5c0                                      ; $675b: $c3 $c0 $e5


    dec d                                         ; $675e: $15
    adc c                                         ; $675f: $89
    db $10                                        ; $6760: $10
    ld l, c                                       ; $6761: $69
    nop                                           ; $6762: $00
    ccf                                           ; $6763: $3f
    add l                                         ; $6764: $85
    dec sp                                        ; $6765: $3b
    xor a                                         ; $6766: $af
    ret nz                                        ; $6767: $c0

jr_05a_6768:
    db $e4                                        ; $6768: $e4
    rst $38                                       ; $6769: $ff
    rst $00                                       ; $676a: $c7
    dec d                                         ; $676b: $15
    adc b                                         ; $676c: $88
    ld b, b                                       ; $676d: $40
    db $ec                                        ; $676e: $ec
    db $10                                        ; $676f: $10
    db $ec                                        ; $6770: $ec
    cp e                                          ; $6771: $bb
    and h                                         ; $6772: $a4
    nop                                           ; $6773: $00
    adc l                                         ; $6774: $8d
    add e                                         ; $6775: $83
    cp a                                          ; $6776: $bf
    ret z                                         ; $6777: $c8

    pop bc                                        ; $6778: $c1
    db $eb                                        ; $6779: $eb
    adc e                                         ; $677a: $8b
    ld b, [hl]                                    ; $677b: $46
    adc a                                         ; $677c: $8f
    and [hl]                                      ; $677d: $a6
    dec sp                                        ; $677e: $3b
    xor e                                         ; $677f: $ab
    ld a, c                                       ; $6780: $79
    ld c, e                                       ; $6781: $4b
    dec d                                         ; $6782: $15
    adc d                                         ; $6783: $8a
    nop                                           ; $6784: $00
    ret nz                                        ; $6785: $c0

    ret                                           ; $6786: $c9


    db $fc                                        ; $6787: $fc
    ld h, h                                       ; $6788: $64
    jp z, Jump_000_3b40                           ; $6789: $ca $40 $3b

    xor a                                         ; $678c: $af
    add b                                         ; $678d: $80
    xor b                                         ; $678e: $a8
    dec d                                         ; $678f: $15
    sub l                                         ; $6790: $95
    jp z, Jump_000_3b48                           ; $6791: $ca $48 $3b

jr_05a_6794:
    xor h                                         ; $6794: $ac
    nop                                           ; $6795: $00
    ret nz                                        ; $6796: $c0

    db $eb                                        ; $6797: $eb
    dec d                                         ; $6798: $15
    sub l                                         ; $6799: $95
    jp z, Jump_000_3b4a                           ; $679a: $ca $4a $3b

    xor e                                         ; $679d: $ab
    ld b, c                                       ; $679e: $41
    adc c                                         ; $679f: $89
    dec d                                         ; $67a0: $15
    sbc e                                         ; $67a1: $9b
    jp z, Jump_000_3b45                           ; $67a2: $ca $45 $3b

    xor e                                         ; $67a5: $ab
    nop                                           ; $67a6: $00
    ret nz                                        ; $67a7: $c0

    db $ed                                        ; $67a8: $ed
    dec d                                         ; $67a9: $15
    sub d                                         ; $67aa: $92
    ld c, c                                       ; $67ab: $49
    ld a, [hl+]                                   ; $67ac: $2a
    or a                                          ; $67ad: $b7
    ld [hl], e                                    ; $67ae: $73
    inc d                                         ; $67af: $14
    xor d                                         ; $67b0: $aa
    dec d                                         ; $67b1: $15
    adc a                                         ; $67b2: $8f
    jp z, $a247                                   ; $67b3: $ca $47 $a2

    di                                            ; $67b6: $f3
    nop                                           ; $67b7: $00
    rst $38                                       ; $67b8: $ff
    adc h                                         ; $67b9: $8c
    dec d                                         ; $67ba: $15
    adc [hl]                                      ; $67bb: $8e
    jp z, $b747                                   ; $67bc: $ca $47 $b7

    ld l, a                                       ; $67bf: $6f
    dec b                                         ; $67c0: $05
    call $9015                                    ; $67c1: $cd $15 $90
    adc a                                         ; $67c4: $8f
    xor b                                         ; $67c5: $a8
    or a                                          ; $67c6: $b7
    ld [hl], b                                    ; $67c7: $70
    nop                                           ; $67c8: $00
    ld b, b                                       ; $67c9: $40
    rst $28                                       ; $67ca: $ef
    dec d                                         ; $67cb: $15
    adc h                                         ; $67cc: $8c
    cp h                                          ; $67cd: $bc
    ld c, d                                       ; $67ce: $4a
    or a                                          ; $67cf: $b7
    ld l, [hl]                                    ; $67d0: $6e
    add hl, bc                                    ; $67d1: $09
    jr nz, jr_05a_6794                            ; $67d2: $20 $c0

    db $dd                                        ; $67d4: $dd
    adc a                                         ; $67d5: $8f
    xor c                                         ; $67d6: $a9
    or a                                          ; $67d7: $b7
    ld l, [hl]                                    ; $67d8: $6e
    nop                                           ; $67d9: $00
    ret nz                                        ; $67da: $c0

    ld l, d                                       ; $67db: $6a
    push de                                       ; $67dc: $d5
    ld d, e                                       ; $67dd: $53
    adc a                                         ; $67de: $8f
    xor e                                         ; $67df: $ab
    ld a, d                                       ; $67e0: $7a
    inc c                                         ; $67e1: $0c
    ld [bc], a                                    ; $67e2: $02
    xor e                                         ; $67e3: $ab
    push de                                       ; $67e4: $d5
    ld d, c                                       ; $67e5: $51
    adc a                                         ; $67e6: $8f
    xor h                                         ; $67e7: $ac
    ld a, d                                       ; $67e8: $7a
    inc c                                         ; $67e9: $0c
    nop                                           ; $67ea: $00
    jp nz, $d58a                                  ; $67eb: $c2 $8a $d5

    ld d, d                                       ; $67ee: $52
    inc de                                        ; $67ef: $13
    jp hl                                         ; $67f0: $e9


    ld a, d                                       ; $67f1: $7a
    ld a, [de]                                    ; $67f2: $1a
    ret nz                                        ; $67f3: $c0

    sub $8f                                       ; $67f4: $d6 $8f
    xor d                                         ; $67f6: $aa
    ld a, d                                       ; $67f7: $7a
    ld a, [bc]                                    ; $67f8: $0a
    ld bc, $006e                                  ; $67f9: $01 $6e $00
    and a                                         ; $67fc: $a7
    inc d                                         ; $67fd: $14
    ld a, d                                       ; $67fe: $7a
    dec d                                         ; $67ff: $15
    ld [bc], a                                    ; $6800: $02
    adc a                                         ; $6801: $8f
    ret nz                                        ; $6802: $c0

    db $f4                                        ; $6803: $f4
    ld a, d                                       ; $6804: $7a
    rra                                           ; $6805: $1f
    cp a                                          ; $6806: $bf
    db $fc                                        ; $6807: $fc
    ld a, d                                       ; $6808: $7a
    rra                                           ; $6809: $1f
    dec hl                                        ; $680a: $2b
    jr jr_05a_680d                                ; $680b: $18 $00

jr_05a_680d:
    ld a, d                                       ; $680d: $7a
    ld a, [de]                                    ; $680e: $1a
    rst $38                                       ; $680f: $ff
    rst $38                                       ; $6810: $ff
    ld h, l                                       ; $6811: $65
    sbc d                                         ; $6812: $9a
    rst $38                                       ; $6813: $ff
    rst $38                                       ; $6814: $ff
    sbc b                                         ; $6815: $98
    jr nz, jr_05a_6892                            ; $6816: $20 $7a

    inc d                                         ; $6818: $14
    rst $38                                       ; $6819: $ff
    rst $38                                       ; $681a: $ff
    ld b, b                                       ; $681b: $40
    db $eb                                        ; $681c: $eb
    nop                                           ; $681d: $00
    jp Jump_05a_4098                              ; $681e: $c3 $98 $40


    rst $38                                       ; $6821: $ff
    and l                                         ; $6822: $a5
    or d                                          ; $6823: $b2
    rst $38                                       ; $6824: $ff
    rst $38                                       ; $6825: $ff
    ld h, l                                       ; $6826: $65
    sbc [hl]                                      ; $6827: $9e
    rst $38                                       ; $6828: $ff
    rst $38                                       ; $6829: $ff
    ld [hl], e                                    ; $682a: $73
    set 1, l                                      ; $682b: $cb $cd
    cp a                                          ; $682d: $bf
    nop                                           ; $682e: $00
    rst $38                                       ; $682f: $ff
    rst $38                                       ; $6830: $ff
    rst $38                                       ; $6831: $ff
    rst $38                                       ; $6832: $ff
    sub [hl]                                      ; $6833: $96
    rst $38                                       ; $6834: $ff
    reti                                          ; $6835: $d9


    or e                                          ; $6836: $b3
    rst $38                                       ; $6837: $ff
    rst $38                                       ; $6838: $ff
    rst $38                                       ; $6839: $ff
    rst $38                                       ; $683a: $ff
    rst $38                                       ; $683b: $ff
    rst $38                                       ; $683c: $ff
    rst $38                                       ; $683d: $ff
    rst $38                                       ; $683e: $ff
    nop                                           ; $683f: $00
    scf                                           ; $6840: $37
    db $eb                                        ; $6841: $eb
    call c, $ffff                                 ; $6842: $dc $ff $ff
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
    nop                                           ; $6850: $00
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
    nop                                           ; $6861: $00
    rst $38                                       ; $6862: $ff
    rst $38                                       ; $6863: $ff
    rst $38                                       ; $6864: $ff
    rst $38                                       ; $6865: $ff
    rst $38                                       ; $6866: $ff
    rst $38                                       ; $6867: $ff
    nop                                           ; $6868: $00
    cp a                                          ; $6869: $bf
    rst $38                                       ; $686a: $ff
    rst $38                                       ; $686b: $ff
    rst $38                                       ; $686c: $ff
    rst $38                                       ; $686d: $ff
    rst $38                                       ; $686e: $ff
    rst $38                                       ; $686f: $ff
    rst $38                                       ; $6870: $ff
    rst $38                                       ; $6871: $ff
    nop                                           ; $6872: $00
    ld e, e                                       ; $6873: $5b
    ld d, e                                       ; $6874: $53
    nop                                           ; $6875: $00
    nop                                           ; $6876: $00
    nop                                           ; $6877: $00

Jump_05a_6878:
    rst $38                                       ; $6878: $ff
    ld e, d                                       ; $6879: $5a
    ld e, e                                       ; $687a: $5b
    ld e, h                                       ; $687b: $5c
    ld e, l                                       ; $687c: $5d
    ld sp, $564d                                  ; $687d: $31 $4d $56
    ld d, a                                       ; $6880: $57
    rst $38                                       ; $6881: $ff
    ld d, [hl]                                    ; $6882: $56
    ld d, [hl]                                    ; $6883: $56
    ld d, a                                       ; $6884: $57
    ld d, a                                       ; $6885: $57
    ld c, e                                       ; $6886: $4b
    ld sp, $5b5e                                  ; $6887: $31 $5e $5b
    sbc a                                         ; $688a: $9f
    ld e, d                                       ; $688b: $5a
    ld e, e                                       ; $688c: $5b
    ld e, e                                       ; $688d: $5b
    ld e, e                                       ; $688e: $5b
    nop                                           ; $688f: $00
    rst $38                                       ; $6890: $ff
    rst $38                                       ; $6891: $ff

jr_05a_6892:
    rst $20                                       ; $6892: $e7
    and $5b                                       ; $6893: $e6 $5b
    rst $38                                       ; $6895: $ff
    ld e, e                                       ; $6896: $5b
    ld h, c                                       ; $6897: $61
    ld sp, $324d                                  ; $6898: $31 $4d $32
    ld l, e                                       ; $689b: $6b
    ld l, e                                       ; $689c: $6b
    jr nc, @+$81                                  ; $689d: $30 $7f

    ld l, c                                       ; $689f: $69
    ld l, e                                       ; $68a0: $6b
    ld l, e                                       ; $68a1: $6b
    ld [hl], $49                                  ; $68a2: $36 $49
    ld sp, $c160                                  ; $68a4: $31 $60 $c1
    ldh [$f9], a                                  ; $68a7: $e0 $f9
    ld e, d                                       ; $68a9: $5a
    jp z, $e8ff                                   ; $68aa: $ca $ff $e8

    rst $20                                       ; $68ad: $e7
    ld h, d                                       ; $68ae: $62
    ld h, d                                       ; $68af: $62
    ld sp, $3931                                  ; $68b0: $31 $31 $39
    db $fd                                        ; $68b3: $fd
    ld l, e                                       ; $68b4: $6b
    ret nz                                        ; $68b5: $c0

    db $e3                                        ; $68b6: $e3
    ld l, e                                       ; $68b7: $6b
    add hl, sp                                    ; $68b8: $39
    ld sp, $5d31                                  ; $68b9: $31 $31 $5d
    ld e, h                                       ; $68bc: $5c
    call nc, $ff80                                ; $68bd: $d4 $80 $ff
    ld [$31e9], a                                 ; $68c0: $ea $e9 $31
    rst $38                                       ; $68c3: $ff
    ldh [rHDMA3], a                               ; $68c4: $e0 $53
    ret nz                                        ; $68c6: $c0

    db $e4                                        ; $68c7: $e4
    ld l, l                                       ; $68c8: $6d
    dec [hl]                                      ; $68c9: $35
    push hl                                       ; $68ca: $e5
    ld b, a                                       ; $68cb: $47
    pop af                                        ; $68cc: $f1
    ldh [$5f], a                                  ; $68cd: $e0 $5f
    ret nz                                        ; $68cf: $c0

    rst $38                                       ; $68d0: $ff
    jp hl                                         ; $68d1: $e9


    add sp, $12                                   ; $68d2: $e8 $12
    ld de, $fb31                                  ; $68d4: $11 $31 $fb
    ld sp, $8052                                  ; $68d7: $31 $52 $80
    pop hl                                        ; $68da: $e1
    jr nc, jr_05a_6947                            ; $68db: $30 $6a

    ld l, l                                       ; $68dd: $6d
    ld l, h                                       ; $68de: $6c
    ld l, h                                       ; $68df: $6c
    rst $00                                       ; $68e0: $c7
    ld [hl], $46                                  ; $68e1: $36 $46
    ld b, a                                       ; $68e3: $47
    db $fc                                        ; $68e4: $fc
    ret nz                                        ; $68e5: $c0

    jp z, $e8ff                                   ; $68e6: $ca $ff $e8

    rst $20                                       ; $68e9: $e7
    inc h                                         ; $68ea: $24
    ld hl, $29ff                                  ; $68eb: $21 $ff $29
    ld sp, $3039                                  ; $68ee: $31 $39 $30
    ld l, l                                       ; $68f1: $6d
    ld l, l                                       ; $68f2: $6d
    ld l, l                                       ; $68f3: $6d
    jr nc, @+$01                                  ; $68f4: $30 $ff

    ld l, d                                       ; $68f6: $6a
    ld l, d                                       ; $68f7: $6a
    ld l, h                                       ; $68f8: $6c
    ld l, h                                       ; $68f9: $6c
    ld l, h                                       ; $68fa: $6c
    ld l, d                                       ; $68fb: $6a
    ld [hl], $3c                                  ; $68fc: $36 $3c
    di                                            ; $68fe: $f3
    ld sp, $ca5f                                  ; $68ff: $31 $5f $ca
    rst $38                                       ; $6902: $ff
    add sp, -$19                                  ; $6903: $e8 $e7
    jr nz, jr_05a_6927                            ; $6905: $20 $20

    ld d, $15                                     ; $6907: $16 $15
    rst $38                                       ; $6909: $ff
    ld c, l                                       ; $690a: $4d
    ld b, [hl]                                    ; $690b: $46
    ld [hl], $6d                                  ; $690c: $36 $6d
    ld l, l                                       ; $690e: $6d
    ld l, h                                       ; $690f: $6c
    jr nc, jr_05a_6942                            ; $6910: $30 $30

    rst $38                                       ; $6912: $ff
    ld l, b                                       ; $6913: $68
    ld l, b                                       ; $6914: $68
    ld l, b                                       ; $6915: $68
    jr nc, jr_05a_6948                            ; $6916: $30 $30

    ld d, e                                       ; $6918: $53
    ld sp, $fc5e                                  ; $6919: $31 $5e $fc
    jp z, $c0ff                                   ; $691c: $ca $ff $c0

    jp hl                                         ; $691f: $e9


    jr z, jr_05a_6939                             ; $6920: $28 $17

    ld sp, $4731                                  ; $6922: $31 $31 $47
    ld b, [hl]                                    ; $6925: $46
    db $eb                                        ; $6926: $eb

jr_05a_6927:
    ld b, d                                       ; $6927: $42
    ld l, h                                       ; $6928: $6c
    cp a                                          ; $6929: $bf
    ldh [$30], a                                  ; $692a: $e0 $30
    ld a, [hl]                                    ; $692c: $7e
    ldh [rHDMA2], a                               ; $692d: $e0 $52
    ld sp, $6c31                                  ; $692f: $31 $31 $6c
    jp z, $80ff                                   ; $6932: $ca $ff $80

    jp hl                                         ; $6935: $e9


    jr nz, @+$23                                  ; $6936: $20 $21

    db $fc                                        ; $6938: $fc

jr_05a_6939:
    pop bc                                        ; $6939: $c1
    ld d, e                                       ; $693a: $53
    ld l, b                                       ; $693b: $68
    ld b, d                                       ; $693c: $42
    ldh [$c8], a                                  ; $693d: $e0 $c8
    db $fd                                        ; $693f: $fd
    pop hl                                        ; $6940: $e1
    ret nz                                        ; $6941: $c0

jr_05a_6942:
    rst $38                                       ; $6942: $ff

jr_05a_6943:
    ret nz                                        ; $6943: $c0

    db $ed                                        ; $6944: $ed
    jr nz, jr_05a_6943                            ; $6945: $20 $fc

jr_05a_6947:
    pop bc                                        ; $6947: $c1

jr_05a_6948:
    ret nz                                        ; $6948: $c0

jr_05a_6949:
    db $e4                                        ; $6949: $e4
    ld l, b                                       ; $694a: $68
    ld l, b                                       ; $694b: $68
    or b                                          ; $694c: $b0
    inc a                                         ; $694d: $3c
    ret nz                                        ; $694e: $c0

    jp z, $c0ff                                   ; $694f: $ca $ff $c0

    db $eb                                        ; $6952: $eb
    db $fc                                        ; $6953: $fc
    pop bc                                        ; $6954: $c1
    add hl, sp                                    ; $6955: $39
    ld h, l                                       ; $6956: $65
    ld [bc], a                                    ; $6957: $02
    ldh [rBCPS], a                                ; $6958: $e0 $68
    rst $08                                       ; $695a: $cf
    ld l, b                                       ; $695b: $68
    ld h, l                                       ; $695c: $65
    ld c, b                                       ; $695d: $48
    ld c, c                                       ; $695e: $49
    ret nz                                        ; $695f: $c0

    rst $38                                       ; $6960: $ff
    ld [$21e9], a                                 ; $6961: $ea $e9 $21
    jr z, @-$40                                   ; $6964: $28 $be

    ld a, [hl]                                    ; $6966: $7e
    pop hl                                        ; $6967: $e1
    jr z, jr_05a_6981                             ; $6968: $28 $17

    xor a                                         ; $696a: $af
    ld [hl], c                                    ; $696b: $71
    ld h, l                                       ; $696c: $65
    rst $38                                       ; $696d: $ff
    pop hl                                        ; $696e: $e1
    jr nc, jr_05a_6949                            ; $696f: $30 $d8

    cp l                                          ; $6971: $bd
    and b                                         ; $6972: $a0
    ret nz                                        ; $6973: $c0

    rst $38                                       ; $6974: $ff
    jp hl                                         ; $6975: $e9


    add sp, $11                                   ; $6976: $e8 $11
    ld [de], a                                    ; $6978: $12
    cp [hl]                                       ; $6979: $be
    pop hl                                        ; $697a: $e1
    ld a, [bc]                                    ; $697b: $0a
    dec bc                                        ; $697c: $0b
    rst $38                                       ; $697d: $ff
    and c                                         ; $697e: $a1
    ld a, c                                       ; $697f: $79
    ld l, [hl]                                    ; $6980: $6e

jr_05a_6981:
    ld [hl], $30                                  ; $6981: $36 $30
    jr nc, jr_05a_69bb                            ; $6983: $30 $36

    ld l, [hl]                                    ; $6985: $6e
    rst $08                                       ; $6986: $cf
    xor a                                         ; $6987: $af
    ld sp, $1531                                  ; $6988: $31 $31 $15
    jp z, $80ff                                   ; $698b: $ca $ff $80

    xor c                                         ; $698e: $a9

jr_05a_698f:
    ld de, $ff12                                  ; $698f: $11 $12 $ff
    ld b, $07                                     ; $6992: $06 $07
    ld sp, $a131                                  ; $6994: $31 $31 $a1
    add b                                         ; $6997: $80
    add b                                         ; $6998: $80
    ld l, a                                       ; $6999: $6f
    rst $38                                       ; $699a: $ff
    ld a, h                                       ; $699b: $7c
    ld a, l                                       ; $699c: $7d
    ld l, a                                       ; $699d: $6f
    add b                                         ; $699e: $80
    and c                                         ; $699f: $a1
    ld sp, $1731                                  ; $69a0: $31 $31 $17
    add h                                         ; $69a3: $84
    jp z, $e8ff                                   ; $69a4: $ca $ff $e8

    rst $20                                       ; $69a7: $e7
    ld e, l                                       ; $69a8: $5d
    ccf                                           ; $69a9: $3f
    and c                                         ; $69aa: $a1
    dec sp                                        ; $69ab: $3b
    and b                                         ; $69ac: $a0
    ret nz                                        ; $69ad: $c0

    ldh [$fe], a                                  ; $69ae: $e0 $fe
    ld [c], a                                     ; $69b0: $e2
    and c                                         ; $69b1: $a1
    rst $00                                       ; $69b2: $c7
    ld sp, $1615                                  ; $69b3: $31 $15 $16
    jp z, $80ff                                   ; $69b6: $ca $ff $80

    adc b                                         ; $69b9: $88
    ld b, c                                       ; $69ba: $41

jr_05a_69bb:
    add b                                         ; $69bb: $80
    ld e, l                                       ; $69bc: $5d
    ld e, h                                       ; $69bd: $5c
    dec c                                         ; $69be: $0d
    ld h, b                                       ; $69bf: $60
    ret nz                                        ; $69c0: $c0

    add sp, $17                                   ; $69c1: $e8 $17
    jr z, jr_05a_698f                             ; $69c3: $28 $ca

    rst $38                                       ; $69c5: $ff
    rst $38                                       ; $69c6: $ff
    rst $38                                       ; $69c7: $ff
    rst $38                                       ; $69c8: $ff
    rst $38                                       ; $69c9: $ff
    rst $38                                       ; $69ca: $ff
    rst $38                                       ; $69cb: $ff
    nop                                           ; $69cc: $00
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
    nop                                           ; $69dd: $00
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
    nop                                           ; $69ee: $00
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
    nop                                           ; $69ff: $00
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
    nop                                           ; $6a10: $00
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
    nop                                           ; $6a21: $00
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
    nop                                           ; $6a32: $00
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
    nop                                           ; $6a43: $00
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
    nop                                           ; $6a54: $00
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
    nop                                           ; $6a65: $00
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
    nop                                           ; $6a76: $00
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
    di                                            ; $6a86: $f3
    nop                                           ; $6a87: $00
    nop                                           ; $6a88: $00
    nop                                           ; $6a89: $00
    and l                                         ; $6a8a: $a5
    nop                                           ; $6a8b: $00
    rst $38                                       ; $6a8c: $ff
    push hl                                       ; $6a8d: $e5
    ld [hl-], a                                   ; $6a8e: $32
    or $e6                                        ; $6a8f: $f6 $e6
    rst $30                                       ; $6a91: $f7
    rst $20                                       ; $6a92: $e7
    dec [hl]                                      ; $6a93: $35
    db $ec                                        ; $6a94: $ec
    xor $37                                       ; $6a95: $ee $37
    db $ec                                        ; $6a97: $ec
    jp c, $c7f0                                   ; $6a98: $da $f0 $c7

    add sp, $33                                   ; $6a9b: $e8 $33
    ld sp, $f2e0                                  ; $6a9d: $31 $e0 $f2
    ld [hl], $30                                  ; $6aa0: $36 $30
    scf                                           ; $6aa2: $37
    cp a                                          ; $6aa3: $bf
    ld h, $20                                     ; $6aa4: $26 $20
    daa                                           ; $6aa6: $27
    db $10                                        ; $6aa7: $10
    ld d, $17                                     ; $6aa8: $16 $17
    jp nz, Jump_000_34f6                          ; $6aaa: $c2 $f6 $34

    rst $38                                       ; $6aad: $ff
    ld [hl], $32                                  ; $6aae: $36 $32
    jr nc, jr_05a_6ae9                            ; $6ab0: $30 $37

    ld sp, $3133                                  ; $6ab2: $31 $33 $31
    inc sp                                        ; $6ab5: $33
    nop                                           ; $6ab6: $00
    and b                                         ; $6ab7: $a0
    ei                                            ; $6ab8: $fb
    rst $38                                       ; $6ab9: $ff
    rst $28                                       ; $6aba: $ef
    nop                                           ; $6abb: $00
    nop                                           ; $6abc: $00
    nop                                           ; $6abd: $00
    add $6a                                       ; $6abe: $c6 $6a
    or $6a                                        ; $6ac0: $f6 $6a
    ld d, h                                       ; $6ac2: $54
    ld l, l                                       ; $6ac3: $6d
    ld b, c                                       ; $6ac4: $41
    ld l, a                                       ; $6ac5: $6f
    db $ec                                        ; $6ac6: $ec
    dec hl                                        ; $6ac7: $2b
    ld [hl+], a                                   ; $6ac8: $22
    dec sp                                        ; $6ac9: $3b
    ld b, b                                       ; $6aca: $40
    ld [hl+], a                                   ; $6acb: $22
    nop                                           ; $6acc: $00
    add hl, bc                                    ; $6acd: $09
    and l                                         ; $6ace: $a5
    ld b, e                                       ; $6acf: $43
    xor $37                                       ; $6ad0: $ee $37
    ld [hl+], a                                   ; $6ad2: $22
    dec sp                                        ; $6ad3: $3b
    ld b, b                                       ; $6ad4: $40
    ld [hl+], a                                   ; $6ad5: $22
    ccf                                           ; $6ad6: $3f
    ld a, a                                       ; $6ad7: $7f
    rla                                           ; $6ad8: $17
    ld e, [hl]                                    ; $6ad9: $5e
    ld de, $2249                                  ; $6ada: $11 $49 $22
    dec sp                                        ; $6add: $3b
    ld [$0825], sp                                ; $6ade: $08 $25 $08
    dec h                                         ; $6ae1: $25
    ld [$0825], sp                                ; $6ae2: $08 $25 $08
    dec h                                         ; $6ae5: $25
    ld [$0825], sp                                ; $6ae6: $08 $25 $08

jr_05a_6ae9:
    dec h                                         ; $6ae9: $25
    ld [$0825], sp                                ; $6aea: $08 $25 $08
    dec h                                         ; $6aed: $25
    ld [$0825], sp                                ; $6aee: $08 $25 $08
    dec h                                         ; $6af1: $25
    ld [$0825], sp                                ; $6af2: $08 $25 $08
    dec h                                         ; $6af5: $25
    cp e                                          ; $6af6: $bb
    ld a, [bc]                                    ; $6af7: $0a
    dec bc                                        ; $6af8: $0b
    rst $38                                       ; $6af9: $ff
    and $2b                                       ; $6afa: $e6 $2b
    ld c, d                                       ; $6afc: $4a
    ld l, d                                       ; $6afd: $6a
    rst $38                                       ; $6afe: $ff
    db $e3                                        ; $6aff: $e3
    inc c                                         ; $6b00: $0c
    ld e, $ff                                     ; $6b01: $1e $ff
    ld [c], a                                     ; $6b03: $e2
    ld c, h                                       ; $6b04: $4c
    ld c, h                                       ; $6b05: $4c
    inc c                                         ; $6b06: $0c
    ld c, h                                       ; $6b07: $4c
    or $e3                                        ; $6b08: $f6 $e3
    ld a, [$c1f9]                                 ; $6b0a: $fa $f9 $c1
    ldh [rTAC], a                                 ; $6b0d: $e0 $07
    ld l, e                                       ; $6b0f: $6b
    ld l, e                                       ; $6b10: $6b
    ld c, e                                       ; $6b11: $4b
    rst $38                                       ; $6b12: $ff
    ld [c], a                                     ; $6b13: $e2
    cp a                                          ; $6b14: $bf
    and $c1                                       ; $6b15: $e6 $c1
    db $e3                                        ; $6b17: $e3
    cp [hl]                                       ; $6b18: $be
    ld [c], a                                     ; $6b19: $e2
    or l                                          ; $6b1a: $b5
    pop hl                                        ; $6b1b: $e1
    db $fd                                        ; $6b1c: $fd
    inc l                                         ; $6b1d: $2c
    ret nz                                        ; $6b1e: $c0

    ld a, [$6b6b]                                 ; $6b1f: $fa $6b $6b
    ld l, e                                       ; $6b22: $6b
    dec hl                                        ; $6b23: $2b
    dec hl                                        ; $6b24: $2b
    ld c, e                                       ; $6b25: $4b
    rra                                           ; $6b26: $1f
    ld c, e                                       ; $6b27: $4b
    ld l, e                                       ; $6b28: $6b
    ld l, e                                       ; $6b29: $6b
    dec bc                                        ; $6b2a: $0b
    ld l, e                                       ; $6b2b: $6b
    ld a, [hl]                                    ; $6b2c: $7e
    push hl                                       ; $6b2d: $e5
    add l                                         ; $6b2e: $85
    ldh [$c5], a                                  ; $6b2f: $e0 $c5
    ld [c], a                                     ; $6b31: $e2
    ld a, [bc]                                    ; $6b32: $0a
    ld a, [hl]                                    ; $6b33: $7e
    ldh [$2c], a                                  ; $6b34: $e0 $2c
    jp Jump_000_2ce0                              ; $6b36: $c3 $e0 $2c


    ld a, [$6be2]                                 ; $6b39: $fa $e2 $6b
    db $e3                                        ; $6b3c: $e3
    or h                                          ; $6b3d: $b4
    xor $c8                                       ; $6b3e: $ee $c8
    ldh [$79], a                                  ; $6b40: $e0 $79
    dec bc                                        ; $6b42: $0b
    ret nz                                        ; $6b43: $c0

    ldh [$ba], a                                  ; $6b44: $e0 $ba
    ldh [rOCPD], a                                ; $6b46: $e0 $6b
    dec bc                                        ; $6b48: $0b
    ld c, e                                       ; $6b49: $4b
    ld c, e                                       ; $6b4a: $4b
    dec a                                         ; $6b4b: $3d
    db $e3                                        ; $6b4c: $e3
    inc b                                         ; $6b4d: $04
    add e                                         ; $6b4e: $83
    ld [c], a                                     ; $6b4f: $e2
    ld b, b                                       ; $6b50: $40
    ld [c], a                                     ; $6b51: $e2
    inc l                                         ; $6b52: $2c
    ret nz                                        ; $6b53: $c0

    ld [c], a                                     ; $6b54: $e2
    ld a, [$f8e2]                                 ; $6b55: $fa $e2 $f8
    pop hl                                        ; $6b58: $e1
    or h                                          ; $6b59: $b4
    db $eb                                        ; $6b5a: $eb
    add hl, de                                    ; $6b5b: $19
    ld [c], a                                     ; $6b5c: $e2
    ld bc, $062b                                  ; $6b5d: $01 $2b $06
    ld [c], a                                     ; $6b60: $e2
    cp a                                          ; $6b61: $bf
    db $e3                                        ; $6b62: $e3
    ld a, d                                       ; $6b63: $7a
    ldh [$fc], a                                  ; $6b64: $e0 $fc
    jp nz, $e247                                  ; $6b66: $c2 $47 $e2

    ld b, b                                       ; $6b69: $40
    ld [c], a                                     ; $6b6a: $e2
    add a                                         ; $6b6b: $87
    ld [c], a                                     ; $6b6c: $e2
    sub b                                         ; $6b6d: $90
    pop bc                                        ; $6b6e: $c1
    db $e4                                        ; $6b6f: $e4
    ld [hl], h                                    ; $6b70: $74
    db $e3                                        ; $6b71: $e3
    di                                            ; $6b72: $f3
    push hl                                       ; $6b73: $e5
    add hl, hl                                    ; $6b74: $29
    push hl                                       ; $6b75: $e5
    dec hl                                        ; $6b76: $2b
    cp a                                          ; $6b77: $bf
    db $e4                                        ; $6b78: $e4
    ld a, a                                       ; $6b79: $7f
    db $e4                                        ; $6b7a: $e4
    ld c, e                                       ; $6b7b: $4b
    ld bc, $bb6b                                  ; $6b7c: $01 $6b $bb
    ret nz                                        ; $6b7f: $c0

    ld b, b                                       ; $6b80: $40
    add sp, -$3f                                  ; $6b81: $e8 $c1
    db $e3                                        ; $6b83: $e3
    ret nz                                        ; $6b84: $c0

    db $e4                                        ; $6b85: $e4
    or h                                          ; $6b86: $b4
    add sp, -$40                                  ; $6b87: $e8 $c0
    rst $00                                       ; $6b89: $c7
    inc bc                                        ; $6b8a: $03
    ldh [rDIV], a                                 ; $6b8b: $e0 $04
    add h                                         ; $6b8d: $84
    pop bc                                        ; $6b8e: $c1
    ret nz                                        ; $6b8f: $c0

    push hl                                       ; $6b90: $e5
    dec hl                                        ; $6b91: $2b
    cp a                                          ; $6b92: $bf
    ldh [$8a], a                                  ; $6b93: $e0 $8a
    call nz, $d07f                                ; $6b95: $c4 $7f $d0
    add c                                         ; $6b98: $81
    add sp, $65                                   ; $6b99: $e8 $65
    call nz, $c330                                ; $6b9b: $c4 $30 $c3
    pop hl                                        ; $6b9e: $e1
    add e                                         ; $6b9f: $83
    jp nz, $c3f7                                  ; $6ba0: $c2 $f7 $c3

    db $fc                                        ; $6ba3: $fc
    ret nz                                        ; $6ba4: $c0

    ld l, e                                       ; $6ba5: $6b
    ld c, d                                       ; $6ba6: $4a
    ld c, b                                       ; $6ba7: $48
    jp $c57f                                      ; $6ba8: $c3 $7f $c5


    inc b                                         ; $6bab: $04
    call z, Call_000_2aef                         ; $6bac: $cc $ef $2a
    ret                                           ; $6baf: $c9


    ld a, [hl+]                                   ; $6bb0: $2a
    add d                                         ; $6bb1: $82
    ldh [$3c], a                                  ; $6bb2: $e0 $3c
    pop hl                                        ; $6bb4: $e1
    cp b                                          ; $6bb5: $b8
    pop bc                                        ; $6bb6: $c1
    or [hl]                                       ; $6bb7: $b6
    pop bc                                        ; $6bb8: $c1
    ld [hl], $e0                                  ; $6bb9: $36 $e0
    ld hl, $042b                                  ; $6bbb: $21 $2b $04
    pop bc                                        ; $6bbe: $c1
    ccf                                           ; $6bbf: $3f
    rst $20                                       ; $6bc0: $e7
    adc h                                         ; $6bc1: $8c
    jp hl                                         ; $6bc2: $e9


    add b                                         ; $6bc3: $80
    rst $28                                       ; $6bc4: $ef
    ld a, [hl+]                                   ; $6bc5: $2a
    cp a                                          ; $6bc6: $bf
    ld [c], a                                     ; $6bc7: $e2
    db $fd                                        ; $6bc8: $fd
    ld [c], a                                     ; $6bc9: $e2
    ld b, $bf                                     ; $6bca: $06 $bf
    db $e4                                        ; $6bcc: $e4
    dec bc                                        ; $6bcd: $0b
    ld l, e                                       ; $6bce: $6b
    ret z                                         ; $6bcf: $c8

    and b                                         ; $6bd0: $a0
    jp $c0a1                                      ; $6bd1: $c3 $a1 $c0


    or b                                          ; $6bd4: $b0
    ret nz                                        ; $6bd5: $c0

    pop af                                        ; $6bd6: $f1
    ld a, [hl]                                    ; $6bd7: $7e
    pop hl                                        ; $6bd8: $e1
    nop                                           ; $6bd9: $00
    ret nz                                        ; $6bda: $c0

    and $bf                                       ; $6bdb: $e6 $bf
    ld [c], a                                     ; $6bdd: $e2
    add b                                         ; $6bde: $80
    jp $e2bb                                      ; $6bdf: $c3 $bb $e2


    ld a, a                                       ; $6be2: $7f
    or l                                          ; $6be3: $b5
    xor h                                         ; $6be4: $ac
    and [hl]                                      ; $6be5: $a6
    ret nz                                        ; $6be6: $c0

    ldh [$bf], a                                  ; $6be7: $e0 $bf
    ld [c], a                                     ; $6be9: $e2
    nop                                           ; $6bea: $00
    ret nz                                        ; $6beb: $c0

    push hl                                       ; $6bec: $e5
    ld sp, $c0a1                                  ; $6bed: $31 $a1 $c0
    rst $10                                       ; $6bf0: $d7
    nop                                           ; $6bf1: $00
    ldh a, [$bf]                                  ; $6bf2: $f0 $bf
    push hl                                       ; $6bf4: $e5
    ret nz                                        ; $6bf5: $c0

    db $eb                                        ; $6bf6: $eb
    rst $38                                       ; $6bf7: $ff
    and l                                         ; $6bf8: $a5
    ret nz                                        ; $6bf9: $c0

    rst $38                                       ; $6bfa: $ff
    nop                                           ; $6bfb: $00
    cp a                                          ; $6bfc: $bf
    push hl                                       ; $6bfd: $e5
    ret nz                                        ; $6bfe: $c0

    jp nz, $83b3                                  ; $6bff: $c2 $b3 $83

    ld b, d                                       ; $6c02: $42
    and e                                         ; $6c03: $a3
    add b                                         ; $6c04: $80
    rst $38                                       ; $6c05: $ff
    ret nz                                        ; $6c06: $c0

    rst $20                                       ; $6c07: $e7
    cp a                                          ; $6c08: $bf
    db $eb                                        ; $6c09: $eb
    rst $00                                       ; $6c0a: $c7
    add l                                         ; $6c0b: $85
    nop                                           ; $6c0c: $00
    cp a                                          ; $6c0d: $bf
    rst $38                                       ; $6c0e: $ff
    ret nz                                        ; $6c0f: $c0

    and $39                                       ; $6c10: $e6 $39
    ret nz                                        ; $6c12: $c0

    halt                                          ; $6c13: $76
    and e                                         ; $6c14: $a3
    ret nz                                        ; $6c15: $c0

    db $e3                                        ; $6c16: $e3
    ld a, [hl]                                    ; $6c17: $7e
    sbc a                                         ; $6c18: $9f
    ld h, $85                                     ; $6c19: $26 $85
    ld d, a                                       ; $6c1b: $57
    jp nz, $9400                                  ; $6c1c: $c2 $00 $94

    call nz, $e3f8                                ; $6c1f: $c4 $f8 $e3
    add l                                         ; $6c22: $85
    add h                                         ; $6c23: $84
    ld a, [hl]                                    ; $6c24: $7e
    sub l                                         ; $6c25: $95
    cp e                                          ; $6c26: $bb
    push af                                       ; $6c27: $f5
    xor b                                         ; $6c28: $a8
    db $ed                                        ; $6c29: $ed
    ld a, [hl]                                    ; $6c2a: $7e
    sub c                                         ; $6c2b: $91
    ldh a, [$8b]                                  ; $6c2c: $f0 $8b
    nop                                           ; $6c2e: $00
    call nc, Call_05a_57e9                        ; $6c2f: $d4 $e9 $57
    db $ec                                        ; $6c32: $ec
    nop                                           ; $6c33: $00
    add d                                         ; $6c34: $82
    ld a, [hl]                                    ; $6c35: $7e
    adc a                                         ; $6c36: $8f
    pop af                                        ; $6c37: $f1
    ret nc                                        ; $6c38: $d0

    push de                                       ; $6c39: $d5
    ld [hl], h                                    ; $6c3a: $74
    ld a, [hl]                                    ; $6c3b: $7e
    sub e                                         ; $6c3c: $93
    ldh a, [$91]                                  ; $6c3d: $f0 $91
    nop                                           ; $6c3f: $00
    push de                                       ; $6c40: $d5
    ld [hl], d                                    ; $6c41: $72
    ld a, [hl]                                    ; $6c42: $7e
    sub h                                         ; $6c43: $94
    or b                                          ; $6c44: $b0
    sub b                                         ; $6c45: $90
    push de                                       ; $6c46: $d5
    ld [hl], e                                    ; $6c47: $73
    rst $38                                       ; $6c48: $ff
    and h                                         ; $6c49: $a4
    ld a, [hl]                                    ; $6c4a: $7e
    adc l                                         ; $6c4b: $8d
    pop af                                        ; $6c4c: $f1
    or b                                          ; $6c4d: $b0
    push de                                       ; $6c4e: $d5
    ld [hl], e                                    ; $6c4f: $73
    nop                                           ; $6c50: $00
    ld a, [hl]                                    ; $6c51: $7e
    sub h                                         ; $6c52: $94
    or c                                          ; $6c53: $b1
    or [hl]                                       ; $6c54: $b6
    sub $ae                                       ; $6c55: $d6 $ae
    ld a, [hl]                                    ; $6c57: $7e
    sub h                                         ; $6c58: $94
    ret nz                                        ; $6c59: $c0

    ret nc                                        ; $6c5a: $d0

    ld d, a                                       ; $6c5b: $57
    di                                            ; $6c5c: $f3
    ld a, [hl]                                    ; $6c5d: $7e
    sub e                                         ; $6c5e: $93
    ld l, a                                       ; $6c5f: $6f
    sub c                                         ; $6c60: $91
    nop                                           ; $6c61: $00
    ld d, a                                       ; $6c62: $57
    ld sp, hl                                     ; $6c63: $f9
    ld l, c                                       ; $6c64: $69
    ldh a, [$80]                                  ; $6c65: $f0 $80
    rst $28                                       ; $6c67: $ef
    push de                                       ; $6c68: $d5
    ld [hl], h                                    ; $6c69: $74
    ld a, [hl]                                    ; $6c6a: $7e
    sub c                                         ; $6c6b: $91
    rst $28                                       ; $6c6c: $ef
    ld [hl], b                                    ; $6c6d: $70
    push de                                       ; $6c6e: $d5
    ld [hl], l                                    ; $6c6f: $75
    ld a, [hl]                                    ; $6c70: $7e
    sub d                                         ; $6c71: $92
    nop                                           ; $6c72: $00
    xor a                                         ; $6c73: $af
    halt                                          ; $6c74: $76
    sub $d0                                       ; $6c75: $d6 $d0
    db $ed                                        ; $6c77: $ed
    add l                                         ; $6c78: $85
    ret nz                                        ; $6c79: $c0

    cp $d5                                        ; $6c7a: $fe $d5
    ld [hl], l                                    ; $6c7c: $75
    db $fd                                        ; $6c7d: $fd
    jr z, @-$7e                                   ; $6c7e: $28 $80

    reti                                          ; $6c80: $d9


    push de                                       ; $6c81: $d5
    ld [hl], h                                    ; $6c82: $74
    nop                                           ; $6c83: $00
    add e                                         ; $6c84: $83
    ldh a, [rP1]                                  ; $6c85: $f0 $00
    db $f4                                        ; $6c87: $f4
    ld d, a                                       ; $6c88: $57
    pop af                                        ; $6c89: $f1
    cp $06                                        ; $6c8a: $fe $06
    sub e                                         ; $6c8c: $93
    pop af                                        ; $6c8d: $f1
    add h                                         ; $6c8e: $84
    sub d                                         ; $6c8f: $92
    ret nz                                        ; $6c90: $c0

    xor $7e                                       ; $6c91: $ee $7e
    dec b                                         ; $6c93: $05
    nop                                           ; $6c94: $00
    rst $18                                       ; $6c95: $df
    ld h, e                                       ; $6c96: $63
    reti                                          ; $6c97: $d9


    sbc d                                         ; $6c98: $9a
    push de                                       ; $6c99: $d5
    sub e                                         ; $6c9a: $93
    ei                                            ; $6c9b: $fb
    ld b, a                                       ; $6c9c: $47
    ld [hl], a                                    ; $6c9d: $77
    ld h, h                                       ; $6c9e: $64
    jr nc, @-$6e                                  ; $6c9f: $30 $90

    ld d, a                                       ; $6ca1: $57
    and d                                         ; $6ca2: $a2
    ld d, e                                       ; $6ca3: $53
    scf                                           ; $6ca4: $37
    nop                                           ; $6ca5: $00
    add d                                         ; $6ca6: $82
    and $d9                                       ; $6ca7: $e6 $d9
    sub [hl]                                      ; $6ca9: $96
    ld d, $a3                                     ; $6caa: $16 $a3
    ld d, e                                       ; $6cac: $53
    inc sp                                        ; $6cad: $33
    ret nc                                        ; $6cae: $d0

    ld h, [hl]                                    ; $6caf: $66
    ld a, d                                       ; $6cb0: $7a
    ld b, [hl]                                    ; $6cb1: $46
    ld e, b                                       ; $6cb2: $58
    ld [hl], d                                    ; $6cb3: $72
    ld d, e                                       ; $6cb4: $53
    ld [hl], $00                                  ; $6cb5: $36 $00
    dec [hl]                                      ; $6cb7: $35
    ld l, d                                       ; $6cb8: $6a
    xor [hl]                                      ; $6cb9: $ae
    dec d                                         ; $6cba: $15
    rst $10                                       ; $6cbb: $d7
    ld b, e                                       ; $6cbc: $43
    ld d, e                                       ; $6cbd: $53
    ld [hl-], a                                   ; $6cbe: $32
    dec sp                                        ; $6cbf: $3b
    ld h, $a8                                     ; $6cc0: $26 $a8
    ld c, d                                       ; $6cc2: $4a
    ld l, [hl]                                    ; $6cc3: $6e
    inc d                                         ; $6cc4: $14
    ld h, l                                       ; $6cc5: $65
    db $f4                                        ; $6cc6: $f4
    nop                                           ; $6cc7: $00
    add c                                         ; $6cc8: $81
    rst $00                                       ; $6cc9: $c7
    ld e, e                                       ; $6cca: $5b
    ld hl, sp+$7e                                 ; $6ccb: $f8 $7e
    or [hl]                                       ; $6ccd: $b6
    ldh [rLY], a                                  ; $6cce: $e0 $44
    db $fc                                        ; $6cd0: $fc
    ld [c], a                                     ; $6cd1: $e2
    ld e, e                                       ; $6cd2: $5b
    push af                                       ; $6cd3: $f5
    ld d, e                                       ; $6cd4: $53
    ld [hl], $4e                                  ; $6cd5: $36 $4e
    ld b, e                                       ; $6cd7: $43
    nop                                           ; $6cd8: $00
    ld b, $c4                                     ; $6cd9: $06 $c4
    jr jr_05a_6d34                                ; $6cdb: $18 $57

    jp nz, Jump_05a_6628                          ; $6cdd: $c2 $28 $66

    di                                            ; $6ce0: $f3
    ld [hl], $43                                  ; $6ce1: $36 $43
    xor [hl]                                      ; $6ce3: $ae
    dec d                                         ; $6ce4: $15
    dec de                                        ; $6ce5: $1b
    push hl                                       ; $6ce6: $e5
    sub e                                         ; $6ce7: $93
    rrca                                          ; $6ce8: $0f
    ld bc, $be2c                                  ; $6ce9: $01 $2c $be
    add l                                         ; $6cec: $85
    ld a, b                                       ; $6ced: $78
    add a                                         ; $6cee: $87
    rst $28                                       ; $6cef: $ef
    rra                                           ; $6cf0: $1f
    ld b, b                                       ; $6cf1: $40
    pop af                                        ; $6cf2: $f1
    add hl, hl                                    ; $6cf3: $29
    inc h                                         ; $6cf4: $24
    ld e, e                                       ; $6cf5: $5b
    or $27                                        ; $6cf6: $f6 $27
    add hl, sp                                    ; $6cf8: $39
    nop                                           ; $6cf9: $00
    push af                                       ; $6cfa: $f5
    ld b, a                                       ; $6cfb: $47
    reti                                          ; $6cfc: $d9


    sub e                                         ; $6cfd: $93
    jp nz, $b6fb                                  ; $6cfe: $c2 $fb $b6

    inc b                                         ; $6d01: $04
    ld [hl-], a                                   ; $6d02: $32
    sub c                                         ; $6d03: $91
    rst $38                                       ; $6d04: $ff
    rst $38                                       ; $6d05: $ff
    ld [hl], e                                    ; $6d06: $73
    set 1, l                                      ; $6d07: $cb $cd
    or b                                          ; $6d09: $b0
    nop                                           ; $6d0a: $00
    rst $38                                       ; $6d0b: $ff
    rst $38                                       ; $6d0c: $ff
    rst $38                                       ; $6d0d: $ff
    rst $38                                       ; $6d0e: $ff
    sub [hl]                                      ; $6d0f: $96
    rst $38                                       ; $6d10: $ff
    sbc c                                         ; $6d11: $99
    rst $18                                       ; $6d12: $df
    rst $38                                       ; $6d13: $ff
    rst $38                                       ; $6d14: $ff
    rst $38                                       ; $6d15: $ff
    rst $38                                       ; $6d16: $ff
    rst $38                                       ; $6d17: $ff
    rst $38                                       ; $6d18: $ff
    rst $38                                       ; $6d19: $ff
    rst $38                                       ; $6d1a: $ff
    nop                                           ; $6d1b: $00
    scf                                           ; $6d1c: $37
    xor $dc                                       ; $6d1d: $ee $dc
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
    nop                                           ; $6d2c: $00
    rst $38                                       ; $6d2d: $ff
    rst $38                                       ; $6d2e: $ff
    rst $38                                       ; $6d2f: $ff
    rst $38                                       ; $6d30: $ff
    rst $38                                       ; $6d31: $ff
    rst $38                                       ; $6d32: $ff
    rst $38                                       ; $6d33: $ff

jr_05a_6d34:
    rst $38                                       ; $6d34: $ff
    rst $38                                       ; $6d35: $ff
    rst $38                                       ; $6d36: $ff
    rst $38                                       ; $6d37: $ff
    rst $38                                       ; $6d38: $ff
    rst $38                                       ; $6d39: $ff
    rst $38                                       ; $6d3a: $ff
    rst $38                                       ; $6d3b: $ff
    rst $38                                       ; $6d3c: $ff
    nop                                           ; $6d3d: $00
    rst $38                                       ; $6d3e: $ff
    rst $38                                       ; $6d3f: $ff
    rst $38                                       ; $6d40: $ff
    rst $38                                       ; $6d41: $ff
    rst $38                                       ; $6d42: $ff
    rst $38                                       ; $6d43: $ff
    nop                                           ; $6d44: $00
    cp a                                          ; $6d45: $bf
    rst $38                                       ; $6d46: $ff

Call_05a_6d47:
    rst $38                                       ; $6d47: $ff
    rst $38                                       ; $6d48: $ff
    rst $38                                       ; $6d49: $ff
    rst $38                                       ; $6d4a: $ff
    rst $38                                       ; $6d4b: $ff
    rst $38                                       ; $6d4c: $ff
    rst $38                                       ; $6d4d: $ff
    nop                                           ; $6d4e: $00
    ld e, $73                                     ; $6d4f: $1e $73
    nop                                           ; $6d51: $00
    nop                                           ; $6d52: $00
    nop                                           ; $6d53: $00
    rst $18                                       ; $6d54: $df
    ld e, d                                       ; $6d55: $5a
    ld e, e                                       ; $6d56: $5b
    ld e, h                                       ; $6d57: $5c
    ld e, l                                       ; $6d58: $5d
    ld sp, $e3ff                                  ; $6d59: $31 $ff $e3
    ld h, b                                       ; $6d5c: $60
    adc h                                         ; $6d5d: $8c
    push hl                                       ; $6d5e: $e5
    ld c, [hl]                                    ; $6d5f: $4e
    rst $38                                       ; $6d60: $ff
    db $e3                                        ; $6d61: $e3
    nop                                           ; $6d62: $00
    rst $38                                       ; $6d63: $ff
    rst $38                                       ; $6d64: $ff
    rst $20                                       ; $6d65: $e7
    and $5b                                       ; $6d66: $e6 $5b
    ld h, b                                       ; $6d68: $60
    ld sp, $4dff                                  ; $6d69: $31 $ff $4d
    ld a, [hl-]                                   ; $6d6c: $3a
    ld d, h                                       ; $6d6d: $54
    ld d, l                                       ; $6d6e: $55
    ld d, h                                       ; $6d6f: $54
    ld d, l                                       ; $6d70: $55
    ld a, [hl-]                                   ; $6d71: $3a
    sub a                                         ; $6d72: $97
    ld hl, sp-$41                                 ; $6d73: $f8 $bf
    and $ca                                       ; $6d75: $e6 $ca
    rst $38                                       ; $6d77: $ff
    add sp, -$19                                  ; $6d78: $e8 $e7
    ld h, b                                       ; $6d7a: $60
    ld c, l                                       ; $6d7b: $4d
    ld a, [hl-]                                   ; $6d7c: $3a
    ld b, h                                       ; $6d7d: $44
    jr nc, @+$81                                  ; $6d7e: $30 $7f

    jr nc, jr_05a_6dee                            ; $6d80: $30 $6c

    ld h, l                                       ; $6d82: $65
    ld h, a                                       ; $6d83: $67
    ld h, a                                       ; $6d84: $67
    sub h                                         ; $6d85: $94
    sub l                                         ; $6d86: $95
    ld a, [hl]                                    ; $6d87: $7e
    push hl                                       ; $6d88: $e5
    cp h                                          ; $6d89: $bc
    jp z, $e8ff                                   ; $6d8a: $ca $ff $e8

    rst $20                                       ; $6d8d: $e7
    ld c, l                                       ; $6d8e: $4d
    ld [hl-], a                                   ; $6d8f: $32
    ld l, h                                       ; $6d90: $6c
    ld l, h                                       ; $6d91: $6c
    ret nz                                        ; $6d92: $c0

    ldh [rOCPS], a                                ; $6d93: $e0 $6a
    ccf                                           ; $6d95: $3f
    ld l, d                                       ; $6d96: $6a
    ld l, d                                       ; $6d97: $6a
    ld h, a                                       ; $6d98: $67
    sub c                                         ; $6d99: $91
    sub [hl]                                      ; $6d9a: $96
    sub a                                         ; $6d9b: $97
    dec a                                         ; $6d9c: $3d
    db $e3                                        ; $6d9d: $e3
    jp z, $e6ff                                   ; $6d9e: $ca $ff $e6

    add sp, -$19                                  ; $6da1: $e8 $e7
    ld d, c                                       ; $6da3: $51
    ld l, h                                       ; $6da4: $6c
    rst $38                                       ; $6da5: $ff
    ldh [$bf], a                                  ; $6da6: $e0 $bf
    ld [c], a                                     ; $6da8: $e2
    ld h, a                                       ; $6da9: $67
    sub e                                         ; $6daa: $93
    add [hl]                                      ; $6dab: $86
    ld h, e                                       ; $6dac: $63
    add [hl]                                      ; $6dad: $86

jr_05a_6dae:
    sub l                                         ; $6dae: $95
    db $fc                                        ; $6daf: $fc
    jp nz, $ffca                                  ; $6db0: $c2 $ca $ff

    add b                                         ; $6db3: $80
    jp hl                                         ; $6db4: $e9


    ld l, b                                       ; $6db5: $68
    ld l, b                                       ; $6db6: $68
    ld a, [hl]                                    ; $6db7: $7e
    pop hl                                        ; $6db8: $e1
    ld a, l                                       ; $6db9: $7d
    ld l, l                                       ; $6dba: $6d
    ld a, a                                       ; $6dbb: $7f
    ldh [$9d], a                                  ; $6dbc: $e0 $9d
    add [hl]                                      ; $6dbe: $86
    add [hl]                                      ; $6dbf: $86
    sbc h                                         ; $6dc0: $9c
    sub l                                         ; $6dc1: $95
    cp e                                          ; $6dc2: $bb
    ret nz                                        ; $6dc3: $c0

    ld hl, sp-$36                                 ; $6dc4: $f8 $ca
    rst $38                                       ; $6dc6: $ff
    add sp, -$19                                  ; $6dc7: $e8 $e7
    jp nz, $99c0                                  ; $6dc9: $c2 $c0 $99

    ld l, b                                       ; $6dcc: $68
    ld l, b                                       ; $6dcd: $68
    ld l, b                                       ; $6dce: $68
    jr nc, jr_05a_6dde                            ; $6dcf: $30 $0d

    ld l, l                                       ; $6dd1: $6d
    cp a                                          ; $6dd2: $bf
    ldh [$94], a                                  ; $6dd3: $e0 $94
    add [hl]                                      ; $6dd5: $86
    rst $38                                       ; $6dd6: $ff
    ldh [$bf], a                                  ; $6dd7: $e0 $bf
    ldh [$ca], a                                  ; $6dd9: $e0 $ca
    rst $38                                       ; $6ddb: $ff
    ret nz                                        ; $6ddc: $c0

    ret z                                         ; $6ddd: $c8

jr_05a_6dde:
    ld l, a                                       ; $6dde: $6f
    ld sp, $9531                                  ; $6ddf: $31 $31 $95
    sbc h                                         ; $6de2: $9c
    rst $38                                       ; $6de3: $ff
    ldh [$93], a                                  ; $6de4: $e0 $93
    ld l, l                                       ; $6de6: $6d
    rst $38                                       ; $6de7: $ff
    ldh [$7f], a                                  ; $6de8: $e0 $7f
    sbc c                                         ; $6dea: $99
    sbc b                                         ; $6deb: $98
    sbc h                                         ; $6dec: $9c
    add [hl]                                      ; $6ded: $86

jr_05a_6dee:
    add [hl]                                      ; $6dee: $86
    sub d                                         ; $6def: $92
    adc h                                         ; $6df0: $8c
    jp z, $faff                                   ; $6df1: $ca $ff $fa

    add sp, -$19                                  ; $6df4: $e8 $e7
    adc [hl]                                      ; $6df6: $8e
    cp a                                          ; $6df7: $bf
    ldh [$97], a                                  ; $6df8: $e0 $97
    sub [hl]                                      ; $6dfa: $96
    add [hl]                                      ; $6dfb: $86
    add [hl]                                      ; $6dfc: $86
    sub c                                         ; $6dfd: $91
    cp $c0                                        ; $6dfe: $fe $c0
    pop hl                                        ; $6e00: $e1
    ld l, l                                       ; $6e01: $6d
    jr nc, jr_05a_6e34                            ; $6e02: $30 $30

    sbc c                                         ; $6e04: $99
    sbc b                                         ; $6e05: $98
    sub b                                         ; $6e06: $90

jr_05a_6e07:
    ld h, b                                       ; $6e07: $60
    db $f4                                        ; $6e08: $f4
    jp z, $e8ff                                   ; $6e09: $ca $ff $e8

    rst $20                                       ; $6e0c: $e7
    ld c, a                                       ; $6e0d: $4f
    cp a                                          ; $6e0e: $bf
    pop hl                                        ; $6e0f: $e1
    sbc a                                         ; $6e10: $9f
    add [hl]                                      ; $6e11: $86
    add [hl]                                      ; $6e12: $86
    sbc l                                         ; $6e13: $9d
    dec e                                         ; $6e14: $1d
    ld l, d                                       ; $6e15: $6a
    cp a                                          ; $6e16: $bf
    db $e4                                        ; $6e17: $e4
    jr nc, jr_05a_6dae                            ; $6e18: $30 $94

jr_05a_6e1a:
    sub d                                         ; $6e1a: $92
    jp z, $c0ff                                   ; $6e1b: $ca $ff $c0

    add sp, -$41                                  ; $6e1e: $e8 $bf
    ld [c], a                                     ; $6e20: $e2
    sbc a                                         ; $6e21: $9f
    sub b                                         ; $6e22: $90
    add [hl]                                      ; $6e23: $86
    sbc l                                         ; $6e24: $9d
    ld h, a                                       ; $6e25: $67
    ld l, d                                       ; $6e26: $6a
    cp [hl]                                       ; $6e27: $be
    ld [c], a                                     ; $6e28: $e2
    cp a                                          ; $6e29: $bf
    ldh [$50], a                                  ; $6e2a: $e0 $50
    adc b                                         ; $6e2c: $88
    jp z, $c0ff                                   ; $6e2d: $ca $ff $c0

    jp hl                                         ; $6e30: $e9


    ld a, [hl]                                    ; $6e31: $7e
    pop hl                                        ; $6e32: $e1
    sub d                                         ; $6e33: $92

jr_05a_6e34:
    ret nz                                        ; $6e34: $c0

    ld [c], a                                     ; $6e35: $e2
    ld a, l                                       ; $6e36: $7d
    ldh [$32], a                                  ; $6e37: $e0 $32
    pop bc                                        ; $6e39: $c1
    ld d, c                                       ; $6e3a: $51
    jr c, jr_05a_6e07                             ; $6e3b: $38 $ca

    rst $38                                       ; $6e3d: $ff
    ret nz                                        ; $6e3e: $c0

    ld [$e13d], a                                 ; $6e3f: $ea $3d $e1
    sub l                                         ; $6e42: $95
    add [hl]                                      ; $6e43: $86
    sub e                                         ; $6e44: $93
    ld a, a                                       ; $6e45: $7f
    ldh [$36], a                                  ; $6e46: $e0 $36
    ret nz                                        ; $6e48: $c0

    adc a                                         ; $6e49: $8f
    ld l, h                                       ; $6e4a: $6c
    ld l, h                                       ; $6e4b: $6c
    ld c, b                                       ; $6e4c: $48
    ld c, c                                       ; $6e4d: $49
    jp z, $c0ff                                   ; $6e4e: $ca $ff $c0

    db $eb                                        ; $6e51: $eb
    cp a                                          ; $6e52: $bf
    ld [c], a                                     ; $6e53: $e2
    sub c                                         ; $6e54: $91
    inc sp                                        ; $6e55: $33
    ld h, a                                       ; $6e56: $67
    ld l, d                                       ; $6e57: $6a
    jr c, jr_05a_6e1a                             ; $6e58: $38 $c0

    or d                                          ; $6e5a: $b2
    and b                                         ; $6e5b: $a0
    add hl, sp                                    ; $6e5c: $39
    ld sp, $ffca                                  ; $6e5d: $31 $ca $ff
    ret nz                                        ; $6e60: $c0

    db $ec                                        ; $6e61: $ec
    xor $7e                                       ; $6e62: $ee $7e
    ld [c], a                                     ; $6e64: $e2
    sub h                                         ; $6e65: $94
    ld h, a                                       ; $6e66: $67
    ld h, l                                       ; $6e67: $65
    rst $38                                       ; $6e68: $ff
    ldh [$6c], a                                  ; $6e69: $e0 $6c
    ld [hl], $37                                  ; $6e6b: $36 $37
    add sp, -$40                                  ; $6e6d: $e8 $c0
    rst $38                                       ; $6e6f: $ff
    ret nz                                        ; $6e70: $c0

    xor $7a                                       ; $6e71: $ee $7a
    pop bc                                        ; $6e73: $c1
    sub a                                         ; $6e74: $97
    ld a, c                                       ; $6e75: $79
    add d                                         ; $6e76: $82
    ld b, [hl]                                    ; $6e77: $46
    ld b, a                                       ; $6e78: $47
    ld sp, $c000                                  ; $6e79: $31 $00 $c0
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
    nop                                           ; $6e8b: $00
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
    nop                                           ; $6e9c: $00
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
    nop                                           ; $6ead: $00
    rst $38                                       ; $6eae: $ff

Call_05a_6eaf:
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
    nop                                           ; $6ebe: $00
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
    nop                                           ; $6ecf: $00
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
    nop                                           ; $6ee0: $00
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
    nop                                           ; $6ef1: $00
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
    nop                                           ; $6f02: $00
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
    nop                                           ; $6f13: $00
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
    nop                                           ; $6f24: $00
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
    nop                                           ; $6f35: $00
    rst $38                                       ; $6f36: $ff
    rst $38                                       ; $6f37: $ff
    rst $38                                       ; $6f38: $ff
    rst $38                                       ; $6f39: $ff
    rst $38                                       ; $6f3a: $ff
    rst $38                                       ; $6f3b: $ff
    rst $38                                       ; $6f3c: $ff
    db $f4                                        ; $6f3d: $f4
    nop                                           ; $6f3e: $00
    nop                                           ; $6f3f: $00
    nop                                           ; $6f40: $00
    and l                                         ; $6f41: $a5
    nop                                           ; $6f42: $00
    rst $38                                       ; $6f43: $ff
    push hl                                       ; $6f44: $e5
    ld [hl-], a                                   ; $6f45: $32
    or $e6                                        ; $6f46: $f6 $e6
    rst $30                                       ; $6f48: $f7
    rst $20                                       ; $6f49: $e7
    dec [hl]                                      ; $6f4a: $35
    db $ec                                        ; $6f4b: $ec
    xor $37                                       ; $6f4c: $ee $37
    db $ec                                        ; $6f4e: $ec
    jp c, $c7f0                                   ; $6f4f: $da $f0 $c7

    add sp, $33                                   ; $6f52: $e8 $33
    ld sp, $f2e0                                  ; $6f54: $31 $e0 $f2
    ld [hl], $30                                  ; $6f57: $36 $30
    scf                                           ; $6f59: $37
    cp a                                          ; $6f5a: $bf
    ld h, $20                                     ; $6f5b: $26 $20
    daa                                           ; $6f5d: $27
    db $10                                        ; $6f5e: $10
    ld d, $17                                     ; $6f5f: $16 $17
    jp nz, Jump_000_34f6                          ; $6f61: $c2 $f6 $34

    rst $38                                       ; $6f64: $ff
    ld [hl], $32                                  ; $6f65: $36 $32
    jr nc, jr_05a_6fa0                            ; $6f67: $30 $37

    ld sp, $3133                                  ; $6f69: $31 $33 $31
    inc sp                                        ; $6f6c: $33
    nop                                           ; $6f6d: $00
    and b                                         ; $6f6e: $a0
    ei                                            ; $6f6f: $fb
    rst $38                                       ; $6f70: $ff
    rst $28                                       ; $6f71: $ef
    nop                                           ; $6f72: $00
    nop                                           ; $6f73: $00
    nop                                           ; $6f74: $00
    ld a, l                                       ; $6f75: $7d
    ld l, a                                       ; $6f76: $6f
    xor l                                         ; $6f77: $ad
    ld l, a                                       ; $6f78: $6f
    ld e, d                                       ; $6f79: $5a
    ld [hl], d                                    ; $6f7a: $72
    ld hl, $ec74                                  ; $6f7b: $21 $74 $ec
    dec hl                                        ; $6f7e: $2b
    ld [hl+], a                                   ; $6f7f: $22
    dec sp                                        ; $6f80: $3b
    ld b, b                                       ; $6f81: $40
    ld [hl+], a                                   ; $6f82: $22
    nop                                           ; $6f83: $00
    add hl, bc                                    ; $6f84: $09
    and l                                         ; $6f85: $a5
    ld b, e                                       ; $6f86: $43
    xor $37                                       ; $6f87: $ee $37
    ld [hl+], a                                   ; $6f89: $22
    dec sp                                        ; $6f8a: $3b
    ld b, b                                       ; $6f8b: $40
    ld [hl+], a                                   ; $6f8c: $22
    ccf                                           ; $6f8d: $3f
    ld a, a                                       ; $6f8e: $7f
    rla                                           ; $6f8f: $17
    ld e, [hl]                                    ; $6f90: $5e
    ld de, $2249                                  ; $6f91: $11 $49 $22
    dec sp                                        ; $6f94: $3b
    ld [$0825], sp                                ; $6f95: $08 $25 $08
    dec h                                         ; $6f98: $25
    ld [$0825], sp                                ; $6f99: $08 $25 $08
    dec h                                         ; $6f9c: $25
    ld [$0825], sp                                ; $6f9d: $08 $25 $08

jr_05a_6fa0:
    dec h                                         ; $6fa0: $25
    ld [$0825], sp                                ; $6fa1: $08 $25 $08
    dec h                                         ; $6fa4: $25
    ld [$0825], sp                                ; $6fa5: $08 $25 $08
    dec h                                         ; $6fa8: $25
    ld [$0825], sp                                ; $6fa9: $08 $25 $08
    dec h                                         ; $6fac: $25
    ld l, a                                       ; $6fad: $6f
    inc c                                         ; $6fae: $0c
    ld c, h                                       ; $6faf: $4c
    inc c                                         ; $6fb0: $0c
    inc l                                         ; $6fb1: $2c
    cp $e0                                        ; $6fb2: $fe $e0
    inc c                                         ; $6fb4: $0c
    dec bc                                        ; $6fb5: $0b
    rst $38                                       ; $6fb6: $ff
    ldh [rIE], a                                  ; $6fb7: $e0 $ff
    inc c                                         ; $6fb9: $0c
    inc c                                         ; $6fba: $0c
    inc c                                         ; $6fbb: $0c
    inc l                                         ; $6fbc: $2c
    ld c, d                                       ; $6fbd: $4a
    ld l, d                                       ; $6fbe: $6a
    ld l, d                                       ; $6fbf: $6a
    ld l, d                                       ; $6fc0: $6a
    inc bc                                        ; $6fc1: $03
    inc c                                         ; $6fc2: $0c
    ld c, h                                       ; $6fc3: $4c
    rst $38                                       ; $6fc4: $ff
    ldh [$f3], a                                  ; $6fc5: $e0 $f3
    ldh [$fc], a                                  ; $6fc7: $e0 $fc
    ldh [$f9], a                                  ; $6fc9: $e0 $f9
    pop hl                                        ; $6fcb: $e1
    ld hl, sp-$1e                                 ; $6fcc: $f8 $e2
    db $f4                                        ; $6fce: $f4
    db $e3                                        ; $6fcf: $e3
    ld h, b                                       ; $6fd0: $60
    jp hl                                         ; $6fd1: $e9


    ld [c], a                                     ; $6fd2: $e2
    db $fd                                        ; $6fd3: $fd
    ld [$e1d5], a                                 ; $6fd4: $ea $d5 $e1
    jp nc, $c0e1                                  ; $6fd7: $d2 $e1 $c0

    db $e4                                        ; $6fda: $e4
    inc c                                         ; $6fdb: $0c
    dec hl                                        ; $6fdc: $2b
    cp a                                          ; $6fdd: $bf
    ldh [rP1], a                                  ; $6fde: $e0 $00
    jp hl                                         ; $6fe0: $e9


    ld [c], a                                     ; $6fe1: $e2
    db $fd                                        ; $6fe2: $fd
    and $b5                                       ; $6fe3: $e6 $b5
    db $e3                                        ; $6fe5: $e3
    sbc c                                         ; $6fe6: $99
    pop hl                                        ; $6fe7: $e1
    ld sp, hl                                     ; $6fe8: $f9
    and $bb                                       ; $6fe9: $e6 $bb
    add sp, -$78                                  ; $6feb: $e8 $88
    pop hl                                        ; $6fed: $e1
    db $fc                                        ; $6fee: $fc
    push hl                                       ; $6fef: $e5
    ld h, b                                       ; $6ff0: $60
    ldh a, [$e2]                                  ; $6ff1: $f0 $e2
    cp a                                          ; $6ff3: $bf
    ldh [$c0], a                                  ; $6ff4: $e0 $c0
    add sp, -$47                                  ; $6ff6: $e8 $b9
    ldh [$b2], a                                  ; $6ff8: $e0 $b2
    db $e4                                        ; $6ffa: $e4
    inc l                                         ; $6ffb: $2c
    inc l                                         ; $6ffc: $2c
    ld sp, hl                                     ; $6ffd: $f9
    push hl                                       ; $6ffe: $e5
    adc h                                         ; $6fff: $8c
    ret nz                                        ; $7000: $c0

    or $78                                        ; $7001: $f6 $78
    db $e3                                        ; $7003: $e3
    dec hl                                        ; $7004: $2b
    ld c, d                                       ; $7005: $4a
    ld h, a                                       ; $7006: $67
    db $e4                                        ; $7007: $e4
    ld c, e                                       ; $7008: $4b
    db $e3                                        ; $7009: $e3
    ld b, a                                       ; $700a: $47
    push hl                                       ; $700b: $e5
    inc l                                         ; $700c: $2c
    ld sp, hl                                     ; $700d: $f9
    inc l                                         ; $700e: $2c
    ld sp, hl                                     ; $700f: $f9
    db $e4                                        ; $7010: $e4
    add b                                         ; $7011: $80
    db $ed                                        ; $7012: $ed
    ld l, e                                       ; $7013: $6b
    ld l, e                                       ; $7014: $6b
    ld c, e                                       ; $7015: $4b
    ld l, e                                       ; $7016: $6b
    ld c, e                                       ; $7017: $4b
    dec bc                                        ; $7018: $0b
    ld c, e                                       ; $7019: $4b
    ld c, e                                       ; $701a: $4b
    ld [hl], a                                    ; $701b: $77
    rst $20                                       ; $701c: $e7
    dec hl                                        ; $701d: $2b
    ld b, $e1                                     ; $701e: $06 $e1
    add d                                         ; $7020: $82
    db $e4                                        ; $7021: $e4
    ld b, b                                       ; $7022: $40
    add sp, -$55                                  ; $7023: $e8 $ab
    db $e4                                        ; $7025: $e4
    nop                                           ; $7026: $00
    call c, $fcc0                                 ; $7027: $dc $c0 $fc
    jp $e337                                      ; $702a: $c3 $37 $e3


    pop bc                                        ; $702d: $c1
    ldh [$3d], a                                  ; $702e: $e0 $3d

jr_05a_7030:
    ld [c], a                                     ; $7030: $e2
    cp [hl]                                       ; $7031: $be
    jp hl                                         ; $7032: $e9


    ld bc, $73ea                                  ; $7033: $01 $ea $73
    and $38                                       ; $7036: $e6 $38
    ld sp, hl                                     ; $7038: $f9
    rst $20                                       ; $7039: $e7
    cp h                                          ; $703a: $bc
    ret                                           ; $703b: $c9


    pop bc                                        ; $703c: $c1
    ldh [$2b], a                                  ; $703d: $e0 $2b
    dec hl                                        ; $703f: $2b
    dec hl                                        ; $7040: $2b
    cp [hl]                                       ; $7041: $be
    db $eb                                        ; $7042: $eb
    pop bc                                        ; $7043: $c1
    rst $28                                       ; $7044: $ef

jr_05a_7045:
    jr jr_05a_70c6                                ; $7045: $18 $7f

    rst $10                                       ; $7047: $d7
    pop bc                                        ; $7048: $c1
    ld [c], a                                     ; $7049: $e2
    ret nz                                        ; $704a: $c0

    ldh [rWX], a                                  ; $704b: $e0 $4b
    ld c, e                                       ; $704d: $4b
    jr c, jr_05a_7030                             ; $704e: $38 $e0

    ld a, [hl-]                                   ; $7050: $3a
    db $e4                                        ; $7051: $e4
    ld b, c                                       ; $7052: $41
    ld [c], a                                     ; $7053: $e2
    ld h, b                                       ; $7054: $60
    add $c1                                       ; $7055: $c6 $c1
    ret nz                                        ; $7057: $c0

    jp nz, $c67f                                  ; $7058: $c2 $7f $c6

    jr c, jr_05a_7045                             ; $705b: $38 $e8

    ld a, [hl-]                                   ; $705d: $3a
    rst $00                                       ; $705e: $c7
    dec hl                                        ; $705f: $2b
    ld c, e                                       ; $7060: $4b
    add c                                         ; $7061: $81
    push hl                                       ; $7062: $e5
    ld h, b                                       ; $7063: $60
    scf                                           ; $7064: $37
    pop hl                                        ; $7065: $e1
    ld hl, sp-$3d                                 ; $7066: $f8 $c3
    adc h                                         ; $7068: $8c
    push hl                                       ; $7069: $e5
    dec b                                         ; $706a: $05
    add $41                                       ; $706b: $c6 $41
    rst $30                                       ; $706d: $f7
    inc c                                         ; $706e: $0c
    dec hl                                        ; $706f: $2b
    cp a                                          ; $7070: $bf
    ldh [rP1], a                                  ; $7071: $e0 $00
    call nz, $80c1                                ; $7073: $c4 $c1 $80
    pop hl                                        ; $7076: $e1
    ld hl, sp-$3d                                 ; $7077: $f8 $c3
    ld hl, sp-$5d                                 ; $7079: $f8 $a3
    ld c, c                                       ; $707b: $49
    push bc                                       ; $707c: $c5
    ld a, h                                       ; $707d: $7c
    call nz, $e8f9                                ; $707e: $c4 $f9 $e8
    nop                                           ; $7081: $00
    db $ec                                        ; $7082: $ec
    inc b                                         ; $7083: $04
    cp a                                          ; $7084: $bf
    ldh [$c0], a                                  ; $7085: $e0 $c0
    db $eb                                        ; $7087: $eb
    ld c, e                                       ; $7088: $4b
    ret nz                                        ; $7089: $c0

    push bc                                       ; $708a: $c5
    ret nc                                        ; $708b: $d0

    add sp, -$40                                  ; $708c: $e8 $c0
    jp z, $a1b7                                   ; $708e: $ca $b7 $a1

    cp d                                          ; $7091: $ba
    and [hl]                                      ; $7092: $a6
    dec d                                         ; $7093: $15
    ld l, e                                       ; $7094: $6b
    cp a                                          ; $7095: $bf
    ldh [$0b], a                                  ; $7096: $e0 $0b
    ret nz                                        ; $7098: $c0

    ret nz                                        ; $7099: $c0

    dec hl                                        ; $709a: $2b
    nop                                           ; $709b: $00
    ldh [$b4], a                                  ; $709c: $e0 $b4
    ld [c], a                                     ; $709e: $e2
    dec [hl]                                      ; $709f: $35
    ret nz                                        ; $70a0: $c0

    jr nc, jr_05a_70a3                            ; $70a1: $30 $00

jr_05a_70a3:
    ld [$a43a], a                                 ; $70a3: $ea $3a $a4
    ccf                                           ; $70a6: $3f
    and a                                         ; $70a7: $a7
    cp [hl]                                       ; $70a8: $be
    xor e                                         ; $70a9: $ab
    inc l                                         ; $70aa: $2c
    inc l                                         ; $70ab: $2c
    add d                                         ; $70ac: $82
    jp nz, $e03b                                  ; $70ad: $c2 $3b $e0

    add b                                         ; $70b0: $80
    ret nz                                        ; $70b1: $c0

    ldh [$f8], a                                  ; $70b2: $e0 $f8
    and c                                         ; $70b4: $a1
    ld b, b                                       ; $70b5: $40
    db $e4                                        ; $70b6: $e4
    nop                                           ; $70b7: $00
    and $fe                                       ; $70b8: $e6 $fe
    add e                                         ; $70ba: $83
    ld b, b                                       ; $70bb: $40
    ret z                                         ; $70bc: $c8

    ret nz                                        ; $70bd: $c0

    db $ed                                        ; $70be: $ed
    inc l                                         ; $70bf: $2c
    ld [hl], c                                    ; $70c0: $71
    inc l                                         ; $70c1: $2c
    res 4, d                                      ; $70c2: $cb $a2
    ld a, a                                       ; $70c4: $7f
    pop bc                                        ; $70c5: $c1

jr_05a_70c6:
    cp b                                          ; $70c6: $b8
    and c                                         ; $70c7: $a1
    ld l, e                                       ; $70c8: $6b
    dec hl                                        ; $70c9: $2b
    dec bc                                        ; $70ca: $0b
    call nz, Call_000_0084                        ; $70cb: $c4 $84 $00
    pop bc                                        ; $70ce: $c1
    ret                                           ; $70cf: $c9


    ld [hl], c                                    ; $70d0: $71
    xor c                                         ; $70d1: $a9
    jp z, $bee4                                   ; $70d2: $ca $e4 $be

Call_05a_70d5:
    add sp, -$3f                                  ; $70d5: $e8 $c1
    and b                                         ; $70d7: $a0
    cp a                                          ; $70d8: $bf
    and c                                         ; $70d9: $a1
    ld b, e                                       ; $70da: $43
    pop hl                                        ; $70db: $e1
    or c                                          ; $70dc: $b1
    and c                                         ; $70dd: $a1
    nop                                           ; $70de: $00
    ret nz                                        ; $70df: $c0

    xor l                                         ; $70e0: $ad
    add a                                         ; $70e1: $87
    adc b                                         ; $70e2: $88
    rst $28                                       ; $70e3: $ef
    add h                                         ; $70e4: $84
    ret nz                                        ; $70e5: $c0

    jp hl                                         ; $70e6: $e9


    dec h                                         ; $70e7: $25
    and b                                         ; $70e8: $a0
    ld a, [hl]                                    ; $70e9: $7e
    and h                                         ; $70ea: $a4
    rst $30                                       ; $70eb: $f7
    pop bc                                        ; $70ec: $c1
    add c                                         ; $70ed: $81
    ldh [rP1], a                                  ; $70ee: $e0 $00
    ld b, b                                       ; $70f0: $40
    jp $8860                                      ; $70f1: $c3 $60 $88


    add b                                         ; $70f4: $80
    adc b                                         ; $70f5: $88
    ld [hl], $83                                  ; $70f6: $36 $83
    add c                                         ; $70f8: $81
    add sp, -$6a                                  ; $70f9: $e8 $96
    ret z                                         ; $70fb: $c8

    adc [hl]                                      ; $70fc: $8e
    call nz, $c64e                                ; $70fd: $c4 $4e $c6
    nop                                           ; $7100: $00
    add b                                         ; $7101: $80
    adc l                                         ; $7102: $8d
    or $87                                        ; $7103: $f6 $87
    ret nz                                        ; $7105: $c0

    ld [$70d5], a                                 ; $7106: $ea $d5 $70
    add h                                         ; $7109: $84
    adc c                                         ; $710a: $89
    add b                                         ; $710b: $80
    adc b                                         ; $710c: $88
    or a                                          ; $710d: $b7
    and [hl]                                      ; $710e: $a6
    cp [hl]                                       ; $710f: $be
    ld l, h                                       ; $7110: $6c
    nop                                           ; $7111: $00
    push de                                       ; $7112: $d5
    ld l, [hl]                                    ; $7113: $6e
    add d                                         ; $7114: $82
    rst $20                                       ; $7115: $e7
    add b                                         ; $7116: $80
    adc e                                         ; $7117: $8b
    inc l                                         ; $7118: $2c
    add h                                         ; $7119: $84
    adc h                                         ; $711a: $8c
    pop bc                                        ; $711b: $c1
    ld c, e                                       ; $711c: $4b
    ld h, d                                       ; $711d: $62
    ret nz                                        ; $711e: $c0

    ld [$68d5], a                                 ; $711f: $ea $d5 $68
    nop                                           ; $7122: $00
    ld a, a                                       ; $7123: $7f
    and [hl]                                      ; $7124: $a6
    sbc h                                         ; $7125: $9c
    jp hl                                         ; $7126: $e9


    ld [hl], a                                    ; $7127: $77
    add a                                         ; $7128: $87
    ret nz                                        ; $7129: $c0

    db $eb                                        ; $712a: $eb
    push de                                       ; $712b: $d5
    ld [hl], b                                    ; $712c: $70
    pop bc                                        ; $712d: $c1
    add sp, $2a                                   ; $712e: $e8 $2a
    jp hl                                         ; $7130: $e9


    db $fd                                        ; $7131: $fd
    ld b, a                                       ; $7132: $47
    nop                                           ; $7133: $00
    cp a                                          ; $7134: $bf
    ret                                           ; $7135: $c9


    push de                                       ; $7136: $d5
    ld [hl], c                                    ; $7137: $71
    ret nz                                        ; $7138: $c0

    ret                                           ; $7139: $c9


    cp a                                          ; $713a: $bf
    ld l, l                                       ; $713b: $6d
    ld b, b                                       ; $713c: $40
    adc $91                                       ; $713d: $ce $91
    adc b                                         ; $713f: $88
    call c, $8b68                                 ; $7140: $dc $68 $8b
    ld b, [hl]                                    ; $7143: $46
    nop                                           ; $7144: $00
    add b                                         ; $7145: $80
    add [hl]                                      ; $7146: $86
    cp [hl]                                       ; $7147: $be
    xor d                                         ; $7148: $aa
    ld a, c                                       ; $7149: $79
    ld c, l                                       ; $714a: $4d
    ld d, l                                       ; $714b: $55
    db $ec                                        ; $714c: $ec
    adc e                                         ; $714d: $8b
    ld b, [hl]                                    ; $714e: $46
    add a                                         ; $714f: $87
    adc d                                         ; $7150: $8a
    cp $46                                        ; $7151: $fe $46
    ret nz                                        ; $7153: $c0

    xor e                                         ; $7154: $ab
    nop                                           ; $7155: $00
    ld de, $d5c8                                  ; $7156: $11 $c8 $d5
    ld l, e                                       ; $7159: $6b
    sub d                                         ; $715a: $92
    ld b, [hl]                                    ; $715b: $46
    or d                                          ; $715c: $b2
    ld h, h                                       ; $715d: $64
    rst $30                                       ; $715e: $f7
    ld b, [hl]                                    ; $715f: $46
    nop                                           ; $7160: $00
    ld [$4756], a                                 ; $7161: $ea $56 $47
    ld d, l                                       ; $7164: $55
    add sp, $00                                   ; $7165: $e8 $00
    sub h                                         ; $7167: $94
    rst $20                                       ; $7168: $e7
    add $2a                                       ; $7169: $c6 $2a
    ld a, $84                                     ; $716b: $3e $84
    add h                                         ; $716d: $84
    ret z                                         ; $716e: $c8

    cp h                                          ; $716f: $bc
    daa                                           ; $7170: $27
    push de                                       ; $7171: $d5
    ld l, d                                       ; $7172: $6a
    or [hl]                                       ; $7173: $b6
    ret z                                         ; $7174: $c8

    db $eb                                        ; $7175: $eb
    rst $08                                       ; $7176: $cf
    nop                                           ; $7177: $00
    ei                                            ; $7178: $fb
    dec hl                                        ; $7179: $2b
    db $db                                        ; $717a: $db
    dec h                                         ; $717b: $25
    dec d                                         ; $717c: $15
    call z, $a9b7                                 ; $717d: $cc $b7 $a9
    db $eb                                        ; $7180: $eb
    bit 7, h                                      ; $7181: $cb $7c
    dec hl                                        ; $7183: $2b
    ld [hl+], a                                   ; $7184: $22
    daa                                           ; $7185: $27
    ld d, l                                       ; $7186: $55
    db $ec                                        ; $7187: $ec
    nop                                           ; $7188: $00
    ld de, $2224                                  ; $7189: $11 $24 $22
    rst $28                                       ; $718c: $ef
    inc a                                         ; $718d: $3c
    add hl, hl                                    ; $718e: $29
    ld [hl+], a                                   ; $718f: $22
    inc h                                         ; $7190: $24
    ld d, l                                       ; $7191: $55
    db $ec                                        ; $7192: $ec
    jp z, $2229                                   ; $7193: $ca $29 $22

    rst $28                                       ; $7196: $ef
    rst $38                                       ; $7197: $ff
    sub c                                         ; $7198: $91
    nop                                           ; $7199: $00
    adc [hl]                                      ; $719a: $8e
    add [hl]                                      ; $719b: $86
    cp a                                          ; $719c: $bf
    xor b                                         ; $719d: $a8
    call z, $f729                                 ; $719e: $cc $29 $f7
    ld c, d                                       ; $71a1: $4a
    add b                                         ; $71a2: $80
    jp hl                                         ; $71a3: $e9


    ret nz                                        ; $71a4: $c0

    db $d3                                        ; $71a5: $d3
    or $ec                                        ; $71a6: $f6 $ec
    ld [hl+], a                                   ; $71a8: $22
    db $ec                                        ; $71a9: $ec
    nop                                           ; $71aa: $00
    jp Jump_000_3d80                              ; $71ab: $c3 $80 $3d


    db $eb                                        ; $71ae: $eb
    ret nz                                        ; $71af: $c0

    rst $10                                       ; $71b0: $d7
    ld [hl+], a                                   ; $71b1: $22
    pop af                                        ; $71b2: $f1
    ld b, c                                       ; $71b3: $41
    ld l, d                                       ; $71b4: $6a
    sbc [hl]                                      ; $71b5: $9e
    di                                            ; $71b6: $f3
    adc e                                         ; $71b7: $8b
    ld c, b                                       ; $71b8: $48
    ld [hl+], a                                   ; $71b9: $22
    ldh a, [rP1]                                  ; $71ba: $f0 $00
    add d                                         ; $71bc: $82
    xor e                                         ; $71bd: $ab
    ret nz                                        ; $71be: $c0

    pop de                                        ; $71bf: $d1
    or $e8                                        ; $71c0: $f6 $e8
    ld a, c                                       ; $71c2: $79
    rrca                                          ; $71c3: $0f
    add c                                         ; $71c4: $81
    ld [$d2c0], a                                 ; $71c5: $ea $c0 $d2
    sub d                                         ; $71c8: $92
    ld c, e                                       ; $71c9: $4b
    ld sp, hl                                     ; $71ca: $f9
    ld l, a                                       ; $71cb: $6f
    nop                                           ; $71cc: $00
    add b                                         ; $71cd: $80
    ld l, h                                       ; $71ce: $6c
    rst $38                                       ; $71cf: $ff
    ei                                            ; $71d0: $fb
    ld sp, hl                                     ; $71d1: $f9
    ld l, h                                       ; $71d2: $6c
    add b                                         ; $71d3: $80
    db $ed                                        ; $71d4: $ed
    ret nz                                        ; $71d5: $c0

    or $f4                                        ; $71d6: $f6 $f4
    ld c, b                                       ; $71d8: $48
    xor $ab                                       ; $71d9: $ee $ab
    ld b, b                                       ; $71db: $40
    db $ec                                        ; $71dc: $ec
    nop                                           ; $71dd: $00
    adc b                                         ; $71de: $88
    rst $30                                       ; $71df: $f7
    and h                                         ; $71e0: $a4
    sub d                                         ; $71e1: $92
    rst $38                                       ; $71e2: $ff
    rst $38                                       ; $71e3: $ff
    and h                                         ; $71e4: $a4
    sbc e                                         ; $71e5: $9b
    rst $38                                       ; $71e6: $ff
    rst $38                                       ; $71e7: $ff
    and $04                                       ; $71e8: $e6 $04
    and h                                         ; $71ea: $a4
    sbc c                                         ; $71eb: $99
    rst $38                                       ; $71ec: $ff
    rst $38                                       ; $71ed: $ff
    nop                                           ; $71ee: $00
    and h                                         ; $71ef: $a4
    sbc d                                         ; $71f0: $9a
    rst $38                                       ; $71f1: $ff
    rst $38                                       ; $71f2: $ff
    sbc e                                         ; $71f3: $9b
    add c                                         ; $71f4: $81
    and h                                         ; $71f5: $a4
    sub e                                         ; $71f6: $93
    rst $38                                       ; $71f7: $ff
    rst $38                                       ; $71f8: $ff
    ld b, b                                       ; $71f9: $40
    db $ec                                        ; $71fa: $ec
    and h                                         ; $71fb: $a4
    adc l                                         ; $71fc: $8d
    rst $38                                       ; $71fd: $ff
    rst $38                                       ; $71fe: $ff
    nop                                           ; $71ff: $00
    db $e4                                        ; $7200: $e4
    ld l, e                                       ; $7201: $6b
    ld [hl], $28                                  ; $7202: $36 $28
    ret nz                                        ; $7204: $c0

    rst $38                                       ; $7205: $ff
    and [hl]                                      ; $7206: $a6
    xor [hl]                                      ; $7207: $ae
    ret nz                                        ; $7208: $c0

    db $eb                                        ; $7209: $eb
    rst $38                                       ; $720a: $ff
    rst $38                                       ; $720b: $ff
    ld [hl], e                                    ; $720c: $73
    call nc, $bfcd                                ; $720d: $d4 $cd $bf
    nop                                           ; $7210: $00
    rst $38                                       ; $7211: $ff
    rst $38                                       ; $7212: $ff
    rst $38                                       ; $7213: $ff
    rst $38                                       ; $7214: $ff
    sub [hl]                                      ; $7215: $96
    rst $38                                       ; $7216: $ff
    reti                                          ; $7217: $d9


    or e                                          ; $7218: $b3
    rst $38                                       ; $7219: $ff
    rst $38                                       ; $721a: $ff
    rst $38                                       ; $721b: $ff
    rst $38                                       ; $721c: $ff
    rst $38                                       ; $721d: $ff
    rst $38                                       ; $721e: $ff
    rst $38                                       ; $721f: $ff
    rst $38                                       ; $7220: $ff
    nop                                           ; $7221: $00
    scf                                           ; $7222: $37
    db $eb                                        ; $7223: $eb
    call c, $ffff                                 ; $7224: $dc $ff $ff
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
    nop                                           ; $7232: $00
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
    nop                                           ; $7243: $00
    rst $38                                       ; $7244: $ff
    rst $38                                       ; $7245: $ff
    rst $38                                       ; $7246: $ff
    rst $38                                       ; $7247: $ff
    rst $38                                       ; $7248: $ff
    rst $38                                       ; $7249: $ff
    nop                                           ; $724a: $00
    cp a                                          ; $724b: $bf
    rst $38                                       ; $724c: $ff
    rst $38                                       ; $724d: $ff
    rst $38                                       ; $724e: $ff
    rst $38                                       ; $724f: $ff
    rst $38                                       ; $7250: $ff
    rst $38                                       ; $7251: $ff
    rst $38                                       ; $7252: $ff
    rst $38                                       ; $7253: $ff
    nop                                           ; $7254: $00
    ld e, c                                       ; $7255: $59
    ld [hl], e                                    ; $7256: $73
    nop                                           ; $7257: $00
    nop                                           ; $7258: $00
    nop                                           ; $7259: $00
    ld [hl], a                                    ; $725a: $77
    dec hl                                        ; $725b: $2b
    db $10                                        ; $725c: $10
    jr nz, @+$01                                  ; $725d: $20 $ff

jr_05a_725f:
    ldh [rNR50], a                                ; $725f: $e0 $24
    nop                                           ; $7261: $00
    ld sp, $e0ff                                  ; $7262: $31 $ff $e0
    rst $38                                       ; $7265: $ff
    add hl, hl                                    ; $7266: $29
    inc d                                         ; $7267: $14
    inc d                                         ; $7268: $14
    add hl, hl                                    ; $7269: $29
    adc h                                         ; $726a: $8c
    ld c, [hl]                                    ; $726b: $4e
    ld c, [hl]                                    ; $726c: $4e
    ld c, [hl]                                    ; $726d: $4e
    ld e, c                                       ; $726e: $59
    nop                                           ; $726f: $00
    rst $38                                       ; $7270: $ff
    rst $38                                       ; $7271: $ff
    rst $20                                       ; $7272: $e7
    and $11                                       ; $7273: $e6 $11
    dec b                                         ; $7275: $05
    rst $38                                       ; $7276: $ff
    ld [c], a                                     ; $7277: $e2
    rrca                                          ; $7278: $0f
    ret nz                                        ; $7279: $c0

    pop hl                                        ; $727a: $e1
    rra                                           ; $727b: $1f
    dec hl                                        ; $727c: $2b
    jr z, jr_05a_72a3                             ; $727d: $28 $24

    nop                                           ; $727f: $00
    ld h, b                                       ; $7280: $60
    cp a                                          ; $7281: $bf
    ldh [$ca], a                                  ; $7282: $e0 $ca
    rst $38                                       ; $7284: $ff
    add sp, -$19                                  ; $7285: $e8 $e7
    ld a, h                                       ; $7287: $7c
    adc b                                         ; $7288: $88
    pop hl                                        ; $7289: $e1
    db $fc                                        ; $728a: $fc
    push hl                                       ; $728b: $e5
    dec hl                                        ; $728c: $2b
    jr z, @+$22                                   ; $728d: $28 $20

    nop                                           ; $728f: $00
    ld sp, $e0bf                                  ; $7290: $31 $bf $e0
    jr nc, jr_05a_725f                            ; $7293: $30 $ca

    rst $38                                       ; $7295: $ff
    ret nz                                        ; $7296: $c0

    di                                            ; $7297: $f3
    ld [hl], h                                    ; $7298: $74
    ldh [$78], a                                  ; $7299: $e0 $78
    ldh [$60], a                                  ; $729b: $e0 $60
    adc h                                         ; $729d: $8c
    jp z, $80ff                                   ; $729e: $ca $ff $80

    jp hl                                         ; $72a1: $e9


    ld a, a                                       ; $72a2: $7f

jr_05a_72a3:
    ld c, l                                       ; $72a3: $4d
    ld a, [hl-]                                   ; $72a4: $3a
    ld d, h                                       ; $72a5: $54
    ld d, l                                       ; $72a6: $55
    ld d, h                                       ; $72a7: $54
    ld b, [hl]                                    ; $72a8: $46
    ld b, a                                       ; $72a9: $47
    ld [hl], a                                    ; $72aa: $77
    rst $20                                       ; $72ab: $e7
    ld a, c                                       ; $72ac: $79
    ld h, b                                       ; $72ad: $60
    jp z, Jump_05a_40ff                           ; $72ae: $ca $ff $40

    add sp, $4d                                   ; $72b1: $e8 $4d
    ld [hl-], a                                   ; $72b3: $32
    jr nc, jr_05a_731e                            ; $72b4: $30 $68

    rst $38                                       ; $72b6: $ff
    ldh [$a1], a                                  ; $72b7: $e0 $a1
    ld [hl], $be                                  ; $72b9: $36 $be
    add sp, -$36                                  ; $72bb: $e8 $ca
    rst $38                                       ; $72bd: $ff
    add sp, -$19                                  ; $72be: $e8 $e7
    pop bc                                        ; $72c0: $c1
    ldh [rOCPS], a                                ; $72c1: $e0 $6a
    rst $38                                       ; $72c3: $ff
    ld [c], a                                     ; $72c4: $e2
    jr nc, @-$06                                  ; $72c5: $30 $f8

    cp [hl]                                       ; $72c7: $be
    rst $20                                       ; $72c8: $e7
    jp z, $e8ff                                   ; $72c9: $ca $ff $e8

    rst $20                                       ; $72cc: $e7
    add hl, sp                                    ; $72cd: $39
    jr nc, jr_05a_7339                            ; $72ce: $30 $69

    ld l, c                                       ; $72d0: $69
    ld l, d                                       ; $72d1: $6a
    rrca                                          ; $72d2: $0f
    ld l, l                                       ; $72d3: $6d
    ld l, l                                       ; $72d4: $6d
    ld l, d                                       ; $72d5: $6a
    ld l, c                                       ; $72d6: $69
    rst $38                                       ; $72d7: $ff
    ldh [$7c], a                                  ; $72d8: $e0 $7c
    push hl                                       ; $72da: $e5
    jp z, $c0ff                                   ; $72db: $ca $ff $c0

    db $eb                                        ; $72de: $eb
    xor a                                         ; $72df: $af
    ld l, l                                       ; $72e0: $6d
    jr nc, @+$32                                  ; $72e1: $30 $30

    ld l, l                                       ; $72e3: $6d
    ret nz                                        ; $72e4: $c0

    pop hl                                        ; $72e5: $e1
    jr nc, jr_05a_7364                            ; $72e6: $30 $7c

    ldh [rKEY1], a                                ; $72e8: $e0 $4d
    ret z                                         ; $72ea: $c8

    ret nz                                        ; $72eb: $c0

    rst $38                                       ; $72ec: $ff
    ld b, b                                       ; $72ed: $40
    db $ed                                        ; $72ee: $ed
    ret z                                         ; $72ef: $c8

    ldh [$30], a                                  ; $72f0: $e0 $30
    ld a, d                                       ; $72f2: $7a

jr_05a_72f3:
    ldh [$c0], a                                  ; $72f3: $e0 $c0

jr_05a_72f5:
    pop hl                                        ; $72f5: $e1
    jr nc, @+$32                                  ; $72f6: $30 $30

    ld hl, $bf32                                  ; $72f8: $21 $32 $bf
    ldh [$ca], a                                  ; $72fb: $e0 $ca
    rst $38                                       ; $72fd: $ff
    ret nz                                        ; $72fe: $c0

    set 0, b                                      ; $72ff: $cb $c0
    jp hl                                         ; $7301: $e9


    ld l, c                                       ; $7302: $69
    cp a                                          ; $7303: $bf
    ldh [$ca], a                                  ; $7304: $e0 $ca
    rst $38                                       ; $7306: $ff
    ld h, [hl]                                    ; $7307: $66
    ld b, b                                       ; $7308: $40
    adc $54                                       ; $7309: $ce $54
    ld [hl], $ff                                  ; $730b: $36 $ff
    ret nz                                        ; $730d: $c0

    jr c, jr_05a_72f3                             ; $730e: $38 $e3

    ld [hl-], a                                   ; $7310: $32
    ld c, l                                       ; $7311: $4d
    jp z, $f6ff                                   ; $7312: $ca $ff $f6

    add sp, -$19                                  ; $7315: $e8 $e7
    ld [de], a                                    ; $7317: $12
    ld de, $a106                                  ; $7318: $11 $06 $a1
    and b                                         ; $731b: $a0
    add b                                         ; $731c: $80
    ld l, a                                       ; $731d: $6f

jr_05a_731e:
    ld [hl], c                                    ; $731e: $71
    ret c                                         ; $731f: $d8

    cp b                                          ; $7320: $b8
    push bc                                       ; $7321: $c5
    ret nz                                        ; $7322: $c0

    rst $38                                       ; $7323: $ff
    ld [$22e9], a                                 ; $7324: $ea $e9 $22
    ld hl, $e1be                                  ; $7327: $21 $be $e1
    and b                                         ; $732a: $a0
    add b                                         ; $732b: $80
    scf                                           ; $732c: $37
    add b                                         ; $732d: $80
    ld a, c                                       ; $732e: $79
    ld [hl], c                                    ; $732f: $71
    jr c, jr_05a_72f5                             ; $7330: $38 $c3

    ld [hl], c                                    ; $7332: $71
    xor a                                         ; $7333: $af
    ld b, b                                       ; $7334: $40
    rst $38                                       ; $7335: $ff
    jp hl                                         ; $7336: $e9


    add sp, $1f                                   ; $7337: $e8 $1f

jr_05a_7339:
    jr nz, @+$22                                  ; $7339: $20 $20

    ld [hl+], a                                   ; $733b: $22
    ld hl, $c001                                  ; $733c: $21 $01 $c0
    pop hl                                        ; $733f: $e1
    cp a                                          ; $7340: $bf
    ldh [$b8], a                                  ; $7341: $e0 $b8
    and b                                         ; $7343: $a0
    rst $08                                       ; $7344: $cf
    ld l, d                                       ; $7345: $6a
    ld [hl], c                                    ; $7346: $71
    ld a, c                                       ; $7347: $79
    and c                                         ; $7348: $a1
    ret nz                                        ; $7349: $c0

    rst $38                                       ; $734a: $ff
    ret nz                                        ; $734b: $c0

    ld [$2020], a                                 ; $734c: $ea $20 $20
    cp $c0                                        ; $734f: $fe $c0
    db $e3                                        ; $7351: $e3
    add b                                         ; $7352: $80
    ld a, c                                       ; $7353: $79
    ld l, [hl]                                    ; $7354: $6e
    ld d, h                                       ; $7355: $54
    ld d, l                                       ; $7356: $55
    ld l, [hl]                                    ; $7357: $6e
    ld a, c                                       ; $7358: $79
    ld bc, $c080                                  ; $7359: $01 $80 $c0
    rst $38                                       ; $735c: $ff
    rst $38                                       ; $735d: $ff
    rst $38                                       ; $735e: $ff
    rst $38                                       ; $735f: $ff
    rst $38                                       ; $7360: $ff
    rst $38                                       ; $7361: $ff
    rst $38                                       ; $7362: $ff
    rst $38                                       ; $7363: $ff

jr_05a_7364:
    rst $38                                       ; $7364: $ff
    rst $38                                       ; $7365: $ff
    rst $38                                       ; $7366: $ff
    rst $38                                       ; $7367: $ff
    rst $38                                       ; $7368: $ff
    nop                                           ; $7369: $00
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
    nop                                           ; $737a: $00
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
    nop                                           ; $738b: $00
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
    nop                                           ; $739c: $00
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
    nop                                           ; $73ad: $00
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
    nop                                           ; $73be: $00
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
    nop                                           ; $73cf: $00
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
    nop                                           ; $73e0: $00
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
    nop                                           ; $73f1: $00
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
    nop                                           ; $7402: $00
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
    nop                                           ; $7413: $00
    rst $38                                       ; $7414: $ff
    rst $38                                       ; $7415: $ff
    rst $38                                       ; $7416: $ff
    rst $38                                       ; $7417: $ff
    rst $38                                       ; $7418: $ff
    rst $38                                       ; $7419: $ff
    rst $38                                       ; $741a: $ff
    rst $38                                       ; $741b: $ff
    rst $38                                       ; $741c: $ff
    push af                                       ; $741d: $f5
    nop                                           ; $741e: $00
    nop                                           ; $741f: $00
    nop                                           ; $7420: $00
    and l                                         ; $7421: $a5
    nop                                           ; $7422: $00
    rst $38                                       ; $7423: $ff
    push hl                                       ; $7424: $e5
    ld [hl-], a                                   ; $7425: $32
    or $e6                                        ; $7426: $f6 $e6
    rst $30                                       ; $7428: $f7
    rst $20                                       ; $7429: $e7
    dec [hl]                                      ; $742a: $35
    db $ec                                        ; $742b: $ec
    xor $37                                       ; $742c: $ee $37
    db $ec                                        ; $742e: $ec
    jp c, $c7f0                                   ; $742f: $da $f0 $c7

    add sp, $33                                   ; $7432: $e8 $33
    ld sp, $f2e0                                  ; $7434: $31 $e0 $f2
    ld [hl], $30                                  ; $7437: $36 $30
    scf                                           ; $7439: $37
    cp a                                          ; $743a: $bf
    ld h, $20                                     ; $743b: $26 $20
    daa                                           ; $743d: $27
    db $10                                        ; $743e: $10
    ld d, $17                                     ; $743f: $16 $17
    jp nz, Jump_000_34f6                          ; $7441: $c2 $f6 $34

    rst $38                                       ; $7444: $ff
    ld [hl], $32                                  ; $7445: $36 $32
    jr nc, jr_05a_7480                            ; $7447: $30 $37

    ld sp, $3133                                  ; $7449: $31 $33 $31
    inc sp                                        ; $744c: $33
    nop                                           ; $744d: $00
    and b                                         ; $744e: $a0
    ei                                            ; $744f: $fb
    rst $38                                       ; $7450: $ff
    rst $28                                       ; $7451: $ef
    nop                                           ; $7452: $00
    nop                                           ; $7453: $00
    nop                                           ; $7454: $00
    ld e, l                                       ; $7455: $5d
    ld [hl], h                                    ; $7456: $74
    adc l                                         ; $7457: $8d
    ld [hl], h                                    ; $7458: $74
    inc sp                                        ; $7459: $33
    ld [hl], a                                    ; $745a: $77
    ld e, $79                                     ; $745b: $1e $79
    db $ec                                        ; $745d: $ec
    dec hl                                        ; $745e: $2b
    ld [hl+], a                                   ; $745f: $22
    dec sp                                        ; $7460: $3b
    ld b, b                                       ; $7461: $40
    ld [hl+], a                                   ; $7462: $22
    nop                                           ; $7463: $00
    add hl, bc                                    ; $7464: $09
    and l                                         ; $7465: $a5
    ld b, e                                       ; $7466: $43
    xor $37                                       ; $7467: $ee $37

jr_05a_7469:
    ld [hl+], a                                   ; $7469: $22
    dec sp                                        ; $746a: $3b
    ld b, b                                       ; $746b: $40
    ld [hl+], a                                   ; $746c: $22
    ccf                                           ; $746d: $3f
    ld a, a                                       ; $746e: $7f
    rla                                           ; $746f: $17
    ld e, [hl]                                    ; $7470: $5e
    ld de, $2249                                  ; $7471: $11 $49 $22
    dec sp                                        ; $7474: $3b
    ld [$0825], sp                                ; $7475: $08 $25 $08
    dec h                                         ; $7478: $25
    ld [$0825], sp                                ; $7479: $08 $25 $08
    dec h                                         ; $747c: $25
    ld [$0825], sp                                ; $747d: $08 $25 $08

jr_05a_7480:
    dec h                                         ; $7480: $25
    ld [$0825], sp                                ; $7481: $08 $25 $08
    dec h                                         ; $7484: $25
    ld [$0825], sp                                ; $7485: $08 $25 $08
    dec h                                         ; $7488: $25
    ld [$0825], sp                                ; $7489: $08 $25 $08
    dec h                                         ; $748c: $25
    ld c, e                                       ; $748d: $4b
    ld a, [bc]                                    ; $748e: $0a
    dec bc                                        ; $748f: $0b
    rst $38                                       ; $7490: $ff
    db $e3                                        ; $7491: $e3
    inc c                                         ; $7492: $0c
    rst $38                                       ; $7493: $ff
    db $e4                                        ; $7494: $e4
    db $f4                                        ; $7495: $f4
    ld [c], a                                     ; $7496: $e2
    ld c, h                                       ; $7497: $4c
    rst $38                                       ; $7498: $ff
    ldh [$c0], a                                  ; $7499: $e0 $c0
    rst $28                                       ; $749b: $ef
    ldh [$fc], a                                  ; $749c: $e0 $fc
    ldh [$f9], a                                  ; $749e: $e0 $f9
    pop hl                                        ; $74a0: $e1
    ld hl, sp-$1e                                 ; $74a1: $f8 $e2
    rst $30                                       ; $74a3: $f7
    ld [c], a                                     ; $74a4: $e2
    db $fc                                        ; $74a5: $fc
    ldh a, [$0b]                                  ; $74a6: $f0 $0b
    dec bc                                        ; $74a8: $0b
    jr z, jr_05a_7469                             ; $74a9: $28 $be

    db $e3                                        ; $74ab: $e3
    sub $e3                                       ; $74ac: $d6 $e3
    ret nz                                        ; $74ae: $c0

    ld [c], a                                     ; $74af: $e2
    ld a, [bc]                                    ; $74b0: $0a
    push bc                                       ; $74b1: $c5
    pop hl                                        ; $74b2: $e1
    ld c, h                                       ; $74b3: $4c
    db $fd                                        ; $74b4: $fd
    and $b5                                       ; $74b5: $e6 $b5
    db $e3                                        ; $74b7: $e3
    inc a                                         ; $74b8: $3c
    cp h                                          ; $74b9: $bc
    push af                                       ; $74ba: $f5
    add c                                         ; $74bb: $81
    pop hl                                        ; $74bc: $e1
    ld l, e                                       ; $74bd: $6b
    dec bc                                        ; $74be: $0b
    ld c, e                                       ; $74bf: $4b
    dec bc                                        ; $74c0: $0b
    adc l                                         ; $74c1: $8d
    db $e4                                        ; $74c2: $e4
    add b                                         ; $74c3: $80
    ldh [$a1], a                                  ; $74c4: $e0 $a1
    dec hl                                        ; $74c6: $2b
    ld [hl], h                                    ; $74c7: $74
    pop hl                                        ; $74c8: $e1
    jp Jump_05a_7ee6                              ; $74c9: $c3 $e6 $7e


    ld [c], a                                     ; $74cc: $e2
    or d                                          ; $74cd: $b2
    pop hl                                        ; $74ce: $e1
    inc l                                         ; $74cf: $2c
    ret nz                                        ; $74d0: $c0

    or $6b                                        ; $74d1: $f6 $6b
    xor a                                         ; $74d3: $af
    ld l, e                                       ; $74d4: $6b
    dec hl                                        ; $74d5: $2b
    ld c, e                                       ; $74d6: $4b
    ld c, e                                       ; $74d7: $4b
    cp [hl]                                       ; $74d8: $be
    db $e3                                        ; $74d9: $e3
    ld c, h                                       ; $74da: $4c
    ld b, b                                       ; $74db: $40
    pop hl                                        ; $74dc: $e1
    dec hl                                        ; $74dd: $2b
    db $10                                        ; $74de: $10
    ld c, e                                       ; $74df: $4b
    db $e3                                        ; $74e0: $e3
    ld a, [hl]                                    ; $74e1: $7e
    ld [c], a                                     ; $74e2: $e2
    add a                                         ; $74e3: $87
    db $e3                                        ; $74e4: $e3
    ld b, b                                       ; $74e5: $40
    pop hl                                        ; $74e6: $e1
    inc l                                         ; $74e7: $2c
    cp h                                          ; $74e8: $bc
    ld [c], a                                     ; $74e9: $e2
    ld b, b                                       ; $74ea: $40
    ldh a, [$c1]                                  ; $74eb: $f0 $c1
    ldh [rNR23], a                                ; $74ed: $e0 $18
    rst $38                                       ; $74ef: $ff
    ldh [$be], a                                  ; $74f0: $e0 $be
    ldh [$bb], a                                  ; $74f2: $e0 $bb
    ldh [rOCPD], a                                ; $74f4: $e0 $6b
    dec bc                                        ; $74f6: $0b
    ld [hl], l                                    ; $74f7: $75
    ldh [$f4], a                                  ; $74f8: $e0 $f4
    ret nz                                        ; $74fa: $c0

    add d                                         ; $74fb: $82
    and $90                                       ; $74fc: $e6 $90
    ld b, b                                       ; $74fe: $40
    db $eb                                        ; $74ff: $eb
    ret nz                                        ; $7500: $c0

    db $e3                                        ; $7501: $e3
    cp d                                          ; $7502: $ba
    db $e4                                        ; $7503: $e4
    or e                                          ; $7504: $b3
    db $e3                                        ; $7505: $e3
    ld l, e                                       ; $7506: $6b
    ld b, d                                       ; $7507: $42
    ldh [$c0], a                                  ; $7508: $e0 $c0
    pop hl                                        ; $750a: $e1
    dec hl                                        ; $750b: $2b
    ld bc, $b72b                                  ; $750c: $01 $2b $b7
    pop bc                                        ; $750f: $c1
    ld a, [$76e0]                                 ; $7510: $fa $e0 $76
    ldh [$c5], a                                  ; $7513: $e0 $c5
    jp $e6fa                                      ; $7515: $c3 $fa $e6


    pop af                                        ; $7518: $f1
    call nz, $d3bc                                ; $7519: $c4 $bc $d3
    ld sp, $816b                                  ; $751c: $31 $6b $81
    db $e3                                        ; $751f: $e3
    cp a                                          ; $7520: $bf
    db $e3                                        ; $7521: $e3
    cp d                                          ; $7522: $ba
    ld [c], a                                     ; $7523: $e2
    ld c, e                                       ; $7524: $4b
    ld c, e                                       ; $7525: $4b
    jp z, $b7e6                                   ; $7526: $ca $e6 $b7

    push hl                                       ; $7529: $e5
    nop                                           ; $752a: $00
    ld a, b                                       ; $752b: $78
    push hl                                       ; $752c: $e5
    ld a, e                                       ; $752d: $7b
    ret nc                                        ; $752e: $d0

    add e                                         ; $752f: $83
    db $e4                                        ; $7530: $e4
    dec a                                         ; $7531: $3d
    ldh [$f9], a                                  ; $7532: $e0 $f9
    ret nz                                        ; $7534: $c0

    or e                                          ; $7535: $b3
    ldh [$80], a                                  ; $7536: $e0 $80
    pop hl                                        ; $7538: $e1
    ld d, b                                       ; $7539: $50
    jp $c000                                      ; $753a: $c3 $00 $c0


    push bc                                       ; $753d: $c5
    ld a, a                                       ; $753e: $7f
    db $db                                        ; $753f: $db
    ld b, e                                       ; $7540: $43
    db $e3                                        ; $7541: $e3
    dec a                                         ; $7542: $3d
    ldh [$c4], a                                  ; $7543: $e0 $c4
    pop hl                                        ; $7545: $e1
    ld [hl], e                                    ; $7546: $73
    ldh [$b6], a                                  ; $7547: $e0 $b6
    jp nz, $c40e                                  ; $7549: $c2 $0e $c4

    ld h, b                                       ; $754c: $60
    add c                                         ; $754d: $81
    jp $c435                                      ; $754e: $c3 $35 $c4


    dec sp                                        ; $7551: $3b
    call nz, $f280                                ; $7552: $c4 $80 $f2
    pop bc                                        ; $7555: $c1
    db $e3                                        ; $7556: $e3
    ld l, e                                       ; $7557: $6b
    ld c, e                                       ; $7558: $4b
    ret nz                                        ; $7559: $c0

    ld [c], a                                     ; $755a: $e2
    nop                                           ; $755b: $00
    db $f4                                        ; $755c: $f4
    and h                                         ; $755d: $a4
    ld [hl], c                                    ; $755e: $71
    jp nz, $a3b7                                  ; $755f: $c2 $b7 $a3

    cp [hl]                                       ; $7562: $be
    push hl                                       ; $7563: $e5
    cp h                                          ; $7564: $bc
    or c                                          ; $7565: $b1
    add l                                         ; $7566: $85
    pop hl                                        ; $7567: $e1
    ret nz                                        ; $7568: $c0

    push hl                                       ; $7569: $e5
    ld a, a                                       ; $756a: $7f
    ld [c], a                                     ; $756b: $e2
    nop                                           ; $756c: $00
    ld [hl], h                                    ; $756d: $74
    and h                                         ; $756e: $a4
    ld b, $c5                                     ; $756f: $06 $c5
    ret nz                                        ; $7571: $c0

    rst $08                                       ; $7572: $cf
    dec sp                                        ; $7573: $3b
    jp nz, $c636                                  ; $7574: $c2 $36 $c6

    jp z, $c0c2                                   ; $7577: $ca $c2 $c0

    push hl                                       ; $757a: $e5
    jp $e0e1                                      ; $757b: $c3 $e1 $e0


    inc [hl]                                      ; $757e: $34
    and e                                         ; $757f: $a3
    ld b, $c7                                     ; $7580: $06 $c7
    ld a, [hl-]                                   ; $7582: $3a
    and h                                         ; $7583: $a4
    ret nz                                        ; $7584: $c0

    push bc                                       ; $7585: $c5
    db $fd                                        ; $7586: $fd
    xor l                                         ; $7587: $ad
    dec bc                                        ; $7588: $0b
    ld c, e                                       ; $7589: $4b
    dec hl                                        ; $758a: $2b
    ld e, c                                       ; $758b: $59
    ld c, e                                       ; $758c: $4b
    ld b, h                                       ; $758d: $44
    jp nz, $e23e                                  ; $758e: $c2 $3e $e2

    dec bc                                        ; $7591: $0b
    ld l, e                                       ; $7592: $6b
    add hl, sp                                    ; $7593: $39
    ret nz                                        ; $7594: $c0

    ld l, h                                       ; $7595: $6c
    ld [de], a                                    ; $7596: $12
    and e                                         ; $7597: $a3
    adc b                                         ; $7598: $88
    ld b, h                                       ; $7599: $44
    and $72                                       ; $759a: $e6 $72
    and $c0                                       ; $759c: $e6 $c0
    jp nc, $830b                                  ; $759e: $d2 $0b $83

    and b                                         ; $75a1: $a0
    cp h                                          ; $75a2: $bc
    add b                                         ; $75a3: $80
    cp e                                          ; $75a4: $bb
    ldh [$2b], a                                  ; $75a5: $e0 $2b
    nop                                           ; $75a7: $00
    jp nz, Jump_05a_41a0                          ; $75a8: $c2 $a0 $41

    push hl                                       ; $75ab: $e5
    dec b                                         ; $75ac: $05
    and [hl]                                      ; $75ad: $a6
    ld a, l                                       ; $75ae: $7d
    jp $c540                                      ; $75af: $c3 $40 $c5


    or c                                          ; $75b2: $b1
    adc b                                         ; $75b3: $88
    ld [hl], h                                    ; $75b4: $74
    and h                                         ; $75b5: $a4
    add a                                         ; $75b6: $87
    pop hl                                        ; $75b7: $e1
    ld [$e1c0], sp                                ; $75b8: $08 $c0 $e1
    ld c, b                                       ; $75bb: $48
    and c                                         ; $75bc: $a1
    ld hl, sp-$1d                                 ; $75bd: $f8 $e3
    ld l, h                                       ; $75bf: $6c
    ld c, $c7                                     ; $75c0: $0e $c7
    ret z                                         ; $75c2: $c8

    adc b                                         ; $75c3: $88
    cp b                                          ; $75c4: $b8
    add $b1                                       ; $75c5: $c6 $b1
    add l                                         ; $75c7: $85
    nop                                           ; $75c8: $00
    ret nz                                        ; $75c9: $c0

    rst $20                                       ; $75ca: $e7
    add [hl]                                      ; $75cb: $86
    and d                                         ; $75cc: $a2
    db $fc                                        ; $75cd: $fc
    rst $20                                       ; $75ce: $e7
    ld d, a                                       ; $75cf: $57
    push bc                                       ; $75d0: $c5
    ret nz                                        ; $75d1: $c0

    db $eb                                        ; $75d2: $eb
    db $ed                                        ; $75d3: $ed
    add e                                         ; $75d4: $83
    or c                                          ; $75d5: $b1
    adc c                                         ; $75d6: $89
    ld h, [hl]                                    ; $75d7: $66
    and a                                         ; $75d8: $a7
    nop                                           ; $75d9: $00
    ld e, h                                       ; $75da: $5c
    db $e4                                        ; $75db: $e4
    ld d, b                                       ; $75dc: $50
    push hl                                       ; $75dd: $e5
    inc de                                        ; $75de: $13
    ret z                                         ; $75df: $c8

    cp h                                          ; $75e0: $bc
    xor $b1                                       ; $75e1: $ee $b1
    add a                                         ; $75e3: $87
    dec h                                         ; $75e4: $25
    and a                                         ; $75e5: $a7
    call nc, $c772                                ; $75e6: $d4 $72 $c7
    ld l, b                                       ; $75e9: $68
    nop                                           ; $75ea: $00
    rst $38                                       ; $75eb: $ff
    ld h, l                                       ; $75ec: $65
    or c                                          ; $75ed: $b1
    adc h                                         ; $75ee: $8c
    xor a                                         ; $75ef: $af
    ld h, [hl]                                    ; $75f0: $66
    call nc, Call_05a_4870                        ; $75f1: $d4 $70 $48
    xor e                                         ; $75f4: $ab
    cp a                                          ; $75f5: $bf
    add [hl]                                      ; $75f6: $86
    or c                                          ; $75f7: $b1
    adc d                                         ; $75f8: $8a
    ld a, [hl]                                    ; $75f9: $7e
    add sp, $00                                   ; $75fa: $e8 $00
    call nc, Call_000_166e                        ; $75fc: $d4 $6e $16
    db $ed                                        ; $75ff: $ed
    or c                                          ; $7600: $b1
    push bc                                       ; $7601: $c5
    jr nc, jr_05a_766d                            ; $7602: $30 $69

    di                                            ; $7604: $f3
    ld h, e                                       ; $7605: $63
    call nc, $c775                                ; $7606: $d4 $75 $c7
    ld l, c                                       ; $7609: $69
    ccf                                           ; $760a: $3f
    rst $20                                       ; $760b: $e7
    nop                                           ; $760c: $00
    jr nc, jr_05a_7677                            ; $760d: $30 $68

    rst $38                                       ; $760f: $ff
    rst $00                                       ; $7610: $c7
    call nc, $f370                                ; $7611: $d4 $70 $f3
    db $eb                                        ; $7614: $eb
    ld bc, $b1a5                                  ; $7615: $01 $a5 $b1
    adc d                                         ; $7618: $8a
    ld [hl], h                                    ; $7619: $74
    ld h, a                                       ; $761a: $67
    call nc, Call_000_0070                        ; $761b: $d4 $70 $00
    rst $00                                       ; $761e: $c7
    ld l, e                                       ; $761f: $6b
    or l                                          ; $7620: $b5
    ld c, b                                       ; $7621: $48
    or c                                          ; $7622: $b1
    add a                                         ; $7623: $87
    ld [hl], b                                    ; $7624: $70
    ld c, h                                       ; $7625: $4c
    adc h                                         ; $7626: $8c
    call z, Call_05a_4d46                         ; $7627: $cc $46 $4d
    or c                                          ; $762a: $b1
    adc a                                         ; $762b: $8f
    db $f4                                        ; $762c: $f4
    ld b, h                                       ; $762d: $44
    nop                                           ; $762e: $00
    call nc, $f373                                ; $762f: $d4 $73 $f3
    db $eb                                        ; $7632: $eb
    or c                                          ; $7633: $b1
    sub d                                         ; $7634: $92
    ret nz                                        ; $7635: $c0

    and $d4                                       ; $7636: $e6 $d4
    ld [hl], c                                    ; $7638: $71
    rst $00                                       ; $7639: $c7
    ld l, h                                       ; $763a: $6c
    or d                                          ; $763b: $b2
    ld h, [hl]                                    ; $763c: $66
    ld [hl], d                                    ; $763d: $72
    db $eb                                        ; $763e: $eb
    nop                                           ; $763f: $00
    dec de                                        ; $7640: $1b
    ld h, a                                       ; $7641: $67
    call nc, $c76e                                ; $7642: $d4 $6e $c7
    ld l, h                                       ; $7645: $6c
    ld [hl], a                                    ; $7646: $77
    ld b, h                                       ; $7647: $44
    or c                                          ; $7648: $b1
    adc c                                         ; $7649: $89
    cp a                                          ; $764a: $bf
    xor h                                         ; $764b: $ac
    call nc, $c76c                                ; $764c: $d4 $6c $c7
    ld l, a                                       ; $764f: $6f
    nop                                           ; $7650: $00
    or c                                          ; $7651: $b1
    adc a                                         ; $7652: $8f
    sbc c                                         ; $7653: $99
    ld c, b                                       ; $7654: $48
    call nc, Call_000_076d                        ; $7655: $d4 $6d $07
    dec hl                                        ; $7658: $2b
    ld a, h                                       ; $7659: $7c
    and l                                         ; $765a: $a5
    add hl, sp                                    ; $765b: $39
    ld [hl-], a                                   ; $765c: $32
    call nc, Call_05a_4072                        ; $765d: $d4 $72 $40
    xor [hl]                                      ; $7660: $ae
    nop                                           ; $7661: $00
    ld e, b                                       ; $7662: $58
    jp hl                                         ; $7663: $e9


    or [hl]                                       ; $7664: $b6
    ld c, $d4                                     ; $7665: $0e $d4
    ld [hl], c                                    ; $7667: $71
    inc sp                                        ; $7668: $33
    xor c                                         ; $7669: $a9

jr_05a_766a:
    ld [hl], d                                    ; $766a: $72
    db $ec                                        ; $766b: $ec
    dec b                                         ; $766c: $05

jr_05a_766d:
    ret nc                                        ; $766d: $d0

    call nc, Call_000_076d                        ; $766e: $d4 $6d $07
    ld a, [hl+]                                   ; $7671: $2a
    inc b                                         ; $7672: $04
    ret z                                         ; $7673: $c8

    ld l, h                                       ; $7674: $6c
    dec l                                         ; $7675: $2d
    ld [bc], a                                    ; $7676: $02

jr_05a_7677:
    inc l                                         ; $7677: $2c
    jp nz, $d489                                  ; $7678: $c2 $89 $d4

    ld l, a                                       ; $767b: $6f
    rlca                                          ; $767c: $07
    dec l                                         ; $767d: $2d
    ld a, c                                       ; $767e: $79
    ld [$e2c0], sp                                ; $767f: $08 $c0 $e2
    ld bc, $c02c                                  ; $7682: $01 $2c $c0
    rst $20                                       ; $7685: $e7
    ld d, h                                       ; $7686: $54
    inc sp                                        ; $7687: $33
    dec h                                         ; $7688: $25
    db $eb                                        ; $7689: $eb
    ld a, c                                       ; $768a: $79
    add hl, bc                                    ; $768b: $09
    ret nz                                        ; $768c: $c0

    db $e4                                        ; $768d: $e4
    add e                                         ; $768e: $83
    set 1, h                                      ; $768f: $cb $cc
    ret nc                                        ; $7691: $d0

    nop                                           ; $7692: $00
    rlca                                          ; $7693: $07
    ld a, [hl+]                                   ; $7694: $2a
    ld a, [hl-]                                   ; $7695: $3a
    ld a, [hl+]                                   ; $7696: $2a
    ret nz                                        ; $7697: $c0

    db $ec                                        ; $7698: $ec
    add b                                         ; $7699: $80
    or e                                          ; $769a: $b3
    or d                                          ; $769b: $b2
    ld l, d                                       ; $769c: $6a
    ld a, a                                       ; $769d: $7f
    reti                                          ; $769e: $d9


    add b                                         ; $769f: $80
    or h                                          ; $76a0: $b4
    or e                                          ; $76a1: $b3
    jp hl                                         ; $76a2: $e9


    nop                                           ; $76a3: $00
    and l                                         ; $76a4: $a5
    adc l                                         ; $76a5: $8d
    ld [bc], a                                    ; $76a6: $02
    ldh [$b9], a                                  ; $76a7: $e0 $b9
    ld a, [hl+]                                   ; $76a9: $2a
    ld d, h                                       ; $76aa: $54
    cpl                                           ; $76ab: $2f
    ld d, [hl]                                    ; $76ac: $56
    adc e                                         ; $76ad: $8b
    pop af                                        ; $76ae: $f1
    xor l                                         ; $76af: $ad
    ret nz                                        ; $76b0: $c0

    db $ec                                        ; $76b1: $ec
    add b                                         ; $76b2: $80
    or a                                          ; $76b3: $b7
    nop                                           ; $76b4: $00
    cp c                                          ; $76b5: $b9
    jr z, jr_05a_766a                             ; $76b6: $28 $b2

    adc d                                         ; $76b8: $8a
    add b                                         ; $76b9: $80
    cp [hl]                                       ; $76ba: $be
    rlca                                          ; $76bb: $07
    inc l                                         ; $76bc: $2c
    ret z                                         ; $76bd: $c8

    ld a, b                                       ; $76be: $78
    ld d, h                                       ; $76bf: $54
    inc [hl]                                      ; $76c0: $34
    ret z                                         ; $76c1: $c8

    ld [hl], a                                    ; $76c2: $77
    pop bc                                        ; $76c3: $c1
    ldh a, [rP1]                                  ; $76c4: $f0 $00
    add b                                         ; $76c6: $80
    or b                                          ; $76c7: $b0
    ld d, [hl]                                    ; $76c8: $56
    adc e                                         ; $76c9: $8b
    and l                                         ; $76ca: $a5
    adc e                                         ; $76cb: $8b
    ld b, b                                       ; $76cc: $40
    di                                            ; $76cd: $f3
    ld d, h                                       ; $76ce: $54
    ld l, $25                                     ; $76cf: $2e $25
    push af                                       ; $76d1: $f5
    rst $38                                       ; $76d2: $ff
    ld sp, hl                                     ; $76d3: $f9
    inc sp                                        ; $76d4: $33
    or e                                          ; $76d5: $b3
    nop                                           ; $76d6: $00
    ret z                                         ; $76d7: $c8

    ld [hl], l                                    ; $76d8: $75
    rst $38                                       ; $76d9: $ff
    rst $38                                       ; $76da: $ff
    ld a, c                                       ; $76db: $79
    ld [de], a                                    ; $76dc: $12
    rst $38                                       ; $76dd: $ff
    rst $38                                       ; $76de: $ff
    dec h                                         ; $76df: $25
    ei                                            ; $76e0: $fb
    rst $38                                       ; $76e1: $ff
    rst $38                                       ; $76e2: $ff
    ld e, h                                       ; $76e3: $5c
    rst $08                                       ; $76e4: $cf
    adc l                                         ; $76e5: $8d
    xor l                                         ; $76e6: $ad
    nop                                           ; $76e7: $00
    rst $38                                       ; $76e8: $ff
    rst $38                                       ; $76e9: $ff
    rst $38                                       ; $76ea: $ff
    rst $38                                       ; $76eb: $ff
    sub [hl]                                      ; $76ec: $96
    rst $38                                       ; $76ed: $ff
    rst $38                                       ; $76ee: $ff
    rst $38                                       ; $76ef: $ff
    or [hl]                                       ; $76f0: $b6
    ld h, b                                       ; $76f1: $60
    db $dd                                        ; $76f2: $dd
    rst $38                                       ; $76f3: $ff
    rst $38                                       ; $76f4: $ff
    rst $38                                       ; $76f5: $ff
    rst $38                                       ; $76f6: $ff
    rst $38                                       ; $76f7: $ff
    nop                                           ; $76f8: $00
    rst $38                                       ; $76f9: $ff
    rst $38                                       ; $76fa: $ff
    scf                                           ; $76fb: $37
    rst $28                                       ; $76fc: $ef
    call c, $ffff                                 ; $76fd: $dc $ff $ff
    rst $38                                       ; $7700: $ff
    rst $38                                       ; $7701: $ff
    rst $38                                       ; $7702: $ff
    rst $38                                       ; $7703: $ff
    rst $38                                       ; $7704: $ff
    rst $38                                       ; $7705: $ff
    rst $38                                       ; $7706: $ff
    rst $38                                       ; $7707: $ff
    rst $38                                       ; $7708: $ff
    nop                                           ; $7709: $00
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
    nop                                           ; $771a: $00
    rst $38                                       ; $771b: $ff
    rst $38                                       ; $771c: $ff
    rst $38                                       ; $771d: $ff
    rst $38                                       ; $771e: $ff
    rst $38                                       ; $771f: $ff
    rst $38                                       ; $7720: $ff
    rst $38                                       ; $7721: $ff
    rst $38                                       ; $7722: $ff
    nop                                           ; $7723: $00
    cp a                                          ; $7724: $bf
    rst $38                                       ; $7725: $ff
    rst $38                                       ; $7726: $ff
    rst $38                                       ; $7727: $ff
    rst $38                                       ; $7728: $ff
    rst $38                                       ; $7729: $ff
    rst $38                                       ; $772a: $ff
    nop                                           ; $772b: $00
    rst $38                                       ; $772c: $ff
    rst $38                                       ; $772d: $ff
    ld e, e                                       ; $772e: $5b
    ld [hl], e                                    ; $772f: $73
    nop                                           ; $7730: $00
    nop                                           ; $7731: $00
    nop                                           ; $7732: $00
    ei                                            ; $7733: $fb
    ld e, d                                       ; $7734: $5a
    ld e, e                                       ; $7735: $5b
    rst $38                                       ; $7736: $ff
    ldh [$5c], a                                  ; $7737: $e0 $5c
    ld e, l                                       ; $7739: $5d
    ld sp, $2c2b                                  ; $773a: $31 $2b $2c
    db $fd                                        ; $773d: $fd
    jr nz, @+$01                                  ; $773e: $20 $ff

    pop hl                                        ; $7740: $e1
    nop                                           ; $7741: $00
    ld sp, $5b61                                  ; $7742: $31 $61 $5b
    ld e, e                                       ; $7745: $5b
    nop                                           ; $7746: $00
    db $fc                                        ; $7747: $fc
    rst $38                                       ; $7748: $ff
    rst $38                                       ; $7749: $ff
    rst $20                                       ; $774a: $e7
    and $5b                                       ; $774b: $e6 $5b
    ld e, e                                       ; $774d: $5b
    ld e, d                                       ; $774e: $5a
    ld e, e                                       ; $774f: $5b
    ld h, b                                       ; $7750: $60
    ld sp, $312f                                  ; $7751: $31 $2f $31
    ld sp, $282b                                  ; $7754: $31 $2b $28
    ret nz                                        ; $7757: $c0

    and $5a                                       ; $7758: $e6 $5a
    jp z, $c0ff                                   ; $775a: $ca $ff $c0

    jp hl                                         ; $775d: $e9


    rst $38                                       ; $775e: $ff
    ld e, e                                       ; $775f: $5b
    ld h, b                                       ; $7760: $60
    ld c, l                                       ; $7761: $4d
    ld d, [hl]                                    ; $7762: $56
    ld b, a                                       ; $7763: $47
    ld sp, $1211                                  ; $7764: $31 $11 $12
    dec a                                         ; $7767: $3d
    ld hl, $e1be                                  ; $7768: $21 $be $e1
    nop                                           ; $776b: $00
    ld sp, $6031                                  ; $776c: $31 $31 $60
    add b                                         ; $776f: $80
    rst $38                                       ; $7770: $ff
    add b                                         ; $7771: $80
    ld [$60bf], a                                 ; $7772: $ea $bf $60
    ld c, l                                       ; $7775: $4d
    ld [hl-], a                                   ; $7776: $32
    jr nc, jr_05a_77af                            ; $7777: $30 $36

    ld b, [hl]                                    ; $7779: $46
    cp [hl]                                       ; $777a: $be
    pop hl                                        ; $777b: $e1
    dec b                                         ; $777c: $05
    rla                                           ; $777d: $17
    dec b                                         ; $777e: $05
    dec b                                         ; $777f: $05
    rrca                                          ; $7780: $0f
    ld [hl], l                                    ; $7781: $75
    ldh [$60], a                                  ; $7782: $e0 $60
    jp z, Jump_05a_40ff                           ; $7784: $ca $ff $40

    add sp, -$3f                                  ; $7787: $e8 $c1
    pop hl                                        ; $7789: $e1
    rst $38                                       ; $778a: $ff
    jr nc, @+$6f                                  ; $778b: $30 $6d

    ld l, l                                       ; $778d: $6d
    ld [hl], $46                                  ; $778e: $36 $46
    sub a                                         ; $7790: $97
    sbc [hl]                                      ; $7791: $9e
    sbc [hl]                                      ; $7792: $9e
    sub a                                         ; $7793: $97
    sbc [hl]                                      ; $7794: $9e
    sub a                                         ; $7795: $97
    ld d, [hl]                                    ; $7796: $56
    ld [hl], l                                    ; $7797: $75
    ldh [$31], a                                  ; $7798: $e0 $31
    jp z, $e8ff                                   ; $779a: $ca $ff $e8

    rst $20                                       ; $779d: $e7
    ld e, a                                       ; $779e: $5f
    di                                            ; $779f: $f3
    ld sp, $c239                                  ; $77a0: $31 $39 $c2
    ldh [$fe], a                                  ; $77a3: $e0 $fe
    ldh [$30], a                                  ; $77a5: $e0 $30
    sub h                                         ; $77a7: $94
    add [hl]                                      ; $77a8: $86
    add [hl]                                      ; $77a9: $86
    ccf                                           ; $77aa: $3f
    add [hl]                                      ; $77ab: $86
    sub h                                         ; $77ac: $94
    ld l, l                                       ; $77ad: $6d
    ld l, h                                       ; $77ae: $6c

jr_05a_77af:
    ld [hl], $3c                                  ; $77af: $36 $3c
    ret nz                                        ; $77b1: $c0

    rst $38                                       ; $77b2: $ff
    jp hl                                         ; $77b3: $e9


    add sp, $77                                   ; $77b4: $e8 $77
    ld e, [hl]                                    ; $77b6: $5e
    ld c, c                                       ; $77b7: $49
    ld c, b                                       ; $77b8: $48
    pop bc                                        ; $77b9: $c1
    db $e3                                        ; $77ba: $e3
    ld l, d                                       ; $77bb: $6a
    ld l, d                                       ; $77bc: $6a
    sub c                                         ; $77bd: $91
    pop bc                                        ; $77be: $c1
    ldh [$9f], a                                  ; $77bf: $e0 $9f
    ld l, l                                       ; $77c1: $6d
    ld l, h                                       ; $77c2: $6c
    ld l, l                                       ; $77c3: $6d
    ld c, b                                       ; $77c4: $48
    ld c, c                                       ; $77c5: $49
    jp z, $e8ff                                   ; $77c6: $ca $ff $e8

    rst $20                                       ; $77c9: $e7
    ld sp, $50f9                                  ; $77ca: $31 $f9 $50
    add c                                         ; $77cd: $81
    ld [c], a                                     ; $77ce: $e2
    pop bc                                        ; $77cf: $c1
    ldh [$6d], a                                  ; $77d0: $e0 $6d
    sub e                                         ; $77d2: $93
    sub h                                         ; $77d3: $94
    ld l, d                                       ; $77d4: $6a
    ld l, e                                       ; $77d5: $6b
    sbc a                                         ; $77d6: $9f
    ld l, e                                       ; $77d7: $6b
    jr nc, jr_05a_7845                            ; $77d8: $30 $6b

    ld l, e                                       ; $77da: $6b
    ld d, c                                       ; $77db: $51
    jp z, $c0ff                                   ; $77dc: $ca $ff $c0

    add sp, $51                                   ; $77df: $e8 $51
    adc b                                         ; $77e1: $88
    pop bc                                        ; $77e2: $c1
    push hl                                       ; $77e3: $e5
    ld a, h                                       ; $77e4: $7c
    pop hl                                        ; $77e5: $e1
    add b                                         ; $77e6: $80
    pop hl                                        ; $77e7: $e1
    ld l, l                                       ; $77e8: $6d
    ret nz                                        ; $77e9: $c0

    rst $38                                       ; $77ea: $ff
    add b                                         ; $77eb: $80
    jp hl                                         ; $77ec: $e9


    ld b, b                                       ; $77ed: $40
    pop hl                                        ; $77ee: $e1
    jr nc, jr_05a_7854                            ; $77ef: $30 $63

    ld l, c                                       ; $77f1: $69
    ld l, c                                       ; $77f2: $69
    ld a, e                                       ; $77f3: $7b
    push hl                                       ; $77f4: $e5
    ld b, b                                       ; $77f5: $40
    rst $38                                       ; $77f6: $ff
    nop                                           ; $77f7: $00
    db $ec                                        ; $77f8: $ec
    ld sp, $c039                                  ; $77f9: $31 $39 $c0
    and $72                                       ; $77fc: $e6 $72
    ei                                            ; $77fe: $fb
    pop bc                                        ; $77ff: $c1
    ld l, d                                       ; $7800: $6a
    ret nz                                        ; $7801: $c0

    rst $18                                       ; $7802: $df
    add b                                         ; $7803: $80
    call z, Call_05a_6eaf                         ; $7804: $cc $af $6e
    ld [hl], $c0                                  ; $7807: $36 $c0
    push hl                                       ; $7809: $e5
    rst $08                                       ; $780a: $cf
    ld l, l                                       ; $780b: $6d
    jr nc, @+$32                                  ; $780c: $30 $30

    ld [hl-], a                                   ; $780e: $32
    ld b, b                                       ; $780f: $40
    rst $18                                       ; $7810: $df
    nop                                           ; $7811: $00
    call z, $a9ac                                 ; $7812: $cc $ac $a9
    cp a                                          ; $7815: $bf
    ld l, a                                       ; $7816: $6f
    ld l, [hl]                                    ; $7817: $6e
    ld d, l                                       ; $7818: $55
    ld d, h                                       ; $7819: $54
    ld d, h                                       ; $781a: $54
    ld [hl], $3b                                  ; $781b: $36 $3b
    jp nz, $cf71                                  ; $781d: $c2 $71 $cf

    xor a                                         ; $7820: $af
    ld sp, $1531                                  ; $7821: $31 $31 $15
    jp z, Jump_000_00ff                           ; $7824: $ca $ff $00

    xor c                                         ; $7827: $a9
    ld h, c                                       ; $7828: $61
    add c                                         ; $7829: $81
    db $fd                                        ; $782a: $fd
    add b                                         ; $782b: $80
    rst $38                                       ; $782c: $ff
    pop hl                                        ; $782d: $e1
    ld l, a                                       ; $782e: $6f
    ld l, [hl]                                    ; $782f: $6e
    ld [hl], $6d                                  ; $7830: $36 $6d
    ld [hl], $6e                                  ; $7832: $36 $6e
    sbc a                                         ; $7834: $9f
    ld a, c                                       ; $7835: $79
    and c                                         ; $7836: $a1
    ld sp, $1731                                  ; $7837: $31 $31 $17
    jp z, $c0ff                                   ; $783a: $ca $ff $c0

    ld [$fca1], a                                 ; $783d: $ea $a1 $fc
    ret nz                                        ; $7840: $c0

    ld [c], a                                     ; $7841: $e2
    cp [hl]                                       ; $7842: $be
    ldh [$7c], a                                  ; $7843: $e0 $7c

jr_05a_7845:
    ld l, a                                       ; $7845: $6f
    add b                                         ; $7846: $80
    add b                                         ; $7847: $80
    and c                                         ; $7848: $a1
    ld sp, $15e3                                  ; $7849: $31 $e3 $15
    ld d, $ca                                     ; $784c: $16 $ca
    rst $38                                       ; $784e: $ff
    ret nz                                        ; $784f: $c0

    ld a, [c]                                     ; $7850: $f2
    ld a, c                                       ; $7851: $79
    ld [c], a                                     ; $7852: $e2
    and c                                         ; $7853: $a1

jr_05a_7854:
    ld sp, $0117                                  ; $7854: $31 $17 $01
    jr z, @-$34                                   ; $7857: $28 $ca

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
    nop                                           ; $7866: $00
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
    nop                                           ; $7877: $00
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
    nop                                           ; $7888: $00
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
    nop                                           ; $7899: $00
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
    nop                                           ; $78aa: $00
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
    nop                                           ; $78bb: $00
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
    nop                                           ; $78cc: $00
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
    nop                                           ; $78dd: $00
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
    nop                                           ; $78ee: $00
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
    nop                                           ; $78ff: $00
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
    nop                                           ; $7910: $00
    rst $38                                       ; $7911: $ff
    rst $38                                       ; $7912: $ff
    rst $38                                       ; $7913: $ff
    rst $38                                       ; $7914: $ff
    rst $38                                       ; $7915: $ff
    rst $38                                       ; $7916: $ff
    rst $38                                       ; $7917: $ff
    rst $38                                       ; $7918: $ff
    rst $38                                       ; $7919: $ff
    di                                            ; $791a: $f3
    nop                                           ; $791b: $00
    nop                                           ; $791c: $00
    nop                                           ; $791d: $00
    and l                                         ; $791e: $a5
    nop                                           ; $791f: $00
    rst $38                                       ; $7920: $ff
    push hl                                       ; $7921: $e5
    ld [hl-], a                                   ; $7922: $32
    or $e6                                        ; $7923: $f6 $e6
    rst $30                                       ; $7925: $f7
    rst $20                                       ; $7926: $e7
    dec [hl]                                      ; $7927: $35
    db $ec                                        ; $7928: $ec
    xor $37                                       ; $7929: $ee $37
    db $ec                                        ; $792b: $ec
    jp c, $c7f0                                   ; $792c: $da $f0 $c7

    add sp, $33                                   ; $792f: $e8 $33
    ld sp, $f2e0                                  ; $7931: $31 $e0 $f2
    ld [hl], $30                                  ; $7934: $36 $30
    scf                                           ; $7936: $37
    cp a                                          ; $7937: $bf
    ld h, $20                                     ; $7938: $26 $20
    daa                                           ; $793a: $27
    db $10                                        ; $793b: $10
    ld d, $17                                     ; $793c: $16 $17
    jp nz, Jump_000_34f6                          ; $793e: $c2 $f6 $34

    rst $38                                       ; $7941: $ff
    ld [hl], $32                                  ; $7942: $36 $32
    jr nc, jr_05a_797d                            ; $7944: $30 $37

    ld sp, $3133                                  ; $7946: $31 $33 $31
    inc sp                                        ; $7949: $33
    nop                                           ; $794a: $00
    and b                                         ; $794b: $a0
    ei                                            ; $794c: $fb
    rst $38                                       ; $794d: $ff
    rst $28                                       ; $794e: $ef
    nop                                           ; $794f: $00
    nop                                           ; $7950: $00
    nop                                           ; $7951: $00
    ld e, d                                       ; $7952: $5a
    ld a, c                                       ; $7953: $79
    adc d                                         ; $7954: $8a
    ld a, c                                       ; $7955: $79
    sub d                                         ; $7956: $92
    ld a, e                                       ; $7957: $7b
    ld h, c                                       ; $7958: $61
    ld a, l                                       ; $7959: $7d
    db $ec                                        ; $795a: $ec
    dec hl                                        ; $795b: $2b
    ld [hl+], a                                   ; $795c: $22
    dec sp                                        ; $795d: $3b
    ld b, b                                       ; $795e: $40
    ld [hl+], a                                   ; $795f: $22
    nop                                           ; $7960: $00
    add hl, bc                                    ; $7961: $09
    and l                                         ; $7962: $a5
    ld b, e                                       ; $7963: $43
    xor $37                                       ; $7964: $ee $37
    ld [hl+], a                                   ; $7966: $22
    dec sp                                        ; $7967: $3b
    ld b, b                                       ; $7968: $40
    ld [hl+], a                                   ; $7969: $22
    ld e, d                                       ; $796a: $5a
    ld a, l                                       ; $796b: $7d
    cp a                                          ; $796c: $bf
    ld a, [hl]                                    ; $796d: $7e
    ld [hl], h                                    ; $796e: $74
    db $10                                        ; $796f: $10
    ld [hl+], a                                   ; $7970: $22
    dec sp                                        ; $7971: $3b
    ld [$0825], sp                                ; $7972: $08 $25 $08
    dec h                                         ; $7975: $25
    ld [$0825], sp                                ; $7976: $08 $25 $08
    dec h                                         ; $7979: $25
    ld [$0825], sp                                ; $797a: $08 $25 $08

jr_05a_797d:
    dec h                                         ; $797d: $25
    ld [$0825], sp                                ; $797e: $08 $25 $08
    dec h                                         ; $7981: $25
    ld [$0825], sp                                ; $7982: $08 $25 $08
    dec h                                         ; $7985: $25
    ld [$0825], sp                                ; $7986: $08 $25 $08
    dec h                                         ; $7989: $25
    ld e, a                                       ; $798a: $5f
    ld a, [hl+]                                   ; $798b: $2a
    ld c, d                                       ; $798c: $4a
    ld c, d                                       ; $798d: $4a
    ld c, d                                       ; $798e: $4a
    ld a, [bc]                                    ; $798f: $0a
    rst $38                                       ; $7990: $ff
    db $ec                                        ; $7991: $ec
    inc c                                         ; $7992: $0c
    rst $38                                       ; $7993: $ff
    ldh [$f9], a                                  ; $7994: $e0 $f9
    dec bc                                        ; $7996: $0b
    ei                                            ; $7997: $fb
    pop hl                                        ; $7998: $e1
    db $fc                                        ; $7999: $fc
    add sp, $2c                                   ; $799a: $e8 $2c
    ld c, h                                       ; $799c: $4c
    inc c                                         ; $799d: $0c
    ld c, h                                       ; $799e: $4c
    ld c, h                                       ; $799f: $4c
    ld c, c                                       ; $79a0: $49
    ld c, h                                       ; $79a1: $4c
    db $eb                                        ; $79a2: $eb
    db $ec                                        ; $79a3: $ec
    rst $10                                       ; $79a4: $d7
    ldh [rWY], a                                  ; $79a5: $e0 $4a
    cp a                                          ; $79a7: $bf
    ldh [$c0], a                                  ; $79a8: $e0 $c0
    db $ec                                        ; $79aa: $ec
    ld l, d                                       ; $79ab: $6a
    ret nz                                        ; $79ac: $c0

    ldh [$0b], a                                  ; $79ad: $e0 $0b
    ld c, h                                       ; $79af: $4c
    dec bc                                        ; $79b0: $0b
    cp a                                          ; $79b1: $bf
    db $ec                                        ; $79b2: $ec
    inc l                                         ; $79b3: $2c
    push bc                                       ; $79b4: $c5
    rst $28                                       ; $79b5: $ef
    ret nz                                        ; $79b6: $c0

    db $e3                                        ; $79b7: $e3
    cp a                                          ; $79b8: $bf
    ldh [$c1], a                                  ; $79b9: $e0 $c1
    db $ec                                        ; $79bb: $ec
    ld h, e                                       ; $79bc: $63
    ld l, d                                       ; $79bd: $6a
    inc c                                         ; $79be: $0c
    sbc b                                         ; $79bf: $98
    pop hl                                        ; $79c0: $e1
    ld a, a                                       ; $79c1: $7f

Jump_05a_79c2:
    db $ed                                        ; $79c2: $ed
    ret nz                                        ; $79c3: $c0

    or $4a                                        ; $79c4: $f6 $4a
    ld a, [hl+]                                   ; $79c6: $2a
    pop bc                                        ; $79c7: $c1
    db $ec                                        ; $79c8: $ec
    ret z                                         ; $79c9: $c8

    add b                                         ; $79ca: $80
    pop hl                                        ; $79cb: $e1
    cp l                                          ; $79cc: $bd
    ldh [$7e], a                                  ; $79cd: $e0 $7e
    pop hl                                        ; $79cf: $e1
    inc l                                         ; $79d0: $2c
    db $fc                                        ; $79d1: $fc
    pop hl                                        ; $79d2: $e1
    ret nz                                        ; $79d3: $c0

    db $fd                                        ; $79d4: $fd
    ld l, d                                       ; $79d5: $6a
    dec bc                                        ; $79d6: $0b
    ei                                            ; $79d7: $fb
    ld l, e                                       ; $79d8: $6b
    dec bc                                        ; $79d9: $0b
    rst $38                                       ; $79da: $ff
    pop hl                                        ; $79db: $e1
    ld c, e                                       ; $79dc: $4b
    dec bc                                        ; $79dd: $0b
    dec hl                                        ; $79de: $2b
    dec hl                                        ; $79df: $2b
    dec bc                                        ; $79e0: $0b
    pop bc                                        ; $79e1: $c1
    ld c, d                                       ; $79e2: $4a
    ret nz                                        ; $79e3: $c0

    db $e4                                        ; $79e4: $e4
    ld a, $e3                                     ; $79e5: $3e $e3
    ret nz                                        ; $79e7: $c0

    ld sp, hl                                     ; $79e8: $f9
    ld l, $e3                                     ; $79e9: $2e $e3
    pop bc                                        ; $79eb: $c1
    ld [c], a                                     ; $79ec: $e2
    ld l, e                                       ; $79ed: $6b
    ld c, e                                       ; $79ee: $4b
    ld c, $ff                                     ; $79ef: $0e $ff
    db $e4                                        ; $79f1: $e4
    dec bc                                        ; $79f2: $0b
    dec bc                                        ; $79f3: $0b
    dec hl                                        ; $79f4: $2b
    cp a                                          ; $79f5: $bf
    ldh [$c5], a                                  ; $79f6: $e0 $c5
    jp $ed81                                      ; $79f8: $c3 $81 $ed


    ld [hl], h                                    ; $79fb: $74
    di                                            ; $79fc: $f3
    ld [bc], a                                    ; $79fd: $02
    add d                                         ; $79fe: $82
    ldh [$0b], a                                  ; $79ff: $e0 $0b
    pop bc                                        ; $7a01: $c1
    and $be                                       ; $7a02: $e6 $be
    pop hl                                        ; $7a04: $e1
    cp a                                          ; $7a05: $bf
    ldh [$c1], a                                  ; $7a06: $e0 $c1
    db $e3                                        ; $7a08: $e3
    ld b, c                                       ; $7a09: $41
    and $8a                                       ; $7a0a: $e6 $8a
    call nz, Call_000_340c                        ; $7a0c: $c4 $0c $34
    di                                            ; $7a0f: $f3
    pop bc                                        ; $7a10: $c1
    ldh [$0b], a                                  ; $7a11: $e0 $0b
    dec hl                                        ; $7a13: $2b
    ret nz                                        ; $7a14: $c0

    jp hl                                         ; $7a15: $e9


    ld a, [hl]                                    ; $7a16: $7e
    ldh [$59], a                                  ; $7a17: $e0 $59
    jp nz, $e201                                  ; $7a19: $c2 $01 $e2

    ld [de], a                                    ; $7a1c: $12
    ld a, [hl]                                    ; $7a1d: $7e
    rst $18                                       ; $7a1e: $df
    ld a, [hl+]                                   ; $7a1f: $2a
    ld c, h                                       ; $7a20: $4c
    pop hl                                        ; $7a21: $e1
    cp a                                          ; $7a22: $bf
    rst $20                                       ; $7a23: $e7
    dec hl                                        ; $7a24: $2b
    dec a                                         ; $7a25: $3d
    pop hl                                        ; $7a26: $e1
    jp nz, $c0c1                                  ; $7a27: $c2 $c1 $c0

jr_05a_7a2a:
    ret nc                                        ; $7a2a: $d0

    jr nz, jr_05a_7a2a                            ; $7a2b: $20 $fd

    and d                                         ; $7a2d: $a2
    ret nz                                        ; $7a2e: $c0

    xor $bf                                       ; $7a2f: $ee $bf
    db $e3                                        ; $7a31: $e3
    ld a, l                                       ; $7a32: $7d
    db $e4                                        ; $7a33: $e4
    dec [hl]                                      ; $7a34: $35
    db $e3                                        ; $7a35: $e3
    inc l                                         ; $7a36: $2c
    inc de                                        ; $7a37: $13
    pop bc                                        ; $7a38: $c1
    ret nz                                        ; $7a39: $c0

    call z, $c304                                 ; $7a3a: $cc $04 $c3
    and b                                         ; $7a3d: $a0
    db $fd                                        ; $7a3e: $fd
    or d                                          ; $7a3f: $b2
    ld a, [hl+]                                   ; $7a40: $2a
    cp a                                          ; $7a41: $bf
    ld [c], a                                     ; $7a42: $e2
    cp [hl]                                       ; $7a43: $be
    db $e3                                        ; $7a44: $e3
    ld a, d                                       ; $7a45: $7a
    jp nz, $c075                                  ; $7a46: $c2 $75 $c0

    call nc, Call_000_08a3                        ; $7a49: $d4 $a3 $08
    ccf                                           ; $7a4c: $3f
    xor $33                                       ; $7a4d: $ee $33
    ld a, [c]                                     ; $7a4f: $f2
    ret nz                                        ; $7a50: $c0

    ldh [$2a], a                                  ; $7a51: $e0 $2a
    ld b, [hl]                                    ; $7a53: $46
    db $e4                                        ; $7a54: $e4
    ld b, b                                       ; $7a55: $40
    ret nz                                        ; $7a56: $c0

    ret nz                                        ; $7a57: $c0

    jp hl                                         ; $7a58: $e9


    ld c, h                                       ; $7a59: $4c
    di                                            ; $7a5a: $f3
    nop                                           ; $7a5b: $00
    ld a, b                                       ; $7a5c: $78
    xor l                                         ; $7a5d: $ad
    add b                                         ; $7a5e: $80
    ldh [rSB], a                                  ; $7a5f: $e0 $01
    and [hl]                                      ; $7a61: $a6
    or a                                          ; $7a62: $b7
    ldh [$fe], a                                  ; $7a63: $e0 $fe
    and b                                         ; $7a65: $a0
    add b                                         ; $7a66: $80
    ldh [rNR23], a                                ; $7a67: $e0 $18
    and b                                         ; $7a69: $a0
    adc c                                         ; $7a6a: $89
    pop bc                                        ; $7a6b: $c1
    db $10                                        ; $7a6c: $10
    ld c, h                                       ; $7a6d: $4c
    push af                                       ; $7a6e: $f5
    nop                                           ; $7a6f: $00
    db $eb                                        ; $7a70: $eb
    pop bc                                        ; $7a71: $c1
    rst $20                                       ; $7a72: $e7
    db $f4                                        ; $7a73: $f4
    pop bc                                        ; $7a74: $c1
    ld c, e                                       ; $7a75: $4b
    ld a, h                                       ; $7a76: $7c
    ldh [rNR14], a                                ; $7a77: $e0 $14
    and d                                         ; $7a79: $a2
    rrca                                          ; $7a7a: $0f
    xor l                                         ; $7a7b: $ad
    ld [$b475], sp                                ; $7a7c: $08 $75 $b4
    pop bc                                        ; $7a7f: $c1
    ld [$c0b3], a                                 ; $7a80: $ea $b3 $c0
    dec hl                                        ; $7a83: $2b
    cp a                                          ; $7a84: $bf
    ldh [$c0], a                                  ; $7a85: $e0 $c0
    di                                            ; $7a87: $f3
    cp c                                          ; $7a88: $b9
    sub e                                         ; $7a89: $93
    pop bc                                        ; $7a8a: $c1
    db $eb                                        ; $7a8b: $eb
    ld c, $f4                                     ; $7a8c: $0e $f4
    pop bc                                        ; $7a8e: $c1
    dec hl                                        ; $7a8f: $2b
    dec hl                                        ; $7a90: $2b
    inc l                                         ; $7a91: $2c
    ld d, [hl]                                    ; $7a92: $56
    add b                                         ; $7a93: $80
    ld d, l                                       ; $7a94: $55
    adc a                                         ; $7a95: $8f
    ld a, $82                                     ; $7a96: $3e $82
    ld a, c                                       ; $7a98: $79
    sub h                                         ; $7a99: $94
    nop                                           ; $7a9a: $00
    ld c, [hl]                                    ; $7a9b: $4e
    ret nz                                        ; $7a9c: $c0

    ld e, a                                       ; $7a9d: $5f
    add b                                         ; $7a9e: $80
    db $fd                                        ; $7a9f: $fd
    db $e3                                        ; $7aa0: $e3
    ld d, h                                       ; $7aa1: $54
    sub e                                         ; $7aa2: $93
    push af                                       ; $7aa3: $f5
    sub $97                                       ; $7aa4: $d6 $97
    ldh a, [rSTAT]                                ; $7aa6: $f0 $41
    and l                                         ; $7aa8: $a5
    cp c                                          ; $7aa9: $b9
    ld a, [c]                                     ; $7aaa: $f2
    nop                                           ; $7aab: $00
    db $ec                                        ; $7aac: $ec
    rst $38                                       ; $7aad: $ff
    add c                                         ; $7aae: $81
    pop bc                                        ; $7aaf: $c1
    ld c, d                                       ; $7ab0: $4a
    sbc h                                         ; $7ab1: $9c
    add c                                         ; $7ab2: $81
    ld sp, hl                                     ; $7ab3: $f9
    rst $38                                       ; $7ab4: $ff
    rst $38                                       ; $7ab5: $ff
    ld a, $ee                                     ; $7ab6: $3e $ee
    push de                                       ; $7ab8: $d5
    ld a, a                                       ; $7ab9: $7f
    ld a, h                                       ; $7aba: $7c
    ei                                            ; $7abb: $fb
    nop                                           ; $7abc: $00
    ret nz                                        ; $7abd: $c0

    ld a, [$6506]                                 ; $7abe: $fa $06 $65
    sbc a                                         ; $7ac1: $9f
    ld hl, sp-$7f                                 ; $7ac2: $f8 $81
    db $eb                                        ; $7ac4: $eb
    ld [hl], d                                    ; $7ac5: $72
    db $ec                                        ; $7ac6: $ec
    ret nz                                        ; $7ac7: $c0

    rst $38                                       ; $7ac8: $ff
    push de                                       ; $7ac9: $d5
    ld l, h                                       ; $7aca: $6c
    ld [hl-], a                                   ; $7acb: $32
    di                                            ; $7acc: $f3
    nop                                           ; $7acd: $00
    add c                                         ; $7ace: $81
    ld sp, hl                                     ; $7acf: $f9
    jp c, $f34b                                   ; $7ad0: $da $4b $f3

    call z, Call_05a_440a                         ; $7ad3: $cc $0a $44
    ld [hl], h                                    ; $7ad6: $74
    ld l, d                                       ; $7ad7: $6a
    add sp, $2b                                   ; $7ad8: $e8 $2b
    ret nz                                        ; $7ada: $c0

    call z, Call_05a_6d47                         ; $7adb: $cc $47 $6d
    nop                                           ; $7ade: $00
    rst $38                                       ; $7adf: $ff
    ld a, [hl-]                                   ; $7ae0: $3a
    push de                                       ; $7ae1: $d5
    ld [hl], b                                    ; $7ae2: $70
    ld c, h                                       ; $7ae3: $4c
    ld d, h                                       ; $7ae4: $54
    ccf                                           ; $7ae5: $3f
    rst $38                                       ; $7ae6: $ff
    pop af                                        ; $7ae7: $f1
    adc $c0                                       ; $7ae8: $ce $c0
    rst $38                                       ; $7aea: $ff
    ld e, $2d                                     ; $7aeb: $1e $2d
    ret nz                                        ; $7aed: $c0

    ld sp, hl                                     ; $7aee: $f9
    nop                                           ; $7aef: $00
    ld b, l                                       ; $7af0: $45
    sub $d5                                       ; $7af1: $d6 $d5
    ld l, h                                       ; $7af3: $6c
    ld b, a                                       ; $7af4: $47
    ld [hl], l                                    ; $7af5: $75
    ret nz                                        ; $7af6: $c0

    ld d, d                                       ; $7af7: $52
    db $e4                                        ; $7af8: $e4
    dec d                                         ; $7af9: $15
    sub e                                         ; $7afa: $93
    ld c, l                                       ; $7afb: $4d
    ld [hl], h                                    ; $7afc: $74
    ld a, c                                       ; $7afd: $79
    and h                                         ; $7afe: $a4

Jump_05a_7aff:
    inc c                                         ; $7aff: $0c
    nop                                           ; $7b00: $00
    ld b, a                                       ; $7b01: $47
    ld a, a                                       ; $7b02: $7f
    xor b                                         ; $7b03: $a8
    db $eb                                        ; $7b04: $eb
    cp l                                          ; $7b05: $bd
    sbc a                                         ; $7b06: $9f
    rst $38                                       ; $7b07: $ff
    rst $38                                       ; $7b08: $ff
    sbc a                                         ; $7b09: $9f
    rst $38                                       ; $7b0a: $ff
    adc d                                         ; $7b0b: $8a
    call nc, Call_05a_60d9                        ; $7b0c: $d4 $d9 $60
    push de                                       ; $7b0f: $d5
    ld [hl], h                                    ; $7b10: $74
    nop                                           ; $7b11: $00
    rst $38                                       ; $7b12: $ff
    rst $38                                       ; $7b13: $ff
    and [hl]                                      ; $7b14: $a6
    cp e                                          ; $7b15: $bb
    sbc a                                         ; $7b16: $9f
    rst $38                                       ; $7b17: $ff
    ld l, b                                       ; $7b18: $68
    inc h                                         ; $7b19: $24
    sbc a                                         ; $7b1a: $9f
    rst $38                                       ; $7b1b: $ff
    pop hl                                        ; $7b1c: $e1
    rst $38                                       ; $7b1d: $ff
    sbc a                                         ; $7b1e: $9f
    rst $38                                       ; $7b1f: $ff
    pop hl                                        ; $7b20: $e1
    rst $38                                       ; $7b21: $ff
    nop                                           ; $7b22: $00
    rst $38                                       ; $7b23: $ff
    rst $38                                       ; $7b24: $ff
    rst $38                                       ; $7b25: $ff
    rst $38                                       ; $7b26: $ff
    ld h, [hl]                                    ; $7b27: $66
    ld [hl], c                                    ; $7b28: $71
    and b                                         ; $7b29: $a0
    rst $18                                       ; $7b2a: $df
    ld [hl], e                                    ; $7b2b: $73
    rst $38                                       ; $7b2c: $ff
    inc c                                         ; $7b2d: $0c
    ld d, [hl]                                    ; $7b2e: $56
    xor d                                         ; $7b2f: $aa
    ld [hl+], a                                   ; $7b30: $22
    cp $e5                                        ; $7b31: $fe $e5
    nop                                           ; $7b33: $00
    add $ff                                       ; $7b34: $c6 $ff
    jp $ffdf                                      ; $7b36: $c3 $df $ff


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
    nop                                           ; $7b44: $00
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
    ccf                                           ; $7b51: $3f
    rst $18                                       ; $7b52: $df
    rst $38                                       ; $7b53: $ff
    rst $38                                       ; $7b54: $ff
    nop                                           ; $7b55: $00
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
    nop                                           ; $7b66: $00
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
    nop                                           ; $7b77: $00
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
    nop                                           ; $7b82: $00
    cp a                                          ; $7b83: $bf
    rst $38                                       ; $7b84: $ff
    rst $38                                       ; $7b85: $ff
    rst $38                                       ; $7b86: $ff
    rst $38                                       ; $7b87: $ff
    nop                                           ; $7b88: $00
    rst $38                                       ; $7b89: $ff
    rst $38                                       ; $7b8a: $ff
    rst $38                                       ; $7b8b: $ff
    rst $38                                       ; $7b8c: $ff
    dec c                                         ; $7b8d: $0d
    ld e, h                                       ; $7b8e: $5c
    nop                                           ; $7b8f: $00
    nop                                           ; $7b90: $00
    nop                                           ; $7b91: $00
    rst $18                                       ; $7b92: $df
    ld a, e                                       ; $7b93: $7b
    ld a, $3e                                     ; $7b94: $3e $3e
    ld a, $78                                     ; $7b96: $3e $78
    rst $38                                       ; $7b98: $ff
    db $eb                                        ; $7b99: $eb
    ld a, e                                       ; $7b9a: $7b
    nop                                           ; $7b9b: $00
    ld [hl-], a                                   ; $7b9c: $32
    rst $38                                       ; $7b9d: $ff
    ldh [$90], a                                  ; $7b9e: $e0 $90
    ei                                            ; $7ba0: $fb
    pop hl                                        ; $7ba1: $e1
    rst $38                                       ; $7ba2: $ff
    rst $38                                       ; $7ba3: $ff
    nop                                           ; $7ba4: $00
    ld a, $bf                                     ; $7ba5: $3e $bf
    ldh [$c1], a                                  ; $7ba7: $e0 $c1
    db $ec                                        ; $7ba9: $ec
    ld bc, $c03e                                  ; $7baa: $01 $3e $c0
    ld [c], a                                     ; $7bad: $e2
    cp a                                          ; $7bae: $bf
    rst $38                                       ; $7baf: $ff
    ret nz                                        ; $7bb0: $c0

    db $e3                                        ; $7bb1: $e3
    cp a                                          ; $7bb2: $bf
    ldh [$c1], a                                  ; $7bb3: $e0 $c1
    db $ec                                        ; $7bb5: $ec
    ret nz                                        ; $7bb6: $c0

    ld [c], a                                     ; $7bb7: $e2
    ld a, a                                       ; $7bb8: $7f
    rst $38                                       ; $7bb9: $ff
    ld b, $c0                                     ; $7bba: $06 $c0
    push hl                                       ; $7bbc: $e5
    ld a, $7b                                     ; $7bbd: $3e $7b
    pop bc                                        ; $7bbf: $c1
    db $ec                                        ; $7bc0: $ec
    ret nz                                        ; $7bc1: $c0

    db $e3                                        ; $7bc2: $e3
    ld a, [hl]                                    ; $7bc3: $7e

Call_05a_7bc4:
    db $e3                                        ; $7bc4: $e3
    cp d                                          ; $7bc5: $ba
    cp $01                                        ; $7bc6: $fe $01
    ldh [rIE], a                                  ; $7bc8: $e0 $ff
    ld a, h                                       ; $7bca: $7c
    ld d, b                                       ; $7bcb: $50
    dec a                                         ; $7bcc: $3d
    ld b, [hl]                                    ; $7bcd: $46
    ld b, [hl]                                    ; $7bce: $46
    ld b, a                                       ; $7bcf: $47
    ld b, [hl]                                    ; $7bd0: $46
    ld b, a                                       ; $7bd1: $47
    ccf                                           ; $7bd2: $3f
    scf                                           ; $7bd3: $37
    ld d, d                                       ; $7bd4: $52
    ld c, l                                       ; $7bd5: $4d
    ld c, h                                       ; $7bd6: $4c
    ld c, e                                       ; $7bd7: $4b
    ld a, h                                       ; $7bd8: $7c
    ret nz                                        ; $7bd9: $c0

    rst $38                                       ; $7bda: $ff
    ld b, b                                       ; $7bdb: $40
    db $ec                                        ; $7bdc: $ec
    cp $c1                                        ; $7bdd: $fe $c1
    ldh [rNR43], a                                ; $7bdf: $e0 $22
    ld d, a                                       ; $7be1: $57
    ld d, a                                       ; $7be2: $57
    ld e, d                                       ; $7be3: $5a
    ld e, d                                       ; $7be4: $5a
    ld e, l                                       ; $7be5: $5d
    ld h, $1f                                     ; $7be6: $26 $1f
    ld [hl], $37                                  ; $7be8: $36 $37
    ld hl, $5052                                  ; $7bea: $21 $52 $50
    cp a                                          ; $7bed: $bf
    ldh [$c0], a                                  ; $7bee: $e0 $c0
    db $e4                                        ; $7bf0: $e4
    pop bc                                        ; $7bf1: $c1
    db $ed                                        ; $7bf2: $ed
    call z, $f22e                                 ; $7bf3: $cc $2e $f2
    add d                                         ; $7bf6: $82
    ldh [rNR42], a                                ; $7bf7: $e0 $21
    add hl, hl                                    ; $7bf9: $29
    pop bc                                        ; $7bfa: $c1
    ld [c], a                                     ; $7bfb: $e2
    rst $38                                       ; $7bfc: $ff
    ldh [rNR52], a                                ; $7bfd: $e0 $26
    ld [hl], $03                                  ; $7bff: $36 $03
    dec a                                         ; $7c01: $3d
    ld hl, $e0bf                                  ; $7c02: $21 $bf $e0
    add c                                         ; $7c05: $81
    db $f4                                        ; $7c06: $f4
    xor $d2                                       ; $7c07: $ee $d2
    pop bc                                        ; $7c09: $c1
    ldh [$c0], a                                  ; $7c0a: $e0 $c0
    ldh [$c1], a                                  ; $7c0c: $e0 $c1
    db $e3                                        ; $7c0e: $e3
    ld b, [hl]                                    ; $7c0f: $46
    cp l                                          ; $7c10: $bd
    ldh [$29], a                                  ; $7c11: $e0 $29
    ld hl, $e0bf                                  ; $7c13: $21 $bf $e0
    ld b, c                                       ; $7c16: $41
    rst $20                                       ; $7c17: $e7
    rst $38                                       ; $7c18: $ff
    rst $38                                       ; $7c19: $ff
    ld a, [hl]                                    ; $7c1a: $7e
    ret nz                                        ; $7c1b: $c0

    ldh [$3b], a                                  ; $7c1c: $e0 $3b
    add hl, sp                                    ; $7c1e: $39
    ld h, $c1                                     ; $7c1f: $26 $c1
    push hl                                       ; $7c21: $e5
    ld e, l                                       ; $7c22: $5d
    ld b, e                                       ; $7c23: $43
    ld h, b                                       ; $7c24: $60
    cp a                                          ; $7c25: $bf
    ldh [rP1], a                                  ; $7c26: $e0 $00
    rst $38                                       ; $7c28: $ff
    cp d                                          ; $7c29: $ba
    xor b                                         ; $7c2a: $a8
    rst $20                                       ; $7c2b: $e7
    ccf                                           ; $7c2c: $3f
    cp a                                          ; $7c2d: $bf
    pop hl                                        ; $7c2e: $e1
    scf                                           ; $7c2f: $37
    ld [hl], $26                                  ; $7c30: $36 $26
    add b                                         ; $7c32: $80
    db $e3                                        ; $7c33: $e3
    ld h, $1f                                     ; $7c34: $26 $1f
    ld h, d                                       ; $7c36: $62
    sbc [hl]                                      ; $7c37: $9e
    sub l                                         ; $7c38: $95
    sub l                                         ; $7c39: $95
    sub l                                         ; $7c3a: $95
    ret nz                                        ; $7c3b: $c0

    rst $38                                       ; $7c3c: $ff
    ret nz                                        ; $7c3d: $c0

    add sp, -$41                                  ; $7c3e: $e8 $bf
    ld [c], a                                     ; $7c40: $e2
    ld e, $be                                     ; $7c41: $1e $be
    db $e3                                        ; $7c43: $e3
    ld h, $5e                                     ; $7c44: $26 $5e
    ld e, a                                       ; $7c46: $5f
    ld [hl], b                                    ; $7c47: $70
    rst $38                                       ; $7c48: $ff
    pop hl                                        ; $7c49: $e1
    ret nz                                        ; $7c4a: $c0

    add sp, -$01                                  ; $7c4b: $e8 $ff
    cp $fd                                        ; $7c4d: $fe $fd
    ccf                                           ; $7c4f: $3f
    cp a                                          ; $7c50: $bf
    ldh [$4c], a                                  ; $7c51: $e0 $4c
    ld c, l                                       ; $7c53: $4d
    ld d, d                                       ; $7c54: $52
    ld d, d                                       ; $7c55: $52
    ld d, d                                       ; $7c56: $52
    scf                                           ; $7c57: $37
    add $3f                                       ; $7c58: $c6 $3f
    ret nz                                        ; $7c5a: $c0

    ld c, b                                       ; $7c5b: $48
    sbc d                                         ; $7c5c: $9a
    ret nz                                        ; $7c5d: $c0

    add sp, -$01                                  ; $7c5e: $e8 $ff
    rst $38                                       ; $7c60: $ff
    ret nz                                        ; $7c61: $c0

    db $e4                                        ; $7c62: $e4
    ld a, a                                       ; $7c63: $7f
    ld c, $7e                                     ; $7c64: $0e $7e
    rst $38                                       ; $7c66: $ff
    db $e3                                        ; $7c67: $e3
    ld a, a                                       ; $7c68: $7f
    ld a, [hl]                                    ; $7c69: $7e
    ld d, b                                       ; $7c6a: $50
    sbc e                                         ; $7c6b: $9b
    ld c, b                                       ; $7c6c: $48
    sbc [hl]                                      ; $7c6d: $9e
    ret nz                                        ; $7c6e: $c0

    rst $38                                       ; $7c6f: $ff
    ld d, [hl]                                    ; $7c70: $56
    ld b, b                                       ; $7c71: $40
    db $ec                                        ; $7c72: $ec
    ld a, a                                       ; $7c73: $7f
    ld a, c                                       ; $7c74: $79
    rst $38                                       ; $7c75: $ff
    db $e3                                        ; $7c76: $e3
    ld a, a                                       ; $7c77: $7f
    dec [hl]                                      ; $7c78: $35
    ld [c], a                                     ; $7c79: $e2
    ld [hl], c                                    ; $7c7a: $71
    ret nz                                        ; $7c7b: $c0

    or $18                                        ; $7c7c: $f6 $18
    ld sp, $c1f3                                  ; $7c7e: $31 $f3 $c1
    jp hl                                         ; $7c81: $e9


    db $f4                                        ; $7c82: $f4
    pop bc                                        ; $7c83: $c1
    sbc h                                         ; $7c84: $9c
    sbc c                                         ; $7c85: $99
    add b                                         ; $7c86: $80
    rst $38                                       ; $7c87: $ff
    ld [$c1e9], a                                 ; $7c88: $ea $e9 $c1
    ld [$b300], a                                 ; $7c8b: $ea $00 $b3
    pop bc                                        ; $7c8e: $c1
    ld a, a                                       ; $7c8f: $7f
    ldh [$ca], a                                  ; $7c90: $e0 $ca
    rst $38                                       ; $7c92: $ff
    rst $38                                       ; $7c93: $ff
    rst $38                                       ; $7c94: $ff
    rst $38                                       ; $7c95: $ff
    rst $38                                       ; $7c96: $ff
    db $fc                                        ; $7c97: $fc
    ei                                            ; $7c98: $fb
    ld b, d                                       ; $7c99: $42
    rst $18                                       ; $7c9a: $df
    rst $38                                       ; $7c9b: $ff
    rst $38                                       ; $7c9c: $ff
    nop                                           ; $7c9d: $00
    rst $38                                       ; $7c9e: $ff
    rst $38                                       ; $7c9f: $ff
    rst $38                                       ; $7ca0: $ff
    rst $38                                       ; $7ca1: $ff
    rst $38                                       ; $7ca2: $ff
    rst $38                                       ; $7ca3: $ff
    ld d, l                                       ; $7ca4: $55
    cp a                                          ; $7ca5: $bf
    ret nz                                        ; $7ca6: $c0

    rst $38                                       ; $7ca7: $ff
    ret nz                                        ; $7ca8: $c0

    rst $38                                       ; $7ca9: $ff
    rst $18                                       ; $7caa: $df
    ld a, [$ebc1]                                 ; $7cab: $fa $c1 $eb
    nop                                           ; $7cae: $00
    or d                                          ; $7caf: $b2
    push af                                       ; $7cb0: $f5
    ld e, a                                       ; $7cb1: $5f
    or $81                                        ; $7cb2: $f6 $81
    db $ec                                        ; $7cb4: $ec
    ld [hl], d                                    ; $7cb5: $72
    db $f4                                        ; $7cb6: $f4
    add c                                         ; $7cb7: $81
    ld hl, sp+$05                                 ; $7cb8: $f8 $05
    db $eb                                        ; $7cba: $eb
    add c                                         ; $7cbb: $81
    rst $38                                       ; $7cbc: $ff
    nop                                           ; $7cbd: $00
    ei                                            ; $7cbe: $fb
    nop                                           ; $7cbf: $00
    di                                            ; $7cc0: $f3
    rst $18                                       ; $7cc1: $df
    ret nz                                        ; $7cc2: $c0

    rst $38                                       ; $7cc3: $ff
    ret nz                                        ; $7cc4: $c0

    rst $18                                       ; $7cc5: $df
    sub e                                         ; $7cc6: $93
    or a                                          ; $7cc7: $b7
    ret nz                                        ; $7cc8: $c0

    rst $18                                       ; $7cc9: $df
    ld [hl], d                                    ; $7cca: $72
    rst $38                                       ; $7ccb: $ff
    db $d3                                        ; $7ccc: $d3
    rst $38                                       ; $7ccd: $ff
    dec hl                                        ; $7cce: $2b
    ld d, a                                       ; $7ccf: $57
    nop                                           ; $7cd0: $00
    dec b                                         ; $7cd1: $05
    cp a                                          ; $7cd2: $bf
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
    nop                                           ; $7ce1: $00
    ret nz                                        ; $7ce2: $c0

    db $dd                                        ; $7ce3: $dd
    ret nc                                        ; $7ce4: $d0

    rst $18                                       ; $7ce5: $df
    rst $38                                       ; $7ce6: $ff
    rst $38                                       ; $7ce7: $ff
    sbc a                                         ; $7ce8: $9f
    rst $38                                       ; $7ce9: $ff
    rst $38                                       ; $7cea: $ff
    rst $38                                       ; $7ceb: $ff
    rst $38                                       ; $7cec: $ff
    rst $38                                       ; $7ced: $ff
    rst $38                                       ; $7cee: $ff
    rst $38                                       ; $7cef: $ff
    rst $38                                       ; $7cf0: $ff
    rst $38                                       ; $7cf1: $ff
    nop                                           ; $7cf2: $00
    rst $38                                       ; $7cf3: $ff
    rst $38                                       ; $7cf4: $ff
    rst $38                                       ; $7cf5: $ff
    rst $38                                       ; $7cf6: $ff
    rst $38                                       ; $7cf7: $ff
    rst $38                                       ; $7cf8: $ff
    ld h, [hl]                                    ; $7cf9: $66
    adc c                                         ; $7cfa: $89
    ld bc, $ffff                                  ; $7cfb: $01 $ff $ff
    rst $38                                       ; $7cfe: $ff
    rst $38                                       ; $7cff: $ff
    rst $38                                       ; $7d00: $ff
    rst $38                                       ; $7d01: $ff
    rst $38                                       ; $7d02: $ff
    nop                                           ; $7d03: $00
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
    nop                                           ; $7d14: $00
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
    nop                                           ; $7d25: $00
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
    nop                                           ; $7d36: $00
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
    nop                                           ; $7d47: $00
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
    inc b                                         ; $7d58: $04
    rst $38                                       ; $7d59: $ff
    rst $38                                       ; $7d5a: $ff
    rst $38                                       ; $7d5b: $ff
    rst $38                                       ; $7d5c: $ff
    nop                                           ; $7d5d: $00
    nop                                           ; $7d5e: $00
    nop                                           ; $7d5f: $00
    nop                                           ; $7d60: $00
    call $ff00                                    ; $7d61: $cd $00 $ff
    jp hl                                         ; $7d64: $e9


    scf                                           ; $7d65: $37
    ld [hl-], a                                   ; $7d66: $32
    pop af                                        ; $7d67: $f1
    ld [$ffff], a                                 ; $7d68: $ea $ff $ff
    inc sp                                        ; $7d6b: $33
    ld sp, $dcfe                                  ; $7d6c: $31 $fe $dc
    ld a, [c]                                     ; $7d6f: $f2
    ld [hl], $30                                  ; $7d70: $36 $30
    scf                                           ; $7d72: $37
    ld h, $20                                     ; $7d73: $26 $20
    daa                                           ; $7d75: $27
    db $10                                        ; $7d76: $10
    ei                                            ; $7d77: $fb
    ld d, $17                                     ; $7d78: $16 $17
    cp [hl]                                       ; $7d7a: $be
    or $34                                        ; $7d7b: $f6 $34
    ld [hl], $32                                  ; $7d7d: $36 $32
    jr nc, jr_05a_7db8                            ; $7d7f: $30 $37

    rrca                                          ; $7d81: $0f
    ld sp, $3133                                  ; $7d82: $31 $33 $31
    inc sp                                        ; $7d85: $33
    sbc h                                         ; $7d86: $9c
    rst $38                                       ; $7d87: $ff
    rst $38                                       ; $7d88: $ff
    ei                                            ; $7d89: $fb
    nop                                           ; $7d8a: $00
    nop                                           ; $7d8b: $00
    nop                                           ; $7d8c: $00
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

jr_05a_7db8:
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

Jump_05a_7ee6:
    rst $38                                       ; $7ee6: $ff
    rst $38                                       ; $7ee7: $ff
    rst $38                                       ; $7ee8: $ff
    rst $38                                       ; $7ee9: $ff
    rst $38                                       ; $7eea: $ff
    rst $38                                       ; $7eeb: $ff
    rst $38                                       ; $7eec: $ff
    rst $38                                       ; $7eed: $ff
    rst $38                                       ; $7eee: $ff

Jump_05a_7eef:
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
