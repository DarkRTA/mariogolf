; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $065", ROMX[$4000], BANK[$65]

Call_065_4000:
    inc c                                         ; $4000: $0c
    ld b, b                                       ; $4001: $40
    db $dd                                        ; $4002: $dd
    ld c, d                                       ; $4003: $4a
    ret                                           ; $4004: $c9


Jump_065_4005:
    ld d, h                                       ; $4005: $54
    or e                                          ; $4006: $b3
    ld e, a                                       ; $4007: $5f
    ld a, [hl+]                                   ; $4008: $2a
    ld h, a                                       ; $4009: $67
    ld [hl], b                                    ; $400a: $70
    ld [hl], b                                    ; $400b: $70
    inc d                                         ; $400c: $14
    ld b, b                                       ; $400d: $40
    add hl, bc                                    ; $400e: $09
    ld b, h                                       ; $400f: $44
    ld [hl], a                                    ; $4010: $77
    ld c, c                                       ; $4011: $49
    sub d                                         ; $4012: $92
    ld c, c                                       ; $4013: $49
    inc sp                                        ; $4014: $33
    ld c, l                                       ; $4015: $4d
    dec c                                         ; $4016: $0d
    cp $e3                                        ; $4017: $fe $e3
    ld sp, hl                                     ; $4019: $f9
    rst $20                                       ; $401a: $e7
    ld c, $0e                                     ; $401b: $0e $0e
    db $fc                                        ; $401d: $fc
    db $eb                                        ; $401e: $eb
    db $e4                                        ; $401f: $e4
    ldh [$a7], a                                  ; $4020: $e0 $a7
    ld c, $0e                                     ; $4022: $0e $0e
    ld c, $fc                                     ; $4024: $0e $fc
    push af                                       ; $4026: $f5
    jp nc, Jump_065_4de0                          ; $4027: $d2 $e0 $4d

    db $fc                                        ; $402a: $fc
    db $e3                                        ; $402b: $e3
    dec c                                         ; $402c: $0d
    nop                                           ; $402d: $00
    ld hl, sp-$1c                                 ; $402e: $f8 $e4
    cp $ed                                        ; $4030: $fe $ed
    db $ec                                        ; $4032: $ec
    pop af                                        ; $4033: $f1
    ldh [$ea], a                                  ; $4034: $e0 $ea
    adc [hl]                                      ; $4036: $8e
    xor $f0                                       ; $4037: $ee $f0
    rst $28                                       ; $4039: $ef
    rst $38                                       ; $403a: $ff
    rst $38                                       ; $403b: $ff
    adc h                                         ; $403c: $8c
    rst $28                                       ; $403d: $ef
    inc c                                         ; $403e: $0c
    adc b                                         ; $403f: $88
    db $fd                                        ; $4040: $fd
    add d                                         ; $4041: $82
    ld sp, hl                                     ; $4042: $f9
    ld c, l                                       ; $4043: $4d
    ld c, l                                       ; $4044: $4d
    db $fc                                        ; $4045: $fc
    db $e3                                        ; $4046: $e3
    db $f4                                        ; $4047: $f4
    push bc                                       ; $4048: $c5
    cp $db                                        ; $4049: $fe $db
    ld c, $ef                                     ; $404b: $0e $ef
    add $be                                       ; $404d: $c6 $be
    ld [c], a                                     ; $404f: $e2
    ld c, l                                       ; $4050: $4d
    dec l                                         ; $4051: $2d
    ld a, [hl]                                    ; $4052: $7e
    rst $38                                       ; $4053: $ff
    nop                                           ; $4054: $00
    ld a, [c]                                     ; $4055: $f2
    ld [hl], d                                    ; $4056: $72
    ret nz                                        ; $4057: $c0

    ld l, l                                       ; $4058: $6d
    dec c                                         ; $4059: $0d
    rlca                                          ; $405a: $07
    dec bc                                        ; $405b: $0b
    dec bc                                        ; $405c: $0b
    dec c                                         ; $405d: $0d
    cp a                                          ; $405e: $bf
    ldh [rP1], a                                  ; $405f: $e0 $00
    rst $38                                       ; $4061: $ff
    add b                                         ; $4062: $80
    add $84                                       ; $4063: $c6 $84
    push bc                                       ; $4065: $c5
    ld b, l                                       ; $4066: $45
    ldh [$3d], a                                  ; $4067: $e0 $3d
    ld l, l                                       ; $4069: $6d
    jp Jump_000_0de0                              ; $406a: $c3 $e0 $0d


    dec bc                                        ; $406d: $0b
    dec c                                         ; $406e: $0d
    dec bc                                        ; $406f: $0b
    ld a, [hl]                                    ; $4070: $7e
    rst $38                                       ; $4071: $ff
    ld d, h                                       ; $4072: $54
    pop hl                                        ; $4073: $e1
    inc e                                         ; $4074: $1c
    ld d, e                                       ; $4075: $53
    push hl                                       ; $4076: $e5
    db $10                                        ; $4077: $10
    db $e4                                        ; $4078: $e4
    ld c, l                                       ; $4079: $4d

Jump_065_407a:
    ld c, l                                       ; $407a: $4d
    ld l, l                                       ; $407b: $6d
    push bc                                       ; $407c: $c5
    ldh [$fd], a                                  ; $407d: $e0 $fd
    db $e3                                        ; $407f: $e3
    db $eb                                        ; $4080: $eb
    ldh [rBCPS], a                                ; $4081: $e0 $68
    db $fc                                        ; $4083: $fc
    and l                                         ; $4084: $a5
    db $dd                                        ; $4085: $dd
    and h                                         ; $4086: $a4
    db $f4                                        ; $4087: $f4
    xor l                                         ; $4088: $ad
    inc c                                         ; $4089: $0c
    rst $38                                       ; $408a: $ff
    db $e3                                        ; $408b: $e3
    inc l                                         ; $408c: $2c
    inc l                                         ; $408d: $2c
    cp a                                          ; $408e: $bf
    ld [c], a                                     ; $408f: $e2
    ld [hl], b                                    ; $4090: $70
    ret c                                         ; $4091: $d8

    and b                                         ; $4092: $a0
    ld b, [hl]                                    ; $4093: $46
    ld [c], a                                     ; $4094: $e2
    ld b, d                                       ; $4095: $42
    ldh [$fe], a                                  ; $4096: $e0 $fe
    ldh [$0d], a                                  ; $4098: $e0 $0d
    dec bc                                        ; $409a: $0b
    ld l, l                                       ; $409b: $6d
    db $ec                                        ; $409c: $ec
    ld [c], a                                     ; $409d: $e2
    inc a                                         ; $409e: $3c
    ld e, h                                       ; $409f: $5c
    rst $28                                       ; $40a0: $ef
    call nc, $0dcb                                ; $40a1: $d4 $cb $0d
    dec l                                         ; $40a4: $2d
    ld c, h                                       ; $40a5: $4c
    ld c, h                                       ; $40a6: $4c
    cp a                                          ; $40a7: $bf
    db $e4                                        ; $40a8: $e4
    rlca                                          ; $40a9: $07
    ldh [rP1], a                                  ; $40aa: $e0 $00
    add h                                         ; $40ac: $84
    ld [c], a                                     ; $40ad: $e2
    xor h                                         ; $40ae: $ac
    db $e3                                        ; $40af: $e3
    ccf                                           ; $40b0: $3f
    pop hl                                        ; $40b1: $e1
    ld a, d                                       ; $40b2: $7a
    rst $00                                       ; $40b3: $c7
    sbc b                                         ; $40b4: $98
    and c                                         ; $40b5: $a1
    db $f4                                        ; $40b6: $f4
    xor [hl]                                      ; $40b7: $ae
    add d                                         ; $40b8: $82
    and e                                         ; $40b9: $a3
    cp [hl]                                       ; $40ba: $be
    ldh [$d2], a                                  ; $40bb: $e0 $d2
    ld a, [hl]                                    ; $40bd: $7e
    ldh [$0d], a                                  ; $40be: $e0 $0d
    inc a                                         ; $40c0: $3c
    ldh [rLYC], a                                 ; $40c1: $e0 $45

Jump_065_40c3:
    pop hl                                        ; $40c3: $e1
    dec bc                                        ; $40c4: $0b
    pop bc                                        ; $40c5: $c1
    ldh [$6c], a                                  ; $40c6: $e0 $6c
    ld l, h                                       ; $40c8: $6c
    sub b                                         ; $40c9: $90
    xor h                                         ; $40ca: $ac
    pop hl                                        ; $40cb: $e1
    cp $df                                        ; $40cc: $fe $df
    db $10                                        ; $40ce: $10
    push bc                                       ; $40cf: $c5
    cp a                                          ; $40d0: $bf
    pop hl                                        ; $40d1: $e1
    inc l                                         ; $40d2: $2c
    dec b                                         ; $40d3: $05
    pop hl                                        ; $40d4: $e1
    cpl                                           ; $40d5: $2f
    ld [c], a                                     ; $40d6: $e2
    ld c, h                                       ; $40d7: $4c
    inc bc                                        ; $40d8: $03
    ld l, h                                       ; $40d9: $6c
    dec c                                         ; $40da: $0d
    cp a                                          ; $40db: $bf
    ret nz                                        ; $40dc: $c0

    cp a                                          ; $40dd: $bf
    db $e3                                        ; $40de: $e3
    ldh a, [$8f]                                  ; $40df: $f0 $8f
    xor $8b                                       ; $40e1: $ee $8b
    ld c, $c4                                     ; $40e3: $0e $c4
    inc a                                         ; $40e5: $3c
    ldh [$e1], a                                  ; $40e6: $e0 $e1
    ld c, h                                       ; $40e8: $4c
    push bc                                       ; $40e9: $c5
    db $e3                                        ; $40ea: $e3
    call nz, $81e1                                ; $40eb: $c4 $e1 $81
    pop bc                                        ; $40ee: $c1
    cp a                                          ; $40ef: $bf
    pop hl                                        ; $40f0: $e1
    inc c                                         ; $40f1: $0c
    dec bc                                        ; $40f2: $0b
    ld l, l                                       ; $40f3: $6d
    ld c, b                                       ; $40f4: $48
    ldh a, [$9d]                                  ; $40f5: $f0 $9d
    adc [hl]                                      ; $40f7: $8e
    and l                                         ; $40f8: $a5
    jp z, $2de2                                   ; $40f9: $ca $e2 $2d

    ret                                           ; $40fc: $c9


    pop bc                                        ; $40fd: $c1
    jp nz, Jump_000_2bc1                          ; $40fe: $c2 $c1 $2b

    dec a                                         ; $4101: $3d
    jp nz, Jump_065_6cc3                          ; $4102: $c2 $c3 $6c

    inc c                                         ; $4105: $0c
    ld a, $e0                                     ; $4106: $3e $e0
    ldh a, [$9f]                                  ; $4108: $f0 $9f
    ld a, d                                       ; $410a: $7a
    add [hl]                                      ; $410b: $86
    nop                                           ; $410c: $00
    ld [c], a                                     ; $410d: $e2
    dec c                                         ; $410e: $0d
    dec hl                                        ; $410f: $2b
    ld e, e                                       ; $4110: $5b
    ld c, e                                       ; $4111: $4b
    ld c, e                                       ; $4112: $4b
    ret nz                                        ; $4113: $c0

    ldh [$2b], a                                  ; $4114: $e0 $2b
    dec hl                                        ; $4116: $2b
    ret nz                                        ; $4117: $c0

    ldh [$2c], a                                  ; $4118: $e0 $2c
    cp d                                          ; $411a: $ba
    and c                                         ; $411b: $a1
    ld hl, sp-$10                                 ; $411c: $f8 $f0
    sbc c                                         ; $411e: $99
    ld [$44ad], sp                                ; $411f: $08 $ad $44
    pop hl                                        ; $4122: $e1
    ld c, d                                       ; $4123: $4a
    ld a, [bc]                                    ; $4124: $0a
    ld l, d                                       ; $4125: $6a
    ld c, e                                       ; $4126: $4b
    ld l, e                                       ; $4127: $6b
    inc hl                                        ; $4128: $23
    dec hl                                        ; $4129: $2b
    dec hl                                        ; $412a: $2b
    cp l                                          ; $412b: $bd
    ldh [$78], a                                  ; $412c: $e0 $78
    ret nz                                        ; $412e: $c0

    and $60                                       ; $412f: $e6 $60
    dec l                                         ; $4131: $2d
    call c, $df61                                 ; $4132: $dc $61 $df
    and c                                         ; $4135: $a1
    ld hl, sp-$1c                                 ; $4136: $f8 $e4
    ld h, h                                       ; $4138: $64
    ld [bc], a                                    ; $4139: $02
    or a                                          ; $413a: $b7
    ld a, [hl-]                                   ; $413b: $3a
    db $e4                                        ; $413c: $e4
    ld a, [bc]                                    ; $413d: $0a
    ld a, [bc]                                    ; $413e: $0a
    ld a, [bc]                                    ; $413f: $0a
    ld c, d                                       ; $4140: $4a
    ld l, e                                       ; $4141: $6b
    nop                                           ; $4142: $00
    dec a                                         ; $4143: $3d

Call_065_4144:
    pop hl                                        ; $4144: $e1
    ccf                                           ; $4145: $3f
    pop hl                                        ; $4146: $e1
    ld a, c                                       ; $4147: $79
    and d                                         ; $4148: $a2
    add hl, hl                                    ; $4149: $29
    ret nz                                        ; $414a: $c0

    sbc [hl]                                      ; $414b: $9e
    and c                                         ; $414c: $a1
    ld a, [hl]                                    ; $414d: $7e
    cp $12                                        ; $414e: $fe $12
    ldh [rLYC], a                                 ; $4150: $e0 $45
    and b                                         ; $4152: $a0
    ld a, [bc]                                    ; $4153: $0a
    cp a                                          ; $4154: $bf
    ldh [$2a], a                                  ; $4155: $e0 $2a
    ld a, a                                       ; $4157: $7f
    ld [c], a                                     ; $4158: $e2
    ld c, e                                       ; $4159: $4b
    ccf                                           ; $415a: $3f
    ldh [$b7], a                                  ; $415b: $e0 $b7
    and d                                         ; $415d: $a2
    xor l                                         ; $415e: $ad
    pop bc                                        ; $415f: $c1
    ld a, [hl]                                    ; $4160: $7e
    add sp, -$4e                                  ; $4161: $e8 $b2
    inc d                                         ; $4163: $14
    sub a                                         ; $4164: $97
    ld c, l                                       ; $4165: $4d
    cp [hl]                                       ; $4166: $be
    ret nz                                        ; $4167: $c0

    ld b, h                                       ; $4168: $44
    pop bc                                        ; $4169: $c1
    dec l                                         ; $416a: $2d
    dec c                                         ; $416b: $0d
    pop bc                                        ; $416c: $c1
    pop hl                                        ; $416d: $e1
    ld a, [bc]                                    ; $416e: $0a
    inc bc                                        ; $416f: $03
    ld c, d                                       ; $4170: $4a
    inc c                                         ; $4171: $0c
    ld [hl], a                                    ; $4172: $77
    and d                                         ; $4173: $a2
    ld [hl], b                                    ; $4174: $70
    jp nz, $a2b2                                  ; $4175: $c2 $b2 $a2

    ld h, b                                       ; $4178: $60
    ld l, a                                       ; $4179: $6f
    ld [hl], $68                                  ; $417a: $36 $68
    sbc d                                         ; $417c: $9a
    and d                                         ; $417d: $a2
    ld l, h                                       ; $417e: $6c
    ld [hl], c                                    ; $417f: $71
    and b                                         ; $4180: $a0
    ld [hl], a                                    ; $4181: $77
    pop bc                                        ; $4182: $c1

jr_065_4183:
    dec l                                         ; $4183: $2d
    ld c, e                                       ; $4184: $4b
    inc a                                         ; $4185: $3c
    and b                                         ; $4186: $a0
    ld c, d                                       ; $4187: $4a
    ld a, [bc]                                    ; $4188: $0a
    ret nz                                        ; $4189: $c0

    pop hl                                        ; $418a: $e1
    ret nz                                        ; $418b: $c0

    or l                                          ; $418c: $b5
    add c                                         ; $418d: $81
    ld l, c                                       ; $418e: $69
    and d                                         ; $418f: $a2
    db $fc                                        ; $4190: $fc
    add $00                                       ; $4191: $c6 $00
    sbc c                                         ; $4193: $99
    rlca                                          ; $4194: $07
    add c                                         ; $4195: $81
    ld bc, $6ba1                                  ; $4196: $01 $a1 $6b
    ld l, e                                       ; $4199: $6b
    add b                                         ; $419a: $80
    ld a, [hl-]                                   ; $419b: $3a
    ret nz                                        ; $419c: $c0

    inc a                                         ; $419d: $3c
    and b                                         ; $419e: $a0
    ld [hl], a                                    ; $419f: $77
    add c                                         ; $41a0: $81
    ld l, h                                       ; $41a1: $6c
    db $e3                                        ; $41a2: $e3
    ldh a, [$81]                                  ; $41a3: $f0 $81
    ld hl, sp+$7f                                 ; $41a5: $f8 $7f
    db $f4                                        ; $41a7: $f4
    and l                                         ; $41a8: $a5
    dec l                                         ; $41a9: $2d
    ld c, $c0                                     ; $41aa: $0e $c0
    ldh [rOCPD], a                                ; $41ac: $e0 $6b
    inc l                                         ; $41ae: $2c
    ld c, h                                       ; $41af: $4c
    cpl                                           ; $41b0: $2f
    and e                                         ; $41b1: $a3
    xor l                                         ; $41b2: $ad
    and h                                         ; $41b3: $a4
    db $f4                                        ; $41b4: $f4
    and l                                         ; $41b5: $a5
    inc c                                         ; $41b6: $0c
    ld [hl], l                                    ; $41b7: $75
    ld c, $f4                                     ; $41b8: $0e $f4
    xor d                                         ; $41ba: $aa
    dec c                                         ; $41bb: $0d
    ld c, e                                       ; $41bc: $4b
    ld l, e                                       ; $41bd: $6b
    ld [hl], $a0                                  ; $41be: $36 $a0
    ld a, b                                       ; $41c0: $78

Jump_065_41c1:
    add d                                         ; $41c1: $82
    add c                                         ; $41c2: $81
    db $e3                                        ; $41c3: $e3
    xor c                                         ; $41c4: $a9
    ld h, b                                       ; $41c5: $60
    db $10                                        ; $41c6: $10
    ld h, b                                       ; $41c7: $60
    ld c, [hl]                                    ; $41c8: $4e
    inc h                                         ; $41c9: $24
    ld c, c                                       ; $41ca: $49
    ld [$c14d], sp                                ; $41cb: $08 $4d $c1
    ldh [$6c], a                                  ; $41ce: $e0 $6c
    ld a, [$04a0]                                 ; $41d0: $fa $a0 $04
    db $e3                                        ; $41d3: $e3
    ld a, e                                       ; $41d4: $7b

Call_065_41d5:
    jp nz, Jump_000_30a8                          ; $41d5: $c2 $a8 $30

    add b                                         ; $41d8: $80
    nop                                           ; $41d9: $00
    jp c, Jump_065_492a                           ; $41da: $da $2a $49

    ld l, l                                       ; $41dd: $6d
    push hl                                       ; $41de: $e5
    ld h, b                                       ; $41df: $60
    ld l, h                                       ; $41e0: $6c
    jr c, jr_065_4183                             ; $41e1: $38 $a0

    ld a, [bc]                                    ; $41e3: $0a
    ld bc, $b16a                                  ; $41e4: $01 $6a $b1
    ld h, e                                       ; $41e7: $63
    ld l, a                                       ; $41e8: $6f
    ld h, b                                       ; $41e9: $60
    pop af                                        ; $41ea: $f1
    ld h, b                                       ; $41eb: $60
    ld [hl], d                                    ; $41ec: $72
    sbc a                                         ; $41ed: $9f
    adc [hl]                                      ; $41ee: $8e
    ld b, h                                       ; $41ef: $44
    pop bc                                        ; $41f0: $c1
    ldh [$b6], a                                  ; $41f1: $e0 $b6
    add b                                         ; $41f3: $80
    ld c, $f7                                     ; $41f4: $0e $f7
    add b                                         ; $41f6: $80
    ld c, d                                       ; $41f7: $4a
    ld a, [bc]                                    ; $41f8: $0a
    ld a, [bc]                                    ; $41f9: $0a
    inc a                                         ; $41fa: $3c
    db $e3                                        ; $41fb: $e3
    or d                                          ; $41fc: $b2
    ld h, c                                       ; $41fd: $61
    ldh a, [$5f]                                  ; $41fe: $f0 $5f
    add d                                         ; $4200: $82
    rst $20                                       ; $4201: $e7
    ld bc, $fb6c                                  ; $4202: $01 $6c $fb
    ld b, b                                       ; $4205: $40
    dec sp                                        ; $4206: $3b
    ret nz                                        ; $4207: $c0

    or [hl]                                       ; $4208: $b6
    add b                                         ; $4209: $80
    halt                                          ; $420a: $76
    and c                                         ; $420b: $a1
    or b                                          ; $420c: $b0
    ld b, b                                       ; $420d: $40
    add d                                         ; $420e: $82
    db $d3                                        ; $420f: $d3
    ld [hl-], a                                   ; $4210: $32
    inc l                                         ; $4211: $2c
    ld [$e782], sp                                ; $4212: $08 $82 $e7
    dec sp                                        ; $4215: $3b
    add d                                         ; $4216: $82
    dec sp                                        ; $4217: $3b
    pop bc                                        ; $4218: $c1
    dec hl                                        ; $4219: $2b
    cp b                                          ; $421a: $b8
    and b                                         ; $421b: $a0
    xor [hl]                                      ; $421c: $ae
    ld b, c                                       ; $421d: $41
    ld b, d                                       ; $421e: $42
    pop bc                                        ; $421f: $c1
    nop                                           ; $4220: $00
    rst $18                                       ; $4221: $df
    ld [de], a                                    ; $4222: $12
    inc b                                         ; $4223: $04
    ld [c], a                                     ; $4224: $e2
    inc l                                         ; $4225: $2c
    pop bc                                        ; $4226: $c1
    pop hl                                        ; $4227: $e1
    ld a, d                                       ; $4228: $7a
    ld b, c                                       ; $4229: $41
    ld l, e                                       ; $422a: $6b
    ld [hl], a                                    ; $422b: $77

Call_065_422c:
    add c                                         ; $422c: $81
    cp b                                          ; $422d: $b8
    and b                                         ; $422e: $a0
    ld a, [c]                                     ; $422f: $f2
    ld b, e                                       ; $4230: $43
    inc e                                         ; $4231: $1c
    ld c, b                                       ; $4232: $48
    rst $38                                       ; $4233: $ff
    add d                                         ; $4234: $82
    inc hl                                        ; $4235: $23
    dec bc                                        ; $4236: $0b
    inc l                                         ; $4237: $2c
    ld c, h                                       ; $4238: $4c
    ccf                                           ; $4239: $3f
    ld b, d                                       ; $423a: $42
    ld a, d                                       ; $423b: $7a
    ld h, c                                       ; $423c: $61
    scf                                           ; $423d: $37
    add b                                         ; $423e: $80
    ld [hl], b                                    ; $423f: $70
    ld a, [hl]                                    ; $4240: $7e
    ldh [rLCDC], a                                ; $4241: $e0 $40
    db $e3                                        ; $4243: $e3
    nop                                           ; $4244: $00
    db $fd                                        ; $4245: $fd
    sub d                                         ; $4246: $92
    ld b, l                                       ; $4247: $45
    dec bc                                        ; $4248: $0b
    inc c                                         ; $4249: $0c
    ld c, h                                       ; $424a: $4c
    jp Jump_000_10e3                              ; $424b: $c3 $e3 $10


    ret nz                                        ; $424e: $c0

    push hl                                       ; $424f: $e5
    add d                                         ; $4250: $82
    sub $24                                       ; $4251: $d6 $24
    dec c                                         ; $4253: $0d
    ldh a, [$03]                                  ; $4254: $f0 $03
    dec bc                                        ; $4256: $0b
    ld c, c                                       ; $4257: $49
    add b                                         ; $4258: $80
    rst $38                                       ; $4259: $ff
    db $e3                                        ; $425a: $e3
    jp nz, Jump_000_02c1                          ; $425b: $c2 $c1 $02

    rst $38                                       ; $425e: $ff
    ret nz                                        ; $425f: $c0

    ld c, e                                       ; $4260: $4b
    ld h, h                                       ; $4261: $64
    ld h, c                                       ; $4262: $61
    nop                                           ; $4263: $00
    sbc a                                         ; $4264: $9f
    ld a, [hl]                                    ; $4265: $7e
    dec h                                         ; $4266: $25
    ret z                                         ; $4267: $c8

    ld h, d                                       ; $4268: $62
    ret nz                                        ; $4269: $c0

    db $e3                                        ; $426a: $e3
    ld [hl], a                                    ; $426b: $77
    ld h, c                                       ; $426c: $61
    nop                                           ; $426d: $00
    ld b, c                                       ; $426e: $41
    ldh [$83], a                                  ; $426f: $e0 $83
    and c                                         ; $4271: $a1
    ld c, b                                       ; $4272: $48
    rst $18                                       ; $4273: $df
    db $fc                                        ; $4274: $fc
    and e                                         ; $4275: $a3
    ld a, [hl-]                                   ; $4276: $3a
    ld b, b                                       ; $4277: $40
    ret z                                         ; $4278: $c8

    ld h, c                                       ; $4279: $61
    ld a, l                                       ; $427a: $7d
    ld b, c                                       ; $427b: $41
    inc b                                         ; $427c: $04
    pop hl                                        ; $427d: $e1
    sub a                                         ; $427e: $97
    dec hl                                        ; $427f: $2b
    ld l, e                                       ; $4280: $6b
    ld l, e                                       ; $4281: $6b

Jump_065_4282:
    ret nz                                        ; $4282: $c0

    pop hl                                        ; $4283: $e1
    ld l, l                                       ; $4284: $6d
    nop                                           ; $4285: $00
    ld a, d                                       ; $4286: $7a
    ld a, d                                       ; $4287: $7a
    ld l, e                                       ; $4288: $6b
    dec l                                         ; $4289: $2d
    ld bc, $876c                                  ; $428a: $01 $6c $87
    add c                                         ; $428d: $81
    add b                                         ; $428e: $80
    db $e4                                        ; $428f: $e4
    jp nz, $03e0                                  ; $4290: $c2 $e0 $03

    pop bc                                        ; $4293: $c1
    add b                                         ; $4294: $80
    ld d, l                                       ; $4295: $55
    cp $8b                                        ; $4296: $fe $8b
    ldh a, [rNR50]                                ; $4298: $f0 $24
    ld [bc], a                                    ; $429a: $02
    or b                                          ; $429b: $b0
    jr nz, jr_065_42aa                            ; $429c: $20 $0c

    add e                                         ; $429e: $83
    and c                                         ; $429f: $a1
    jr c, @+$24                                   ; $42a0: $38 $22

    inc b                                         ; $42a2: $04
    jp nz, $a766                                  ; $42a3: $c2 $66 $a7

    call z, Call_000_24ae                         ; $42a6: $cc $ae $24
    ld c, a                                       ; $42a9: $4f

jr_065_42aa:
    ret nz                                        ; $42aa: $c0

    ld a, [hl]                                    ; $42ab: $7e
    pop hl                                        ; $42ac: $e1
    ret nz                                        ; $42ad: $c0

    add sp, -$7a                                  ; $42ae: $e8 $86
    or h                                          ; $42b0: $b4
    db $fc                                        ; $42b1: $fc
    ld a, d                                       ; $42b2: $7a
    ld b, $61                                     ; $42b3: $06 $61
    add e                                         ; $42b5: $83
    add c                                         ; $42b6: $81
    dec bc                                        ; $42b7: $0b
    dec bc                                        ; $42b8: $0b
    add a                                         ; $42b9: $87
    ld c, e                                       ; $42ba: $4b
    ld c, e                                       ; $42bb: $4b
    ld l, l                                       ; $42bc: $6d
    inc b                                         ; $42bd: $04
    ld e, e                                       ; $42be: $5b
    ld a, [hl+]                                   ; $42bf: $2a
    ld [de], a                                    ; $42c0: $12
    dec a                                         ; $42c1: $3d
    pop bc                                        ; $42c2: $c1
    ld [$4ba3], sp                                ; $42c3: $08 $a3 $4b
    nop                                           ; $42c6: $00
    ld a, c                                       ; $42c7: $79
    ld bc, $3384                                  ; $42c8: $01 $84 $33
    nop                                           ; $42cb: $00
    sub l                                         ; $42cc: $95
    jp nz, Jump_065_4660                          ; $42cd: $c2 $60 $46

    ld h, c                                       ; $42d0: $61
    ld a, $41                                     ; $42d1: $3e $41
    add e                                         ; $42d3: $83
    pop bc                                        ; $42d4: $c1
    ld a, d                                       ; $42d5: $7a
    inc b                                         ; $42d6: $04
    ld [$add4], sp                                ; $42d7: $08 $d4 $ad
    ld [hl], e                                    ; $42da: $73
    rst $30                                       ; $42db: $f7
    cp $81                                        ; $42dc: $fe $81
    ld c, h                                       ; $42de: $4c
    ld b, c                                       ; $42df: $41
    ld [c], a                                     ; $42e0: $e2
    add [hl]                                      ; $42e1: $86
    and d                                         ; $42e2: $a2
    ld a, d                                       ; $42e3: $7a
    ld e, $00                                     ; $42e4: $1e $00
    adc [hl]                                      ; $42e6: $8e
    nop                                           ; $42e7: $00
    ld a, $a1                                     ; $42e8: $3e $a1
    cp a                                          ; $42ea: $bf
    ld [hl+], a                                   ; $42eb: $22
    add [hl]                                      ; $42ec: $86
    and b                                         ; $42ed: $a0
    add [hl]                                      ; $42ee: $86
    adc b                                         ; $42ef: $88
    rst $38                                       ; $42f0: $ff
    rst $38                                       ; $42f1: $ff
    inc l                                         ; $42f2: $2c
    ld b, h                                       ; $42f3: $44
    jr c, jr_065_42f6                             ; $42f4: $38 $00

jr_065_42f6:
    add l                                         ; $42f6: $85
    jp Jump_000_3a80                              ; $42f7: $c3 $80 $3a


    ld b, b                                       ; $42fa: $40
    add a                                         ; $42fb: $87
    ld h, d                                       ; $42fc: $62
    call nc, Call_000_04f8                        ; $42fd: $d4 $f8 $04
    call z, Call_065_6244                         ; $4300: $cc $44 $62
    cp $80                                        ; $4303: $fe $80
    add [hl]                                      ; $4305: $86
    ld hl, $e06b                                  ; $4306: $21 $6b $e0
    ld a, h                                       ; $4309: $7c
    add h                                         ; $430a: $84
    add [hl]                                      ; $430b: $86
    add l                                         ; $430c: $85
    cp $d9                                        ; $430d: $fe $d9
    ld [hl+], a                                   ; $430f: $22
    daa                                           ; $4310: $27
    add d                                         ; $4311: $82
    ldh [$0d], a                                  ; $4312: $e0 $0d
    dec bc                                        ; $4314: $0b
    ld c, h                                       ; $4315: $4c
    inc bc                                        ; $4316: $03
    inc l                                         ; $4317: $2c
    inc l                                         ; $4318: $2c
    ld c, b                                       ; $4319: $48
    and e                                         ; $431a: $a3
    ret nz                                        ; $431b: $c0

    db $e3                                        ; $431c: $e3
    ld c, h                                       ; $431d: $4c
    rst $38                                       ; $431e: $ff

jr_065_431f:
    add d                                         ; $431f: $82
    add sp, -$36                                  ; $4320: $e8 $ca
    and d                                         ; $4322: $a2
    cp a                                          ; $4323: $bf
    ldh [rP1], a                                  ; $4324: $e0 $00
    inc bc                                        ; $4326: $03
    ld hl, $62fd                                  ; $4327: $21 $fd $62
    inc b                                         ; $432a: $04
    and l                                         ; $432b: $a5
    ld a, [bc]                                    ; $432c: $0a
    cp e                                          ; $432d: $bb
    cp h                                          ; $432e: $bc
    ld b, l                                       ; $432f: $45
    sub b                                         ; $4330: $90
    ld [hl+], a                                   ; $4331: $22
    cp a                                          ; $4332: $bf

Call_065_4333:
    ldh [$be], a                                  ; $4333: $e0 $be
    db $e3                                        ; $4335: $e3
    nop                                           ; $4336: $00
    add $43                                       ; $4337: $c6 $43
    ld [bc], a                                    ; $4339: $02
    db $fd                                        ; $433a: $fd
    nop                                           ; $433b: $00
    ld b, a                                       ; $433c: $47
    cp $01                                        ; $433d: $fe $01
    sub b                                         ; $433f: $90
    ld b, e                                       ; $4340: $43
    cp [hl]                                       ; $4341: $be
    ld [c], a                                     ; $4342: $e2
    add c                                         ; $4343: $81
    ld [bc], a                                    ; $4344: $02
    ld b, h                                       ; $4345: $44
    nop                                           ; $4346: $00
    ld [$24ec], sp                                ; $4347: $08 $ec $24
    nop                                           ; $434a: $00
    db $dd                                        ; $434b: $dd
    adc b                                         ; $434c: $88
    jr nz, jr_065_439c                            ; $434d: $20 $4d

    add a                                         ; $434f: $87
    and l                                         ; $4350: $a5
    add a                                         ; $4351: $87
    ld b, b                                       ; $4352: $40
    cp a                                          ; $4353: $bf
    ld [c], a                                     ; $4354: $e2
    rst $30                                       ; $4355: $f7
    ld b, b                                       ; $4356: $40
    ld [$a4fe], sp                                ; $4357: $08 $fe $a4
    nop                                           ; $435a: $00
    ld e, a                                       ; $435b: $5f
    ld c, c                                       ; $435c: $49
    jr nz, @+$6f                                  ; $435d: $20 $6d

    adc c                                         ; $435f: $89

Call_065_4360:
    add [hl]                                      ; $4360: $86
    add h                                         ; $4361: $84
    jr nz, jr_065_43dc                            ; $4362: $20 $78

    add b                                         ; $4364: $80
    ld a, [hl]                                    ; $4365: $7e
    ld [bc], a                                    ; $4366: $02
    db $10                                        ; $4367: $10
    add [hl]                                      ; $4368: $86
    dec b                                         ; $4369: $05
    cp d                                          ; $436a: $ba
    rst $18                                       ; $436b: $df
    ld b, h                                       ; $436c: $44
    ret nz                                        ; $436d: $c0

    ret nz                                        ; $436e: $c0

    rst $20                                       ; $436f: $e7
    dec c                                         ; $4370: $0d
    or [hl]                                       ; $4371: $b6
    ld h, c                                       ; $4372: $61
    ld b, $27                                     ; $4373: $06 $27
    cp $59                                        ; $4375: $fe $59
    ret c                                         ; $4377: $d8

    inc b                                         ; $4378: $04
    add h                                         ; $4379: $84
    add h                                         ; $437a: $84
    ld bc, $210c                                  ; $437b: $01 $0c $21
    dec bc                                        ; $437e: $0b
    dec bc                                        ; $437f: $0b
    ld a, [hl-]                                   ; $4380: $3a
    ld bc, $0d0d                                  ; $4381: $01 $0d $0d
    nop                                           ; $4384: $00
    ld a, b                                       ; $4385: $78
    add c                                         ; $4386: $81
    rlca                                          ; $4387: $07
    ld [hl+], a                                   ; $4388: $22
    nop                                           ; $4389: $00
    rst $18                                       ; $438a: $df
    ld a, [hl]                                    ; $438b: $7e
    ld b, e                                       ; $438c: $43
    bit 0, e                                      ; $438d: $cb $43
    cp $e5                                        ; $438f: $fe $e5
    or l                                          ; $4391: $b5
    ld b, c                                       ; $4392: $41
    nop                                           ; $4393: $00
    sbc a                                         ; $4394: $9f
    ld [bc], a                                    ; $4395: $02
    inc b                                         ; $4396: $04
    ld c, c                                       ; $4397: $49
    dec l                                         ; $4398: $2d
    ld b, b                                       ; $4399: $40
    jp hl                                         ; $439a: $e9


    ret nz                                        ; $439b: $c0

jr_065_439c:
    ld h, b                                       ; $439c: $60
    jr c, jr_065_431f                             ; $439d: $38 $80

    nop                                           ; $439f: $00
    add [hl]                                      ; $43a0: $86
    nop                                           ; $43a1: $00
    rst $18                                       ; $43a2: $df
    ld d, [hl]                                    ; $43a3: $56
    add b                                         ; $43a4: $80
    ld b, l                                       ; $43a5: $45
    dec l                                         ; $43a6: $2d
    ld c, $60                                     ; $43a7: $0e $60
    ld l, e                                       ; $43a9: $6b
    ld c, b                                       ; $43aa: $48
    add b                                         ; $43ab: $80
    ld b, l                                       ; $43ac: $45
    add c                                         ; $43ad: $81
    ld c, d                                       ; $43ae: $4a
    ld b, b                                       ; $43af: $40
    inc c                                         ; $43b0: $0c
    ld [bc], a                                    ; $43b1: $02
    cp a                                          ; $43b2: $bf
    ld e, d                                       ; $43b3: $5a
    nop                                           ; $43b4: $00
    call z, $8e2d                                 ; $43b5: $cc $2d $8e
    ld b, b                                       ; $43b8: $40
    dec c                                         ; $43b9: $0d
    ld l, e                                       ; $43ba: $6b
    rst $38                                       ; $43bb: $ff
    ldh [rWX], a                                  ; $43bc: $e0 $4b
    ld c, [hl]                                    ; $43be: $4e
    ld bc, $0cc1                                  ; $43bf: $01 $c1 $0c
    ld [$0252], sp                                ; $43c2: $08 $52 $02
    jr c, jr_065_4445                             ; $43c5: $38 $7e

    pop hl                                        ; $43c7: $e1
    jp nz, $8d24                                  ; $43c8: $c2 $24 $8d

    jr nz, @+$4f                                  ; $43cb: $20 $4d

    inc c                                         ; $43cd: $0c
    nop                                           ; $43ce: $00
    ld [$fc5f], sp                                ; $43cf: $08 $5f $fc
    ret nc                                        ; $43d2: $d0

    inc c                                         ; $43d3: $0c
    pop hl                                        ; $43d4: $e1
    adc d                                         ; $43d5: $8a
    ld h, c                                       ; $43d6: $61
    ret nz                                        ; $43d7: $c0

    db $e3                                        ; $43d8: $e3
    nop                                           ; $43d9: $00
    rst $38                                       ; $43da: $ff
    ld a, h                                       ; $43db: $7c

jr_065_43dc:
    xor h                                         ; $43dc: $ac
    ld d, h                                       ; $43dd: $54
    inc bc                                        ; $43de: $03
    ld b, b                                       ; $43df: $40
    db $fc                                        ; $43e0: $fc
    ld [c], a                                     ; $43e1: $e2
    add b                                         ; $43e2: $80
    push hl                                       ; $43e3: $e5
    add h                                         ; $43e4: $84
    or l                                          ; $43e5: $b5
    inc [hl]                                      ; $43e6: $34
    rlc b                                         ; $43e7: $cb $00
    ld h, [hl]                                    ; $43e9: $66
    halt                                          ; $43ea: $76
    ld h, [hl]                                    ; $43eb: $66
    inc c                                         ; $43ec: $0c
    add d                                         ; $43ed: $82
    ld b, h                                       ; $43ee: $44
    ld [$f102], sp                                ; $43ef: $08 $02 $f1
    cp $17                                        ; $43f2: $fe $17
    db $f4                                        ; $43f4: $f4
    rlca                                          ; $43f5: $07
    inc c                                         ; $43f6: $0c
    inc b                                         ; $43f7: $04
    rst $18                                       ; $43f8: $df
    nop                                           ; $43f9: $00
    ld d, b                                       ; $43fa: $50
    ld [hl], d                                    ; $43fb: $72
    add a                                         ; $43fc: $87
    ret nz                                        ; $43fd: $c0

    pop hl                                        ; $43fe: $e1
    nop                                           ; $43ff: $00
    inc b                                         ; $4400: $04

Call_065_4401:
    rst $38                                       ; $4401: $ff
    or $37                                        ; $4402: $f6 $37
    add b                                         ; $4404: $80
    ei                                            ; $4405: $fb
    nop                                           ; $4406: $00
    nop                                           ; $4407: $00
    nop                                           ; $4408: $00
    call $ffa0                                    ; $4409: $cd $a0 $ff
    xor $d8                                       ; $440c: $ee $d8
    reti                                          ; $440e: $d9


    db $fc                                        ; $440f: $fc
    db $eb                                        ; $4410: $eb
    sbc $e0                                       ; $4411: $de $e0
    call c, $bddd                                 ; $4413: $dc $dd $bd
    sbc $fc                                       ; $4416: $de $fc
    push af                                       ; $4418: $f5
    sub $d7                                       ; $4419: $d6 $d7
    and b                                         ; $441b: $a0
    and b                                         ; $441c: $a0
    db $fc                                        ; $441d: $fc
    db $eb                                        ; $441e: $eb
    jp c, $dbe7                                   ; $441f: $da $e7 $db

    ret nc                                        ; $4422: $d0

    pop de                                        ; $4423: $d1
    db $fc                                        ; $4424: $fc
    rst $20                                       ; $4425: $e7
    ldh [$e1], a                                  ; $4426: $e0 $e1
    rst $18                                       ; $4428: $df
    ldh [$e1], a                                  ; $4429: $e0 $e1
    ld sp, $fce2                                  ; $442b: $31 $e2 $fc
    push af                                       ; $442e: $f5
    sub d                                         ; $442f: $92
    db $ed                                        ; $4430: $ed
    add d                                         ; $4431: $82
    pop hl                                        ; $4432: $e1
    jp nc, $fcd3                                  ; $4433: $d2 $d3 $fc

    rst $20                                       ; $4436: $e7
    ld [hl], d                                    ; $4437: $72
    pop hl                                        ; $4438: $e1
    adc a                                         ; $4439: $8f
    db $e3                                        ; $443a: $e3
    db $e4                                        ; $443b: $e4

Jump_065_443c:
    push hl                                       ; $443c: $e5
    and $fc                                       ; $443d: $e6 $fc
    push af                                       ; $443f: $f5
    sbc [hl]                                      ; $4440: $9e
    pop hl                                        ; $4441: $e1
    db $fc                                        ; $4442: $fc
    db $eb                                        ; $4443: $eb
    ret nc                                        ; $4444: $d0

jr_065_4445:
    sbc a                                         ; $4445: $9f
    pop de                                        ; $4446: $d1
    call nc, $a0d5                                ; $4447: $d4 $d5 $a0
    and b                                         ; $444a: $a0
    db $fc                                        ; $444b: $fc
    db $e3                                        ; $444c: $e3
    ld a, [hl]                                    ; $444d: $7e
    db $e3                                        ; $444e: $e3
    rst $20                                       ; $444f: $e7
    rlca                                          ; $4450: $07
    add sp, -$17                                  ; $4451: $e8 $e9
    ld [$f5fc], a                                 ; $4453: $ea $fc $f5
    add d                                         ; $4456: $82
    di                                            ; $4457: $f3
    ld [$7ec5], a                                 ; $4458: $ea $c5 $7e
    push hl                                       ; $445b: $e5
    cp $d7                                        ; $445c: $fe $d7
    ld l, $82                                     ; $445e: $2e $82
    di                                            ; $4460: $f3
    and b                                         ; $4461: $a0
    sbc a                                         ; $4462: $9f
    sbc l                                         ; $4463: $9d
    rst $38                                       ; $4464: $ff
    ldh [$9f], a                                  ; $4465: $e0 $9f
    ld a, [hl]                                    ; $4467: $7e
    and $fe                                       ; $4468: $e6 $fe
    rst $10                                       ; $446a: $d7
    cp $82                                        ; $446b: $fe $82
    ld a, [c]                                     ; $446d: $f2
    sbc a                                         ; $446e: $9f
    and d                                         ; $446f: $a2
    sbc h                                         ; $4470: $9c
    xor [hl]                                      ; $4471: $ae
    ld b, [hl]                                    ; $4472: $46
    ld b, [hl]                                    ; $4473: $46
    xor [hl]                                      ; $4474: $ae
    di                                            ; $4475: $f3
    sbc h                                         ; $4476: $9c
    sbc a                                         ; $4477: $9f
    db $fc                                        ; $4478: $fc
    push bc                                       ; $4479: $c5
    cp $d7                                        ; $447a: $fe $d7
    jp c, $a0db                                   ; $447c: $da $db $a0

    and b                                         ; $447f: $a0
    db $fc                                        ; $4480: $fc
    db $fc                                        ; $4481: $fc
    rst $20                                       ; $4482: $e7
    inc b                                         ; $4483: $04
    db $e3                                        ; $4484: $e3
    sbc a                                         ; $4485: $9f
    sbc h                                         ; $4486: $9c
    ld b, [hl]                                    ; $4487: $46
    ld b, [hl]                                    ; $4488: $46
    xor a                                         ; $4489: $af
    xor [hl]                                      ; $448a: $ae
    rlca                                          ; $448b: $07
    ld b, [hl]                                    ; $448c: $46
    xor a                                         ; $448d: $af
    ld b, [hl]                                    ; $448e: $46
    cp a                                          ; $448f: $bf
    ldh [$fc], a                                  ; $4490: $e0 $fc
    jp $d7fe                                      ; $4492: $c3 $fe $d7


    nop                                           ; $4495: $00
    pop bc                                        ; $4496: $c1
    ld d, e                                       ; $4497: $53
    db $e4                                        ; $4498: $e4
    xor h                                         ; $4499: $ac
    db $10                                        ; $449a: $10
    db $e3                                        ; $449b: $e3
    ld b, [hl]                                    ; $449c: $46
    ldh [$9c], a                                  ; $449d: $e0 $9c
    ld b, [hl]                                    ; $449f: $46
    add d                                         ; $44a0: $82
    ldh [$af], a                                  ; $44a1: $e0 $af
    ld a, a                                       ; $44a3: $7f
    ldh [rDMA], a                                 ; $44a4: $e0 $46
    pop de                                        ; $44a6: $d1
    and c                                         ; $44a7: $a1
    db $fc                                        ; $44a8: $fc
    call nz, $a8da                                ; $44a9: $c4 $da $a8
    db $f4                                        ; $44ac: $f4
    xor h                                         ; $44ad: $ac
    inc de                                        ; $44ae: $13
    rst $38                                       ; $44af: $ff
    ld [c], a                                     ; $44b0: $e2
    rlca                                          ; $44b1: $07
    inc b                                         ; $44b2: $04
    adc c                                         ; $44b3: $89
    inc bc                                        ; $44b4: $03
    ld d, e                                       ; $44b5: $53
    pop hl                                        ; $44b6: $e1
    adc d                                         ; $44b7: $8a
    ret nz                                        ; $44b8: $c0

    sbc a                                         ; $44b9: $9f
    ld b, [hl]                                    ; $44ba: $46
    ld [c], a                                     ; $44bb: $e2
    jp $fee0                                      ; $44bc: $c3 $e0 $fe


    ldh [$af], a                                  ; $44bf: $e0 $af
    jp $9e46                                      ; $44c1: $c3 $46 $9e


    db $ec                                        ; $44c4: $ec
    ld [c], a                                     ; $44c5: $e2
    call c, $f4a9                                 ; $44c6: $dc $a9 $f4
    xor l                                         ; $44c9: $ad
    push de                                       ; $44ca: $d5
    jp nz, Jump_000_039c                          ; $44cb: $c2 $9c $03

    rst $00                                       ; $44ce: $c7
    inc b                                         ; $44cf: $04
    rrca                                          ; $44d0: $0f
    ld [bc], a                                    ; $44d1: $02
    cp a                                          ; $44d2: $bf
    ld [c], a                                     ; $44d3: $e2
    pop bc                                        ; $44d4: $c1
    ldh [$87], a                                  ; $44d5: $e0 $87
    ldh [$af], a                                  ; $44d7: $e0 $af
    ld b, [hl]                                    ; $44d9: $46
    rlca                                          ; $44da: $07
    inc bc                                        ; $44db: $03
    inc b                                         ; $44dc: $04
    rlca                                          ; $44dd: $07
    xor h                                         ; $44de: $ac
    ldh [$3f], a                                  ; $44df: $e0 $3f
    pop hl                                        ; $44e1: $e1
    ld l, [hl]                                    ; $44e2: $6e
    xor h                                         ; $44e3: $ac
    db $f4                                        ; $44e4: $f4
    xor l                                         ; $44e5: $ad
    add d                                         ; $44e6: $82
    and d                                         ; $44e7: $a2
    rst $28                                       ; $44e8: $ef
    sbc a                                         ; $44e9: $9f
    sbc l                                         ; $44ea: $9d
    sbc h                                         ; $44eb: $9c
    ld [bc], a                                    ; $44ec: $02
    cp a                                          ; $44ed: $bf
    ldh [$a2], a                                  ; $44ee: $e0 $a2
    sbc a                                         ; $44f0: $9f
    and b                                         ; $44f1: $a0
    db $fd                                        ; $44f2: $fd
    sbc [hl]                                      ; $44f3: $9e
    ld c, b                                       ; $44f4: $48
    pop hl                                        ; $44f5: $e1
    ld b, [hl]                                    ; $44f6: $46
    ld b, [hl]                                    ; $44f7: $46
    ld [bc], a                                    ; $44f8: $02
    rrca                                          ; $44f9: $0f
    inc b                                         ; $44fa: $04
    inc bc                                        ; $44fb: $03
    add b                                         ; $44fc: $80
    xor h                                         ; $44fd: $ac
    pop hl                                        ; $44fe: $e1
    cp $c1                                        ; $44ff: $fe $c1
    ld a, d                                       ; $4501: $7a

Jump_065_4502:
    and e                                         ; $4502: $a3
    ret c                                         ; $4503: $d8

Call_065_4504:
    and l                                         ; $4504: $a5
    nop                                           ; $4505: $00
    db $d3                                        ; $4506: $d3
    call $cdc0                                    ; $4507: $cd $c0 $cd
    pop hl                                        ; $450a: $e1
    sbc h                                         ; $450b: $9c
    ld a, b                                       ; $450c: $78
    dec b                                         ; $450d: $05
    ldh [$86], a                                  ; $450e: $e0 $86
    ldh [$30], a                                  ; $4510: $e0 $30
    ldh [rSC], a                                  ; $4512: $e0 $02
    ld a, c                                       ; $4514: $79
    ld a, d                                       ; $4515: $7a
    ld a, l                                       ; $4516: $7d
    cp d                                          ; $4517: $ba
    ldh [rP1], a                                  ; $4518: $e0 $00
    cp a                                          ; $451a: $bf
    pop hl                                        ; $451b: $e1
    ld a, d                                       ; $451c: $7a
    and l                                         ; $451d: $a5
    ldh a, [$88]                                  ; $451e: $f0 $88
    xor $88                                       ; $4520: $ee $88
    add d                                         ; $4522: $82
    and e                                         ; $4523: $a3
    adc h                                         ; $4524: $8c
    pop bc                                        ; $4525: $c1
    rst $00                                       ; $4526: $c7
    ld [c], a                                     ; $4527: $e2
    push af                                       ; $4528: $f5
    jp nz, Jump_065_797f                          ; $4529: $c2 $7f $79

    ld a, d                                       ; $452c: $7a
    ld a, e                                       ; $452d: $7b
    ld a, e                                       ; $452e: $7b
    adc a                                         ; $452f: $8f
    ld b, [hl]                                    ; $4530: $46
    ld a, a                                       ; $4531: $7f
    cp a                                          ; $4532: $bf

jr_065_4533:
    pop hl                                        ; $4533: $e1
    rlca                                          ; $4534: $07
    dec b                                         ; $4535: $05
    ld b, [hl]                                    ; $4536: $46
    sbc [hl]                                      ; $4537: $9e
    ld a, d                                       ; $4538: $7a
    and e                                         ; $4539: $a3
    ldh a, [$89]                                  ; $453a: $f0 $89
    ldh a, [$a9]                                  ; $453c: $f0 $a9
    sbc d                                         ; $453e: $9a
    add [hl]                                      ; $453f: $86
    adc $a2                                       ; $4540: $ce $a2
    cp $85                                        ; $4542: $fe $85
    ret nz                                        ; $4544: $c0

    ld b, [hl]                                    ; $4545: $46
    ld b, [hl]                                    ; $4546: $46
    ld a, c                                       ; $4547: $79
    ld a, [hl]                                    ; $4548: $7e
    cp l                                          ; $4549: $bd
    inc l                                         ; $454a: $2c
    jr nz, jr_065_4584                            ; $454b: $20 $37

    ld a, [hl+]                                   ; $454d: $2a
    ld b, e                                       ; $454e: $43
    ld b, l                                       ; $454f: $45
    cp a                                          ; $4550: $bf
    ldh [rTMA], a                                 ; $4551: $e0 $06
    ld b, $3c                                     ; $4553: $06 $3c
    pop bc                                        ; $4555: $c1
    ldh a, [$8d]                                  ; $4556: $f0 $8d
    ldh a, [$f0]                                  ; $4558: $f0 $f0
    xor c                                         ; $455a: $a9
    nop                                           ; $455b: $00
    and l                                         ; $455c: $a5
    ld a, d                                       ; $455d: $7a
    add e                                         ; $455e: $83
    nop                                           ; $455f: $00
    ldh [$ae], a                                  ; $4560: $e0 $ae
    ld b, [hl]                                    ; $4562: $46
    add b                                         ; $4563: $80
    ld b, l                                       ; $4564: $45
    cp $c0                                        ; $4565: $fe $c0
    ldh [$27], a                                  ; $4567: $e0 $27
    dec sp                                        ; $4569: $3b
    jr c, jr_065_45a3                             ; $456a: $38 $37

    add c                                         ; $456c: $81
    ld b, l                                       ; $456d: $45
    dec b                                         ; $456e: $05
    pop hl                                        ; $456f: $e1
    ld [$a1ba], sp                                ; $4570: $08 $ba $a1
    ldh a, [$8d]                                  ; $4573: $f0 $8d
    ldh a, [$a9]                                  ; $4575: $f0 $a9
    inc d                                         ; $4577: $14
    adc h                                         ; $4578: $8c
    sbc [hl]                                      ; $4579: $9e
    xor [hl]                                      ; $457a: $ae
    xor a                                         ; $457b: $af
    rst $38                                       ; $457c: $ff
    xor [hl]                                      ; $457d: $ae
    add b                                         ; $457e: $80
    ld d, c                                       ; $457f: $51
    ld e, a                                       ; $4580: $5f
    ld d, d                                       ; $4581: $52
    ld a, [hl+]                                   ; $4582: $2a
    ld a, [hl+]                                   ; $4583: $2a

jr_065_4584:
    dec [hl]                                      ; $4584: $35
    rst $38                                       ; $4585: $ff
    dec [hl]                                      ; $4586: $35
    dec [hl]                                      ; $4587: $35
    ld l, d                                       ; $4588: $6a
    ld [hl], $45                                  ; $4589: $36 $45
    ld [$af05], sp                                ; $458b: $08 $05 $af
    ret nz                                        ; $458e: $c0

    ld a, c                                       ; $458f: $79
    and d                                         ; $4590: $a2
    jr nc, jr_065_4533                            ; $4591: $30 $a0

    rst $18                                       ; $4593: $df
    and c                                         ; $4594: $a1
    ld l, [hl]                                    ; $4595: $6e
    add h                                         ; $4596: $84
    nop                                           ; $4597: $00
    adc d                                         ; $4598: $8a
    add [hl]                                      ; $4599: $86
    adc c                                         ; $459a: $89
    and b                                         ; $459b: $a0
    sbc [hl]                                      ; $459c: $9e
    rst $38                                       ; $459d: $ff
    xor a                                         ; $459e: $af
    xor [hl]                                      ; $459f: $ae

Call_065_45a0:
    xor a                                         ; $45a0: $af
    add d                                         ; $45a1: $82
    add e                                         ; $45a2: $83

jr_065_45a3:
    ld d, d                                       ; $45a3: $52
    ld h, c                                       ; $45a4: $61
    ld e, l                                       ; $45a5: $5d
    ld a, a                                       ; $45a6: $7f
    ld d, [hl]                                    ; $45a7: $56
    ld a, [hl-]                                   ; $45a8: $3a
    dec [hl]                                      ; $45a9: $35
    ld l, h                                       ; $45aa: $6c
    ld l, l                                       ; $45ab: $6d
    dec [hl]                                      ; $45ac: $35
    add hl, sp                                    ; $45ad: $39
    ccf                                           ; $45ae: $3f
    ldh [rNR34], a                                ; $45af: $e0 $1e
    ld a, c                                       ; $45b1: $79
    and b                                         ; $45b2: $a0
    and d                                         ; $45b3: $a2
    sbc l                                         ; $45b4: $9d
    sbc h                                         ; $45b5: $9c
    xor [hl]                                      ; $45b6: $ae
    ld [hl-], a                                   ; $45b7: $32
    and d                                         ; $45b8: $a2
    ld l, [hl]                                    ; $45b9: $6e
    add e                                         ; $45ba: $83
    nop                                           ; $45bb: $00
    sub l                                         ; $45bc: $95
    cp $82                                        ; $45bd: $fe $82
    and c                                         ; $45bf: $a1
    sbc h                                         ; $45c0: $9c
    xor a                                         ; $45c1: $af
    ld b, [hl]                                    ; $45c2: $46
    add l                                         ; $45c3: $85

Call_065_45c4:
    add [hl]                                      ; $45c4: $86
    add e                                         ; $45c5: $83
    ld e, e                                       ; $45c6: $5b
    rst $38                                       ; $45c7: $ff
    ld d, e                                       ; $45c8: $53
    ld d, e                                       ; $45c9: $53
    add hl, sp                                    ; $45ca: $39
    ld l, h                                       ; $45cb: $6c
    ld l, a                                       ; $45cc: $6f
    ld l, [hl]                                    ; $45cd: $6e
    dec [hl]                                      ; $45ce: $35
    add hl, sp                                    ; $45cf: $39
    inc b                                         ; $45d0: $04
    ccf                                           ; $45d1: $3f
    ldh [$b5], a                                  ; $45d2: $e0 $b5
    and b                                         ; $45d4: $a0
    xor [hl]                                      ; $45d5: $ae
    xor [hl]                                      ; $45d6: $ae
    and b                                         ; $45d7: $a0
    ld a, b                                       ; $45d8: $78
    db $e3                                        ; $45d9: $e3
    db $e4                                        ; $45da: $e4
    ld h, d                                       ; $45db: $62
    nop                                           ; $45dc: $00
    adc e                                         ; $45dd: $8b
    nop                                           ; $45de: $00
    and l                                         ; $45df: $a5
    db $e3                                        ; $45e0: $e3

Jump_065_45e1:
    sub $d7                                       ; $45e1: $d6 $d7
    db $10                                        ; $45e3: $10
    add c                                         ; $45e4: $81
    inc b                                         ; $45e5: $04
    and c                                         ; $45e6: $a1
    cp a                                          ; $45e7: $bf
    ldh [rDMA], a                                 ; $45e8: $e0 $46
    add e                                         ; $45ea: $83
    adc b                                         ; $45eb: $88
    ld a, a                                       ; $45ec: $7f
    ld [hl], b                                    ; $45ed: $70
    ld l, [hl]                                    ; $45ee: $6e
    dec [hl]                                      ; $45ef: $35
    ld a, [hl-]                                   ; $45f0: $3a
    ld c, e                                       ; $45f1: $4b
    ld d, l                                       ; $45f2: $55
    ld de, $a277                                  ; $45f3: $11 $77 $a2
    add b                                         ; $45f6: $80
    ld a, [hl+]                                   ; $45f7: $2a
    ldh [$f1], a                                  ; $45f8: $e0 $f1
    add e                                         ; $45fa: $83
    ld [hl], d                                    ; $45fb: $72
    and d                                         ; $45fc: $a2
    ldh a, [rBCPD]                                ; $45fd: $f0 $69
    ld h, $67                                     ; $45ff: $26 $67
    ld a, [hl]                                    ; $4601: $7e
    push hl                                       ; $4602: $e5
    nop                                           ; $4603: $00
    and b                                         ; $4604: $a0
    add l                                         ; $4605: $85
    ccf                                           ; $4606: $3f
    add a                                         ; $4607: $87
    adc b                                         ; $4608: $88
    add a                                         ; $4609: $87
    add l                                         ; $460a: $85
    ld [hl], $35                                  ; $460b: $36 $35
    ret nz                                        ; $460d: $c0

    push hl                                       ; $460e: $e5
    or l                                          ; $460f: $b5
    add c                                         ; $4610: $81
    ret nz                                        ; $4611: $c0

    or b                                          ; $4612: $b0
    add b                                         ; $4613: $80
    ld l, a                                       ; $4614: $6f
    add e                                         ; $4615: $83
    ldh a, [$6c]                                  ; $4616: $f0 $6c
    ld h, $67                                     ; $4618: $26 $67
    ld a, [hl]                                    ; $461a: $7e
    push hl                                       ; $461b: $e5
    add b                                         ; $461c: $80
    add e                                         ; $461d: $83
    ld b, [hl]                                    ; $461e: $46
    ld b, [hl]                                    ; $461f: $46
    rra                                           ; $4620: $1f
    ld b, l                                       ; $4621: $45
    ld a, [hl-]                                   ; $4622: $3a
    dec [hl]                                      ; $4623: $35
    dec [hl]                                      ; $4624: $35
    jr c, jr_065_46a6                             ; $4625: $38 $7f

    pop bc                                        ; $4627: $c1
    ld l, l                                       ; $4628: $6d
    and d                                         ; $4629: $a2
    ld a, [hl]                                    ; $462a: $7e
    db $e3                                        ; $462b: $e3
    pop bc                                        ; $462c: $c1
    sbc [hl]                                      ; $462d: $9e
    ld [hl], d                                    ; $462e: $72
    and h                                         ; $462f: $a4

jr_065_4630:
    xor $47                                       ; $4630: $ee $47
    ld [hl], $a9                                  ; $4632: $36 $a9
    nop                                           ; $4634: $00
    add a                                         ; $4635: $87
    push af                                       ; $4636: $f5
    and d                                         ; $4637: $a2
    add hl, sp                                    ; $4638: $39
    dec [hl]                                      ; $4639: $35
    ld h, e                                       ; $463a: $63
    dec [hl]                                      ; $463b: $35
    ld [hl], $c0                                  ; $463c: $36 $c0
    jp nz, $e3c1                                  ; $463e: $c2 $c1 $e3

    ld l, $80                                     ; $4641: $2e $80
    xor [hl]                                      ; $4643: $ae
    and c                                         ; $4644: $a1
    ldh a, [$6e]                                  ; $4645: $f0 $6e
    ld a, b                                       ; $4647: $78
    ld [hl], $69                                  ; $4648: $36 $69
    ld a, [hl]                                    ; $464a: $7e
    rst $20                                       ; $464b: $e7
    ld a, d                                       ; $464c: $7a
    pop hl                                        ; $464d: $e1
    sbc [hl]                                      ; $464e: $9e
    xor [hl]                                      ; $464f: $ae
    ld [hl], $36                                  ; $4650: $36 $36
    ld a, a                                       ; $4652: $7f
    and b                                         ; $4653: $a0
    ld de, $3845                                  ; $4654: $11 $45 $38
    add c                                         ; $4657: $81
    cp $c1                                        ; $4658: $fe $c1
    ld a, [$9ec1]                                 ; $465a: $fa $c1 $9e
    ld [hl], d                                    ; $465d: $72
    add d                                         ; $465e: $82
    nop                                           ; $465f: $00

Jump_065_4660:
    jp z, $4924                                   ; $4660: $ca $24 $49

    xor $82                                       ; $4663: $ee $82
    ld c, d                                       ; $4665: $4a
    sbc [hl]                                      ; $4666: $9e
    xor a                                         ; $4667: $af
    ld b, l                                       ; $4668: $45
    xor e                                         ; $4669: $ab
    add b                                         ; $466a: $80
    ld a, [hl-]                                   ; $466b: $3a
    ld [hl], $43                                  ; $466c: $36 $43
    dec b                                         ; $466e: $05
    ld b, l                                       ; $466f: $45
    inc b                                         ; $4670: $04
    pop hl                                        ; $4671: $e1
    xor a                                         ; $4672: $af
    ld a, [$00c1]                                 ; $4673: $fa $c1 $00
    push hl                                       ; $4676: $e5
    ldh a, [$28]                                  ; $4677: $f0 $28
    inc h                                         ; $4679: $24
    ld c, c                                       ; $467a: $49
    halt                                          ; $467b: $76
    ld b, e                                       ; $467c: $43
    ret c                                         ; $467d: $d8

    adc d                                         ; $467e: $8a
    ld b, c                                       ; $467f: $41
    ld a, [hl]                                    ; $4680: $7e
    ld b, b                                       ; $4681: $40
    rst $28                                       ; $4682: $ef
    add c                                         ; $4683: $81
    rrca                                          ; $4684: $0f
    ld [bc], a                                    ; $4685: $02
    cp e                                          ; $4686: $bb
    ret nz                                        ; $4687: $c0

    ld c, a                                       ; $4688: $4f
    ld d, d                                       ; $4689: $52
    add c                                         ; $468a: $81
    ld b, l                                       ; $468b: $45
    or h                                          ; $468c: $b4
    ld h, d                                       ; $468d: $62
    add b                                         ; $468e: $80
    jp $cd00                                      ; $468f: $c3 $00 $cd


    inc h                                         ; $4692: $24
    ld c, c                                       ; $4693: $49
    nop                                           ; $4694: $00
    ld c, c                                       ; $4695: $49
    ld l, a                                       ; $4696: $6f
    add e                                         ; $4697: $83
    ld a, c                                       ; $4698: $79
    ccf                                           ; $4699: $3f
    ld h, e                                       ; $469a: $63
    ld h, [hl]                                    ; $469b: $66
    inc a                                         ; $469c: $3c
    ld c, d                                       ; $469d: $4a
    ld h, c                                       ; $469e: $61
    ld e, h                                       ; $469f: $5c
    inc a                                         ; $46a0: $3c
    ldh [$ae], a                                  ; $46a1: $e0 $ae
    ld h, c                                       ; $46a3: $61
    and b                                         ; $46a4: $a0
    or d                                          ; $46a5: $b2

jr_065_46a6:
    ld h, c                                       ; $46a6: $61
    nop                                           ; $46a7: $00
    call $4924                                    ; $46a8: $cd $24 $49
    nop                                           ; $46ab: $00
    ld c, b                                       ; $46ac: $48
    jr nc, jr_065_4630                            ; $46ad: $30 $81

    ld [bc], a                                    ; $46af: $02
    or [hl]                                       ; $46b0: $b6
    add b                                         ; $46b1: $80
    ld [hl], $1f                                  ; $46b2: $36 $1f
    ld l, b                                       ; $46b4: $68
    ld h, [hl]                                    ; $46b5: $66
    jr c, jr_065_46f5                             ; $46b6: $38 $3d

    jr c, @+$3e                                   ; $46b8: $38 $3c

    ldh [$ba], a                                  ; $46ba: $e0 $ba
    and c                                         ; $46bc: $a1
    add d                                         ; $46bd: $82
    pop bc                                        ; $46be: $c1
    ld hl, sp+$00                                 ; $46bf: $f8 $00

Call_065_46c1:
    rst $10                                       ; $46c1: $d7
    db $fc                                        ; $46c2: $fc
    xor b                                         ; $46c3: $a8
    pop bc                                        ; $46c4: $c1
    db $e3                                        ; $46c5: $e3
    ld a, c                                       ; $46c6: $79
    ld a, d                                       ; $46c7: $7a
    adc a                                         ; $46c8: $8f
    ld b, [hl]                                    ; $46c9: $46
    xor [hl]                                      ; $46ca: $ae
    daa                                           ; $46cb: $27
    ld a, [hl-]                                   ; $46cc: $3a
    ld l, b                                       ; $46cd: $68
    ld h, [hl]                                    ; $46ce: $66
    ld hl, sp-$5e                                 ; $46cf: $f8 $a2
    dec hl                                        ; $46d1: $2b
    ld h, c                                       ; $46d2: $61

Jump_065_46d3:
    sbc [hl]                                      ; $46d3: $9e
    ldh a, [$30]                                  ; $46d4: $f0 $30
    ld h, $2b                                     ; $46d6: $26 $2b
    call nc, $a37a                                ; $46d8: $d4 $7a $a3
    ld a, a                                       ; $46db: $7f
    ld b, b                                       ; $46dc: $40
    dec b                                         ; $46dd: $05
    pop bc                                        ; $46de: $c1
    ldh [$7e], a                                  ; $46df: $e0 $7e
    rst $30                                       ; $46e1: $f7

Jump_065_46e2:
    ld b, c                                       ; $46e2: $41

Jump_065_46e3:
    add hl, sp                                    ; $46e3: $39
    dec [hl]                                      ; $46e4: $35
    dec b                                         ; $46e5: $05
    ld l, d                                       ; $46e6: $6a
    cp b                                          ; $46e7: $b8
    and c                                         ; $46e8: $a1
    ld e, d                                       ; $46e9: $5a
    ld a, [c]                                     ; $46ea: $f2
    ld b, e                                       ; $46eb: $43
    add d                                         ; $46ec: $82
    jp $d300                                      ; $46ed: $c3 $00 $d3


    db $fc                                        ; $46f0: $fc
    and a                                         ; $46f1: $a7
    ld a, [hl-]                                   ; $46f2: $3a
    ld h, b                                       ; $46f3: $60
    ld [hl], e                                    ; $46f4: $73

jr_065_46f5:
    ld b, $06                                     ; $46f5: $06 $06
    pop bc                                        ; $46f7: $c1
    ldh [$3d], a                                  ; $46f8: $e0 $3d
    ld b, b                                       ; $46fa: $40
    xor [hl]                                      ; $46fb: $ae
    xor [hl]                                      ; $46fc: $ae
    inc a                                         ; $46fd: $3c
    ret nz                                        ; $46fe: $c0

Jump_065_46ff:
    ldh [rTAC], a                                 ; $46ff: $e0 $07
    dec [hl]                                      ; $4701: $35
    jr c, jr_065_4748                             ; $4702: $38 $44

    xor a                                         ; $4704: $af
    ld b, b                                       ; $4705: $40
    add d                                         ; $4706: $82
    and [hl]                                      ; $4707: $a6
    nop                                           ; $4708: $00
    db $d3                                        ; $4709: $d3
    db $fc                                        ; $470a: $fc
    and l                                         ; $470b: $a5
    ld a, d                                       ; $470c: $7a
    add c                                         ; $470d: $81
    xor a                                         ; $470e: $af
    ld b, [hl]                                    ; $470f: $46
    ld [$8005], sp                                ; $4710: $08 $05 $80
    adc l                                         ; $4713: $8d
    and e                                         ; $4714: $a3
    xor a                                         ; $4715: $af
    add b                                         ; $4716: $80
    pop hl                                        ; $4717: $e1
    dec [hl]                                      ; $4718: $35
    add e                                         ; $4719: $83
    inc a                                         ; $471a: $3c
    ld b, h                                       ; $471b: $44
    cp l                                          ; $471c: $bd
    add b                                         ; $471d: $80
    ld [hl], e                                    ; $471e: $73
    ld b, b                                       ; $471f: $40

Call_065_4720:
    nop                                           ; $4720: $00
    sub b                                         ; $4721: $90
    inc h                                         ; $4722: $24
    dec c                                         ; $4723: $0d
    add d                                         ; $4724: $82
    ld bc, $5fa1                                  ; $4725: $01 $a1 $5f
    ld b, [hl]                                    ; $4728: $46
    ld de, $8246                                  ; $4729: $11 $46 $82
    add e                                         ; $472c: $83
    jp z, $ae81                                   ; $472d: $ca $81 $ae

    ld b, b                                       ; $4730: $40
    ld [c], a                                     ; $4731: $e2
    dec bc                                        ; $4732: $0b
    dec [hl]                                      ; $4733: $35
    ld a, [hl-]                                   ; $4734: $3a
    db $fc                                        ; $4735: $fc
    and b                                         ; $4736: $a0
    xor a                                         ; $4737: $af
    di                                            ; $4738: $f3
    jr nz, jr_065_473b                            ; $4739: $20 $00

jr_065_473b:
    adc a                                         ; $473b: $8f

Jump_065_473c:
    inc h                                         ; $473c: $24
    dec c                                         ; $473d: $0d
    nop                                           ; $473e: $00
    ld [c], a                                     ; $473f: $e2
    ret c                                         ; $4740: $d8

    add b                                         ; $4741: $80
    pop hl                                        ; $4742: $e1
    ld a, [hl-]                                   ; $4743: $3a
    add b                                         ; $4744: $80
    db $f4                                        ; $4745: $f4
    ld h, b                                       ; $4746: $60
    xor a                                         ; $4747: $af

jr_065_4748:
    ld a, [hl-]                                   ; $4748: $3a
    ld a, [$3560]                                 ; $4749: $fa $60 $35
    dec [hl]                                      ; $474c: $35
    dec c                                         ; $474d: $0d
    add hl, sp                                    ; $474e: $39
    db $ed                                        ; $474f: $ed
    jr nz, @-$62                                  ; $4750: $20 $9c

    sbc a                                         ; $4752: $9f
    add d                                         ; $4753: $82
    jp $d700                                      ; $4754: $c3 $00 $d7


    db $fc                                        ; $4757: $fc
    and l                                         ; $4758: $a5
    nop                                           ; $4759: $00
    ld [c], a                                     ; $475a: $e2
    xor $f9                                       ; $475b: $ee $f9
    ld h, c                                       ; $475d: $61
    xor a                                         ; $475e: $af
    ld b, [hl]                                    ; $475f: $46
    ld b, b                                       ; $4760: $40
    ld a, [$3861]                                 ; $4761: $fa $61 $38
    scf                                           ; $4764: $37
    ld b, l                                       ; $4765: $45
    ld b, b                                       ; $4766: $40
    add h                                         ; $4767: $84
    and d                                         ; $4768: $a2
    nop                                           ; $4769: $00
    ld h, l                                       ; $476a: $65
    nop                                           ; $476b: $00
    push de                                       ; $476c: $d5
    db $fc                                        ; $476d: $fc
    and e                                         ; $476e: $a3
    ld a, d                                       ; $476f: $7a
    ld h, b                                       ; $4770: $60
    add b                                         ; $4771: $80
    jp nz, Jump_000_3a46                          ; $4772: $c2 $46 $3a

    add b                                         ; $4775: $80
    ld h, l                                       ; $4776: $65
    adc b                                         ; $4777: $88
    ld a, [$3661]                                 ; $4778: $fa $61 $36
    inc bc                                        ; $477b: $03
    pop bc                                        ; $477c: $c1
    add d                                         ; $477d: $82
    rst $20                                       ; $477e: $e7
    and b                                         ; $477f: $a0
    and b                                         ; $4780: $a0
    nop                                           ; $4781: $00
    rst $10                                       ; $4782: $d7
    sub h                                         ; $4783: $94
    db $fc                                        ; $4784: $fc
    inc b                                         ; $4785: $04
    pop af                                        ; $4786: $f1
    ld [hl+], a                                   ; $4787: $22
    dec b                                         ; $4788: $05
    ld a, l                                       ; $4789: $7d
    nop                                           ; $478a: $00
    ld b, l                                       ; $478b: $45
    ei                                            ; $478c: $fb
    ld h, b                                       ; $478d: $60
    ld b, e                                       ; $478e: $43
    ldh [rDMA], a                                 ; $478f: $e0 $46
    pop bc                                        ; $4791: $c1
    sbc h                                         ; $4792: $9c
    inc [hl]                                      ; $4793: $34
    nop                                           ; $4794: $00
    inc b                                         ; $4795: $04
    rst $08                                       ; $4796: $cf
    nop                                           ; $4797: $00
    rst $08                                       ; $4798: $cf
    ld a, d                                       ; $4799: $7a
    ld b, c                                       ; $479a: $41
    db $fc                                        ; $479b: $fc
    ld h, d                                       ; $479c: $62
    sbc a                                         ; $479d: $9f
    sbc h                                         ; $479e: $9c
    inc bc                                        ; $479f: $03

Call_065_47a0:
    ld b, $06                                     ; $47a0: $06 $06
    cp [hl]                                       ; $47a2: $be
    nop                                           ; $47a3: $00
    dec a                                         ; $47a4: $3d
    add b                                         ; $47a5: $80
    jp Jump_065_7ac1                              ; $47a6: $c3 $c1 $7a


    ld [hl+], a                                   ; $47a9: $22
    inc b                                         ; $47aa: $04
    rst $08                                       ; $47ab: $cf
    nop                                           ; $47ac: $00
    push de                                       ; $47ad: $d5
    nop                                           ; $47ae: $00
    add d                                         ; $47af: $82
    add d                                         ; $47b0: $82
    ld b, $61                                     ; $47b1: $06 $61
    cp l                                          ; $47b3: $bd
    ld h, c                                       ; $47b4: $61
    add e                                         ; $47b5: $83
    pop bc                                        ; $47b6: $c1
    cp c                                          ; $47b7: $b9
    nop                                           ; $47b8: $00
    inc b                                         ; $47b9: $04
    ld d, c                                       ; $47ba: $51
    nop                                           ; $47bb: $00
    rst $08                                       ; $47bc: $cf
    ld a, [hl]                                    ; $47bd: $7e
    add l                                         ; $47be: $85
    cp [hl]                                       ; $47bf: $be
    rst $30                                       ; $47c0: $f7
    ld hl, $4611                                  ; $47c1: $21 $11 $46
    xor [hl]                                      ; $47c4: $ae
    ld b, h                                       ; $47c5: $44
    inc a                                         ; $47c6: $3c
    add b                                         ; $47c7: $80
    pop hl                                        ; $47c8: $e1
    add hl, sp                                    ; $47c9: $39
    nop                                           ; $47ca: $00
    ld a, c                                       ; $47cb: $79
    ld bc, $e504                                  ; $47cc: $01 $04 $e5
    inc b                                         ; $47cf: $04
    ld c, c                                       ; $47d0: $49
    nop                                           ; $47d1: $00
    sub e                                         ; $47d2: $93
    inc e                                         ; $47d3: $1c
    inc hl                                        ; $47d4: $23
    add b                                         ; $47d5: $80
    pop hl                                        ; $47d6: $e1
    ld b, e                                       ; $47d7: $43
    and b                                         ; $47d8: $a0
    dec a                                         ; $47d9: $3d
    ld h, b                                       ; $47da: $60
    nop                                           ; $47db: $00
    add e                                         ; $47dc: $83
    ret nz                                        ; $47dd: $c0

    ld b, $c0                                     ; $47de: $06 $c0
    ld [$004d], sp                                ; $47e0: $08 $4d $00
    sub a                                         ; $47e3: $97
    ld a, [hl]                                    ; $47e4: $7e
    call nz, $2045                                ; $47e5: $c4 $45 $20
    cp $41                                        ; $47e8: $fe $41
    add [hl]                                      ; $47ea: $86
    and d                                         ; $47eb: $a2
    nop                                           ; $47ec: $00
    ld a, d                                       ; $47ed: $7a
    inc b                                         ; $47ee: $04
    call nc, Call_000_00ad                        ; $47ef: $d4 $ad $00
    sbc b                                         ; $47f2: $98
    ld a, $a1                                     ; $47f3: $3e $a1
    jp nz, $86c2                                  ; $47f5: $c2 $c2 $86

    and b                                         ; $47f8: $a0
    add h                                         ; $47f9: $84
    ld b, b                                       ; $47fa: $40
    add [hl]                                      ; $47fb: $86
    add e                                         ; $47fc: $83
    db $10                                        ; $47fd: $10
    call nc, Call_000_00ad                        ; $47fe: $d4 $ad $00
    sub a                                         ; $4801: $97
    ld a, [$0720]                                 ; $4802: $fa $20 $07
    ld b, b                                       ; $4805: $40
    ld a, $43                                     ; $4806: $3e $43
    jp Jump_065_4005                              ; $4808: $c3 $05 $40


    ld [$f063], sp                                ; $480b: $08 $63 $f0
    call nc, Call_000_00ad                        ; $480e: $d4 $ad $00
    adc h                                         ; $4811: $8c
    inc h                                         ; $4812: $24
    ld b, h                                       ; $4813: $44
    ld a, d                                       ; $4814: $7a
    ld [hl+], a                                   ; $4815: $22
    xor [hl]                                      ; $4816: $ae
    ld b, [hl]                                    ; $4817: $46
    ld [$1602], sp                                ; $4818: $08 $02 $16
    ret nz                                        ; $481b: $c0

    ldh [$36], a                                  ; $481c: $e0 $36
    ccf                                           ; $481e: $3f
    add l                                         ; $481f: $85
    ld hl, $86ae                                  ; $4820: $21 $ae $86
    ld h, d                                       ; $4823: $62
    inc b                                         ; $4824: $04
    rst $08                                       ; $4825: $cf
    nop                                           ; $4826: $00
    adc e                                         ; $4827: $8b
    inc l                                         ; $4828: $2c
    ld a, [hl]                                    ; $4829: $7e
    ld bc, $e682                                  ; $482a: $01 $82 $e6
    xor a                                         ; $482d: $af
    ld b, [hl]                                    ; $482e: $46
    cp a                                          ; $482f: $bf
    ld h, b                                       ; $4830: $60
    add hl, sp                                    ; $4831: $39
    add [hl]                                      ; $4832: $86
    and b                                         ; $4833: $a0
    add l                                         ; $4834: $85
    ld hl, $0830                                  ; $4835: $21 $30 $08
    ld d, c                                       ; $4838: $51
    nop                                           ; $4839: $00
    ld e, b                                       ; $483a: $58
    pop bc                                        ; $483b: $c1
    inc hl                                        ; $483c: $23
    cp a                                          ; $483d: $bf
    ldh [rDIV], a                                 ; $483e: $e0 $04
    inc bc                                        ; $4840: $03
    ld b, h                                       ; $4841: $44
    inc hl                                        ; $4842: $23
    ld b, $61                                     ; $4843: $06 $61
    ld [$4d08], sp                                ; $4845: $08 $08 $4d
    nop                                           ; $4848: $00
    ld d, e                                       ; $4849: $53
    add [hl]                                      ; $484a: $86
    ld b, d                                       ; $484b: $42
    and c                                         ; $484c: $a1
    ld d, l                                       ; $484d: $55
    jr nz, jr_065_485c                            ; $484e: $20 $0c

    ld b, c                                       ; $4850: $41
    add b                                         ; $4851: $80
    ld b, b                                       ; $4852: $40
    cp [hl]                                       ; $4853: $be
    pop hl                                        ; $4854: $e1
    nop                                           ; $4855: $00
    add $43                                       ; $4856: $c6 $43
    add [hl]                                      ; $4858: $86
    inc bc                                        ; $4859: $03
    cp $cf                                        ; $485a: $fe $cf

jr_065_485c:
    inc b                                         ; $485c: $04
    adc [hl]                                      ; $485d: $8e
    rlca                                          ; $485e: $07
    ld b, c                                       ; $485f: $41
    db $10                                        ; $4860: $10
    ld b, d                                       ; $4861: $42
    inc a                                         ; $4862: $3c
    jr nz, jr_065_48a3                            ; $4863: $20 $3e

    ld b, c                                       ; $4865: $41
    ret nz                                        ; $4866: $c0

    add c                                         ; $4867: $81
    ld [bc], a                                    ; $4868: $02
    ld b, [hl]                                    ; $4869: $46
    ld b, c                                       ; $486a: $41
    ld h, [hl]                                    ; $486b: $66
    ld [hl+], a                                   ; $486c: $22
    cp $ce                                        ; $486d: $fe $ce
    inc b                                         ; $486f: $04
    adc [hl]                                      ; $4870: $8e
    add l                                         ; $4871: $85
    and c                                         ; $4872: $a1
    xor a                                         ; $4873: $af
    ld b, l                                       ; $4874: $45
    rla                                           ; $4875: $17
    ld b, e                                       ; $4876: $43
    ld b, c                                       ; $4877: $41
    ld b, e                                       ; $4878: $43
    db $fd                                        ; $4879: $fd
    ldh [rLYC], a                                 ; $487a: $e0 $45
    ld a, [$44c1]                                 ; $487c: $fa $c1 $44
    ld b, d                                       ; $487f: $42
    dec b                                         ; $4880: $05
    ld b, b                                       ; $4881: $40
    and $86                                       ; $4882: $e6 $86
    ld bc, $a0a0                                  ; $4884: $01 $a0 $a0
    nop                                           ; $4887: $00
    db $dd                                        ; $4888: $dd
    jp nz, Jump_065_4502                          ; $4889: $c2 $02 $45

    ld [hl], $3b                                  ; $488c: $36 $3b
    inc bc                                        ; $488e: $03
    dec [hl]                                      ; $488f: $35
    dec sp                                        ; $4890: $3b
    db $fd                                        ; $4891: $fd
    ldh [rDMA], a                                 ; $4892: $e0 $46
    add b                                         ; $4894: $80
    ld a, $20                                     ; $4895: $3e $20
    ld a, [hl]                                    ; $4897: $7e
    ld [c], a                                     ; $4898: $e2
    ld a, l                                       ; $4899: $7d
    and c                                         ; $489a: $a1
    inc b                                         ; $489b: $04
    adc l                                         ; $489c: $8d
    db $fc                                        ; $489d: $fc
    nop                                           ; $489e: $00
    ld c, a                                       ; $489f: $4f
    inc b                                         ; $48a0: $04
    add d                                         ; $48a1: $82
    xor [hl]                                      ; $48a2: $ae

jr_065_48a3:
    ld b, [hl]                                    ; $48a3: $46
    ld b, h                                       ; $48a4: $44
    inc a                                         ; $48a5: $3c
    and h                                         ; $48a6: $a4
    ld h, h                                       ; $48a7: $64
    ld [bc], a                                    ; $48a8: $02
    rst $38                                       ; $48a9: $ff
    ldh [$a5], a                                  ; $48aa: $e0 $a5
    add hl, bc                                    ; $48ac: $09
    ld h, c                                       ; $48ad: $61
    or [hl]                                       ; $48ae: $b6
    ld h, b                                       ; $48af: $60

jr_065_48b0:
    add e                                         ; $48b0: $83
    ld h, d                                       ; $48b1: $62
    add [hl]                                      ; $48b2: $86
    ld [bc], a                                    ; $48b3: $02
    inc b                                         ; $48b4: $04
    adc e                                         ; $48b5: $8b
    nop                                           ; $48b6: $00
    rst $08                                       ; $48b7: $cf
    db $fc                                        ; $48b8: $fc
    add [hl]                                      ; $48b9: $86
    and c                                         ; $48ba: $a1
    ret                                           ; $48bb: $c9


    ld b, b                                       ; $48bc: $40
    ld b, d                                       ; $48bd: $42

jr_065_48be:
    dec [hl]                                      ; $48be: $35
    ld l, c                                       ; $48bf: $69
    and e                                         ; $48c0: $a3
    dec [hl]                                      ; $48c1: $35
    dec [hl]                                      ; $48c2: $35
    ccf                                           ; $48c3: $3f
    and e                                         ; $48c4: $a3
    ld l, d                                       ; $48c5: $6a
    dec [hl]                                      ; $48c6: $35
    ld b, d                                       ; $48c7: $42
    xor a                                         ; $48c8: $af
    xor [hl]                                      ; $48c9: $ae
    ld a, b                                       ; $48ca: $78
    add c                                         ; $48cb: $81
    rlca                                          ; $48cc: $07
    ld [hl+], a                                   ; $48cd: $22
    nop                                           ; $48ce: $00
    ld h, [hl]                                    ; $48cf: $66
    ld [bc], a                                    ; $48d0: $02
    nop                                           ; $48d1: $00
    call c, Call_065_6104                         ; $48d2: $dc $04 $61
    sub l                                         ; $48d5: $95
    nop                                           ; $48d6: $00
    ret nz                                        ; $48d7: $c0

    ldh [rTAC], a                                 ; $48d8: $e0 $07
    add c                                         ; $48da: $81
    ret nz                                        ; $48db: $c0

    ldh [$0a], a                                  ; $48dc: $e0 $0a
    jr nz, jr_065_48b0                            ; $48de: $20 $d0

    ld [hl], a                                    ; $48e0: $77
    and b                                         ; $48e1: $a0
    nop                                           ; $48e2: $00
    add [hl]                                      ; $48e3: $86
    nop                                           ; $48e4: $00
    rst $18                                       ; $48e5: $df
    ld b, b                                       ; $48e6: $40
    ldh [$af], a                                  ; $48e7: $e0 $af
    ld b, b                                       ; $48e9: $40
    ldh [rOCPD], a                                ; $48ea: $e0 $6b
    ld [hl], c                                    ; $48ec: $71
    ld d, $ff                                     ; $48ed: $16 $ff
    ldh [$6d], a                                  ; $48ef: $e0 $6d
    inc a                                         ; $48f1: $3c
    add hl, bc                                    ; $48f2: $09
    ld b, c                                       ; $48f3: $41
    ld de, $c682                                  ; $48f4: $11 $82 $c6
    nop                                           ; $48f7: $00
    rst $18                                       ; $48f8: $df
    inc b                                         ; $48f9: $04
    ld b, b                                       ; $48fa: $40
    ld e, $c0                                     ; $48fb: $1e $c0
    res 3, h                                      ; $48fd: $cb $9c
    sbc l                                         ; $48ff: $9d
    sbc h                                         ; $4900: $9c
    ld de, $6882                                  ; $4901: $11 $82 $68
    nop                                           ; $4904: $00
    rst $18                                       ; $4905: $df
    ld a, a                                       ; $4906: $7f
    call nz, Call_065_4333                        ; $4907: $c4 $33 $43
    xor [hl]                                      ; $490a: $ae
    ld b, b                                       ; $490b: $40
    jp nz, Jump_000_004e                          ; $490c: $c2 $4e $00

    sbc [hl]                                      ; $490f: $9e
    ld de, $5208                                  ; $4910: $11 $08 $52
    nop                                           ; $4913: $00
    push de                                       ; $4914: $d5
    db $e4                                        ; $4915: $e4
    ld a, [hl]                                    ; $4916: $7e
    db $e4                                        ; $4917: $e4
    ld de, $9d40                                  ; $4918: $11 $40 $9d
    rst $38                                       ; $491b: $ff
    ldh [$4e], a                                  ; $491c: $e0 $4e
    jr nz, jr_065_48be                            ; $491e: $20 $9e

    ld de, $009e                                  ; $4920: $11 $9e $00
    ld [$0051], sp                                ; $4923: $08 $51 $00
    sub l                                         ; $4926: $95
    ld a, [hl]                                    ; $4927: $7e
    db $e4                                        ; $4928: $e4
    adc [hl]                                      ; $4929: $8e

Jump_065_492a:
    jp nz, $a290                                  ; $492a: $c2 $90 $a2

    ret nz                                        ; $492d: $c0

    ldh [$08], a                                  ; $492e: $e0 $08
    ld d, c                                       ; $4930: $51
    nop                                           ; $4931: $00
    sub l                                         ; $4932: $95
    jr nc, jr_065_49b3                            ; $4933: $30 $7e

    db $e4                                        ; $4935: $e4
    ld d, b                                       ; $4936: $50
    ld b, b                                       ; $4937: $40
    db $f4                                        ; $4938: $f4
    pop bc                                        ; $4939: $c1
    db $f4                                        ; $493a: $f4
    ld bc, $9e11                                  ; $493b: $01 $11 $9e
    ld [$0051], sp                                ; $493e: $08 $51 $00
    ld d, e                                       ; $4941: $53
    ld [$e67e], sp                                ; $4942: $08 $7e $e6
    ld hl, sp+$24                                 ; $4945: $f8 $24
    db $f4                                        ; $4947: $f4
    ld h, c                                       ; $4948: $61
    ld de, $0089                                  ; $4949: $11 $89 $00
    inc b                                         ; $494c: $04
    sub e                                         ; $494d: $93
    nop                                           ; $494e: $00
    ld c, a                                       ; $494f: $4f
    ld a, [hl]                                    ; $4950: $7e
    rst $20                                       ; $4951: $e7
    inc b                                         ; $4952: $04
    db $10                                        ; $4953: $10
    jp $4176                                      ; $4954: $c3 $76 $41


    ld de, $62e8                                  ; $4957: $11 $e8 $62
    inc b                                         ; $495a: $04
    pop de                                        ; $495b: $d1
    nop                                           ; $495c: $00
    ld e, c                                       ; $495d: $59
    sub d                                         ; $495e: $92
    ld h, $c0                                     ; $495f: $26 $c0
    ldh [$80], a                                  ; $4961: $e0 $80
    ld [$0051], sp                                ; $4963: $08 $51 $00
    ld e, e                                       ; $4966: $5b
    db $fc                                        ; $4967: $fc
    db $e3                                        ; $4968: $e3
    ldh a, [rSTAT]                                ; $4969: $f0 $41
    add b                                         ; $496b: $80
    pop hl                                        ; $496c: $e1
    add sp, $43                                   ; $496d: $e8 $43
    ld [bc], a                                    ; $496f: $02
    ld [hl], c                                    ; $4970: $71
    rst $20                                       ; $4971: $e7
    ld bc, $00e8                                  ; $4972: $01 $e8 $00
    nop                                           ; $4975: $00
    nop                                           ; $4976: $00
    pop bc                                        ; $4977: $c1
    nop                                           ; $4978: $00
    rst $38                                       ; $4979: $ff
    rst $38                                       ; $497a: $ff
    rst $38                                       ; $497b: $ff
    rst $38                                       ; $497c: $ff
    rst $38                                       ; $497d: $ff
    rst $38                                       ; $497e: $ff
    rst $38                                       ; $497f: $ff
    rst $38                                       ; $4980: $ff
    rst $38                                       ; $4981: $ff
    rst $38                                       ; $4982: $ff
    nop                                           ; $4983: $00
    nop                                           ; $4984: $00
    ld bc, $fe80                                  ; $4985: $01 $80 $fe
    ldh [rIE], a                                  ; $4988: $e0 $ff
    rst $38                                       ; $498a: $ff
    rst $38                                       ; $498b: $ff
    rst $38                                       ; $498c: $ff
    rst $38                                       ; $498d: $ff
    add sp, $00                                   ; $498e: $e8 $00
    nop                                           ; $4990: $00
    nop                                           ; $4991: $00
    ld [bc], a                                    ; $4992: $02
    nop                                           ; $4993: $00
    jr jr_065_499d                                ; $4994: $18 $07

    ld [bc], a                                    ; $4996: $02
    ld bc, $071b                                  ; $4997: $01 $1b $07
    ld [bc], a                                    ; $499a: $02
    ld [bc], a                                    ; $499b: $02
    add hl, de                                    ; $499c: $19

jr_065_499d:
    ld [$0302], sp                                ; $499d: $08 $02 $03
    ld d, $09                                     ; $49a0: $16 $09
    ld [bc], a                                    ; $49a2: $02
    inc b                                         ; $49a3: $04
    inc e                                         ; $49a4: $1c
    add hl, bc                                    ; $49a5: $09
    ld [bc], a                                    ; $49a6: $02
    dec b                                         ; $49a7: $05
    ld [de], a                                    ; $49a8: $12
    ld a, [bc]                                    ; $49a9: $0a
    ld [bc], a                                    ; $49aa: $02
    ld b, $15                                     ; $49ab: $06 $15
    ld a, [bc]                                    ; $49ad: $0a
    ld [bc], a                                    ; $49ae: $02
    rlca                                          ; $49af: $07
    ld de, $020b                                  ; $49b0: $11 $0b $02

jr_065_49b3:
    ld [$1011], sp                                ; $49b3: $08 $11 $10
    ld [bc], a                                    ; $49b6: $02
    add hl, bc                                    ; $49b7: $09
    ld hl, $0210                                  ; $49b8: $21 $10 $02
    ld a, [bc]                                    ; $49bb: $0a
    db $10                                        ; $49bc: $10
    ld de, $0b02                                  ; $49bd: $11 $02 $0b
    ld [de], a                                    ; $49c0: $12
    ld de, $0c02                                  ; $49c1: $11 $02 $0c
    ld [hl+], a                                   ; $49c4: $22
    ld de, $0d02                                  ; $49c5: $11 $02 $0d
    ld de, $0212                                  ; $49c8: $11 $12 $02
    ld c, $28                                     ; $49cb: $0e $28
    ld [de], a                                    ; $49cd: $12
    ld [bc], a                                    ; $49ce: $02
    rrca                                          ; $49cf: $0f
    add hl, hl                                    ; $49d0: $29
    ld [de], a                                    ; $49d1: $12
    ld [bc], a                                    ; $49d2: $02
    db $10                                        ; $49d3: $10
    dec h                                         ; $49d4: $25
    inc de                                        ; $49d5: $13
    ld [bc], a                                    ; $49d6: $02
    ld de, $1327                                  ; $49d7: $11 $27 $13
    ld [bc], a                                    ; $49da: $02
    ld [de], a                                    ; $49db: $12
    ld a, [hl+]                                   ; $49dc: $2a
    inc de                                        ; $49dd: $13
    ld [bc], a                                    ; $49de: $02
    inc de                                        ; $49df: $13
    ld h, $14                                     ; $49e0: $26 $14
    ld [bc], a                                    ; $49e2: $02
    inc d                                         ; $49e3: $14
    jr z, jr_065_49fa                             ; $49e4: $28 $14

    ld [bc], a                                    ; $49e6: $02
    dec d                                         ; $49e7: $15
    inc h                                         ; $49e8: $24
    dec d                                         ; $49e9: $15
    ld [bc], a                                    ; $49ea: $02
    ld d, $29                                     ; $49eb: $16 $29
    dec d                                         ; $49ed: $15
    ld [bc], a                                    ; $49ee: $02
    rla                                           ; $49ef: $17
    inc l                                         ; $49f0: $2c
    dec d                                         ; $49f1: $15
    ld [bc], a                                    ; $49f2: $02
    jr jr_065_4a17                                ; $49f3: $18 $22

    ld d, $02                                     ; $49f5: $16 $02
    add hl, de                                    ; $49f7: $19
    jr z, jr_065_4a10                             ; $49f8: $28 $16

jr_065_49fa:
    ld [bc], a                                    ; $49fa: $02
    ld a, [de]                                    ; $49fb: $1a
    ld a, [hl+]                                   ; $49fc: $2a
    ld d, $02                                     ; $49fd: $16 $02
    dec de                                        ; $49ff: $1b
    daa                                           ; $4a00: $27
    rla                                           ; $4a01: $17
    ld [bc], a                                    ; $4a02: $02
    inc e                                         ; $4a03: $1c
    add hl, hl                                    ; $4a04: $29
    rla                                           ; $4a05: $17
    ld [bc], a                                    ; $4a06: $02
    dec e                                         ; $4a07: $1d
    dec hl                                        ; $4a08: $2b
    rla                                           ; $4a09: $17
    ld [bc], a                                    ; $4a0a: $02
    ld e, $2d                                     ; $4a0b: $1e $2d
    rla                                           ; $4a0d: $17
    ld [bc], a                                    ; $4a0e: $02
    rra                                           ; $4a0f: $1f

jr_065_4a10:
    dec de                                        ; $4a10: $1b
    jr jr_065_4a15                                ; $4a11: $18 $02

    jr nz, @+$26                                  ; $4a13: $20 $24

jr_065_4a15:
    jr @+$04                                      ; $4a15: $18 $02

jr_065_4a17:
    ld hl, $1828                                  ; $4a17: $21 $28 $18
    ld [bc], a                                    ; $4a1a: $02
    ld [hl+], a                                   ; $4a1b: $22
    inc l                                         ; $4a1c: $2c
    jr jr_065_4a21                                ; $4a1d: $18 $02

    inc hl                                        ; $4a1f: $23
    dec h                                         ; $4a20: $25

jr_065_4a21:
    add hl, de                                    ; $4a21: $19
    ld [bc], a                                    ; $4a22: $02
    inc h                                         ; $4a23: $24
    ld a, [hl+]                                   ; $4a24: $2a
    add hl, de                                    ; $4a25: $19
    ld [bc], a                                    ; $4a26: $02
    dec h                                         ; $4a27: $25
    jr z, jr_065_4a44                             ; $4a28: $28 $1a

    ld [bc], a                                    ; $4a2a: $02
    ld h, $2b                                     ; $4a2b: $26 $2b
    inc e                                         ; $4a2d: $1c
    ld [bc], a                                    ; $4a2e: $02
    daa                                           ; $4a2f: $27
    rra                                           ; $4a30: $1f
    dec e                                         ; $4a31: $1d
    ld [bc], a                                    ; $4a32: $02
    jr z, jr_065_4a5f                             ; $4a33: $28 $2a

    dec e                                         ; $4a35: $1d
    ld [bc], a                                    ; $4a36: $02
    add hl, hl                                    ; $4a37: $29
    ld e, $1e                                     ; $4a38: $1e $1e
    ld [bc], a                                    ; $4a3a: $02
    ld a, [hl+]                                   ; $4a3b: $2a
    inc e                                         ; $4a3c: $1c
    rra                                           ; $4a3d: $1f
    ld [bc], a                                    ; $4a3e: $02
    dec hl                                        ; $4a3f: $2b
    rra                                           ; $4a40: $1f
    rra                                           ; $4a41: $1f
    ld [bc], a                                    ; $4a42: $02
    inc l                                         ; $4a43: $2c

jr_065_4a44:
    jr nz, jr_065_4a65                            ; $4a44: $20 $1f

    ld [bc], a                                    ; $4a46: $02
    dec l                                         ; $4a47: $2d
    dec de                                        ; $4a48: $1b
    jr nz, jr_065_4a4d                            ; $4a49: $20 $02

    ld l, $1d                                     ; $4a4b: $2e $1d

jr_065_4a4d:
    jr nz, @+$04                                  ; $4a4d: $20 $02

    cpl                                           ; $4a4f: $2f
    jr z, jr_065_4a72                             ; $4a50: $28 $20

    ld [bc], a                                    ; $4a52: $02
    jr nc, jr_065_4a7f                            ; $4a53: $30 $2a

    jr nz, @+$04                                  ; $4a55: $20 $02

    ld sp, $211c                                  ; $4a57: $31 $1c $21
    ld [bc], a                                    ; $4a5a: $02
    ld [hl-], a                                   ; $4a5b: $32
    ld e, $21                                     ; $4a5c: $1e $21
    ld [bc], a                                    ; $4a5e: $02

jr_065_4a5f:
    inc sp                                        ; $4a5f: $33
    rra                                           ; $4a60: $1f
    ld hl, $3402                                  ; $4a61: $21 $02 $34
    add hl, hl                                    ; $4a64: $29

jr_065_4a65:
    ld hl, $3502                                  ; $4a65: $21 $02 $35
    dec e                                         ; $4a68: $1d
    ld [hl+], a                                   ; $4a69: $22
    ld [bc], a                                    ; $4a6a: $02
    ld [hl], $28                                  ; $4a6b: $36 $28
    ld [hl+], a                                   ; $4a6d: $22
    ld [bc], a                                    ; $4a6e: $02
    scf                                           ; $4a6f: $37
    dec de                                        ; $4a70: $1b
    dec h                                         ; $4a71: $25

jr_065_4a72:
    ld [bc], a                                    ; $4a72: $02
    jr c, jr_065_4a91                             ; $4a73: $38 $1c

    jr z, jr_065_4a79                             ; $4a75: $28 $02

    add hl, sp                                    ; $4a77: $39
    ld [hl+], a                                   ; $4a78: $22

jr_065_4a79:
    ld a, [hl+]                                   ; $4a79: $2a
    ld [bc], a                                    ; $4a7a: $02
    ld a, [hl-]                                   ; $4a7b: $3a
    inc h                                         ; $4a7c: $24
    ld a, [hl+]                                   ; $4a7d: $2a
    ld [bc], a                                    ; $4a7e: $02

jr_065_4a7f:
    dec sp                                        ; $4a7f: $3b
    dec h                                         ; $4a80: $25
    dec hl                                        ; $4a81: $2b
    ld [bc], a                                    ; $4a82: $02
    inc a                                         ; $4a83: $3c
    inc hl                                        ; $4a84: $23
    inc l                                         ; $4a85: $2c
    ld [bc], a                                    ; $4a86: $02
    dec a                                         ; $4a87: $3d
    rla                                           ; $4a88: $17
    dec l                                         ; $4a89: $2d
    ld [bc], a                                    ; $4a8a: $02
    ld a, $20                                     ; $4a8b: $3e $20
    dec l                                         ; $4a8d: $2d
    ld [bc], a                                    ; $4a8e: $02
    ccf                                           ; $4a8f: $3f
    ld [hl+], a                                   ; $4a90: $22

jr_065_4a91:
    dec l                                         ; $4a91: $2d
    ld [bc], a                                    ; $4a92: $02
    ld b, b                                       ; $4a93: $40
    inc h                                         ; $4a94: $24
    dec l                                         ; $4a95: $2d
    ld [bc], a                                    ; $4a96: $02
    ld b, c                                       ; $4a97: $41
    ld hl, $022e                                  ; $4a98: $21 $2e $02
    ld b, d                                       ; $4a9b: $42
    inc hl                                        ; $4a9c: $23
    ld l, $02                                     ; $4a9d: $2e $02
    ld b, e                                       ; $4a9f: $43
    ld [hl+], a                                   ; $4aa0: $22
    cpl                                           ; $4aa1: $2f
    ld [bc], a                                    ; $4aa2: $02
    ld b, h                                       ; $4aa3: $44
    inc d                                         ; $4aa4: $14
    jr nc, @+$04                                  ; $4aa5: $30 $02

    ld b, l                                       ; $4aa7: $45
    jr jr_065_4ada                                ; $4aa8: $18 $30

    ld [bc], a                                    ; $4aaa: $02
    ld b, [hl]                                    ; $4aab: $46
    dec d                                         ; $4aac: $15
    ld sp, $4702                                  ; $4aad: $31 $02 $47
    inc h                                         ; $4ab0: $24
    ld sp, $4802                                  ; $4ab1: $31 $02 $48
    ld h, $33                                     ; $4ab4: $26 $33
    ld [bc], a                                    ; $4ab6: $02
    ld c, c                                       ; $4ab7: $49
    inc de                                        ; $4ab8: $13
    inc [hl]                                      ; $4ab9: $34
    ld [bc], a                                    ; $4aba: $02
    ld c, d                                       ; $4abb: $4a
    rra                                           ; $4abc: $1f
    inc [hl]                                      ; $4abd: $34
    ld [bc], a                                    ; $4abe: $02
    ld c, e                                       ; $4abf: $4b
    dec h                                         ; $4ac0: $25
    inc [hl]                                      ; $4ac1: $34
    ld [bc], a                                    ; $4ac2: $02
    ld c, h                                       ; $4ac3: $4c
    ld [de], a                                    ; $4ac4: $12
    dec [hl]                                      ; $4ac5: $35
    ld [bc], a                                    ; $4ac6: $02
    ld c, l                                       ; $4ac7: $4d
    inc d                                         ; $4ac8: $14
    dec [hl]                                      ; $4ac9: $35
    ld [bc], a                                    ; $4aca: $02
    ld c, [hl]                                    ; $4acb: $4e
    jr nz, jr_065_4b03                            ; $4acc: $20 $35

    ld [bc], a                                    ; $4ace: $02
    ld c, a                                       ; $4acf: $4f
    inc de                                        ; $4ad0: $13
    ld [hl], $02                                  ; $4ad1: $36 $02
    ld d, b                                       ; $4ad3: $50
    jr jr_065_4b0f                                ; $4ad4: $18 $39

    ld [bc], a                                    ; $4ad6: $02
    ld d, c                                       ; $4ad7: $51
    rla                                           ; $4ad8: $17
    ld a, [hl-]                                   ; $4ad9: $3a

jr_065_4ada:
    rst $38                                       ; $4ada: $ff
    rst $38                                       ; $4adb: $ff
    rst $38                                       ; $4adc: $ff
    push hl                                       ; $4add: $e5
    ld c, d                                       ; $4ade: $4a
    sbc d                                         ; $4adf: $9a
    ld c, [hl]                                    ; $4ae0: $4e
    rla                                           ; $4ae1: $17
    ld d, h                                       ; $4ae2: $54
    ld [hl-], a                                   ; $4ae3: $32
    ld d, h                                       ; $4ae4: $54
    rrca                                          ; $4ae5: $0f
    ld c, l                                       ; $4ae6: $4d
    dec c                                         ; $4ae7: $0d
    ld c, $0e                                     ; $4ae8: $0e $0e
    db $fc                                        ; $4aea: $fc
    rst $38                                       ; $4aeb: $ff
    add sp, -$19                                  ; $4aec: $e8 $e7
    db $dd                                        ; $4aee: $dd
    ldh [$fc], a                                  ; $4aef: $e0 $fc
    ld [$fdc6], a                                 ; $4af1: $ea $c6 $fd
    ld sp, hl                                     ; $4af4: $f9
    dec l                                         ; $4af5: $2d
    dec l                                         ; $4af6: $2d
    db $fc                                        ; $4af7: $fc
    rst $20                                       ; $4af8: $e7
    push de                                       ; $4af9: $d5
    rst $30                                       ; $4afa: $f7
    adc d                                         ; $4afb: $8a
    rst $30                                       ; $4afc: $f7
    dec l                                         ; $4afd: $2d
    dec c                                         ; $4afe: $0d
    dec bc                                        ; $4aff: $0b
    dec c                                         ; $4b00: $0d
    ld c, l                                       ; $4b01: $4d
    rst $38                                       ; $4b02: $ff

jr_065_4b03:
    ldh [$2d], a                                  ; $4b03: $e0 $2d
    rst $38                                       ; $4b05: $ff
    ldh [$82], a                                  ; $4b06: $e0 $82
    push hl                                       ; $4b08: $e5
    adc l                                         ; $4b09: $8d
    db $fd                                        ; $4b0a: $fd
    add d                                         ; $4b0b: $82
    ld [$0d07], a                                 ; $4b0c: $ea $07 $0d

jr_065_4b0f:
    ld l, l                                       ; $4b0f: $6d
    dec bc                                        ; $4b10: $0b
    rst $38                                       ; $4b11: $ff
    ld [c], a                                     ; $4b12: $e2
    cp [hl]                                       ; $4b13: $be
    pop hl                                        ; $4b14: $e1
    ld d, l                                       ; $4b15: $55
    db $e3                                        ; $4b16: $e3
    ret nz                                        ; $4b17: $c0

    rst $28                                       ; $4b18: $ef
    inc c                                         ; $4b19: $0c
    rst $30                                       ; $4b1a: $f7
    ccf                                           ; $4b1b: $3f
    ld c, l                                       ; $4b1c: $4d
    ld c, l                                       ; $4b1d: $4d
    ld l, l                                       ; $4b1e: $6d
    dec c                                         ; $4b1f: $0d
    dec bc                                        ; $4b20: $0b
    dec bc                                        ; $4b21: $0b
    db $fd                                        ; $4b22: $fd
    ld [c], a                                     ; $4b23: $e2
    ld a, l                                       ; $4b24: $7d
    ldh [rDIV], a                                 ; $4b25: $e0 $04
    db $e4                                        ; $4b27: $e4
    jp $ed02                                      ; $4b28: $c3 $02 $ed


    dec c                                         ; $4b2b: $0d
    inc e                                         ; $4b2c: $1c
    ld [$e910], a                                 ; $4b2d: $ea $10 $e9

Jump_065_4b30:
    add h                                         ; $4b30: $84
    ld [c], a                                     ; $4b31: $e2
    ret nz                                        ; $4b32: $c0

    push hl                                       ; $4b33: $e5
    ld a, [hl]                                    ; $4b34: $7e
    add sp, -$3a                                  ; $4b35: $e8 $c6
    call c, Call_000_2dcf                         ; $4b37: $dc $cf $2d
    dec c                                         ; $4b3a: $0d
    and d                                         ; $4b3b: $a2
    pop hl                                        ; $4b3c: $e1
    db $fc                                        ; $4b3d: $fc
    db $ed                                        ; $4b3e: $ed
    add l                                         ; $4b3f: $85
    db $e3                                        ; $4b40: $e3
    dec bc                                        ; $4b41: $0b
    dec hl                                        ; $4b42: $2b
    sub a                                         ; $4b43: $97
    ld a, [bc]                                    ; $4b44: $0a
    ld a, [hl+]                                   ; $4b45: $2a
    ld a, [bc]                                    ; $4b46: $0a
    ld a, e                                       ; $4b47: $7b
    pop hl                                        ; $4b48: $e1
    ld l, l                                       ; $4b49: $6d
    ld a, [hl]                                    ; $4b4a: $7e

Jump_065_4b4b:
    db $e3                                        ; $4b4b: $e3
    ret nz                                        ; $4b4c: $c0

    ld a, [c]                                     ; $4b4d: $f2
    dec l                                         ; $4b4e: $2d
    ldh a, [$da]                                  ; $4b4f: $f0 $da
    jp nz, $e8fc                                  ; $4b51: $c2 $fc $e8

    jp z, Jump_000_05c1                           ; $4b54: $ca $c1 $05

    ldh [$0d], a                                  ; $4b57: $e0 $0d
    dec bc                                        ; $4b59: $0b
    dec hl                                        ; $4b5a: $2b
    dec hl                                        ; $4b5b: $2b
    and l                                         ; $4b5c: $a5
    ld a, [bc]                                    ; $4b5d: $0a
    ret nz                                        ; $4b5e: $c0

    ldh [rOCPS], a                                ; $4b5f: $e0 $6a
    ld a, $e3                                     ; $4b61: $3e $e3
    ld d, e                                       ; $4b63: $53

Call_065_4b64:
    db $d3                                        ; $4b64: $d3
    inc c                                         ; $4b65: $0c
    rst $38                                       ; $4b66: $ff
    di                                            ; $4b67: $f3
    inc l                                         ; $4b68: $2c
    add b                                         ; $4b69: $80
    add h                                         ; $4b6a: $84
    ld [c], a                                     ; $4b6b: $e2
    add e                                         ; $4b6c: $83
    ldh [rIE], a                                  ; $4b6d: $e0 $ff
    ld [c], a                                     ; $4b6f: $e2
    cp c                                          ; $4b70: $b9
    ret nz                                        ; $4b71: $c0

    ld a, [hl]                                    ; $4b72: $7e
    jp $e0ff                                      ; $4b73: $c3 $ff $e0


    nop                                           ; $4b76: $00
    call z, Call_065_422c                         ; $4b77: $cc $2c $42
    rst $38                                       ; $4b7a: $ff
    ldh [$0c], a                                  ; $4b7b: $e0 $0c
    ei                                            ; $4b7d: $fb
    pop hl                                        ; $4b7e: $e1
    ld hl, sp-$19                                 ; $4b7f: $f8 $e7
    cp [hl]                                       ; $4b81: $be
    db $e4                                        ; $4b82: $e4
    ld b, l                                       ; $4b83: $45
    ldh [$2a], a                                  ; $4b84: $e0 $2a
    add b                                         ; $4b86: $80
    jp nz, Jump_000_0a3f                          ; $4b87: $c2 $3f $0a

    ld c, e                                       ; $4b8a: $4b
    dec c                                         ; $4b8b: $0d
    dec bc                                        ; $4b8c: $0b
    dec c                                         ; $4b8d: $0d
    ld l, l                                       ; $4b8e: $6d
    db $fc                                        ; $4b8f: $fc
    and d                                         ; $4b90: $a2
    ld b, b                                       ; $4b91: $40
    rst $08                                       ; $4b92: $cf
    rlca                                          ; $4b93: $07
    ld c, h                                       ; $4b94: $4c
    ld c, h                                       ; $4b95: $4c
    ld c, h                                       ; $4b96: $4c
    cp l                                          ; $4b97: $bd
    ldh [$fa], a                                  ; $4b98: $e0 $fa
    ldh [$f8], a                                  ; $4b9a: $e0 $f8
    db $e4                                        ; $4b9c: $e4
    add l                                         ; $4b9d: $85
    ldh [$ae], a                                  ; $4b9e: $e0 $ae
    db $e4                                        ; $4ba0: $e4
    scf                                           ; $4ba1: $37
    ld l, e                                       ; $4ba2: $6b
    ld a, [bc]                                    ; $4ba3: $0a
    ld c, e                                       ; $4ba4: $4b
    ld b, c                                       ; $4ba5: $41
    jp nz, Jump_065_4b4b                          ; $4ba6: $c2 $4b $4b

    nop                                           ; $4ba9: $00
    rst $20                                       ; $4baa: $e7
    nop                                           ; $4bab: $00
    rst $08                                       ; $4bac: $cf
    add e                                         ; $4bad: $83
    inc c                                         ; $4bae: $0c
    inc c                                         ; $4baf: $0c
    call nz, Call_000_39e2                        ; $4bb0: $c4 $e2 $39
    ldh [$f8], a                                  ; $4bb3: $e0 $f8
    push hl                                       ; $4bb5: $e5
    ld b, d                                       ; $4bb6: $42
    pop hl                                        ; $4bb7: $e1
    ld a, h                                       ; $4bb8: $7c
    ldh [$2c], a                                  ; $4bb9: $e0 $2c
    dec a                                         ; $4bbb: $3d
    ld l, e                                       ; $4bbc: $6b
    pop bc                                        ; $4bbd: $c1
    ldh [rWX], a                                  ; $4bbe: $e0 $4b
    ld c, e                                       ; $4bc0: $4b
    ld c, e                                       ; $4bc1: $4b
    ld l, e                                       ; $4bc2: $6b
    add d                                         ; $4bc3: $82
    ldh [$81], a                                  ; $4bc4: $e0 $81
    pop hl                                        ; $4bc6: $e1
    ldh [$80], a                                  ; $4bc7: $e0 $80
    db $f4                                        ; $4bc9: $f4
    nop                                           ; $4bca: $00
    pop hl                                        ; $4bcb: $e1
    jp z, $f8e4                                   ; $4bcc: $ca $e4 $f8

    and $3d                                       ; $4bcf: $e6 $3d
    ld [c], a                                     ; $4bd1: $e2
    inc l                                         ; $4bd2: $2c
    dec bc                                        ; $4bd3: $0b
    dec hl                                        ; $4bd4: $2b
    ret nz                                        ; $4bd5: $c0

    add e                                         ; $4bd6: $83
    ld [c], a                                     ; $4bd7: $e2
    inc c                                         ; $4bd8: $0c
    ldh [rSCY], a                                 ; $4bd9: $e0 $42
    pop hl                                        ; $4bdb: $e1
    nop                                           ; $4bdc: $00
    push de                                       ; $4bdd: $d5
    call nz, $fdd1                                ; $4bde: $c4 $d1 $fd
    pop bc                                        ; $4be1: $c1
    ld l, h                                       ; $4be2: $6c
    ld l, h                                       ; $4be3: $6c
    ld a, [bc]                                    ; $4be4: $0a
    pop bc                                        ; $4be5: $c1
    pop hl                                        ; $4be6: $e1
    dec bc                                        ; $4be7: $0b
    pop bc                                        ; $4be8: $c1
    ld [c], a                                     ; $4be9: $e2
    dec bc                                        ; $4bea: $0b
    ld [bc], a                                    ; $4beb: $02
    sub $80                                       ; $4bec: $d6 $80
    jp nc, $c1ad                                  ; $4bee: $d2 $ad $c1

    pop bc                                        ; $4bf1: $c1
    push hl                                       ; $4bf2: $e5

jr_065_4bf3:
    add b                                         ; $4bf3: $80
    ld b, e                                       ; $4bf4: $43
    pop hl                                        ; $4bf5: $e1
    jp Jump_065_66c0                              ; $4bf6: $c3 $c0 $66


    add l                                         ; $4bf9: $85
    ret nz                                        ; $4bfa: $c0

    rst $38                                       ; $4bfb: $ff
    ld [bc], a                                    ; $4bfc: $02
    db $e3                                        ; $4bfd: $e3
    add d                                         ; $4bfe: $82
    db $e4                                        ; $4bff: $e4
    add c                                         ; $4c00: $81
    ldh [$0b], a                                  ; $4c01: $e0 $0b
    ld b, b                                       ; $4c03: $40
    and d                                         ; $4c04: $a2
    and b                                         ; $4c05: $a0
    add h                                         ; $4c06: $84
    jp $ff80                                      ; $4c07: $c3 $80 $ff


    ccf                                           ; $4c0a: $3f
    add sp, -$80                                  ; $4c0b: $e8 $80
    and c                                         ; $4c0d: $a1
    jp $0d81                                      ; $4c0e: $c3 $81 $0d


    ld b, h                                       ; $4c11: $44
    pop hl                                        ; $4c12: $e1
    jr c, jr_065_4c19                             ; $4c13: $38 $04

    sub l                                         ; $4c15: $95
    db $f4                                        ; $4c16: $f4
    ld h, c                                       ; $4c17: $61
    nop                                           ; $4c18: $00

jr_065_4c19:
    ld a, [c]                                     ; $4c19: $f2
    ld l, h                                       ; $4c1a: $6c
    ld l, h                                       ; $4c1b: $6c
    dec c                                         ; $4c1c: $0d
    ld [bc], a                                    ; $4c1d: $02
    ld [c], a                                     ; $4c1e: $e2
    cp [hl]                                       ; $4c1f: $be
    pop bc                                        ; $4c20: $c1
    ld [$c486], sp                                ; $4c21: $08 $86 $c4
    add b                                         ; $4c24: $80
    rst $38                                       ; $4c25: $ff
    ld b, c                                       ; $4c26: $41
    add sp, $2c                                   ; $4c27: $e8 $2c
    ld b, l                                       ; $4c29: $45
    and b                                         ; $4c2a: $a0
    ld b, l                                       ; $4c2b: $45
    add e                                         ; $4c2c: $83
    ret nz                                        ; $4c2d: $c0

    ldh [rOCPS], a                                ; $4c2e: $e0 $6a
    ld l, c                                       ; $4c30: $69
    jr c, jr_065_4bf3                             ; $4c31: $38 $c0

    rst $38                                       ; $4c33: $ff
    ld b, l                                       ; $4c34: $45
    and b                                         ; $4c35: $a0
    ld b, d                                       ; $4c36: $42
    and b                                         ; $4c37: $a0
    dec c                                         ; $4c38: $0d
    dec hl                                        ; $4c39: $2b
    dec hl                                        ; $4c3a: $2b
    ld b, c                                       ; $4c3b: $41
    ret nz                                        ; $4c3c: $c0

    ld a, e                                       ; $4c3d: $7b
    ldh [$e0], a                                  ; $4c3e: $e0 $e0
    add $82                                       ; $4c40: $c6 $82
    add b                                         ; $4c42: $80
    rst $38                                       ; $4c43: $ff
    add h                                         ; $4c44: $84
    jp hl                                         ; $4c45: $e9


    jp nz, Jump_065_41c1                          ; $4c46: $c2 $c1 $41

    ldh [$2b], a                                  ; $4c49: $e0 $2b
    dec hl                                        ; $4c4b: $2b
    dec hl                                        ; $4c4c: $2b
    nop                                           ; $4c4d: $00
    inc b                                         ; $4c4e: $04
    adc e                                         ; $4c4f: $8b
    nop                                           ; $4c50: $00
    and h                                         ; $4c51: $a4
    db $fc                                        ; $4c52: $fc
    ld l, h                                       ; $4c53: $6c
    add h                                         ; $4c54: $84
    rst $28                                       ; $4c55: $ef
    add c                                         ; $4c56: $81
    ld [c], a                                     ; $4c57: $e2
    ld b, l                                       ; $4c58: $45
    add c                                         ; $4c59: $81
    dec sp                                        ; $4c5a: $3b
    db $e4                                        ; $4c5b: $e4
    inc b                                         ; $4c5c: $04
    adc c                                         ; $4c5d: $89
    db $10                                        ; $4c5e: $10
    add b                                         ; $4c5f: $80
    or e                                          ; $4c60: $b3
    dec b                                         ; $4c61: $05
    ld [$c282], a                                 ; $4c62: $ea $82 $c2
    call nz, $0da2                                ; $4c65: $c4 $a2 $0d
    dec b                                         ; $4c68: $05
    and c                                         ; $4c69: $a1
    ld b, b                                       ; $4c6a: $40
    ld h, e                                       ; $4c6b: $63
    db $fc                                        ; $4c6c: $fc
    rst $10                                       ; $4c6d: $d7
    nop                                           ; $4c6e: $00
    dec b                                         ; $4c6f: $05
    xor $01                                       ; $4c70: $ee $01
    push hl                                       ; $4c72: $e5
    ld b, [hl]                                    ; $4c73: $46
    ld h, c                                       ; $4c74: $61
    ld a, $a1                                     ; $4c75: $3e $a1
    cp d                                          ; $4c77: $ba
    ld h, c                                       ; $4c78: $61
    ld [bc], a                                    ; $4c79: $02
    sub [hl]                                      ; $4c7a: $96
    add b                                         ; $4c7b: $80
    rst $28                                       ; $4c7c: $ef
    add c                                         ; $4c7d: $81
    jp $c700                                      ; $4c7e: $c3 $00 $c7


    push hl                                       ; $4c81: $e5
    ld sp, hl                                     ; $4c82: $f9
    push hl                                       ; $4c83: $e5
    nop                                           ; $4c84: $00
    and l                                         ; $4c85: $a5
    nop                                           ; $4c86: $00
    db $dd                                        ; $4c87: $dd
    pop bc                                        ; $4c88: $c1
    jp nz, $e480                                  ; $4c89: $c2 $80 $e4

    rst $38                                       ; $4c8c: $ff
    and l                                         ; $4c8d: $a5
    db $fc                                        ; $4c8e: $fc
    call $801c                                    ; $4c8f: $cd $1c $80
    db $fc                                        ; $4c92: $fc
    add e                                         ; $4c93: $83
    ld h, c                                       ; $4c94: $61
    dec c                                         ; $4c95: $0d
    ld l, e                                       ; $4c96: $6b
    ld l, e                                       ; $4c97: $6b

jr_065_4c98:
    ld b, [hl]                                    ; $4c98: $46
    db $e4                                        ; $4c99: $e4
    or a                                          ; $4c9a: $b7
    ld [c], a                                     ; $4c9b: $e2
    cp a                                          ; $4c9c: $bf
    ld b, e                                       ; $4c9d: $43
    ld [$ff00], sp                                ; $4c9e: $08 $00 $ff
    dec b                                         ; $4ca1: $05
    pop bc                                        ; $4ca2: $c1
    ret nz                                        ; $4ca3: $c0

    db $e3                                        ; $4ca4: $e3
    dec bc                                        ; $4ca5: $0b
    ret nz                                        ; $4ca6: $c0

    push hl                                       ; $4ca7: $e5
    ld a, h                                       ; $4ca8: $7c
    and d                                         ; $4ca9: $a2
    inc [hl]                                      ; $4caa: $34
    and d                                         ; $4cab: $a2
    cp $54                                        ; $4cac: $fe $54
    nop                                           ; $4cae: $00
    ret nz                                        ; $4caf: $c0

    di                                            ; $4cb0: $f3
    ld b, c                                       ; $4cb1: $41
    and e                                         ; $4cb2: $a3
    db $fd                                        ; $4cb3: $fd
    jp $e73c                                      ; $4cb4: $c3 $3c $e7


    db $fc                                        ; $4cb7: $fc
    ld sp, $93c0                                  ; $4cb8: $31 $c0 $93
    rst $38                                       ; $4cbb: $ff
    call nz, $84bb                                ; $4cbc: $c4 $bb $84
    ld h, $38                                     ; $4cbf: $26 $38
    ld h, e                                       ; $4cc1: $63
    dec bc                                        ; $4cc2: $0b
    ld l, l                                       ; $4cc3: $6d
    add b                                         ; $4cc4: $80
    cp a                                          ; $4cc5: $bf
    add d                                         ; $4cc6: $82
    ld b, l                                       ; $4cc7: $45
    dec c                                         ; $4cc8: $0d
    ld b, e                                       ; $4cc9: $43
    ld h, e                                       ; $4cca: $63
    db $fc                                        ; $4ccb: $fc
    add l                                         ; $4ccc: $85
    db $10                                        ; $4ccd: $10
    db $f4                                        ; $4cce: $f4
    inc hl                                        ; $4ccf: $23
    ret nz                                        ; $4cd0: $c0

    ldh [rP1], a                                  ; $4cd1: $e0 $00
    db $fc                                        ; $4cd3: $fc
    ret nz                                        ; $4cd4: $c0

    rst $20                                       ; $4cd5: $e7
    dec bc                                        ; $4cd6: $0b
    ld [bc], a                                    ; $4cd7: $02
    ld h, b                                       ; $4cd8: $60
    rst $00                                       ; $4cd9: $c7
    ld b, d                                       ; $4cda: $42
    db $fd                                        ; $4cdb: $fd
    ret z                                         ; $4cdc: $c8

    jr nz, jr_065_4cdf                            ; $4cdd: $20 $00

jr_065_4cdf:
    rst $38                                       ; $4cdf: $ff
    add b                                         ; $4ce0: $80
    rst $20                                       ; $4ce1: $e7
    ld a, a                                       ; $4ce2: $7f
    add h                                         ; $4ce3: $84
    ld a, [$b364]                                 ; $4ce4: $fa $64 $b3
    ld h, e                                       ; $4ce7: $63
    ld c, l                                       ; $4ce8: $4d
    db $fc                                        ; $4ce9: $fc
    ld sp, $7440                                  ; $4cea: $31 $40 $74
    nop                                           ; $4ced: $00
    add h                                         ; $4cee: $84
    ld hl, $4046                                  ; $4cef: $21 $46 $40
    ld a, [hl-]                                   ; $4cf2: $3a
    add [hl]                                      ; $4cf3: $86
    dec [hl]                                      ; $4cf4: $35
    ld b, d                                       ; $4cf5: $42
    db $fc                                        ; $4cf6: $fc
    ld sp, $7241                                  ; $4cf7: $31 $41 $72
    ld a, [hl]                                    ; $4cfa: $7e
    call z, $a578                                 ; $4cfb: $cc $78 $a5
    nop                                           ; $4cfe: $00
    ld a, d                                       ; $4cff: $7a

Jump_065_4d00:
    ld b, e                                       ; $4d00: $43
    ret nz                                        ; $4d01: $c0

    rst $38                                       ; $4d02: $ff
    ld a, [hl]                                    ; $4d03: $7e
    rst $08                                       ; $4d04: $cf
    pop af                                        ; $4d05: $f1
    add e                                         ; $4d06: $83
    add b                                         ; $4d07: $80
    rst $38                                       ; $4d08: $ff
    cp d                                          ; $4d09: $ba
    and [hl]                                      ; $4d0a: $a6
    ld a, [hl]                                    ; $4d0b: $7e
    jp $ecfe                                      ; $4d0c: $c3 $fe $ec


    ld bc, $006d                                  ; $4d0f: $01 $6d $00
    rst $18                                       ; $4d12: $df
    ccf                                           ; $4d13: $3f
    add sp, -$80                                  ; $4d14: $e8 $80
    jr nz, jr_065_4c98                            ; $4d16: $20 $80

    ld h, c                                       ; $4d18: $61
    ld hl, sp-$78                                 ; $4d19: $f8 $88
    halt                                          ; $4d1b: $76
    ld [hl], c                                    ; $4d1c: $71
    ret nz                                        ; $4d1d: $c0

    rst $30                                       ; $4d1e: $f7
    nop                                           ; $4d1f: $00
    ld a, h                                       ; $4d20: $7c
    pop bc                                        ; $4d21: $c1
    ld a, l                                       ; $4d22: $7d
    ld h, c                                       ; $4d23: $61
    db $fc                                        ; $4d24: $fc
    inc b                                         ; $4d25: $04
    ld a, d                                       ; $4d26: $7a
    add [hl]                                      ; $4d27: $86
    ld b, b                                       ; $4d28: $40
    ret nc                                        ; $4d29: $d0

    add b                                         ; $4d2a: $80
    inc b                                         ; $4d2b: $04
    add l                                         ; $4d2c: $85
    inc bc                                        ; $4d2d: $03
    ld b, d                                       ; $4d2e: $42
    inc h                                         ; $4d2f: $24
    nop                                           ; $4d30: $00
    add e                                         ; $4d31: $83
    add a                                         ; $4d32: $87
    ld a, [hl]                                    ; $4d33: $7e
    and e                                         ; $4d34: $a3
    nop                                           ; $4d35: $00
    and $00                                       ; $4d36: $e6 $00
    rst $08                                       ; $4d38: $cf
    ld c, l                                       ; $4d39: $4d
    dec b                                         ; $4d3a: $05
    add h                                         ; $4d3b: $84
    inc h                                         ; $4d3c: $24
    ccf                                           ; $4d3d: $3f
    ld b, d                                       ; $4d3e: $42

jr_065_4d3f:
    ld b, d                                       ; $4d3f: $42
    ld b, d                                       ; $4d40: $42
    sub b                                         ; $4d41: $90
    add c                                         ; $4d42: $81
    push hl                                       ; $4d43: $e5
    or l                                          ; $4d44: $b5
    ld bc, $c180                                  ; $4d45: $01 $80 $c1
    nop                                           ; $4d48: $00
    ret nc                                        ; $4d49: $d0

    ld l, h                                       ; $4d4a: $6c
    rst $38                                       ; $4d4b: $ff
    pop hl                                        ; $4d4c: $e1
    ld a, [hl]                                    ; $4d4d: $7e
    db $eb                                        ; $4d4e: $eb
    ld l, h                                       ; $4d4f: $6c
    dec sp                                        ; $4d50: $3b
    ld c, h                                       ; $4d51: $4c
    ld c, h                                       ; $4d52: $4c
    pop bc                                        ; $4d53: $c1
    pop hl                                        ; $4d54: $e1
    dec bc                                        ; $4d55: $0b
    ld l, e                                       ; $4d56: $6b
    ld l, e                                       ; $4d57: $6b
    cp d                                          ; $4d58: $ba
    inc h                                         ; $4d59: $24
    or l                                          ; $4d5a: $b5
    call nz, Call_065_7b80                        ; $4d5b: $c4 $80 $7b
    nop                                           ; $4d5e: $00
    add b                                         ; $4d5f: $80
    push de                                       ; $4d60: $d5
    rrca                                          ; $4d61: $0f
    jr nz, jr_065_4d9d                            ; $4d62: $20 $39

    ld [bc], a                                    ; $4d64: $02
    inc [hl]                                      ; $4d65: $34
    ld [bc], a                                    ; $4d66: $02
    jp $0ce2                                      ; $4d67: $c3 $e2 $0c


    and c                                         ; $4d6a: $a1
    ld l, e                                       ; $4d6b: $6b
    nop                                           ; $4d6c: $00
    cp d                                          ; $4d6d: $ba
    inc hl                                        ; $4d6e: $23
    halt                                          ; $4d6f: $76
    push bc                                       ; $4d70: $c5
    halt                                          ; $4d71: $76
    inc h                                         ; $4d72: $24
    inc a                                         ; $4d73: $3c
    dec bc                                        ; $4d74: $0b
    rlca                                          ; $4d75: $07
    db $e4                                        ; $4d76: $e4
    adc [hl]                                      ; $4d77: $8e
    jr nz, @-$63                                  ; $4d78: $20 $9b

    nop                                           ; $4d7a: $00
    db $fd                                        ; $4d7b: $fd
    db $e4                                        ; $4d7c: $e4
    ld b, b                                       ; $4d7d: $40
    ld b, [hl]                                    ; $4d7e: $46
    inc h                                         ; $4d7f: $24
    cp d                                          ; $4d80: $ba
    ld h, b                                       ; $4d81: $60
    dec a                                         ; $4d82: $3d
    inc bc                                        ; $4d83: $03
    pop bc                                        ; $4d84: $c1
    and [hl]                                      ; $4d85: $a6
    add b                                         ; $4d86: $80
    ld a, [c]                                     ; $4d87: $f2
    add [hl]                                      ; $4d88: $86
    ld [c], a                                     ; $4d89: $e2
    ld l, h                                       ; $4d8a: $6c
    ld h, e                                       ; $4d8b: $63
    ldh [rNR10], a                                ; $4d8c: $e0 $10
    jr nz, @-$7e                                  ; $4d8e: $20 $80

    db $fc                                        ; $4d90: $fc
    ld [c], a                                     ; $4d91: $e2
    ld d, e                                       ; $4d92: $53
    ld h, b                                       ; $4d93: $60
    adc [hl]                                      ; $4d94: $8e
    add e                                         ; $4d95: $83
    dec hl                                        ; $4d96: $2b
    ret nz                                        ; $4d97: $c0

    ld [c], a                                     ; $4d98: $e2
    push af                                       ; $4d99: $f5
    ld h, l                                       ; $4d9a: $65
    ld a, d                                       ; $4d9b: $7a
    dec b                                         ; $4d9c: $05

jr_065_4d9d:
    ld b, b                                       ; $4d9d: $40
    ld a, [$e10b]                                 ; $4d9e: $fa $0b $e1
    ld bc, $e186                                  ; $4da1: $01 $86 $e1
    sbc c                                         ; $4da4: $99

jr_065_4da5:
    jr nz, jr_065_4d3f                            ; $4da5: $20 $98

    jr nz, jr_065_4da5                            ; $4da7: $20 $fc

    db $e3                                        ; $4da9: $e3
    dec l                                         ; $4daa: $2d
    ld c, d                                       ; $4dab: $4a
    and l                                         ; $4dac: $a5
    nop                                           ; $4dad: $00
    inc a                                         ; $4dae: $3c
    inc bc                                        ; $4daf: $03
    or [hl]                                       ; $4db0: $b6
    inc b                                         ; $4db1: $04
    ld a, d                                       ; $4db2: $7a
    inc de                                        ; $4db3: $13
    ld c, d                                       ; $4db4: $4a
    db $e3                                        ; $4db5: $e3
    add [hl]                                      ; $4db6: $86
    db $e3                                        ; $4db7: $e3
    jr jr_065_4ddf                                ; $4db8: $18 $25

    ret nz                                        ; $4dba: $c0

    ldh [$86], a                                  ; $4dbb: $e0 $86
    ld h, e                                       ; $4dbd: $63
    jr nz, @-$05                                  ; $4dbe: $20 $f9

    ld b, d                                       ; $4dc0: $42
    ld hl, sp+$0d                                 ; $4dc1: $f8 $0d
    ret nz                                        ; $4dc3: $c0

    db $ed                                        ; $4dc4: $ed
    db $fc                                        ; $4dc5: $fc
    rst $20                                       ; $4dc6: $e7
    sbc d                                         ; $4dc7: $9a
    ld h, $6d                                     ; $4dc8: $26 $6d
    ret z                                         ; $4dca: $c8

    adc b                                         ; $4dcb: $88
    cp d                                          ; $4dcc: $ba
    ld h, l                                       ; $4dcd: $65
    nop                                           ; $4dce: $00
    db $fc                                        ; $4dcf: $fc
    inc [hl]                                      ; $4dd0: $34
    and d                                         ; $4dd1: $a2
    add hl, bc                                    ; $4dd2: $09
    sub [hl]                                      ; $4dd3: $96
    ld b, $88                                     ; $4dd4: $06 $88
    ld h, [hl]                                    ; $4dd6: $66
    ld a, c                                       ; $4dd7: $79
    ld b, b                                       ; $4dd8: $40
    ld b, h                                       ; $4dd9: $44
    call nz, $8682                                ; $4dda: $c4 $82 $86
    nop                                           ; $4ddd: $00
    ld c, h                                       ; $4dde: $4c

jr_065_4ddf:
    inc c                                         ; $4ddf: $0c

Jump_065_4de0:
    xor h                                         ; $4de0: $ac
    ld a, [c]                                     ; $4de1: $f2
    ld c, c                                       ; $4de2: $49
    add [hl]                                      ; $4de3: $86
    ld l, e                                       ; $4de4: $6b
    ld c, e                                       ; $4de5: $4b
    inc b                                         ; $4de6: $04
    push bc                                       ; $4de7: $c5
    add d                                         ; $4de8: $82
    or e                                          ; $4de9: $b3
    ld a, [hl]                                    ; $4dea: $7e
    di                                            ; $4deb: $f3
    ret nz                                        ; $4dec: $c0

    rst $20                                       ; $4ded: $e7
    ld [bc], a                                    ; $4dee: $02
    ld a, l                                       ; $4def: $7d
    adc b                                         ; $4df0: $88
    dec c                                         ; $4df1: $0d
    add d                                         ; $4df2: $82
    add e                                         ; $4df3: $83
    inc [hl]                                      ; $4df4: $34
    add hl, de                                    ; $4df5: $19
    sbc d                                         ; $4df6: $9a
    ld b, $c2                                     ; $4df7: $06 $c2
    rst $28                                       ; $4df9: $ef
    ld [bc], a                                    ; $4dfa: $02
    ld [hl], h                                    ; $4dfb: $74
    nop                                           ; $4dfc: $00
    db $eb                                        ; $4dfd: $eb
    nop                                           ; $4dfe: $00
    ld h, d                                       ; $4dff: $62
    ld bc, $0296                                  ; $4e00: $01 $96 $02
    cp [hl]                                       ; $4e03: $be
    and b                                         ; $4e04: $a0
    ld bc, $42c1                                  ; $4e05: $01 $c1 $42
    ld h, l                                       ; $4e08: $65
    or e                                          ; $4e09: $b3
    ld [bc], a                                    ; $4e0a: $02
    add d                                         ; $4e0b: $82
    ld b, h                                       ; $4e0c: $44
    ld [bc], a                                    ; $4e0d: $02
    ld l, e                                       ; $4e0e: $6b
    nop                                           ; $4e0f: $00
    cp $d3                                        ; $4e10: $fe $d3
    xor $a0                                       ; $4e12: $ee $a0
    add d                                         ; $4e14: $82
    dec b                                         ; $4e15: $05
    ld a, [$c0a5]                                 ; $4e16: $fa $a5 $c0
    ld [c], a                                     ; $4e19: $e2
    ld a, [hl]                                    ; $4e1a: $7e
    rst $30                                       ; $4e1b: $f7
    ld l, h                                       ; $4e1c: $6c
    and c                                         ; $4e1d: $a1
    db $fc                                        ; $4e1e: $fc
    push hl                                       ; $4e1f: $e5
    nop                                           ; $4e20: $00
    ld a, d                                       ; $4e21: $7a
    and d                                         ; $4e22: $a2
    dec c                                         ; $4e23: $0d
    ld b, c                                       ; $4e24: $41
    add c                                         ; $4e25: $81
    rst $20                                       ; $4e26: $e7
    ld [bc], a                                    ; $4e27: $02
    ld b, d                                       ; $4e28: $42
    inc b                                         ; $4e29: $04
    ld l, a                                       ; $4e2a: $6f
    ld c, $c8                                     ; $4e2b: $0e $c8
    cp h                                          ; $4e2d: $bc
    add sp, $7a                                   ; $4e2e: $e8 $7a
    and c                                         ; $4e30: $a1
    ld [$e23e], sp                                ; $4e31: $08 $3e $e2
    add hl, bc                                    ; $4e34: $09
    ld b, e                                       ; $4e35: $43
    inc [hl]                                      ; $4e36: $34
    and h                                         ; $4e37: $a4
    dec c                                         ; $4e38: $0d
    add b                                         ; $4e39: $80
    db $f4                                        ; $4e3a: $f4
    ld l, b                                       ; $4e3b: $68
    ld bc, $092c                                  ; $4e3c: $01 $2c $09
    ld a, [hl]                                    ; $4e3f: $7e
    and h                                         ; $4e40: $a4
    inc c                                         ; $4e41: $0c
    db $fc                                        ; $4e42: $fc
    add c                                         ; $4e43: $81
    ret nz                                        ; $4e44: $c0

    ld l, b                                       ; $4e45: $68
    dec c                                         ; $4e46: $0d
    dec l                                         ; $4e47: $2d
    add d                                         ; $4e48: $82
    push bc                                       ; $4e49: $c5
    ld [bc], a                                    ; $4e4a: $02
    rst $38                                       ; $4e4b: $ff
    ld a, [hl+]                                   ; $4e4c: $2a
    and h                                         ; $4e4d: $a4
    cp [hl]                                       ; $4e4e: $be
    inc h                                         ; $4e4f: $24
    nop                                           ; $4e50: $00
    ld a, [$8483]                                 ; $4e51: $fa $83 $84
    inc de                                        ; $4e54: $13
    ld a, $a7                                     ; $4e55: $3e $a7
    ld l, [hl]                                    ; $4e57: $6e
    xor [hl]                                      ; $4e58: $ae
    xor d                                         ; $4e59: $aa
    add c                                         ; $4e5a: $81
    jp $bca0                                      ; $4e5b: $c3 $a0 $bc


    ld h, b                                       ; $4e5e: $60
    cp c                                          ; $4e5f: $b9
    ld h, b                                       ; $4e60: $60
    add hl, bc                                    ; $4e61: $09
    ld c, e                                       ; $4e62: $4b
    inc b                                         ; $4e63: $04
    add $00                                       ; $4e64: $c6 $00
    pop af                                        ; $4e66: $f1
    ld c, l                                       ; $4e67: $4d
    xor b                                         ; $4e68: $a8
    sub h                                         ; $4e69: $94
    cp a                                          ; $4e6a: $bf
    ldh [rIE], a                                  ; $4e6b: $e0 $ff
    db $e3                                        ; $4e6d: $e3
    pop bc                                        ; $4e6e: $c1
    ldh [rP1], a                                  ; $4e6f: $e0 $00
    ret c                                         ; $4e71: $d8

    ret                                           ; $4e72: $c9


    jp nc, Jump_000_2eae                          ; $4e73: $d2 $ae $2e

    xor $fc                                       ; $4e76: $ee $fc
    add $86                                       ; $4e78: $c6 $86
    xor h                                         ; $4e7a: $ac
    inc b                                         ; $4e7b: $04
    rst $08                                       ; $4e7c: $cf
    ld [hl], c                                    ; $4e7d: $71
    cp c                                          ; $4e7e: $b9
    rst $20                                       ; $4e7f: $e7
    ld h, h                                       ; $4e80: $64
    nop                                           ; $4e81: $00
    push hl                                       ; $4e82: $e5
    ld h, b                                       ; $4e83: $60
    ld c, [hl]                                    ; $4e84: $4e
    cp a                                          ; $4e85: $bf
    inc [hl]                                      ; $4e86: $34
    call Call_065_64f8                            ; $4e87: $cd $f8 $64
    add sp, $6a                                   ; $4e8a: $e8 $6a
    inc b                                         ; $4e8c: $04
    push de                                       ; $4e8d: $d5
    db $f4                                        ; $4e8e: $f4
    or c                                          ; $4e8f: $b1
    and h                                         ; $4e90: $a4
    ld h, h                                       ; $4e91: $64
    nop                                           ; $4e92: $00
    and d                                         ; $4e93: $a2
    ret nc                                        ; $4e94: $d0

    add b                                         ; $4e95: $80
    dec l                                         ; $4e96: $2d
    nop                                           ; $4e97: $00
    nop                                           ; $4e98: $00
    nop                                           ; $4e99: $00
    ld l, a                                       ; $4e9a: $6f
    and b                                         ; $4e9b: $a0
    and b                                         ; $4e9c: $a0
    ret c                                         ; $4e9d: $d8

    reti                                          ; $4e9e: $d9


    db $fc                                        ; $4e9f: $fc
    di                                            ; $4ea0: $f3
    jp nc, $fcd3                                  ; $4ea1: $d2 $d3 $fc

    db $eb                                        ; $4ea4: $eb
    xor $d8                                       ; $4ea5: $ee $d8
    db $e4                                        ; $4ea7: $e4
    call c, $dedd                                 ; $4ea8: $dc $dd $de
    db $fc                                        ; $4eab: $fc
    jp hl                                         ; $4eac: $e9


    sub $d7                                       ; $4ead: $d6 $d7
    jp c, $dbfd                                   ; $4eaf: $da $fd $db

    db $fc                                        ; $4eb2: $fc
    pop af                                        ; $4eb3: $f1
    ret nc                                        ; $4eb4: $d0

    pop de                                        ; $4eb5: $d1
    call nc, $a0d5                                ; $4eb6: $d4 $d5 $a0
    and b                                         ; $4eb9: $a0
    or $fc                                        ; $4eba: $f6 $fc
    rst $20                                       ; $4ebc: $e7
    ret nc                                        ; $4ebd: $d0

    pop de                                        ; $4ebe: $d1
    ret c                                         ; $4ebf: $d8

    db $e3                                        ; $4ec0: $e3
    rst $18                                       ; $4ec1: $df
    ldh [$e1], a                                  ; $4ec2: $e0 $e1
    ld [c], a                                     ; $4ec4: $e2
    cp h                                          ; $4ec5: $bc
    db $fc                                        ; $4ec6: $fc
    jp hl                                         ; $4ec7: $e9


    add d                                         ; $4ec8: $82
    ld sp, hl                                     ; $4ec9: $f9
    and b                                         ; $4eca: $a0
    sbc a                                         ; $4ecb: $9f
    and d                                         ; $4ecc: $a2
    sbc l                                         ; $4ecd: $9d
    rst $38                                       ; $4ece: $ff
    ldh [$a2], a                                  ; $4ecf: $e0 $a2
    ld a, c                                       ; $4ed1: $79
    sbc a                                         ; $4ed2: $9f
    push af                                       ; $4ed3: $f5
    ldh [$7e], a                                  ; $4ed4: $e0 $7e
    push hl                                       ; $4ed6: $e5
    db $e3                                        ; $4ed7: $e3
    db $e4                                        ; $4ed8: $e4
    push hl                                       ; $4ed9: $e5
    and $fc                                       ; $4eda: $e6 $fc
    jp hl                                         ; $4edc: $e9


    ld l, $82                                     ; $4edd: $2e $82
    ld sp, hl                                     ; $4edf: $f9
    sbc a                                         ; $4ee0: $9f
    sbc h                                         ; $4ee1: $9c
    ld b, [hl]                                    ; $4ee2: $46
    rst $38                                       ; $4ee3: $ff
    ld [c], a                                     ; $4ee4: $e2
    sbc h                                         ; $4ee5: $9c
    cp a                                          ; $4ee6: $bf
    ldh [$7e], a                                  ; $4ee7: $e0 $7e
    db $e3                                        ; $4ee9: $e3
    ccf                                           ; $4eea: $3f
    and b                                         ; $4eeb: $a0
    and b                                         ; $4eec: $a0
    rst $20                                       ; $4eed: $e7
    add sp, -$17                                  ; $4eee: $e8 $e9
    ld [$e9fc], a                                 ; $4ef0: $ea $fc $e9
    inc b                                         ; $4ef3: $04
    or $7f                                        ; $4ef4: $f6 $7f
    sbc a                                         ; $4ef6: $9f
    sbc l                                         ; $4ef7: $9d
    sbc l                                         ; $4ef8: $9d
    sbc h                                         ; $4ef9: $9c
    xor [hl]                                      ; $4efa: $ae
    ld b, [hl]                                    ; $4efb: $46
    ld b, [hl]                                    ; $4efc: $46
    db $fd                                        ; $4efd: $fd
    ld [c], a                                     ; $4efe: $e2
    ld a, b                                       ; $4eff: $78
    cp a                                          ; $4f00: $bf
    pop hl                                        ; $4f01: $e1
    ld l, [hl]                                    ; $4f02: $6e
    db $e3                                        ; $4f03: $e3
    ld [bc], a                                    ; $4f04: $02
    db $ec                                        ; $4f05: $ec
    and b                                         ; $4f06: $a0
    call c, $a0a0                                 ; $4f07: $dc $a0 $a0
    xor d                                         ; $4f0a: $aa
    pop hl                                        ; $4f0b: $e1
    sub [hl]                                      ; $4f0c: $96
    db $fc                                        ; $4f0d: $fc
    db $ed                                        ; $4f0e: $ed
    call nc, $84d5                                ; $4f0f: $d4 $d5 $84
    ld [c], a                                     ; $4f12: $e2
    xor a                                         ; $4f13: $af
    db $fd                                        ; $4f14: $fd
    push hl                                       ; $4f15: $e5
    ld a, [hl]                                    ; $4f16: $7e
    db $e3                                        ; $4f17: $e3
    sub $4d                                       ; $4f18: $d6 $4d
    rst $10                                       ; $4f1a: $d7
    ld [bc], a                                    ; $4f1b: $02
    db $ed                                        ; $4f1c: $ed
    rst $18                                       ; $4f1d: $df
    ldh [rNR30], a                                ; $4f1e: $e0 $1a
    ldh [$fd], a                                  ; $4f20: $e0 $fd
    ld a, [c]                                     ; $4f22: $f2
    and c                                         ; $4f23: $a1
    add l                                         ; $4f24: $85
    ld [c], a                                     ; $4f25: $e2
    cp a                                          ; $4f26: $bf
    ld b, [hl]                                    ; $4f27: $46
    ld b, l                                       ; $4f28: $45
    ld c, b                                       ; $4f29: $48
    ld c, b                                       ; $4f2a: $48
    ld d, b                                       ; $4f2b: $50
    ld b, l                                       ; $4f2c: $45
    ld a, e                                       ; $4f2d: $7b
    ldh [$9e], a                                  ; $4f2e: $e0 $9e
    ld [hl], $d8                                  ; $4f30: $36 $d8
    pop hl                                        ; $4f32: $e1
    ret c                                         ; $4f33: $d8

    reti                                          ; $4f34: $d9


    ld [bc], a                                    ; $4f35: $02
    db $ed                                        ; $4f36: $ed
    db $e3                                        ; $4f37: $e3
    db $e4                                        ; $4f38: $e4
    ret nz                                        ; $4f39: $c0

    pop hl                                        ; $4f3a: $e1
    ld d, l                                       ; $4f3b: $55
    ldh [$f8], a                                  ; $4f3c: $e0 $f8
    cp $ea                                        ; $4f3e: $fe $ea
    jp z, Jump_000_05c1                           ; $4f40: $ca $c1 $05

    ldh [$af], a                                  ; $4f43: $e0 $af
    ld b, [hl]                                    ; $4f45: $46
    ld b, l                                       ; $4f46: $45
    ld b, e                                       ; $4f47: $43
    ld b, a                                       ; $4f48: $47
    ccf                                           ; $4f49: $3f
    ld h, b                                       ; $4f4a: $60
    ld h, b                                       ; $4f4b: $60
    ld e, l                                       ; $4f4c: $5d
    ld d, d                                       ; $4f4d: $52
    ld b, l                                       ; $4f4e: $45
    xor a                                         ; $4f4f: $af
    db $fd                                        ; $4f50: $fd
    pop bc                                        ; $4f51: $c1
    ld a, [hl]                                    ; $4f52: $7e
    pop bc                                        ; $4f53: $c1
    xor [hl]                                      ; $4f54: $ae
    ld [bc], a                                    ; $4f55: $02
    db $ed                                        ; $4f56: $ed
    rst $20                                       ; $4f57: $e7
    add sp, $07                                   ; $4f58: $e8 $07
    rst $38                                       ; $4f5a: $ff
    di                                            ; $4f5b: $f3
    ld [bc], a                                    ; $4f5c: $02
    add h                                         ; $4f5d: $84
    pop hl                                        ; $4f5e: $e1
    ld d, b                                       ; $4f5f: $50
    rst $38                                       ; $4f60: $ff
    ld b, a                                       ; $4f61: $47
    ld c, c                                       ; $4f62: $49
    ld d, e                                       ; $4f63: $53
    ld e, c                                       ; $4f64: $59
    ld e, c                                       ; $4f65: $59
    ld d, h                                       ; $4f66: $54
    ld h, c                                       ; $4f67: $61
    ld e, h                                       ; $4f68: $5c
    ld d, d                                       ; $4f69: $52
    cp c                                          ; $4f6a: $b9
    ret nz                                        ; $4f6b: $c0

    and c                                         ; $4f6c: $a1
    ld l, [hl]                                    ; $4f6d: $6e
    jp $cefe                                      ; $4f6e: $c3 $fe $ce


    sbc b                                         ; $4f71: $98
    rst $38                                       ; $4f72: $ff
    ldh [$99], a                                  ; $4f73: $e0 $99
    ei                                            ; $4f75: $fb
    pop hl                                        ; $4f76: $e1
    cp $f8                                        ; $4f77: $fe $f8
    rst $20                                       ; $4f79: $e7
    sbc c                                         ; $4f7a: $99
    sbc c                                         ; $4f7b: $99
    sbc c                                         ; $4f7c: $99
    nop                                           ; $4f7d: $00
    ld bc, $0207                                  ; $4f7e: $01 $07 $02
    rst $38                                       ; $4f81: $ff
    ld b, l                                       ; $4f82: $45
    ld b, a                                       ; $4f83: $47
    ld d, h                                       ; $4f84: $54
    ld d, e                                       ; $4f85: $53
    dec hl                                        ; $4f86: $2b
    inc l                                         ; $4f87: $2c
    jr nz, jr_065_4faa                            ; $4f88: $20 $20

    ld h, a                                       ; $4f8a: $67
    dec l                                         ; $4f8b: $2d
    ld d, [hl]                                    ; $4f8c: $56
    ld b, l                                       ; $4f8d: $45
    cp [hl]                                       ; $4f8e: $be
    jp nz, $e100                                  ; $4f8f: $c2 $00 $e1

    and b                                         ; $4f92: $a0
    and b                                         ; $4f93: $a0
    nop                                           ; $4f94: $00
    call $9787                                    ; $4f95: $cd $87 $97
    sub a                                         ; $4f98: $97
    sub a                                         ; $4f99: $97
    cp l                                          ; $4f9a: $bd
    ldh [$fa], a                                  ; $4f9b: $e0 $fa
    ldh [$f8], a                                  ; $4f9d: $e0 $f8
    and $ae                                       ; $4f9f: $e6 $ae
    ld [c], a                                     ; $4fa1: $e2
    ld bc, $00ff                                  ; $4fa2: $01 $ff $00
    ld [$5644], sp                                ; $4fa5: $08 $44 $56
    ld b, e                                       ; $4fa8: $43
    scf                                           ; $4fa9: $37

jr_065_4faa:
    jr nc, jr_065_4fcc                            ; $4faa: $30 $20

    ld h, d                                       ; $4fac: $62
    ret nz                                        ; $4fad: $c0

    ldh [rSCX], a                                 ; $4fae: $e0 $43
    cp b                                          ; $4fb0: $b8
    ret nz                                        ; $4fb1: $c0

    nop                                           ; $4fb2: $00
    db $e4                                        ; $4fb3: $e4
    nop                                           ; $4fb4: $00
    rst $08                                       ; $4fb5: $cf
    sub [hl]                                      ; $4fb6: $96
    sub [hl]                                      ; $4fb7: $96
    call nz, $f9e2                                ; $4fb8: $c4 $e2 $f9
    sub [hl]                                      ; $4fbb: $96
    ld hl, sp-$1a                                 ; $4fbc: $f8 $e6
    or [hl]                                       ; $4fbe: $b6
    db $e3                                        ; $4fbf: $e3
    sbc c                                         ; $4fc0: $99
    sbc c                                         ; $4fc1: $99
    ld [$4345], sp                                ; $4fc2: $08 $45 $43
    ccf                                           ; $4fc5: $3f
    ld [hl], $35                                  ; $4fc6: $36 $35
    ld [hl+], a                                   ; $4fc8: $22
    jr z, jr_065_4ffc                             ; $4fc9: $28 $31

    dec hl                                        ; $4fcb: $2b

jr_065_4fcc:
    add d                                         ; $4fcc: $82
    ldh [$fe], a                                  ; $4fcd: $e0 $fe
    and d                                         ; $4fcf: $a2
    add d                                         ; $4fd0: $82
    nop                                           ; $4fd1: $00
    db $d3                                        ; $4fd2: $d3
    sub l                                         ; $4fd3: $95
    add $e1                                       ; $4fd4: $c6 $e1
    jp nz, $f8e0                                  ; $4fd6: $c2 $e0 $f8

    push hl                                       ; $4fd9: $e5
    or b                                          ; $4fda: $b0
    pop hl                                        ; $4fdb: $e1
    dec a                                         ; $4fdc: $3d
    ld [c], a                                     ; $4fdd: $e2
    ld [$46ff], sp                                ; $4fde: $08 $ff $46
    ld b, h                                       ; $4fe1: $44
    inc a                                         ; $4fe2: $3c
    dec [hl]                                      ; $4fe3: $35
    dec [hl]                                      ; $4fe4: $35
    ld a, [hl-]                                   ; $4fe5: $3a
    ld b, l                                       ; $4fe6: $45
    xor [hl]                                      ; $4fe7: $ae
    add hl, de                                    ; $4fe8: $19
    xor [hl]                                      ; $4fe9: $ae
    jp nz, Jump_000_00c2                          ; $4fea: $c2 $c2 $00

    push de                                       ; $4fed: $d5
    sub l                                         ; $4fee: $95
    sub l                                         ; $4fef: $95
    cp [hl]                                       ; $4ff0: $be
    pop hl                                        ; $4ff1: $e1
    ld a, [$f8e0]                                 ; $4ff2: $fa $e0 $f8
    db $e4                                        ; $4ff5: $e4
    db $fc                                        ; $4ff6: $fc
    ld [hl], b                                    ; $4ff7: $70
    ldh [$ef], a                                  ; $4ff8: $e0 $ef
    ret nz                                        ; $4ffa: $c0

    nop                                           ; $4ffb: $00

jr_065_4ffc:
    ld bc, $020f                                  ; $4ffc: $01 $0f $02
    ld b, l                                       ; $4fff: $45
    ld [hl], $bf                                  ; $5000: $36 $bf
    dec [hl]                                      ; $5002: $35
    dec [hl]                                      ; $5003: $35
    dec [hl]                                      ; $5004: $35
    add hl, sp                                    ; $5005: $39
    xor [hl]                                      ; $5006: $ae
    xor a                                         ; $5007: $af
    ei                                            ; $5008: $fb
    and b                                         ; $5009: $a0
    and c                                         ; $500a: $a1
    add b                                         ; $500b: $80
    add d                                         ; $500c: $82
    pop hl                                        ; $500d: $e1
    nop                                           ; $500e: $00
    db $d3                                        ; $500f: $d3
    add $e2                                       ; $5010: $c6 $e2
    ei                                            ; $5012: $fb
    rst $20                                       ; $5013: $e7
    add c                                         ; $5014: $81
    ld [c], a                                     ; $5015: $e2
    ld [bc], a                                    ; $5016: $02
    ldh [$c1], a                                  ; $5017: $e0 $c1
    db $e4                                        ; $5019: $e4
    ld a, [hl-]                                   ; $501a: $3a
    nop                                           ; $501b: $00
    ld b, l                                       ; $501c: $45
    ret nz                                        ; $501d: $c0

    ld b, b                                       ; $501e: $40
    and e                                         ; $501f: $a3
    ld a, [hl]                                    ; $5020: $7e
    add e                                         ; $5021: $83
    nop                                           ; $5022: $00
    rst $08                                       ; $5023: $cf
    add h                                         ; $5024: $84
    jp hl                                         ; $5025: $e9


    cp a                                          ; $5026: $bf
    db $e4                                        ; $5027: $e4
    ld l, a                                       ; $5028: $6f
    ret nz                                        ; $5029: $c0

    add d                                         ; $502a: $82
    db $e4                                        ; $502b: $e4
    ld e, $81                                     ; $502c: $1e $81
    ldh [rDMA], a                                 ; $502e: $e0 $46
    sbc h                                         ; $5030: $9c
    sbc l                                         ; $5031: $9d
    sbc l                                         ; $5032: $9d
    inc b                                         ; $5033: $04
    pop bc                                        ; $5034: $c1
    add d                                         ; $5035: $82
    and c                                         ; $5036: $a1
    nop                                           ; $5037: $00
    pop de                                        ; $5038: $d1
    db $fc                                        ; $5039: $fc
    inc b                                         ; $503a: $04
    db $eb                                        ; $503b: $eb
    ld a, a                                       ; $503c: $7f
    db $e4                                        ; $503d: $e4
    sbc b                                         ; $503e: $98
    ld [$7a79], sp                                ; $503f: $08 $79 $7a
    ld h, l                                       ; $5042: $65
    ld h, [hl]                                    ; $5043: $66
    add $41                                       ; $5044: $c6 $41
    ldh [rSCY], a                                 ; $5046: $e0 $42
    xor a                                         ; $5048: $af
    ld b, h                                       ; $5049: $44
    pop hl                                        ; $504a: $e1
    nop                                           ; $504b: $00
    add [hl]                                      ; $504c: $86
    ld [bc], a                                    ; $504d: $02
    xor [hl]                                      ; $504e: $ae
    db $dd                                        ; $504f: $dd
    sbc $f2                                       ; $5050: $de $f2
    add h                                         ; $5052: $84
    ret z                                         ; $5053: $c8

    sub a                                         ; $5054: $97
    ld sp, hl                                     ; $5055: $f9
    pop bc                                        ; $5056: $c1
    pop bc                                        ; $5057: $c1
    jp nz, Jump_000_020f                          ; $5058: $c2 $0f $02

    ld a, [hl]                                    ; $505b: $7e
    ld b, d                                       ; $505c: $42
    ld a, a                                       ; $505d: $7f

jr_065_505e:
    dec [hl]                                      ; $505e: $35
    ld l, b                                       ; $505f: $68
    ld h, [hl]                                    ; $5060: $66
    dec [hl]                                      ; $5061: $35
    inc a                                         ; $5062: $3c
    ld b, h                                       ; $5063: $44
    ld b, [hl]                                    ; $5064: $46
    ld b, [hl]                                    ; $5065: $46
    and c                                         ; $5066: $a1
    call z, $e582                                 ; $5067: $cc $82 $e5
    ld [bc], a                                    ; $506a: $02
    xor a                                         ; $506b: $af
    pop hl                                        ; $506c: $e1
    ld [c], a                                     ; $506d: $e2
    inc b                                         ; $506e: $04
    ret z                                         ; $506f: $c8

    pop bc                                        ; $5070: $c1
    rst $00                                       ; $5071: $c7
    ld [$1f80], sp                                ; $5072: $08 $80 $1f
    ld b, [hl]                                    ; $5075: $46
    add hl, sp                                    ; $5076: $39
    dec [hl]                                      ; $5077: $35
    dec [hl]                                      ; $5078: $35
    ld l, d                                       ; $5079: $6a
    add b                                         ; $507a: $80
    ldh [$c0], a                                  ; $507b: $e0 $c0
    ld [c], a                                     ; $507d: $e2
    inc b                                         ; $507e: $04
    sub l                                         ; $507f: $95
    ldh a, [$f4]                                  ; $5080: $f0 $f4
    ld h, c                                       ; $5082: $61
    jp nz, Jump_065_7ba2                          ; $5083: $c2 $a2 $7b

    and c                                         ; $5086: $a1
    add c                                         ; $5087: $81
    rst $20                                       ; $5088: $e7
    nop                                           ; $5089: $00
    ld bc, $8008                                  ; $508a: $01 $08 $80
    rst $38                                       ; $508d: $ff
    ld b, l                                       ; $508e: $45
    ld a, [hl-]                                   ; $508f: $3a
    dec [hl]                                      ; $5090: $35
    ld l, h                                       ; $5091: $6c
    ld l, l                                       ; $5092: $6d
    xor h                                         ; $5093: $ac
    inc a                                         ; $5094: $3c
    ld b, h                                       ; $5095: $44
    jr jr_065_505e                                ; $5096: $18 $c6

    add d                                         ; $5098: $82
    add d                                         ; $5099: $82
    ld h, l                                       ; $509a: $65
    ld [bc], a                                    ; $509b: $02
    xor a                                         ; $509c: $af
    jp hl                                         ; $509d: $e9


    ld [$a480], a                                 ; $509e: $ea $80 $a4
    pop bc                                        ; $50a1: $c1
    pop hl                                        ; $50a2: $e1
    ld b, d                                       ; $50a3: $42
    add $ff                                       ; $50a4: $c6 $ff
    rrca                                          ; $50a6: $0f
    ld [bc], a                                    ; $50a7: $02
    adc l                                         ; $50a8: $8d
    ld b, h                                       ; $50a9: $44
    inc a                                         ; $50aa: $3c
    ld l, h                                       ; $50ab: $6c
    ld l, a                                       ; $50ac: $6f
    ld l, [hl]                                    ; $50ad: $6e
    ld bc, $00ad                                  ; $50ae: $01 $ad $00
    pop hl                                        ; $50b1: $e1
    inc b                                         ; $50b2: $04
    add [hl]                                      ; $50b3: $86
    ret c                                         ; $50b4: $d8

    ld b, c                                       ; $50b5: $41
    cp $8f                                        ; $50b6: $fe $8f
    adc a                                         ; $50b8: $8f
    and l                                         ; $50b9: $a5
    ld [bc], a                                    ; $50ba: $02
    rst $20                                       ; $50bb: $e7
    add l                                         ; $50bc: $85
    and b                                         ; $50bd: $a0
    db $dd                                        ; $50be: $dd
    add b                                         ; $50bf: $80
    inc b                                         ; $50c0: $04
    ret nz                                        ; $50c1: $c0

    ld l, d                                       ; $50c2: $6a
    ld l, [hl]                                    ; $50c3: $6e
    xor h                                         ; $50c4: $ac
    nop                                           ; $50c5: $00
    ld [c], a                                     ; $50c6: $e2
    ld b, [hl]                                    ; $50c7: $46
    sbc h                                         ; $50c8: $9c
    inc c                                         ; $50c9: $0c
    ld b, b                                       ; $50ca: $40
    ld h, b                                       ; $50cb: $60
    nop                                           ; $50cc: $00
    ld h, l                                       ; $50cd: $65
    and b                                         ; $50ce: $a0
    and b                                         ; $50cf: $a0
    db $fc                                        ; $50d0: $fc
    ld l, l                                       ; $50d1: $6d
    add b                                         ; $50d2: $80
    and c                                         ; $50d3: $a1
    call $81a0                                    ; $50d4: $cd $a0 $81
    rst $20                                       ; $50d7: $e7
    ld a, [hl-]                                   ; $50d8: $3a
    dec b                                         ; $50d9: $05
    and c                                         ; $50da: $a1
    add b                                         ; $50db: $80
    add l                                         ; $50dc: $85
    and b                                         ; $50dd: $a0
    ld [hl], e                                    ; $50de: $73
    dec [hl]                                      ; $50df: $35
    xor l                                         ; $50e0: $ad
    add d                                         ; $50e1: $82
    and b                                         ; $50e2: $a0
    ld b, b                                       ; $50e3: $40
    ld h, [hl]                                    ; $50e4: $66
    ld b, b                                       ; $50e5: $40
    ld a, [hl]                                    ; $50e6: $7e
    ld b, a                                       ; $50e7: $47
    cp $4b                                        ; $50e8: $fe $4b
    add a                                         ; $50ea: $87
    and d                                         ; $50eb: $a2
    add b                                         ; $50ec: $80
    pop hl                                        ; $50ed: $e1
    add e                                         ; $50ee: $83
    add $80                                       ; $50ef: $c6 $80
    pop hl                                        ; $50f1: $e1
    ld b, d                                       ; $50f2: $42
    jp nz, $0fc0                                  ; $50f3: $c2 $c0 $0f

    xor h                                         ; $50f6: $ac
    dec [hl]                                      ; $50f7: $35
    dec [hl]                                      ; $50f8: $35
    ld a, $00                                     ; $50f9: $3e $00
    ld h, b                                       ; $50fb: $60
    cp d                                          ; $50fc: $ba
    ld h, c                                       ; $50fd: $61
    add d                                         ; $50fe: $82
    add d                                         ; $50ff: $82
    ld a, [hl]                                    ; $5100: $7e
    ld b, l                                       ; $5101: $45
    ret nz                                        ; $5102: $c0

    cp $4b                                        ; $5103: $fe $4b
    ret nz                                        ; $5105: $c0

    db $e3                                        ; $5106: $e3
    nop                                           ; $5107: $00
    ldh [$03], a                                  ; $5108: $e0 $03
    rst $00                                       ; $510a: $c7
    add c                                         ; $510b: $81
    ret nz                                        ; $510c: $c0

    dec b                                         ; $510d: $05
    and b                                         ; $510e: $a0
    ld l, d                                       ; $510f: $6a
    xor l                                         ; $5110: $ad
    add b                                         ; $5111: $80
    ld [bc], a                                    ; $5112: $02
    and c                                         ; $5113: $a1
    inc a                                         ; $5114: $3c
    ld h, d                                       ; $5115: $62
    dec sp                                        ; $5116: $3b
    jp nz, $b4fc                                  ; $5117: $c2 $fc $b4

    ret nz                                        ; $511a: $c0

    and $02                                       ; $511b: $e6 $02
    call nz, $e680                                ; $511d: $c4 $80 $e6
    ld [hl], l                                    ; $5120: $75
    ld [bc], a                                    ; $5121: $02
    ret nz                                        ; $5122: $c0

    and c                                         ; $5123: $a1
    ld [hl], $3f                                  ; $5124: $36 $3f
    db $e3                                        ; $5126: $e3
    ld a, [hl]                                    ; $5127: $7e
    ld c, b                                       ; $5128: $48
    nop                                           ; $5129: $00
    ld c, l                                       ; $512a: $4d
    ld c, l                                       ; $512b: $4d
    and l                                         ; $512c: $a5
    nop                                           ; $512d: $00
    rst $20                                       ; $512e: $e7
    ld b, c                                       ; $512f: $41
    call nz, Call_000_3f0e                        ; $5130: $c4 $0e $3f
    ld [c], a                                     ; $5133: $e2
    dec [hl]                                      ; $5134: $35
    jr c, jr_065_516e                             ; $5135: $38 $37

    db $fd                                        ; $5137: $fd
    ret nz                                        ; $5138: $c0

    ccf                                           ; $5139: $3f
    add c                                         ; $513a: $81
    ei                                            ; $513b: $fb
    ld hl, $216e                                  ; $513c: $21 $6e $21
    nop                                           ; $513f: $00
    nop                                           ; $5140: $00
    ld c, l                                       ; $5141: $4d
    add c                                         ; $5142: $81
    db $ec                                        ; $5143: $ec
    nop                                           ; $5144: $00
    db $e4                                        ; $5145: $e4
    pop bc                                        ; $5146: $c1
    and d                                         ; $5147: $a2
    ccf                                           ; $5148: $3f
    ldh [$7d], a                                  ; $5149: $e0 $7d
    db $e3                                        ; $514b: $e3
    dec a                                         ; $514c: $3d
    ld [c], a                                     ; $514d: $e2
    ld a, [hl]                                    ; $514e: $7e
    ld h, h                                       ; $514f: $64
    jr c, jr_065_5152                             ; $5150: $38 $00

jr_065_5152:
    adc [hl]                                      ; $5152: $8e
    add b                                         ; $5153: $80
    db $ec                                        ; $5154: $ec
    ld [hl], d                                    ; $5155: $72
    ld h, c                                       ; $5156: $61
    ld [$8382], sp                                ; $5157: $08 $82 $83
    inc b                                         ; $515a: $04
    add b                                         ; $515b: $80
    ccf                                           ; $515c: $3f
    ldh [$80], a                                  ; $515d: $e0 $80
    ld a, [hl]                                    ; $515f: $7e
    pop hl                                        ; $5160: $e1
    inc a                                         ; $5161: $3c
    ld [$a2fc], a                                 ; $5162: $ea $fc $a2
    nop                                           ; $5165: $00
    adc l                                         ; $5166: $8d
    nop                                           ; $5167: $00
    jp hl                                         ; $5168: $e9


    ld [hl], d                                    ; $5169: $72
    ld h, c                                       ; $516a: $61
    ld bc, $8ba0                                  ; $516b: $01 $a0 $8b

jr_065_516e:
    ld l, b                                       ; $516e: $68
    ld a, a                                       ; $516f: $7f
    ret nz                                        ; $5170: $c0

    rst $38                                       ; $5171: $ff
    add b                                         ; $5172: $80
    ld a, [hl]                                    ; $5173: $7e
    db $e3                                        ; $5174: $e3
    add hl, sp                                    ; $5175: $39
    ld a, d                                       ; $5176: $7a
    inc hl                                        ; $5177: $23
    ld b, [hl]                                    ; $5178: $46
    sbc [hl]                                      ; $5179: $9e
    db $fc                                        ; $517a: $fc
    inc bc                                        ; $517b: $03
    nop                                           ; $517c: $00
    nop                                           ; $517d: $00
    adc a                                         ; $517e: $8f
    rst $38                                       ; $517f: $ff
    rst $00                                       ; $5180: $c7
    add c                                         ; $5181: $81
    add l                                         ; $5182: $85
    cp a                                          ; $5183: $bf
    and c                                         ; $5184: $a1
    rst $38                                       ; $5185: $ff
    add d                                         ; $5186: $82
    dec sp                                        ; $5187: $3b
    add c                                         ; $5188: $81
    ld a, [$f4a1]                                 ; $5189: $fa $a1 $f4
    ld hl, $9e41                                  ; $518c: $21 $41 $9e
    db $fc                                        ; $518f: $fc
    ld [hl], c                                    ; $5190: $71
    add c                                         ; $5191: $81
    ld h, d                                       ; $5192: $62
    cp $cd                                        ; $5193: $fe $cd
    ret nz                                        ; $5195: $c0

    add b                                         ; $5196: $80
    add d                                         ; $5197: $82
    ld h, c                                       ; $5198: $61
    ld l, d                                       ; $5199: $6a
    ccf                                           ; $519a: $3f
    db $e3                                        ; $519b: $e3
    ld b, d                                       ; $519c: $42
    db $fd                                        ; $519d: $fd
    push bc                                       ; $519e: $c5
    and c                                         ; $519f: $a1
    ld a, d                                       ; $51a0: $7a
    inc bc                                        ; $51a1: $03
    cp $0b                                        ; $51a2: $fe $0b
    rst $00                                       ; $51a4: $c7
    ld b, l                                       ; $51a5: $45
    add c                                         ; $51a6: $81
    adc c                                         ; $51a7: $89
    sbc c                                         ; $51a8: $99
    rst $38                                       ; $51a9: $ff
    ret nz                                        ; $51aa: $c0

    ld [bc], a                                    ; $51ab: $02
    ld [bc], a                                    ; $51ac: $02
    ld h, c                                       ; $51ad: $61
    ld [hl], l                                    ; $51ae: $75
    ccf                                           ; $51af: $3f
    db $e4                                        ; $51b0: $e4
    add hl, sp                                    ; $51b1: $39
    call nz, Call_000_00b9                        ; $51b2: $c4 $b9 $00
    db $fc                                        ; $51b5: $fc
    cpl                                           ; $51b6: $2f
    ld c, [hl]                                    ; $51b7: $4e
    ld b, l                                       ; $51b8: $45
    ld a, a                                       ; $51b9: $7f
    and a                                         ; $51ba: $a7
    ld b, [hl]                                    ; $51bb: $46
    ld b, d                                       ; $51bc: $42
    ld h, d                                       ; $51bd: $62
    adc e                                         ; $51be: $8b
    ld b, [hl]                                    ; $51bf: $46
    cp $c1                                        ; $51c0: $fe $c1
    ccf                                           ; $51c2: $3f
    db $e4                                        ; $51c3: $e4
    db $fd                                        ; $51c4: $fd
    push bc                                       ; $51c5: $c5
    sbc [hl]                                      ; $51c6: $9e
    db $fc                                        ; $51c7: $fc
    jr nc, jr_065_51ca                            ; $51c8: $30 $00

jr_065_51ca:
    ld b, h                                       ; $51ca: $44
    add h                                         ; $51cb: $84
    dec a                                         ; $51cc: $3d
    ld b, d                                       ; $51cd: $42
    jp nz, Jump_065_7e47                          ; $51ce: $c2 $47 $7e

    jp $a0bc                                      ; $51d1: $c3 $bc $a0


    ccf                                           ; $51d4: $3f
    db $e3                                        ; $51d5: $e3
    rst $30                                       ; $51d6: $f7
    add c                                         ; $51d7: $81
    ld [hl], h                                    ; $51d8: $74
    nop                                           ; $51d9: $00
    nop                                           ; $51da: $00
    ei                                            ; $51db: $fb
    ld bc, $2dfc                                  ; $51dc: $01 $fc $2d
    call nz, $0123                                ; $51df: $c4 $23 $01
    ld b, d                                       ; $51e2: $42
    cp $88                                        ; $51e3: $fe $88
    ld a, [hl]                                    ; $51e5: $7e
    call nz, $a5fc                                ; $51e6: $c4 $fc $a5
    ld [hl], a                                    ; $51e9: $77
    ld h, c                                       ; $51ea: $61
    ld [bc], a                                    ; $51eb: $02
    ld [hl], h                                    ; $51ec: $74
    nop                                           ; $51ed: $00
    sbc [hl]                                      ; $51ee: $9e
    db $fc                                        ; $51ef: $fc
    jr nc, jr_065_51f9                            ; $51f0: $30 $07

    add d                                         ; $51f2: $82
    ld bc, $8043                                  ; $51f3: $01 $43 $80
    add $7d                                       ; $51f6: $c6 $7d
    and e                                         ; $51f8: $a3

jr_065_51f9:
    ld a, [hl]                                    ; $51f9: $7e
    ret z                                         ; $51fa: $c8

    nop                                           ; $51fb: $00
    ld [hl], a                                    ; $51fc: $77
    ld h, d                                       ; $51fd: $62
    dec [hl]                                      ; $51fe: $35
    ld h, c                                       ; $51ff: $61
    db $fc                                        ; $5200: $fc
    cpl                                           ; $5201: $2f
    ret z                                         ; $5202: $c8

    ld h, e                                       ; $5203: $63
    ccf                                           ; $5204: $3f
    ld c, d                                       ; $5205: $4a
    cp [hl]                                       ; $5206: $be
    call nz, Call_065_4000                        ; $5207: $c4 $00 $40
    ld a, l                                       ; $520a: $7d
    ld h, b                                       ; $520b: $60
    ret nz                                        ; $520c: $c0

    add b                                         ; $520d: $80
    and $bc                                       ; $520e: $e6 $bc
    ld [bc], a                                    ; $5210: $02
    db $fc                                        ; $5211: $fc
    cpl                                           ; $5212: $2f
    ld b, a                                       ; $5213: $47
    ld b, [hl]                                    ; $5214: $46
    cp [hl]                                       ; $5215: $be
    inc h                                         ; $5216: $24
    dec a                                         ; $5217: $3d
    add l                                         ; $5218: $85
    add l                                         ; $5219: $85
    add a                                         ; $521a: $87
    rrca                                          ; $521b: $0f
    adc b                                         ; $521c: $88
    adc b                                         ; $521d: $88
    ld [hl], c                                    ; $521e: $71
    ld [hl], b                                    ; $521f: $70
    ld a, l                                       ; $5220: $7d
    ld h, b                                       ; $5221: $60
    db $fd                                        ; $5222: $fd
    and [hl]                                      ; $5223: $a6
    nop                                           ; $5224: $00
    push hl                                       ; $5225: $e5
    nop                                           ; $5226: $00
    adc a                                         ; $5227: $8f
    nop                                           ; $5228: $00
    cp h                                          ; $5229: $bc
    ld h, d                                       ; $522a: $62
    ld b, h                                       ; $522b: $44
    inc h                                         ; $522c: $24
    inc bc                                        ; $522d: $03
    ld [hl+], a                                   ; $522e: $22
    cp $40                                        ; $522f: $fe $40
    adc h                                         ; $5231: $8c
    and b                                         ; $5232: $a0
    cp $c2                                        ; $5233: $fe $c2
    add b                                         ; $5235: $80

jr_065_5236:
    add $c0                                       ; $5236: $c6 $c0
    jp nz, RST_30                                 ; $5238: $c2 $30 $00

    rst $08                                       ; $523b: $cf
    adc e                                         ; $523c: $8b
    dec h                                         ; $523d: $25
    cp $e4                                        ; $523e: $fe $e4
    add e                                         ; $5240: $83
    inc b                                         ; $5241: $04
    rrca                                          ; $5242: $0f
    ld [bc], a                                    ; $5243: $02
    ld c, h                                       ; $5244: $4c
    and b                                         ; $5245: $a0
    nop                                           ; $5246: $00
    jr nz, @-$7e                                  ; $5247: $20 $80

    add c                                         ; $5249: $81
    call nz, $8139                                ; $524a: $c4 $39 $81
    ret nz                                        ; $524d: $c0

    jp nz, $cf00                                  ; $524e: $c2 $00 $cf

    call $fe06                                    ; $5251: $cd $06 $fe
    db $e4                                        ; $5254: $e4
    add $00                                       ; $5255: $c6 $00
    rrca                                          ; $5257: $0f

jr_065_5258:
    ld a, e                                       ; $5258: $7b
    rlca                                          ; $5259: $07
    rlca                                          ; $525a: $07
    pop bc                                        ; $525b: $c1
    pop hl                                        ; $525c: $e1
    ld b, [hl]                                    ; $525d: $46
    ld b, l                                       ; $525e: $45
    ld a, [hl-]                                   ; $525f: $3a
    xor h                                         ; $5260: $ac
    ld a, l                                       ; $5261: $7d
    add [hl]                                      ; $5262: $86
    add b                                         ; $5263: $80
    ld a, [hl]                                    ; $5264: $7e
    adc b                                         ; $5265: $88
    nop                                           ; $5266: $00
    call z, Call_065_4401                         ; $5267: $cc $01 $44
    set 4, b                                      ; $526a: $cb $e0
    cp $e5                                        ; $526c: $fe $e5
    jp Jump_065_46e2                              ; $526e: $c3 $e2 $46


    ld h, c                                       ; $5271: $61
    add hl, sp                                    ; $5272: $39
    jr nc, jr_065_5236                            ; $5273: $30 $c1

    ld [$2376], a                                 ; $5275: $ea $76 $23
    nop                                           ; $5278: $00
    rst $08                                       ; $5279: $cf
    add d                                         ; $527a: $82
    and d                                         ; $527b: $a2
    rrca                                          ; $527c: $0f
    ld [bc], a                                    ; $527d: $02

jr_065_527e:
    jr @+$22                                      ; $527e: $18 $20

    cp $e4                                        ; $5280: $fe $e4
    dec c                                         ; $5282: $0d
    sbc h                                         ; $5283: $9c
    jp nz, Jump_065_46e3                          ; $5284: $c2 $e3 $46

    xor a                                         ; $5287: $af
    cp d                                          ; $5288: $ba
    ld h, c                                       ; $5289: $61
    call nz, $c1c5                                ; $528a: $c4 $c5 $c1
    and e                                         ; $528d: $a3
    nop                                           ; $528e: $00
    rst $08                                       ; $528f: $cf
    db $10                                        ; $5290: $10
    ld d, c                                       ; $5291: $51
    ld [c], a                                     ; $5292: $e2
    ld c, a                                       ; $5293: $4f
    ldh [rNR24], a                                ; $5294: $e0 $19
    ld b, d                                       ; $5296: $42
    rra                                           ; $5297: $1f
    ld b, e                                       ; $5298: $43
    sbc a                                         ; $5299: $9f
    cp [hl]                                       ; $529a: $be
    ld [c], a                                     ; $529b: $e2
    adc $81                                       ; $529c: $ce $81
    ld a, e                                       ; $529e: $7b
    jr nz, jr_065_52a1                            ; $529f: $20 $00

jr_065_52a1:
    cp e                                          ; $52a1: $bb
    ld b, e                                       ; $52a2: $43
    ld sp, hl                                     ; $52a3: $f9
    ld b, c                                       ; $52a4: $41
    ld a, d                                       ; $52a5: $7a
    dec b                                         ; $52a6: $05
    ld a, [$d00b]                                 ; $52a7: $fa $0b $d0
    ld [c], a                                     ; $52aa: $e2
    add l                                         ; $52ab: $85
    ldh [$da], a                                  ; $52ac: $e0 $da
    ld hl, $a124                                  ; $52ae: $21 $24 $a1
    dec bc                                        ; $52b1: $0b
    ret nc                                        ; $52b2: $d0

    pop de                                        ; $52b3: $d1
    pop de                                        ; $52b4: $d1
    jr nz, jr_065_5258                            ; $52b5: $20 $a1

    ld c, $84                                     ; $52b7: $0e $84
    inc a                                         ; $52b9: $3c
    and c                                         ; $52ba: $a1
    ld bc, $3b85                                  ; $52bb: $01 $85 $3b
    nop                                           ; $52be: $00
    jr nz, jr_065_533b                            ; $52bf: $20 $7a

    inc bc                                        ; $52c1: $03
    cp $0b                                        ; $52c2: $fe $0b
    adc d                                         ; $52c4: $8a
    and $24                                       ; $52c5: $e6 $24
    and h                                         ; $52c7: $a4
    sbc [hl]                                      ; $52c8: $9e
    and d                                         ; $52c9: $a2
    sbc [hl]                                      ; $52ca: $9e
    ld c, d                                       ; $52cb: $4a
    ld b, d                                       ; $52cc: $42
    cp [hl]                                       ; $52cd: $be
    pop bc                                        ; $52ce: $c1
    add b                                         ; $52cf: $80
    add l                                         ; $52d0: $85
    and l                                         ; $52d1: $a5
    ld hl, sp+$08                                 ; $52d2: $f8 $08
    cp $0b                                        ; $52d4: $fe $0b
    adc d                                         ; $52d6: $8a
    db $e3                                        ; $52d7: $e3
    and [hl]                                      ; $52d8: $a6
    inc hl                                        ; $52d9: $23
    sbc [hl]                                      ; $52da: $9e
    ld hl, $2196                                  ; $52db: $21 $96 $21
    sbc a                                         ; $52de: $9f
    dec e                                         ; $52df: $1d
    sbc h                                         ; $52e0: $9c
    ld c, d                                       ; $52e1: $4a
    ld b, e                                       ; $52e2: $43
    ld b, [hl]                                    ; $52e3: $46
    ld b, [hl]                                    ; $52e4: $46
    ld a, $c5                                     ; $52e5: $3e $c5
    and l                                         ; $52e7: $a5
    nop                                           ; $52e8: $00
    ld h, [hl]                                    ; $52e9: $66
    nop                                           ; $52ea: $00
    adc l                                         ; $52eb: $8d
    inc e                                         ; $52ec: $1c
    xor d                                         ; $52ed: $aa
    dec h                                         ; $52ee: $25
    ld hl, sp-$19                                 ; $52ef: $f8 $e7
    jp nc, $9ed3                                  ; $52f1: $d2 $d3 $9e

    ld c, a                                       ; $52f4: $4f
    ld h, h                                       ; $52f5: $64
    rst $38                                       ; $52f6: $ff
    jp nz, Jump_065_6342                          ; $52f7: $c2 $42 $63

    jr nc, jr_065_527e                            ; $52fa: $30 $82

    add a                                         ; $52fc: $87
    nop                                           ; $52fd: $00
    ld c, h                                       ; $52fe: $4c
    adc d                                         ; $52ff: $8a
    db $e3                                        ; $5300: $e3
    db $fc                                        ; $5301: $fc
    jp hl                                         ; $5302: $e9


    call nc, Call_065_41d5                        ; $5303: $d4 $d5 $41
    push hl                                       ; $5306: $e5
    db $fd                                        ; $5307: $fd
    and b                                         ; $5308: $a0
    add c                                         ; $5309: $81
    scf                                           ; $530a: $37
    ld b, b                                       ; $530b: $40
    ld b, c                                       ; $530c: $41
    or d                                          ; $530d: $b2
    jp $8382                                      ; $530e: $c3 $82 $83


    nop                                           ; $5311: $00
    ld c, l                                       ; $5312: $4d
    add d                                         ; $5313: $82
    db $ed                                        ; $5314: $ed
    sbc [hl]                                      ; $5315: $9e
    ld b, c                                       ; $5316: $41
    sbc [hl]                                      ; $5317: $9e
    ldh [rSTAT], a                                ; $5318: $e0 $41
    push hl                                       ; $531a: $e5
    ld a, [$82e9]                                 ; $531b: $fa $e9 $82
    ld h, h                                       ; $531e: $64
    nop                                           ; $531f: $00
    ld c, l                                       ; $5320: $4d
    add d                                         ; $5321: $82
    db $ed                                        ; $5322: $ed
    jp c, $d0db                                   ; $5323: $da $db $d0

    add hl, bc                                    ; $5326: $09
    pop de                                        ; $5327: $d1
    add c                                         ; $5328: $81
    push bc                                       ; $5329: $c5
    cp e                                          ; $532a: $bb
    ld [$82a1], a                                 ; $532b: $ea $a1 $82
    jp Jump_065_4d00                              ; $532e: $c3 $00 $4d


    nop                                           ; $5331: $00
    pop af                                        ; $5332: $f1
    ret nz                                        ; $5333: $c0

    ret nz                                        ; $5334: $c0

    sbc [hl]                                      ; $5335: $9e
    ret                                           ; $5336: $c9


    ld [bc], a                                    ; $5337: $02
    ld b, l                                       ; $5338: $45
    ld b, e                                       ; $5339: $43
    ld b, c                                       ; $533a: $41

jr_065_533b:
    ld b, e                                       ; $533b: $43
    db $fd                                        ; $533c: $fd
    ldh [$7b], a                                  ; $533d: $e0 $7b
    ld bc, $e8ae                                  ; $533f: $01 $ae $e8
    add d                                         ; $5342: $82
    ld b, l                                       ; $5343: $45
    nop                                           ; $5344: $00
    adc l                                         ; $5345: $8d
    nop                                           ; $5346: $00
    pop af                                        ; $5347: $f1
    and b                                         ; $5348: $a0
    ld a, a                                       ; $5349: $7f
    jp Jump_000_3645                              ; $534a: $c3 $45 $36


    dec sp                                        ; $534d: $3b
    inc de                                        ; $534e: $13
    dec [hl]                                      ; $534f: $35
    dec sp                                        ; $5350: $3b
    db $fd                                        ; $5351: $fd
    ldh [$c2], a                                  ; $5352: $e0 $c2
    add e                                         ; $5354: $83
    sbc [hl]                                      ; $5355: $9e
    add d                                         ; $5356: $82
    jp $8d00                                      ; $5357: $c3 $00 $8d


    nop                                           ; $535a: $00
    pop af                                        ; $535b: $f1
    cp h                                          ; $535c: $bc
    rst $38                                       ; $535d: $ff
    and c                                         ; $535e: $a1
    ld a, [bc]                                    ; $535f: $0a
    jr nz, @+$46                                  ; $5360: $20 $44

    inc a                                         ; $5362: $3c
    and h                                         ; $5363: $a4
    ld h, h                                       ; $5364: $64
    rst $38                                       ; $5365: $ff
    ldh [$a5], a                                  ; $5366: $e0 $a5
    jp Jump_065_443c                              ; $5368: $c3 $3c $44


    ld [bc], a                                    ; $536b: $02
    ld b, d                                       ; $536c: $42
    ld d, [hl]                                    ; $536d: $56
    push bc                                       ; $536e: $c5
    nop                                           ; $536f: $00
    ld c, e                                       ; $5370: $4b
    inc l                                         ; $5371: $2c
    inc bc                                        ; $5372: $03
    and b                                         ; $5373: $a0
    and b                                         ; $5374: $a0
    ld hl, sp-$04                                 ; $5375: $f8 $fc
    rst $20                                       ; $5377: $e7
    ld a, [hl]                                    ; $5378: $7e
    and c                                         ; $5379: $a1
    ld a, $e1                                     ; $537a: $3e $e1
    xor a                                         ; $537c: $af
    ld b, d                                       ; $537d: $42
    dec [hl]                                      ; $537e: $35
    ld l, c                                       ; $537f: $69
    and e                                         ; $5380: $a3
    cp a                                          ; $5381: $bf
    dec [hl]                                      ; $5382: $35
    dec [hl]                                      ; $5383: $35
    and e                                         ; $5384: $a3
    ld l, d                                       ; $5385: $6a
    dec [hl]                                      ; $5386: $35
    ld b, d                                       ; $5387: $42
    ld b, h                                       ; $5388: $44
    add b                                         ; $5389: $80
    sbc h                                         ; $538a: $9c
    ld bc, $829f                                  ; $538b: $01 $9f $82
    inc hl                                        ; $538e: $23
    nop                                           ; $538f: $00
    jp nc, Jump_000_292e                          ; $5390: $d2 $2e $29

    inc e                                         ; $5393: $1c
    ld h, e                                       ; $5394: $63
    db $fc                                        ; $5395: $fc
    add c                                         ; $5396: $81
    ret nz                                        ; $5397: $c0

    ldh [$bc], a                                  ; $5398: $e0 $bc
    ld b, d                                       ; $539a: $42
    ld [bc], a                                    ; $539b: $02
    inc bc                                        ; $539c: $03
    ld h, b                                       ; $539d: $60
    sbc h                                         ; $539e: $9c
    jr nz, @-$5e                                  ; $539f: $20 $a0

    nop                                           ; $53a1: $00
    db $e4                                        ; $53a2: $e4
    nop                                           ; $53a3: $00
    ret nc                                        ; $53a4: $d0

    jr nc, jr_065_53f0                            ; $53a5: $30 $49

    ld a, [hl]                                    ; $53a7: $7e
    and e                                         ; $53a8: $a3
    db $fc                                        ; $53a9: $fc
    add d                                         ; $53aa: $82
    xor a                                         ; $53ab: $af
    ld b, h                                       ; $53ac: $44
    inc a                                         ; $53ad: $3c
    ld l, e                                       ; $53ae: $6b
    ld [hl], c                                    ; $53af: $71
    rst $38                                       ; $53b0: $ff
    ldh [$6d], a                                  ; $53b1: $e0 $6d
    inc bc                                        ; $53b3: $03
    ld h, b                                       ; $53b4: $60
    and c                                         ; $53b5: $a1
    jr nc, @+$06                                  ; $53b6: $30 $04

    and h                                         ; $53b8: $a4
    nop                                           ; $53b9: $00
    db $d3                                        ; $53ba: $d3
    jr nc, @+$0b                                  ; $53bb: $30 $09

    db $fc                                        ; $53bd: $fc
    add [hl]                                      ; $53be: $86
    sbc a                                         ; $53bf: $9f
    sbc h                                         ; $53c0: $9c
    ret nz                                        ; $53c1: $c0

    rst $00                                       ; $53c2: $c7
    inc b                                         ; $53c3: $04
    call nz, Call_000_0400                        ; $53c4: $c4 $00 $04
    ld c, l                                       ; $53c7: $4d
    nop                                           ; $53c8: $00
    jp Jump_065_4b30                              ; $53c9: $c3 $30 $4b


    db $fc                                        ; $53cc: $fc
    add l                                         ; $53cd: $85
    cp a                                          ; $53ce: $bf
    ld [c], a                                     ; $53cf: $e2
    ld b, b                                       ; $53d0: $40
    call nz, $e104                                ; $53d1: $c4 $04 $e1
    inc b                                         ; $53d4: $04
    and e                                         ; $53d5: $a3
    nop                                           ; $53d6: $00
    inc b                                         ; $53d7: $04
    ld c, e                                       ; $53d8: $4b
    ld a, [$32c1]                                 ; $53d9: $fa $c1 $32
    xor e                                         ; $53dc: $ab
    inc h                                         ; $53dd: $24
    pop bc                                        ; $53de: $c1
    ld a, [hl]                                    ; $53df: $7e
    add sp, -$7a                                  ; $53e0: $e8 $86
    xor d                                         ; $53e2: $aa
    inc b                                         ; $53e3: $04
    rst $08                                       ; $53e4: $cf
    jp z, Jump_000_00c1                           ; $53e5: $ca $c1 $00

    ld [hl-], a                                   ; $53e8: $32
    xor e                                         ; $53e9: $ab
    ld h, $21                                     ; $53ea: $26 $21
    ld a, [hl]                                    ; $53ec: $7e
    add sp, $6d                                   ; $53ed: $e8 $6d
    ld h, e                                       ; $53ef: $63

jr_065_53f0:
    add d                                         ; $53f0: $82
    and $04                                       ; $53f1: $e6 $04
    ld c, l                                       ; $53f3: $4d
    ld a, [$3201]                                 ; $53f4: $fa $01 $32
    xor e                                         ; $53f7: $ab
    nop                                           ; $53f8: $00
    jr z, @-$3d                                   ; $53f9: $28 $c1

    ld hl, sp+$68                                 ; $53fb: $f8 $68
    add sp, $64                                   ; $53fd: $e8 $64
    add [hl]                                      ; $53ff: $86
    and l                                         ; $5400: $a5
    inc b                                         ; $5401: $04
    ld c, l                                       ; $5402: $4d
    db $fc                                        ; $5403: $fc
    and c                                         ; $5404: $a1
    ld [hl-], a                                   ; $5405: $32
    xor e                                         ; $5406: $ab
    ld l, $a3                                     ; $5407: $2e $a3
    nop                                           ; $5409: $00
    db $fc                                        ; $540a: $fc
    add $76                                       ; $540b: $c6 $76
    jp nz, $e782                                  ; $540d: $c2 $82 $e7

    inc b                                         ; $5410: $04
    ld c, l                                       ; $5411: $4d
    db $fc                                        ; $5412: $fc
    and c                                         ; $5413: $a1
    nop                                           ; $5414: $00
    nop                                           ; $5415: $00
    nop                                           ; $5416: $00
    pop bc                                        ; $5417: $c1
    nop                                           ; $5418: $00
    rst $38                                       ; $5419: $ff
    rst $38                                       ; $541a: $ff
    rst $38                                       ; $541b: $ff
    rst $38                                       ; $541c: $ff
    rst $38                                       ; $541d: $ff
    rst $38                                       ; $541e: $ff
    rst $38                                       ; $541f: $ff
    rst $38                                       ; $5420: $ff
    rst $38                                       ; $5421: $ff
    rst $38                                       ; $5422: $ff
    nop                                           ; $5423: $00
    nop                                           ; $5424: $00
    ld bc, $fe80                                  ; $5425: $01 $80 $fe
    ldh [rIE], a                                  ; $5428: $e0 $ff
    rst $38                                       ; $542a: $ff
    rst $38                                       ; $542b: $ff
    rst $38                                       ; $542c: $ff
    rst $38                                       ; $542d: $ff
    add sp, $00                                   ; $542e: $e8 $00
    nop                                           ; $5430: $00
    nop                                           ; $5431: $00
    ld [bc], a                                    ; $5432: $02
    nop                                           ; $5433: $00
    dec e                                         ; $5434: $1d
    dec b                                         ; $5435: $05
    ld [bc], a                                    ; $5436: $02
    ld bc, $0520                                  ; $5437: $01 $20 $05
    ld [bc], a                                    ; $543a: $02
    ld [bc], a                                    ; $543b: $02
    inc hl                                        ; $543c: $23
    dec b                                         ; $543d: $05
    ld [bc], a                                    ; $543e: $02
    inc bc                                        ; $543f: $03
    dec de                                        ; $5440: $1b
    rlca                                          ; $5441: $07
    ld [bc], a                                    ; $5442: $02
    inc b                                         ; $5443: $04
    dec h                                         ; $5444: $25
    rlca                                          ; $5445: $07
    ld [bc], a                                    ; $5446: $02
    dec b                                         ; $5447: $05
    dec h                                         ; $5448: $25
    ld a, [bc]                                    ; $5449: $0a
    ld [bc], a                                    ; $544a: $02
    ld b, $23                                     ; $544b: $06 $23
    inc c                                         ; $544d: $0c
    ld [bc], a                                    ; $544e: $02
    rlca                                          ; $544f: $07
    ld hl, $020d                                  ; $5450: $21 $0d $02
    ld [$0d22], sp                                ; $5453: $08 $22 $0d
    ld [bc], a                                    ; $5456: $02
    add hl, bc                                    ; $5457: $09
    jr nz, jr_065_5468                            ; $5458: $20 $0e

    ld [bc], a                                    ; $545a: $02
    ld a, [bc]                                    ; $545b: $0a
    rra                                           ; $545c: $1f
    db $10                                        ; $545d: $10
    ld [bc], a                                    ; $545e: $02
    dec bc                                        ; $545f: $0b
    inc e                                         ; $5460: $1c
    inc d                                         ; $5461: $14
    ld [bc], a                                    ; $5462: $02
    inc c                                         ; $5463: $0c
    rra                                           ; $5464: $1f
    inc d                                         ; $5465: $14
    ld [bc], a                                    ; $5466: $02
    dec c                                         ; $5467: $0d

jr_065_5468:
    dec de                                        ; $5468: $1b
    ld d, $02                                     ; $5469: $16 $02
    ld c, $1a                                     ; $546b: $0e $1a
    jr @+$04                                      ; $546d: $18 $02

    rrca                                          ; $546f: $0f
    ld hl, $0218                                  ; $5470: $21 $18 $02
    db $10                                        ; $5473: $10
    dec de                                        ; $5474: $1b
    dec de                                        ; $5475: $1b
    ld [bc], a                                    ; $5476: $02
    ld de, $1b24                                  ; $5477: $11 $24 $1b
    ld [bc], a                                    ; $547a: $02
    ld [de], a                                    ; $547b: $12
    dec e                                         ; $547c: $1d
    dec e                                         ; $547d: $1d
    ld [bc], a                                    ; $547e: $02
    inc de                                        ; $547f: $13
    daa                                           ; $5480: $27
    rra                                           ; $5481: $1f
    ld [bc], a                                    ; $5482: $02
    inc d                                         ; $5483: $14
    ld e, $20                                     ; $5484: $1e $20
    ld [bc], a                                    ; $5486: $02
    dec d                                         ; $5487: $15
    rra                                           ; $5488: $1f
    inc hl                                        ; $5489: $23
    ld [bc], a                                    ; $548a: $02
    ld d, $29                                     ; $548b: $16 $29
    inc hl                                        ; $548d: $23
    ld [bc], a                                    ; $548e: $02
    rla                                           ; $548f: $17
    rra                                           ; $5490: $1f
    ld h, $02                                     ; $5491: $26 $02
    jr jr_065_54be                                ; $5493: $18 $29

    jr z, @+$04                                   ; $5495: $28 $02

    add hl, de                                    ; $5497: $19
    ld e, $29                                     ; $5498: $1e $29
    ld [bc], a                                    ; $549a: $02
    ld a, [de]                                    ; $549b: $1a
    dec e                                         ; $549c: $1d
    ld a, [hl+]                                   ; $549d: $2a
    ld [bc], a                                    ; $549e: $02
    dec de                                        ; $549f: $1b
    dec de                                        ; $54a0: $1b
    dec hl                                        ; $54a1: $2b
    ld [bc], a                                    ; $54a2: $02
    inc e                                         ; $54a3: $1c
    add hl, de                                    ; $54a4: $19
    inc l                                         ; $54a5: $2c
    ld [bc], a                                    ; $54a6: $02
    dec e                                         ; $54a7: $1d
    jr z, @+$2e                                   ; $54a8: $28 $2c

    ld [bc], a                                    ; $54aa: $02
    ld e, $17                                     ; $54ab: $1e $17
    cpl                                           ; $54ad: $2f
    ld [bc], a                                    ; $54ae: $02
    rra                                           ; $54af: $1f
    daa                                           ; $54b0: $27
    ld sp, $2002                                  ; $54b1: $31 $02 $20
    ld d, $32                                     ; $54b4: $16 $32
    ld [bc], a                                    ; $54b6: $02
    ld hl, $3518                                  ; $54b7: $21 $18 $35
    ld [bc], a                                    ; $54ba: $02
    ld [hl+], a                                   ; $54bb: $22
    daa                                           ; $54bc: $27
    dec [hl]                                      ; $54bd: $35

jr_065_54be:
    ld [bc], a                                    ; $54be: $02
    inc hl                                        ; $54bf: $23
    ld a, [de]                                    ; $54c0: $1a
    scf                                           ; $54c1: $37
    ld [bc], a                                    ; $54c2: $02
    inc h                                         ; $54c3: $24
    dec h                                         ; $54c4: $25
    scf                                           ; $54c5: $37
    rst $38                                       ; $54c6: $ff
    rst $38                                       ; $54c7: $ff
    rst $38                                       ; $54c8: $ff
    pop de                                        ; $54c9: $d1
    ld d, h                                       ; $54ca: $54
    and h                                         ; $54cb: $a4
    ld e, b                                       ; $54cc: $58
    call $e85d                                    ; $54cd: $cd $5d $e8
    ld e, l                                       ; $54d0: $5d
    cpl                                           ; $54d1: $2f
    dec c                                         ; $54d2: $0d
    ld c, $0e                                     ; $54d3: $0e $0e
    ld c, $fc                                     ; $54d5: $0e $fc
    jp hl                                         ; $54d7: $e9


    ld c, l                                       ; $54d8: $4d
    rst $28                                       ; $54d9: $ef
    ldh [$fc], a                                  ; $54da: $e0 $fc
    xor $c7                                       ; $54dc: $ee $c7
    ld c, l                                       ; $54de: $4d
    inc c                                         ; $54df: $0c
    ld c, l                                       ; $54e0: $4d
    add sp, -$17                                  ; $54e1: $e8 $e9
    call z, $fde9                                 ; $54e3: $cc $e9 $fd
    ld sp, hl                                     ; $54e6: $f9
    dec l                                         ; $54e7: $2d
    dec l                                         ; $54e8: $2d
    ld c, $fc                                     ; $54e9: $0e $fc
    db $e4                                        ; $54eb: $e4
    dec c                                         ; $54ec: $0d
    inc c                                         ; $54ed: $0c
    dec l                                         ; $54ee: $2d
    db $f4                                        ; $54ef: $f4
    pop hl                                        ; $54f0: $e1
    rst $38                                       ; $54f1: $ff
    rst $38                                       ; $54f2: $ff
    xor a                                         ; $54f3: $af
    pop hl                                        ; $54f4: $e1
    ld a, [hl]                                    ; $54f5: $7e
    rst $20                                       ; $54f6: $e7
    cp e                                          ; $54f7: $bb
    dec c                                         ; $54f8: $0d
    ld c, l                                       ; $54f9: $4d
    rst $38                                       ; $54fa: $ff
    ld [c], a                                     ; $54fb: $e2
    dec l                                         ; $54fc: $2d
    ld c, l                                       ; $54fd: $4d
    ld l, l                                       ; $54fe: $6d
    add b                                         ; $54ff: $80
    ldh [$2d], a                                  ; $5500: $e0 $2d
    ld a, b                                       ; $5502: $78
    ld h, [hl]                                    ; $5503: $66
    jp hl                                         ; $5504: $e9


    cp $fd                                        ; $5505: $fe $fd
    add [hl]                                      ; $5507: $86
    pop hl                                        ; $5508: $e1
    dec c                                         ; $5509: $0d
    ld l, l                                       ; $550a: $6d
    dec c                                         ; $550b: $0d
    ld l, e                                       ; $550c: $6b
    cp $e0                                        ; $550d: $fe $e0
    ld a, $fb                                     ; $550f: $3e $fb
    pop hl                                        ; $5511: $e1
    ld l, e                                       ; $5512: $6b
    inc c                                         ; $5513: $0c
    ld l, e                                       ; $5514: $6b
    ld l, e                                       ; $5515: $6b
    ld c, l                                       ; $5516: $4d
    ld a, [hl]                                    ; $5517: $7e
    push hl                                       ; $5518: $e5
    ret nz                                        ; $5519: $c0

    db $ed                                        ; $551a: $ed
    db $fc                                        ; $551b: $fc
    ld [bc], a                                    ; $551c: $02
    db $eb                                        ; $551d: $eb
    nop                                           ; $551e: $00
    db $e3                                        ; $551f: $e3
    dec l                                         ; $5520: $2d
    dec l                                         ; $5521: $2d
    dec c                                         ; $5522: $0d
    ld c, l                                       ; $5523: $4d
    ld l, l                                       ; $5524: $6d
    dec c                                         ; $5525: $0d
    add h                                         ; $5526: $84
    rst $38                                       ; $5527: $ff
    and $c0                                       ; $5528: $e6 $c0
    pop hl                                        ; $552a: $e1
    dec c                                         ; $552b: $0d
    ld a, [hl]                                    ; $552c: $7e
    push hl                                       ; $552d: $e5
    adc $cd                                       ; $552e: $ce $cd
    ld b, h                                       ; $5530: $44
    db $ed                                        ; $5531: $ed
    ld [$2de1], sp                                ; $5532: $08 $e1 $2d
    inc bc                                        ; $5535: $03
    dec c                                         ; $5536: $0d
    ld l, l                                       ; $5537: $6d
    adc $e0                                       ; $5538: $ce $e0
    add c                                         ; $553a: $81
    push hl                                       ; $553b: $e5
    ret nz                                        ; $553c: $c0

    pop hl                                        ; $553d: $e1
    or e                                          ; $553e: $b3
    ldh [$7e], a                                  ; $553f: $e0 $7e
    and $04                                       ; $5541: $e6 $04
    db $fd                                        ; $5543: $fd
    inc a                                         ; $5544: $3c
    pop bc                                        ; $5545: $c1
    ld [c], a                                     ; $5546: $e2
    ld c, d                                       ; $5547: $4a
    ldh [$2b], a                                  ; $5548: $e0 $2b
    ld a, [bc]                                    ; $554a: $0a
    ld a, [bc]                                    ; $554b: $0a
    ld a, [hl+]                                   ; $554c: $2a
    ld b, c                                       ; $554d: $41
    ld [c], a                                     ; $554e: $e2
    ret nz                                        ; $554f: $c0

    db $e3                                        ; $5550: $e3
    ldh a, [rOCPS]                                ; $5551: $f0 $6a
    ldh [rDIV], a                                 ; $5553: $e0 $04
    db $fd                                        ; $5555: $fd
    add b                                         ; $5556: $80
    db $e4                                        ; $5557: $e4
    dec b                                         ; $5558: $05
    db $e3                                        ; $5559: $e3
    ld l, e                                       ; $555a: $6b
    ld a, [bc]                                    ; $555b: $0a
    ld a, [hl+]                                   ; $555c: $2a
    ld a, [hl+]                                   ; $555d: $2a
    or a                                          ; $555e: $b7
    ld a, [bc]                                    ; $555f: $0a
    dec bc                                        ; $5560: $0b
    dec bc                                        ; $5561: $0b
    ld bc, $4ce0                                  ; $5562: $01 $e0 $4c
    inc l                                         ; $5565: $2c
    ld b, b                                       ; $5566: $40
    ldh [$0d], a                                  ; $5567: $e0 $0d
    add e                                         ; $5569: $83
    dec c                                         ; $556a: $0d
    ld l, l                                       ; $556b: $6d
    ld a, h                                       ; $556c: $7c
    ret nc                                        ; $556d: $d0

    nop                                           ; $556e: $00
    jp nc, $c085                                  ; $556f: $d2 $85 $c0

    adc d                                         ; $5572: $8a
    pop hl                                        ; $5573: $e1
    jp nz, Jump_000_0be1                          ; $5574: $c2 $e1 $0b

    add hl, bc                                    ; $5577: $09
    dec bc                                        ; $5578: $0b
    pop bc                                        ; $5579: $c1
    db $e3                                        ; $557a: $e3
    ld sp, $6de1                                  ; $557b: $31 $e1 $6d
    db $e4                                        ; $557e: $e4
    and d                                         ; $557f: $a2
    cp $cb                                        ; $5580: $fe $cb
    ld [$ccd2], sp                                ; $5582: $08 $d2 $cc
    jp nz, $830a                                  ; $5585: $c2 $0a $83

    ret nz                                        ; $5588: $c0

    dec hl                                        ; $5589: $2b
    jp nz, Jump_000_0be1                          ; $558a: $c2 $e1 $0b

    ld [bc], a                                    ; $558d: $02
    pop hl                                        ; $558e: $e1
    ld a, [c]                                     ; $558f: $f2
    jp nz, $e380                                  ; $5590: $c2 $80 $e3

    inc a                                         ; $5593: $3c
    rst $38                                       ; $5594: $ff
    ld d, e                                       ; $5595: $53
    dec l                                         ; $5596: $2d
    ld c, l                                       ; $5597: $4d
    dec bc                                        ; $5598: $0b
    ld [c], a                                     ; $5599: $e2
    ld c, b                                       ; $559a: $48
    ret nz                                        ; $559b: $c0

    ld c, e                                       ; $559c: $4b
    db $fc                                        ; $559d: $fc
    ret nz                                        ; $559e: $c0

    ld a, [hl+]                                   ; $559f: $2a
    ret nz                                        ; $55a0: $c0

    ld [c], a                                     ; $55a1: $e2
    sbc b                                         ; $55a2: $98
    ld b, c                                       ; $55a3: $41
    ld [c], a                                     ; $55a4: $e2
    db $fc                                        ; $55a5: $fc
    and [hl]                                      ; $55a6: $a6
    ld [bc], a                                    ; $55a7: $02
    call c, $2d4d                                 ; $55a8: $dc $4d $2d
    jp nz, $80e2                                  ; $55ab: $c2 $e2 $80

    pop hl                                        ; $55ae: $e1
    dec bc                                        ; $55af: $0b
    add e                                         ; $55b0: $83
    ld a, [hl+]                                   ; $55b1: $2a
    ld a, [bc]                                    ; $55b2: $0a
    ld [bc], a                                    ; $55b3: $02
    pop bc                                        ; $55b4: $c1
    ld hl, sp-$60                                 ; $55b5: $f8 $a0
    pop bc                                        ; $55b7: $c1
    ldh [$80], a                                  ; $55b8: $e0 $80
    ld a, [c]                                     ; $55ba: $f2
    nop                                           ; $55bb: $00
    pop de                                        ; $55bc: $d1
    ld c, l                                       ; $55bd: $4d
    nop                                           ; $55be: $00
    adc c                                         ; $55bf: $89
    jp $e101                                      ; $55c0: $c3 $01 $e1


    ret nz                                        ; $55c3: $c0

    ret nz                                        ; $55c4: $c0

    ld [bc], a                                    ; $55c5: $02
    pop bc                                        ; $55c6: $c1
    ld b, d                                       ; $55c7: $42
    pop hl                                        ; $55c8: $e1
    nop                                           ; $55c9: $00
    rst $18                                       ; $55ca: $df
    ld h, h                                       ; $55cb: $64
    push hl                                       ; $55cc: $e5
    ld b, h                                       ; $55cd: $44
    and b                                         ; $55ce: $a0
    inc b                                         ; $55cf: $04
    adc $c1                                       ; $55d0: $ce $c1
    pop bc                                        ; $55d2: $c1
    pop bc                                        ; $55d3: $c1
    dec hl                                        ; $55d4: $2b
    ret nz                                        ; $55d5: $c0

    rst $20                                       ; $55d6: $e7
    ld c, b                                       ; $55d7: $48
    cp a                                          ; $55d8: $bf
    inc b                                         ; $55d9: $04
    xor b                                         ; $55da: $a8
    cp a                                          ; $55db: $bf
    pop bc                                        ; $55dc: $c1
    ret nz                                        ; $55dd: $c0

    ld [c], a                                     ; $55de: $e2
    add d                                         ; $55df: $82
    ld b, d                                       ; $55e0: $42
    and d                                         ; $55e1: $a2
    ld l, e                                       ; $55e2: $6b
    db $eb                                        ; $55e3: $eb
    ret nz                                        ; $55e4: $c0

    inc b                                         ; $55e5: $04
    rst $38                                       ; $55e6: $ff
    cp h                                          ; $55e7: $bc
    adc b                                         ; $55e8: $88
    ccf                                           ; $55e9: $3f
    jp nz, $e240                                  ; $55ea: $c2 $40 $e2

    dec bc                                        ; $55ed: $0b
    or b                                          ; $55ee: $b0
    ld b, c                                       ; $55ef: $41
    jp nz, $c1c2                                  ; $55f0: $c2 $c2 $c1

    res 2, c                                      ; $55f3: $cb $91
    inc b                                         ; $55f5: $04
    sub e                                         ; $55f6: $93
    ld c, l                                       ; $55f7: $4d
    dec l                                         ; $55f8: $2d
    call nz, Call_000_2b81                        ; $55f9: $c4 $81 $2b
    ld d, $c0                                     ; $55fc: $16 $c0
    pop bc                                        ; $55fe: $c1
    dec hl                                        ; $55ff: $2b
    dec bc                                        ; $5600: $0b
    ld b, c                                       ; $5601: $41
    jp nz, $826b                                  ; $5602: $c2 $6b $82

    call nz, $f902                                ; $5605: $c4 $02 $f9
    ld a, [hl]                                    ; $5608: $7e
    ret                                           ; $5609: $c9


    nop                                           ; $560a: $00
    ld bc, $bfc4                                  ; $560b: $01 $c4 $bf
    and c                                         ; $560e: $a1
    ld b, c                                       ; $560f: $41
    jp nz, $8780                                  ; $5610: $c2 $80 $87

    nop                                           ; $5613: $00
    rst $38                                       ; $5614: $ff
    ld a, d                                       ; $5615: $7a
    ld h, c                                       ; $5616: $61
    adc [hl]                                      ; $5617: $8e
    and c                                         ; $5618: $a1
    add b                                         ; $5619: $80
    pop hl                                        ; $561a: $e1
    ret nz                                        ; $561b: $c0

    cp h                                          ; $561c: $bc
    ret nz                                        ; $561d: $c0

    ld b, c                                       ; $561e: $41
    jp nz, $8180                                  ; $561f: $c2 $80 $81

    nop                                           ; $5622: $00
    rst $38                                       ; $5623: $ff
    add b                                         ; $5624: $80
    jp hl                                         ; $5625: $e9


    ld bc, $0dc1                                  ; $5626: $01 $c1 $0d
    dec bc                                        ; $5629: $0b
    add hl, de                                    ; $562a: $19
    dec c                                         ; $562b: $0d
    ld b, b                                       ; $562c: $40
    pop hl                                        ; $562d: $e1
    nop                                           ; $562e: $00
    jp nz, Jump_065_6d0d                          ; $562f: $c2 $0d $6d

    bit 6, e                                      ; $5632: $cb $73
    ld [hl-], a                                   ; $5634: $32
    db $eb                                        ; $5635: $eb
    add [hl]                                      ; $5636: $86
    ld h, h                                       ; $5637: $64
    inc c                                         ; $5638: $0c
    ld b, c                                       ; $5639: $41
    add b                                         ; $563a: $80
    ret nz                                        ; $563b: $c0

    db $e3                                        ; $563c: $e3
    dec bc                                        ; $563d: $0b
    ld c, e                                       ; $563e: $4b
    jp $4082                                      ; $563f: $c3 $82 $40


    add c                                         ; $5642: $81
    nop                                           ; $5643: $00
    rst $18                                       ; $5644: $df
    nop                                           ; $5645: $00
    and [hl]                                      ; $5646: $a6
    inc b                                         ; $5647: $04
    ld b, c                                       ; $5648: $41
    add d                                         ; $5649: $82
    pop bc                                        ; $564a: $c1
    and e                                         ; $564b: $a3
    ld c, e                                       ; $564c: $4b
    ld b, c                                       ; $564d: $41
    db $e3                                        ; $564e: $e3
    ld a, a                                       ; $564f: $7f
    and c                                         ; $5650: $a1
    ld c, b                                       ; $5651: $48
    rst $38                                       ; $5652: $ff
    add d                                         ; $5653: $82
    push hl                                       ; $5654: $e5
    ld a, [bc]                                    ; $5655: $0a
    add e                                         ; $5656: $83
    ld [bc], a                                    ; $5657: $02
    nop                                           ; $5658: $00
    and b                                         ; $5659: $a0
    ld c, e                                       ; $565a: $4b
    add e                                         ; $565b: $83
    add h                                         ; $565c: $84
    add d                                         ; $565d: $82
    add [hl]                                      ; $565e: $86
    cp h                                          ; $565f: $bc
    rst $38                                       ; $5660: $ff
    jp c, Jump_000_0a60                           ; $5661: $da $60 $0a

    ld h, c                                       ; $5664: $61
    pop bc                                        ; $5665: $c1
    ld [c], a                                     ; $5666: $e2
    rrca                                          ; $5667: $0f
    ld c, h                                       ; $5668: $4c
    inc c                                         ; $5669: $0c
    inc c                                         ; $566a: $0c
    inc l                                         ; $566b: $2c
    rst $38                                       ; $566c: $ff
    ld h, c                                       ; $566d: $61
    nop                                           ; $566e: $00
    and e                                         ; $566f: $a3
    nop                                           ; $5670: $00
    rst $18                                       ; $5671: $df
    inc b                                         ; $5672: $04
    ld h, d                                       ; $5673: $62
    ld c, $c2                                     ; $5674: $0e $c2
    ld h, h                                       ; $5676: $64
    dec c                                         ; $5677: $0d
    ld l, e                                       ; $5678: $6b
    ld c, h                                       ; $5679: $4c
    jp $ffe0                                      ; $567a: $c3 $e0 $ff


    add d                                         ; $567d: $82
    cp c                                          ; $567e: $b9
    ld b, c                                       ; $567f: $41
    nop                                           ; $5680: $00
    rst $18                                       ; $5681: $df
    ld [$8b02], sp                                ; $5682: $08 $02 $8b
    ld a, [bc]                                    ; $5685: $0a
    ld h, c                                       ; $5686: $61
    rst $38                                       ; $5687: $ff
    and d                                         ; $5688: $a2
    ld c, e                                       ; $5689: $4b
    ld b, h                                       ; $568a: $44
    ld h, d                                       ; $568b: $62
    add d                                         ; $568c: $82
    add l                                         ; $568d: $85
    nop                                           ; $568e: $00
    rst $38                                       ; $568f: $ff
    add d                                         ; $5690: $82
    ld h, l                                       ; $5691: $65
    nop                                           ; $5692: $00
    ld c, d                                       ; $5693: $4a
    ld b, b                                       ; $5694: $40
    add b                                         ; $5695: $80
    and e                                         ; $5696: $a3
    ld a, [hl-]                                   ; $5697: $3a
    ld b, d                                       ; $5698: $42
    inc b                                         ; $5699: $04
    sbc a                                         ; $569a: $9f
    ld [bc], a                                    ; $569b: $02
    adc b                                         ; $569c: $88
    ret nz                                        ; $569d: $c0

    push hl                                       ; $569e: $e5
    nop                                           ; $569f: $00
    and e                                         ; $56a0: $a3
    ld [bc], a                                    ; $56a1: $02
    ld hl, sp+$00                                 ; $56a2: $f8 $00
    nop                                           ; $56a4: $00
    pop de                                        ; $56a5: $d1
    sbc d                                         ; $56a6: $9a
    ld b, b                                       ; $56a7: $40
    ld [bc], a                                    ; $56a8: $02
    and d                                         ; $56a9: $a2
    jp z, Jump_065_7f21                           ; $56aa: $ca $21 $7f

    add h                                         ; $56ad: $84
    cp d                                          ; $56ae: $ba
    jr nz, @-$7c                                  ; $56af: $20 $82

    and l                                         ; $56b1: $a5
    nop                                           ; $56b2: $00
    rst $18                                       ; $56b3: $df
    jr jr_065_56cd                                ; $56b4: $18 $17

    ldh [$80], a                                  ; $56b6: $e0 $80
    ld h, b                                       ; $56b8: $60
    ld c, d                                       ; $56b9: $4a
    ld b, d                                       ; $56ba: $42
    ld l, h                                       ; $56bb: $6c
    ld c, e                                       ; $56bc: $4b
    rst $38                                       ; $56bd: $ff
    pop hl                                        ; $56be: $e1
    inc [hl]                                      ; $56bf: $34
    ld h, d                                       ; $56c0: $62
    ld [bc], a                                    ; $56c1: $02
    rst $18                                       ; $56c2: $df
    inc l                                         ; $56c3: $2c
    nop                                           ; $56c4: $00
    ld c, c                                       ; $56c5: $49
    nop                                           ; $56c6: $00
    and e                                         ; $56c7: $a3
    ld l, e                                       ; $56c8: $6b
    inc c                                         ; $56c9: $0c
    rst $38                                       ; $56ca: $ff
    ldh [$6c], a                                  ; $56cb: $e0 $6c

jr_065_56cd:
    ret nz                                        ; $56cd: $c0

    ld [c], a                                     ; $56ce: $e2
    jp Jump_065_7040                              ; $56cf: $c3 $40 $70


    nop                                           ; $56d2: $00
    rst $38                                       ; $56d3: $ff
    cp $a8                                        ; $56d4: $fe $a8
    add b                                         ; $56d6: $80
    ld h, e                                       ; $56d7: $63
    add b                                         ; $56d8: $80
    ld b, b                                       ; $56d9: $40
    dec hl                                        ; $56da: $2b
    inc c                                         ; $56db: $0c
    ld l, h                                       ; $56dc: $6c
    or [hl]                                       ; $56dd: $b6
    and d                                         ; $56de: $a2
    nop                                           ; $56df: $00
    ld b, e                                       ; $56e0: $43
    ld b, b                                       ; $56e1: $40
    ld d, c                                       ; $56e2: $51
    ld [de], a                                    ; $56e3: $12
    nop                                           ; $56e4: $00
    sub a                                         ; $56e5: $97
    ret nz                                        ; $56e6: $c0

    db $e3                                        ; $56e7: $e3
    cp a                                          ; $56e8: $bf
    db $e3                                        ; $56e9: $e3
    cp l                                          ; $56ea: $bd
    nop                                           ; $56eb: $00
    pop af                                        ; $56ec: $f1
    nop                                           ; $56ed: $00
    nop                                           ; $56ee: $00
    rst $18                                       ; $56ef: $df
    ld [$27fe], sp                                ; $56f0: $08 $fe $27
    ld b, c                                       ; $56f3: $41
    ld b, d                                       ; $56f4: $42
    nop                                           ; $56f5: $00
    add h                                         ; $56f6: $84
    ld l, h                                       ; $56f7: $6c
    ld b, c                                       ; $56f8: $41
    add e                                         ; $56f9: $83
    ld b, h                                       ; $56fa: $44
    rst $38                                       ; $56fb: $ff
    nop                                           ; $56fc: $00
    ld h, a                                       ; $56fd: $67
    ret nz                                        ; $56fe: $c0

    ld h, d                                       ; $56ff: $62
    ld [bc], a                                    ; $5700: $02
    add b                                         ; $5701: $80
    ld b, e                                       ; $5702: $43
    dec hl                                        ; $5703: $2b
    add d                                         ; $5704: $82
    ld [bc], a                                    ; $5705: $02
    ld [bc], a                                    ; $5706: $02
    jr nz, jr_065_5709                            ; $5707: $20 $00

jr_065_5709:
    rst $38                                       ; $5709: $ff
    inc l                                         ; $570a: $2c
    rlca                                          ; $570b: $07
    ld b, b                                       ; $570c: $40
    add d                                         ; $570d: $82
    ret nz                                        ; $570e: $c0

    db $eb                                        ; $570f: $eb
    nop                                           ; $5710: $00
    add b                                         ; $5711: $80
    ld d, l                                       ; $5712: $55
    nop                                           ; $5713: $00
    sub c                                         ; $5714: $91
    ret nz                                        ; $5715: $c0

    nop                                           ; $5716: $00
    add b                                         ; $5717: $80
    ld h, h                                       ; $5718: $64
    add b                                         ; $5719: $80
    db $e4                                        ; $571a: $e4
    ret nz                                        ; $571b: $c0

    ld [hl+], a                                   ; $571c: $22
    nop                                           ; $571d: $00
    rst $18                                       ; $571e: $df
    add b                                         ; $571f: $80
    dec h                                         ; $5720: $25
    nop                                           ; $5721: $00
    ret nz                                        ; $5722: $c0

    inc bc                                        ; $5723: $03
    nop                                           ; $5724: $00
    ld h, h                                       ; $5725: $64
    ccf                                           ; $5726: $3f
    ld h, c                                       ; $5727: $61
    jp $0000                                      ; $5728: $c3 $00 $00


    cp a                                          ; $572b: $bf
    ld a, [hl]                                    ; $572c: $7e
    add [hl]                                      ; $572d: $86
    ret nz                                        ; $572e: $c0

    db $ed                                        ; $572f: $ed
    cp a                                          ; $5730: $bf
    pop bc                                        ; $5731: $c1
    nop                                           ; $5732: $00
    nop                                           ; $5733: $00
    rst $18                                       ; $5734: $df
    inc h                                         ; $5735: $24
    ld h, $3f                                     ; $5736: $26 $3f
    and [hl]                                      ; $5738: $a6
    ld b, b                                       ; $5739: $40
    and e                                         ; $573a: $a3
    ld a, a                                       ; $573b: $7f
    ld bc, $4240                                  ; $573c: $01 $40 $42
    nop                                           ; $573f: $00
    db $dd                                        ; $5740: $dd
    db $fc                                        ; $5741: $fc
    ld h, a                                       ; $5742: $67
    inc b                                         ; $5743: $04
    add c                                         ; $5744: $81
    jp $2240                                      ; $5745: $c3 $40 $22


    dec bc                                        ; $5748: $0b
    ld a, h                                       ; $5749: $7c
    ld h, b                                       ; $574a: $60
    cp h                                          ; $574b: $bc
    and c                                         ; $574c: $a1
    ld b, b                                       ; $574d: $40
    add b                                         ; $574e: $80
    ld a, [hl]                                    ; $574f: $7e
    jp Jump_000_0bfe                              ; $5750: $c3 $fe $0b


    nop                                           ; $5753: $00
    xor h                                         ; $5754: $ac
    call nc, Call_065_638c                        ; $5755: $d4 $8c $63
    ld b, b                                       ; $5758: $40
    call nz, Call_000_223e                        ; $5759: $c4 $3e $22
    nop                                           ; $575c: $00
    ld b, b                                       ; $575d: $40
    add b                                         ; $575e: $80
    inc de                                        ; $575f: $13
    db $fc                                        ; $5760: $fc
    ld d, h                                       ; $5761: $54
    ccf                                           ; $5762: $3f
    add $01                                       ; $5763: $c6 $01
    dec hl                                        ; $5765: $2b
    or [hl]                                       ; $5766: $b6
    ld h, c                                       ; $5767: $61
    rst $38                                       ; $5768: $ff
    nop                                           ; $5769: $00
    cp a                                          ; $576a: $bf
    pop hl                                        ; $576b: $e1
    db $fc                                        ; $576c: $fc
    rst $18                                       ; $576d: $df
    cp b                                          ; $576e: $b8
    inc b                                         ; $576f: $04
    ld a, $83                                     ; $5770: $3e $83
    add b                                         ; $5772: $80
    ld h, l                                       ; $5773: $65
    nop                                           ; $5774: $00
    ld a, $00                                     ; $5775: $3e $00
    ld b, b                                       ; $5777: $40
    ld b, b                                       ; $5778: $40
    ld a, [hl]                                    ; $5779: $7e
    inc [hl]                                      ; $577a: $34
    jr nc, @+$11                                  ; $577b: $30 $0f

    ld a, [hl]                                    ; $577d: $7e
    jp nz, $c5bf                                  ; $577e: $c2 $bf $c5

    add b                                         ; $5781: $80
    ld h, b                                       ; $5782: $60
    or $61                                        ; $5783: $f6 $61
    nop                                           ; $5785: $00
    db $fd                                        ; $5786: $fd
    ld b, e                                       ; $5787: $43
    ldh [rTMA], a                                 ; $5788: $e0 $06
    ld a, [$fec8]                                 ; $578a: $fa $c8 $fe
    or l                                          ; $578d: $b5
    ld a, a                                       ; $578e: $7f
    and h                                         ; $578f: $a4
    dec a                                         ; $5790: $3d
    ld b, b                                       ; $5791: $40
    or $61                                        ; $5792: $f6 $61
    dec a                                         ; $5794: $3d
    ld [bc], a                                    ; $5795: $02
    db $10                                        ; $5796: $10
    cp $a0                                        ; $5797: $fe $a0
    db $fc                                        ; $5799: $fc
    rst $18                                       ; $579a: $df
    db $fc                                        ; $579b: $fc
    ld b, l                                       ; $579c: $45
    ccf                                           ; $579d: $3f
    and h                                         ; $579e: $a4
    dec hl                                        ; $579f: $2b
    push af                                       ; $57a0: $f5
    ld [bc], a                                    ; $57a1: $02
    ld hl, sp+$60                                 ; $57a2: $f8 $60
    cp l                                          ; $57a4: $bd
    ret nz                                        ; $57a5: $c0

    nop                                           ; $57a6: $00
    rst $38                                       ; $57a7: $ff
    ldh [$fc], a                                  ; $57a8: $e0 $fc
    rst $18                                       ; $57aa: $df
    ld a, [hl]                                    ; $57ab: $7e
    and h                                         ; $57ac: $a4
    rst $38                                       ; $57ad: $ff
    add l                                         ; $57ae: $85
    ret nz                                        ; $57af: $c0

    db $e3                                        ; $57b0: $e3
    or h                                          ; $57b1: $b4
    ld h, e                                       ; $57b2: $63
    or d                                          ; $57b3: $b2
    ld h, b                                       ; $57b4: $60
    cp d                                          ; $57b5: $ba
    ld bc, $00c0                                  ; $57b6: $01 $c0 $00
    rst $18                                       ; $57b9: $df
    ld a, $61                                     ; $57ba: $3e $61
    ld a, a                                       ; $57bc: $7f
    add h                                         ; $57bd: $84
    ld bc, $7261                                  ; $57be: $01 $61 $72
    inc h                                         ; $57c1: $24
    ld a, h                                       ; $57c2: $7c
    add b                                         ; $57c3: $80
    inc c                                         ; $57c4: $0c
    ld l, h                                       ; $57c5: $6c
    add b                                         ; $57c6: $80
    jr c, jr_065_5829                             ; $57c7: $38 $60

    ld hl, sp+$69                                 ; $57c9: $f8 $69
    ld a, h                                       ; $57cb: $7c
    dec [hl]                                      ; $57cc: $35
    rst $38                                       ; $57cd: $ff
    ld h, [hl]                                    ; $57ce: $66
    ld bc, $3ee1                                  ; $57cf: $01 $e1 $3e
    ld b, c                                       ; $57d2: $41
    cp [hl]                                       ; $57d3: $be
    add e                                         ; $57d4: $83
    dec l                                         ; $57d5: $2d
    pop bc                                        ; $57d6: $c1
    inc c                                         ; $57d7: $0c
    ld hl, sp+$5e                                 ; $57d8: $f8 $5e
    ld a, [hl]                                    ; $57da: $7e
    and [hl]                                      ; $57db: $a6
    add c                                         ; $57dc: $81
    rst $00                                       ; $57dd: $c7
    ld b, c                                       ; $57de: $41
    ld [bc], a                                    ; $57df: $02
    db $fd                                        ; $57e0: $fd
    jr nz, jr_065_5810                            ; $57e1: $20 $2d

    ld c, l                                       ; $57e3: $4d
    inc bc                                        ; $57e4: $03
    ld c, l                                       ; $57e5: $4d
    inc c                                         ; $57e6: $0c
    cp b                                          ; $57e7: $b8
    ld h, d                                       ; $57e8: $62
    nop                                           ; $57e9: $00
    cp $fc                                        ; $57ea: $fe $fc
    nop                                           ; $57ec: $00
    cp $63                                        ; $57ed: $fe $63
    cp [hl]                                       ; $57ef: $be
    nop                                           ; $57f0: $00
    add b                                         ; $57f1: $80
    ld b, e                                       ; $57f2: $43
    ld [bc], a                                    ; $57f3: $02
    ld a, l                                       ; $57f4: $7d
    inc hl                                        ; $57f5: $23
    ld c, l                                       ; $57f6: $4d
    ccf                                           ; $57f7: $3f
    ldh [$fe], a                                  ; $57f8: $e0 $fe
    call c, Call_000_06fc                         ; $57fa: $dc $fc $06
    ld a, a                                       ; $57fd: $7f
    inc b                                         ; $57fe: $04
    db $f4                                        ; $57ff: $f4
    inc bc                                        ; $5800: $03
    nop                                           ; $5801: $00
    add e                                         ; $5802: $83
    add b                                         ; $5803: $80
    ccf                                           ; $5804: $3f
    ld [c], a                                     ; $5805: $e2
    ld hl, sp+$6c                                 ; $5806: $f8 $6c
    add b                                         ; $5808: $80
    ld [hl], h                                    ; $5809: $74
    adc c                                         ; $580a: $89
    call nz, $e201                                ; $580b: $c4 $01 $e2
    add c                                         ; $580e: $81
    ld h, e                                       ; $580f: $63

jr_065_5810:
    ld [bc], a                                    ; $5810: $02
    jp nz, Jump_000_004d                          ; $5811: $c2 $4d $00

    ret nz                                        ; $5814: $c0

    ldh [rP1], a                                  ; $5815: $e0 $00
    rst $38                                       ; $5817: $ff
    ld a, $00                                     ; $5818: $3e $00
    add d                                         ; $581a: $82
    add b                                         ; $581b: $80
    nop                                           ; $581c: $00
    add l                                         ; $581d: $85
    cp $00                                        ; $581e: $fe $00
    pop bc                                        ; $5820: $c1
    ld bc, $8366                                  ; $5821: $01 $66 $83
    inc de                                        ; $5824: $13
    inc c                                         ; $5825: $0c
    ld l, l                                       ; $5826: $6d
    nop                                           ; $5827: $00
    rst $38                                       ; $5828: $ff

jr_065_5829:
    ret nz                                        ; $5829: $c0

    add c                                         ; $582a: $81
    dec c                                         ; $582b: $0d
    ld b, d                                       ; $582c: $42
    ld b, d                                       ; $582d: $42
    rst $38                                       ; $582e: $ff
    ld h, h                                       ; $582f: $64
    add h                                         ; $5830: $84
    add l                                         ; $5831: $85
    nop                                           ; $5832: $00
    add b                                         ; $5833: $80
    rst $28                                       ; $5834: $ef
    nop                                           ; $5835: $00
    sub e                                         ; $5836: $93
    dec a                                         ; $5837: $3d
    ld [bc], a                                    ; $5838: $02
    ret nz                                        ; $5839: $c0

    add sp, $04                                   ; $583a: $e8 $04
    ld h, l                                       ; $583c: $65
    add sp, -$40                                  ; $583d: $e8 $c0
    nop                                           ; $583f: $00
    db $e4                                        ; $5840: $e4
    nop                                           ; $5841: $00
    ld e, e                                       ; $5842: $5b
    ret z                                         ; $5843: $c8

    ret nz                                        ; $5844: $c0

    ld [hl+], a                                   ; $5845: $22
    add d                                         ; $5846: $82
    jr nz, @-$40                                  ; $5847: $20 $be

    ld h, b                                       ; $5849: $60
    dec l                                         ; $584a: $2d
    ld a, [hl]                                    ; $584b: $7e
    ld bc, $a58a                                  ; $584c: $01 $8a $a5
    dec l                                         ; $584f: $2d
    ld c, l                                       ; $5850: $4d
    ld b, e                                       ; $5851: $43
    ld c, h                                       ; $5852: $4c
    inc l                                         ; $5853: $2c
    nop                                           ; $5854: $00
    rst $38                                       ; $5855: $ff
    nop                                           ; $5856: $00
    ld b, c                                       ; $5857: $41
    cp [hl]                                       ; $5858: $be
    nop                                           ; $5859: $00
    ld bc, $0be6                                  ; $585a: $01 $e6 $0b
    ld [bc], a                                    ; $585d: $02
    ld h, b                                       ; $585e: $60
    ld [bc], a                                    ; $585f: $02
    add sp, $25                                   ; $5860: $e8 $25
    inc c                                         ; $5862: $0c
    ld a, d                                       ; $5863: $7a
    add [hl]                                      ; $5864: $86
    cp $7e                                        ; $5865: $fe $7e
    nop                                           ; $5867: $00
    rst $20                                       ; $5868: $e7
    add d                                         ; $5869: $82
    ld b, $81                                     ; $586a: $06 $81
    pop bc                                        ; $586c: $c1
    nop                                           ; $586d: $00
    sbc a                                         ; $586e: $9f
    ld h, $7e                                     ; $586f: $26 $7e
    push hl                                       ; $5871: $e5
    ld c, e                                       ; $5872: $4b
    ld l, e                                       ; $5873: $6b
    inc b                                         ; $5874: $04
    add b                                         ; $5875: $80
    ld bc, $4b80                                  ; $5876: $01 $80 $4b
    inc b                                         ; $5879: $04
    ld b, [hl]                                    ; $587a: $46
    ret nz                                        ; $587b: $c0

    db $e3                                        ; $587c: $e3
    stop                                          ; $587d: $10 $00
    rst $18                                       ; $587f: $df
    ld a, h                                       ; $5880: $7c
    add $fc                                       ; $5881: $c6 $fc
    db $e3                                        ; $5883: $e3
    add h                                         ; $5884: $84
    ld b, [hl]                                    ; $5885: $46
    dec l                                         ; $5886: $2d
    nop                                           ; $5887: $00
    cp a                                          ; $5888: $bf
    ld a, d                                       ; $5889: $7a
    ld [$0138], sp                                ; $588a: $08 $38 $01
    inc c                                         ; $588d: $0c
    db $fc                                        ; $588e: $fc
    push hl                                       ; $588f: $e5
    add sp, $44                                   ; $5890: $e8 $44
    dec l                                         ; $5892: $2d
    inc c                                         ; $5893: $0c
    nop                                           ; $5894: $00
    sbc [hl]                                      ; $5895: $9e
    db $e4                                        ; $5896: $e4
    rst $00                                       ; $5897: $c7
    sub b                                         ; $5898: $90
    ld h, l                                       ; $5899: $65
    add [hl]                                      ; $589a: $86
    daa                                           ; $589b: $27
    nop                                           ; $589c: $00
    add b                                         ; $589d: $80
    ldh [rP1], a                                  ; $589e: $e0 $00
    adc h                                         ; $58a0: $8c
    nop                                           ; $58a1: $00
    nop                                           ; $58a2: $00
    nop                                           ; $58a3: $00
    rst $28                                       ; $58a4: $ef
    and b                                         ; $58a5: $a0
    call c, $dedd                                 ; $58a6: $dc $dd $de
    db $fc                                        ; $58a9: $fc
    ld [$d8a0], a                                 ; $58aa: $ea $a0 $d8
    reti                                          ; $58ad: $d9


    ld l, a                                       ; $58ae: $6f
    and b                                         ; $58af: $a0
    and b                                         ; $58b0: $a0
    jp nc, $fcd3                                  ; $58b1: $d2 $d3 $fc

    db $eb                                        ; $58b4: $eb
    ld de, $eca0                                  ; $58b5: $11 $a0 $ec
    db $e3                                        ; $58b8: $e3
    ld a, b                                       ; $58b9: $78
    db $e4                                        ; $58ba: $e4
    pop hl                                        ; $58bb: $e1
    ldh [$e0], a                                  ; $58bc: $e0 $e0
    call z, $dfe8                                 ; $58be: $cc $e8 $df
    ldh [$e1], a                                  ; $58c1: $e0 $e1
    ld [c], a                                     ; $58c3: $e2
    db $fc                                        ; $58c4: $fc
    jp hl                                         ; $58c5: $e9


    rst $38                                       ; $58c6: $ff
    sub $d7                                       ; $58c7: $d6 $d7
    jp c, $d0db                                   ; $58c9: $da $db $d0

    pop de                                        ; $58cc: $d1
    call nc, Call_065_76d5                        ; $58cd: $d4 $d5 $76
    db $fc                                        ; $58d0: $fc
    pop hl                                        ; $58d1: $e1
    and b                                         ; $58d2: $a0
    and b                                         ; $58d3: $a0
    db $fc                                        ; $58d4: $fc
    db $e4                                        ; $58d5: $e4
    sbc a                                         ; $58d6: $9f
    ld de, $f49f                                  ; $58d7: $11 $9f $f4
    pop hl                                        ; $58da: $e1
    rst $08                                       ; $58db: $cf
    ret nc                                        ; $58dc: $d0

    pop de                                        ; $58dd: $d1
    jp c, $e0db                                   ; $58de: $da $db $e0

    pop hl                                        ; $58e1: $e1
    call z, $e3e9                                 ; $58e2: $cc $e9 $e3
    db $e4                                        ; $58e5: $e4
    ld [hl], e                                    ; $58e6: $73
    push hl                                       ; $58e7: $e5
    and $fc                                       ; $58e8: $e6 $fc
    jp hl                                         ; $58ea: $e9


    add d                                         ; $58eb: $82
    add sp, -$61                                  ; $58ec: $e8 $9f
    and d                                         ; $58ee: $a2
    sbc l                                         ; $58ef: $9d
    rst $38                                       ; $58f0: $ff
    ld [c], a                                     ; $58f1: $e2
    ccf                                           ; $58f2: $3f
    and d                                         ; $58f3: $a2
    sbc l                                         ; $58f4: $9d
    sbc h                                         ; $58f5: $9c
    ld de, $9d9c                                  ; $58f6: $11 $9c $9d
    cp [hl]                                       ; $58f9: $be
    ldh [$7e], a                                  ; $58fa: $e0 $7e
    push hl                                       ; $58fc: $e5
    ld e, $cc                                     ; $58fd: $1e $cc
    jp hl                                         ; $58ff: $e9


    rst $20                                       ; $5900: $e7
    add sp, -$17                                  ; $5901: $e8 $e9
    ld [$e9fc], a                                 ; $5903: $ea $fc $e9
    add d                                         ; $5906: $82
    db $e3                                        ; $5907: $e3
    add [hl]                                      ; $5908: $86
    pop hl                                        ; $5909: $e1
    rst $08                                       ; $590a: $cf
    sbc a                                         ; $590b: $9f
    sbc h                                         ; $590c: $9c
    xor [hl]                                      ; $590d: $ae
    ld b, [hl]                                    ; $590e: $46
    cp $e0                                        ; $590f: $fe $e0
    ei                                            ; $5911: $fb
    pop hl                                        ; $5912: $e1
    ld b, [hl]                                    ; $5913: $46
    ld de, $466f                                  ; $5914: $11 $6f $46
    ld b, [hl]                                    ; $5917: $46
    sbc h                                         ; $5918: $9c
    sbc a                                         ; $5919: $9f
    ld a, [hl]                                    ; $591a: $7e
    db $e4                                        ; $591b: $e4
    and b                                         ; $591c: $a0
    and b                                         ; $591d: $a0
    call z, $fce9                                 ; $591e: $cc $e9 $fc
    ld [bc], a                                    ; $5921: $02
    db $ed                                        ; $5922: $ed
    inc b                                         ; $5923: $04
    db $e3                                        ; $5924: $e3
    and b                                         ; $5925: $a0
    and b                                         ; $5926: $a0
    sbc a                                         ; $5927: $9f
    sbc l                                         ; $5928: $9d
    sbc h                                         ; $5929: $9c
    xor [hl]                                      ; $592a: $ae
    ld de, $feaf                                  ; $592b: $11 $af $fe
    pop hl                                        ; $592e: $e1
    ei                                            ; $592f: $fb
    pop hl                                        ; $5930: $e1
    ret nz                                        ; $5931: $c0

    pop hl                                        ; $5932: $e1
    xor [hl]                                      ; $5933: $ae
    cp a                                          ; $5934: $bf
    ldh [$e4], a                                  ; $5935: $e0 $e4
    db $e3                                        ; $5937: $e3
    adc $ca                                       ; $5938: $ce $ca
    sbc $02                                       ; $593a: $de $02
    db $eb                                        ; $593c: $eb
    and b                                         ; $593d: $a0
    and b                                         ; $593e: $a0
    sub $d7                                       ; $593f: $d6 $d7
    ld [$a0e1], sp                                ; $5941: $08 $e1 $a0
    sbc a                                         ; $5944: $9f
    xor a                                         ; $5945: $af
    sbc h                                         ; $5946: $9c
    ld b, [hl]                                    ; $5947: $46
    ld b, [hl]                                    ; $5948: $46
    xor a                                         ; $5949: $af
    cp $e1                                        ; $594a: $fe $e1
    xor [hl]                                      ; $594c: $ae
    ld sp, hl                                     ; $594d: $f9
    ld [c], a                                     ; $594e: $e2
    ld de, $4619                                  ; $594f: $11 $19 $46
    or e                                          ; $5952: $b3
    ldh [$7e], a                                  ; $5953: $e0 $7e
    ld [c], a                                     ; $5955: $e2
    sub $d7                                       ; $5956: $d6 $d7
    adc $cb                                       ; $5958: $ce $cb
    ld [bc], a                                    ; $595a: $02
    db $eb                                        ; $595b: $eb
    add d                                         ; $595c: $82
    jp $c17c                                      ; $595d: $c3 $7c $c1


    ld [c], a                                     ; $5960: $e2
    ld c, d                                       ; $5961: $4a
    ldh [rLYC], a                                 ; $5962: $e0 $45
    ld d, b                                       ; $5964: $50
    ld c, b                                       ; $5965: $48
    ld c, b                                       ; $5966: $48
    xor a                                         ; $5967: $af
    ld b, c                                       ; $5968: $41
    pop hl                                        ; $5969: $e1
    inc [hl]                                      ; $596a: $34
    ld b, b                                       ; $596b: $40
    ldh [$74], a                                  ; $596c: $e0 $74
    pop hl                                        ; $596e: $e1
    and c                                         ; $596f: $a1
    ld a, d                                       ; $5970: $7a
    ret nz                                        ; $5971: $c0

    ret c                                         ; $5972: $d8

    reti                                          ; $5973: $d9


    adc $cb                                       ; $5974: $ce $cb
    ld [bc], a                                    ; $5976: $02
    db $eb                                        ; $5977: $eb
    db $e3                                        ; $5978: $e3
    and b                                         ; $5979: $a0
    and b                                         ; $597a: $a0
    add d                                         ; $597b: $82
    pop bc                                        ; $597c: $c1
    add d                                         ; $597d: $82
    ldh [$89], a                                  ; $597e: $e0 $89
    pop hl                                        ; $5980: $e1
    ld b, [hl]                                    ; $5981: $46
    ld c, d                                       ; $5982: $4a
    ld e, l                                       ; $5983: $5d
    ld l, a                                       ; $5984: $6f
    ld d, h                                       ; $5985: $54
    ld e, c                                       ; $5986: $59
    ld b, c                                       ; $5987: $41
    ld b, l                                       ; $5988: $45
    rst $30                                       ; $5989: $f7
    ldh [rNR12], a                                ; $598a: $e0 $12
    ld [de], a                                    ; $598c: $12
    ld [hl], d                                    ; $598d: $72
    ldh [rIF], a                                  ; $598e: $e0 $0f
    xor [hl]                                      ; $5990: $ae
    xor a                                         ; $5991: $af
    sbc [hl]                                      ; $5992: $9e
    and b                                         ; $5993: $a0
    ld a, [hl]                                    ; $5994: $7e
    pop bc                                        ; $5995: $c1
    adc $cb                                       ; $5996: $ce $cb
    nop                                           ; $5998: $00
    rst $08                                       ; $5999: $cf
    inc b                                         ; $599a: $04
    ret nz                                        ; $599b: $c0

    db $fd                                        ; $599c: $fd
    sbc [hl]                                      ; $599d: $9e
    inc c                                         ; $599e: $0c
    pop hl                                        ; $599f: $e1
    ld b, [hl]                                    ; $59a0: $46
    ld b, [hl]                                    ; $59a1: $46
    ld d, l                                       ; $59a2: $55
    ld d, [hl]                                    ; $59a3: $56
    dec hl                                        ; $59a4: $2b
    inc l                                         ; $59a5: $2c
    inc de                                        ; $59a6: $13
    jr nz, jr_065_59d6                            ; $59a7: $20 $2d

    pop bc                                        ; $59a9: $c1
    db $e3                                        ; $59aa: $e3
    ld sp, $9ee1                                  ; $59ab: $31 $e1 $9e
    db $e4                                        ; $59ae: $e4
    call nz, $db00                                ; $59af: $c4 $00 $db
    ld [$f9c0], sp                                ; $59b2: $08 $c0 $f9
    and c                                         ; $59b5: $a1
    add $c0                                       ; $59b6: $c6 $c0
    adc $c0                                       ; $59b8: $ce $c0
    ld b, l                                       ; $59ba: $45
    dec l                                         ; $59bb: $2d
    jr nz, jr_065_59de                            ; $59bc: $20 $20

    inc l                                         ; $59be: $2c
    db $e3                                        ; $59bf: $e3
    cp l                                          ; $59c0: $bd
    ld b, l                                       ; $59c1: $45
    ld [bc], a                                    ; $59c2: $02
    pop hl                                        ; $59c3: $e1
    ret nz                                        ; $59c4: $c0

    ret nz                                        ; $59c5: $c0

    ld a, [hl]                                    ; $59c6: $7e
    jp $d7d6                                      ; $59c7: $c3 $d6 $d7


    and b                                         ; $59ca: $a0
    call Call_000_00a0                            ; $59cb: $cd $a0 $00
    db $dd                                        ; $59ce: $dd
    and b                                         ; $59cf: $a0
    sbc [hl]                                      ; $59d0: $9e
    ld b, d                                       ; $59d1: $42
    pop hl                                        ; $59d2: $e1
    ret nz                                        ; $59d3: $c0

    ret nz                                        ; $59d4: $c0

    dec l                                         ; $59d5: $2d

jr_065_59d6:
    ld h, $0f                                     ; $59d6: $26 $0f
    ld hl, $5f3e                                  ; $59d8: $21 $3e $5f
    ld c, d                                       ; $59db: $4a
    ld [bc], a                                    ; $59dc: $02
    pop hl                                        ; $59dd: $e1

jr_065_59de:
    ret nz                                        ; $59de: $c0

    ret nz                                        ; $59df: $c0

    add b                                         ; $59e0: $80
    pop bc                                        ; $59e1: $c1

Call_065_59e2:
    nop                                           ; $59e2: $00
    rst $18                                       ; $59e3: $df
    db $fc                                        ; $59e4: $fc
    nop                                           ; $59e5: $00
    db $e4                                        ; $59e6: $e4
    sub b                                         ; $59e7: $90
    pop hl                                        ; $59e8: $e1
    ld b, [hl]                                    ; $59e9: $46
    ld b, [hl]                                    ; $59ea: $46
    add hl, sp                                    ; $59eb: $39
    dec [hl]                                      ; $59ec: $35
    dec [hl]                                      ; $59ed: $35
    ld a, [hl-]                                   ; $59ee: $3a
    inc de                                        ; $59ef: $13
    ld d, [hl]                                    ; $59f0: $56
    ld d, l                                       ; $59f1: $55
    ld [bc], a                                    ; $59f2: $02
    pop bc                                        ; $59f3: $c1
    ld [hl], a                                    ; $59f4: $77
    ret nz                                        ; $59f5: $c0

    sbc [hl]                                      ; $59f6: $9e
    inc a                                         ; $59f7: $3c
    and b                                         ; $59f8: $a0
    nop                                           ; $59f9: $00
    rst $18                                       ; $59fa: $df
    inc b                                         ; $59fb: $04
    and e                                         ; $59fc: $a3
    db $fd                                        ; $59fd: $fd
    sbc [hl]                                      ; $59fe: $9e
    ret nz                                        ; $59ff: $c0

    jp nz, Jump_000_3e46                          ; $5a00: $c2 $46 $3e

    dec [hl]                                      ; $5a03: $35
    dec [hl]                                      ; $5a04: $35
    dec [hl]                                      ; $5a05: $35
    add hl, sp                                    ; $5a06: $39
    ld [c], a                                     ; $5a07: $e2
    ld [bc], a                                    ; $5a08: $02
    jp $c246                                      ; $5a09: $c3 $46 $c2


    ret nz                                        ; $5a0c: $c0

    nop                                           ; $5a0d: $00
    rst $18                                       ; $5a0e: $df
    nop                                           ; $5a0f: $00
    jp $d1d0                                      ; $5a10: $c3 $d0 $d1


    sbc [hl]                                      ; $5a13: $9e
    ld a, [bc]                                    ; $5a14: $0a
    ret nz                                        ; $5a15: $c0

    jp nz, $c0ae                                  ; $5a16: $c2 $ae $c0

    pop hl                                        ; $5a19: $e1
    ld a, $02                                     ; $5a1a: $3e $02
    pop bc                                        ; $5a1c: $c1
    db $f4                                        ; $5a1d: $f4
    and b                                         ; $5a1e: $a0
    add b                                         ; $5a1f: $80
    and b                                         ; $5a20: $a0
    add sp, -$7f                                  ; $5a21: $e8 $81
    ld c, b                                       ; $5a23: $48
    nop                                           ; $5a24: $00
    rst $18                                       ; $5a25: $df
    add d                                         ; $5a26: $82
    add c                                         ; $5a27: $81
    ld a, a                                       ; $5a28: $7f
    jp $c0af                                      ; $5a29: $c3 $af $c0


    ld [c], a                                     ; $5a2c: $e2
    ld b, d                                       ; $5a2d: $42
    and d                                         ; $5a2e: $a2
    ld b, [hl]                                    ; $5a2f: $46
    inc bc                                        ; $5a30: $03
    pop bc                                        ; $5a31: $c1
    ret nz                                        ; $5a32: $c0

    ld a, [hl]                                    ; $5a33: $7e
    add e                                         ; $5a34: $83
    nop                                           ; $5a35: $00
    reti                                          ; $5a36: $d9


    add d                                         ; $5a37: $82
    add c                                         ; $5a38: $81
    ld a, [hl]                                    ; $5a39: $7e
    and c                                         ; $5a3a: $a1
    add b                                         ; $5a3b: $80
    ldh [rLCDC], a                                ; $5a3c: $e0 $40
    push hl                                       ; $5a3e: $e5
    ld a, [hl-]                                   ; $5a3f: $3a
    ld b, l                                       ; $5a40: $45
    add b                                         ; $5a41: $80
    ld b, c                                       ; $5a42: $41
    jp nz, $e141                                  ; $5a43: $c2 $41 $e1

    add d                                         ; $5a46: $82
    pop hl                                        ; $5a47: $e1
    nop                                           ; $5a48: $00
    jp c, $8520                                   ; $5a49: $da $20 $85

    ld b, c                                       ; $5a4c: $41
    and b                                         ; $5a4d: $a0
    adc b                                         ; $5a4e: $88
    and c                                         ; $5a4f: $a1
    ld b, l                                       ; $5a50: $45
    dec c                                         ; $5a51: $0d
    ld a, [hl-]                                   ; $5a52: $3a
    nop                                           ; $5a53: $00
    ldh [$3c], a                                  ; $5a54: $e0 $3c
    ld b, h                                       ; $5a56: $44
    ld b, c                                       ; $5a57: $41
    jp nz, $c003                                  ; $5a58: $c2 $03 $c0

    add d                                         ; $5a5b: $82
    jp $6cd0                                      ; $5a5c: $c3 $d0 $6c


    or b                                          ; $5a5f: $b0
    inc b                                         ; $5a60: $04
    adc l                                         ; $5a61: $8d
    nop                                           ; $5a62: $00
    add e                                         ; $5a63: $83
    ld a, $c0                                     ; $5a64: $3e $c0
    ld bc, $44a0                                  ; $5a66: $01 $a0 $44
    inc a                                         ; $5a69: $3c
    ret nz                                        ; $5a6a: $c0

    ret nz                                        ; $5a6b: $c0

    dec [hl]                                      ; $5a6c: $35
    add c                                         ; $5a6d: $81
    ld b, d                                       ; $5a6e: $42
    ld b, c                                       ; $5a6f: $41
    jp nz, $e300                                  ; $5a70: $c2 $00 $e3

    inc b                                         ; $5a73: $04
    adc e                                         ; $5a74: $8b
    nop                                           ; $5a75: $00
    adc l                                         ; $5a76: $8d
    add d                                         ; $5a77: $82
    push hl                                       ; $5a78: $e5
    add d                                         ; $5a79: $82
    ld h, b                                       ; $5a7a: $60
    and c                                         ; $5a7b: $a1
    ld a, [hl-]                                   ; $5a7c: $3a
    adc [hl]                                      ; $5a7d: $8e
    and c                                         ; $5a7e: $a1
    ld b, b                                       ; $5a7f: $40
    add c                                         ; $5a80: $81
    ret nz                                        ; $5a81: $c0

    xor h                                         ; $5a82: $ac
    dec [hl]                                      ; $5a83: $35
    ld b, b                                       ; $5a84: $40
    ld b, c                                       ; $5a85: $41
    jp nz, $8180                                  ; $5a86: $c2 $80 $81

    ldh [rOCPS], a                                ; $5a89: $e0 $6a
    ld h, c                                       ; $5a8b: $61
    ret nc                                        ; $5a8c: $d0

    ld l, l                                       ; $5a8d: $6d
    inc b                                         ; $5a8e: $04
    adc e                                         ; $5a8f: $8b
    add d                                         ; $5a90: $82
    ld h, l                                       ; $5a91: $65
    add b                                         ; $5a92: $80
    pop hl                                        ; $5a93: $e1
    ld b, [hl]                                    ; $5a94: $46
    ld b, [hl]                                    ; $5a95: $46
    ld b, d                                       ; $5a96: $42
    ld [bc], a                                    ; $5a97: $02
    jp nz, $ade0                                  ; $5a98: $c2 $e0 $ad

    ld b, b                                       ; $5a9b: $40
    pop hl                                        ; $5a9c: $e1
    ld [hl], h                                    ; $5a9d: $74
    pop bc                                        ; $5a9e: $c1
    rst $38                                       ; $5a9f: $ff
    and b                                         ; $5aa0: $a0
    add d                                         ; $5aa1: $82
    pop bc                                        ; $5aa2: $c1
    ret nc                                        ; $5aa3: $d0

    ld l, l                                       ; $5aa4: $6d
    ld [bc], a                                    ; $5aa5: $02
    ld l, e                                       ; $5aa6: $6b
    adc b                                         ; $5aa7: $88
    inc b                                         ; $5aa8: $04
    ld h, l                                       ; $5aa9: $65
    ld b, c                                       ; $5aaa: $41
    add c                                         ; $5aab: $81
    pop bc                                        ; $5aac: $c1
    and c                                         ; $5aad: $a1
    xor l                                         ; $5aae: $ad
    cp a                                          ; $5aaf: $bf
    and b                                         ; $5ab0: $a0
    jp Jump_000_3a81                              ; $5ab1: $c3 $81 $3a


    add b                                         ; $5ab4: $80
    xor [hl]                                      ; $5ab5: $ae
    add c                                         ; $5ab6: $81
    xor a                                         ; $5ab7: $af
    add c                                         ; $5ab8: $81
    add b                                         ; $5ab9: $80
    ld h, d                                       ; $5aba: $62
    add d                                         ; $5abb: $82
    nop                                           ; $5abc: $00
    sbc b                                         ; $5abd: $98
    add d                                         ; $5abe: $82
    ld h, h                                       ; $5abf: $64
    ld b, c                                       ; $5ac0: $41
    add e                                         ; $5ac1: $83
    pop bc                                        ; $5ac2: $c1
    and d                                         ; $5ac3: $a2
    dec [hl]                                      ; $5ac4: $35
    dec b                                         ; $5ac5: $05
    add hl, sp                                    ; $5ac6: $39
    ld b, c                                       ; $5ac7: $41
    db $e3                                        ; $5ac8: $e3
    ld b, [hl]                                    ; $5ac9: $46
    ld b, b                                       ; $5aca: $40
    and b                                         ; $5acb: $a0
    nop                                           ; $5acc: $00
    ld h, e                                       ; $5acd: $63
    nop                                           ; $5ace: $00
    db $db                                        ; $5acf: $db
    add d                                         ; $5ad0: $82
    db $e3                                        ; $5ad1: $e3
    add c                                         ; $5ad2: $81
    and e                                         ; $5ad3: $a3
    rra                                           ; $5ad4: $1f
    add hl, sp                                    ; $5ad5: $39
    jr c, jr_065_5b15                             ; $5ad6: $38 $3d

    dec a                                         ; $5ad8: $3d
    scf                                           ; $5ad9: $37
    add e                                         ; $5ada: $83
    add e                                         ; $5adb: $83
    ld [hl], $60                                  ; $5adc: $36 $60
    add d                                         ; $5ade: $82
    add e                                         ; $5adf: $83
    ldh a, [rP1]                                  ; $5ae0: $f0 $00
    db $dd                                        ; $5ae2: $dd
    adc d                                         ; $5ae3: $8a
    ld b, c                                       ; $5ae4: $41
    pop bc                                        ; $5ae5: $c1
    add b                                         ; $5ae6: $80
    bit 4, c                                      ; $5ae7: $cb $61
    ld b, [hl]                                    ; $5ae9: $46
    ld b, l                                       ; $5aea: $45
    ld b, l                                       ; $5aeb: $45
    ld [de], a                                    ; $5aec: $12
    rrca                                          ; $5aed: $0f
    inc de                                        ; $5aee: $13
    inc de                                        ; $5aef: $13
    ld [de], a                                    ; $5af0: $12
    ld b, l                                       ; $5af1: $45
    db $f4                                        ; $5af2: $f4
    ld [c], a                                     ; $5af3: $e2
    pop bc                                        ; $5af4: $c1
    add c                                         ; $5af5: $81
    nop                                           ; $5af6: $00

jr_065_5af7:
    rst $18                                       ; $5af7: $df
    add d                                         ; $5af8: $82
    ld h, d                                       ; $5af9: $62
    cp $c2                                        ; $5afa: $fe $c2
    ld h, h                                       ; $5afc: $64
    xor [hl]                                      ; $5afd: $ae
    ld b, [hl]                                    ; $5afe: $46
    ld [de], a                                    ; $5aff: $12
    inc de                                        ; $5b00: $13
    ld [de], a                                    ; $5b01: $12
    scf                                           ; $5b02: $37
    dec a                                         ; $5b03: $3d
    ld b, e                                       ; $5b04: $43
    jr c, jr_065_5b40                             ; $5b05: $38 $39

    ld a, l                                       ; $5b07: $7d
    ld h, c                                       ; $5b08: $61
    ld [bc], a                                    ; $5b09: $02
    ld h, d                                       ; $5b0a: $62
    nop                                           ; $5b0b: $00
    rst $18                                       ; $5b0c: $df
    add d                                         ; $5b0d: $82
    ld h, d                                       ; $5b0e: $62
    and c                                         ; $5b0f: $a1
    jp nz, $0663                                  ; $5b10: $c2 $63 $06

    ld a, [bc]                                    ; $5b13: $0a
    ld h, b                                       ; $5b14: $60

jr_065_5b15:
    ld b, l                                       ; $5b15: $45
    jr c, @-$3f                                   ; $5b16: $38 $bf

    add c                                         ; $5b18: $81
    inc b                                         ; $5b19: $04
    ld h, c                                       ; $5b1a: $61
    jp nz, Jump_000_0082                          ; $5b1b: $c2 $82 $00

    rst $18                                       ; $5b1e: $df
    add d                                         ; $5b1f: $82
    ld h, e                                       ; $5b20: $63
    nop                                           ; $5b21: $00
    ld b, e                                       ; $5b22: $43
    and e                                         ; $5b23: $a3
    ld c, d                                       ; $5b24: $4a
    ld b, b                                       ; $5b25: $40
    ld b, b                                       ; $5b26: $40
    add b                                         ; $5b27: $80
    add b                                         ; $5b28: $80
    and b                                         ; $5b29: $a0
    cp c                                          ; $5b2a: $b9
    ld b, d                                       ; $5b2b: $42
    inc b                                         ; $5b2c: $04
    ld h, c                                       ; $5b2d: $61
    nop                                           ; $5b2e: $00
    rst $18                                       ; $5b2f: $df
    add d                                         ; $5b30: $82
    ld b, d                                       ; $5b31: $42
    inc c                                         ; $5b32: $0c
    ld b, e                                       ; $5b33: $43
    and b                                         ; $5b34: $a0
    ld bc, $46e2                                  ; $5b35: $01 $e2 $46
    ld de, $c37f                                  ; $5b38: $11 $7f $c3
    ld [bc], a                                    ; $5b3b: $02
    jp nz, Jump_065_6104                          ; $5b3c: $c2 $04 $61

    nop                                           ; $5b3f: $00

jr_065_5b40:
    rst $18                                       ; $5b40: $df
    nop                                           ; $5b41: $00
    add d                                         ; $5b42: $82
    ld b, l                                       ; $5b43: $45
    adc d                                         ; $5b44: $8a
    ld b, h                                       ; $5b45: $44
    add b                                         ; $5b46: $80
    pop hl                                        ; $5b47: $e1
    ld a, a                                       ; $5b48: $7f
    add c                                         ; $5b49: $81
    add hl, sp                                    ; $5b4a: $39
    ld b, b                                       ; $5b4b: $40
    add d                                         ; $5b4c: $82
    and e                                         ; $5b4d: $a3
    nop                                           ; $5b4e: $00
    rst $18                                       ; $5b4f: $df
    add d                                         ; $5b50: $82
    ld b, b                                       ; $5b51: $40
    inc b                                         ; $5b52: $04
    ld [bc], a                                    ; $5b53: $02
    ld b, d                                       ; $5b54: $42
    ccf                                           ; $5b55: $3f
    ld h, c                                       ; $5b56: $61
    ld [de], a                                    ; $5b57: $12
    pop bc                                        ; $5b58: $c1
    ret nz                                        ; $5b59: $c0

    ret nz                                        ; $5b5a: $c0

    ret nz                                        ; $5b5b: $c0

    di                                            ; $5b5c: $f3
    jp nz, $a182                                  ; $5b5d: $c2 $82 $a1

    nop                                           ; $5b60: $00
    rst $18                                       ; $5b61: $df
    nop                                           ; $5b62: $00
    add d                                         ; $5b63: $82
    dec h                                         ; $5b64: $25
    add b                                         ; $5b65: $80
    ld h, b                                       ; $5b66: $60
    adc l                                         ; $5b67: $8d
    ld b, c                                       ; $5b68: $41
    ld b, c                                       ; $5b69: $41
    ret nz                                        ; $5b6a: $c0

    ld b, b                                       ; $5b6b: $40
    ret nz                                        ; $5b6c: $c0

    di                                            ; $5b6d: $f3
    jp nz, Jump_065_6181                          ; $5b6e: $c2 $81 $61

    nop                                           ; $5b71: $00
    rst $18                                       ; $5b72: $df
    jr jr_065_5af7                                ; $5b73: $18 $82

    ld h, e                                       ; $5b75: $63
    cp a                                          ; $5b76: $bf
    ld b, b                                       ; $5b77: $40
    add b                                         ; $5b78: $80
    ld h, e                                       ; $5b79: $63
    ld b, l                                       ; $5b7a: $45
    scf                                           ; $5b7b: $37
    ret nz                                        ; $5b7c: $c0

    and [hl]                                      ; $5b7d: $a6
    ld b, b                                       ; $5b7e: $40
    add c                                         ; $5b7f: $81
    nop                                           ; $5b80: $00
    rst $18                                       ; $5b81: $df
    ld [$a700], sp                                ; $5b82: $08 $00 $a7
    ld a, a                                       ; $5b85: $7f
    ld b, d                                       ; $5b86: $42
    add b                                         ; $5b87: $80
    pop bc                                        ; $5b88: $c1
    ld [hl], $00                                  ; $5b89: $36 $00
    and e                                         ; $5b8b: $a3
    nop                                           ; $5b8c: $00
    sbc a                                         ; $5b8d: $9f
    nop                                           ; $5b8e: $00
    add l                                         ; $5b8f: $85
    ld a, [hl]                                    ; $5b90: $7e
    ld [c], a                                     ; $5b91: $e2
    nop                                           ; $5b92: $00
    ld b, b                                       ; $5b93: $40
    add b                                         ; $5b94: $80
    adc c                                         ; $5b95: $89
    nop                                           ; $5b96: $00
    rst $38                                       ; $5b97: $ff
    add e                                         ; $5b98: $83
    add d                                         ; $5b99: $82
    jr nz, jr_065_5bdd                            ; $5b9a: $20 $41

    add d                                         ; $5b9c: $82
    nop                                           ; $5b9d: $00
    rst $18                                       ; $5b9e: $df
    nop                                           ; $5b9f: $00
    add a                                         ; $5ba0: $87
    ret nz                                        ; $5ba1: $c0

    ld h, d                                       ; $5ba2: $62
    ld [bc], a                                    ; $5ba3: $02
    cp a                                          ; $5ba4: $bf
    add e                                         ; $5ba5: $83
    ld a, $82                                     ; $5ba6: $3e $82
    ld [bc], a                                    ; $5ba8: $02
    ld [bc], a                                    ; $5ba9: $02
    ld hl, $df00                                  ; $5baa: $21 $00 $df
    nop                                           ; $5bad: $00
    add l                                         ; $5bae: $85
    ld b, b                                       ; $5baf: $40
    add e                                         ; $5bb0: $83
    ret nz                                        ; $5bb1: $c0

    add sp, $00                                   ; $5bb2: $e8 $00
    ld [bc], a                                    ; $5bb4: $02
    ld [hl+], a                                   ; $5bb5: $22
    nop                                           ; $5bb6: $00
    rst $18                                       ; $5bb7: $df
    nop                                           ; $5bb8: $00
    db $e4                                        ; $5bb9: $e4
    ret nz                                        ; $5bba: $c0

    ld bc, $81c0                                  ; $5bbb: $01 $c0 $81
    nop                                           ; $5bbe: $00
    ld h, c                                       ; $5bbf: $61
    add b                                         ; $5bc0: $80
    db $e3                                        ; $5bc1: $e3
    ret nz                                        ; $5bc2: $c0

    add d                                         ; $5bc3: $82
    ld [$df00], sp                                ; $5bc4: $08 $00 $df
    ld a, [hl]                                    ; $5bc7: $7e
    and h                                         ; $5bc8: $a4
    ret nz                                        ; $5bc9: $c0

    inc b                                         ; $5bca: $04
    ld b, d                                       ; $5bcb: $42
    ld bc, $7f61                                  ; $5bcc: $01 $61 $7f
    ld b, b                                       ; $5bcf: $40
    ret nz                                        ; $5bd0: $c0

    ld [hl+], a                                   ; $5bd1: $22
    add c                                         ; $5bd2: $81
    jr nz, jr_065_5bf5                            ; $5bd3: $20 $20

    nop                                           ; $5bd5: $00
    rst $18                                       ; $5bd6: $df
    ld a, [hl]                                    ; $5bd7: $7e
    add h                                         ; $5bd8: $84
    ld b, c                                       ; $5bd9: $41
    ld b, h                                       ; $5bda: $44
    nop                                           ; $5bdb: $00
    ld h, c                                       ; $5bdc: $61

jr_065_5bdd:
    ld a, [hl]                                    ; $5bdd: $7e
    jr nz, @+$42                                  ; $5bde: $20 $40

    cp a                                          ; $5be0: $bf
    jp nz, $df00                                  ; $5be1: $c2 $00 $df

    add $f6                                       ; $5be4: $c6 $f6
    nop                                           ; $5be6: $00
    and b                                         ; $5be7: $a0
    and b                                         ; $5be8: $a0
    nop                                           ; $5be9: $00
    inc h                                         ; $5bea: $24
    ccf                                           ; $5beb: $3f
    and d                                         ; $5bec: $a2
    ld b, b                                       ; $5bed: $40
    db $e3                                        ; $5bee: $e3
    dec [hl]                                      ; $5bef: $35
    ld b, d                                       ; $5bf0: $42
    nop                                           ; $5bf1: $00
    rst $38                                       ; $5bf2: $ff
    ld [bc], a                                    ; $5bf3: $02
    nop                                           ; $5bf4: $00

jr_065_5bf5:
    jp nz, Jump_000_2100                          ; $5bf5: $c2 $00 $21

    nop                                           ; $5bf8: $00
    ld e, b                                       ; $5bf9: $58
    db $fc                                        ; $5bfa: $fc
    ld h, d                                       ; $5bfb: $62
    nop                                           ; $5bfc: $00
    ld [hl+], a                                   ; $5bfd: $22
    ld c, l                                       ; $5bfe: $4d
    ld h, d                                       ; $5bff: $62
    ld b, b                                       ; $5c00: $40
    ld [hl+], a                                   ; $5c01: $22

jr_065_5c02:
    inc c                                         ; $5c02: $0c
    cp a                                          ; $5c03: $bf
    jr nz, jr_065_5c3d                            ; $5c04: $20 $37

    and b                                         ; $5c06: $a0
    ld b, [hl]                                    ; $5c07: $46
    ld b, [hl]                                    ; $5c08: $46
    ld a, a                                       ; $5c09: $7f
    add c                                         ; $5c0a: $81
    ld h, d                                       ; $5c0b: $62
    and h                                         ; $5c0c: $a4
    nop                                           ; $5c0d: $00
    ld d, l                                       ; $5c0e: $55
    db $fc                                        ; $5c0f: $fc
    ld h, e                                       ; $5c10: $63
    add d                                         ; $5c11: $82
    ld a, [hl]                                    ; $5c12: $7e
    and c                                         ; $5c13: $a1
    and c                                         ; $5c14: $a1
    adc h                                         ; $5c15: $8c
    ld h, e                                       ; $5c16: $63
    ld b, b                                       ; $5c17: $40
    call nz, Call_000_223e                        ; $5c18: $c4 $3e $22
    cp a                                          ; $5c1b: $bf
    ld h, d                                       ; $5c1c: $62
    nop                                           ; $5c1d: $00
    ld hl, $01a0                                  ; $5c1e: $21 $a0 $01
    and b                                         ; $5c21: $a0
    nop                                           ; $5c22: $00
    push de                                       ; $5c23: $d5
    db $fc                                        ; $5c24: $fc
    ld h, a                                       ; $5c25: $67
    ret nz                                        ; $5c26: $c0

    inc bc                                        ; $5c27: $03
    ld b, b                                       ; $5c28: $40
    ld bc, $01ff                                  ; $5c29: $01 $ff $01
    ld a, [hl]                                    ; $5c2c: $7e
    inc bc                                        ; $5c2d: $03

jr_065_5c2e:
    ld a, [hl]                                    ; $5c2e: $7e
    ld h, [hl]                                    ; $5c2f: $66
    jr nz, jr_065_5c2e                            ; $5c30: $20 $fc

    xor d                                         ; $5c32: $aa
    jr nc, jr_065_5c02                            ; $5c33: $30 $cd

    nop                                           ; $5c35: $00
    inc hl                                        ; $5c36: $23
    ld a, $84                                     ; $5c37: $3e $84
    ld a, a                                       ; $5c39: $7f
    jp nz, $7639                                  ; $5c3a: $c2 $39 $76

jr_065_5c3d:
    ld h, c                                       ; $5c3d: $61
    nop                                           ; $5c3e: $00
    ld b, c                                       ; $5c3f: $41
    add b                                         ; $5c40: $80
    ld a, [hl]                                    ; $5c41: $7e
    and h                                         ; $5c42: $a4
    db $fc                                        ; $5c43: $fc
    xor e                                         ; $5c44: $ab
    ld [bc], a                                    ; $5c45: $02
    db $ec                                        ; $5c46: $ec
    db $fc                                        ; $5c47: $fc
    ld h, l                                       ; $5c48: $65
    ld a, a                                       ; $5c49: $7f
    add b                                         ; $5c4a: $80
    cp $80                                        ; $5c4b: $fe $80
    rst $38                                       ; $5c4d: $ff
    ld [bc], a                                    ; $5c4e: $02
    ld b, d                                       ; $5c4f: $42
    nop                                           ; $5c50: $00
    ld b, b                                       ; $5c51: $40
    ld [c], a                                     ; $5c52: $e2
    ld a, h                                       ; $5c53: $7c
    ld h, c                                       ; $5c54: $61
    ld a, [hl]                                    ; $5c55: $7e
    ld b, l                                       ; $5c56: $45
    db $fc                                        ; $5c57: $fc
    jp nz, $a4f8                                  ; $5c58: $c2 $f8 $a4

    ld [hl-], a                                   ; $5c5b: $32
    xor e                                         ; $5c5c: $ab
    db $fc                                        ; $5c5d: $fc
    ld h, [hl]                                    ; $5c5e: $66
    ccf                                           ; $5c5f: $3f
    db $e4                                        ; $5c60: $e4
    db $10                                        ; $5c61: $10
    rst $38                                       ; $5c62: $ff
    ret nz                                        ; $5c63: $c0

    pop bc                                        ; $5c64: $c1
    ret nz                                        ; $5c65: $c0

    or $61                                        ; $5c66: $f6 $61
    db $fc                                        ; $5c68: $fc
    ld h, c                                       ; $5c69: $61
    and c                                         ; $5c6a: $a1

jr_065_5c6b:
    ld a, [hl]                                    ; $5c6b: $7e
    and b                                         ; $5c6c: $a0
    ld e, [hl]                                    ; $5c6d: $5e
    pop bc                                        ; $5c6e: $c1
    db $fc                                        ; $5c6f: $fc
    pop bc                                        ; $5c70: $c1
    jr nz, jr_065_5c6b                            ; $5c71: $20 $f8

    and l                                         ; $5c73: $a5
    nop                                           ; $5c74: $00
    set 7, h                                      ; $5c75: $cb $fc
    ld h, [hl]                                    ; $5c77: $66
    cp [hl]                                       ; $5c78: $be
    and b                                         ; $5c79: $a0
    ccf                                           ; $5c7a: $3f
    and h                                         ; $5c7b: $a4
    ld a, $41                                     ; $5c7c: $3e $41
    ld b, d                                       ; $5c7e: $42
    ld [hl], l                                    ; $5c7f: $75
    ld b, b                                       ; $5c80: $40
    ld c, $bd                                     ; $5c81: $0e $bd
    ret nz                                        ; $5c83: $c0

    sbc l                                         ; $5c84: $9d
    sbc l                                         ; $5c85: $9d
    sbc l                                         ; $5c86: $9d
    ld a, d                                       ; $5c87: $7a
    and l                                         ; $5c88: $a5
    ld hl, sp+$65                                 ; $5c89: $f8 $65
    nop                                           ; $5c8b: $00
    adc e                                         ; $5c8c: $8b
    db $fc                                        ; $5c8d: $fc
    ld h, $c1                                     ; $5c8e: $26 $c1
    sbc [hl]                                      ; $5c90: $9e
    cp [hl]                                       ; $5c91: $be
    ld b, e                                       ; $5c92: $43
    ret nz                                        ; $5c93: $c0

    pop hl                                        ; $5c94: $e1
    or h                                          ; $5c95: $b4
    ld b, e                                       ; $5c96: $43
    or h                                          ; $5c97: $b4
    ld h, d                                       ; $5c98: $62
    ld a, [c]                                     ; $5c99: $f2
    jr nz, @-$62                                  ; $5c9a: $20 $9c

    sbc a                                         ; $5c9c: $9f
    add b                                         ; $5c9d: $80
    ld e, d                                       ; $5c9e: $5a
    dec b                                         ; $5c9f: $05
    nop                                           ; $5ca0: $00
    push de                                       ; $5ca1: $d5
    db $fc                                        ; $5ca2: $fc
    inc h                                         ; $5ca3: $24
    ccf                                           ; $5ca4: $3f
    add l                                         ; $5ca5: $85
    ld bc, $f261                                  ; $5ca6: $01 $61 $f2
    ld b, d                                       ; $5ca9: $42
    add b                                         ; $5caa: $80
    pop hl                                        ; $5cab: $e1
    sbc h                                         ; $5cac: $9c
    rlca                                          ; $5cad: $07
    ld [de], a                                    ; $5cae: $12
    ld [de], a                                    ; $5caf: $12
    sbc [hl]                                      ; $5cb0: $9e
    ld e, d                                       ; $5cb1: $5a
    inc b                                         ; $5cb2: $04
    nop                                           ; $5cb3: $00
    sub $fc                                       ; $5cb4: $d6 $fc
    ld b, e                                       ; $5cb6: $43
    ccf                                           ; $5cb7: $3f
    nop                                           ; $5cb8: $00
    ccf                                           ; $5cb9: $3f
    add e                                         ; $5cba: $83
    ld a, b                                       ; $5cbb: $78
    add c                                         ; $5cbc: $81
    ld b, c                                       ; $5cbd: $41
    ld b, c                                       ; $5cbe: $41
    ld bc, $22bd                                  ; $5cbf: $01 $bd $22
    sbc a                                         ; $5cc2: $9f
    sbc h                                         ; $5cc3: $9c
    ld de, $5a9e                                  ; $5cc4: $11 $9e $5a
    inc bc                                        ; $5cc7: $03
    ret nz                                        ; $5cc8: $c0

    nop                                           ; $5cc9: $00
    db $db                                        ; $5cca: $db
    ld a, [hl]                                    ; $5ccb: $7e
    and d                                         ; $5ccc: $a2
    ccf                                           ; $5ccd: $3f
    add e                                         ; $5cce: $83
    add c                                         ; $5ccf: $81
    pop bc                                        ; $5cd0: $c1
    ld b, c                                       ; $5cd1: $41
    ld [bc], a                                    ; $5cd2: $02
    add b                                         ; $5cd3: $80
    ld bc, $9ea0                                  ; $5cd4: $01 $a0 $9e
    ld hl, $b811                                  ; $5cd7: $21 $11 $b8
    ld h, b                                       ; $5cda: $60
    db $fc                                        ; $5cdb: $fc
    xor c                                         ; $5cdc: $a9
    nop                                           ; $5cdd: $00
    db $d3                                        ; $5cde: $d3
    ret nz                                        ; $5cdf: $c0

    push hl                                       ; $5ce0: $e5
    add hl, sp                                    ; $5ce1: $39
    ld b, d                                       ; $5ce2: $42
    and c                                         ; $5ce3: $a1
    add b                                         ; $5ce4: $80
    ld b, e                                       ; $5ce5: $43
    ld b, d                                       ; $5ce6: $42
    ccf                                           ; $5ce7: $3f
    add e                                         ; $5ce8: $83
    sbc [hl]                                      ; $5ce9: $9e
    ccf                                           ; $5cea: $3f
    ldh [$7e], a                                  ; $5ceb: $e0 $7e
    jp nz, $dc00                                  ; $5ced: $c2 $00 $dc

    cp $65                                        ; $5cf0: $fe $65
    ld [hl], $c2                                  ; $5cf2: $36 $c2
    jr nz, jr_065_5cf6                            ; $5cf4: $20 $00

jr_065_5cf6:
    db $f4                                        ; $5cf6: $f4
    ld [bc], a                                    ; $5cf7: $02
    nop                                           ; $5cf8: $00
    add e                                         ; $5cf9: $83
    ccf                                           ; $5cfa: $3f
    ld [c], a                                     ; $5cfb: $e2
    ld hl, sp+$6a                                 ; $5cfc: $f8 $6a
    nop                                           ; $5cfe: $00
    db $d3                                        ; $5cff: $d3
    rst $38                                       ; $5d00: $ff
    inc h                                         ; $5d01: $24
    ld a, l                                       ; $5d02: $7d
    ld bc, $0242                                  ; $5d03: $01 $42 $02
    add e                                         ; $5d06: $83
    xor a                                         ; $5d07: $af
    sbc h                                         ; $5d08: $9c
    ld b, a                                       ; $5d09: $47
    pop bc                                        ; $5d0a: $c1
    ld h, [hl]                                    ; $5d0b: $66
    ld b, d                                       ; $5d0c: $42
    ret nz                                        ; $5d0d: $c0

    ldh [$d8], a                                  ; $5d0e: $e0 $d8
    ld b, e                                       ; $5d10: $43
    nop                                           ; $5d11: $00
    reti                                          ; $5d12: $d9


    sbc [hl]                                      ; $5d13: $9e
    ld a, $8d                                     ; $5d14: $3e $8d
    ld bc, $4546                                  ; $5d16: $01 $46 $45
    ld b, e                                       ; $5d19: $43
    ld b, c                                       ; $5d1a: $41
    ld b, e                                       ; $5d1b: $43
    db $fd                                        ; $5d1c: $fd
    ldh [$bf], a                                  ; $5d1d: $e0 $bf
    and b                                         ; $5d1f: $a0
    ldh [$82], a                                  ; $5d20: $e0 $82
    inc bc                                        ; $5d22: $03
    ld h, [hl]                                    ; $5d23: $66
    add d                                         ; $5d24: $82
    add b                                         ; $5d25: $80
    ldh [rP1], a                                  ; $5d26: $e0 $00
    rst $18                                       ; $5d28: $df
    ld a, a                                       ; $5d29: $7f
    ld h, c                                       ; $5d2a: $61
    xor a                                         ; $5d2b: $af
    ld b, l                                       ; $5d2c: $45
    ld [hl], $37                                  ; $5d2d: $36 $37
    dec sp                                        ; $5d2f: $3b
    dec [hl]                                      ; $5d30: $35
    dec sp                                        ; $5d31: $3b
    db $fd                                        ; $5d32: $fd
    ldh [$36], a                                  ; $5d33: $e0 $36
    ld b, l                                       ; $5d35: $45
    ld b, e                                       ; $5d36: $43
    add d                                         ; $5d37: $82
    add sp, $41                                   ; $5d38: $e8 $41
    db $f4                                        ; $5d3a: $f4
    add b                                         ; $5d3b: $80
    db $e3                                        ; $5d3c: $e3
    nop                                           ; $5d3d: $00
    rst $18                                       ; $5d3e: $df
    and c                                         ; $5d3f: $a1
    ld a, l                                       ; $5d40: $7d
    ld bc, $3c44                                  ; $5d41: $01 $44 $3c
    and h                                         ; $5d44: $a4
    ld h, h                                       ; $5d45: $64
    ld [bc], a                                    ; $5d46: $02
    rst $38                                       ; $5d47: $ff
    ldh [$a5], a                                  ; $5d48: $e0 $a5
    ld a, [hl]                                    ; $5d4a: $7e
    nop                                           ; $5d4b: $00
    inc bc                                        ; $5d4c: $03
    ld b, c                                       ; $5d4d: $41
    inc b                                         ; $5d4e: $04
    add d                                         ; $5d4f: $82
    nop                                           ; $5d50: $00
    rst $20                                       ; $5d51: $e7
    nop                                           ; $5d52: $00
    jp c, Jump_000_22c0                           ; $5d53: $da $c0 $22

    rst $38                                       ; $5d56: $ff
    ld b, d                                       ; $5d57: $42
    dec [hl]                                      ; $5d58: $35
    ld l, c                                       ; $5d59: $69
    and e                                         ; $5d5a: $a3
    dec [hl]                                      ; $5d5b: $35
    dec [hl]                                      ; $5d5c: $35
    and e                                         ; $5d5d: $a3
    ld l, d                                       ; $5d5e: $6a
    add [hl]                                      ; $5d5f: $86
    cp [hl]                                       ; $5d60: $be
    add b                                         ; $5d61: $80
    sbc h                                         ; $5d62: $9c
    sbc a                                         ; $5d63: $9f
    add d                                         ; $5d64: $82
    inc bc                                        ; $5d65: $03
    add b                                         ; $5d66: $80
    jp $df00                                      ; $5d67: $c3 $00 $df


    add b                                         ; $5d6a: $80
    and c                                         ; $5d6b: $a1
    xor [hl]                                      ; $5d6c: $ae
    nop                                           ; $5d6d: $00
    ret nz                                        ; $5d6e: $c0

    ldh [rSB], a                                  ; $5d6f: $e0 $01
    ld h, c                                       ; $5d71: $61
    ret nz                                        ; $5d72: $c0

    ldh [$c2], a                                  ; $5d73: $e0 $c2
    ld b, b                                       ; $5d75: $40
    add d                                         ; $5d76: $82
    inc b                                         ; $5d77: $04
    nop                                           ; $5d78: $00
    rst $18                                       ; $5d79: $df
    ld a, [hl]                                    ; $5d7a: $7e
    inc h                                         ; $5d7b: $24
    inc a                                         ; $5d7c: $3c
    nop                                           ; $5d7d: $00
    rst $28                                       ; $5d7e: $ef
    ld b, h                                       ; $5d7f: $44
    inc a                                         ; $5d80: $3c
    ld l, e                                       ; $5d81: $6b
    ld [hl], c                                    ; $5d82: $71
    rst $38                                       ; $5d83: $ff
    ldh [$6d], a                                  ; $5d84: $e0 $6d
    inc a                                         ; $5d86: $3c
    ld b, h                                       ; $5d87: $44
    nop                                           ; $5d88: $00
    ld b, e                                       ; $5d89: $43
    ld b, b                                       ; $5d8a: $40
    inc b                                         ; $5d8b: $04
    inc hl                                        ; $5d8c: $23
    add c                                         ; $5d8d: $81
    pop bc                                        ; $5d8e: $c1
    ld e, d                                       ; $5d8f: $5a
    inc hl                                        ; $5d90: $23
    nop                                           ; $5d91: $00
    sbc e                                         ; $5d92: $9b
    db $fc                                        ; $5d93: $fc
    ld [hl+], a                                   ; $5d94: $22
    ret nz                                        ; $5d95: $c0

    rst $00                                       ; $5d96: $c7
    inc b                                         ; $5d97: $04
    ld b, a                                       ; $5d98: $47
    inc bc                                        ; $5d99: $03
    sbc a                                         ; $5d9a: $9f
    ld de, $a500                                  ; $5d9b: $11 $00 $a5
    nop                                           ; $5d9e: $00
    sbc b                                         ; $5d9f: $98
    ld a, [hl]                                    ; $5da0: $7e
    db $e4                                        ; $5da1: $e4
    ld d, d                                       ; $5da2: $52
    add b                                         ; $5da3: $80
    db $fd                                        ; $5da4: $fd
    db $e4                                        ; $5da5: $e4
    inc b                                         ; $5da6: $04
    jp nz, Jump_000_0806                          ; $5da7: $c2 $06 $08

    add e                                         ; $5daa: $83
    ld de, $5a9f                                  ; $5dab: $11 $9f $5a
    inc hl                                        ; $5dae: $23
    nop                                           ; $5daf: $00
    sbc c                                         ; $5db0: $99
    ld a, d                                       ; $5db1: $7a
    dec b                                         ; $5db2: $05
    cp $e9                                        ; $5db3: $fe $e9
    add [hl]                                      ; $5db5: $86
    ld h, l                                       ; $5db6: $65
    ld bc, $0011                                  ; $5db7: $01 $11 $00
    sbc [hl]                                      ; $5dba: $9e
    sbc [hl]                                      ; $5dbb: $9e
    ld h, e                                       ; $5dbc: $63
    ld a, d                                       ; $5dbd: $7a
    ld [bc], a                                    ; $5dbe: $02
    adc [hl]                                      ; $5dbf: $8e
    and d                                         ; $5dc0: $a2
    ld hl, sp-$1d                                 ; $5dc1: $f8 $e3
    nop                                           ; $5dc3: $00
    db $e4                                        ; $5dc4: $e4
    ret nz                                        ; $5dc5: $c0

    ldh [rP1], a                                  ; $5dc6: $e0 $00
    nop                                           ; $5dc8: $00
    adc e                                         ; $5dc9: $8b
    nop                                           ; $5dca: $00
    nop                                           ; $5dcb: $00
    nop                                           ; $5dcc: $00
    pop bc                                        ; $5dcd: $c1
    nop                                           ; $5dce: $00
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
    nop                                           ; $5dd9: $00
    nop                                           ; $5dda: $00
    ld bc, $fe80                                  ; $5ddb: $01 $80 $fe
    ldh [rIE], a                                  ; $5dde: $e0 $ff
    rst $38                                       ; $5de0: $ff
    rst $38                                       ; $5de1: $ff
    rst $38                                       ; $5de2: $ff
    rst $38                                       ; $5de3: $ff
    add sp, $00                                   ; $5de4: $e8 $00
    nop                                           ; $5de6: $00
    nop                                           ; $5de7: $00
    ld [bc], a                                    ; $5de8: $02
    nop                                           ; $5de9: $00
    inc e                                         ; $5dea: $1c
    inc b                                         ; $5deb: $04
    ld [bc], a                                    ; $5dec: $02
    ld bc, $041e                                  ; $5ded: $01 $1e $04
    ld [bc], a                                    ; $5df0: $02
    ld [bc], a                                    ; $5df1: $02
    jr nz, @+$06                                  ; $5df2: $20 $04

    ld [bc], a                                    ; $5df4: $02
    inc bc                                        ; $5df5: $03
    ld hl, $0204                                  ; $5df6: $21 $04 $02
    inc b                                         ; $5df9: $04
    inc hl                                        ; $5dfa: $23
    inc b                                         ; $5dfb: $04
    ld [bc], a                                    ; $5dfc: $02
    dec b                                         ; $5dfd: $05
    dec de                                        ; $5dfe: $1b
    dec b                                         ; $5dff: $05
    ld [bc], a                                    ; $5e00: $02
    ld b, $1d                                     ; $5e01: $06 $1d
    dec b                                         ; $5e03: $05
    ld [bc], a                                    ; $5e04: $02
    rlca                                          ; $5e05: $07
    rra                                           ; $5e06: $1f
    dec b                                         ; $5e07: $05
    ld [bc], a                                    ; $5e08: $02
    ld [$0522], sp                                ; $5e09: $08 $22 $05
    ld [bc], a                                    ; $5e0c: $02
    add hl, bc                                    ; $5e0d: $09
    inc h                                         ; $5e0e: $24
    dec b                                         ; $5e0f: $05
    ld [bc], a                                    ; $5e10: $02
    ld a, [bc]                                    ; $5e11: $0a
    add hl, hl                                    ; $5e12: $29
    dec b                                         ; $5e13: $05
    ld [bc], a                                    ; $5e14: $02
    dec bc                                        ; $5e15: $0b
    jr nz, jr_065_5e1e                            ; $5e16: $20 $06

    ld [bc], a                                    ; $5e18: $02
    inc c                                         ; $5e19: $0c
    jr z, @+$08                                   ; $5e1a: $28 $06

    ld [bc], a                                    ; $5e1c: $02
    dec c                                         ; $5e1d: $0d

jr_065_5e1e:
    ld a, [hl+]                                   ; $5e1e: $2a
    ld b, $02                                     ; $5e1f: $06 $02
    ld c, $19                                     ; $5e21: $0e $19
    rlca                                          ; $5e23: $07
    ld [bc], a                                    ; $5e24: $02
    rrca                                          ; $5e25: $0f
    ld [hl+], a                                   ; $5e26: $22
    rlca                                          ; $5e27: $07
    ld [bc], a                                    ; $5e28: $02
    db $10                                        ; $5e29: $10
    add hl, hl                                    ; $5e2a: $29
    rlca                                          ; $5e2b: $07
    ld [bc], a                                    ; $5e2c: $02
    ld de, $072b                                  ; $5e2d: $11 $2b $07
    ld [bc], a                                    ; $5e30: $02
    ld [de], a                                    ; $5e31: $12
    rla                                           ; $5e32: $17
    ld [$1302], sp                                ; $5e33: $08 $02 $13
    ld a, [hl+]                                   ; $5e36: $2a
    ld [$1402], sp                                ; $5e37: $08 $02 $14
    ld d, $09                                     ; $5e3a: $16 $09
    ld [bc], a                                    ; $5e3c: $02
    dec d                                         ; $5e3d: $15
    jr jr_065_5e49                                ; $5e3e: $18 $09

    ld [bc], a                                    ; $5e40: $02
    ld d, $17                                     ; $5e41: $16 $17
    ld a, [bc]                                    ; $5e43: $0a
    ld [bc], a                                    ; $5e44: $02
    rla                                           ; $5e45: $17
    dec de                                        ; $5e46: $1b
    ld a, [bc]                                    ; $5e47: $0a
    ld [bc], a                                    ; $5e48: $02

jr_065_5e49:
    jr jr_065_5e71                                ; $5e49: $18 $26

    ld a, [bc]                                    ; $5e4b: $0a
    ld [bc], a                                    ; $5e4c: $02
    add hl, de                                    ; $5e4d: $19
    add hl, hl                                    ; $5e4e: $29
    ld a, [bc]                                    ; $5e4f: $0a
    ld [bc], a                                    ; $5e50: $02
    ld a, [de]                                    ; $5e51: $1a
    jr z, jr_065_5e5f                             ; $5e52: $28 $0b

    ld [bc], a                                    ; $5e54: $02
    dec de                                        ; $5e55: $1b
    add hl, de                                    ; $5e56: $19
    inc c                                         ; $5e57: $0c
    ld [bc], a                                    ; $5e58: $02
    inc e                                         ; $5e59: $1c
    add hl, hl                                    ; $5e5a: $29
    inc c                                         ; $5e5b: $0c
    ld [bc], a                                    ; $5e5c: $02
    dec e                                         ; $5e5d: $1d
    rla                                           ; $5e5e: $17

jr_065_5e5f:
    dec c                                         ; $5e5f: $0d
    ld [bc], a                                    ; $5e60: $02
    ld e, $22                                     ; $5e61: $1e $22
    dec c                                         ; $5e63: $0d
    ld [bc], a                                    ; $5e64: $02
    rra                                           ; $5e65: $1f
    daa                                           ; $5e66: $27
    dec c                                         ; $5e67: $0d
    ld [bc], a                                    ; $5e68: $02
    jr nz, jr_065_5e83                            ; $5e69: $20 $18

    ld c, $02                                     ; $5e6b: $0e $02
    ld hl, $0e1c                                  ; $5e6d: $21 $1c $0e
    ld [bc], a                                    ; $5e70: $02

jr_065_5e71:
    ld [hl+], a                                   ; $5e71: $22
    rla                                           ; $5e72: $17
    rrca                                          ; $5e73: $0f
    ld [bc], a                                    ; $5e74: $02
    inc hl                                        ; $5e75: $23
    add hl, de                                    ; $5e76: $19
    rrca                                          ; $5e77: $0f
    ld [bc], a                                    ; $5e78: $02
    inc h                                         ; $5e79: $24
    jr z, jr_065_5e8b                             ; $5e7a: $28 $0f

    ld [bc], a                                    ; $5e7c: $02
    dec h                                         ; $5e7d: $25
    jr jr_065_5e90                                ; $5e7e: $18 $10

    ld [bc], a                                    ; $5e80: $02
    ld h, $1a                                     ; $5e81: $26 $1a

jr_065_5e83:
    ld de, $2702                                  ; $5e83: $11 $02 $27
    dec h                                         ; $5e86: $25
    ld de, $2802                                  ; $5e87: $11 $02 $28
    daa                                           ; $5e8a: $27

jr_065_5e8b:
    ld [de], a                                    ; $5e8b: $12
    ld [bc], a                                    ; $5e8c: $02
    add hl, hl                                    ; $5e8d: $29
    jr nz, jr_065_5ea3                            ; $5e8e: $20 $13

jr_065_5e90:
    ld [bc], a                                    ; $5e90: $02
    ld a, [hl+]                                   ; $5e91: $2a
    add hl, hl                                    ; $5e92: $29
    inc de                                        ; $5e93: $13
    ld [bc], a                                    ; $5e94: $02
    dec hl                                        ; $5e95: $2b
    ld e, $14                                     ; $5e96: $1e $14
    ld [bc], a                                    ; $5e98: $02
    inc l                                         ; $5e99: $2c
    jr z, jr_065_5eb0                             ; $5e9a: $28 $14

    ld [bc], a                                    ; $5e9c: $02
    dec l                                         ; $5e9d: $2d
    ld a, [hl+]                                   ; $5e9e: $2a
    inc d                                         ; $5e9f: $14
    ld [bc], a                                    ; $5ea0: $02
    ld l, $26                                     ; $5ea1: $2e $26

jr_065_5ea3:
    dec d                                         ; $5ea3: $15
    ld [bc], a                                    ; $5ea4: $02
    cpl                                           ; $5ea5: $2f
    add hl, hl                                    ; $5ea6: $29
    dec d                                         ; $5ea7: $15
    ld [bc], a                                    ; $5ea8: $02
    jr nc, jr_065_5ec3                            ; $5ea9: $30 $18

    ld d, $02                                     ; $5eab: $16 $02
    ld sp, $1716                                  ; $5ead: $31 $16 $17

jr_065_5eb0:
    ld [bc], a                                    ; $5eb0: $02
    ld [hl-], a                                   ; $5eb1: $32
    jr z, jr_065_5ecb                             ; $5eb2: $28 $17

    ld [bc], a                                    ; $5eb4: $02
    inc sp                                        ; $5eb5: $33
    rla                                           ; $5eb6: $17
    jr jr_065_5ebb                                ; $5eb7: $18 $02

    inc [hl]                                      ; $5eb9: $34
    inc hl                                        ; $5eba: $23

jr_065_5ebb:
    jr jr_065_5ebf                                ; $5ebb: $18 $02

    dec [hl]                                      ; $5ebd: $35
    dec d                                         ; $5ebe: $15

jr_065_5ebf:
    add hl, de                                    ; $5ebf: $19
    ld [bc], a                                    ; $5ec0: $02
    ld [hl], $1a                                  ; $5ec1: $36 $1a

jr_065_5ec3:
    add hl, de                                    ; $5ec3: $19
    ld [bc], a                                    ; $5ec4: $02
    scf                                           ; $5ec5: $37
    dec h                                         ; $5ec6: $25
    add hl, de                                    ; $5ec7: $19
    ld [bc], a                                    ; $5ec8: $02
    jr c, jr_065_5ef2                             ; $5ec9: $38 $27

jr_065_5ecb:
    add hl, de                                    ; $5ecb: $19
    ld [bc], a                                    ; $5ecc: $02
    add hl, sp                                    ; $5ecd: $39
    inc d                                         ; $5ece: $14
    ld a, [de]                                    ; $5ecf: $1a
    ld [bc], a                                    ; $5ed0: $02
    ld a, [hl-]                                   ; $5ed1: $3a
    ld d, $1a                                     ; $5ed2: $16 $1a
    ld [bc], a                                    ; $5ed4: $02
    dec sp                                        ; $5ed5: $3b
    inc h                                         ; $5ed6: $24
    ld a, [de]                                    ; $5ed7: $1a
    ld [bc], a                                    ; $5ed8: $02
    inc a                                         ; $5ed9: $3c
    ld h, $1a                                     ; $5eda: $26 $1a
    ld [bc], a                                    ; $5edc: $02
    dec a                                         ; $5edd: $3d
    dec d                                         ; $5ede: $15
    dec de                                        ; $5edf: $1b
    ld [bc], a                                    ; $5ee0: $02
    ld a, $27                                     ; $5ee1: $3e $27
    dec de                                        ; $5ee3: $1b
    ld [bc], a                                    ; $5ee4: $02
    ccf                                           ; $5ee5: $3f
    ld d, $1c                                     ; $5ee6: $16 $1c
    ld [bc], a                                    ; $5ee8: $02
    ld b, b                                       ; $5ee9: $40
    ld h, $1c                                     ; $5eea: $26 $1c
    ld [bc], a                                    ; $5eec: $02
    ld b, c                                       ; $5eed: $41
    jr jr_065_5f0d                                ; $5eee: $18 $1d

    ld [bc], a                                    ; $5ef0: $02
    ld b, d                                       ; $5ef1: $42

jr_065_5ef2:
    daa                                           ; $5ef2: $27
    dec e                                         ; $5ef3: $1d
    ld [bc], a                                    ; $5ef4: $02
    ld b, e                                       ; $5ef5: $43
    inc hl                                        ; $5ef6: $23
    ld e, $02                                     ; $5ef7: $1e $02
    ld b, h                                       ; $5ef9: $44
    jr z, jr_065_5f1a                             ; $5efa: $28 $1e

    ld [bc], a                                    ; $5efc: $02
    ld b, l                                       ; $5efd: $45
    rla                                           ; $5efe: $17
    rra                                           ; $5eff: $1f
    ld [bc], a                                    ; $5f00: $02
    ld b, [hl]                                    ; $5f01: $46
    jr jr_065_5f24                                ; $5f02: $18 $20

    ld [bc], a                                    ; $5f04: $02
    ld b, a                                       ; $5f05: $47
    inc e                                         ; $5f06: $1c
    jr nz, @+$04                                  ; $5f07: $20 $02

    ld c, b                                       ; $5f09: $48
    ld h, $21                                     ; $5f0a: $26 $21
    ld [bc], a                                    ; $5f0c: $02

jr_065_5f0d:
    ld c, c                                       ; $5f0d: $49
    ld a, [de]                                    ; $5f0e: $1a
    ld [hl+], a                                   ; $5f0f: $22
    ld [bc], a                                    ; $5f10: $02
    ld c, d                                       ; $5f11: $4a
    jr z, jr_065_5f36                             ; $5f12: $28 $22

    ld [bc], a                                    ; $5f14: $02
    ld c, e                                       ; $5f15: $4b
    daa                                           ; $5f16: $27
    inc hl                                        ; $5f17: $23
    ld [bc], a                                    ; $5f18: $02
    ld c, h                                       ; $5f19: $4c

jr_065_5f1a:
    add hl, hl                                    ; $5f1a: $29
    inc hl                                        ; $5f1b: $23
    ld [bc], a                                    ; $5f1c: $02
    ld c, l                                       ; $5f1d: $4d
    jr z, jr_065_5f44                             ; $5f1e: $28 $24

    ld [bc], a                                    ; $5f20: $02
    ld c, [hl]                                    ; $5f21: $4e
    rla                                           ; $5f22: $17
    dec h                                         ; $5f23: $25

jr_065_5f24:
    ld [bc], a                                    ; $5f24: $02
    ld c, a                                       ; $5f25: $4f
    ld d, $26                                     ; $5f26: $16 $26
    ld [bc], a                                    ; $5f28: $02
    ld d, b                                       ; $5f29: $50
    jr jr_065_5f52                                ; $5f2a: $18 $26

    ld [bc], a                                    ; $5f2c: $02
    ld d, c                                       ; $5f2d: $51
    daa                                           ; $5f2e: $27
    ld h, $02                                     ; $5f2f: $26 $02
    ld d, d                                       ; $5f31: $52
    rla                                           ; $5f32: $17
    daa                                           ; $5f33: $27
    ld [bc], a                                    ; $5f34: $02
    ld d, e                                       ; $5f35: $53

jr_065_5f36:
    add hl, de                                    ; $5f36: $19
    jr z, jr_065_5f3b                             ; $5f37: $28 $02

    ld d, h                                       ; $5f39: $54
    inc e                                         ; $5f3a: $1c

jr_065_5f3b:
    add hl, hl                                    ; $5f3b: $29
    ld [bc], a                                    ; $5f3c: $02
    ld d, l                                       ; $5f3d: $55
    rla                                           ; $5f3e: $17
    ld a, [hl+]                                   ; $5f3f: $2a
    ld [bc], a                                    ; $5f40: $02
    ld d, [hl]                                    ; $5f41: $56
    jr jr_065_5f6f                                ; $5f42: $18 $2b

jr_065_5f44:
    ld [bc], a                                    ; $5f44: $02
    ld d, a                                       ; $5f45: $57
    inc h                                         ; $5f46: $24
    dec hl                                        ; $5f47: $2b
    ld [bc], a                                    ; $5f48: $02
    ld e, b                                       ; $5f49: $58
    add hl, hl                                    ; $5f4a: $29
    dec hl                                        ; $5f4b: $2b
    ld [bc], a                                    ; $5f4c: $02
    ld e, c                                       ; $5f4d: $59
    ld a, [de]                                    ; $5f4e: $1a
    inc l                                         ; $5f4f: $2c
    ld [bc], a                                    ; $5f50: $02
    ld e, d                                       ; $5f51: $5a

jr_065_5f52:
    jr z, jr_065_5f80                             ; $5f52: $28 $2c

    ld [bc], a                                    ; $5f54: $02
    ld e, e                                       ; $5f55: $5b
    ld a, [hl+]                                   ; $5f56: $2a
    inc l                                         ; $5f57: $2c
    ld [bc], a                                    ; $5f58: $02
    ld e, h                                       ; $5f59: $5c
    jr jr_065_5f89                                ; $5f5a: $18 $2d

    ld [bc], a                                    ; $5f5c: $02
    ld e, l                                       ; $5f5d: $5d
    dec hl                                        ; $5f5e: $2b
    dec l                                         ; $5f5f: $2d
    ld [bc], a                                    ; $5f60: $02
    ld e, [hl]                                    ; $5f61: $5e
    add hl, de                                    ; $5f62: $19
    ld l, $02                                     ; $5f63: $2e $02
    ld e, a                                       ; $5f65: $5f
    jr @+$31                                      ; $5f66: $18 $2f

    ld [bc], a                                    ; $5f68: $02
    ld h, b                                       ; $5f69: $60
    ld [hl+], a                                   ; $5f6a: $22
    cpl                                           ; $5f6b: $2f
    ld [bc], a                                    ; $5f6c: $02
    ld h, c                                       ; $5f6d: $61
    dec de                                        ; $5f6e: $1b

jr_065_5f6f:
    ld sp, $6202                                  ; $5f6f: $31 $02 $62
    ld h, $31                                     ; $5f72: $26 $31
    ld [bc], a                                    ; $5f74: $02
    ld h, e                                       ; $5f75: $63
    jr z, jr_065_5faa                             ; $5f76: $28 $32

    ld [bc], a                                    ; $5f78: $02
    ld h, h                                       ; $5f79: $64
    ld a, [hl+]                                   ; $5f7a: $2a
    ld [hl-], a                                   ; $5f7b: $32
    ld [bc], a                                    ; $5f7c: $02
    ld h, l                                       ; $5f7d: $65
    daa                                           ; $5f7e: $27
    inc sp                                        ; $5f7f: $33

jr_065_5f80:
    ld [bc], a                                    ; $5f80: $02
    ld h, [hl]                                    ; $5f81: $66
    add hl, hl                                    ; $5f82: $29
    inc sp                                        ; $5f83: $33
    ld [bc], a                                    ; $5f84: $02
    ld h, a                                       ; $5f85: $67
    inc hl                                        ; $5f86: $23
    inc [hl]                                      ; $5f87: $34
    ld [bc], a                                    ; $5f88: $02

jr_065_5f89:
    ld l, b                                       ; $5f89: $68
    jr z, @+$36                                   ; $5f8a: $28 $34

    ld [bc], a                                    ; $5f8c: $02
    ld l, c                                       ; $5f8d: $69
    add hl, de                                    ; $5f8e: $19
    dec [hl]                                      ; $5f8f: $35
    ld [bc], a                                    ; $5f90: $02
    ld l, d                                       ; $5f91: $6a
    ld h, $35                                     ; $5f92: $26 $35
    ld [bc], a                                    ; $5f94: $02
    ld l, e                                       ; $5f95: $6b
    jr jr_065_5fcf                                ; $5f96: $18 $37

    ld [bc], a                                    ; $5f98: $02
    ld l, h                                       ; $5f99: $6c
    ld a, [de]                                    ; $5f9a: $1a
    scf                                           ; $5f9b: $37
    ld [bc], a                                    ; $5f9c: $02
    ld l, l                                       ; $5f9d: $6d
    rla                                           ; $5f9e: $17
    jr c, jr_065_5fa3                             ; $5f9f: $38 $02

    ld l, [hl]                                    ; $5fa1: $6e
    add hl, de                                    ; $5fa2: $19

jr_065_5fa3:
    jr c, @+$04                                   ; $5fa3: $38 $02

    ld l, a                                       ; $5fa5: $6f
    jr jr_065_5fe1                                ; $5fa6: $18 $39

    ld [bc], a                                    ; $5fa8: $02
    ld [hl], b                                    ; $5fa9: $70

jr_065_5faa:
    ld a, [de]                                    ; $5faa: $1a
    dec sp                                        ; $5fab: $3b
    ld [bc], a                                    ; $5fac: $02
    ld [hl], c                                    ; $5fad: $71
    dec h                                         ; $5fae: $25
    dec sp                                        ; $5faf: $3b
    rst $38                                       ; $5fb0: $ff
    rst $38                                       ; $5fb1: $ff
    rst $38                                       ; $5fb2: $ff
    cp e                                          ; $5fb3: $bb
    ld e, a                                       ; $5fb4: $5f
    db $eb                                        ; $5fb5: $eb
    ld h, d                                       ; $5fb6: $62
    xor h                                         ; $5fb7: $ac
    ld h, [hl]                                    ; $5fb8: $66
    rst $00                                       ; $5fb9: $c7
    ld h, [hl]                                    ; $5fba: $66
    rrca                                          ; $5fbb: $0f
    dec c                                         ; $5fbc: $0d
    ld c, $0e                                     ; $5fbd: $0e $0e
    ld c, $fc                                     ; $5fbf: $0e $fc
    rst $38                                       ; $5fc1: $ff
    ld hl, sp-$09                                 ; $5fc2: $f8 $f7
    rst $38                                       ; $5fc4: $ff
    rst $38                                       ; $5fc5: $ff
    rst $38                                       ; $5fc6: $ff
    rst $38                                       ; $5fc7: $ff
    nop                                           ; $5fc8: $00
    rst $38                                       ; $5fc9: $ff
    rst $38                                       ; $5fca: $ff
    rst $38                                       ; $5fcb: $ff
    rst $38                                       ; $5fcc: $ff
    rst $38                                       ; $5fcd: $ff
    rst $38                                       ; $5fce: $ff

jr_065_5fcf:
    or $f5                                        ; $5fcf: $f6 $f5
    ld a, [de]                                    ; $5fd1: $1a
    rst $38                                       ; $5fd2: $ff
    cp $df                                        ; $5fd3: $fe $df
    rst $38                                       ; $5fd5: $ff
    rst $38                                       ; $5fd6: $ff
    rst $38                                       ; $5fd7: $ff
    rst $38                                       ; $5fd8: $ff
    nop                                           ; $5fd9: $00
    rst $38                                       ; $5fda: $ff
    rst $38                                       ; $5fdb: $ff
    rst $38                                       ; $5fdc: $ff
    rst $38                                       ; $5fdd: $ff
    rst $38                                       ; $5fde: $ff
    rst $38                                       ; $5fdf: $ff
    ld [bc], a                                    ; $5fe0: $02

jr_065_5fe1:
    rst $38                                       ; $5fe1: $ff
    db $fc                                        ; $5fe2: $fc
    rst $38                                       ; $5fe3: $ff
    ld [bc], a                                    ; $5fe4: $02
    rst $38                                       ; $5fe5: $ff
    rst $38                                       ; $5fe6: $ff
    rst $38                                       ; $5fe7: $ff
    rst $38                                       ; $5fe8: $ff
    rst $38                                       ; $5fe9: $ff
    ld [hl], b                                    ; $5fea: $70
    rst $38                                       ; $5feb: $ff
    rst $38                                       ; $5fec: $ff
    rst $38                                       ; $5fed: $ff
    rst $38                                       ; $5fee: $ff
    rst $38                                       ; $5fef: $ff
    rst $38                                       ; $5ff0: $ff
    ld e, $f8                                     ; $5ff1: $1e $f8
    dec l                                         ; $5ff3: $2d
    dec c                                         ; $5ff4: $0d
    dec c                                         ; $5ff5: $0d
    db $fc                                        ; $5ff6: $fc
    ldh [$d9], a                                  ; $5ff7: $e0 $d9
    ld l, l                                       ; $5ff9: $6d
    cp $df                                        ; $5ffa: $fe $df
    xor b                                         ; $5ffc: $a8
    db $f4                                        ; $5ffd: $f4
    ld l, l                                       ; $5ffe: $6d
    dec c                                         ; $5fff: $0d
    cp a                                          ; $6000: $bf
    ret nz                                        ; $6001: $c0

    dec c                                         ; $6002: $0d
    ld l, l                                       ; $6003: $6d
    inc a                                         ; $6004: $3c
    ld a, [hl]                                    ; $6005: $7e
    rst $38                                       ; $6006: $ff
    ld h, [hl]                                    ; $6007: $66
    or $2d                                        ; $6008: $f6 $2d
    ld c, $0e                                     ; $600a: $0e $0e
    dec l                                         ; $600c: $2d
    sbc e                                         ; $600d: $9b
    rst $18                                       ; $600e: $df
    ei                                            ; $600f: $fb
    ld a, [$4100]                                 ; $6010: $fa $00 $41
    ld [c], a                                     ; $6013: $e2
    ld [bc], a                                    ; $6014: $02
    rst $38                                       ; $6015: $ff
    ld b, $ee                                     ; $6016: $06 $ee
    ld [c], a                                     ; $6018: $e2
    and h                                         ; $6019: $a4
    ld a, $e2                                     ; $601a: $3e $e2
    ld [bc], a                                    ; $601c: $02
    rst $38                                       ; $601d: $ff
    xor h                                         ; $601e: $ac
    xor $06                                       ; $601f: $ee $06
    pop hl                                        ; $6021: $e1
    ret nc                                        ; $6022: $d0

    db $fc                                        ; $6023: $fc
    push hl                                       ; $6024: $e5
    ld a, [hl-]                                   ; $6025: $3a
    ldh [rIE], a                                  ; $6026: $e0 $ff
    rst $38                                       ; $6028: $ff
    ret nz                                        ; $6029: $c0

    rst $28                                       ; $602a: $ef
    ld c, l                                       ; $602b: $4d
    add c                                         ; $602c: $81
    ret nz                                        ; $602d: $c0

    ld c, l                                       ; $602e: $4d
    ld c, l                                       ; $602f: $4d
    db $ec                                        ; $6030: $ec
    jp nc, $80ff                                  ; $6031: $d2 $ff $80

    di                                            ; $6034: $f3
    dec c                                         ; $6035: $0d
    ld c, l                                       ; $6036: $4d
    jp Jump_065_4de0                              ; $6037: $c3 $e0 $4d


    dec l                                         ; $603a: $2d
    dec l                                         ; $603b: $2d
    or b                                          ; $603c: $b0
    add d                                         ; $603d: $82
    rst $38                                       ; $603e: $ff
    ld a, [de]                                    ; $603f: $1a
    xor [hl]                                      ; $6040: $ae
    add hl, bc                                    ; $6041: $09
    ret nz                                        ; $6042: $c0

    add d                                         ; $6043: $82
    pop hl                                        ; $6044: $e1
    ld l, l                                       ; $6045: $6d
    ld l, e                                       ; $6046: $6b
    rst $38                                       ; $6047: $ff
    ldh [rKEY1], a                                ; $6048: $e0 $4d
    ld h, c                                       ; $604a: $61
    dec l                                         ; $604b: $2d
    ld b, b                                       ; $604c: $40
    jp nz, $dffe                                  ; $604d: $c2 $fe $df

    xor [hl]                                      ; $6050: $ae
    xor d                                         ; $6051: $aa
    ld [$0bc2], sp                                ; $6052: $08 $c2 $0b
    ld c, e                                       ; $6055: $4b
    cp $e1                                        ; $6056: $fe $e1
    pop af                                        ; $6058: $f1
    ld c, l                                       ; $6059: $4d
    or h                                          ; $605a: $b4
    add $ff                                       ; $605b: $c6 $ff
    rst $38                                       ; $605d: $ff
    ld l, d                                       ; $605e: $6a
    xor d                                         ; $605f: $aa
    ld c, e                                       ; $6060: $4b
    ld c, e                                       ; $6061: $4b
    ld c, e                                       ; $6062: $4b
    dec c                                         ; $6063: $0d
    rrca                                          ; $6064: $0f
    dec bc                                        ; $6065: $0b
    dec c                                         ; $6066: $0d
    dec bc                                        ; $6067: $0b
    ld c, e                                       ; $6068: $4b
    cp d                                          ; $6069: $ba
    and d                                         ; $606a: $a2
    rst $38                                       ; $606b: $ff
    rst $38                                       ; $606c: $ff
    db $ec                                        ; $606d: $ec
    db $eb                                        ; $606e: $eb
    ld b, d                                       ; $606f: $42
    ldh [$e1], a                                  ; $6070: $e0 $e1
    dec bc                                        ; $6072: $0b
    ret nz                                        ; $6073: $c0

    and $b5                                       ; $6074: $e6 $b5
    ret nz                                        ; $6076: $c0

    ld [bc], a                                    ; $6077: $02
    rst $38                                       ; $6078: $ff
    inc d                                         ; $6079: $14
    add l                                         ; $607a: $85
    ld c, l                                       ; $607b: $4d
    ld c, l                                       ; $607c: $4d
    ld l, l                                       ; $607d: $6d
    and $4e                                       ; $607e: $e6 $4e
    and b                                         ; $6080: $a0
    dec c                                         ; $6081: $0d
    ld l, l                                       ; $6082: $6d
    add c                                         ; $6083: $81
    pop hl                                        ; $6084: $e1
    ld a, l                                       ; $6085: $7d
    ldh [rWX], a                                  ; $6086: $e0 $4b
    ld c, e                                       ; $6088: $4b
    ld l, l                                       ; $6089: $6d
    and b                                         ; $608a: $a0
    ld a, e                                       ; $608b: $7b
    and b                                         ; $608c: $a0
    db $ed                                        ; $608d: $ed
    jp $ff02                                      ; $608e: $c3 $02 $ff


    ret nc                                        ; $6091: $d0

    ld h, b                                       ; $6092: $60
    ld d, b                                       ; $6093: $50
    and c                                         ; $6094: $a1
    ld l, l                                       ; $6095: $6d
    pop bc                                        ; $6096: $c1
    pop hl                                        ; $6097: $e1
    dec c                                         ; $6098: $0d
    inc b                                         ; $6099: $04
    ld b, c                                       ; $609a: $41
    ldh [$fe], a                                  ; $609b: $e0 $fe
    pop bc                                        ; $609d: $c1
    dec l                                         ; $609e: $2d
    ret nz                                        ; $609f: $c0

    pop hl                                        ; $60a0: $e1
    ld c, [hl]                                    ; $60a1: $4e
    rst $38                                       ; $60a2: $ff
    ret nz                                        ; $60a3: $c0

    and $91                                       ; $60a4: $e6 $91
    pop hl                                        ; $60a6: $e1
    ld b, e                                       ; $60a7: $43
    ld [c], a                                     ; $60a8: $e2
    rrca                                          ; $60a9: $0f
    ld c, e                                       ; $60aa: $4b
    dec bc                                        ; $60ab: $0b
    dec bc                                        ; $60ac: $0b
    dec hl                                        ; $60ad: $2b
    cp h                                          ; $60ae: $bc
    ret nz                                        ; $60af: $c0

    cp a                                          ; $60b0: $bf
    pop bc                                        ; $60b1: $c1
    ret nz                                        ; $60b2: $c0

    rst $38                                       ; $60b3: $ff
    call nz, $1bcf                                ; $60b4: $c4 $cf $1b
    dec hl                                        ; $60b7: $2b
    ld a, [bc]                                    ; $60b8: $0a
    rst $38                                       ; $60b9: $ff
    ldh [rOCPS], a                                ; $60ba: $e0 $6a
    dec bc                                        ; $60bc: $0b
    ld a, [hl]                                    ; $60bd: $7e
    pop bc                                        ; $60be: $c1
    nop                                           ; $60bf: $00
    rst $18                                       ; $60c0: $df
    ld d, $66                                     ; $60c1: $16 $66
    ld c, $52                                     ; $60c3: $0e $52
    add b                                         ; $60c5: $80
    dec l                                         ; $60c6: $2d
    ld c, l                                       ; $60c7: $4d
    ld c, l                                       ; $60c8: $4d
    ld b, e                                       ; $60c9: $43
    pop hl                                        ; $60ca: $e1
    pop bc                                        ; $60cb: $c1
    pop hl                                        ; $60cc: $e1
    cp a                                          ; $60cd: $bf
    db $e3                                        ; $60ce: $e3
    ldh a, [$c1]                                  ; $60cf: $f0 $c1
    ld a, b                                       ; $60d1: $78
    nop                                           ; $60d2: $00
    rst $18                                       ; $60d3: $df
    inc c                                         ; $60d4: $0c
    add h                                         ; $60d5: $84
    add $a2                                       ; $60d6: $c6 $a2
    ld c, e                                       ; $60d8: $4b
    dec c                                         ; $60d9: $0d
    dec c                                         ; $60da: $0d
    ld l, e                                       ; $60db: $6b
    ret nz                                        ; $60dc: $c0

    db $e3                                        ; $60dd: $e3
    ld b, a                                       ; $60de: $47
    ld a, [bc]                                    ; $60df: $0a
    dec bc                                        ; $60e0: $0b
    dec c                                         ; $60e1: $0d
    or b                                          ; $60e2: $b0
    pop bc                                        ; $60e3: $c1
    rst $38                                       ; $60e4: $ff
    rst $38                                       ; $60e5: $ff
    ret nz                                        ; $60e6: $c0

    and $0d                                       ; $60e7: $e6 $0d
    add $a0                                       ; $60e9: $c6 $a0
    halt                                          ; $60eb: $76
    call nz, $2bc0                                ; $60ec: $c4 $c0 $2b
    dec bc                                        ; $60ef: $0b
    ld bc, $2be0                                  ; $60f0: $01 $e0 $2b
    ld a, [bc]                                    ; $60f3: $0a
    ld a, [hl+]                                   ; $60f4: $2a
    cp e                                          ; $60f5: $bb
    ld h, b                                       ; $60f6: $60
    and e                                         ; $60f7: $a3
    ld l, l                                       ; $60f8: $6d
    dec c                                         ; $60f9: $0d
    ld a, [$129f]                                 ; $60fa: $fa $9f $12
    adc b                                         ; $60fd: $88
    ld b, c                                       ; $60fe: $41
    pop hl                                        ; $60ff: $e1
    ld l, l                                       ; $6100: $6d
    ret nz                                        ; $6101: $c0

    ld [c], a                                     ; $6102: $e2
    ld c, e                                       ; $6103: $4b

Call_065_6104:
Jump_065_6104:
    add c                                         ; $6104: $81
    ld l, e                                       ; $6105: $6b
    ld a, l                                       ; $6106: $7d
    ld h, b                                       ; $6107: $60
    or b                                          ; $6108: $b0
    ldh [$bc], a                                  ; $6109: $e0 $bc
    ld a, c                                       ; $610b: $79
    inc b                                         ; $610c: $04
    jp z, $e254                                   ; $610d: $ca $54 $e2

    adc b                                         ; $6110: $88
    add c                                         ; $6111: $81
    dec c                                         ; $6112: $0d
    ld e, $87                                     ; $6113: $1e $87
    and b                                         ; $6115: $a0
    ld c, e                                       ; $6116: $4b
    ld l, e                                       ; $6117: $6b
    ld c, e                                       ; $6118: $4b
    ld c, e                                       ; $6119: $4b
    pop bc                                        ; $611a: $c1
    add b                                         ; $611b: $80
    add b                                         ; $611c: $80
    pop hl                                        ; $611d: $e1
    rst $30                                       ; $611e: $f7
    ld h, e                                       ; $611f: $63
    ld [hl], b                                    ; $6120: $70
    ld [bc], a                                    ; $6121: $02
    rst $38                                       ; $6122: $ff
    ld e, b                                       ; $6123: $58
    jp nz, $8148                                  ; $6124: $c2 $48 $81

    ld b, d                                       ; $6127: $42
    ld [c], a                                     ; $6128: $e2
    dec bc                                        ; $6129: $0b
    inc c                                         ; $612a: $0c
    inc l                                         ; $612b: $2c
    inc a                                         ; $612c: $3c
    ret nz                                        ; $612d: $c0

    ld [hl], b                                    ; $612e: $70
    rst $38                                       ; $612f: $ff
    and b                                         ; $6130: $a0
    ld a, [hl]                                    ; $6131: $7e
    cp e                                          ; $6132: $bb
    ret z                                         ; $6133: $c8

    adc h                                         ; $6134: $8c
    add hl, bc                                    ; $6135: $09
    add c                                         ; $6136: $81
    ld c, e                                       ; $6137: $4b

Call_065_6138:
    ld l, e                                       ; $6138: $6b
    ld l, e                                       ; $6139: $6b
    ld bc, $07e0                                  ; $613a: $01 $e0 $07
    dec bc                                        ; $613d: $0b
    ld c, h                                       ; $613e: $4c
    ld l, h                                       ; $613f: $6c
    cp l                                          ; $6140: $bd
    pop hl                                        ; $6141: $e1
    ld a, $a2                                     ; $6142: $3e $a2
    cp $bf                                        ; $6144: $fe $bf
    ret nz                                        ; $6146: $c0

    and $42                                       ; $6147: $e6 $42
    pop bc                                        ; $6149: $c1
    ld de, $c36b                                  ; $614a: $11 $6b $c3
    and d                                         ; $614d: $a2
    cp l                                          ; $614e: $bd
    db $e3                                        ; $614f: $e3
    ld a, [hl]                                    ; $6150: $7e
    ld b, c                                       ; $6151: $41
    ld l, l                                       ; $6152: $6d
    cp $9f                                        ; $6153: $fe $9f
    ld [de], a                                    ; $6155: $12
    ld [hl+], a                                   ; $6156: $22
    dec b                                         ; $6157: $05
    and c                                         ; $6158: $a1
    nop                                           ; $6159: $00
    ld [bc], a                                    ; $615a: $02
    pop bc                                        ; $615b: $c1
    add l                                         ; $615c: $85
    add b                                         ; $615d: $80
    ret nz                                        ; $615e: $c0

    pop bc                                        ; $615f: $c1
    ld a, h                                       ; $6160: $7c
    add b                                         ; $6161: $80
    ld b, b                                       ; $6162: $40
    jp $df00                                      ; $6163: $c3 $00 $df


    ld [bc], a                                    ; $6166: $02
    and h                                         ; $6167: $a4
    add c                                         ; $6168: $81
    jp nz, Jump_000_0b11                          ; $6169: $c2 $11 $0b

    nop                                           ; $616c: $00
    ret nz                                        ; $616d: $c0

    ld b, d                                       ; $616e: $42
    and b                                         ; $616f: $a0
    ld a, $81                                     ; $6170: $3e $81
    dec c                                         ; $6172: $0d
    ret nz                                        ; $6173: $c0

    add b                                         ; $6174: $80
    nop                                           ; $6175: $00
    rst $18                                       ; $6176: $df
    ld d, d                                       ; $6177: $52
    ld b, a                                       ; $6178: $47
    ld a, [bc]                                    ; $6179: $0a
    add l                                         ; $617a: $85
    add [hl]                                      ; $617b: $86
    ld l, e                                       ; $617c: $6b
    add d                                         ; $617d: $82
    ret nz                                        ; $617e: $c0

    dec bc                                        ; $617f: $0b
    ld a, b                                       ; $6180: $78

Jump_065_6181:
    pop bc                                        ; $6181: $c1
    ret nz                                        ; $6182: $c0

    ldh [$be], a                                  ; $6183: $e0 $be
    cp a                                          ; $6185: $bf
    add [hl]                                      ; $6186: $86
    ld h, a                                       ; $6187: $67
    nop                                           ; $6188: $00
    ld b, [hl]                                    ; $6189: $46
    add d                                         ; $618a: $82
    call nz, Call_065_4360                        ; $618b: $c4 $60 $43
    ret nz                                        ; $618e: $c0

    ld a, $83                                     ; $618f: $3e $83
    ld l, [hl]                                    ; $6191: $6e
    and c                                         ; $6192: $a1
    ld a, [hl]                                    ; $6193: $7e
    ld e, b                                       ; $6194: $58
    inc b                                         ; $6195: $04
    adc d                                         ; $6196: $8a
    jp Jump_000_00a2                              ; $6197: $c3 $a2 $00


    ld [$8a80], sp                                ; $619a: $08 $80 $8a
    pop bc                                        ; $619d: $c1
    ld [bc], a                                    ; $619e: $02
    ret nz                                        ; $619f: $c0

    dec a                                         ; $61a0: $3d
    add b                                         ; $61a1: $80
    db $fd                                        ; $61a2: $fd
    and b                                         ; $61a3: $a0
    ld [$02c3], a                                 ; $61a4: $ea $c3 $02
    rst $38                                       ; $61a7: $ff
    dec bc                                        ; $61a8: $0b
    ld b, h                                       ; $61a9: $44
    ld b, $49                                     ; $61aa: $06 $49
    ld h, c                                       ; $61ac: $61
    ld c, h                                       ; $61ad: $4c
    ld l, h                                       ; $61ae: $6c
    push bc                                       ; $61af: $c5
    ld h, d                                       ; $61b0: $62
    ret nz                                        ; $61b1: $c0

    ld [c], a                                     ; $61b2: $e2
    add d                                         ; $61b3: $82
    pop bc                                        ; $61b4: $c1
    ld b, b                                       ; $61b5: $40
    rst $18                                       ; $61b6: $df
    halt                                          ; $61b7: $76
    ld b, l                                       ; $61b8: $45
    nop                                           ; $61b9: $00
    add h                                         ; $61ba: $84

Jump_065_61bb:
    add d                                         ; $61bb: $82
    rst $00                                       ; $61bc: $c7
    ld b, b                                       ; $61bd: $40
    ld a, l                                       ; $61be: $7d
    ld [c], a                                     ; $61bf: $e2
    inc bc                                        ; $61c0: $03
    pop bc                                        ; $61c1: $c1
    ret nz                                        ; $61c2: $c0

    pop bc                                        ; $61c3: $c1
    ld l, e                                       ; $61c4: $6b
    add c                                         ; $61c5: $81
    jp nz, Jump_065_46ff                          ; $61c6: $c2 $ff $46

    ld b, e                                       ; $61c9: $43
    nop                                           ; $61ca: $00
    inc bc                                        ; $61cb: $03
    and d                                         ; $61cc: $a2
    dec sp                                        ; $61cd: $3b
    ldh [$7d], a                                  ; $61ce: $e0 $7d
    pop hl                                        ; $61d0: $e1
    ld a, c                                       ; $61d1: $79
    pop hl                                        ; $61d2: $e1
    jp Jump_065_6ec0                              ; $61d3: $c3 $c0 $6e


    ld h, d                                       ; $61d6: $62
    cp $df                                        ; $61d7: $fe $df
    ld hl, sp+$22                                 ; $61d9: $f8 $22

Call_065_61db:
    ld [hl], b                                    ; $61db: $70
    call RST_20                                   ; $61dc: $cd $20 $00
    ld b, c                                       ; $61df: $41
    cp h                                          ; $61e0: $bc
    jp $a185                                      ; $61e1: $c3 $85 $a1


    dec c                                         ; $61e4: $0d
    ld c, l                                       ; $61e5: $4d
    dec l                                         ; $61e6: $2d
    ld b, h                                       ; $61e7: $44
    and b                                         ; $61e8: $a0
    nop                                           ; $61e9: $00
    jp hl                                         ; $61ea: $e9


    ld h, c                                       ; $61eb: $61
    cp $df                                        ; $61ec: $fe $df
    ld a, $e3                                     ; $61ee: $3e $e3
    ld d, b                                       ; $61f0: $50
    ld h, b                                       ; $61f1: $60
    ld b, d                                       ; $61f2: $42
    db $e4                                        ; $61f3: $e4
    db $fd                                        ; $61f4: $fd
    ld b, b                                       ; $61f5: $40
    inc a                                         ; $61f6: $3c
    ld hl, $c3be                                  ; $61f7: $21 $be $c3
    adc h                                         ; $61fa: $8c
    ld a, $ff                                     ; $61fb: $3e $ff
    add $04                                       ; $61fd: $c6 $04
    ld c, l                                       ; $61ff: $4d
    dec l                                         ; $6200: $2d
    ld b, d                                       ; $6201: $42
    push hl                                       ; $6202: $e5
    add [hl]                                      ; $6203: $86
    add b                                         ; $6204: $80
    ld b, b                                       ; $6205: $40
    add d                                         ; $6206: $82
    dec c                                         ; $6207: $0d
    ld b, b                                       ; $6208: $40
    cp h                                          ; $6209: $bc
    ld b, c                                       ; $620a: $41
    db $fc                                        ; $620b: $fc
    cp a                                          ; $620c: $bf
    add b                                         ; $620d: $80
    and h                                         ; $620e: $a4
    ld [bc], a                                    ; $620f: $02
    pop hl                                        ; $6210: $e1
    ld b, e                                       ; $6211: $43
    ld b, h                                       ; $6212: $44
    ld [hl], l                                    ; $6213: $75
    pop hl                                        ; $6214: $e1
    dec l                                         ; $6215: $2d
    ld b, b                                       ; $6216: $40
    add h                                         ; $6217: $84
    ldh a, [$80]                                  ; $6218: $f0 $80
    db $f4                                        ; $621a: $f4
    ld [bc], a                                    ; $621b: $02
    ld a, [hl+]                                   ; $621c: $2a
    sub l                                         ; $621d: $95
    and b                                         ; $621e: $a0
    rlc b                                         ; $621f: $cb $00
    dec c                                         ; $6221: $0d
    ld c, e                                       ; $6222: $4b
    dec hl                                        ; $6223: $2b
    dec hl                                        ; $6224: $2b
    inc b                                         ; $6225: $04
    add [hl]                                      ; $6226: $86
    jr nz, jr_065_62a7                            ; $6227: $20 $7e

    add c                                         ; $6229: $81
    dec hl                                        ; $622a: $2b
    ei                                            ; $622b: $fb
    jr nz, jr_065_626e                            ; $622c: $20 $40

    add d                                         ; $622e: $82
    ld [bc], a                                    ; $622f: $02
    rst $38                                       ; $6230: $ff
    ld [bc], a                                    ; $6231: $02
    and e                                         ; $6232: $a3
    sub h                                         ; $6233: $94
    ld h, b                                       ; $6234: $60
    nop                                           ; $6235: $00
    cp a                                          ; $6236: $bf
    add b                                         ; $6237: $80
    add l                                         ; $6238: $85
    add d                                         ; $6239: $82
    db $fd                                        ; $623a: $fd
    ld h, d                                       ; $623b: $62
    ld sp, hl                                     ; $623c: $f9
    ld hl, $9f40                                  ; $623d: $21 $40 $9f
    ret nz                                        ; $6240: $c0

    add sp, $40                                   ; $6241: $e8 $40
    ld h, d                                       ; $6243: $62

Call_065_6244:
    ret nz                                        ; $6244: $c0

    add sp, -$80                                  ; $6245: $e8 $80
    inc [hl]                                      ; $6247: $34
    ld h, b                                       ; $6248: $60
    call nz, Call_000_3e60                        ; $6249: $c4 $60 $3e
    ld a, c                                       ; $624c: $79
    add d                                         ; $624d: $82
    adc d                                         ; $624e: $8a
    ld d, e                                       ; $624f: $53
    ld hl, $e280                                  ; $6250: $21 $80 $e2
    ccf                                           ; $6253: $3f
    add b                                         ; $6254: $80
    dec l                                         ; $6255: $2d
    nop                                           ; $6256: $00
    db $fd                                        ; $6257: $fd
    ld b, c                                       ; $6258: $41
    pop bc                                        ; $6259: $c1
    ldh [rSTAT], a                                ; $625a: $e0 $41
    push hl                                       ; $625c: $e5
    nop                                           ; $625d: $00
    rst $18                                       ; $625e: $df
    add hl, de                                    ; $625f: $19
    ld [c], a                                     ; $6260: $e2
    add b                                         ; $6261: $80
    add sp, -$47                                  ; $6262: $e8 $b9
    ldh [$03], a                                  ; $6264: $e0 $03
    add e                                         ; $6266: $83
    nop                                           ; $6267: $00
    ld b, e                                       ; $6268: $43
    pop bc                                        ; $6269: $c1
    cp $df                                        ; $626a: $fe $df
    sbc b                                         ; $626c: $98
    and c                                         ; $626d: $a1

jr_065_626e:
    nop                                           ; $626e: $00
    ld [c], a                                     ; $626f: $e2
    jp Jump_065_40c3                              ; $6270: $c3 $c3 $40


    ld hl, $04c2                                  ; $6273: $21 $c2 $04
    ld b, h                                       ; $6276: $44
    rst $38                                       ; $6277: $ff
    jr jr_065_627a                                ; $6278: $18 $00

jr_065_627a:
    call nz, $817d                                ; $627a: $c4 $7d $81
    adc c                                         ; $627d: $89
    add c                                         ; $627e: $81
    ld l, e                                       ; $627f: $6b
    dec bc                                        ; $6280: $0b
    db $fd                                        ; $6281: $fd
    ld b, b                                       ; $6282: $40
    db $fc                                        ; $6283: $fc
    ld h, b                                       ; $6284: $60
    ld [hl], e                                    ; $6285: $73
    ld [bc], a                                    ; $6286: $02
    ld [hl], h                                    ; $6287: $74
    ld b, h                                       ; $6288: $44
    push de                                       ; $6289: $d5
    ldh a, [$ef]                                  ; $628a: $f0 $ef
    ld c, l                                       ; $628c: $4d
    dec a                                         ; $628d: $3d
    add d                                         ; $628e: $82
    dec l                                         ; $628f: $2d
    dec hl                                        ; $6290: $2b
    ld l, e                                       ; $6291: $6b
    rst $38                                       ; $6292: $ff
    ldh [rTIMA], a                                ; $6293: $e0 $05
    dec c                                         ; $6295: $0d
    cp l                                          ; $6296: $bd
    ld h, b                                       ; $6297: $60
    dec hl                                        ; $6298: $2b
    add e                                         ; $6299: $83
    ld b, b                                       ; $629a: $40
    ld b, b                                       ; $629b: $40
    ld b, b                                       ; $629c: $40
    call nz, Call_000_32b8                        ; $629d: $c4 $b8 $32
    ld sp, $a17e                                  ; $62a0: $31 $7e $a1
    ld [bc], a                                    ; $62a3: $02
    cp [hl]                                       ; $62a4: $be
    and e                                         ; $62a5: $a3
    ld l, e                                       ; $62a6: $6b

jr_065_62a7:
    jp nz, $0282                                  ; $62a7: $c2 $82 $02

    ld a, a                                       ; $62aa: $7f
    inc a                                         ; $62ab: $3c
    ld c, [hl]                                    ; $62ac: $4e
    cp [hl]                                       ; $62ad: $be
    ld [c], a                                     ; $62ae: $e2
    ld b, e                                       ; $62af: $43
    pop bc                                        ; $62b0: $c1
    add [hl]                                      ; $62b1: $86
    sbc c                                         ; $62b2: $99
    nop                                           ; $62b3: $00
    cp $d5                                        ; $62b4: $fe $d5
    res 0, d                                      ; $62b6: $cb $82
    pop bc                                        ; $62b8: $c1
    db $e3                                        ; $62b9: $e3
    ld [$fcbf], sp                                ; $62ba: $08 $bf $fc
    ld l, $3f                                     ; $62bd: $2e $3f
    and b                                         ; $62bf: $a0
    ld hl, sp+$61                                 ; $62c0: $f8 $61
    ld b, $22                                     ; $62c2: $06 $22
    db $10                                        ; $62c4: $10
    ld b, l                                       ; $62c5: $45
    add c                                         ; $62c6: $81
    jp nz, Jump_000_2c5d                          ; $62c7: $c2 $5d $2c

    inc de                                        ; $62ca: $13
    cp d                                          ; $62cb: $ba
    ld [c], a                                     ; $62cc: $e2
    ld c, l                                       ; $62cd: $4d
    push bc                                       ; $62ce: $c5
    ld hl, $e17f                                  ; $62cf: $21 $7f $e1
    cp $df                                        ; $62d2: $fe $df
    nop                                           ; $62d4: $00
    halt                                          ; $62d5: $76
    adc $73                                       ; $62d6: $ce $73
    ld [hl+], a                                   ; $62d8: $22
    add [hl]                                      ; $62d9: $86
    ld a, e                                       ; $62da: $7b
    ld [hl], $da                                  ; $62db: $36 $da
    ei                                            ; $62dd: $fb
    db $e4                                        ; $62de: $e4
    ret nz                                        ; $62df: $c0

    rst $38                                       ; $62e0: $ff
    ld hl, sp+$34                                 ; $62e1: $f8 $34
    or c                                          ; $62e3: $b1
    ld h, h                                       ; $62e4: $64
    nop                                           ; $62e5: $00
    ret nz                                        ; $62e6: $c0

    db $fd                                        ; $62e7: $fd
    nop                                           ; $62e8: $00
    nop                                           ; $62e9: $00
    nop                                           ; $62ea: $00
    rst $08                                       ; $62eb: $cf
    and b                                         ; $62ec: $a0
    call c, $dedd                                 ; $62ed: $dc $dd $de
    db $fc                                        ; $62f0: $fc
    rst $38                                       ; $62f1: $ff
    ld hl, sp-$09                                 ; $62f2: $f8 $f7
    rst $18                                       ; $62f4: $df
    ldh [$f3], a                                  ; $62f5: $e0 $f3
    pop hl                                        ; $62f7: $e1
    ld [c], a                                     ; $62f8: $e2
    db $fc                                        ; $62f9: $fc
    rst $38                                       ; $62fa: $ff
    ld hl, sp-$09                                 ; $62fb: $f8 $f7
    db $e3                                        ; $62fd: $e3
    db $e4                                        ; $62fe: $e4
    push hl                                       ; $62ff: $e5
    and $3c                                       ; $6300: $e6 $3c
    db $fc                                        ; $6302: $fc
    rst $38                                       ; $6303: $ff
    ld hl, sp-$09                                 ; $6304: $f8 $f7
    rst $20                                       ; $6306: $e7
    add sp, -$17                                  ; $6307: $e8 $e9
    ld [$fffc], a                                 ; $6309: $ea $fc $ff
    ld hl, sp-$09                                 ; $630c: $f8 $f7
    nop                                           ; $630e: $00
    ld e, $ff                                     ; $630f: $1e $ff
    db $fc                                        ; $6311: $fc
    ei                                            ; $6312: $fb
    ld e, $ff                                     ; $6313: $1e $ff
    db $fc                                        ; $6315: $fc
    ei                                            ; $6316: $fb
    ld e, $ff                                     ; $6317: $1e $ff
    db $fc                                        ; $6319: $fc
    ei                                            ; $631a: $fb
    ld e, $ff                                     ; $631b: $1e $ff
    db $fc                                        ; $631d: $fc
    ei                                            ; $631e: $fb
    nop                                           ; $631f: $00
    ld e, $ff                                     ; $6320: $1e $ff
    nop                                           ; $6322: $00
    rst $18                                       ; $6323: $df
    db $fc                                        ; $6324: $fc
    rst $38                                       ; $6325: $ff
    nop                                           ; $6326: $00
    rst $18                                       ; $6327: $df
    db $fc                                        ; $6328: $fc
    rst $38                                       ; $6329: $ff
    nop                                           ; $632a: $00
    rst $18                                       ; $632b: $df
    db $fc                                        ; $632c: $fc
    rst $38                                       ; $632d: $ff
    nop                                           ; $632e: $00
    rst $18                                       ; $632f: $df
    ldh [$0e], a                                  ; $6330: $e0 $0e
    add sp, -$01                                  ; $6332: $e8 $ff
    push hl                                       ; $6334: $e5
    nop                                           ; $6335: $00
    rst $18                                       ; $6336: $df
    ld d, $f2                                     ; $6337: $16 $f2
    ret nz                                        ; $6339: $c0

    pop hl                                        ; $633a: $e1
    sub $d7                                       ; $633b: $d6 $d7
    and b                                         ; $633d: $a0
    pop af                                        ; $633e: $f1
    and b                                         ; $633f: $a0

jr_065_6340:
    nop                                           ; $6340: $00
    rst $18                                       ; $6341: $df

Jump_065_6342:
    ld a, [de]                                    ; $6342: $1a
    di                                            ; $6343: $f3
    call nz, $d8e1                                ; $6344: $c4 $e1 $d8
    reti                                          ; $6347: $d9


    and b                                         ; $6348: $a0
    and b                                         ; $6349: $a0
    db $fc                                        ; $634a: $fc
    nop                                           ; $634b: $00
    rst $18                                       ; $634c: $df
    ld a, [de]                                    ; $634d: $1a
    di                                            ; $634e: $f3

jr_065_634f:
    ret c                                         ; $634f: $d8

    reti                                          ; $6350: $d9


    ret nc                                        ; $6351: $d0

    pop de                                        ; $6352: $d1
    jp c, $63db                                   ; $6353: $da $db $63

    and b                                         ; $6356: $a0
    and b                                         ; $6357: $a0
    nop                                           ; $6358: $00
    rst $18                                       ; $6359: $df
    ld b, $f1                                     ; $635a: $06 $f1
    call nz, $d2e1                                ; $635c: $c4 $e1 $d2
    db $d3                                        ; $635f: $d3
    ld hl, sp-$1f                                 ; $6360: $f8 $e1
    ld [hl], b                                    ; $6362: $70
    cp $db                                        ; $6363: $fe $db
    ld b, $f2                                     ; $6365: $06 $f2
    add hl, bc                                    ; $6367: $09
    ldh [$c4], a                                  ; $6368: $e0 $c4
    pop hl                                        ; $636a: $e1
    call nc, $a0d5                                ; $636b: $d4 $d5 $a0
    ld hl, sp-$1e                                 ; $636e: $f8 $e2
    ldh [rP1], a                                  ; $6370: $e0 $00
    rst $18                                       ; $6372: $df
    jr jr_065_6340                                ; $6373: $18 $cb

    add hl, bc                                    ; $6375: $09
    pop hl                                        ; $6376: $e1
    call nz, Call_065_7ee1                        ; $6377: $c4 $e1 $7e
    pop bc                                        ; $637a: $c1
    call nc, $d0d5                                ; $637b: $d4 $d5 $d0
    jp hl                                         ; $637e: $e9


    pop de                                        ; $637f: $d1
    nop                                           ; $6380: $00
    rst $18                                       ; $6381: $df
    jr jr_065_634f                                ; $6382: $18 $cb

    and b                                         ; $6384: $a0
    add hl, bc                                    ; $6385: $09
    pop hl                                        ; $6386: $e1
    and b                                         ; $6387: $a0
    sbc a                                         ; $6388: $9f
    sbc l                                         ; $6389: $9d
    adc a                                         ; $638a: $8f
    sbc l                                         ; $638b: $9d

Call_065_638c:
    sbc l                                         ; $638c: $9d
    and d                                         ; $638d: $a2
    sbc a                                         ; $638e: $9f
    ld a, [hl]                                    ; $638f: $7e
    pop hl                                        ; $6390: $e1
    nop                                           ; $6391: $00
    rst $18                                       ; $6392: $df
    ld [bc], a                                    ; $6393: $02
    rst $28                                       ; $6394: $ef
    and b                                         ; $6395: $a0
    scf                                           ; $6396: $37
    sbc a                                         ; $6397: $9f
    sbc h                                         ; $6398: $9c
    ld b, [hl]                                    ; $6399: $46
    rst $38                                       ; $639a: $ff
    ldh [$9c], a                                  ; $639b: $e0 $9c
    sbc a                                         ; $639d: $9f
    ld a, [hl-]                                   ; $639e: $3a
    ldh [$3a], a                                  ; $639f: $e0 $3a
    ret nz                                        ; $63a1: $c0

    jr jr_065_63a4                                ; $63a2: $18 $00

jr_065_63a4:
    rst $18                                       ; $63a4: $df
    ld [de], a                                    ; $63a5: $12
    and [hl]                                      ; $63a6: $a6
    inc c                                         ; $63a7: $0c
    pop bc                                        ; $63a8: $c1
    jp nc, $c1d3                                  ; $63a9: $d2 $d3 $c1

    db $e3                                        ; $63ac: $e3
    cp a                                          ; $63ad: $bf
    ld [c], a                                     ; $63ae: $e2
    ld a, [hl-]                                   ; $63af: $3a
    ret nz                                        ; $63b0: $c0

    cp b                                          ; $63b1: $b8
    nop                                           ; $63b2: $00
    rst $18                                       ; $63b3: $df
    ld d, $a7                                     ; $63b4: $16 $a7
    ld c, b                                       ; $63b6: $48
    pop bc                                        ; $63b7: $c1
    call nc, $a1d5                                ; $63b8: $d4 $d5 $a1
    add d                                         ; $63bb: $82
    ldh [$ae], a                                  ; $63bc: $e0 $ae
    ld c, $fe                                     ; $63be: $0e $fe
    ldh [rDMA], a                                 ; $63c0: $e0 $46
    sbc [hl]                                      ; $63c2: $9e
    and b                                         ; $63c3: $a0
    ld sp, $00e0                                  ; $63c4: $31 $e0 $00
    rst $18                                       ; $63c7: $df
    ld d, $a7                                     ; $63c8: $16 $a7
    ld c, b                                       ; $63ca: $48
    jp nz, Jump_065_4282                          ; $63cb: $c2 $82 $42

    ld [c], a                                     ; $63ce: $e2
    xor a                                         ; $63cf: $af
    cp $e0                                        ; $63d0: $fe $e0
    ret nz                                        ; $63d2: $c0

    ldh [$3d], a                                  ; $63d3: $e0 $3d
    ret nz                                        ; $63d5: $c0

    nop                                           ; $63d6: $00
    rst $18                                       ; $63d7: $df
    ld a, [bc]                                    ; $63d8: $0a
    xor c                                         ; $63d9: $a9
    call nc, $d511                                ; $63da: $d4 $11 $d5
    inc bc                                        ; $63dd: $03
    ld [c], a                                     ; $63de: $e2
    add e                                         ; $63df: $83
    ldh [$fd], a                                  ; $63e0: $e0 $fd
    ret nz                                        ; $63e2: $c0

    sbc [hl]                                      ; $63e3: $9e
    dec [hl]                                      ; $63e4: $35
    jp nz, $96fa                                  ; $63e5: $c2 $fa $96

    ld a, [bc]                                    ; $63e8: $0a
    xor a                                         ; $63e9: $af
    jp nc, $c4c4                                  ; $63ea: $d2 $c4 $c4

    xor [hl]                                      ; $63ed: $ae
    add e                                         ; $63ee: $83
    pop hl                                        ; $63ef: $e1
    cp l                                          ; $63f0: $bd
    ret nz                                        ; $63f1: $c0

    and c                                         ; $63f2: $a1
    ld sp, hl                                     ; $63f3: $f9
    and c                                         ; $63f4: $a1
    sub $d7                                       ; $63f5: $d6 $d7
    jr nc, jr_065_63f9                            ; $63f7: $30 $00

jr_065_63f9:
    rst $18                                       ; $63f9: $df
    inc b                                         ; $63fa: $04
    call nz, $c5c4                                ; $63fb: $c4 $c4 $c5
    jp nz, Jump_065_45e1                          ; $63fe: $c2 $e1 $45

    ld b, l                                       ; $6401: $45
    cp a                                          ; $6402: $bf
    jp $80f8                                      ; $6403: $c3 $f8 $80


    db $ec                                        ; $6406: $ec
    nop                                           ; $6407: $00
    rst $18                                       ; $6408: $df
    inc d                                         ; $6409: $14
    add e                                         ; $640a: $83
    sub $d7                                       ; $640b: $d6 $d7
    call nz, Call_065_45c4                        ; $640d: $c4 $c4 $45
    ld c, b                                       ; $6410: $48
    ld c, [hl]                                    ; $6411: $4e
    rlca                                          ; $6412: $07
    ld c, [hl]                                    ; $6413: $4e
    ld c, c                                       ; $6414: $49
    ld d, d                                       ; $6415: $52
    cp a                                          ; $6416: $bf
    ld [c], a                                     ; $6417: $e2
    ld hl, sp-$7f                                 ; $6418: $f8 $81
    nop                                           ; $641a: $00
    rst $18                                       ; $641b: $df
    inc c                                         ; $641c: $0c
    add e                                         ; $641d: $83
    adc [hl]                                      ; $641e: $8e
    add c                                         ; $641f: $81
    sbc l                                         ; $6420: $9d
    sbc [hl]                                      ; $6421: $9e
    ld b, e                                       ; $6422: $43
    pop hl                                        ; $6423: $e1
    ld c, b                                       ; $6424: $48
    ld h, b                                       ; $6425: $60
    ld h, c                                       ; $6426: $61
    rst $38                                       ; $6427: $ff
    ldh [$bf], a                                  ; $6428: $e0 $bf
    pop hl                                        ; $642a: $e1
    sbc [hl]                                      ; $642b: $9e
    ldh [$f8], a                                  ; $642c: $e0 $f8
    add b                                         ; $642e: $80
    nop                                           ; $642f: $00
    rst $18                                       ; $6430: $df
    inc c                                         ; $6431: $0c
    add h                                         ; $6432: $84
    adc [hl]                                      ; $6433: $8e
    add b                                         ; $6434: $80
    add $a0                                       ; $6435: $c6 $a0
    xor a                                         ; $6437: $af
    xor [hl]                                      ; $6438: $ae
    ld b, l                                       ; $6439: $45
    rst $38                                       ; $643a: $ff
    ld d, e                                       ; $643b: $53
    ld e, c                                       ; $643c: $59
    ld e, c                                       ; $643d: $59
    ld e, c                                       ; $643e: $59
    ld d, h                                       ; $643f: $54
    ld h, c                                       ; $6440: $61
    ld e, b                                       ; $6441: $58
    ld b, h                                       ; $6442: $44
    rra                                           ; $6443: $1f
    xor [hl]                                      ; $6444: $ae
    sub c                                         ; $6445: $91
    sbc [hl]                                      ; $6446: $9e
    call nc, Call_000_00d5                        ; $6447: $d4 $d5 $00
    rst $18                                       ; $644a: $df
    ld [bc], a                                    ; $644b: $02
    push hl                                       ; $644c: $e5
    pop bc                                        ; $644d: $c1
    ld [c], a                                     ; $644e: $e2
    cp $c4                                        ; $644f: $fe $c4
    ret nz                                        ; $6451: $c0

    ld b, l                                       ; $6452: $45
    ld a, [hl+]                                   ; $6453: $2a
    ld h, $26                                     ; $6454: $26 $26
    inc l                                         ; $6456: $2c
    dec hl                                        ; $6457: $2b
    ld d, d                                       ; $6458: $52
    rrca                                          ; $6459: $0f
    ld d, d                                       ; $645a: $52
    sub c                                         ; $645b: $91
    xor a                                         ; $645c: $af
    sub b                                         ; $645d: $90
    cp $a0                                        ; $645e: $fe $a0
    nop                                           ; $6460: $00
    rst $18                                       ; $6461: $df
    ld b, $a4                                     ; $6462: $06 $a4
    ld c, b                                       ; $6464: $48
    add b                                         ; $6465: $80
    rst $38                                       ; $6466: $ff
    sbc [hl]                                      ; $6467: $9e
    sub c                                         ; $6468: $91
    ld b, [hl]                                    ; $6469: $46
    xor a                                         ; $646a: $af
    sub c                                         ; $646b: $91
    sub b                                         ; $646c: $90
    ld b, d                                       ; $646d: $42
    daa                                           ; $646e: $27
    ccf                                           ; $646f: $3f
    jr nz, jr_065_6492                            ; $6470: $20 $20

    ld h, $2a                                     ; $6472: $26 $2a
    sub c                                         ; $6474: $91
    sub b                                         ; $6475: $90
    rst $38                                       ; $6476: $ff
    ldh [$be], a                                  ; $6477: $e0 $be
    and b                                         ; $6479: $a0
    call c, $df00                                 ; $647a: $dc $00 $df
    ld c, $65                                     ; $647d: $0e $65
    jp nc, $9ed3                                  ; $647f: $d2 $d3 $9e

    call z, $91e1                                 ; $6482: $cc $e1 $91
    ld [hl], $7f                                  ; $6485: $36 $7f
    ld hl, $2a26                                  ; $6487: $21 $26 $2a
    ld b, c                                       ; $648a: $41
    ld b, l                                       ; $648b: $45
    sub c                                         ; $648c: $91
    sub c                                         ; $648d: $91
    cp [hl]                                       ; $648e: $be
    ldh [$c1], a                                  ; $648f: $e0 $c1
    sbc [hl]                                      ; $6491: $9e

jr_065_6492:
    add hl, sp                                    ; $6492: $39
    ld h, d                                       ; $6493: $62
    nop                                           ; $6494: $00
    rst $18                                       ; $6495: $df
    ld c, $60                                     ; $6496: $0e $60
    add d                                         ; $6498: $82
    pop bc                                        ; $6499: $c1
    ret nz                                        ; $649a: $c0

    ldh [$91], a                                  ; $649b: $e0 $91
    ld b, l                                       ; $649d: $45
    ld a, a                                       ; $649e: $7f
    ld [hl], $35                                  ; $649f: $36 $35
    dec [hl]                                      ; $64a1: $35
    inc a                                         ; $64a2: $3c
    ld b, h                                       ; $64a3: $44
    ld [bc], a                                    ; $64a4: $02
    ld [bc], a                                    ; $64a5: $02
    cp l                                          ; $64a6: $bd
    add c                                         ; $64a7: $81
    jp $a191                                      ; $64a8: $c3 $91 $a1


    add hl, sp                                    ; $64ab: $39
    ld h, c                                       ; $64ac: $61
    nop                                           ; $64ad: $00
    rst $18                                       ; $64ae: $df
    inc b                                         ; $64af: $04
    pop bc                                        ; $64b0: $c1
    db $10                                        ; $64b1: $10
    ld h, c                                       ; $64b2: $61
    and c                                         ; $64b3: $a1
    sub b                                         ; $64b4: $90
    cpl                                           ; $64b5: $2f
    sub c                                         ; $64b6: $91
    ld b, [hl]                                    ; $64b7: $46
    ld b, b                                       ; $64b8: $40
    dec [hl]                                      ; $64b9: $35
    rst $38                                       ; $64ba: $ff
    ldh [rSCY], a                                 ; $64bb: $e0 $42
    ret nz                                        ; $64bd: $c0

    ldh [$bd], a                                  ; $64be: $e0 $bd
    pop hl                                        ; $64c0: $e1
    ld bc, $309e                                  ; $64c1: $01 $9e $30
    add c                                         ; $64c4: $81
    nop                                           ; $64c5: $00
    rst $18                                       ; $64c6: $df
    ld [bc], a                                    ; $64c7: $02
    pop hl                                        ; $64c8: $e1
    db $10                                        ; $64c9: $10
    ld h, c                                       ; $64ca: $61
    ld b, d                                       ; $64cb: $42
    pop bc                                        ; $64cc: $c1
    add b                                         ; $64cd: $80
    db $e3                                        ; $64ce: $e3
    ccf                                           ; $64cf: $3f
    add b                                         ; $64d0: $80
    and b                                         ; $64d1: $a0
    ld a, l                                       ; $64d2: $7d
    ldh [rP1], a                                  ; $64d3: $e0 $00
    pop bc                                        ; $64d5: $c1
    ld a, [$1e57]                                 ; $64d6: $fa $57 $1e
    inc l                                         ; $64d9: $2c
    ld de, $9e60                                  ; $64da: $11 $60 $9e
    jp z, $ae81                                   ; $64dd: $ca $81 $ae

    rrca                                          ; $64e0: $0f
    inc a                                         ; $64e1: $3c
    dec [hl]                                      ; $64e2: $35
    dec [hl]                                      ; $64e3: $35
    add hl, sp                                    ; $64e4: $39
    ccf                                           ; $64e5: $3f
    add l                                         ; $64e6: $85
    nop                                           ; $64e7: $00
    rst $18                                       ; $64e8: $df
    inc c                                         ; $64e9: $0c
    ld b, [hl]                                    ; $64ea: $46
    call Call_065_6540                            ; $64eb: $cd $40 $65
    sbc [hl]                                      ; $64ee: $9e
    ld b, [hl]                                    ; $64ef: $46
    add c                                         ; $64f0: $81
    xor a                                         ; $64f1: $af
    rst $38                                       ; $64f2: $ff
    ret nz                                        ; $64f3: $c0

    ret nz                                        ; $64f4: $c0

    ldh [$ae], a                                  ; $64f5: $e0 $ae
    xor [hl]                                      ; $64f7: $ae

Call_065_64f8:
    ld b, b                                       ; $64f8: $40
    add c                                         ; $64f9: $81
    ld l, b                                       ; $64fa: $68
    nop                                           ; $64fb: $00
    rst $18                                       ; $64fc: $df
    ld b, $66                                     ; $64fd: $06 $66
    add l                                         ; $64ff: $85
    add h                                         ; $6500: $84
    xor a                                         ; $6501: $af
    cp $c0                                        ; $6502: $fe $c0
    ld a, [hl-]                                   ; $6504: $3a
    ld b, l                                       ; $6505: $45
    cp c                                          ; $6506: $b9
    ldh [$61], a                                  ; $6507: $e0 $61
    xor a                                         ; $6509: $af
    nop                                           ; $650a: $00
    add c                                         ; $650b: $81
    nop                                           ; $650c: $00
    rst $18                                       ; $650d: $df
    nop                                           ; $650e: $00
    rst $00                                       ; $650f: $c7
    adc b                                         ; $6510: $88
    ld h, l                                       ; $6511: $65
    ld b, l                                       ; $6512: $45
    ld [hl], $41                                  ; $6513: $36 $41
    ldh [rSC], a                                  ; $6515: $e0 $02

jr_065_6517:
    ld a, [hl]                                    ; $6517: $7e
    add c                                         ; $6518: $81
    sbc [hl]                                      ; $6519: $9e
    ld [bc], a                                    ; $651a: $02
    ld sp, hl                                     ; $651b: $f9
    nop                                           ; $651c: $00
    ld c, h                                       ; $651d: $4c
    ld [bc], a                                    ; $651e: $02
    ld [c], a                                     ; $651f: $e2
    adc c                                         ; $6520: $89
    ld h, b                                       ; $6521: $60
    ld b, a                                       ; $6522: $47
    pop bc                                        ; $6523: $c1
    add h                                         ; $6524: $84
    add b                                         ; $6525: $80
    ld b, d                                       ; $6526: $42
    add b                                         ; $6527: $80
    ld h, d                                       ; $6528: $62
    and c                                         ; $6529: $a1
    ld a, [$0020]                                 ; $652a: $fa $20 $00
    rst $18                                       ; $652d: $df
    ld [bc], a                                    ; $652e: $02
    and $48                                       ; $652f: $e6 $48
    ld h, b                                       ; $6531: $60
    xor a                                         ; $6532: $af
    ld c, d                                       ; $6533: $4a
    jp nz, $8000                                  ; $6534: $c2 $00 $80

    ld h, [hl]                                    ; $6537: $66
    ld a, [$0020]                                 ; $6538: $fa $20 $00
    rst $18                                       ; $653b: $df
    ld [bc], a                                    ; $653c: $02
    push hl                                       ; $653d: $e5
    add h                                         ; $653e: $84
    add d                                         ; $653f: $82

Call_065_6540:
    add a                                         ; $6540: $87
    ld b, c                                       ; $6541: $41
    call nz, $c0a1                                ; $6542: $c4 $a1 $c0
    and d                                         ; $6545: $a2
    and b                                         ; $6546: $a0
    nop                                           ; $6547: $00
    pop hl                                        ; $6548: $e1
    nop                                           ; $6549: $00
    rst $18                                       ; $654a: $df
    ld [bc], a                                    ; $654b: $02
    and h                                         ; $654c: $a4
    ld b, h                                       ; $654d: $44
    add c                                         ; $654e: $81
    inc bc                                        ; $654f: $03
    and b                                         ; $6550: $a0
    sub c                                         ; $6551: $91
    ret nz                                        ; $6552: $c0

    rst $20                                       ; $6553: $e7
    sub c                                         ; $6554: $91
    jr jr_065_6517                                ; $6555: $18 $c0

    ld b, b                                       ; $6557: $40
    nop                                           ; $6558: $00
    rst $18                                       ; $6559: $df
    ld b, $27                                     ; $655a: $06 $27
    sbc a                                         ; $655c: $9f
    sbc h                                         ; $655d: $9c
    ld [bc], a                                    ; $655e: $02
    and c                                         ; $655f: $a1
    ld b, h                                       ; $6560: $44
    ld b, e                                       ; $6561: $43
    ld b, h                                       ; $6562: $44
    and b                                         ; $6563: $a0
    ld h, e                                       ; $6564: $63
    sub b                                         ; $6565: $90
    sub b                                         ; $6566: $90
    nop                                           ; $6567: $00
    jp $d6fe                                      ; $6568: $c3 $fe $d6


    ld b, $2c                                     ; $656b: $06 $2c
    ret nc                                        ; $656d: $d0

    pop de                                        ; $656e: $d1
    cp a                                          ; $656f: $bf
    ldh [$6d], a                                  ; $6570: $e0 $6d
    sub c                                         ; $6572: $91
    ld b, d                                       ; $6573: $42
    db $e4                                        ; $6574: $e4
    xor [hl]                                      ; $6575: $ae
    ld b, [hl]                                    ; $6576: $46
    add c                                         ; $6577: $81
    add c                                         ; $6578: $81
    sbc h                                         ; $6579: $9c
    sbc a                                         ; $657a: $9f
    cp $d9                                        ; $657b: $fe $d9
    nop                                           ; $657d: $00
    ld b, $2c                                     ; $657e: $06 $2c
    ld b, l                                       ; $6580: $45
    ld b, h                                       ; $6581: $44

jr_065_6582:
    ld [bc], a                                    ; $6582: $02
    db $e3                                        ; $6583: $e3
    add hl, sp                                    ; $6584: $39
    add b                                         ; $6585: $80
    ld b, b                                       ; $6586: $40
    add h                                         ; $6587: $84
    cp $d7                                        ; $6588: $fe $d7
    ld b, $2c                                     ; $658a: $06 $2c
    adc l                                         ; $658c: $8d
    ld bc, $7f08                                  ; $658d: $01 $08 $7f
    and c                                         ; $6590: $a1
    ld b, e                                       ; $6591: $43
    ld b, e                                       ; $6592: $43
    or $c1                                        ; $6593: $f6 $c1
    sub c                                         ; $6595: $91
    ret nz                                        ; $6596: $c0

    ld h, b                                       ; $6597: $60
    dec sp                                        ; $6598: $3b
    ld [bc], a                                    ; $6599: $02
    nop                                           ; $659a: $00
    rst $18                                       ; $659b: $df
    adc [hl]                                      ; $659c: $8e
    inc bc                                        ; $659d: $03
    cp $3d                                        ; $659e: $fe $3d
    pop bc                                        ; $65a0: $c1
    ld b, l                                       ; $65a1: $45
    ld b, e                                       ; $65a2: $43
    xor a                                         ; $65a3: $af
    ld b, e                                       ; $65a4: $43
    ld b, e                                       ; $65a5: $43
    ld b, c                                       ; $65a6: $41
    ld b, e                                       ; $65a7: $43
    ld [hl+], a                                   ; $65a8: $22
    add c                                         ; $65a9: $81
    ld b, b                                       ; $65aa: $40
    xor [hl]                                      ; $65ab: $ae
    ld b, b                                       ; $65ac: $40
    add c                                         ; $65ad: $81
    cp $21                                        ; $65ae: $fe $21
    nop                                           ; $65b0: $00
    rst $18                                       ; $65b1: $df
    ld [c], a                                     ; $65b2: $e2
    jp c, $c1c2                                   ; $65b3: $da $c2 $c1

    ld b, c                                       ; $65b6: $41
    rst $18                                       ; $65b7: $df
    ld b, l                                       ; $65b8: $45
    ld [hl], $3b                                  ; $65b9: $36 $3b
    dec [hl]                                      ; $65bb: $35
    dec sp                                        ; $65bc: $3b
    db $fd                                        ; $65bd: $fd
    ldh [$36], a                                  ; $65be: $e0 $36
    ld b, l                                       ; $65c0: $45
    ret nz                                        ; $65c1: $c0

    ld a, h                                       ; $65c2: $7c
    jr nz, jr_065_6582                            ; $65c3: $20 $bd

    ld [bc], a                                    ; $65c5: $02
    nop                                           ; $65c6: $00
    rst $18                                       ; $65c7: $df
    nop                                           ; $65c8: $00
    pop bc                                        ; $65c9: $c1
    ld bc, $7f80                                  ; $65ca: $01 $80 $7f
    add d                                         ; $65cd: $82
    ld b, h                                       ; $65ce: $44
    inc a                                         ; $65cf: $3c
    dec bc                                        ; $65d0: $0b
    and h                                         ; $65d1: $a4
    ld h, h                                       ; $65d2: $64
    rst $38                                       ; $65d3: $ff
    ldh [$a5], a                                  ; $65d4: $e0 $a5
    dec a                                         ; $65d6: $3d
    add c                                         ; $65d7: $81
    ld a, [hl]                                    ; $65d8: $7e
    nop                                           ; $65d9: $00
    add e                                         ; $65da: $83
    pop bc                                        ; $65db: $c1
    nop                                           ; $65dc: $00
    rst $18                                       ; $65dd: $df
    ld hl, sp+$02                                 ; $65de: $f8 $02
    ld h, b                                       ; $65e0: $60
    ld bc, $7f80                                  ; $65e1: $01 $80 $7f
    add d                                         ; $65e4: $82
    ld b, d                                       ; $65e5: $42
    dec [hl]                                      ; $65e6: $35
    ld l, c                                       ; $65e7: $69
    and e                                         ; $65e8: $a3
    dec [hl]                                      ; $65e9: $35
    rra                                           ; $65ea: $1f
    dec [hl]                                      ; $65eb: $35
    and e                                         ; $65ec: $a3
    ld l, d                                       ; $65ed: $6a
    dec [hl]                                      ; $65ee: $35
    ld b, d                                       ; $65ef: $42
    add b                                         ; $65f0: $80
    inc b                                         ; $65f1: $04
    nop                                           ; $65f2: $00
    rst $18                                       ; $65f3: $df
    cp $c5                                        ; $65f4: $fe $c5
    nop                                           ; $65f6: $00
    ld a, l                                       ; $65f7: $7d
    and d                                         ; $65f8: $a2
    ret nz                                        ; $65f9: $c0

    ldh [$7f], a                                  ; $65fa: $e0 $7f
    ld h, c                                       ; $65fc: $61
    ret nz                                        ; $65fd: $c0

    ldh [$c3], a                                  ; $65fe: $e0 $c3
    ld h, d                                       ; $6600: $62
    xor d                                         ; $6601: $aa
    ld h, b                                       ; $6602: $60
    nop                                           ; $6603: $00
    sbc a                                         ; $6604: $9f
    ld [bc], a                                    ; $6605: $02
    inc h                                         ; $6606: $24
    sbc $7d                                       ; $6607: $de $7d
    and d                                         ; $6609: $a2
    xor [hl]                                      ; $660a: $ae
    inc a                                         ; $660b: $3c
    ld l, e                                       ; $660c: $6b
    ld [hl], c                                    ; $660d: $71
    rst $38                                       ; $660e: $ff
    ldh [$6d], a                                  ; $660f: $e0 $6d
    inc a                                         ; $6611: $3c
    pop hl                                        ; $6612: $e1
    ld b, h                                       ; $6613: $44
    jp nz, Jump_000_0004                          ; $6614: $c2 $04 $00

    sbc a                                         ; $6617: $9f
    ld [bc], a                                    ; $6618: $02
    dec h                                         ; $6619: $25
    sub a                                         ; $661a: $97
    and b                                         ; $661b: $a0
    and c                                         ; $661c: $a1
    ld b, [hl]                                    ; $661d: $46
    xor a                                         ; $661e: $af
    add d                                         ; $661f: $82
    ret nz                                        ; $6620: $c0

    add $9e                                       ; $6621: $c6 $9e
    ld l, $c2                                     ; $6623: $2e $c2
    nop                                           ; $6625: $00
    sbc a                                         ; $6626: $9f
    nop                                           ; $6627: $00
    ld b, [hl]                                    ; $6628: $46
    cp [hl]                                       ; $6629: $be
    ld b, b                                       ; $662a: $40
    db $fd                                        ; $662b: $fd
    ld h, b                                       ; $662c: $60
    ld b, l                                       ; $662d: $45
    adc d                                         ; $662e: $8a
    ld b, e                                       ; $662f: $43
    ret nz                                        ; $6630: $c0

    xor [hl]                                      ; $6631: $ae
    ld b, b                                       ; $6632: $40
    pop bc                                        ; $6633: $c1
    and c                                         ; $6634: $a1
    dec l                                         ; $6635: $2d
    jp $9f00                                      ; $6636: $c3 $00 $9f


    ld a, [$da45]                                 ; $6639: $fa $45 $da
    ld bc, $3ddb                                  ; $663c: $01 $db $3d
    and c                                         ; $663f: $a1
    ld b, d                                       ; $6640: $42
    add e                                         ; $6641: $83
    add d                                         ; $6642: $82
    add e                                         ; $6643: $83
    dec b                                         ; $6644: $05
    and b                                         ; $6645: $a0
    ld [bc], a                                    ; $6646: $02
    or $00                                        ; $6647: $f6 $00
    ld c, e                                       ; $6649: $4b
    cp $c3                                        ; $664a: $fe $c3
    ld [bc], a                                    ; $664c: $02
    dec a                                         ; $664d: $3d
    and c                                         ; $664e: $a1
    sbc l                                         ; $664f: $9d
    ld a, d                                       ; $6650: $7a
    ld h, h                                       ; $6651: $64
    add d                                         ; $6652: $82
    jp $f702                                      ; $6653: $c3 $02 $f7


    nop                                           ; $6656: $00
    ld c, e                                       ; $6657: $4b
    cp $03                                        ; $6658: $fe $03
    rrca                                          ; $665a: $0f
    ld [c], a                                     ; $665b: $e2
    ret nz                                        ; $665c: $c0

    add hl, sp                                    ; $665d: $39
    ld h, e                                       ; $665e: $63
    add d                                         ; $665f: $82
    call nz, $f702                                ; $6660: $c4 $02 $f7
    nop                                           ; $6663: $00
    ld c, e                                       ; $6664: $4b
    db $fc                                        ; $6665: $fc
    ld h, l                                       ; $6666: $65
    ld hl, sp+$61                                 ; $6667: $f8 $61
    sbc a                                         ; $6669: $9f
    sbc l                                         ; $666a: $9d
    nop                                           ; $666b: $00
    rst $38                                       ; $666c: $ff
    ldh [rLYC], a                                 ; $666d: $e0 $45
    ld b, d                                       ; $666f: $42
    ld [bc], a                                    ; $6670: $02
    ld sp, hl                                     ; $6671: $f9
    nop                                           ; $6672: $00
    ld c, [hl]                                    ; $6673: $4e
    db $f4                                        ; $6674: $f4
    inc h                                         ; $6675: $24
    rst $08                                       ; $6676: $cf
    add d                                         ; $6677: $82
    or c                                          ; $6678: $b1
    ld h, c                                       ; $6679: $61
    or b                                          ; $667a: $b0
    add c                                         ; $667b: $81
    nop                                           ; $667c: $00
    ld [bc], a                                    ; $667d: $02
    ld hl, sp+$00                                 ; $667e: $f8 $00
    ld c, l                                       ; $6680: $4d
    ld a, [c]                                     ; $6681: $f2
    add l                                         ; $6682: $85
    dec bc                                        ; $6683: $0b
    jp nz, $a0c6                                  ; $6684: $c2 $c6 $a0

    ret                                           ; $6687: $c9


    ld h, c                                       ; $6688: $61
    ld [bc], a                                    ; $6689: $02
    ld sp, hl                                     ; $668a: $f9
    nop                                           ; $668b: $00
    call $f20c                                    ; $668c: $cd $0c $f2
    add l                                         ; $668f: $85
    add hl, sp                                    ; $6690: $39
    add b                                         ; $6691: $80
    sub $d7                                       ; $6692: $d6 $d7
    db $f4                                        ; $6694: $f4
    ld h, b                                       ; $6695: $60
    ldh a, [rSB]                                  ; $6696: $f0 $01
    ld [bc], a                                    ; $6698: $02
    ld sp, hl                                     ; $6699: $f9
    nop                                           ; $669a: $00
    ld c, l                                       ; $669b: $4d
    add $fa                                       ; $669c: $c6 $fa
    ret z                                         ; $669e: $c8

    ret c                                         ; $669f: $d8

    reti                                          ; $66a0: $d9


    db $f4                                        ; $66a1: $f4
    ld h, b                                       ; $66a2: $60
    ldh a, [rSB]                                  ; $66a3: $f0 $01
    ld [bc], a                                    ; $66a5: $02
    ld sp, hl                                     ; $66a6: $f9
    rst $20                                       ; $66a7: $e7
    add sp, $00                                   ; $66a8: $e8 $00
    nop                                           ; $66aa: $00
    nop                                           ; $66ab: $00
    pop bc                                        ; $66ac: $c1
    nop                                           ; $66ad: $00
    rst $38                                       ; $66ae: $ff
    rst $38                                       ; $66af: $ff
    rst $38                                       ; $66b0: $ff
    rst $38                                       ; $66b1: $ff
    rst $38                                       ; $66b2: $ff
    rst $38                                       ; $66b3: $ff
    rst $38                                       ; $66b4: $ff
    rst $38                                       ; $66b5: $ff
    rst $38                                       ; $66b6: $ff
    rst $38                                       ; $66b7: $ff
    nop                                           ; $66b8: $00
    nop                                           ; $66b9: $00
    ld bc, $fe80                                  ; $66ba: $01 $80 $fe
    ldh [rIE], a                                  ; $66bd: $e0 $ff
    rst $38                                       ; $66bf: $ff

Jump_065_66c0:
    rst $38                                       ; $66c0: $ff
    rst $38                                       ; $66c1: $ff
    rst $38                                       ; $66c2: $ff
    add sp, $00                                   ; $66c3: $e8 $00
    nop                                           ; $66c5: $00
    nop                                           ; $66c6: $00
    ld [bc], a                                    ; $66c7: $02
    nop                                           ; $66c8: $00
    inc e                                         ; $66c9: $1c
    rla                                           ; $66ca: $17
    ld [bc], a                                    ; $66cb: $02
    ld bc, $171e                                  ; $66cc: $01 $1e $17
    ld [bc], a                                    ; $66cf: $02
    ld [bc], a                                    ; $66d0: $02
    dec de                                        ; $66d1: $1b
    add hl, de                                    ; $66d2: $19
    ld [bc], a                                    ; $66d3: $02
    inc bc                                        ; $66d4: $03
    add hl, de                                    ; $66d5: $19
    ld a, [de]                                    ; $66d6: $1a
    ld [bc], a                                    ; $66d7: $02
    inc b                                         ; $66d8: $04
    jr jr_065_66f7                                ; $66d9: $18 $1c

    ld [bc], a                                    ; $66db: $02
    dec b                                         ; $66dc: $05
    ld d, $1d                                     ; $66dd: $16 $1d
    ld [bc], a                                    ; $66df: $02
    ld b, $17                                     ; $66e0: $06 $17
    ld e, $02                                     ; $66e2: $1e $02
    rlca                                          ; $66e4: $07
    ld hl, $021e                                  ; $66e5: $21 $1e $02
    ld [$1f15], sp                                ; $66e8: $08 $15 $1f
    ld [bc], a                                    ; $66eb: $02
    add hl, bc                                    ; $66ec: $09
    inc d                                         ; $66ed: $14
    inc h                                         ; $66ee: $24
    ld [bc], a                                    ; $66ef: $02
    ld a, [bc]                                    ; $66f0: $0a
    rla                                           ; $66f1: $17
    dec h                                         ; $66f2: $25
    ld [bc], a                                    ; $66f3: $02
    dec bc                                        ; $66f4: $0b
    ld d, $26                                     ; $66f5: $16 $26

jr_065_66f7:
    ld [bc], a                                    ; $66f7: $02
    inc c                                         ; $66f8: $0c
    ld e, $26                                     ; $66f9: $1e $26
    ld [bc], a                                    ; $66fb: $02
    dec c                                         ; $66fc: $0d
    rra                                           ; $66fd: $1f
    ld h, $02                                     ; $66fe: $26 $02
    ld c, $1d                                     ; $6700: $0e $1d
    daa                                           ; $6702: $27
    ld [bc], a                                    ; $6703: $02
    rrca                                          ; $6704: $0f
    inc de                                        ; $6705: $13
    add hl, hl                                    ; $6706: $29
    ld [bc], a                                    ; $6707: $02
    db $10                                        ; $6708: $10
    inc e                                         ; $6709: $1c
    add hl, hl                                    ; $670a: $29
    ld [bc], a                                    ; $670b: $02
    ld de, $291e                                  ; $670c: $11 $1e $29
    ld [bc], a                                    ; $670f: $02
    ld [de], a                                    ; $6710: $12
    ld [de], a                                    ; $6711: $12
    dec hl                                        ; $6712: $2b
    ld [bc], a                                    ; $6713: $02
    inc de                                        ; $6714: $13
    inc e                                         ; $6715: $1c
    ld l, $02                                     ; $6716: $2e $02
    inc d                                         ; $6718: $14
    jr jr_065_674b                                ; $6719: $18 $30

    ld [bc], a                                    ; $671b: $02
    dec d                                         ; $671c: $15
    jr nz, jr_065_6750                            ; $671d: $20 $31

    ld [bc], a                                    ; $671f: $02
    ld d, $15                                     ; $6720: $16 $15
    ld [hl], $02                                  ; $6722: $36 $02
    rla                                           ; $6724: $17
    ld a, [de]                                    ; $6725: $1a
    jr c, @+$01                                   ; $6726: $38 $ff

    rst $38                                       ; $6728: $ff
    rst $38                                       ; $6729: $ff
    ld [hl-], a                                   ; $672a: $32
    ld h, a                                       ; $672b: $67
    db $d3                                        ; $672c: $d3
    ld l, d                                       ; $672d: $6a
    add $6f                                       ; $672e: $c6 $6f
    pop hl                                        ; $6730: $e1
    ld l, a                                       ; $6731: $6f
    ld c, a                                       ; $6732: $4f
    dec c                                         ; $6733: $0d
    ld c, $0e                                     ; $6734: $0e $0e
    ld c, $fc                                     ; $6736: $0e $fc
    ld a, [c]                                     ; $6738: $f2
    rst $20                                       ; $6739: $e7
    ldh [rKEY1], a                                ; $673a: $e0 $4d
    db $fc                                        ; $673c: $fc
    ld hl, sp+$00                                 ; $673d: $f8 $00
    ret z                                         ; $673f: $c8

    push hl                                       ; $6740: $e5
    rst $38                                       ; $6741: $ff
    rst $38                                       ; $6742: $ff
    db $e4                                        ; $6743: $e4
    db $e3                                        ; $6744: $e3
    or b                                          ; $6745: $b0
    pop hl                                        ; $6746: $e1
    db $fc                                        ; $6747: $fc
    push hl                                       ; $6748: $e5
    rst $38                                       ; $6749: $ff
    rst $38                                       ; $674a: $ff

jr_065_674b:
    ld [c], a                                     ; $674b: $e2
    pop hl                                        ; $674c: $e1
    add d                                         ; $674d: $82
    db $eb                                        ; $674e: $eb
    scf                                           ; $674f: $37

jr_065_6750:
    dec c                                         ; $6750: $0d
    dec c                                         ; $6751: $0d
    ld c, l                                       ; $6752: $4d
    rst $38                                       ; $6753: $ff
    ldh [$2d], a                                  ; $6754: $e0 $2d
    dec l                                         ; $6756: $2d
    ld hl, sp-$20                                 ; $6757: $f8 $e0
    ld h, [hl]                                    ; $6759: $66
    db $e4                                        ; $675a: $e4
    inc l                                         ; $675b: $2c
    rst $38                                       ; $675c: $ff
    rst $38                                       ; $675d: $ff
    add [hl]                                      ; $675e: $86
    jp hl                                         ; $675f: $e9


    ld l, l                                       ; $6760: $6d
    ld l, e                                       ; $6761: $6b
    rst $38                                       ; $6762: $ff
    ld [c], a                                     ; $6763: $e2
    ld c, l                                       ; $6764: $4d
    cp a                                          ; $6765: $bf
    ldh [$c4], a                                  ; $6766: $e0 $c4
    db $ec                                        ; $6768: $ec
    ld [$f302], sp                                ; $6769: $08 $02 $f3
    add [hl]                                      ; $676c: $86
    ld [$e4c1], a                                 ; $676d: $ea $c1 $e4
    dec c                                         ; $6770: $0d
    cp $e0                                        ; $6771: $fe $e0
    cp a                                          ; $6773: $bf
    pop hl                                        ; $6774: $e1
    nop                                           ; $6775: $00
    ld [c], a                                     ; $6776: $e2
    scf                                           ; $6777: $37
    ld [c], a                                     ; $6778: $e2
    db $10                                        ; $6779: $10
    ld a, c                                       ; $677a: $79
    push af                                       ; $677b: $f5
    ld a, [de]                                    ; $677c: $1a
    rst $20                                       ; $677d: $e7
    ld b, a                                       ; $677e: $47
    db $e3                                        ; $677f: $e3
    add d                                         ; $6780: $82
    ldh [$0d], a                                  ; $6781: $e0 $0d
    ret nz                                        ; $6783: $c0

    db $e3                                        ; $6784: $e3
    ld a, [hl]                                    ; $6785: $7e
    pop hl                                        ; $6786: $e1
    ld c, h                                       ; $6787: $4c
    rst $38                                       ; $6788: $ff
    db $fc                                        ; $6789: $fc
    ld [$47e8], sp                                ; $678a: $08 $e8 $47
    db $e4                                        ; $678d: $e4
    ld l, e                                       ; $678e: $6b
    dec c                                         ; $678f: $0d
    dec hl                                        ; $6790: $2b
    dec bc                                        ; $6791: $0b
    dec bc                                        ; $6792: $0b
    dec hl                                        ; $6793: $2b
    adc a                                         ; $6794: $8f
    ld a, [bc]                                    ; $6795: $0a
    ld a, [hl+]                                   ; $6796: $2a
    dec bc                                        ; $6797: $0b
    ld l, e                                       ; $6798: $6b
    ret nz                                        ; $6799: $c0

    pop hl                                        ; $679a: $e1
    nop                                           ; $679b: $00
    rst $38                                       ; $679c: $ff
    adc d                                         ; $679d: $8a
    push bc                                       ; $679e: $c5
    ld c, l                                       ; $679f: $4d
    db $db                                        ; $67a0: $db
    ld l, e                                       ; $67a1: $6b
    dec c                                         ; $67a2: $0d
    add [hl]                                      ; $67a3: $86
    ldh [rOCPD], a                                ; $67a4: $e0 $6b
    ld l, e                                       ; $67a6: $6b
    jp nz, Jump_000_0be0                          ; $67a7: $c2 $e0 $0b

    dec hl                                        ; $67aa: $2b
    ccf                                           ; $67ab: $3f
    dec bc                                        ; $67ac: $0b
    ld a, [bc]                                    ; $67ad: $0a
    ld a, [hl+]                                   ; $67ae: $2a
    ld a, [bc]                                    ; $67af: $0a
    ld l, e                                       ; $67b0: $6b
    ld l, l                                       ; $67b1: $6d
    call nz, Call_000_04ea                        ; $67b2: $c4 $ea $04
    db $db                                        ; $67b5: $db
    add sp, -$38                                  ; $67b6: $e8 $c8
    pop bc                                        ; $67b8: $c1
    ret nz                                        ; $67b9: $c0

    ldh [$c3], a                                  ; $67ba: $e0 $c3
    pop hl                                        ; $67bc: $e1
    ld c, e                                       ; $67bd: $4b
    cp a                                          ; $67be: $bf
    ldh [$0b], a                                  ; $67bf: $e0 $0b
    dec hl                                        ; $67c1: $2b
    ld c, d                                       ; $67c2: $4a
    rlca                                          ; $67c3: $07
    ld l, d                                       ; $67c4: $6a
    dec bc                                        ; $67c5: $0b
    ld l, l                                       ; $67c6: $6d
    nop                                           ; $67c7: $00
    db $e3                                        ; $67c8: $e3
    nop                                           ; $67c9: $00
    rst $18                                       ; $67ca: $df
    call c, $89c1                                 ; $67cb: $dc $c1 $89
    jp $e183                                      ; $67ce: $c3 $83 $e1


    ld a, [hl]                                    ; $67d1: $7e
    cp a                                          ; $67d2: $bf
    ld [c], a                                     ; $67d3: $e2
    dec hl                                        ; $67d4: $2b
    ld a, [bc]                                    ; $67d5: $0a
    ld a, [bc]                                    ; $67d6: $0a
    ld c, e                                       ; $67d7: $4b
    ld c, l                                       ; $67d8: $4d
    dec l                                         ; $67d9: $2d
    ld c, b                                       ; $67da: $48
    rst $38                                       ; $67db: $ff
    ld hl, sp-$7e                                 ; $67dc: $f8 $82
    rst $20                                       ; $67de: $e7
    ld c, b                                       ; $67df: $48
    ld [c], a                                     ; $67e0: $e2
    ld b, e                                       ; $67e1: $43
    pop hl                                        ; $67e2: $e1
    ld l, e                                       ; $67e3: $6b
    ld l, e                                       ; $67e4: $6b
    ld c, e                                       ; $67e5: $4b
    ld c, e                                       ; $67e6: $4b
    dec bc                                        ; $67e7: $0b
    ccf                                           ; $67e8: $3f
    ld l, e                                       ; $67e9: $6b
    ld a, [bc]                                    ; $67ea: $0a
    ld a, [bc]                                    ; $67eb: $0a
    ld l, e                                       ; $67ec: $6b
    ld l, e                                       ; $67ed: $6b
    ld l, l                                       ; $67ee: $6d
    nop                                           ; $67ef: $00
    rst $38                                       ; $67f0: $ff
    adc [hl]                                      ; $67f1: $8e
    and e                                         ; $67f2: $a3
    jr nz, jr_065_6801                            ; $67f3: $20 $0c

    ret nz                                        ; $67f5: $c0

    add hl, bc                                    ; $67f6: $09
    db $e3                                        ; $67f7: $e3
    jp nz, Jump_000_04e2                          ; $67f8: $c2 $e2 $04

    ldh [rIE], a                                  ; $67fb: $e0 $ff
    pop hl                                        ; $67fd: $e1
    dec c                                         ; $67fe: $0d
    ret nz                                        ; $67ff: $c0

    pop hl                                        ; $6800: $e1

jr_065_6801:
    cp $dd                                        ; $6801: $fe $dd
    ld [hl], h                                    ; $6803: $74
    add [hl]                                      ; $6804: $86
    call nz, $c18c                                ; $6805: $c4 $8c $c1
    dec c                                         ; $6808: $0d
    ld b, h                                       ; $6809: $44
    ld [c], a                                     ; $680a: $e2
    ld c, e                                       ; $680b: $4b
    dec c                                         ; $680c: $0d
    dec c                                         ; $680d: $0d
    jp nz, Jump_065_7fe0                          ; $680e: $c2 $e0 $7f

    ld a, [hl+]                                   ; $6811: $2a
    ld a, [bc]                                    ; $6812: $0a
    ld a, [hl+]                                   ; $6813: $2a
    ld c, e                                       ; $6814: $4b
    dec c                                         ; $6815: $0d
    ld l, e                                       ; $6816: $6b
    dec l                                         ; $6817: $2d
    nop                                           ; $6818: $00
    rst $18                                       ; $6819: $df
    ld [hl], b                                    ; $681a: $70
    ld b, b                                       ; $681b: $40
    and d                                         ; $681c: $a2
    ld c, h                                       ; $681d: $4c
    jp $e3c0                                      ; $681e: $c3 $c0 $e3


    ld b, b                                       ; $6821: $40
    and b                                         ; $6822: $a0
    dec c                                         ; $6823: $0d
    ld c, e                                       ; $6824: $4b
    ld a, [bc]                                    ; $6825: $0a
    jp Jump_000_00e0                              ; $6826: $c3 $e0 $00


    cp d                                          ; $6829: $ba
    and b                                         ; $682a: $a0
    add b                                         ; $682b: $80
    db $ec                                        ; $682c: $ec
    inc b                                         ; $682d: $04
    or [hl]                                       ; $682e: $b6
    sub b                                         ; $682f: $90
    and b                                         ; $6830: $a0
    adc h                                         ; $6831: $8c
    pop bc                                        ; $6832: $c1
    ld a, l                                       ; $6833: $7d
    ld [c], a                                     ; $6834: $e2
    ret nz                                        ; $6835: $c0

    pop hl                                        ; $6836: $e1
    cp [hl]                                       ; $6837: $be
    and d                                         ; $6838: $a2
    ld [$e0c1], sp                                ; $6839: $08 $c1 $e0
    nop                                           ; $683c: $00
    rst $18                                       ; $683d: $df
    add b                                         ; $683e: $80
    db $e4                                        ; $683f: $e4
    dec c                                         ; $6840: $0d
    rst $00                                       ; $6841: $c7
    jp nz, $e23d                                  ; $6842: $c2 $3d $e2

    ld a, [$83a1]                                 ; $6845: $fa $a1 $83
    ld [c], a                                     ; $6848: $e2
    jr nz, @-$7c                                  ; $6849: $20 $82

    db $ed                                        ; $684b: $ed
    inc b                                         ; $684c: $04
    sub a                                         ; $684d: $97
    ld b, b                                       ; $684e: $40
    ldh [rOBP0], a                                ; $684f: $e0 $48
    jp nz, $c0ff                                  ; $6851: $c2 $ff $c0

    dec hl                                        ; $6854: $2b
    add d                                         ; $6855: $82
    ret nz                                        ; $6856: $c0

    rst $38                                       ; $6857: $ff
    add d                                         ; $6858: $82
    inc de                                        ; $6859: $13
    dec c                                         ; $685a: $0d
    ld l, l                                       ; $685b: $6d
    nop                                           ; $685c: $00
    sbc a                                         ; $685d: $9f
    ld c, $86                                     ; $685e: $0e $86
    ld l, e                                       ; $6860: $6b
    ld b, c                                       ; $6861: $41
    db $e3                                        ; $6862: $e3
    add d                                         ; $6863: $82
    pop hl                                        ; $6864: $e1
    nop                                           ; $6865: $00
    ld [c], a                                     ; $6866: $e2
    db $10                                        ; $6867: $10
    ld a, e                                       ; $6868: $7b
    add b                                         ; $6869: $80
    ld [bc], a                                    ; $686a: $02
    sbc a                                         ; $686b: $9f
    nop                                           ; $686c: $00
    jp hl                                         ; $686d: $e9


    ld bc, $4be3                                  ; $686e: $01 $e3 $4b
    ld b, $c0                                     ; $6871: $06 $c0
    dec bc                                        ; $6873: $0b
    and b                                         ; $6874: $a0
    ld a, d                                       ; $6875: $7a
    add c                                         ; $6876: $81
    nop                                           ; $6877: $00
    inc b                                         ; $6878: $04
    add [hl]                                      ; $6879: $86
    cp b                                          ; $687a: $b8
    rst $38                                       ; $687b: $ff
    ret nz                                        ; $687c: $c0

    and $c9                                       ; $687d: $e6 $c9
    and b                                         ; $687f: $a0
    set 0, d                                      ; $6880: $cb $c2
    jp z, $c0ea                                   ; $6882: $ca $ea $c0

    jp hl                                         ; $6885: $e9


    inc b                                         ; $6886: $04
    sub l                                         ; $6887: $95
    nop                                           ; $6888: $00
    ld b, b                                       ; $6889: $40
    ret nz                                        ; $688a: $c0

    add b                                         ; $688b: $80
    ret nz                                        ; $688c: $c0

    jp nz, $8ce2                                  ; $688d: $c2 $e2 $8c

    ret nz                                        ; $6890: $c0

    inc b                                         ; $6891: $04
    ld l, d                                       ; $6892: $6a
    inc b                                         ; $6893: $04
    add [hl]                                      ; $6894: $86
    ld a, c                                       ; $6895: $79
    pop af                                        ; $6896: $f1
    ld h, h                                       ; $6897: $64
    push hl                                       ; $6898: $e5
    add e                                         ; $6899: $83
    ld c, l                                       ; $689a: $4d
    dec l                                         ; $689b: $2d
    ld c, l                                       ; $689c: $4d
    and b                                         ; $689d: $a0
    ld b, a                                       ; $689e: $47
    and d                                         ; $689f: $a2
    add hl, bc                                    ; $68a0: $09
    ldh [$50], a                                  ; $68a1: $e0 $50
    rst $38                                       ; $68a3: $ff
    ld [$4d6f], sp                                ; $68a4: $08 $6f $4d
    add hl, bc                                    ; $68a7: $09
    dec c                                         ; $68a8: $0d
    cp [hl]                                       ; $68a9: $be
    ldh [$84], a                                  ; $68aa: $e0 $84
    pop bc                                        ; $68ac: $c1
    dec l                                         ; $68ad: $2d
    add d                                         ; $68ae: $82
    db $ec                                        ; $68af: $ec
    cp h                                          ; $68b0: $bc
    rst $38                                       ; $68b1: $ff
    add [hl]                                      ; $68b2: $86
    ld h, l                                       ; $68b3: $65
    cp a                                          ; $68b4: $bf
    and b                                         ; $68b5: $a0
    nop                                           ; $68b6: $00
    ld b, h                                       ; $68b7: $44
    ret nz                                        ; $68b8: $c0

    rst $00                                       ; $68b9: $c7
    ld b, c                                       ; $68ba: $41
    ld h, h                                       ; $68bb: $64
    ld [hl], c                                    ; $68bc: $71
    ld [bc], a                                    ; $68bd: $02
    di                                            ; $68be: $f3
    ld [$8669], sp                                ; $68bf: $08 $69 $86
    add b                                         ; $68c2: $80
    add e                                         ; $68c3: $83
    ret nz                                        ; $68c4: $c0

    ret z                                         ; $68c5: $c8

    ld b, e                                       ; $68c6: $43
    ld a, b                                       ; $68c7: $78
    ld [$00cb], sp                                ; $68c8: $08 $cb $00
    db $dd                                        ; $68cb: $dd
    rrca                                          ; $68cc: $0f
    and c                                         ; $68cd: $a1
    ld c, l                                       ; $68ce: $4d
    ld l, l                                       ; $68cf: $6d
    dec hl                                        ; $68d0: $2b
    ld c, e                                       ; $68d1: $4b
    pop bc                                        ; $68d2: $c1
    pop hl                                        ; $68d3: $e1
    ld h, c                                       ; $68d4: $61
    inc c                                         ; $68d5: $0c
    rst $38                                       ; $68d6: $ff
    ldh [$8a], a                                  ; $68d7: $e0 $8a
    ld l, e                                       ; $68d9: $6b
    nop                                           ; $68da: $00
    rst $38                                       ; $68db: $ff
    call nz, Call_065_4b64                        ; $68dc: $c4 $64 $4b
    ld c, e                                       ; $68df: $4b
    jp Jump_000_07e1                              ; $68e0: $c3 $e1 $07


    ld l, h                                       ; $68e3: $6c
    ld c, h                                       ; $68e4: $4c
    ld c, h                                       ; $68e5: $4c
    ld a, [hl]                                    ; $68e6: $7e
    rst $00                                       ; $68e7: $c7
    rst $38                                       ; $68e8: $ff
    rst $38                                       ; $68e9: $ff
    adc d                                         ; $68ea: $8a
    ld b, e                                       ; $68eb: $43
    ld c, $40                                     ; $68ec: $0e $40
    add a                                         ; $68ee: $87
    pop hl                                        ; $68ef: $e1
    ld b, $c3                                     ; $68f0: $06 $c3
    pop hl                                        ; $68f2: $e1
    ld l, h                                       ; $68f3: $6c
    ld l, e                                       ; $68f4: $6b
    cp a                                          ; $68f5: $bf
    and c                                         ; $68f6: $a1
    call nz, $08f4                                ; $68f7: $c4 $f4 $08
    ld d, c                                       ; $68fa: $51
    ret nc                                        ; $68fb: $d0

    inc hl                                        ; $68fc: $23
    add l                                         ; $68fd: $85
    db $e3                                        ; $68fe: $e3
    rrca                                          ; $68ff: $0f
    ld l, h                                       ; $6900: $6c
    dec hl                                        ; $6901: $2b
    ld c, e                                       ; $6902: $4b
    dec bc                                        ; $6903: $0b
    ld [$fe51], sp                                ; $6904: $08 $51 $fe
    sub c                                         ; $6907: $91
    ld h, h                                       ; $6908: $64
    push bc                                       ; $6909: $c5
    adc h                                         ; $690a: $8c
    ld b, c                                       ; $690b: $41
    ld [bc], a                                    ; $690c: $02
    add e                                         ; $690d: $83
    db $e3                                        ; $690e: $e3
    ld l, h                                       ; $690f: $6c
    cp h                                          ; $6910: $bc
    add e                                         ; $6911: $83
    rst $00                                       ; $6912: $c7
    ld [hl+], a                                   ; $6913: $22
    ld c, b                                       ; $6914: $48
    rst $38                                       ; $6915: $ff
    adc d                                         ; $6916: $8a
    ld b, $c3                                     ; $6917: $06 $c3
    ld h, b                                       ; $6919: $60
    ld b, e                                       ; $691a: $43
    ld [c], a                                     ; $691b: $e2
    ld b, c                                       ; $691c: $41
    inc l                                         ; $691d: $2c
    ld a, $83                                     ; $691e: $3e $83
    ld a, a                                       ; $6920: $7f
    ldh [rOBP0], a                                ; $6921: $e0 $48
    ld b, d                                       ; $6923: $42
    nop                                           ; $6924: $00
    db $fd                                        ; $6925: $fd
    add b                                         ; $6926: $80
    and $6d                                       ; $6927: $e6 $6d
    inc b                                         ; $6929: $04
    db $e3                                        ; $692a: $e3
    ld [bc], a                                    ; $692b: $02
    ret nz                                        ; $692c: $c0

    push hl                                       ; $692d: $e5
    dec hl                                        ; $692e: $2b
    ld a, $e0                                     ; $692f: $3e $e0
    ld a, [hl]                                    ; $6931: $7e
    db $d3                                        ; $6932: $d3
    ld [bc], a                                    ; $6933: $02
    dec l                                         ; $6934: $2d
    inc b                                         ; $6935: $04
    and [hl]                                      ; $6936: $a6
    ret nz                                        ; $6937: $c0

    db $e4                                        ; $6938: $e4
    adc d                                         ; $6939: $8a
    ld b, c                                       ; $693a: $41
    jp nz, $e37f                                  ; $693b: $c2 $7f $e3

    ld c, l                                       ; $693e: $4d
    ld [$0063], sp                                ; $693f: $08 $63 $00
    rst $18                                       ; $6942: $df
    sub d                                         ; $6943: $92
    ld [bc], a                                    ; $6944: $02
    add c                                         ; $6945: $81
    db $e3                                        ; $6946: $e3
    inc c                                         ; $6947: $0c
    inc l                                         ; $6948: $2c
    ld bc, $032c                                  ; $6949: $01 $2c $03
    ld b, e                                       ; $694c: $43
    ld a, $e1                                     ; $694d: $3e $e1
    ld [$867f], sp                                ; $694f: $08 $7f $86
    ld b, l                                       ; $6952: $45
    add c                                         ; $6953: $81
    rst $20                                       ; $6954: $e7
    ret nz                                        ; $6955: $c0

    db $ec                                        ; $6956: $ec
    nop                                           ; $6957: $00
    rst $18                                       ; $6958: $df
    ret nz                                        ; $6959: $c0

    adc b                                         ; $695a: $88
    ld [hl+], a                                   ; $695b: $22
    ld b, c                                       ; $695c: $41
    and $80                                       ; $695d: $e6 $80
    push bc                                       ; $695f: $c5
    ld a, $62                                     ; $6960: $3e $62
    adc b                                         ; $6962: $88
    inc [hl]                                      ; $6963: $34
    nop                                           ; $6964: $00
    pop de                                        ; $6965: $d1
    ld l, e                                       ; $6966: $6b
    ld l, e                                       ; $6967: $6b
    inc bc                                        ; $6968: $03
    ld c, h                                       ; $6969: $4c
    ld c, h                                       ; $696a: $4c
    add b                                         ; $696b: $80
    jp z, Jump_065_61bb                           ; $696c: $ca $bb $61

    inc b                                         ; $696f: $04
    ld h, d                                       ; $6970: $62
    nop                                           ; $6971: $00
    rst $18                                       ; $6972: $df
    add b                                         ; $6973: $80
    pop hl                                        ; $6974: $e1
    dec b                                         ; $6975: $05
    add b                                         ; $6976: $80
    ret nc                                        ; $6977: $d0

    add c                                         ; $6978: $81
    ld [$603b], a                                 ; $6979: $ea $3b $60
    nop                                           ; $697c: $00
    rst $38                                       ; $697d: $ff
    ld [$4d28], sp                                ; $697e: $08 $28 $4d
    call z, Call_000_2c80                         ; $6981: $cc $80 $2c
    inc l                                         ; $6984: $2c
    nop                                           ; $6985: $00
    add h                                         ; $6986: $84
    and c                                         ; $6987: $a1
    cp $23                                        ; $6988: $fe $23
    ld a, e                                       ; $698a: $7b
    add b                                         ; $698b: $80
    nop                                           ; $698c: $00
    rst $38                                       ; $698d: $ff
    adc b                                         ; $698e: $88
    ld [$e1c0], sp                                ; $698f: $08 $c0 $e1
    ld b, [hl]                                    ; $6992: $46
    and b                                         ; $6993: $a0
    add h                                         ; $6994: $84
    push bc                                       ; $6995: $c5
    jr z, jr_065_69d4                             ; $6996: $28 $3c

    add e                                         ; $6998: $83
    add b                                         ; $6999: $80
    ld a, [c]                                     ; $699a: $f2
    inc b                                         ; $699b: $04
    sub e                                         ; $699c: $93
    ld c, l                                       ; $699d: $4d
    ld b, [hl]                                    ; $699e: $46
    and c                                         ; $699f: $a1
    ld l, e                                       ; $69a0: $6b
    rlca                                          ; $69a1: $07
    and b                                         ; $69a2: $a0
    jp Jump_000_18c6                              ; $69a3: $c3 $c6 $18


    ld c, b                                       ; $69a6: $48
    ld hl, $df00                                  ; $69a7: $21 $00 $df
    add b                                         ; $69aa: $80
    and $0c                                       ; $69ab: $e6 $0c
    ld c, h                                       ; $69ad: $4c
    rlca                                          ; $69ae: $07
    add $7b                                       ; $69af: $c6 $7b
    ld b, d                                       ; $69b1: $42
    add c                                         ; $69b2: $81
    pop hl                                        ; $69b3: $e1
    nop                                           ; $69b4: $00
    ld b, h                                       ; $69b5: $44
    rst $38                                       ; $69b6: $ff
    add [hl]                                      ; $69b7: $86
    ld h, [hl]                                    ; $69b8: $66
    ld b, c                                       ; $69b9: $41
    and b                                         ; $69ba: $a0
    ret nz                                        ; $69bb: $c0

    ld [$c002], a                                 ; $69bc: $ea $02 $c0
    ld [$823f], sp                                ; $69bf: $08 $3f $82
    xor b                                         ; $69c2: $a8
    adc h                                         ; $69c3: $8c
    ld h, b                                       ; $69c4: $60
    ld bc, $032c                                  ; $69c5: $01 $2c $03
    inc h                                         ; $69c8: $24
    ld bc, $02a5                                  ; $69c9: $01 $a5 $02
    call nc, $ed32                                ; $69cc: $d4 $32 $ed
    add d                                         ; $69cf: $82
    and e                                         ; $69d0: $a3
    add c                                         ; $69d1: $81
    pop bc                                        ; $69d2: $c1
    ld b, c                                       ; $69d3: $41

jr_065_69d4:
    add sp, $00                                   ; $69d4: $e8 $00
    ld [bc], a                                    ; $69d6: $02
    jp nz, $5104                                  ; $69d7: $c2 $04 $51

    nop                                           ; $69da: $00
    ld d, d                                       ; $69db: $52
    jp Jump_000_06c0                              ; $69dc: $c3 $c0 $06


    ret z                                         ; $69df: $c8

    dec a                                         ; $69e0: $3d
    inc h                                         ; $69e1: $24
    ld [bc], a                                    ; $69e2: $02
    rst $18                                       ; $69e3: $df
    nop                                           ; $69e4: $00
    add $03                                       ; $69e5: $c6 $03
    ld c, l                                       ; $69e7: $4d
    ld c, h                                       ; $69e8: $4c
    ld c, l                                       ; $69e9: $4d
    ld h, e                                       ; $69ea: $63
    pop bc                                        ; $69eb: $c1
    inc bc                                        ; $69ec: $03
    add e                                         ; $69ed: $83
    and h                                         ; $69ee: $a4
    add d                                         ; $69ef: $82
    and e                                         ; $69f0: $a3
    nop                                           ; $69f1: $00
    rst $38                                       ; $69f2: $ff
    ld [bc], a                                    ; $69f3: $02
    and c                                         ; $69f4: $a1
    inc bc                                        ; $69f5: $03
    ld c, h                                       ; $69f6: $4c
    ld c, h                                       ; $69f7: $4c
    ld d, h                                       ; $69f8: $54
    ld bc, $e6c1                                  ; $69f9: $01 $c1 $e6
    add e                                         ; $69fc: $83
    and d                                         ; $69fd: $a2
    add b                                         ; $69fe: $80
    ld [hl], l                                    ; $69ff: $75
    inc b                                         ; $6a00: $04
    ld c, a                                       ; $6a01: $4f
    ld b, d                                       ; $6a02: $42
    and d                                         ; $6a03: $a2
    nop                                           ; $6a04: $00
    sub b                                         ; $6a05: $90
    ret nz                                        ; $6a06: $c0

jr_065_6a07:
    add c                                         ; $6a07: $81
    push hl                                       ; $6a08: $e5
    add c                                         ; $6a09: $81
    ld bc, $6031                                  ; $6a0a: $01 $31 $60
    ld a, [hl-]                                   ; $6a0d: $3a
    jr nz, jr_065_6a10                            ; $6a0e: $20 $00

jr_065_6a10:
    rst $18                                       ; $6a10: $df
    add h                                         ; $6a11: $84
    ld b, h                                       ; $6a12: $44
    call Call_000_0001                            ; $6a13: $cd $01 $00
    ld b, c                                       ; $6a16: $41
    push hl                                       ; $6a17: $e5
    ret nz                                        ; $6a18: $c0

    inc hl                                        ; $6a19: $23
    ld b, b                                       ; $6a1a: $40
    ld h, h                                       ; $6a1b: $64
    nop                                           ; $6a1c: $00
    rst $38                                       ; $6a1d: $ff
    add [hl]                                      ; $6a1e: $86
    dec b                                         ; $6a1f: $05
    ret nz                                        ; $6a20: $c0

    push hl                                       ; $6a21: $e5
    add c                                         ; $6a22: $81
    inc hl                                        ; $6a23: $23
    ccf                                           ; $6a24: $3f
    pop hl                                        ; $6a25: $e1
    inc b                                         ; $6a26: $04
    ld a, [hl]                                    ; $6a27: $7e
    dec h                                         ; $6a28: $25
    nop                                           ; $6a29: $00
    rst $18                                       ; $6a2a: $df
    ld l, l                                       ; $6a2b: $6d
    ld c, l                                       ; $6a2c: $4d
    and c                                         ; $6a2d: $a1
    ld a, [bc]                                    ; $6a2e: $0a
    and b                                         ; $6a2f: $a0
    ld b, $a5                                     ; $6a30: $06 $a5
    ld [hl], d                                    ; $6a32: $72
    ld b, c                                       ; $6a33: $41
    ret nz                                        ; $6a34: $c0

    and e                                         ; $6a35: $a3
    nop                                           ; $6a36: $00
    nop                                           ; $6a37: $00
    rst $18                                       ; $6a38: $df
    add d                                         ; $6a39: $82
    ld h, c                                       ; $6a3a: $61
    pop bc                                        ; $6a3b: $c1
    ld [c], a                                     ; $6a3c: $e2
    ld b, $21                                     ; $6a3d: $06 $21
    ld b, d                                       ; $6a3f: $42
    jr nz, jr_065_6a07                            ; $6a40: $20 $c5

    ld [c], a                                     ; $6a42: $e2
    cpl                                           ; $6a43: $2f
    pop hl                                        ; $6a44: $e1
    dec sp                                        ; $6a45: $3b
    nop                                           ; $6a46: $00
    nop                                           ; $6a47: $00
    nop                                           ; $6a48: $00
    rst $18                                       ; $6a49: $df
    add h                                         ; $6a4a: $84
    ld b, e                                       ; $6a4b: $43
    add d                                         ; $6a4c: $82
    ld [c], a                                     ; $6a4d: $e2
    ei                                            ; $6a4e: $fb
    db $e3                                        ; $6a4f: $e3
    add h                                         ; $6a50: $84
    db $e3                                        ; $6a51: $e3
    pop bc                                        ; $6a52: $c1
    db $e3                                        ; $6a53: $e3
    ld b, h                                       ; $6a54: $44
    rst $38                                       ; $6a55: $ff
    nop                                           ; $6a56: $00
    and e                                         ; $6a57: $a3
    ld [bc], a                                    ; $6a58: $02
    ld b, e                                       ; $6a59: $43
    ld [c], a                                     ; $6a5a: $e2
    dec c                                         ; $6a5b: $0d
    inc a                                         ; $6a5c: $3c
    db $e3                                        ; $6a5d: $e3
    ld a, b                                       ; $6a5e: $78
    pop bc                                        ; $6a5f: $c1
    ccf                                           ; $6a60: $3f
    pop hl                                        ; $6a61: $e1
    add d                                         ; $6a62: $82
    db $e4                                        ; $6a63: $e4
    nop                                           ; $6a64: $00
    rst $38                                       ; $6a65: $ff
    ret nz                                        ; $6a66: $c0

    push hl                                       ; $6a67: $e5
    db $10                                        ; $6a68: $10
    ld a, [hl]                                    ; $6a69: $7e
    db $e4                                        ; $6a6a: $e4
    jp nz, $e6e4                                  ; $6a6b: $c2 $e4 $e6

    daa                                           ; $6a6e: $27
    nop                                           ; $6a6f: $00
    rst $18                                       ; $6a70: $df
    dec c                                         ; $6a71: $0d
    ld c, l                                       ; $6a72: $4d
    ret nz                                        ; $6a73: $c0

    ld c, h                                       ; $6a74: $4c
    ld [hl+], a                                   ; $6a75: $22
    rlca                                          ; $6a76: $07
    add l                                         ; $6a77: $85
    ldh [$08], a                                  ; $6a78: $e0 $08
    ld b, d                                       ; $6a7a: $42
    add d                                         ; $6a7b: $82
    push hl                                       ; $6a7c: $e5
    nop                                           ; $6a7d: $00
    rst $18                                       ; $6a7e: $df
    pop bc                                        ; $6a7f: $c1
    ret nz                                        ; $6a80: $c0

    cp a                                          ; $6a81: $bf
    ld [c], a                                     ; $6a82: $e2
    dec hl                                        ; $6a83: $2b
    dec hl                                        ; $6a84: $2b
    dec hl                                        ; $6a85: $2b
    ld [$c382], sp                                ; $6a86: $08 $82 $c3
    ld b, $bf                                     ; $6a89: $06 $bf
    nop                                           ; $6a8b: $00
    ld l, e                                       ; $6a8c: $6b
    dec l                                         ; $6a8d: $2d
    cp a                                          ; $6a8e: $bf
    db $e3                                        ; $6a8f: $e3
    pop bc                                        ; $6a90: $c1
    pop hl                                        ; $6a91: $e1
    rst $00                                       ; $6a92: $c7
    nop                                           ; $6a93: $00
    ld [$2086], sp                                ; $6a94: $08 $86 $20
    add d                                         ; $6a97: $82
    jp $ffbc                                      ; $6a98: $c3 $bc $ff


    add d                                         ; $6a9b: $82
    ld b, b                                       ; $6a9c: $40
    ld a, [hl]                                    ; $6a9d: $7e
    ld [c], a                                     ; $6a9e: $e2
    pop bc                                        ; $6a9f: $c1
    pop hl                                        ; $6aa0: $e1
    dec bc                                        ; $6aa1: $0b
    ld c, d                                       ; $6aa2: $4a
    nop                                           ; $6aa3: $00
    ldh [rNR11], a                                ; $6aa4: $e0 $11
    inc b                                         ; $6aa6: $04
    nop                                           ; $6aa7: $00
    sbc d                                         ; $6aa8: $9a
    db $fc                                        ; $6aa9: $fc
    jr nz, jr_065_6ad9                            ; $6aaa: $20 $2d

    ld c, c                                       ; $6aac: $49
    and c                                         ; $6aad: $a1
    rlca                                          ; $6aae: $07
    jr nz, jr_065_6abd                            ; $6aaf: $20 $0c

    ld h, e                                       ; $6ab1: $63
    add d                                         ; $6ab2: $82
    rst $20                                       ; $6ab3: $e7
    ld [bc], a                                    ; $6ab4: $02
    db $ed                                        ; $6ab5: $ed
    nop                                           ; $6ab6: $00
    nop                                           ; $6ab7: $00
    sub d                                         ; $6ab8: $92
    inc a                                         ; $6ab9: $3c
    ld h, h                                       ; $6aba: $64
    db $fd                                        ; $6abb: $fd
    pop hl                                        ; $6abc: $e1

jr_065_6abd:
    inc c                                         ; $6abd: $0c
    cp a                                          ; $6abe: $bf
    nop                                           ; $6abf: $00
    ld d, c                                       ; $6ac0: $51
    ld a, d                                       ; $6ac1: $7a
    push hl                                       ; $6ac2: $e5
    inc c                                         ; $6ac3: $0c
    rst $00                                       ; $6ac4: $c7
    ld h, [hl]                                    ; $6ac5: $66
    add c                                         ; $6ac6: $81
    jr @+$06                                      ; $6ac7: $18 $04

    rst $38                                       ; $6ac9: $ff
    halt                                          ; $6aca: $76
    dec l                                         ; $6acb: $2d
    adc $ff                                       ; $6acc: $ce $ff
    ld c, $0e                                     ; $6ace: $0e $0e
    nop                                           ; $6ad0: $00
    nop                                           ; $6ad1: $00
    nop                                           ; $6ad2: $00
    rst $28                                       ; $6ad3: $ef
    and b                                         ; $6ad4: $a0
    call c, $dedd                                 ; $6ad5: $dc $dd $de
    db $fc                                        ; $6ad8: $fc

jr_065_6ad9:
    ld a, [c]                                     ; $6ad9: $f2
    and b                                         ; $6ada: $a0
    ret c                                         ; $6adb: $d8

    reti                                          ; $6adc: $d9


    add $fc                                       ; $6add: $c6 $fc
    rst $20                                       ; $6adf: $e7
    jp nc, $fcd3                                  ; $6ae0: $d2 $d3 $fc

    db $eb                                        ; $6ae3: $eb

Jump_065_6ae4:
    db $e4                                        ; $6ae4: $e4
    ldh [$c8], a                                  ; $6ae5: $e0 $c8
    db $e4                                        ; $6ae7: $e4
    rst $18                                       ; $6ae8: $df
    ldh [$7b], a                                  ; $6ae9: $e0 $7b
    pop hl                                        ; $6aeb: $e1
    ld [c], a                                     ; $6aec: $e2
    db $fc                                        ; $6aed: $fc
    pop af                                        ; $6aee: $f1
    sub $d7                                       ; $6aef: $d6 $d7
    jp c, $fcdb                                   ; $6af1: $da $db $fc

    pop hl                                        ; $6af4: $e1
    ld a, e                                       ; $6af5: $7b
    ret nc                                        ; $6af6: $d0

    pop de                                        ; $6af7: $d1
    db $fc                                        ; $6af8: $fc
    pop hl                                        ; $6af9: $e1
    call nc, $a0d5                                ; $6afa: $d4 $d5 $a0
    and b                                         ; $6afd: $a0
    db $fc                                        ; $6afe: $fc
    rst $20                                       ; $6aff: $e7
    inc a                                         ; $6b00: $3c
    db $ec                                        ; $6b01: $ec
    pop hl                                        ; $6b02: $e1
    ret z                                         ; $6b03: $c8

    push hl                                       ; $6b04: $e5
    db $e3                                        ; $6b05: $e3
    db $e4                                        ; $6b06: $e4
    push hl                                       ; $6b07: $e5
    and $fc                                       ; $6b08: $e6 $fc
    pop af                                        ; $6b0a: $f1
    add [hl]                                      ; $6b0b: $86
    db $ed                                        ; $6b0c: $ed
    ld [hl], a                                    ; $6b0d: $77
    sbc a                                         ; $6b0e: $9f
    and d                                         ; $6b0f: $a2
    sbc l                                         ; $6b10: $9d
    rst $38                                       ; $6b11: $ff
    ldh [$a2], a                                  ; $6b12: $e0 $a2
    sbc a                                         ; $6b14: $9f
    and b                                         ; $6b15: $a0
    rst $38                                       ; $6b16: $ff
    ldh [$3c], a                                  ; $6b17: $e0 $3c
    ld [hl], d                                    ; $6b19: $72
    pop hl                                        ; $6b1a: $e1
    ret z                                         ; $6b1b: $c8

    push hl                                       ; $6b1c: $e5
    rst $20                                       ; $6b1d: $e7
    add sp, -$17                                  ; $6b1e: $e8 $e9
    ld [$f1fc], a                                 ; $6b20: $ea $fc $f1
    add d                                         ; $6b23: $82
    push hl                                       ; $6b24: $e5
    xor [hl]                                      ; $6b25: $ae
    add [hl]                                      ; $6b26: $86
    db $e4                                        ; $6b27: $e4
    sbc a                                         ; $6b28: $9f
    sbc h                                         ; $6b29: $9c
    ld b, [hl]                                    ; $6b2a: $46
    rst $38                                       ; $6b2b: $ff
    ld [c], a                                     ; $6b2c: $e2
    sbc h                                         ; $6b2d: $9c
    cp a                                          ; $6b2e: $bf
    pop hl                                        ; $6b2f: $e1
    call nc, $d507                                ; $6b30: $d4 $07 $d5
    sub $d7                                       ; $6b33: $d6 $d7
    ret z                                         ; $6b35: $c8

    push hl                                       ; $6b36: $e5
    ld [bc], a                                    ; $6b37: $02
    push af                                       ; $6b38: $f5
    ld [$8ee7], sp                                ; $6b39: $08 $e7 $8e
    pop hl                                        ; $6b3c: $e1
    pop bc                                        ; $6b3d: $c1
    db $e3                                        ; $6b3e: $e3
    pop bc                                        ; $6b3f: $c1
    xor [hl]                                      ; $6b40: $ae
    cp $e0                                        ; $6b41: $fe $e0
    cp a                                          ; $6b43: $bf
    ld [c], a                                     ; $6b44: $e2
    db $e4                                        ; $6b45: $e4
    jp nz, $c3c6                                  ; $6b46: $c2 $c6 $c3

    ld [bc], a                                    ; $6b49: $02
    di                                            ; $6b4a: $f3
    and b                                         ; $6b4b: $a0
    and b                                         ; $6b4c: $a0
    ld a, b                                       ; $6b4d: $78
    add d                                         ; $6b4e: $82
    and $47                                       ; $6b4f: $e6 $47
    ld [c], a                                     ; $6b51: $e2
    add d                                         ; $6b52: $82
    ldh [$ae], a                                  ; $6b53: $e0 $ae
    ld b, [hl]                                    ; $6b55: $46
    ld b, [hl]                                    ; $6b56: $46
    xor a                                         ; $6b57: $af
    cp $e0                                        ; $6b58: $fe $e0
    inc c                                         ; $6b5a: $0c
    ld a, [hl]                                    ; $6b5b: $7e
    pop hl                                        ; $6b5c: $e1
    db $ec                                        ; $6b5d: $ec
    pop bc                                        ; $6b5e: $c1
    sub $d7                                       ; $6b5f: $d6 $d7
    add $c3                                       ; $6b61: $c6 $c3
    ld [bc], a                                    ; $6b63: $02
    di                                            ; $6b64: $f3
    adc d                                         ; $6b65: $8a
    rst $00                                       ; $6b66: $c7
    ld b, a                                       ; $6b67: $47
    push hl                                       ; $6b68: $e5
    rst $38                                       ; $6b69: $ff
    ld b, [hl]                                    ; $6b6a: $46
    xor a                                         ; $6b6b: $af
    ld b, l                                       ; $6b6c: $45
    ld b, c                                       ; $6b6d: $41
    ld b, l                                       ; $6b6e: $45
    ld b, l                                       ; $6b6f: $45
    ld c, b                                       ; $6b70: $48
    ld c, b                                       ; $6b71: $48
    add a                                         ; $6b72: $87
    ld b, l                                       ; $6b73: $45
    ld b, [hl]                                    ; $6b74: $46
    and c                                         ; $6b75: $a1
    ld a, [hl]                                    ; $6b76: $7e
    call nz, $c3c6                                ; $6b77: $c4 $c6 $c3
    ld [bc], a                                    ; $6b7a: $02
    di                                            ; $6b7b: $f3
    inc b                                         ; $6b7c: $04
    rst $20                                       ; $6b7d: $e7
    sbc [hl]                                      ; $6b7e: $9e
    ei                                            ; $6b7f: $fb
    ld b, [hl]                                    ; $6b80: $46
    xor [hl]                                      ; $6b81: $ae
    add [hl]                                      ; $6b82: $86
    ldh [rDMA], a                                 ; $6b83: $e0 $46
    ld b, [hl]                                    ; $6b85: $46
    ld b, l                                       ; $6b86: $45
    ld b, c                                       ; $6b87: $41
    ld a, [hl+]                                   ; $6b88: $2a
    rst $38                                       ; $6b89: $ff
    ld h, $2a                                     ; $6b8a: $26 $2a
    ld b, c                                       ; $6b8c: $41
    ld d, h                                       ; $6b8d: $54
    ld h, b                                       ; $6b8e: $60
    ld e, h                                       ; $6b8f: $5c
    ld b, [hl]                                    ; $6b90: $46
    sbc [hl]                                      ; $6b91: $9e
    add [hl]                                      ; $6b92: $86
    nop                                           ; $6b93: $00
    ld [c], a                                     ; $6b94: $e2
    jp c, $c6db                                   ; $6b95: $da $db $c6

    jp $d704                                      ; $6b98: $c3 $04 $d7


    inc b                                         ; $6b9b: $04
    ld [c], a                                     ; $6b9c: $e2
    ret z                                         ; $6b9d: $c8

    ret nz                                        ; $6b9e: $c0

    xor a                                         ; $6b9f: $af
    rst $38                                       ; $6ba0: $ff
    xor a                                         ; $6ba1: $af
    ld b, [hl]                                    ; $6ba2: $46
    ld b, l                                       ; $6ba3: $45
    scf                                           ; $6ba4: $37
    dec a                                         ; $6ba5: $3d
    jr c, jr_065_6bdd                             ; $6ba6: $38 $35

    daa                                           ; $6ba8: $27
    rst $38                                       ; $6ba9: $ff
    jr nz, jr_065_6bcc                            ; $6baa: $20 $20

    ld h, $2a                                     ; $6bac: $26 $2a
    ld c, e                                       ; $6bae: $4b
    ld d, d                                       ; $6baf: $52
    ld b, l                                       ; $6bb0: $45
    sbc [hl]                                      ; $6bb1: $9e
    or b                                          ; $6bb2: $b0
    db $e4                                        ; $6bb3: $e4
    jp $d800                                      ; $6bb4: $c3 $00 $d8


    add [hl]                                      ; $6bb7: $86
    rst $00                                       ; $6bb8: $c7
    adc c                                         ; $6bb9: $89
    call nz, Call_000_3539                        ; $6bba: $c4 $39 $35
    rst $38                                       ; $6bbd: $ff
    ldh [rNR42], a                                ; $6bbe: $e0 $21
    rst $38                                       ; $6bc0: $ff
    jr nz, jr_065_6be3                            ; $6bc1: $20 $20

    jr nz, jr_065_6bec                            ; $6bc3: $20 $27

    ld c, a                                       ; $6bc5: $4f
    ld d, [hl]                                    ; $6bc6: $56
    ld b, l                                       ; $6bc7: $45
    sbc h                                         ; $6bc8: $9c
    ld sp, hl                                     ; $6bc9: $f9
    sbc a                                         ; $6bca: $9f
    nop                                           ; $6bcb: $00

jr_065_6bcc:
    db $dd                                        ; $6bcc: $dd
    inc b                                         ; $6bcd: $04
    and $a2                                       ; $6bce: $e6 $a2
    sbc h                                         ; $6bd0: $9c
    ld b, [hl]                                    ; $6bd1: $46
    ld b, l                                       ; $6bd2: $45
    ld b, e                                       ; $6bd3: $43
    ld a, [$e009]                                 ; $6bd4: $fa $09 $e0
    ld a, [hl-]                                   ; $6bd7: $3a
    ret nz                                        ; $6bd8: $c0

    ldh [$38], a                                  ; $6bd9: $e0 $38
    scf                                           ; $6bdb: $37
    ld a, [hl+]                                   ; $6bdc: $2a

jr_065_6bdd:
    ld h, $20                                     ; $6bdd: $26 $20
    ccf                                           ; $6bdf: $3f
    ld a, [hl+]                                   ; $6be0: $2a
    ld c, e                                       ; $6be1: $4b
    ld d, l                                       ; $6be2: $55

jr_065_6be3:
    ld b, [hl]                                    ; $6be3: $46
    ld b, [hl]                                    ; $6be4: $46
    sbc [hl]                                      ; $6be5: $9e
    nop                                           ; $6be6: $00
    db $dd                                        ; $6be7: $dd
    add [hl]                                      ; $6be8: $86
    and c                                         ; $6be9: $a1
    ld a, [hl]                                    ; $6bea: $7e
    inc c                                         ; $6beb: $0c

jr_065_6bec:
    call nz, Call_000_3645                        ; $6bec: $c4 $45 $36
    dec sp                                        ; $6bef: $3b
    dec [hl]                                      ; $6bf0: $35
    jr c, jr_065_6c2b                             ; $6bf1: $38 $38

    jp nz, $ffe1                                  ; $6bf3: $c2 $e1 $ff

    ld b, e                                       ; $6bf6: $43
    ld c, c                                       ; $6bf7: $49
    ld c, c                                       ; $6bf8: $49
    ld c, [hl]                                    ; $6bf9: $4e
    ld c, [hl]                                    ; $6bfa: $4e
    ld c, c                                       ; $6bfb: $49
    ld h, b                                       ; $6bfc: $60
    ld e, h                                       ; $6bfd: $5c
    rst $00                                       ; $6bfe: $c7
    xor [hl]                                      ; $6bff: $ae
    ld b, [hl]                                    ; $6c00: $46
    sbc [hl]                                      ; $6c01: $9e
    nop                                           ; $6c02: $00
    rst $18                                       ; $6c03: $df
    inc b                                         ; $6c04: $04
    and c                                         ; $6c05: $a1
    call $aea0                                    ; $6c06: $cd $a0 $ae
    ld b, l                                       ; $6c09: $45
    rst $30                                       ; $6c0a: $f7
    ld [hl], $35                                  ; $6c0b: $36 $35
    xor h                                         ; $6c0d: $ac
    ld b, h                                       ; $6c0e: $44
    pop hl                                        ; $6c0f: $e1
    ld a, [hl-]                                   ; $6c10: $3a
    ld b, l                                       ; $6c11: $45
    xor [hl]                                      ; $6c12: $ae
    xor [hl]                                      ; $6c13: $ae
    rst $38                                       ; $6c14: $ff
    ld d, d                                       ; $6c15: $52
    ld d, a                                       ; $6c16: $57
    ld h, c                                       ; $6c17: $61
    ld d, h                                       ; $6c18: $54
    ld e, c                                       ; $6c19: $59
    ld d, e                                       ; $6c1a: $53
    ld b, l                                       ; $6c1b: $45
    xor a                                         ; $6c1c: $af
    ld c, b                                       ; $6c1d: $48
    ld a, a                                       ; $6c1e: $7f
    ret nz                                        ; $6c1f: $c0

    nop                                           ; $6c20: $00
    sbc $08                                       ; $6c21: $de $08
    and c                                         ; $6c23: $a1
    sbc [hl]                                      ; $6c24: $9e
    rrca                                          ; $6c25: $0f
    ret nz                                        ; $6c26: $c0

    rlca                                          ; $6c27: $07
    ldh [$ad], a                                  ; $6c28: $e0 $ad
    inc b                                         ; $6c2a: $04

jr_065_6c2b:
    pop hl                                        ; $6c2b: $e1
    rst $38                                       ; $6c2c: $ff
    add hl, sp                                    ; $6c2d: $39
    xor [hl]                                      ; $6c2e: $ae
    xor a                                         ; $6c2f: $af
    xor a                                         ; $6c30: $af
    xor [hl]                                      ; $6c31: $ae
    ld b, e                                       ; $6c32: $43
    ld e, e                                       ; $6c33: $5b
    ld b, l                                       ; $6c34: $45
    ret c                                         ; $6c35: $d8

    ld [hl], l                                    ; $6c36: $75
    pop bc                                        ; $6c37: $c1
    nop                                           ; $6c38: $00
    db $e3                                        ; $6c39: $e3
    nop                                           ; $6c3a: $00
    db $dd                                        ; $6c3b: $dd
    jp nc, Jump_065_46d3                          ; $6c3c: $d2 $d3 $46

    ret nz                                        ; $6c3f: $c0

    ld b, [hl]                                    ; $6c40: $46
    ld a, $7c                                     ; $6c41: $3e $7c
    rst $00                                       ; $6c43: $c7
    pop bc                                        ; $6c44: $c1
    ld a, l                                       ; $6c45: $7d
    ldh [rLCDC], a                                ; $6c46: $e0 $40
    xor a                                         ; $6c48: $af
    xor [hl]                                      ; $6c49: $ae
    xor [hl]                                      ; $6c4a: $ae
    xor a                                         ; $6c4b: $af
    cp [hl]                                       ; $6c4c: $be
    and d                                         ; $6c4d: $a2
    adc b                                         ; $6c4e: $88
    ld a, $a1                                     ; $6c4f: $3e $a1
    nop                                           ; $6c51: $00
    rst $18                                       ; $6c52: $df
    nop                                           ; $6c53: $00
    pop hl                                        ; $6c54: $e1
    sbc [hl]                                      ; $6c55: $9e
    call $c7a0                                    ; $6c56: $cd $a0 $c7
    pop bc                                        ; $6c59: $c1
    ld a, l                                       ; $6c5a: $7d
    pop hl                                        ; $6c5b: $e1
    ld b, d                                       ; $6c5c: $42
    inc e                                         ; $6c5d: $1c
    ld a, [hl-]                                   ; $6c5e: $3a
    pop bc                                        ; $6c5f: $c1
    add e                                         ; $6c60: $83
    and b                                         ; $6c61: $a0
    ld b, [hl]                                    ; $6c62: $46
    sbc h                                         ; $6c63: $9c
    sbc l                                         ; $6c64: $9d
    add d                                         ; $6c65: $82
    ret nz                                        ; $6c66: $c0

    nop                                           ; $6c67: $00
    rst $18                                       ; $6c68: $df
    inc b                                         ; $6c69: $04
    add c                                         ; $6c6a: $81
    ld e, b                                       ; $6c6b: $58
    ld b, b                                       ; $6c6c: $40
    ldh [rOBP0], a                                ; $6c6d: $e0 $48
    jp nz, $c0ff                                  ; $6c6f: $c2 $ff $c0

    inc a                                         ; $6c72: $3c
    ld b, h                                       ; $6c73: $44
    jp nz, $9d84                                  ; $6c74: $c2 $84 $9d

    add b                                         ; $6c77: $80
    add b                                         ; $6c78: $80
    call z, $9f00                                 ; $6c79: $cc $00 $9f
    ld [$a183], sp                                ; $6c7c: $08 $83 $a1
    ld b, [hl]                                    ; $6c7f: $46
    ld b, c                                       ; $6c80: $41
    db $e3                                        ; $6c81: $e3
    rst $38                                       ; $6c82: $ff
    ret nz                                        ; $6c83: $c0

    ld [hl], $45                                  ; $6c84: $36 $45
    add c                                         ; $6c86: $81
    sbc h                                         ; $6c87: $9c
    ld b, d                                       ; $6c88: $42
    add c                                         ; $6c89: $81
    jp nz, $82e1                                  ; $6c8a: $c2 $e1 $82

    push hl                                       ; $6c8d: $e5
    nop                                           ; $6c8e: $00
    rst $18                                       ; $6c8f: $df
    ret nz                                        ; $6c90: $c0

    ret nz                                        ; $6c91: $c0

    ld bc, $3be2                                  ; $6c92: $01 $e2 $3b
    inc bc                                        ; $6c95: $03
    jr c, @+$39                                   ; $6c96: $38 $37

    dec bc                                        ; $6c98: $0b
    and c                                         ; $6c99: $a1
    rst $38                                       ; $6c9a: $ff
    db $e4                                        ; $6c9b: $e4
    add d                                         ; $6c9c: $82
    db $e4                                        ; $6c9d: $e4
    nop                                           ; $6c9e: $00
    rst $18                                       ; $6c9f: $df
    nop                                           ; $6ca0: $00
    ldh [$c1], a                                  ; $6ca1: $e0 $c1
    jp nz, Jump_000_36b7                          ; $6ca3: $c2 $b7 $36

    ld b, e                                       ; $6ca6: $43
    ld b, l                                       ; $6ca7: $45
    add hl, bc                                    ; $6ca8: $09
    add e                                         ; $6ca9: $83
    ret nc                                        ; $6caa: $d0

    pop de                                        ; $6cab: $d1
    add d                                         ; $6cac: $82
    rst $20                                       ; $6cad: $e7
    and b                                         ; $6cae: $a0
    ld de, $00a0                                  ; $6caf: $11 $a0 $00
    sbc b                                         ; $6cb2: $98
    inc b                                         ; $6cb3: $04
    add h                                         ; $6cb4: $84
    nop                                           ; $6cb5: $00
    db $e3                                        ; $6cb6: $e3
    ld a, [hl-]                                   ; $6cb7: $3a
    jp nz, Jump_000_09e1                          ; $6cb8: $c2 $e1 $09

    pop hl                                        ; $6cbb: $e1
    inc b                                         ; $6cbc: $04
    ld l, c                                       ; $6cbd: $69
    nop                                           ; $6cbe: $00
    inc b                                         ; $6cbf: $04
    add h                                         ; $6cc0: $84
    nop                                           ; $6cc1: $00
    sub e                                         ; $6cc2: $93

Jump_065_6cc3:
    inc b                                         ; $6cc3: $04
    add l                                         ; $6cc4: $85
    adc l                                         ; $6cc5: $8d
    ld h, b                                       ; $6cc6: $60
    pop bc                                        ; $6cc7: $c1
    and b                                         ; $6cc8: $a0
    ret nz                                        ; $6cc9: $c0

    pop hl                                        ; $6cca: $e1
    adc $81                                       ; $6ccb: $ce $81
    adc d                                         ; $6ccd: $8a
    jp $8670                                      ; $6cce: $c3 $70 $86


    jp $8504                                      ; $6cd1: $c3 $04 $85


    nop                                           ; $6cd4: $00
    sub e                                         ; $6cd5: $93
    adc [hl]                                      ; $6cd6: $8e
    ld b, [hl]                                    ; $6cd7: $46
    sbc a                                         ; $6cd8: $9f
    sbc l                                         ; $6cd9: $9d
    sbc h                                         ; $6cda: $9c
    ld b, $a0                                     ; $6cdb: $06 $a0
    add c                                         ; $6cdd: $81
    ld [hl], $03                                  ; $6cde: $36 $03
    db $e3                                        ; $6ce0: $e3
    ld [$6ae5], sp                                ; $6ce1: $08 $e5 $6a
    ld b, e                                       ; $6ce4: $43
    jp z, Jump_000_0447                           ; $6ce5: $ca $47 $04

    sbc c                                         ; $6ce8: $99
    inc bc                                        ; $6ce9: $03
    add b                                         ; $6cea: $80
    ld a, $04                                     ; $6ceb: $3e $04
    ld b, h                                       ; $6ced: $44
    pop bc                                        ; $6cee: $c1
    add e                                         ; $6cef: $83
    ret nz                                        ; $6cf0: $c0

    sbc a                                         ; $6cf1: $9f
    adc d                                         ; $6cf2: $8a
    ld b, e                                       ; $6cf3: $43
    inc b                                         ; $6cf4: $04
    db $e3                                        ; $6cf5: $e3
    inc b                                         ; $6cf6: $04
    push bc                                       ; $6cf7: $c5
    nop                                           ; $6cf8: $00
    sub d                                         ; $6cf9: $92
    ld [$8169], sp                                ; $6cfa: $08 $69 $81
    and c                                         ; $6cfd: $a1
    add b                                         ; $6cfe: $80
    db $e3                                        ; $6cff: $e3
    ret z                                         ; $6d00: $c8

    ld b, e                                       ; $6d01: $43
    ld [$00cb], sp                                ; $6d02: $08 $cb $00
    ld d, l                                       ; $6d05: $55
    add d                                         ; $6d06: $82
    add sp, $40                                   ; $6d07: $e8 $40
    ldh [rLCDC], a                                ; $6d09: $e0 $40
    dec a                                         ; $6d0b: $3d
    dec sp                                        ; $6d0c: $3b

Jump_065_6d0d:
    pop bc                                        ; $6d0d: $c1
    pop hl                                        ; $6d0e: $e1
    ld [bc], a                                    ; $6d0f: $02
    rlca                                          ; $6d10: $07
    rlca                                          ; $6d11: $07
    rlca                                          ; $6d12: $07
    adc d                                         ; $6d13: $8a
    ld h, c                                       ; $6d14: $61
    ld [$d849], sp                                ; $6d15: $08 $49 $d8
    nop                                           ; $6d18: $00
    ld d, l                                       ; $6d19: $55

jr_065_6d1a:
    adc d                                         ; $6d1a: $8a
    ld b, a                                       ; $6d1b: $47
    ld b, c                                       ; $6d1c: $41
    add d                                         ; $6d1d: $82
    ld b, e                                       ; $6d1e: $43
    ld b, l                                       ; $6d1f: $45
    jp $0fe0                                      ; $6d20: $c3 $e0 $0f


    rrca                                          ; $6d23: $0f
    add b                                         ; $6d24: $80
    ret nz                                        ; $6d25: $c0

    pop hl                                        ; $6d26: $e1
    ld [$004b], sp                                ; $6d27: $08 $4b $00
    ld d, l                                       ; $6d2a: $55
    inc b                                         ; $6d2b: $04
    add h                                         ; $6d2c: $84
    jp $87c1                                      ; $6d2d: $c3 $c1 $87


    db $e3                                        ; $6d30: $e3
    jp $02e1                                      ; $6d31: $c3 $e1 $02


    pop bc                                        ; $6d34: $c1
    ld b, [hl]                                    ; $6d35: $46
    cp a                                          ; $6d36: $bf
    and d                                         ; $6d37: $a2
    ld [$0089], sp                                ; $6d38: $08 $89 $00
    ld d, h                                       ; $6d3b: $54
    inc h                                         ; $6d3c: $24
    ld b, l                                       ; $6d3d: $45
    ret nc                                        ; $6d3e: $d0

    ld [hl+], a                                   ; $6d3f: $22
    ld [bc], a                                    ; $6d40: $02
    rrca                                          ; $6d41: $0f
    ld a, a                                       ; $6d42: $7f
    nop                                           ; $6d43: $00
    ld bc, $070f                                  ; $6d44: $01 $0f $07
    ld [bc], a                                    ; $6d47: $02
    ld b, l                                       ; $6d48: $45
    ccf                                           ; $6d49: $3f
    ld c, b                                       ; $6d4a: $48
    add b                                         ; $6d4b: $80
    add sp, $08                                   ; $6d4c: $e8 $08
    ld c, l                                       ; $6d4e: $4d
    nop                                           ; $6d4f: $00
    db $d3                                        ; $6d50: $d3
    ld [$a045], sp                                ; $6d51: $08 $45 $a0
    inc bc                                        ; $6d54: $03
    and b                                         ; $6d55: $a0

jr_065_6d56:
    ld [bc], a                                    ; $6d56: $02
    rlca                                          ; $6d57: $07
    rrca                                          ; $6d58: $0f
    rst $38                                       ; $6d59: $ff
    sbc b                                         ; $6d5a: $98
    sbc b                                         ; $6d5b: $98
    rrca                                          ; $6d5c: $0f
    ld [bc], a                                    ; $6d5d: $02
    ld b, l                                       ; $6d5e: $45
    ld b, e                                       ; $6d5f: $43
    ld [hl], $35                                  ; $6d60: $36 $35
    pop bc                                        ; $6d62: $c1
    add hl, sp                                    ; $6d63: $39
    ld b, h                                       ; $6d64: $44
    add b                                         ; $6d65: $80
    ld [$004c], sp                                ; $6d66: $08 $4c $00
    db $d3                                        ; $6d69: $d3
    sub d                                         ; $6d6a: $92
    ld b, $c3                                     ; $6d6b: $06 $c3
    ld h, b                                       ; $6d6d: $60
    ld [$8f98], sp                                ; $6d6e: $08 $98 $8f
    sbc b                                         ; $6d71: $98
    sub a                                         ; $6d72: $97
    sbc b                                         ; $6d73: $98
    ld [$613f], sp                                ; $6d74: $08 $3f $61
    add c                                         ; $6d77: $81
    ld h, b                                       ; $6d78: $60
    rst $00                                       ; $6d79: $c7
    jr nz, jr_065_6d1a                            ; $6d7a: $20 $9e

    ld h, b                                       ; $6d7c: $60
    ld [$008a], sp                                ; $6d7d: $08 $8a $00
    db $d3                                        ; $6d80: $d3
    inc h                                         ; $6d81: $24
    pop bc                                        ; $6d82: $c1
    sub d                                         ; $6d83: $92
    ld bc, $2011                                  ; $6d84: $01 $11 $20
    ld [bc], a                                    ; $6d87: $02
    rrca                                          ; $6d88: $0f
    pop bc                                        ; $6d89: $c1
    ldh [rNR22], a                                ; $6d8a: $e0 $17
    sbc c                                         ; $6d8c: $99
    ld [$be40], sp                                ; $6d8d: $08 $40 $be
    ld h, d                                       ; $6d90: $62
    ld [hl], $86                                  ; $6d91: $36 $86
    ld h, b                                       ; $6d93: $60
    ld [$004b], sp                                ; $6d94: $08 $4b $00
    rst $10                                       ; $6d97: $d7
    inc l                                         ; $6d98: $2c
    adc [hl]                                      ; $6d99: $8e
    ld bc, $e181                                  ; $6d9a: $01 $81 $e1
    nop                                           ; $6d9d: $00
    ld bc, $e280                                  ; $6d9e: $01 $80 $e2
    scf                                           ; $6da1: $37
    jp nz, Jump_000_3f40                          ; $6da2: $c2 $40 $3f

    ld h, b                                       ; $6da5: $60
    pop hl                                        ; $6da6: $e1
    xor a                                         ; $6da7: $af
    push bc                                       ; $6da8: $c5
    ld [bc], a                                    ; $6da9: $02
    nop                                           ; $6daa: $00
    rst $18                                       ; $6dab: $df
    add [hl]                                      ; $6dac: $86
    ld b, l                                       ; $6dad: $45
    add c                                         ; $6dae: $81
    ldh [$98], a                                  ; $6daf: $e0 $98
    sub a                                         ; $6db1: $97
    sub a                                         ; $6db2: $97
    ld l, [hl]                                    ; $6db3: $6e
    nop                                           ; $6db4: $00
    ldh [rDMA], a                                 ; $6db5: $e0 $46
    ld b, h                                       ; $6db7: $44
    inc a                                         ; $6db8: $3c
    cp a                                          ; $6db9: $bf
    ld b, e                                       ; $6dba: $43
    ld b, [hl]                                    ; $6dbb: $46
    sbc [hl]                                      ; $6dbc: $9e
    nop                                           ; $6dbd: $00
    rst $18                                       ; $6dbe: $df
    db $f4                                        ; $6dbf: $f4
    nop                                           ; $6dc0: $00
    jp $e302                                      ; $6dc1: $c3 $02 $e3


    sub a                                         ; $6dc4: $97
    pop bc                                        ; $6dc5: $c1
    ldh [rSB], a                                  ; $6dc6: $e0 $01
    nop                                           ; $6dc8: $00
    ld [$8646], sp                                ; $6dc9: $08 $46 $86
    ld a, $e3                                     ; $6dcc: $3e $e3
    ld b, d                                       ; $6dce: $42
    xor a                                         ; $6dcf: $af
    ld [$004b], sp                                ; $6dd0: $08 $4b $00
    rst $10                                       ; $6dd3: $d7
    jr jr_065_6d56                                ; $6dd4: $18 $80

    ret nz                                        ; $6dd6: $c0

    db $e3                                        ; $6dd7: $e3
    sub [hl]                                      ; $6dd8: $96
    ld hl, $8096                                  ; $6dd9: $21 $96 $80
    pop hl                                        ; $6ddc: $e1
    dec a                                         ; $6ddd: $3d
    ld b, b                                       ; $6dde: $40
    add d                                         ; $6ddf: $82
    jr nz, jr_065_6e20                            ; $6de0: $20 $3e

    ld h, c                                       ; $6de2: $61
    and c                                         ; $6de3: $a1
    nop                                           ; $6de4: $00
    rst $18                                       ; $6de5: $df
    sbc [hl]                                      ; $6de6: $9e
    ld h, h                                       ; $6de7: $64
    inc c                                         ; $6de8: $0c
    ld b, d                                       ; $6de9: $42
    pop bc                                        ; $6dea: $c1
    pop bc                                        ; $6deb: $c1
    ret nz                                        ; $6dec: $c0

    sub a                                         ; $6ded: $97
    sbc b                                         ; $6dee: $98
    add b                                         ; $6def: $80
    pop bc                                        ; $6df0: $c1
    ld a, l                                       ; $6df1: $7d
    ld b, d                                       ; $6df2: $42
    add hl, sp                                    ; $6df3: $39
    add h                                         ; $6df4: $84
    nop                                           ; $6df5: $00
    rst $18                                       ; $6df6: $df
    inc a                                         ; $6df7: $3c
    add [hl]                                      ; $6df8: $86
    ld h, $41                                     ; $6df9: $26 $41
    ret nz                                        ; $6dfb: $c0

    sbc b                                         ; $6dfc: $98
    sbc c                                         ; $6dfd: $99
    rrca                                          ; $6dfe: $0f
    ld [bc], a                                    ; $6dff: $02
    ld [bc], a                                    ; $6e00: $02
    ld [c], a                                     ; $6e01: $e2
    rst $38                                       ; $6e02: $ff
    jr nz, @-$2e                                  ; $6e03: $20 $d0

    inc sp                                        ; $6e05: $33
    ld b, b                                       ; $6e06: $40
    nop                                           ; $6e07: $00
    ld [c], a                                     ; $6e08: $e2
    nop                                           ; $6e09: $00
    rst $18                                       ; $6e0a: $df
    ld a, [de]                                    ; $6e0b: $1a
    ld h, c                                       ; $6e0c: $61
    sbc [hl]                                      ; $6e0d: $9e
    add h                                         ; $6e0e: $84
    and b                                         ; $6e0f: $a0
    ld bc, $8000                                  ; $6e10: $01 $00 $80
    add h                                         ; $6e13: $84
    and c                                         ; $6e14: $a1
    add c                                         ; $6e15: $81
    db $e3                                        ; $6e16: $e3
    ei                                            ; $6e17: $fb
    ld h, b                                       ; $6e18: $60
    nop                                           ; $6e19: $00
    db $e4                                        ; $6e1a: $e4
    nop                                           ; $6e1b: $00
    db $db                                        ; $6e1c: $db
    add d                                         ; $6e1d: $82
    and h                                         ; $6e1e: $a4
    ld b, h                                       ; $6e1f: $44

jr_065_6e20:
    ld h, b                                       ; $6e20: $60
    ld [$9801], sp                                ; $6e21: $08 $01 $98
    ld b, [hl]                                    ; $6e24: $46
    and b                                         ; $6e25: $a0
    ld a, a                                       ; $6e26: $7f
    ld h, c                                       ; $6e27: $61
    pop bc                                        ; $6e28: $c1
    db $e4                                        ; $6e29: $e4
    ccf                                           ; $6e2a: $3f
    ld b, b                                       ; $6e2b: $40
    ld [$0022], sp                                ; $6e2c: $08 $22 $00
    jp c, $8604                                   ; $6e2f: $da $04 $86

    scf                                           ; $6e32: $37
    sbc [hl]                                      ; $6e33: $9e
    inc c                                         ; $6e34: $0c
    ld c, $46                                     ; $6e35: $0e $46
    ret nz                                        ; $6e37: $c0

    ld b, l                                       ; $6e38: $45
    ccf                                           ; $6e39: $3f
    inc bc                                        ; $6e3a: $03
    db $e3                                        ; $6e3b: $e3
    ld bc, $0843                                  ; $6e3c: $01 $43 $08
    nop                                           ; $6e3f: $00
    rst $18                                       ; $6e40: $df
    inc b                                         ; $6e41: $04
    add a                                         ; $6e42: $87
    ret nz                                        ; $6e43: $c0

    ldh [$08], a                                  ; $6e44: $e0 $08
    add e                                         ; $6e46: $83
    push hl                                       ; $6e47: $e5
    ld [bc], a                                    ; $6e48: $02
    ld [c], a                                     ; $6e49: $e2
    add c                                         ; $6e4a: $81
    pop hl                                        ; $6e4b: $e1
    nop                                           ; $6e4c: $00
    and d                                         ; $6e4d: $a2
    db $fc                                        ; $6e4e: $fc
    nop                                           ; $6e4f: $00
    reti                                          ; $6e50: $d9


    add [hl]                                      ; $6e51: $86
    ld h, l                                       ; $6e52: $65
    sbc a                                         ; $6e53: $9f
    and d                                         ; $6e54: $a2
    sbc h                                         ; $6e55: $9c
    ld b, [hl]                                    ; $6e56: $46
    ld [$c008], sp                                ; $6e57: $08 $08 $c0
    add d                                         ; $6e5a: $82
    inc hl                                        ; $6e5b: $23
    add d                                         ; $6e5c: $82
    call nz, $827f                                ; $6e5d: $c4 $7f $82

Jump_065_6e60:
    nop                                           ; $6e60: $00
    db $dd                                        ; $6e61: $dd
    inc b                                         ; $6e62: $04
    add h                                         ; $6e63: $84
    ld b, h                                       ; $6e64: $44
    add d                                         ; $6e65: $82
    ld [$8008], sp                                ; $6e66: $08 $08 $80
    inc bc                                        ; $6e69: $03
    inc h                                         ; $6e6a: $24
    ld [bc], a                                    ; $6e6b: $02
    jp $004a                                      ; $6e6c: $c3 $4a $00


    ld [$0023], sp                                ; $6e6f: $08 $23 $00
    db $db                                        ; $6e72: $db
    add d                                         ; $6e73: $82
    and l                                         ; $6e74: $a5
    dec b                                         ; $6e75: $05
    add b                                         ; $6e76: $80
    ld [$46c0], sp                                ; $6e77: $08 $c0 $46
    call nz, $c602                                ; $6e7a: $c4 $02 $c6
    inc b                                         ; $6e7d: $04
    ld c, a                                       ; $6e7e: $4f
    nop                                           ; $6e7f: $00
    ld c, a                                       ; $6e80: $4f
    add d                                         ; $6e81: $82
    and e                                         ; $6e82: $a3
    adc d                                         ; $6e83: $8a
    ld h, d                                       ; $6e84: $62
    ld [bc], a                                    ; $6e85: $02
    ld b, d                                       ; $6e86: $42
    ld h, b                                       ; $6e87: $60
    ld b, c                                       ; $6e88: $41
    and $00                                       ; $6e89: $e6 $00
    ld [c], a                                     ; $6e8b: $e2
    add d                                         ; $6e8c: $82
    ret nz                                        ; $6e8d: $c0

    nop                                           ; $6e8e: $00
    rst $18                                       ; $6e8f: $df
    inc b                                         ; $6e90: $04
    add e                                         ; $6e91: $83
    dec c                                         ; $6e92: $0d
    dec c                                         ; $6e93: $0d
    ld c, l                                       ; $6e94: $4d
    ld h, c                                       ; $6e95: $61
    ldh [rLCDC], a                                ; $6e96: $e0 $40
    rst $20                                       ; $6e98: $e7
    ld a, h                                       ; $6e99: $7c
    ld hl, $21bb                                  ; $6e9a: $21 $bb $21
    nop                                           ; $6e9d: $00
    rst $18                                       ; $6e9e: $df
    add d                                         ; $6e9f: $82
    and d                                         ; $6ea0: $a2
    sbc [hl]                                      ; $6ea1: $9e
    dec bc                                        ; $6ea2: $0b
    dec bc                                        ; $6ea3: $0b
    add d                                         ; $6ea4: $82
    ld d, c                                       ; $6ea5: $51
    nop                                           ; $6ea6: $00
    xor [hl]                                      ; $6ea7: $ae
    add d                                         ; $6ea8: $82
    inc bc                                        ; $6ea9: $03
    add e                                         ; $6eaa: $83
    and l                                         ; $6eab: $a5
    ccf                                           ; $6eac: $3f
    ld h, c                                       ; $6ead: $61
    nop                                           ; $6eae: $00
    rst $18                                       ; $6eaf: $df
    inc b                                         ; $6eb0: $04
    ld h, [hl]                                    ; $6eb1: $66
    xor [hl]                                      ; $6eb2: $ae
    nop                                           ; $6eb3: $00
    sub b                                         ; $6eb4: $90
    and b                                         ; $6eb5: $a0
    ret nz                                        ; $6eb6: $c0

    db $e4                                        ; $6eb7: $e4
    add c                                         ; $6eb8: $81
    ld bc, $6081                                  ; $6eb9: $01 $81 $60
    ld a, [hl-]                                   ; $6ebc: $3a
    ld [hl+], a                                   ; $6ebd: $22
    nop                                           ; $6ebe: $00
    rst $18                                       ; $6ebf: $df

Jump_065_6ec0:
    sbc d                                         ; $6ec0: $9a
    ld bc, $80c1                                  ; $6ec1: $01 $c1 $80
    nop                                           ; $6ec4: $00
    rrca                                          ; $6ec5: $0f
    ld h, b                                       ; $6ec6: $60
    add b                                         ; $6ec7: $80
    db $e4                                        ; $6ec8: $e4
    ret nz                                        ; $6ec9: $c0

    inc hl                                        ; $6eca: $23
    ld a, a                                       ; $6ecb: $7f
    ldh [rP1], a                                  ; $6ecc: $e0 $00
    rst $18                                       ; $6ece: $df
    add d                                         ; $6ecf: $82
    and [hl]                                      ; $6ed0: $a6
    ld b, b                                       ; $6ed1: $40
    ret nz                                        ; $6ed2: $c0

    rrca                                          ; $6ed3: $0f
    ld h, b                                       ; $6ed4: $60
    ret z                                         ; $6ed5: $c8

    ret nz                                        ; $6ed6: $c0

    ld [c], a                                     ; $6ed7: $e2
    add c                                         ; $6ed8: $81
    inc hl                                        ; $6ed9: $23
    ld a, a                                       ; $6eda: $7f
    pop hl                                        ; $6edb: $e1
    and c                                         ; $6edc: $a1
    nop                                           ; $6edd: $00
    rst $18                                       ; $6ede: $df
    nop                                           ; $6edf: $00
    rst $00                                       ; $6ee0: $c7
    ld b, l                                       ; $6ee1: $45
    ld b, c                                       ; $6ee2: $41
    add hl, bc                                    ; $6ee3: $09
    ld b, l                                       ; $6ee4: $45
    ret nz                                        ; $6ee5: $c0

    and d                                         ; $6ee6: $a2
    ld b, d                                       ; $6ee7: $42
    ld [hl+], a                                   ; $6ee8: $22
    xor [hl]                                      ; $6ee9: $ae
    ld bc, $00e0                                  ; $6eea: $01 $e0 $00
    push hl                                       ; $6eed: $e5
    nop                                           ; $6eee: $00
    rst $18                                       ; $6eef: $df
    add h                                         ; $6ef0: $84
    ld b, c                                       ; $6ef1: $41
    rst $38                                       ; $6ef2: $ff
    ld b, l                                       ; $6ef3: $45
    ld [hl], $a6                                  ; $6ef4: $36 $a6
    ld [hl], $45                                  ; $6ef6: $36 $45
    ld b, l                                       ; $6ef8: $45
    scf                                           ; $6ef9: $37
    dec a                                         ; $6efa: $3d
    add c                                         ; $6efb: $81
    scf                                           ; $6efc: $37
    ld c, c                                       ; $6efd: $49
    ld h, b                                       ; $6efe: $60
    inc sp                                        ; $6eff: $33
    ldh [$82], a                                  ; $6f00: $e0 $82
    ld b, b                                       ; $6f02: $40
    nop                                           ; $6f03: $00
    ld e, a                                       ; $6f04: $5f
    nop                                           ; $6f05: $00
    push bc                                       ; $6f06: $c5
    push bc                                       ; $6f07: $c5
    jr nz, @+$47                                  ; $6f08: $20 $45

    rrca                                          ; $6f0a: $0f
    ld [hl], $62                                  ; $6f0b: $36 $62
    and a                                         ; $6f0d: $a7
    ld h, [hl]                                    ; $6f0e: $66
    rst $00                                       ; $6f0f: $c7
    inc bc                                        ; $6f10: $03
    rst $30                                       ; $6f11: $f7
    pop bc                                        ; $6f12: $c1
    jp Jump_000_0084                              ; $6f13: $c3 $84 $00


    ld e, a                                       ; $6f16: $5f
    ld a, [hl-]                                   ; $6f17: $3a
    nop                                           ; $6f18: $00
    jp nz, $c19e                                  ; $6f19: $c2 $9e $c1

    pop hl                                        ; $6f1c: $e1
    ld h, a                                       ; $6f1d: $67
    and e                                         ; $6f1e: $a3
    ld l, b                                       ; $6f1f: $68
    cp a                                          ; $6f20: $bf
    ld [c], a                                     ; $6f21: $e2
    ld a, b                                       ; $6f22: $78
    pop bc                                        ; $6f23: $c1
    ld [c], a                                     ; $6f24: $e2
    add d                                         ; $6f25: $82
    nop                                           ; $6f26: $00
    sbc l                                         ; $6f27: $9d
    add d                                         ; $6f28: $82
    ld [c], a                                     ; $6f29: $e2
    nop                                           ; $6f2a: $00
    rst $18                                       ; $6f2b: $df
    add d                                         ; $6f2c: $82
    ld h, c                                       ; $6f2d: $61
    sbc [hl]                                      ; $6f2e: $9e
    ld b, [hl]                                    ; $6f2f: $46
    ld b, d                                       ; $6f30: $42
    rra                                           ; $6f31: $1f
    xor b                                         ; $6f32: $a8
    xor c                                         ; $6f33: $a9
    ld l, h                                       ; $6f34: $6c
    dec [hl]                                      ; $6f35: $35
    dec [hl]                                      ; $6f36: $35
    cp a                                          ; $6f37: $bf
    ld [c], a                                     ; $6f38: $e2
    jp nz, Jump_065_6ae4                          ; $6f39: $c2 $e4 $6a

    pop bc                                        ; $6f3c: $c1
    db $f4                                        ; $6f3d: $f4
    nop                                           ; $6f3e: $00
    and e                                         ; $6f3f: $a3
    nop                                           ; $6f40: $00
    rst $18                                       ; $6f41: $df
    and c                                         ; $6f42: $a1
    jp z, Jump_065_6e60                           ; $6f43: $ca $60 $6e

    ld l, a                                       ; $6f46: $6f
    ld l, h                                       ; $6f47: $6c
    dec [hl]                                      ; $6f48: $35
    rlca                                          ; $6f49: $07
    and e                                         ; $6f4a: $a3
    xor d                                         ; $6f4b: $aa
    xor e                                         ; $6f4c: $ab
    add e                                         ; $6f4d: $83
    jp Jump_000_00c5                              ; $6f4e: $c3 $c5 $00


    ld l, [hl]                                    ; $6f51: $6e
    ld bc, $a400                                  ; $6f52: $01 $00 $a4
    nop                                           ; $6f55: $00
    sbc [hl]                                      ; $6f56: $9e
    ld e, h                                       ; $6f57: $5c
    pop bc                                        ; $6f58: $c1
    jp nz, $e0bf                                  ; $6f59: $c2 $bf $e0

    ld l, h                                       ; $6f5c: $6c

jr_065_6f5d:
    ld l, a                                       ; $6f5d: $6f
    ld l, [hl]                                    ; $6f5e: $6e
    ld b, e                                       ; $6f5f: $43
    jp nz, $829c                                  ; $6f60: $c2 $9c $82

    ldh [$c0], a                                  ; $6f63: $e0 $c0
    inc b                                         ; $6f65: $04
    and c                                         ; $6f66: $a1
    add d                                         ; $6f67: $82
    inc hl                                        ; $6f68: $23
    nop                                           ; $6f69: $00
    rst $18                                       ; $6f6a: $df
    ld b, c                                       ; $6f6b: $41
    jp nz, $e07e                                  ; $6f6c: $c2 $7e $e0

    pop bc                                        ; $6f6f: $c1
    ld [c], a                                     ; $6f70: $e2
    sbc h                                         ; $6f71: $9c
    sbc l                                         ; $6f72: $9d
    jr nc, jr_065_6f7a                            ; $6f73: $30 $05

    ldh [$82], a                                  ; $6f75: $e0 $82
    add sp, $00                                   ; $6f77: $e8 $00
    rst $18                                       ; $6f79: $df

jr_065_6f7a:
    nop                                           ; $6f7a: $00
    call nz, $6e36                                ; $6f7b: $c4 $36 $6e
    add d                                         ; $6f7e: $82
    ld [c], a                                     ; $6f7f: $e2
    ld b, h                                       ; $6f80: $44
    ldh [$4c], a                                  ; $6f81: $e0 $4c
    ld [$0483], sp                                ; $6f83: $08 $83 $04
    inc hl                                        ; $6f86: $23
    and b                                         ; $6f87: $a0
    and b                                         ; $6f88: $a0
    nop                                           ; $6f89: $00
    rst $18                                       ; $6f8a: $df
    rst $38                                       ; $6f8b: $ff
    add b                                         ; $6f8c: $80
    sbc l                                         ; $6f8d: $9d
    dec a                                         ; $6f8e: $3d
    pop bc                                        ; $6f8f: $c1
    ret nz                                        ; $6f90: $c0

    add [hl]                                      ; $6f91: $86
    and c                                         ; $6f92: $a1
    ld a, [bc]                                    ; $6f93: $0a
    pop bc                                        ; $6f94: $c1
    ld [$0485], sp                                ; $6f95: $08 $85 $04
    rst $08                                       ; $6f98: $cf
    nop                                           ; $6f99: $00
    sub h                                         ; $6f9a: $94
    jr jr_065_6f5d                                ; $6f9b: $18 $c0

    sbc a                                         ; $6f9d: $9f
    sbc l                                         ; $6f9e: $9d
    ld [bc], a                                    ; $6f9f: $02
    rst $38                                       ; $6fa0: $ff
    db $e3                                        ; $6fa1: $e3
    sbc a                                         ; $6fa2: $9f
    adc d                                         ; $6fa3: $8a
    add $fc                                       ; $6fa4: $c6 $fc
    db $e3                                        ; $6fa6: $e3
    jp nc, Jump_000_000d                          ; $6fa7: $d2 $0d $00

    sub d                                         ; $6faa: $92
    db $fc                                        ; $6fab: $fc
    ld b, d                                       ; $6fac: $42
    cp $e5                                        ; $6fad: $fe $e5
    nop                                           ; $6faf: $00
    add d                                         ; $6fb0: $82
    jp hl                                         ; $6fb1: $e9


    inc b                                         ; $6fb2: $04
    ld c, l                                       ; $6fb3: $4d
    nop                                           ; $6fb4: $00
    sub e                                         ; $6fb5: $93
    ld a, [hl]                                    ; $6fb6: $7e
    ld hl, $c310                                  ; $6fb7: $21 $10 $c3
    inc c                                         ; $6fba: $0c
    rst $00                                       ; $6fbb: $c7
    ld a, [hl]                                    ; $6fbc: $7e
    push hl                                       ; $6fbd: $e5
    jp nc, Jump_000_030d                          ; $6fbe: $d2 $0d $03

    rst $20                                       ; $6fc1: $e7
    add sp, $00                                   ; $6fc2: $e8 $00
    nop                                           ; $6fc4: $00
    nop                                           ; $6fc5: $00
    pop bc                                        ; $6fc6: $c1
    nop                                           ; $6fc7: $00
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
    nop                                           ; $6fd2: $00
    nop                                           ; $6fd3: $00
    ld bc, $fe80                                  ; $6fd4: $01 $80 $fe
    ldh [rIE], a                                  ; $6fd7: $e0 $ff
    rst $38                                       ; $6fd9: $ff
    rst $38                                       ; $6fda: $ff
    rst $38                                       ; $6fdb: $ff
    rst $38                                       ; $6fdc: $ff
    add sp, $00                                   ; $6fdd: $e8 $00
    nop                                           ; $6fdf: $00
    nop                                           ; $6fe0: $00
    ld [bc], a                                    ; $6fe1: $02
    nop                                           ; $6fe2: $00
    inc l                                         ; $6fe3: $2c
    dec b                                         ; $6fe4: $05
    ld [bc], a                                    ; $6fe5: $02
    ld bc, $052e                                  ; $6fe6: $01 $2e $05
    ld [bc], a                                    ; $6fe9: $02
    ld [bc], a                                    ; $6fea: $02
    add hl, hl                                    ; $6feb: $29
    ld b, $02                                     ; $6fec: $06 $02
    inc bc                                        ; $6fee: $03
    ld [hl+], a                                   ; $6fef: $22
    ld [$0402], sp                                ; $6ff0: $08 $02 $04
    inc hl                                        ; $6ff3: $23
    ld [$0502], sp                                ; $6ff4: $08 $02 $05
    ld sp, $020c                                  ; $6ff7: $31 $0c $02
    ld b, $1d                                     ; $6ffa: $06 $1d
    dec c                                         ; $6ffc: $0d
    ld [bc], a                                    ; $6ffd: $02
    rlca                                          ; $6ffe: $07
    ld hl, $020d                                  ; $6fff: $21 $0d $02
    ld [$0d28], sp                                ; $7002: $08 $28 $0d
    ld [bc], a                                    ; $7005: $02
    add hl, bc                                    ; $7006: $09
    add hl, hl                                    ; $7007: $29
    dec c                                         ; $7008: $0d
    ld [bc], a                                    ; $7009: $02
    ld a, [bc]                                    ; $700a: $0a
    daa                                           ; $700b: $27
    ld c, $02                                     ; $700c: $0e $02
    dec bc                                        ; $700e: $0b
    ld a, [hl+]                                   ; $700f: $2a
    ld c, $02                                     ; $7010: $0e $02
    inc c                                         ; $7012: $0c
    ld l, $0e                                     ; $7013: $2e $0e
    ld [bc], a                                    ; $7015: $02
    dec c                                         ; $7016: $0d
    inc e                                         ; $7017: $1c
    rrca                                          ; $7018: $0f
    ld [bc], a                                    ; $7019: $02
    ld c, $24                                     ; $701a: $0e $24
    rrca                                          ; $701c: $0f
    ld [bc], a                                    ; $701d: $02
    rrca                                          ; $701e: $0f
    jr z, @+$11                                   ; $701f: $28 $0f

    ld [bc], a                                    ; $7021: $02
    db $10                                        ; $7022: $10
    add hl, hl                                    ; $7023: $29
    rrca                                          ; $7024: $0f
    ld [bc], a                                    ; $7025: $02
    ld de, $0f2b                                  ; $7026: $11 $2b $0f
    ld [bc], a                                    ; $7029: $02
    ld [de], a                                    ; $702a: $12
    ld [hl+], a                                   ; $702b: $22
    ld de, $1302                                  ; $702c: $11 $02 $13
    ld h, $1d                                     ; $702f: $26 $1d
    ld [bc], a                                    ; $7031: $02
    inc d                                         ; $7032: $14
    daa                                           ; $7033: $27
    ld e, $02                                     ; $7034: $1e $02
    dec d                                         ; $7036: $15
    jr z, jr_065_7059                             ; $7037: $28 $20

    ld [bc], a                                    ; $7039: $02
    ld d, $29                                     ; $703a: $16 $29
    ld [hl+], a                                   ; $703c: $22
    ld [bc], a                                    ; $703d: $02
    rla                                           ; $703e: $17
    add hl, hl                                    ; $703f: $29

Jump_065_7040:
    ld h, $02                                     ; $7040: $26 $02
    jr jr_065_706b                                ; $7042: $18 $27

    dec hl                                        ; $7044: $2b
    ld [bc], a                                    ; $7045: $02
    add hl, de                                    ; $7046: $19
    add hl, de                                    ; $7047: $19
    jr nc, @+$04                                  ; $7048: $30 $02

    ld a, [de]                                    ; $704a: $1a
    ld h, $30                                     ; $704b: $26 $30
    ld [bc], a                                    ; $704d: $02
    dec de                                        ; $704e: $1b
    rla                                           ; $704f: $17
    ld sp, $1c02                                  ; $7050: $31 $02 $1c
    jr @+$34                                      ; $7053: $18 $32

    ld [bc], a                                    ; $7055: $02
    dec e                                         ; $7056: $1d
    daa                                           ; $7057: $27
    ld [hl-], a                                   ; $7058: $32

jr_065_7059:
    ld [bc], a                                    ; $7059: $02
    ld e, $24                                     ; $705a: $1e $24
    inc [hl]                                      ; $705c: $34
    ld [bc], a                                    ; $705d: $02
    rra                                           ; $705e: $1f
    dec h                                         ; $705f: $25
    inc [hl]                                      ; $7060: $34
    ld [bc], a                                    ; $7061: $02
    jr nz, @+$22                                  ; $7062: $20 $20

    dec [hl]                                      ; $7064: $35
    ld [bc], a                                    ; $7065: $02
    ld hl, $3621                                  ; $7066: $21 $21 $36
    ld [bc], a                                    ; $7069: $02
    ld [hl+], a                                   ; $706a: $22

jr_065_706b:
    rra                                           ; $706b: $1f
    scf                                           ; $706c: $37
    rst $38                                       ; $706d: $ff
    rst $38                                       ; $706e: $ff
    rst $38                                       ; $706f: $ff
    ld a, b                                       ; $7070: $78
    ld [hl], b                                    ; $7071: $70
    and l                                         ; $7072: $a5
    ld [hl], l                                    ; $7073: $75
    ld [hl+], a                                   ; $7074: $22
    ld a, h                                       ; $7075: $7c
    ld b, h                                       ; $7076: $44
    ld a, h                                       ; $7077: $7c
    rra                                           ; $7078: $1f
    ld l, $0e                                     ; $7079: $2e $0e
    ld c, $0e                                     ; $707b: $0e $0e
    ld c, l                                       ; $707d: $4d
    rst $38                                       ; $707e: $ff
    add sp, -$10                                  ; $707f: $e8 $f0
    jp hl                                         ; $7081: $e9


    db $e4                                        ; $7082: $e4
    ldh [$e6], a                                  ; $7083: $e0 $e6
    push hl                                       ; $7085: $e5
    ldh [$0d], a                                  ; $7086: $e0 $0d
    dec c                                         ; $7088: $0d
    ldh [$f5], a                                  ; $7089: $e0 $f5
    ret z                                         ; $708b: $c8

    pop hl                                        ; $708c: $e1
    ld l, [hl]                                    ; $708d: $6e
    ld l, $6e                                     ; $708e: $2e $6e
    ret c                                         ; $7090: $d8

    cp [hl]                                       ; $7091: $be
    ldh [$bd], a                                  ; $7092: $e0 $bd
    ldh [$d9], a                                  ; $7094: $e0 $d9
    ld [c], a                                     ; $7096: $e2
    ld l, $0e                                     ; $7097: $2e $0e
    ldh a, [$e9]                                  ; $7099: $f0 $e9
    ld l, $2e                                     ; $709b: $2e $2e
    ld h, b                                       ; $709d: $60
    and l                                         ; $709e: $a5
    db $e4                                        ; $709f: $e4
    cp l                                          ; $70a0: $bd
    pop hl                                        ; $70a1: $e1
    ldh [$f0], a                                  ; $70a2: $e0 $f0
    sub d                                         ; $70a4: $92
    pop hl                                        ; $70a5: $e1
    pop bc                                        ; $70a6: $c1
    ldh [$4e], a                                  ; $70a7: $e0 $4e
    ld c, [hl]                                    ; $70a9: $4e
    ret nz                                        ; $70aa: $c0

    rst $20                                       ; $70ab: $e7
    pop bc                                        ; $70ac: $c1
    ld l, $f0                                     ; $70ad: $2e $f0
    jp hl                                         ; $70af: $e9


    ret nz                                        ; $70b0: $c0

    ldh a, [$e0]                                  ; $70b1: $f0 $e0
    ld [$e2d0], a                                 ; $70b3: $ea $d0 $e2
    sbc e                                         ; $70b6: $9b
    ldh [$0e], a                                  ; $70b7: $e0 $0e
    ld c, $03                                     ; $70b9: $0e $03
    ld c, [hl]                                    ; $70bb: $4e
    ld c, $f0                                     ; $70bc: $0e $f0
    di                                            ; $70be: $f3
    ld h, $e4                                     ; $70bf: $26 $e4
    ret nz                                        ; $70c1: $c0

    jp hl                                         ; $70c2: $e9


    ret nc                                        ; $70c3: $d0

    ld a, [c]                                     ; $70c4: $f2
    ccf                                           ; $70c5: $3f
    ld [c], a                                     ; $70c6: $e2
    ld hl, sp-$40                                 ; $70c7: $f8 $c0
    cp $f0                                        ; $70c9: $fe $f0
    db $ed                                        ; $70cb: $ed
    dec c                                         ; $70cc: $0d
    ld l, l                                       ; $70cd: $6d
    dec c                                         ; $70ce: $0d
    ld c, l                                       ; $70cf: $4d
    ld l, l                                       ; $70d0: $6d
    ld l, l                                       ; $70d1: $6d
    dec l                                         ; $70d2: $2d
    nop                                           ; $70d3: $00
    dec sp                                        ; $70d4: $3b
    db $e3                                        ; $70d5: $e3
    ldh [$f0], a                                  ; $70d6: $e0 $f0
    ret nz                                        ; $70d8: $c0

    jp hl                                         ; $70d9: $e9


    cp b                                          ; $70da: $b8
    pop bc                                        ; $70db: $c1
    ldh a, [$ec]                                  ; $70dc: $f0 $ec
    pop bc                                        ; $70de: $c1
    ldh [rIE], a                                  ; $70df: $e0 $ff
    pop hl                                        ; $70e1: $e1
    cp l                                          ; $70e2: $bd
    db $e3                                        ; $70e3: $e3
    ldh [$e0], a                                  ; $70e4: $e0 $e0
    ldh a, [$80]                                  ; $70e6: $f0 $80
    ld [$c096], a                                 ; $70e8: $ea $96 $c0
    ldh a, [$ed]                                  ; $70eb: $f0 $ed
    jp nz, Jump_000_0be0                          ; $70ed: $c2 $e0 $0b

    dec bc                                        ; $70f0: $0b
    dec hl                                        ; $70f1: $2b
    ret nz                                        ; $70f2: $c0

    cp l                                          ; $70f3: $bd
    ld [c], a                                     ; $70f4: $e2
    ld a, h                                       ; $70f5: $7c
    pop hl                                        ; $70f6: $e1
    ldh [$ee], a                                  ; $70f7: $e0 $ee
    ret nz                                        ; $70f9: $c0

    xor $ef                                       ; $70fa: $ee $ef
    jp nz, $e7b0                                  ; $70fc: $c2 $b0 $e7

    ld l, l                                       ; $70ff: $6d
    dec c                                         ; $7100: $0d
    rst $38                                       ; $7101: $ff
    ld l, e                                       ; $7102: $6b
    ld l, e                                       ; $7103: $6b
    dec bc                                        ; $7104: $0b
    ld c, e                                       ; $7105: $4b
    ld a, [bc]                                    ; $7106: $0a
    ld c, d                                       ; $7107: $4a
    dec bc                                        ; $7108: $0b
    dec c                                         ; $7109: $0d
    pop bc                                        ; $710a: $c1
    dec c                                         ; $710b: $0d
    ret nz                                        ; $710c: $c0

    db $e3                                        ; $710d: $e3
    ldh [$ec], a                                  ; $710e: $e0 $ec
    ret nc                                        ; $7110: $d0

    db $ec                                        ; $7111: $ec
    xor a                                         ; $7112: $af
    call nz, $e980                                ; $7113: $c4 $80 $e9
    dec hl                                        ; $7116: $2b
    dec hl                                        ; $7117: $2b
    ccf                                           ; $7118: $3f
    dec bc                                        ; $7119: $0b
    dec bc                                        ; $711a: $0b
    ld a, [bc]                                    ; $711b: $0a
    ld a, [bc]                                    ; $711c: $0a
    dec c                                         ; $711d: $0d
    dec bc                                        ; $711e: $0b
    ret nz                                        ; $711f: $c0

    ld [c], a                                     ; $7120: $e2
    ldh [$ed], a                                  ; $7121: $e0 $ed
    add h                                         ; $7123: $84
    pop de                                        ; $7124: $d1
    and c                                         ; $7125: $a1
    adc $a3                                       ; $7126: $ce $a3
    ld l, l                                       ; $7128: $6d
    db $d3                                        ; $7129: $d3
    and l                                         ; $712a: $a5
    cp [hl]                                       ; $712b: $be
    and h                                         ; $712c: $a4
    ldh a, [$e0]                                  ; $712d: $f0 $e0
    jp Jump_000_0ac2                              ; $712f: $c3 $c2 $0a


    rrca                                          ; $7132: $0f
    ld c, d                                       ; $7133: $4a
    ld c, e                                       ; $7134: $4b
    ld l, e                                       ; $7135: $6b
    ld l, e                                       ; $7136: $6b
    ret nz                                        ; $7137: $c0

    ld [c], a                                     ; $7138: $e2
    ccf                                           ; $7139: $3f
    db $e3                                        ; $713a: $e3
    call c, $d0a3                                 ; $713b: $dc $a3 $d0
    jp hl                                         ; $713e: $e9


    add h                                         ; $713f: $84
    pop hl                                        ; $7140: $e1
    pop bc                                        ; $7141: $c1
    cp $e0                                        ; $7142: $fe $e0
    dec c                                         ; $7144: $0d
    ld hl, sp-$5f                                 ; $7145: $f8 $a1
    cp c                                          ; $7147: $b9
    and e                                         ; $7148: $a3
    ldh a, [$e3]                                  ; $7149: $f0 $e3
    add h                                         ; $714b: $84
    jp nz, Jump_065_7b0d                          ; $714c: $c2 $0d $7b

    ld c, d                                       ; $714f: $4a
    ld a, [bc]                                    ; $7150: $0a
    add b                                         ; $7151: $80
    ldh [rOCPD], a                                ; $7152: $e0 $6b
    dec c                                         ; $7154: $0d
    dec bc                                        ; $7155: $0b
    dec l                                         ; $7156: $2d
    db $fd                                        ; $7157: $fd
    ldh [rP1], a                                  ; $7158: $e0 $00
    ld [hl], l                                    ; $715a: $75
    and e                                         ; $715b: $a3
    ret nc                                        ; $715c: $d0

    db $ed                                        ; $715d: $ed
    sbc e                                         ; $715e: $9b
    and e                                         ; $715f: $a3
    ret nz                                        ; $7160: $c0

    ldh [$f9], a                                  ; $7161: $e0 $f9
    and h                                         ; $7163: $a4
    ldh a, [$e5]                                  ; $7164: $f0 $e5
    add h                                         ; $7166: $84
    jp nz, $e008                                  ; $7167: $c2 $08 $e0

    inc b                                         ; $716a: $04
    nop                                           ; $716b: $00
    ldh [$f8], a                                  ; $716c: $e0 $f8
    pop hl                                        ; $716e: $e1
    dec l                                         ; $716f: $2d
    dec sp                                        ; $7170: $3b
    jp nz, $a135                                  ; $7171: $c2 $35 $a1

    ret nc                                        ; $7174: $d0

    db $ed                                        ; $7175: $ed
    ld b, c                                       ; $7176: $41
    and b                                         ; $7177: $a0
    sub a                                         ; $7178: $97
    pop bc                                        ; $7179: $c1
    add b                                         ; $717a: $80
    ld d, h                                       ; $717b: $54
    and b                                         ; $717c: $a0
    push af                                       ; $717d: $f5
    add e                                         ; $717e: $83
    ldh a, [$e4]                                  ; $717f: $f0 $e4
    pop bc                                        ; $7181: $c1
    db $e4                                        ; $7182: $e4
    ret nz                                        ; $7183: $c0

    ld [c], a                                     ; $7184: $e2
    add c                                         ; $7185: $81
    pop hl                                        ; $7186: $e1
    ld a, [hl]                                    ; $7187: $7e
    call nz, Call_000_300e                        ; $7188: $c4 $0e $30
    ret nc                                        ; $718b: $d0

    db $ed                                        ; $718c: $ed
    add a                                         ; $718d: $87
    pop hl                                        ; $718e: $e1
    dec e                                         ; $718f: $1d
    pop bc                                        ; $7190: $c1
    ldh a, [$ec]                                  ; $7191: $f0 $ec
    dec c                                         ; $7193: $0d
    ld l, l                                       ; $7194: $6d
    adc h                                         ; $7195: $8c
    ret nz                                        ; $7196: $c0

    jp z, $cec0                                   ; $7197: $ca $c0 $ce

    nop                                           ; $719a: $00
    jp nz, $2d0d                                  ; $719b: $c2 $0d $2d

    dec l                                         ; $719e: $2d
    rst $30                                       ; $719f: $f7
    and b                                         ; $71a0: $a0
    dec a                                         ; $71a1: $3d
    pop bc                                        ; $71a2: $c1
    ld c, $0e                                     ; $71a3: $0e $0e
    nop                                           ; $71a5: $00
    ret nc                                        ; $71a6: $d0

    db $ed                                        ; $71a7: $ed
    adc a                                         ; $71a8: $8f
    add c                                         ; $71a9: $81
    add [hl]                                      ; $71aa: $86
    and c                                         ; $71ab: $a1
    push af                                       ; $71ac: $f5
    add c                                         ; $71ad: $81
    ld [hl], l                                    ; $71ae: $75
    add b                                         ; $71af: $80
    res 0, b                                      ; $71b0: $cb $80
    ldh a, [$e2]                                  ; $71b2: $f0 $e2
    ld [$02c0], sp                                ; $71b4: $08 $c0 $02
    rst $00                                       ; $71b7: $c7
    ld [c], a                                     ; $71b8: $e2
    dec bc                                        ; $71b9: $0b
    cp [hl]                                       ; $71ba: $be
    and e                                         ; $71bb: $a3
    cp d                                          ; $71bc: $ba
    db $e3                                        ; $71bd: $e3
    db $dd                                        ; $71be: $dd
    and e                                         ; $71bf: $a3
    ret nc                                        ; $71c0: $d0

    ldh a, [$5d]                                  ; $71c1: $f0 $5d
    add e                                         ; $71c3: $83
    ld d, c                                       ; $71c4: $51
    add c                                         ; $71c5: $81
    adc h                                         ; $71c6: $8c
    ldh a, [$e5]                                  ; $71c7: $f0 $e5
    add c                                         ; $71c9: $81
    ldh [$0b], a                                  ; $71ca: $e0 $0b
    dec bc                                        ; $71cc: $0b
    jp $bce9                                      ; $71cd: $c3 $e9 $bc


    and l                                         ; $71d0: $a5
    ret nc                                        ; $71d1: $d0

    db $ed                                        ; $71d2: $ed
    ld l, l                                       ; $71d3: $6d
    nop                                           ; $71d4: $00
    rst $38                                       ; $71d5: $ff
    add sp, -$4c                                  ; $71d6: $e8 $b4
    add c                                         ; $71d8: $81
    ldh a, [$e3]                                  ; $71d9: $f0 $e3
    push bc                                       ; $71db: $c5
    pop bc                                        ; $71dc: $c1
    pop bc                                        ; $71dd: $c1
    db $ed                                        ; $71de: $ed
    cp h                                          ; $71df: $bc
    and c                                         ; $71e0: $a1
    db $f4                                        ; $71e1: $f4
    ld h, c                                       ; $71e2: $61
    ret nc                                        ; $71e3: $d0

    db $eb                                        ; $71e4: $eb
    ld a, b                                       ; $71e5: $78
    adc $e2                                       ; $71e6: $ce $e2
    jp nc, $c3c0                                  ; $71e8: $d2 $c0 $c3

    pop hl                                        ; $71eb: $e1
    ld l, $4e                                     ; $71ec: $2e $4e
    ld c, $4e                                     ; $71ee: $0e $4e
    cp [hl]                                       ; $71f0: $be
    pop hl                                        ; $71f1: $e1
    ret nz                                        ; $71f2: $c0

    call z, $c262                                 ; $71f3: $cc $62 $c2
    xor $c0                                       ; $71f6: $ee $c0
    add sp, -$30                                  ; $71f8: $e8 $d0
    add sp, -$3c                                  ; $71fa: $e8 $c4
    and b                                         ; $71fc: $a0
    ret nz                                        ; $71fd: $c0

    push hl                                       ; $71fe: $e5
    ld l, [hl]                                    ; $71ff: $6e
    ld l, [hl]                                    ; $7200: $6e
    jr nz, @-$3f                                  ; $7201: $20 $bf

    ldh [$f0], a                                  ; $7203: $e0 $f0
    pop hl                                        ; $7205: $e1
    ld b, $a3                                     ; $7206: $06 $a3
    rlca                                          ; $7208: $07
    add sp, -$04                                  ; $7209: $e8 $fc
    call nz, $c06d                                ; $720b: $c4 $6d $c0
    db $eb                                        ; $720e: $eb
    ret nc                                        ; $720f: $d0

    and $26                                       ; $7210: $e6 $26
    add b                                         ; $7212: $80
    pop hl                                        ; $7213: $e1
    ld l, $6e                                     ; $7214: $2e $6e
    ld [hl], $85                                  ; $7216: $36 $85
    add b                                         ; $7218: $80
    pop hl                                        ; $7219: $e1

jr_065_721a:
    ld c, l                                       ; $721a: $4d
    add a                                         ; $721b: $87
    call nz, $c17b                                ; $721c: $c4 $7b $c1
    db $10                                        ; $721f: $10
    inc bc                                        ; $7220: $03
    and c                                         ; $7221: $a1
    pop bc                                        ; $7222: $c1
    db $e4                                        ; $7223: $e4
    jr nz, jr_065_7289                            ; $7224: $20 $63

    ret nc                                        ; $7226: $d0

    db $ed                                        ; $7227: $ed
    dec c                                         ; $7228: $0d
    dec bc                                        ; $7229: $0b
    pop hl                                        ; $722a: $e1
    or $67                                        ; $722b: $f6 $67
    ldh a, [$e2]                                  ; $722d: $f0 $e2
    ld c, b                                       ; $722f: $48
    cp a                                          ; $7230: $bf
    push hl                                       ; $7231: $e5
    ret nz                                        ; $7232: $c0

    db $e3                                        ; $7233: $e3
    jr c, @-$3d                                   ; $7234: $38 $c1

    dec l                                         ; $7236: $2d
    inc l                                         ; $7237: $2c
    and d                                         ; $7238: $a2
    inc l                                         ; $7239: $2c
    ld h, b                                       ; $723a: $60
    ld c, [hl]                                    ; $723b: $4e
    call z, $d8c2                                 ; $723c: $cc $c2 $d8
    ret nc                                        ; $723f: $d0

    add sp, $3d                                   ; $7240: $e8 $3d
    ld [c], a                                     ; $7242: $e2
    ldh a, [$ed]                                  ; $7243: $f0 $ed
    ld c, l                                       ; $7245: $4d
    dec l                                         ; $7246: $2d
    inc b                                         ; $7247: $04
    jp nz, Jump_000_2b0b                          ; $7248: $c2 $0b $2b

    add c                                         ; $724b: $81
    ld c, e                                       ; $724c: $4b
    halt                                          ; $724d: $76
    ret nz                                        ; $724e: $c0

    ret nz                                        ; $724f: $c0

    add c                                         ; $7250: $81
    nop                                           ; $7251: $00
    and h                                         ; $7252: $a4
    add b                                         ; $7253: $80
    pop hl                                        ; $7254: $e1
    adc a                                         ; $7255: $8f
    pop hl                                        ; $7256: $e1
    sub b                                         ; $7257: $90
    add sp, $2d                                   ; $7258: $e8 $2d
    ld l, b                                       ; $725a: $68
    or b                                          ; $725b: $b0
    db $ec                                        ; $725c: $ec
    ldh a, [$e0]                                  ; $725d: $f0 $e0
    rst $08                                       ; $725f: $cf
    ld b, e                                       ; $7260: $43
    dec bc                                        ; $7261: $0b
    add c                                         ; $7262: $81
    add c                                         ; $7263: $81
    ld l, e                                       ; $7264: $6b
    dec hl                                        ; $7265: $2b
    ld a, a                                       ; $7266: $7f
    ld [c], a                                     ; $7267: $e2
    ld [$61ff], sp                                ; $7268: $08 $ff $61
    cp e                                          ; $726b: $bb
    and c                                         ; $726c: $a1
    xor h                                         ; $726d: $ac
    ld b, b                                       ; $726e: $40
    dec l                                         ; $726f: $2d
    call z, Call_065_46c1                         ; $7270: $cc $c1 $46
    ld h, [hl]                                    ; $7273: $66
    ld h, c                                       ; $7274: $61
    ld h, b                                       ; $7275: $60
    ld [hl], b                                    ; $7276: $70
    ld [$f024], a                                 ; $7277: $ea $24 $f0
    ld [c], a                                     ; $727a: $e2
    ret nz                                        ; $727b: $c0

    and $6b                                       ; $727c: $e6 $6b
    rst $38                                       ; $727e: $ff
    jp nz, $8200                                  ; $727f: $c2 $00 $82

jr_065_7282:
    dec l                                         ; $7282: $2d
    ret nz                                        ; $7283: $c0

    and $d0                                       ; $7284: $e6 $d0
    db $ec                                        ; $7286: $ec
    ld l, b                                       ; $7287: $68
    inc b                                         ; $7288: $04

jr_065_7289:
    push bc                                       ; $7289: $c5
    ldh a, [$e8]                                  ; $728a: $f0 $e8
    add b                                         ; $728c: $80
    push hl                                       ; $728d: $e5
    dec c                                         ; $728e: $0d
    add e                                         ; $728f: $83
    ld h, b                                       ; $7290: $60
    dec bc                                        ; $7291: $0b
    dec hl                                        ; $7292: $2b
    cp a                                          ; $7293: $bf
    ld h, c                                       ; $7294: $61
    add b                                         ; $7295: $80
    cp $63                                        ; $7296: $fe $63
    jr jr_065_721a                                ; $7298: $18 $80

    ret nc                                        ; $729a: $d0

    db $ec                                        ; $729b: $ec
    ret z                                         ; $729c: $c8

    and e                                         ; $729d: $a3
    cp [hl]                                       ; $729e: $be
    call nz, $e5b3                                ; $729f: $c4 $b3 $e5
    cp l                                          ; $72a2: $bd
    and d                                         ; $72a3: $a2
    ld l, l                                       ; $72a4: $6d
    inc e                                         ; $72a5: $1c
    ret nz                                        ; $72a6: $c0

    add d                                         ; $72a7: $82
    ld a, d                                       ; $72a8: $7a
    and b                                         ; $72a9: $a0
    dec bc                                        ; $72aa: $0b
    ld c, d                                       ; $72ab: $4a
    ld c, d                                       ; $72ac: $4a
    cp [hl]                                       ; $72ad: $be
    ld h, l                                       ; $72ae: $65
    ret nz                                        ; $72af: $c0

    db $e3                                        ; $72b0: $e3
    ret nc                                        ; $72b1: $d0

    db $eb                                        ; $72b2: $eb
    nop                                           ; $72b3: $00
    dec c                                         ; $72b4: $0d
    ld b, b                                       ; $72b5: $40
    rst $00                                       ; $72b6: $c7
    and b                                         ; $72b7: $a0
    adc a                                         ; $72b8: $8f
    add b                                         ; $72b9: $80
    ld e, h                                       ; $72ba: $5c
    add b                                         ; $72bb: $80
    rst $10                                       ; $72bc: $d7
    add b                                         ; $72bd: $80
    ld [hl], d                                    ; $72be: $72
    jr nz, jr_065_7282                            ; $72bf: $20 $c1

    db $e4                                        ; $72c1: $e4
    ld b, b                                       ; $72c2: $40
    add c                                         ; $72c3: $81
    call $c06b                                    ; $72c4: $cd $6b $c0
    pop hl                                        ; $72c7: $e1
    dec bc                                        ; $72c8: $0b
    ld a, [bc]                                    ; $72c9: $0a
    inc a                                         ; $72ca: $3c
    add b                                         ; $72cb: $80
    ld b, c                                       ; $72cc: $41
    ldh [$2d], a                                  ; $72cd: $e0 $2d
    dec l                                         ; $72cf: $2d
    ld bc, $720e                                  ; $72d0: $01 $0e $72
    ld b, b                                       ; $72d3: $40
    ret nc                                        ; $72d4: $d0

    db $ec                                        ; $72d5: $ec
    rlca                                          ; $72d6: $07
    call nz, $a27d                                ; $72d7: $c4 $7d $a2
    inc bc                                        ; $72da: $03
    call nz, $c12e                                ; $72db: $c4 $2e $c1
    inc bc                                        ; $72de: $03
    jp nz, $bf00                                  ; $72df: $c2 $00 $bf

    ret nz                                        ; $72e2: $c0

    ld a, [$3b80]                                 ; $72e3: $fa $80 $3b
    ldh [$fc], a                                  ; $72e6: $e0 $fc
    jp $c1fd                                      ; $72e8: $c3 $fd $c1


    ret nc                                        ; $72eb: $d0

    xor $3b                                       ; $72ec: $ee $3b
    and e                                         ; $72ee: $a3
    inc a                                         ; $72ef: $3c
    add b                                         ; $72f0: $80
    add $b5                                       ; $72f1: $c6 $b5
    ldh [$2e], a                                  ; $72f3: $e0 $2e
    ld c, [hl]                                    ; $72f5: $4e
    pop af                                        ; $72f6: $f1
    add d                                         ; $72f7: $82
    ld b, l                                       ; $72f8: $45
    ld b, d                                       ; $72f9: $42
    ld bc, $0bc6                                  ; $72fa: $01 $c6 $0b
    dec c                                         ; $72fd: $0d
    nop                                           ; $72fe: $00
    cp $60                                        ; $72ff: $fe $60
    cp h                                          ; $7301: $bc
    jp nz, Jump_065_407a                          ; $7302: $c2 $7a $40

    ret nc                                        ; $7305: $d0

    rst $28                                       ; $7306: $ef
    ret nz                                        ; $7307: $c0

    db $e4                                        ; $7308: $e4
    ld b, h                                       ; $7309: $44
    pop hl                                        ; $730a: $e1
    or h                                          ; $730b: $b4
    nop                                           ; $730c: $00
    rla                                           ; $730d: $17
    add c                                         ; $730e: $81
    db $ec                                        ; $730f: $ec
    inc bc                                        ; $7310: $03
    ld h, c                                       ; $7311: $61
    ld b, $42                                     ; $7312: $06 $42
    dec hl                                        ; $7314: $2b
    dec bc                                        ; $7315: $0b
    ld b, d                                       ; $7316: $42
    ld h, c                                       ; $7317: $61
    ld c, e                                       ; $7318: $4b
    ld l, e                                       ; $7319: $6b
    dec hl                                        ; $731a: $2b
    and e                                         ; $731b: $a3
    ld a, [bc]                                    ; $731c: $0a
    ld a, [bc]                                    ; $731d: $0a
    ret nz                                        ; $731e: $c0

    db $e3                                        ; $731f: $e3
    rst $30                                       ; $7320: $f7
    ld h, c                                       ; $7321: $61
    ret nc                                        ; $7322: $d0

    db $ec                                        ; $7323: $ec
    dec l                                         ; $7324: $2d
    cp e                                          ; $7325: $bb
    add [hl]                                      ; $7326: $86
    ld c, $c0                                     ; $7327: $0e $c0
    push af                                       ; $7329: $f5
    ldh [$64], a                                  ; $732a: $e0 $64
    and e                                         ; $732c: $a3
    adc b                                         ; $732d: $88
    ld [hl+], a                                   ; $732e: $22
    ld b, h                                       ; $732f: $44
    db $e3                                        ; $7330: $e3
    jp nz, $c240                                  ; $7331: $c2 $40 $c2

    ldh [$2a], a                                  ; $7334: $e0 $2a
    ld c, e                                       ; $7336: $4b
    inc b                                         ; $7337: $04
    ld a, [hl]                                    ; $7338: $7e
    ld h, c                                       ; $7339: $61
    or a                                          ; $733a: $b7
    ld h, c                                       ; $733b: $61
    ld l, l                                       ; $733c: $6d
    ret nc                                        ; $733d: $d0

    db $ed                                        ; $733e: $ed
    ld c, d                                       ; $733f: $4a
    pop hl                                        ; $7340: $e1
    ld c, e                                       ; $7341: $4b
    add d                                         ; $7342: $82
    add b                                         ; $7343: $80
    pop hl                                        ; $7344: $e1

jr_065_7345:
    ret nz                                        ; $7345: $c0

    rst $20                                       ; $7346: $e7
    inc e                                         ; $7347: $1c
    adc b                                         ; $7348: $88
    ld hl, $e283                                  ; $7349: $21 $83 $e2
    ld a, [bc]                                    ; $734c: $0a
    ld a, [bc]                                    ; $734d: $0a
    ld c, e                                       ; $734e: $4b
    pop bc                                        ; $734f: $c1
    ldh [$f2], a                                  ; $7350: $e0 $f2
    ld h, b                                       ; $7352: $60
    ld [hl], l                                    ; $7353: $75
    ld [hl+], a                                   ; $7354: $22
    add b                                         ; $7355: $80
    ld sp, hl                                     ; $7356: $f9
    ld b, b                                       ; $7357: $40
    ret nc                                        ; $7358: $d0

    db $ec                                        ; $7359: $ec
    jr nc, jr_065_7365                            ; $735a: $30 $09

    inc b                                         ; $735c: $04
    ld [c], a                                     ; $735d: $e2
    rst $00                                       ; $735e: $c7
    inc h                                         ; $735f: $24
    add [hl]                                      ; $7360: $86
    jr nz, @+$48                                  ; $7361: $20 $46

    and d                                         ; $7363: $a2
    ld c, d                                       ; $7364: $4a

jr_065_7365:
    inc bc                                        ; $7365: $03
    ld a, [bc]                                    ; $7366: $0a
    ld c, e                                       ; $7367: $4b
    ld a, a                                       ; $7368: $7f
    and b                                         ; $7369: $a0
    ld b, c                                       ; $736a: $41
    db $e4                                        ; $736b: $e4
    ld a, [hl]                                    ; $736c: $7e
    add b                                         ; $736d: $80
    ret nc                                        ; $736e: $d0

    jp hl                                         ; $736f: $e9


    sbc a                                         ; $7370: $9f
    ld bc, $0930                                  ; $7371: $01 $30 $09
    ld c, b                                       ; $7374: $48
    ld [c], a                                     ; $7375: $e2
    and c                                         ; $7376: $a1
    adc c                                         ; $7377: $89
    ld [hl+], a                                   ; $7378: $22
    dec b                                         ; $7379: $05
    pop bc                                        ; $737a: $c1
    dec bc                                        ; $737b: $0b
    push bc                                       ; $737c: $c5
    jr nz, jr_065_7345                            ; $737d: $20 $c6

    ret nz                                        ; $737f: $c0

    ld l, e                                       ; $7380: $6b
    jp Jump_000_04c2                              ; $7381: $c3 $c2 $04


    ld b, c                                       ; $7384: $41
    db $e3                                        ; $7385: $e3
    ld d, e                                       ; $7386: $53
    ret nz                                        ; $7387: $c0

    ld c, $d0                                     ; $7388: $0e $d0
    jp hl                                         ; $738a: $e9


    dec bc                                        ; $738b: $0b
    ld h, d                                       ; $738c: $62
    jr nc, @+$0a                                  ; $738d: $30 $08

    inc b                                         ; $738f: $04
    ret nz                                        ; $7390: $c0

    inc b                                         ; $7391: $04
    db $e3                                        ; $7392: $e3
    nop                                           ; $7393: $00
    ld b, d                                       ; $7394: $42
    db $e4                                        ; $7395: $e4
    call nz, $bba1                                ; $7396: $c4 $a1 $bb
    ld b, e                                       ; $7399: $43
    cp a                                          ; $739a: $bf
    ld b, d                                       ; $739b: $42
    sbc e                                         ; $739c: $9b
    ld hl, $60da                                  ; $739d: $21 $da $60
    ret nc                                        ; $73a0: $d0

    rst $20                                       ; $73a1: $e7
    jr nc, jr_065_73b1                            ; $73a2: $30 $0d

    nop                                           ; $73a4: $00
    add b                                         ; $73a5: $80
    ld [c], a                                     ; $73a6: $e2
    pop bc                                        ; $73a7: $c1
    ld [$e145], a                                 ; $73a8: $ea $45 $e1
    xor e                                         ; $73ab: $ab
    and b                                         ; $73ac: $a0
    or $41                                        ; $73ad: $f6 $41
    ld b, b                                       ; $73af: $40
    add d                                         ; $73b0: $82

jr_065_73b1:
    ret nc                                        ; $73b1: $d0

    db $eb                                        ; $73b2: $eb
    jr nc, jr_065_73c2                            ; $73b3: $30 $0d

    inc b                                         ; $73b5: $04
    inc b                                         ; $73b6: $04

jr_065_73b7:
    jp nz, $63c9                                  ; $73b7: $c2 $c9 $63

    dec bc                                        ; $73ba: $0b
    add a                                         ; $73bb: $87
    and c                                         ; $73bc: $a1
    inc b                                         ; $73bd: $04
    jr nz, @+$45                                  ; $73be: $20 $43

    ld b, l                                       ; $73c0: $45
    add h                                         ; $73c1: $84

jr_065_73c2:
    ld h, c                                       ; $73c2: $61
    ld d, b                                       ; $73c3: $50
    inc c                                         ; $73c4: $0c
    jr nz, jr_065_73b7                            ; $73c5: $20 $f0

    db $ed                                        ; $73c7: $ed
    or [hl]                                       ; $73c8: $b6
    ld h, c                                       ; $73c9: $61
    ld e, l                                       ; $73ca: $5d
    ld h, d                                       ; $73cb: $62
    jp $c842                                      ; $73cc: $c3 $42 $c8


    nop                                           ; $73cf: $00
    dec hl                                        ; $73d0: $2b
    rst $38                                       ; $73d1: $ff
    ldh [rSB], a                                  ; $73d2: $e0 $01
    and c                                         ; $73d4: $a1
    ret nz                                        ; $73d5: $c0

    ld l, a                                       ; $73d6: $6f
    pop hl                                        ; $73d7: $e1
    inc b                                         ; $73d8: $04
    ld b, d                                       ; $73d9: $42
    ret nc                                        ; $73da: $d0

    db $ed                                        ; $73db: $ed
    ret nz                                        ; $73dc: $c0

    db $eb                                        ; $73dd: $eb
    jr nz, @-$7c                                  ; $73de: $20 $82

    add b                                         ; $73e0: $80
    push hl                                       ; $73e1: $e5
    dec c                                         ; $73e2: $0d
    ld c, e                                       ; $73e3: $4b
    nop                                           ; $73e4: $00
    pop bc                                        ; $73e5: $c1
    pop hl                                        ; $73e6: $e1
    ld b, b                                       ; $73e7: $40
    ldh [rP1], a                                  ; $73e8: $e0 $00
    ld b, h                                       ; $73ea: $44
    add d                                         ; $73eb: $82
    inc hl                                        ; $73ec: $23
    ret nc                                        ; $73ed: $d0

    db $ec                                        ; $73ee: $ec
    ldh a, [$ed]                                  ; $73ef: $f0 $ed
    add h                                         ; $73f1: $84
    and e                                         ; $73f2: $a3
    adc h                                         ; $73f3: $8c
    jr nz, jr_065_73f6                            ; $73f4: $20 $00

jr_065_73f6:
    inc b                                         ; $73f6: $04
    add c                                         ; $73f7: $81
    add b                                         ; $73f8: $80
    pop bc                                        ; $73f9: $c1
    nop                                           ; $73fa: $00
    pop hl                                        ; $73fb: $e1
    inc bc                                        ; $73fc: $03
    ld c, b                                       ; $73fd: $48
    ld [bc], a                                    ; $73fe: $02
    ld [hl+], a                                   ; $73ff: $22
    ret nz                                        ; $7400: $c0

    ld [$0e30], a                                 ; $7401: $ea $30 $0e
    add hl, hl                                    ; $7404: $29
    ld bc, $bf40                                  ; $7405: $01 $40 $bf
    pop hl                                        ; $7408: $e1
    adc c                                         ; $7409: $89
    ld h, b                                       ; $740a: $60
    push bc                                       ; $740b: $c5
    add c                                         ; $740c: $81
    ld b, e                                       ; $740d: $43
    ld h, b                                       ; $740e: $60
    add d                                         ; $740f: $82
    add hl, hl                                    ; $7410: $29
    ret nc                                        ; $7411: $d0

    rst $28                                       ; $7412: $ef
    ld l, $30                                     ; $7413: $2e $30
    dec c                                         ; $7415: $0d
    inc b                                         ; $7416: $04
    inc l                                         ; $7417: $2c
    ld [bc], a                                    ; $7418: $02
    ld d, c                                       ; $7419: $51
    nop                                           ; $741a: $00
    ld l, e                                       ; $741b: $6b
    ret                                           ; $741c: $c9


    and b                                         ; $741d: $a0
    inc b                                         ; $741e: $04
    and b                                         ; $741f: $a0
    ret nz                                        ; $7420: $c0

    db $ed                                        ; $7421: $ed
    ld a, a                                       ; $7422: $7f
    inc hl                                        ; $7423: $23
    ret nc                                        ; $7424: $d0

    add sp, -$18                                  ; $7425: $e8 $e8
    jr nc, @+$0f                                  ; $7427: $30 $0d

    inc h                                         ; $7429: $24
    ld bc, $418a                                  ; $742a: $01 $8a $41
    ld l, e                                       ; $742d: $6b
    ld [$0b60], sp                                ; $742e: $08 $60 $0b
    ld c, e                                       ; $7431: $4b
    ld c, e                                       ; $7432: $4b
    nop                                           ; $7433: $00
    ld bc, $4127                                  ; $7434: $01 $27 $41
    pop bc                                        ; $7437: $c1
    ld h, $02                                     ; $7438: $26 $02
    ret nc                                        ; $743a: $d0

    db $eb                                        ; $743b: $eb
    jr nc, @+$10                                  ; $743c: $30 $0e

    and a                                         ; $743e: $a7
    and c                                         ; $743f: $a1
    add c                                         ; $7440: $81
    ld hl, $c27e                                  ; $7441: $21 $7e $c2
    nop                                           ; $7444: $00
    add c                                         ; $7445: $81
    pop af                                        ; $7446: $f1
    ret nc                                        ; $7447: $d0

    db $ec                                        ; $7448: $ec
    jr nc, jr_065_7457                            ; $7449: $30 $0c

    call nz, Call_000_0082                        ; $744b: $c4 $82 $00
    ld hl, $e280                                  ; $744e: $21 $80 $e2
    ld bc, $02e7                                  ; $7451: $01 $e7 $02
    ld b, e                                       ; $7454: $43
    ret nz                                        ; $7455: $c0

    rrca                                          ; $7456: $0f

jr_065_7457:
    and c                                         ; $7457: $a1
    ret nc                                        ; $7458: $d0

    db $eb                                        ; $7459: $eb
    jr nc, @+$0f                                  ; $745a: $30 $0d

    and [hl]                                      ; $745c: $a6
    ld bc, $2150                                  ; $745d: $01 $50 $21
    ld [$4b80], sp                                ; $7460: $08 $80 $4b
    ld l, e                                       ; $7463: $6b
    nop                                           ; $7464: $00
    ld b, c                                       ; $7465: $41
    and $c3                                       ; $7466: $e6 $c3
    jr nz, jr_065_73f6                            ; $7468: $20 $8c

    inc bc                                        ; $746a: $03
    ret nc                                        ; $746b: $d0

jr_065_746c:
    xor $30                                       ; $746c: $ee $30
    ld c, $6c                                     ; $746e: $0e $6c
    ld bc, $6343                                  ; $7470: $01 $43 $63
    ld b, l                                       ; $7473: $45
    ld h, c                                       ; $7474: $61
    nop                                           ; $7475: $00
    inc b                                         ; $7476: $04
    rst $20                                       ; $7477: $e7
    ld c, h                                       ; $7478: $4c
    inc bc                                        ; $7479: $03
    cp a                                          ; $747a: $bf
    ld [hl+], a                                   ; $747b: $22
    ret nc                                        ; $747c: $d0

    ld [$0c30], a                                 ; $747d: $ea $30 $0c
    ld b, e                                       ; $7480: $43
    add l                                         ; $7481: $85
    add [hl]                                      ; $7482: $86
    ld b, e                                       ; $7483: $43
    ld b, c                                       ; $7484: $41
    and d                                         ; $7485: $a2
    nop                                           ; $7486: $00
    ld b, b                                       ; $7487: $40
    and c                                         ; $7488: $a1
    ret nz                                        ; $7489: $c0

    db $eb                                        ; $748a: $eb
    ret nc                                        ; $748b: $d0

    add sp, $4e                                   ; $748c: $e8 $4e
    ld c, b                                       ; $748e: $48
    ccf                                           ; $748f: $3f
    ld b, h                                       ; $7490: $44
    rst $00                                       ; $7491: $c7
    inc b                                         ; $7492: $04
    add d                                         ; $7493: $82
    add e                                         ; $7494: $83
    ld b, a                                       ; $7495: $47
    and c                                         ; $7496: $a1
    add b                                         ; $7497: $80
    rst $18                                       ; $7498: $df
    db $ed                                        ; $7499: $ed
    rst $08                                       ; $749a: $cf
    ld [$e4cd], a                                 ; $749b: $ea $cd $e4
    ld sp, $fd05                                  ; $749e: $31 $05 $fd
    jr nz, jr_065_746c                            ; $74a1: $20 $c9

    ld b, l                                       ; $74a3: $45
    ld b, $41                                     ; $74a4: $06 $41
    dec l                                         ; $74a6: $2d
    nop                                           ; $74a7: $00
    ret nz                                        ; $74a8: $c0

    db $e3                                        ; $74a9: $e3
    ld d, b                                       ; $74aa: $50
    inc bc                                        ; $74ab: $03
    rst $18                                       ; $74ac: $df
    push hl                                       ; $74ad: $e5
    ldh a, [$ea]                                  ; $74ae: $f0 $ea
    ld b, b                                       ; $74b0: $40
    ld b, $31                                     ; $74b1: $06 $31
    ld b, $c1                                     ; $74b3: $06 $c1
    jp $e5ff                                      ; $74b5: $c3 $ff $e5


    add b                                         ; $74b8: $80
    adc l                                         ; $74b9: $8d
    ld b, c                                       ; $74ba: $41
    ret nz                                        ; $74bb: $c0

    db $e4                                        ; $74bc: $e4
    rst $18                                       ; $74bd: $df
    push hl                                       ; $74be: $e5
    ldh a, [$f1]                                  ; $74bf: $f0 $f1
    ld sp, $4408                                  ; $74c1: $31 $08 $44
    ld [bc], a                                    ; $74c4: $02
    ret nz                                        ; $74c5: $c0

    and $0b                                       ; $74c6: $e6 $0b
    db $10                                        ; $74c8: $10
    ret nz                                        ; $74c9: $c0

    db $e4                                        ; $74ca: $e4
    rst $18                                       ; $74cb: $df
    jp hl                                         ; $74cc: $e9


    ldh a, [$ec]                                  ; $74cd: $f0 $ec
    ld [hl], c                                    ; $74cf: $71
    inc c                                         ; $74d0: $0c
    ld l, l                                       ; $74d1: $6d
    ld [hl], c                                    ; $74d2: $71
    and b                                         ; $74d3: $a0
    adc $60                                       ; $74d4: $ce $60
    dec a                                         ; $74d6: $3d
    push hl                                       ; $74d7: $e5
    nop                                           ; $74d8: $00
    ld [hl-], a                                   ; $74d9: $32
    ret nz                                        ; $74da: $c0

    ld [hl+], a                                   ; $74db: $22
    inc h                                         ; $74dc: $24
    ret nc                                        ; $74dd: $d0

    jp hl                                         ; $74de: $e9


    ld b, b                                       ; $74df: $40
    add hl, bc                                    ; $74e0: $09
    ld [hl], c                                    ; $74e1: $71
    ld a, [bc]                                    ; $74e2: $0a
    ld a, [hl]                                    ; $74e3: $7e
    ld [hl+], a                                   ; $74e4: $22
    inc a                                         ; $74e5: $3c
    ldh [$85], a                                  ; $74e6: $e0 $85
    inc hl                                        ; $74e8: $23
    ld b, $7e                                     ; $74e9: $06 $7e
    ld h, c                                       ; $74eb: $61
    ld c, l                                       ; $74ec: $4d
    dec l                                         ; $74ed: $2d
    ret nc                                        ; $74ee: $d0

    ldh a, [$c0]                                  ; $74ef: $f0 $c0
    jp hl                                         ; $74f1: $e9


    ld e, $e1                                     ; $74f2: $1e $e1
    and c                                         ; $74f4: $a1
    jp hl                                         ; $74f5: $e9


    db $fc                                        ; $74f6: $fc
    and b                                         ; $74f7: $a0
    nop                                           ; $74f8: $00
    cp a                                          ; $74f9: $bf
    pop hl                                        ; $74fa: $e1
    rst $38                                       ; $74fb: $ff
    ld b, h                                       ; $74fc: $44
    ld a, $e3                                     ; $74fd: $3e $e3
    ret nc                                        ; $74ff: $d0

    db $ed                                        ; $7500: $ed
    ld b, b                                       ; $7501: $40
    add hl, bc                                    ; $7502: $09
    ret nz                                        ; $7503: $c0

    ld [$c393], a                                 ; $7504: $ea $93 $c3
    ld a, [hl]                                    ; $7507: $7e
    ld b, c                                       ; $7508: $41
    nop                                           ; $7509: $00
    dec a                                         ; $750a: $3d
    ld [c], a                                     ; $750b: $e2
    cp c                                          ; $750c: $b9
    pop hl                                        ; $750d: $e1
    ret nc                                        ; $750e: $d0

    pop af                                        ; $750f: $f1
    ret nz                                        ; $7510: $c0

    jp hl                                         ; $7511: $e9


    or c                                          ; $7512: $b1
    db $ec                                        ; $7513: $ec
    ret nz                                        ; $7514: $c0

    rst $20                                       ; $7515: $e7
    cp l                                          ; $7516: $bd
    ld b, h                                       ; $7517: $44
    ret nc                                        ; $7518: $d0

    pop af                                        ; $7519: $f1
    nop                                           ; $751a: $00
    ret nz                                        ; $751b: $c0

    and $e8                                       ; $751c: $e6 $e8
    and e                                         ; $751e: $a3
    cp b                                          ; $751f: $b8
    inc b                                         ; $7520: $04
    ret c                                         ; $7521: $d8

    and [hl]                                      ; $7522: $a6
    push af                                       ; $7523: $f5
    ld b, b                                       ; $7524: $40
    cp [hl]                                       ; $7525: $be
    ld b, d                                       ; $7526: $42
    cp l                                          ; $7527: $bd
    ld h, d                                       ; $7528: $62
    db $ec                                        ; $7529: $ec
    ld [bc], a                                    ; $752a: $02
    add b                                         ; $752b: $80
    jp nz, $4ea9                                  ; $752c: $c2 $a9 $4e

    inc hl                                        ; $752f: $23

jr_065_7530:
    or d                                          ; $7530: $b2
    and l                                         ; $7531: $a5
    jr nc, @+$05                                  ; $7532: $30 $03

    ld a, $21                                     ; $7534: $3e $21
    jr nc, jr_065_753a                            ; $7536: $30 $02

    ldh a, [$e4]                                  ; $7538: $f0 $e4

jr_065_753a:
    ld c, l                                       ; $753a: $4d
    ld bc, $bf2d                                  ; $753b: $01 $2d $bf
    add b                                         ; $753e: $80
    cp $e0                                        ; $753f: $fe $e0
    ret nz                                        ; $7541: $c0

    jr nz, jr_065_7530                            ; $7542: $20 $ec

    ld [bc], a                                    ; $7544: $02
    cp l                                          ; $7545: $bd
    and b                                         ; $7546: $a0
    ldh [$ea], a                                  ; $7547: $e0 $ea
    ldh a, [$e6]                                  ; $7549: $f0 $e6
    sub b                                         ; $754b: $90
    daa                                           ; $754c: $27
    call nz, $a260                                ; $754d: $c4 $60 $a2
    halt                                          ; $7550: $76
    jp nz, $c317                                  ; $7551: $c2 $17 $c3

    dec l                                         ; $7554: $2d
    ld a, l                                       ; $7555: $7d
    ret nz                                        ; $7556: $c0

    cp a                                          ; $7557: $bf
    inc hl                                        ; $7558: $23
    ld l, l                                       ; $7559: $6d
    add b                                         ; $755a: $80
    xor b                                         ; $755b: $a8
    ld b, d                                       ; $755c: $42
    ld a, l                                       ; $755d: $7d
    and d                                         ; $755e: $a2
    ldh [$e8], a                                  ; $755f: $e0 $e8
    ldh a, [$e7]                                  ; $7561: $f0 $e7
    ld b, b                                       ; $7563: $40
    inc b                                         ; $7564: $04
    rst $38                                       ; $7565: $ff
    add d                                         ; $7566: $82
    jr nc, jr_065_7570                            ; $7567: $30 $07

    dec l                                         ; $7569: $2d
    nop                                           ; $756a: $00
    cp a                                          ; $756b: $bf
    ldh [rIE], a                                  ; $756c: $e0 $ff
    ld [c], a                                     ; $756e: $e2
    rlca                                          ; $756f: $07

jr_065_7570:
    add h                                         ; $7570: $84
    ld b, d                                       ; $7571: $42
    ld [hl+], a                                   ; $7572: $22
    ldh [$e8], a                                  ; $7573: $e0 $e8
    ldh a, [$ed]                                  ; $7575: $f0 $ed
    jr nc, jr_065_757e                            ; $7577: $30 $05

    ldh a, [$e9]                                  ; $7579: $f0 $e9
    nop                                           ; $757b: $00
    xor h                                         ; $757c: $ac
    ld [bc], a                                    ; $757d: $02

jr_065_757e:
    ret c                                         ; $757e: $d8

    ld [hl+], a                                   ; $757f: $22
    and h                                         ; $7580: $a4
    nop                                           ; $7581: $00
    ldh [$f0], a                                  ; $7582: $e0 $f0
    sbc c                                         ; $7584: $99
    ld [c], a                                     ; $7585: $e2
    jr nc, jr_065_7595                            ; $7586: $30 $0d

    ldh a, [$e8]                                  ; $7588: $f0 $e8
    ld [hl], e                                    ; $758a: $73
    ld b, d                                       ; $758b: $42
    nop                                           ; $758c: $00
    ret z                                         ; $758d: $c8

    ld [hl+], a                                   ; $758e: $22
    ld h, h                                       ; $758f: $64
    ld bc, $efe0                                  ; $7590: $01 $e0 $ef
    ret nc                                        ; $7593: $d0

    ld [c], a                                     ; $7594: $e2

jr_065_7595:
    jr nc, jr_065_75a3                            ; $7595: $30 $0c

    ldh a, [$e9]                                  ; $7597: $f0 $e9
    ret nz                                        ; $7599: $c0

    db $e3                                        ; $759a: $e3
    ld h, $04                                     ; $759b: $26 $04
    nop                                           ; $759d: $00
    ldh [$f0], a                                  ; $759e: $e0 $f0
    ld sp, $0081                                  ; $75a0: $31 $81 $00

jr_065_75a3:
    nop                                           ; $75a3: $00
    nop                                           ; $75a4: $00
    sbc a                                         ; $75a5: $9f
    ret c                                         ; $75a6: $d8

    push de                                       ; $75a7: $d5
    push de                                       ; $75a8: $d5
    ret c                                         ; $75a9: $d8

    and b                                         ; $75aa: $a0
    rst $38                                       ; $75ab: $ff
    add sp, -$10                                  ; $75ac: $e8 $f0
    jp hl                                         ; $75ae: $e9


    rst $10                                       ; $75af: $d7
    sbc e                                         ; $75b0: $9b
    call nc, $e5d7                                ; $75b1: $d4 $d7 $e5
    ldh [$e8], a                                  ; $75b4: $e0 $e8
    jp hl                                         ; $75b6: $e9


    ldh [$f5], a                                  ; $75b7: $e0 $f5
    ret z                                         ; $75b9: $c8

    pop hl                                        ; $75ba: $e1
    jp nc, $d637                                  ; $75bb: $d2 $37 $d6

    call nc, $bdd6                                ; $75be: $d4 $d6 $bd
    ld [c], a                                     ; $75c1: $e2
    sbc $df                                       ; $75c2: $de $df
    jp nz, $f0e2                                  ; $75c4: $c2 $e2 $f0

    jp hl                                         ; $75c7: $e9


    add a                                         ; $75c8: $87
    jp c, $dad9                                   ; $75c9: $da $d9 $da

    and l                                         ; $75cc: $a5
    db $e3                                        ; $75cd: $e3
    db $e4                                        ; $75ce: $e4
    pop hl                                        ; $75cf: $e1
    ldh [$f0], a                                  ; $75d0: $e0 $f0
    sub d                                         ; $75d2: $92
    pop hl                                        ; $75d3: $e1
    sub $ff                                       ; $75d4: $d6 $ff
    jp nc, $d2d0                                  ; $75d6: $d2 $d0 $d2

    call nc, $d3d6                                ; $75d9: $d4 $d6 $d3
    and b                                         ; $75dc: $a0
    and b                                         ; $75dd: $a0
    db $db                                        ; $75de: $db
    ldh [$e1], a                                  ; $75df: $e0 $e1
    ld a, c                                       ; $75e1: $79
    ldh [$d3], a                                  ; $75e2: $e0 $d3
    ret nc                                        ; $75e4: $d0

    ldh a, [$e9]                                  ; $75e5: $f0 $e9
    call c, Call_065_61db                         ; $75e7: $dc $db $61
    call c, $e365                                 ; $75ea: $dc $65 $e3
    db $e4                                        ; $75ed: $e4
    pop hl                                        ; $75ee: $e1
    ldh [$f0], a                                  ; $75ef: $e0 $f0
    ret nc                                        ; $75f1: $d0

    pop hl                                        ; $75f2: $e1
    rst $10                                       ; $75f3: $d7
    call nc, $e0bf                                ; $75f4: $d4 $bf $e0
    ccf                                           ; $75f7: $3f
    rst $10                                       ; $75f8: $d7
    jp nc, $a0d8                                  ; $75f9: $d2 $d8 $a0

    ld [c], a                                     ; $75fc: $e2
    db $e3                                        ; $75fd: $e3
    ldh a, [$f0]                                  ; $75fe: $f0 $f0
    ld h, $e4                                     ; $7600: $26 $e4
    cp h                                          ; $7602: $bc
    db $e4                                        ; $7603: $e4
    pop hl                                        ; $7604: $e1
    ldh [$f2], a                                  ; $7605: $e0 $f2
    db $d3                                        ; $7607: $d3
    ret nc                                        ; $7608: $d0

    db $dd                                        ; $7609: $dd
    reti                                          ; $760a: $d9


    ld a, [de]                                    ; $760b: $1a
    ldh [$dd], a                                  ; $760c: $e0 $dd
    xor l                                         ; $760e: $ad
    ret nc                                        ; $760f: $d0

    ld a, a                                       ; $7610: $7f
    ldh [$a0], a                                  ; $7611: $e0 $a0
    db $eb                                        ; $7613: $eb
    ld c, $e0                                     ; $7614: $0e $e0
    jp nc, $ebf0                                  ; $7616: $d2 $f0 $eb

    sbc a                                         ; $7619: $9f
    ccf                                           ; $761a: $3f
    sbc l                                         ; $761b: $9d
    and d                                         ; $761c: $a2
    sbc l                                         ; $761d: $9d
    sbc l                                         ; $761e: $9d
    sbc l                                         ; $761f: $9d
    sbc a                                         ; $7620: $9f
    rst $18                                       ; $7621: $df
    jp $f0e0                                      ; $7622: $c3 $e0 $f0


    or a                                          ; $7625: $b7
    rst $10                                       ; $7626: $d7
    jp nc, $bed0                                  ; $7627: $d2 $d0 $be

    ldh [$dd], a                                  ; $762a: $e0 $dd
    pop de                                        ; $762c: $d1
    ret nz                                        ; $762d: $c0

    pop hl                                        ; $762e: $e1
    db $ec                                        ; $762f: $ec
    rst $18                                       ; $7630: $df
    db $ed                                        ; $7631: $ed
    and b                                         ; $7632: $a0
    and b                                         ; $7633: $a0
    jp c, $f0d3                                   ; $7634: $da $d3 $f0

    ld [$9c9f], a                                 ; $7637: $ea $9f $9c
    ccf                                           ; $763a: $3f
    ld a, c                                       ; $763b: $79
    ld a, d                                       ; $763c: $7a
    ld a, e                                       ; $763d: $7b
    ld a, h                                       ; $763e: $7c
    ld a, l                                       ; $763f: $7d
    sbc h                                         ; $7640: $9c
    cp l                                          ; $7641: $bd
    ld [c], a                                     ; $7642: $e2
    ldh [$f0], a                                  ; $7643: $e0 $f0
    jp nz, $e0d0                                  ; $7645: $c2 $d0 $e0

    call nc, $e040                                ; $7648: $d4 $40 $e0
    cp $c0                                        ; $764b: $fe $c0
    sub a                                         ; $764d: $97
    pop bc                                        ; $764e: $c1
    ld a, c                                       ; $764f: $79
    ret nz                                        ; $7650: $c0

    call c, $fed7                                 ; $7651: $dc $d7 $fe
    ldh a, [$ea]                                  ; $7654: $f0 $ea
    sbc [hl]                                      ; $7656: $9e
    ld a, c                                       ; $7657: $79
    ld a, [hl]                                    ; $7658: $7e
    ld a, [hl+]                                   ; $7659: $2a
    jr nz, jr_065_7686                            ; $765a: $20 $2a

    adc [hl]                                      ; $765c: $8e
    ret nc                                        ; $765d: $d0

    cp l                                          ; $765e: $bd
    pop hl                                        ; $765f: $e1
    ld a, h                                       ; $7660: $7c
    db $e3                                        ; $7661: $e3
    ldh [$ec], a                                  ; $7662: $e0 $ec
    ret nc                                        ; $7664: $d0

    ldh [$d9], a                                  ; $7665: $e0 $d9
    ld b, b                                       ; $7667: $40
    ldh [$d4], a                                  ; $7668: $e0 $d4
    rst $10                                       ; $766a: $d7
    ld hl, sp-$69                                 ; $766b: $f8 $97
    push bc                                       ; $766d: $c5
    adc l                                         ; $766e: $8d
    ret nz                                        ; $766f: $c0

    ldh a, [$e8]                                  ; $7670: $f0 $e8
    sbc a                                         ; $7672: $9f
    sbc h                                         ; $7673: $9c
    add b                                         ; $7674: $80
    ld b, l                                       ; $7675: $45
    ld l, $ff                                     ; $7676: $2e $ff
    jr nz, jr_065_76a8                            ; $7678: $20 $2e

    ld c, d                                       ; $767a: $4a
    ld d, [hl]                                    ; $767b: $56
    ld b, l                                       ; $767c: $45
    ld a, a                                       ; $767d: $7f
    ld a, l                                       ; $767e: $7d
    sbc [hl]                                      ; $767f: $9e
    inc l                                         ; $7680: $2c
    ldh [$f0], a                                  ; $7681: $e0 $f0
    ret nc                                        ; $7683: $d0

    pop hl                                        ; $7684: $e1
    db $db                                        ; $7685: $db

jr_065_7686:
    db $db                                        ; $7686: $db
    call $dae0                                    ; $7687: $cd $e0 $da
    sub a                                         ; $768a: $97
    push bc                                       ; $768b: $c5
    adc l                                         ; $768c: $8d
    ret nz                                        ; $768d: $c0

    sbc $f0                                       ; $768e: $de $f0
    add sp, -$62                                  ; $7690: $e8 $9e
    ld a, c                                       ; $7692: $79
    adc l                                         ; $7693: $8d
    ld b, e                                       ; $7694: $43
    ret nz                                        ; $7695: $c0

    ldh [rVBK], a                                 ; $7696: $e0 $4f
    ld e, b                                       ; $7698: $58
    rlca                                          ; $7699: $07
    xor [hl]                                      ; $769a: $ae
    ld b, [hl]                                    ; $769b: $46
    add c                                         ; $769c: $81
    ret nz                                        ; $769d: $c0

    db $e4                                        ; $769e: $e4
    ldh [$ea], a                                  ; $769f: $e0 $ea
    ld c, a                                       ; $76a1: $4f
    pop hl                                        ; $76a2: $e1
    call Call_065_59e2                            ; $76a3: $cd $e2 $59
    pop bc                                        ; $76a6: $c1
    pop af                                        ; $76a7: $f1

jr_065_76a8:
    ret c                                         ; $76a8: $d8

    cp b                                          ; $76a9: $b8
    and l                                         ; $76aa: $a5
    ldh a, [$e4]                                  ; $76ab: $f0 $e4
    add c                                         ; $76ad: $81
    ld [c], a                                     ; $76ae: $e2
    ld c, d                                       ; $76af: $4a
    ld d, [hl]                                    ; $76b0: $56
    ld a, [hl+]                                   ; $76b1: $2a
    ld h, $3f                                     ; $76b2: $26 $3f
    ld a, [hl+]                                   ; $76b4: $2a
    ld c, a                                       ; $76b5: $4f
    ld d, [hl]                                    ; $76b6: $56
    xor a                                         ; $76b7: $af
    ld b, [hl]                                    ; $76b8: $46
    add c                                         ; $76b9: $81
    ccf                                           ; $76ba: $3f
    ld [c], a                                     ; $76bb: $e2
    call c, $9ca2                                 ; $76bc: $dc $a2 $9c
    ret nc                                        ; $76bf: $d0

    db $ed                                        ; $76c0: $ed
    add d                                         ; $76c1: $82
    and c                                         ; $76c2: $a1
    db $e4                                        ; $76c3: $e4
    push hl                                       ; $76c4: $e5
    ret c                                         ; $76c5: $d8

    ld hl, sp-$60                                 ; $76c6: $f8 $a0
    halt                                          ; $76c8: $76
    and a                                         ; $76c9: $a7
    db $e4                                        ; $76ca: $e4
    db $fd                                        ; $76cb: $fd
    push hl                                       ; $76cc: $e5
    ld b, d                                       ; $76cd: $42
    pop hl                                        ; $76ce: $e1
    ld a, c                                       ; $76cf: $79
    adc l                                         ; $76d0: $8d
    ld c, d                                       ; $76d1: $4a
    ld d, [hl]                                    ; $76d2: $56
    add hl, sp                                    ; $76d3: $39
    dec [hl]                                      ; $76d4: $35

Call_065_76d5:
    ld a, a                                       ; $76d5: $7f
    add hl, sp                                    ; $76d6: $39
    ld b, l                                       ; $76d7: $45
    xor [hl]                                      ; $76d8: $ae
    ld b, [hl]                                    ; $76d9: $46
    add e                                         ; $76da: $83
    add h                                         ; $76db: $84
    ld b, [hl]                                    ; $76dc: $46
    ccf                                           ; $76dd: $3f
    pop hl                                        ; $76de: $e1
    ret c                                         ; $76df: $d8

    call c, $d0a2                                 ; $76e0: $dc $a2 $d0
    db $ec                                        ; $76e3: $ec
    adc b                                         ; $76e4: $88
    ld [c], a                                     ; $76e5: $e2
    and $e7                                       ; $76e6: $e6 $e7
    halt                                          ; $76e8: $76
    ret nz                                        ; $76e9: $c0

    pop de                                        ; $76ea: $d1
    ret nc                                        ; $76eb: $d0

    ld a, b                                       ; $76ec: $78
    ld sp, hl                                     ; $76ed: $f9
    and b                                         ; $76ee: $a0
    ldh a, [$e5]                                  ; $76ef: $f0 $e5
    add h                                         ; $76f1: $84
    pop bc                                        ; $76f2: $c1
    ld a, [hl]                                    ; $76f3: $7e
    ld b, [hl]                                    ; $76f4: $46
    xor [hl]                                      ; $76f5: $ae
    xor [hl]                                      ; $76f6: $ae
    ret nz                                        ; $76f7: $c0

    ldh [$7f], a                                  ; $76f8: $e0 $7f
    xor [hl]                                      ; $76fa: $ae
    xor a                                         ; $76fb: $af
    ld b, [hl]                                    ; $76fc: $46
    adc d                                         ; $76fd: $8a
    add l                                         ; $76fe: $85
    sub c                                         ; $76ff: $91
    and c                                         ; $7700: $a1
    ld hl, sp-$5c                                 ; $7701: $f8 $a4
    ld a, [hl-]                                   ; $7703: $3a
    ret nc                                        ; $7704: $d0

    db $ed                                        ; $7705: $ed
    db $d3                                        ; $7706: $d3
    inc b                                         ; $7707: $04
    pop bc                                        ; $7708: $c1
    add sp, -$17                                  ; $7709: $e8 $e9
    jp c, $a3b7                                   ; $770b: $da $b7 $a3

    ldh a, [$e6]                                  ; $770e: $f0 $e6
    ld a, [hl]                                    ; $7710: $7e
    pop bc                                        ; $7711: $c1
    db $e3                                        ; $7712: $e3
    xor a                                         ; $7713: $af
    xor a                                         ; $7714: $af
    ld b, l                                       ; $7715: $45
    ccf                                           ; $7716: $3f
    ld b, l                                       ; $7717: $45
    xor a                                         ; $7718: $af
    add c                                         ; $7719: $81
    pop hl                                        ; $771a: $e1
    res 2, b                                      ; $771b: $cb $90
    or [hl]                                       ; $771d: $b6
    ld a, [$eba2]                                 ; $771e: $fa $a2 $eb
    ret nc                                        ; $7721: $d0

    xor $db                                       ; $7722: $ee $db
    add e                                         ; $7724: $83
    and b                                         ; $7725: $a0
    call c, $daf1                                 ; $7726: $dc $f1 $da
    or a                                          ; $7729: $b7
    and c                                         ; $772a: $a1
    db $10                                        ; $772b: $10
    and b                                         ; $772c: $a0
    res 0, e                                      ; $772d: $cb $83
    sbc a                                         ; $772f: $9f
    sbc h                                         ; $7730: $9c
    ld b, [hl]                                    ; $7731: $46
    add d                                         ; $7732: $82
    rst $18                                       ; $7733: $df
    add e                                         ; $7734: $83
    ld b, [hl]                                    ; $7735: $46
    xor a                                         ; $7736: $af
    add e                                         ; $7737: $83
    adc c                                         ; $7738: $89
    rst $38                                       ; $7739: $ff
    pop hl                                        ; $773a: $e1
    adc b                                         ; $773b: $88
    add a                                         ; $773c: $87
    add a                                         ; $773d: $87
    add l                                         ; $773e: $85
    sub c                                         ; $773f: $91
    sub b                                         ; $7740: $90
    cp a                                          ; $7741: $bf
    ld [c], a                                     ; $7742: $e2
    call c, $d0a0                                 ; $7743: $dc $a0 $d0
    db $ed                                        ; $7746: $ed
    db $db                                        ; $7747: $db
    add c                                         ; $7748: $81
    ld [$86f0], a                                 ; $7749: $ea $f0 $86
    jp nz, $80d1                                  ; $774c: $c2 $d1 $80

    db $10                                        ; $774f: $10
    and b                                         ; $7750: $a0
    ldh a, [$e3]                                  ; $7751: $f0 $e3
    and c                                         ; $7753: $a1
    ld b, [hl]                                    ; $7754: $46
    ld b, [hl]                                    ; $7755: $46
    add l                                         ; $7756: $85
    sbc a                                         ; $7757: $9f
    add a                                         ; $7758: $87
    adc b                                         ; $7759: $88
    adc b                                         ; $775a: $88
    add a                                         ; $775b: $87
    ld b, [hl]                                    ; $775c: $46
    rst $00                                       ; $775d: $c7
    ldh [$fe], a                                  ; $775e: $e0 $fe
    ld [c], a                                     ; $7760: $e2
    jp $9083                                      ; $7761: $c3 $83 $90


    sub b                                         ; $7764: $90
    dec a                                         ; $7765: $3d
    jp $edd0                                      ; $7766: $c3 $d0 $ed


    db $db                                        ; $7769: $db
    add [hl]                                      ; $776a: $86
    pop de                                        ; $776b: $d1
    add h                                         ; $776c: $84
    res 0, d                                      ; $776d: $cb $82
    sbc a                                         ; $776f: $9f
    sbc a                                         ; $7770: $9f
    or [hl]                                       ; $7771: $b6
    ld b, [hl]                                    ; $7772: $46
    xor [hl]                                      ; $7773: $ae
    ld b, [hl]                                    ; $7774: $46
    ld b, [hl]                                    ; $7775: $46
    jp $c8e1                                      ; $7776: $c3 $e1 $c8


    ldh [$c3], a                                  ; $7779: $e0 $c3
    adc [hl]                                      ; $777b: $8e
    call nz, $90e0                                ; $777c: $c4 $e0 $90
    call nz, Call_000_3ec3                        ; $777f: $c4 $c3 $3e
    db $e4                                        ; $7782: $e4
    ret nc                                        ; $7783: $d0

    db $ed                                        ; $7784: $ed
    inc b                                         ; $7785: $04
    sub d                                         ; $7786: $92
    sbc [hl]                                      ; $7787: $9e
    ld [hl], a                                    ; $7788: $77
    sub b                                         ; $7789: $90
    ld b, [hl]                                    ; $778a: $46
    xor a                                         ; $778b: $af
    pop bc                                        ; $778c: $c1
    pop hl                                        ; $778d: $e1
    jp $c490                                      ; $778e: $c3 $90 $c4


    push bc                                       ; $7791: $c5
    ldh [rP1], a                                  ; $7792: $e0 $00
    db $fc                                        ; $7794: $fc

jr_065_7795:
    ldh [$bf], a                                  ; $7795: $e0 $bf
    ldh [$7f], a                                  ; $7797: $e0 $7f
    pop hl                                        ; $7799: $e1
    ld l, b                                       ; $779a: $68
    pop bc                                        ; $779b: $c1
    call nc, $c26b                                ; $779c: $d4 $6b $c2
    ld h, d                                       ; $779f: $62
    inc b                                         ; $77a0: $04
    add c                                         ; $77a1: $81
    or a                                          ; $77a2: $b7
    ld h, b                                       ; $77a3: $60
    inc e                                         ; $77a4: $1c
    push af                                       ; $77a5: $f5
    ld h, b                                       ; $77a6: $60
    inc a                                         ; $77a7: $3c
    call nz, $909e                                ; $77a8: $c4 $9e $90
    sub c                                         ; $77ab: $91
    ld b, [hl]                                    ; $77ac: $46
    ld [c], a                                     ; $77ad: $e2
    add $e2                                       ; $77ae: $c6 $e2
    ld b, d                                       ; $77b0: $42
    db $e3                                        ; $77b1: $e3
    add d                                         ; $77b2: $82
    jr c, jr_065_7795                             ; $77b3: $38 $e0

    sbc [hl]                                      ; $77b5: $9e
    ld l, b                                       ; $77b6: $68
    pop bc                                        ; $77b7: $c1
    ldh a, [$65]                                  ; $77b8: $f0 $65
    ret nc                                        ; $77ba: $d0

    db $e4                                        ; $77bb: $e4
    add [hl]                                      ; $77bc: $86
    add d                                         ; $77bd: $82
    inc b                                         ; $77be: $04
    add c                                         ; $77bf: $81
    db $d3                                        ; $77c0: $d3
    ld b, l                                       ; $77c1: $45
    sub $36                                       ; $77c2: $d6 $36
    add c                                         ; $77c4: $81
    sub $76                                       ; $77c5: $d6 $76
    add d                                         ; $77c7: $82
    add b                                         ; $77c8: $80
    ldh [$0c], a                                  ; $77c9: $e0 $0c
    db $e3                                        ; $77cb: $e3
    sub c                                         ; $77cc: $91
    ret nz                                        ; $77cd: $c0

    add d                                         ; $77ce: $82
    ld b, c                                       ; $77cf: $41
    sub c                                         ; $77d0: $91
    cp b                                          ; $77d1: $b8
    db $e3                                        ; $77d2: $e3
    ld a, [hl]                                    ; $77d3: $7e
    ret nz                                        ; $77d4: $c0

    ld [hl], h                                    ; $77d5: $74
    ld h, h                                       ; $77d6: $64
    ret nc                                        ; $77d7: $d0

    db $ed                                        ; $77d8: $ed
    inc b                                         ; $77d9: $04
    add b                                         ; $77da: $80
    ret c                                         ; $77db: $d8

    ei                                            ; $77dc: $fb
    ld h, b                                       ; $77dd: $60
    ld l, h                                       ; $77de: $6c
    cp b                                          ; $77df: $b8
    add c                                         ; $77e0: $81
    ret nz                                        ; $77e1: $c0

    db $e3                                        ; $77e2: $e3
    sbc a                                         ; $77e3: $9f
    or [hl]                                       ; $77e4: $b6
    ld c, l                                       ; $77e5: $4d
    db $e3                                        ; $77e6: $e3
    ld b, [hl]                                    ; $77e7: $46
    add b                                         ; $77e8: $80
    ld sp, hl                                     ; $77e9: $f9
    ret nz                                        ; $77ea: $c0

    ld bc, $bf7f                                  ; $77eb: $01 $7f $bf
    ldh [$c1], a                                  ; $77ee: $e0 $c1
    db $e3                                        ; $77f0: $e3
    ld e, c                                       ; $77f1: $59
    and l                                         ; $77f2: $a5
    ret nc                                        ; $77f3: $d0

    add sp, $0d                                   ; $77f4: $e8 $0d
    pop bc                                        ; $77f6: $c1
    rlca                                          ; $77f7: $07
    add b                                         ; $77f8: $80
    or $61                                        ; $77f9: $f6 $61
    and $11                                       ; $77fb: $e6 $11
    ld h, b                                       ; $77fd: $60
    reti                                          ; $77fe: $d9


    db $dd                                        ; $77ff: $dd
    ldh a, [$e4]                                  ; $7800: $f0 $e4
    cp a                                          ; $7802: $bf
    db $e3                                        ; $7803: $e3
    sub c                                         ; $7804: $91
    ld a, c                                       ; $7805: $79
    ld a, [hl]                                    ; $7806: $7e
    adc d                                         ; $7807: $8a
    ld sp, hl                                     ; $7808: $f9
    ret nz                                        ; $7809: $c0

    xor [hl]                                      ; $780a: $ae
    cp a                                          ; $780b: $bf
    pop hl                                        ; $780c: $e1
    or [hl]                                       ; $780d: $b6
    ld a, [$d164]                                 ; $780e: $fa $64 $d1
    and d                                         ; $7811: $a2
    ret nc                                        ; $7812: $d0

    add sp, -$2d                                  ; $7813: $e8 $d3
    ld l, c                                       ; $7815: $69
    jp c, $8207                                   ; $7816: $da $07 $82

    ld b, [hl]                                    ; $7819: $46
    ld h, b                                       ; $781a: $60
    pop de                                        ; $781b: $d1
    rst $30                                       ; $781c: $f7
    ld h, b                                       ; $781d: $60
    ret nc                                        ; $781e: $d0

    ret nc                                        ; $781f: $d0

    ldh a, [$e5]                                  ; $7820: $f0 $e5
    rst $10                                       ; $7822: $d7
    sbc a                                         ; $7823: $9f
    sbc l                                         ; $7824: $9d
    or [hl]                                       ; $7825: $b6
    pop bc                                        ; $7826: $c1
    pop hl                                        ; $7827: $e1
    ld b, [hl]                                    ; $7828: $46
    ret nz                                        ; $7829: $c0

    and d                                         ; $782a: $a2
    add c                                         ; $782b: $81
    ld b, [hl]                                    ; $782c: $46
    ld b, c                                       ; $782d: $41
    sub b                                         ; $782e: $90
    add c                                         ; $782f: $81
    and c                                         ; $7830: $a1
    call c, $ac41                                 ; $7831: $dc $41 $ac
    ld b, d                                       ; $7834: $42
    sub [hl]                                      ; $7835: $96
    ld h, b                                       ; $7836: $60
    ret nc                                        ; $7837: $d0

    push hl                                       ; $7838: $e5
    rst $10                                       ; $7839: $d7
    dec e                                         ; $783a: $1d
    ld h, h                                       ; $783b: $64
    call nz, Call_065_6138                        ; $783c: $c4 $38 $61
    or $40                                        ; $783f: $f6 $40
    call nc, $e3f0                                ; $7841: $d4 $f0 $e3
    or e                                          ; $7844: $b3
    ld b, c                                       ; $7845: $41
    ld a, h                                       ; $7846: $7c
    ret nz                                        ; $7847: $c0

    add b                                         ; $7848: $80
    ld b, [hl]                                    ; $7849: $46
    rra                                           ; $784a: $1f
    ld b, l                                       ; $784b: $45
    ld [hl], $35                                  ; $784c: $36 $35
    ld [hl], $45                                  ; $784e: $36 $45
    ld a, a                                       ; $7850: $7f
    pop hl                                        ; $7851: $e1
    add c                                         ; $7852: $81
    and d                                         ; $7853: $a2
    call c, VBlankInterrupt                       ; $7854: $dc $40 $00
    xor h                                         ; $7857: $ac
    ld b, c                                       ; $7858: $41
    sub [hl]                                      ; $7859: $96
    ld h, c                                       ; $785a: $61
    ret nc                                        ; $785b: $d0

    push hl                                       ; $785c: $e5
    rlca                                          ; $785d: $07
    add a                                         ; $785e: $87
    ld hl, sp+$62                                 ; $785f: $f8 $62
    adc [hl]                                      ; $7861: $8e
    ld b, h                                       ; $7862: $44
    or e                                          ; $7863: $b3
    ld b, c                                       ; $7864: $41
    ret nz                                        ; $7865: $c0

    ld [c], a                                     ; $7866: $e2
    ccf                                           ; $7867: $3f
    ld b, h                                       ; $7868: $44
    xor h                                         ; $7869: $ac
    xor h                                         ; $786a: $ac
    dec [hl]                                      ; $786b: $35
    add hl, sp                                    ; $786c: $39
    xor a                                         ; $786d: $af
    nop                                           ; $786e: $00
    add b                                         ; $786f: $80
    cp a                                          ; $7870: $bf
    ld [c], a                                     ; $7871: $e2
    add b                                         ; $7872: $80
    call c, $ac40                                 ; $7873: $dc $40 $ac
    ld b, l                                       ; $7876: $45
    ret nc                                        ; $7877: $d0

    push hl                                       ; $7878: $e5
    rlca                                          ; $7879: $07
    add a                                         ; $787a: $87
    ld hl, sp+$62                                 ; $787b: $f8 $62
    adc [hl]                                      ; $787d: $8e
    ld b, h                                       ; $787e: $44
    or e                                          ; $787f: $b3
    ld b, c                                       ; $7880: $41
    and c                                         ; $7881: $a1
    db $fd                                        ; $7882: $fd
    sub b                                         ; $7883: $90
    dec a                                         ; $7884: $3d
    and b                                         ; $7885: $a0
    ld b, d                                       ; $7886: $42
    xor l                                         ; $7887: $ad
    xor l                                         ; $7888: $ad
    dec [hl]                                      ; $7889: $35
    ld a, $4f                                     ; $788a: $3e $4f
    inc bc                                        ; $788c: $03
    ld d, [hl]                                    ; $788d: $56
    ld b, l                                       ; $788e: $45
    ld a, $e0                                     ; $788f: $3e $e0
    cp [hl]                                       ; $7891: $be
    ld h, h                                       ; $7892: $64
    ret nc                                        ; $7893: $d0

    db $ec                                        ; $7894: $ec
    xor h                                         ; $7895: $ac
    add $08                                       ; $7896: $c6 $08
    add a                                         ; $7898: $87
    or c                                          ; $7899: $b1
    inc hl                                        ; $789a: $23
    db $fc                                        ; $789b: $fc
    ld a, l                                       ; $789c: $7d
    ret nz                                        ; $789d: $c0

    dec a                                         ; $789e: $3d
    and c                                         ; $789f: $a1
    ld l, a                                       ; $78a0: $6f
    ld l, h                                       ; $78a1: $6c
    dec [hl]                                      ; $78a2: $35
    ld a, [hl-]                                   ; $78a3: $3a
    ld c, d                                       ; $78a4: $4a
    ld h, b                                       ; $78a5: $60
    ld bc, $c05c                                  ; $78a6: $01 $5c $c0
    ld [$ebd0], a                                 ; $78a9: $ea $d0 $eb
    call z, Call_065_4720                         ; $78ac: $cc $20 $47
    add b                                         ; $78af: $80
    and [hl]                                      ; $78b0: $a6
    and [hl]                                      ; $78b1: $a6
    db $f4                                        ; $78b2: $f4
    add c                                         ; $78b3: $81
    ld a, $c3                                     ; $78b4: $3e $c3
    rst $38                                       ; $78b6: $ff
    sub c                                         ; $78b7: $91
    xor [hl]                                      ; $78b8: $ae
    ld b, [hl]                                    ; $78b9: $46
    xor [hl]                                      ; $78ba: $ae
    ld b, h                                       ; $78bb: $44
    ld l, [hl]                                    ; $78bc: $6e
    ld [hl], h                                    ; $78bd: $74
    dec [hl]                                      ; $78be: $35
    rlca                                          ; $78bf: $07
    dec [hl]                                      ; $78c0: $35
    add hl, sp                                    ; $78c1: $39
    ld e, e                                       ; $78c2: $5b
    ccf                                           ; $78c3: $3f
    ld [c], a                                     ; $78c4: $e2
    ld a, b                                       ; $78c5: $78
    ld b, b                                       ; $78c6: $40
    rst $10                                       ; $78c7: $d7
    add c                                         ; $78c8: $81
    ret nc                                        ; $78c9: $d0

    db $ec                                        ; $78ca: $ec
    rst $00                                       ; $78cb: $c7
    ld h, b                                       ; $78cc: $60
    sub d                                         ; $78cd: $92
    rlca                                          ; $78ce: $07
    add b                                         ; $78cf: $80
    rst $10                                       ; $78d0: $d7
    and [hl]                                      ; $78d1: $a6
    and c                                         ; $78d2: $a1
    xor l                                         ; $78d3: $ad
    ld h, a                                       ; $78d4: $67
    db $eb                                        ; $78d5: $eb
    cp [hl]                                       ; $78d6: $be
    and c                                         ; $78d7: $a1
    dec a                                         ; $78d8: $3d
    and b                                         ; $78d9: $a0
    xor a                                         ; $78da: $af
    ccf                                           ; $78db: $3f
    ld b, b                                       ; $78dc: $40
    ld h, d                                       ; $78dd: $62
    ld h, a                                       ; $78de: $67
    dec [hl]                                      ; $78df: $35
    xor h                                         ; $78e0: $ac
    ld a, $f4                                     ; $78e1: $3e $f4
    add b                                         ; $78e3: $80
    ld a, l                                       ; $78e4: $7d
    ret nz                                        ; $78e5: $c0

    ld [$833d], sp                                ; $78e6: $08 $3d $83
    ret nc                                        ; $78e9: $d0

    db $ed                                        ; $78ea: $ed
    ret                                           ; $78eb: $c9


    and e                                         ; $78ec: $a3
    jp c, Jump_000_211a                           ; $78ed: $da $1a $21

    inc h                                         ; $78f0: $24
    push bc                                       ; $78f1: $c5
    dec [hl]                                      ; $78f2: $35
    ld b, c                                       ; $78f3: $41
    ld a, $a0                                     ; $78f4: $3e $a0
    ld a, [hl]                                    ; $78f6: $7e
    ld b, h                                       ; $78f7: $44
    ld b, b                                       ; $78f8: $40
    ld a, e                                       ; $78f9: $7b
    ld a, e                                       ; $78fa: $7b
    ld a, b                                       ; $78fb: $78
    dec [hl]                                      ; $78fc: $35
    dec [hl]                                      ; $78fd: $35
    xor l                                         ; $78fe: $ad
    cp a                                          ; $78ff: $bf
    ret nz                                        ; $7900: $c0

    nop                                           ; $7901: $00
    dec a                                         ; $7902: $3d
    pop bc                                        ; $7903: $c1
    cp [hl]                                       ; $7904: $be
    add e                                         ; $7905: $83
    ret nc                                        ; $7906: $d0

    db $ed                                        ; $7907: $ed
    rst $00                                       ; $7908: $c7
    ld h, b                                       ; $7909: $60
    add c                                         ; $790a: $81
    ld b, b                                       ; $790b: $40
    ld d, a                                       ; $790c: $57
    ld [hl+], a                                   ; $790d: $22
    ret nc                                        ; $790e: $d0

    ld [bc], a                                    ; $790f: $02
    ld hl, sp+$02                                 ; $7910: $f8 $02
    db $fc                                        ; $7912: $fc
    ld a, a                                       ; $7913: $7f
    add b                                         ; $7914: $80
    call nz, Call_065_45a0                        ; $7915: $c4 $a0 $45
    scf                                           ; $7918: $37
    dec a                                         ; $7919: $3d
    jr c, @+$37                                   ; $791a: $38 $35

    jr c, jr_065_793d                             ; $791c: $38 $1f

    dec a                                         ; $791e: $3d
    scf                                           ; $791f: $37
    ld b, e                                       ; $7920: $43
    ld c, e                                       ; $7921: $4b
    ld e, h                                       ; $7922: $5c
    db $fd                                        ; $7923: $fd
    and c                                         ; $7924: $a1
    cp [hl]                                       ; $7925: $be
    add d                                         ; $7926: $82
    ret nc                                        ; $7927: $d0

    xor $44                                       ; $7928: $ee $44
    rst $00                                       ; $792a: $c7
    ld h, b                                       ; $792b: $60
    add c                                         ; $792c: $81
    ld b, e                                       ; $792d: $43
    ld [$03d0], a                                 ; $792e: $ea $d0 $03
    ld hl, sp+$02                                 ; $7931: $f8 $02
    jp $80c1                                      ; $7933: $c3 $c1 $80


    inc b                                         ; $7936: $04
    ret nz                                        ; $7937: $c0

    rst $38                                       ; $7938: $ff
    dec [hl]                                      ; $7939: $35
    jr c, jr_065_7973                             ; $793a: $38 $37

    ld d, b                                       ; $793c: $50

jr_065_793d:
    ld b, h                                       ; $793d: $44
    ld c, c                                       ; $793e: $49
    ld c, h                                       ; $793f: $4c
    ld d, d                                       ; $7940: $52
    add c                                         ; $7941: $81
    ld b, l                                       ; $7942: $45
    ld a, [hl]                                    ; $7943: $7e
    ld h, c                                       ; $7944: $61
    or $60                                        ; $7945: $f6 $60
    dec sp                                        ; $7947: $3b
    ld h, b                                       ; $7948: $60
    ret nc                                        ; $7949: $d0

    db $ed                                        ; $794a: $ed
    rst $38                                       ; $794b: $ff
    ld l, l                                       ; $794c: $6d
    ld hl, sp+$02                                 ; $794d: $f8 $02
    and c                                         ; $794f: $a1
    xor $c6                                       ; $7950: $ee $c6
    add b                                         ; $7952: $80
    adc l                                         ; $7953: $8d
    add hl, sp                                    ; $7954: $39
    dec [hl]                                      ; $7955: $35
    call nz, Call_065_47a0                        ; $7956: $c4 $a0 $47
    ld e, l                                       ; $7959: $5d
    ld b, h                                       ; $795a: $44
    ld a, a                                       ; $795b: $7f
    ld d, e                                       ; $795c: $53
    ld d, e                                       ; $795d: $53
    ld b, l                                       ; $795e: $45
    ld b, [hl]                                    ; $795f: $46
    adc d                                         ; $7960: $8a
    ld b, [hl]                                    ; $7961: $46
    sub c                                         ; $7962: $91
    ld a, [$e061]                                 ; $7963: $fa $61 $e0
    ld a, [$cf21]                                 ; $7966: $fa $21 $cf
    ld l, e                                       ; $7969: $6b
    jr nc, jr_065_7979                            ; $796a: $30 $0d

    ld b, h                                       ; $796c: $44
    call nz, $a145                                ; $796d: $c4 $45 $a1
    ld a, $35                                     ; $7970: $3e $35
    xor h                                         ; $7972: $ac

jr_065_7973:
    rra                                           ; $7973: $1f
    ld b, b                                       ; $7974: $40
    xor [hl]                                      ; $7975: $ae
    ld c, e                                       ; $7976: $4b
    ld d, [hl]                                    ; $7977: $56
    ld b, l                                       ; $7978: $45

jr_065_7979:
    cp $80                                        ; $7979: $fe $80
    ld b, c                                       ; $797b: $41
    db $e4                                        ; $797c: $e4
    db $fc                                        ; $797d: $fc
    ld b, b                                       ; $797e: $40

Jump_065_797f:
    ldh [$d0], a                                  ; $797f: $e0 $d0
    db $ed                                        ; $7981: $ed
    jr nc, jr_065_798f                            ; $7982: $30 $0b

    ld [$0543], sp                                ; $7984: $08 $43 $05
    and b                                         ; $7987: $a0
    ld b, l                                       ; $7988: $45
    and c                                         ; $7989: $a1
    ld a, [hl-]                                   ; $798a: $3a
    dec [hl]                                      ; $798b: $35
    xor l                                         ; $798c: $ad
    cpl                                           ; $798d: $2f
    ld b, d                                       ; $798e: $42

jr_065_798f:
    xor a                                         ; $798f: $af
    ld b, l                                       ; $7990: $45
    ld b, e                                       ; $7991: $43
    ld [hl], a                                    ; $7992: $77
    ld h, b                                       ; $7993: $60
    xor a                                         ; $7994: $af
    ld b, c                                       ; $7995: $41
    ld [c], a                                     ; $7996: $e2
    cp l                                          ; $7997: $bd
    add b                                         ; $7998: $80
    inc c                                         ; $7999: $0c
    inc d                                         ; $799a: $14
    ret nz                                        ; $799b: $c0

    ret nc                                        ; $799c: $d0

    ld [$d5d8], a                                 ; $799d: $ea $d8 $d5
    jr nc, jr_065_79ac                            ; $79a0: $30 $0a

    inc b                                         ; $79a2: $04
    jp nz, $8144                                  ; $79a3: $c2 $44 $81

    ld b, d                                       ; $79a6: $42
    ldh [$86], a                                  ; $79a7: $e0 $86
    ld [bc], a                                    ; $79a9: $02
    pop hl                                        ; $79aa: $e1
    dec [hl]                                      ; $79ab: $35

jr_065_79ac:
    add hl, sp                                    ; $79ac: $39
    add hl, sp                                    ; $79ad: $39
    ld h, b                                       ; $79ae: $60
    cp e                                          ; $79af: $bb
    ld b, b                                       ; $79b0: $40
    cp a                                          ; $79b1: $bf
    ld b, d                                       ; $79b2: $42
    ld a, a                                       ; $79b3: $7f
    ld b, c                                       ; $79b4: $41
    db $d3                                        ; $79b5: $d3
    sub c                                         ; $79b6: $91
    ret nc                                        ; $79b7: $d0

    ret nc                                        ; $79b8: $d0

    ld [$0e30], a                                 ; $79b9: $ea $30 $0e
    dec b                                         ; $79bc: $05
    add e                                         ; $79bd: $83
    jp $c184                                      ; $79be: $c3 $84 $c1


    pop bc                                        ; $79c1: $c1
    pop hl                                        ; $79c2: $e1
    dec [hl]                                      ; $79c3: $35
    dec e                                         ; $79c4: $1d
    ld a, $39                                     ; $79c5: $3e $39
    ld h, b                                       ; $79c7: $60
    add e                                         ; $79c8: $83
    add [hl]                                      ; $79c9: $86
    add l                                         ; $79ca: $85
    or $40                                        ; $79cb: $f6 $40
    ld b, b                                       ; $79cd: $40
    add e                                         ; $79ce: $83
    ret nc                                        ; $79cf: $d0

    db $ed                                        ; $79d0: $ed
    add sp, $3a                                   ; $79d1: $e8 $3a
    add b                                         ; $79d3: $80
    jr nc, jr_065_79e0                            ; $79d4: $30 $0a

    add l                                         ; $79d6: $85
    ld h, e                                       ; $79d7: $63
    call nz, $81c7                                ; $79d8: $c4 $c7 $81
    inc a                                         ; $79db: $3c
    dec [hl]                                      ; $79dc: $35
    dec [hl]                                      ; $79dd: $35
    cpl                                           ; $79de: $2f
    ld l, h                                       ; $79df: $6c

jr_065_79e0:
    ld [hl], d                                    ; $79e0: $72
    ld [hl], c                                    ; $79e1: $71
    adc b                                         ; $79e2: $88
    ld a, h                                       ; $79e3: $7c
    ld b, b                                       ; $79e4: $40
    add l                                         ; $79e5: $85
    push bc                                       ; $79e6: $c5
    ret nz                                        ; $79e7: $c0

    ld [bc], a                                    ; $79e8: $02
    ld b, c                                       ; $79e9: $41
    add [hl]                                      ; $79ea: $86
    ld c, d                                       ; $79eb: $4a
    add b                                         ; $79ec: $80
    rst $10                                       ; $79ed: $d7
    jp nc, $ebd0                                  ; $79ee: $d2 $d0 $eb

    adc d                                         ; $79f1: $8a
    jr nz, jr_065_7a24                            ; $79f2: $20 $30

    add hl, bc                                    ; $79f4: $09
    ld c, c                                       ; $79f5: $49
    add e                                         ; $79f6: $83
    jp Jump_065_473c                              ; $79f7: $c3 $3c $47


    add c                                         ; $79fa: $81
    add e                                         ; $79fb: $83
    ret nz                                        ; $79fc: $c0

    ld l, h                                       ; $79fd: $6c
    ld l, a                                       ; $79fe: $6f
    ld l, [hl]                                    ; $79ff: $6e
    ld a, $7b                                     ; $7a00: $3e $7b
    ld b, b                                       ; $7a02: $40
    dec a                                         ; $7a03: $3d
    ld b, b                                       ; $7a04: $40
    add hl, de                                    ; $7a05: $19
    call nz, Call_065_4144                        ; $7a06: $c4 $44 $41
    ld c, d                                       ; $7a09: $4a
    add c                                         ; $7a0a: $81
    jp c, $d0d3                                   ; $7a0b: $da $d3 $d0

    ld [$e0f0], a                                 ; $7a0e: $ea $f0 $e0
    jr nc, jr_065_7a1d                            ; $7a11: $30 $0a

    inc e                                         ; $7a13: $1c
    ld c, c                                       ; $7a14: $49
    add e                                         ; $7a15: $83
    ld c, c                                       ; $7a16: $49
    ld h, b                                       ; $7a17: $60
    add d                                         ; $7a18: $82
    add e                                         ; $7a19: $83
    ld a, $c1                                     ; $7a1a: $3e $c1
    pop hl                                        ; $7a1c: $e1

jr_065_7a1d:
    ld b, b                                       ; $7a1d: $40
    ldh [rP1], a                                  ; $7a1e: $e0 $00
    ld b, h                                       ; $7a20: $44
    ld b, $82                                     ; $7a21: $06 $82
    inc hl                                        ; $7a23: $23

jr_065_7a24:
    and b                                         ; $7a24: $a0
    call c, Call_000_0023                         ; $7a25: $dc $23 $00
    ret nc                                        ; $7a28: $d0

    add sp, -$10                                  ; $7a29: $e8 $f0
    ldh [$30], a                                  ; $7a2b: $e0 $30
    ld a, [bc]                                    ; $7a2d: $0a
    inc b                                         ; $7a2e: $04
    pop bc                                        ; $7a2f: $c1
    ld a, [hl]                                    ; $7a30: $7e
    pop bc                                        ; $7a31: $c1
    jp nz, $8785                                  ; $7a32: $c2 $85 $87

    ld [hl], c                                    ; $7a35: $71
    ld [hl], c                                    ; $7a36: $71
    ld [hl], b                                    ; $7a37: $70
    ld l, [hl]                                    ; $7a38: $6e
    nop                                           ; $7a39: $00
    pop hl                                        ; $7a3a: $e1
    nop                                           ; $7a3b: $00
    pop bc                                        ; $7a3c: $c1
    inc h                                         ; $7a3d: $24
    cp a                                          ; $7a3e: $bf
    push hl                                       ; $7a3f: $e5
    ld b, e                                       ; $7a40: $43
    nop                                           ; $7a41: $00
    ret nc                                        ; $7a42: $d0

    add sp, -$07                                  ; $7a43: $e8 $f9
    ld h, b                                       ; $7a45: $60
    jr nc, jr_065_7a54                            ; $7a46: $30 $0c

    add b                                         ; $7a48: $80
    push bc                                       ; $7a49: $c5
    ld b, b                                       ; $7a4a: $40
    pop hl                                        ; $7a4b: $e1
    add b                                         ; $7a4c: $80
    add b                                         ; $7a4d: $80
    jp nz, Jump_000_2682                          ; $7a4e: $c2 $82 $26

    ccf                                           ; $7a51: $3f
    ld h, d                                       ; $7a52: $62
    ld b, e                                       ; $7a53: $43

jr_065_7a54:
    ld bc, $ead0                                  ; $7a54: $01 $d0 $ea
    ld a, a                                       ; $7a57: $7f
    ld [hl+], a                                   ; $7a58: $22
    jr nc, jr_065_7a67                            ; $7a59: $30 $0c

    sbc a                                         ; $7a5b: $9f
    add hl, sp                                    ; $7a5c: $39
    and d                                         ; $7a5d: $a2
    dec b                                         ; $7a5e: $05
    add b                                         ; $7a5f: $80
    ret nz                                        ; $7a60: $c0

    pop bc                                        ; $7a61: $c1
    dec [hl]                                      ; $7a62: $35
    inc a                                         ; $7a63: $3c
    ld b, h                                       ; $7a64: $44
    add b                                         ; $7a65: $80
    db $e4                                        ; $7a66: $e4

jr_065_7a67:
    dec b                                         ; $7a67: $05
    and e                                         ; $7a68: $a3
    ret nz                                        ; $7a69: $c0

    adc d                                         ; $7a6a: $8a
    and l                                         ; $7a6b: $a5
    ret nc                                        ; $7a6c: $d0

    db $ec                                        ; $7a6d: $ec
    jr nc, jr_065_7a7b                            ; $7a6e: $30 $0b

    sbc h                                         ; $7a70: $9c
    ld hl, $2081                                  ; $7a71: $21 $81 $20
    jp nz, Jump_000_35a0                          ; $7a74: $c2 $a0 $35

    dec [hl]                                      ; $7a77: $35
    inc bc                                        ; $7a78: $03
    ld a, [hl-]                                   ; $7a79: $3a
    ld b, l                                       ; $7a7a: $45

jr_065_7a7b:
    ld bc, $8125                                  ; $7a7b: $01 $25 $81
    inc bc                                        ; $7a7e: $03
    db $e4                                        ; $7a7f: $e4
    ld h, h                                       ; $7a80: $64
    ret nc                                        ; $7a81: $d0

    ld [$0d30], a                                 ; $7a82: $ea $30 $0d
    sbc h                                         ; $7a85: $9c
    ld hl, $8102                                  ; $7a86: $21 $02 $81
    ld hl, $013e                                  ; $7a89: $21 $3e $01
    jp nz, $e501                                  ; $7a8c: $c2 $01 $e5

    ld b, d                                       ; $7a8f: $42
    ld h, a                                       ; $7a90: $67
    ret nc                                        ; $7a91: $d0

    db $ed                                        ; $7a92: $ed
    jr nc, jr_065_7aa2                            ; $7a93: $30 $0d

    sbc h                                         ; $7a95: $9c
    jr nz, jr_065_7a98                            ; $7a96: $20 $00

jr_065_7a98:
    jp nz, $ff21                                  ; $7a98: $c2 $21 $ff

    jp nz, $e501                                  ; $7a9b: $c2 $01 $e5

    add b                                         ; $7a9e: $80
    add $ff                                       ; $7a9f: $c6 $ff
    dec h                                         ; $7aa1: $25

jr_065_7aa2:
    ret nc                                        ; $7aa2: $d0

    add sp, $30                                   ; $7aa3: $e8 $30
    dec c                                         ; $7aa5: $0d
    ld b, d                                       ; $7aa6: $42
    inc h                                         ; $7aa7: $24
    dec b                                         ; $7aa8: $05
    ld b, [hl]                                    ; $7aa9: $46
    inc bc                                        ; $7aaa: $03
    add b                                         ; $7aab: $80
    scf                                           ; $7aac: $37
    ld b, c                                       ; $7aad: $41
    push hl                                       ; $7aae: $e5
    jp $e021                                      ; $7aaf: $c3 $21 $e0


    add l                                         ; $7ab2: $85
    ret nc                                        ; $7ab3: $d0

    db $ed                                        ; $7ab4: $ed
    jr nc, jr_065_7ac4                            ; $7ab5: $30 $0d

    ld bc, $7fea                                  ; $7ab7: $01 $ea $7f
    call nz, $0140                                ; $7aba: $c4 $40 $01
    ld b, d                                       ; $7abd: $42
    call nz, Call_065_4504                        ; $7abe: $c4 $04 $45

Jump_065_7ac1:
    ld b, a                                       ; $7ac1: $47
    ld b, h                                       ; $7ac2: $44
    ret nc                                        ; $7ac3: $d0

jr_065_7ac4:
    db $eb                                        ; $7ac4: $eb
    jr nc, jr_065_7ad5                            ; $7ac5: $30 $0e

    and $04                                       ; $7ac7: $e6 $04
    ld [hl+], a                                   ; $7ac9: $22
    ld b, [hl]                                    ; $7aca: $46
    xor [hl]                                      ; $7acb: $ae
    ld b, b                                       ; $7acc: $40
    nop                                           ; $7acd: $00
    ret nz                                        ; $7ace: $c0

    pop hl                                        ; $7acf: $e1
    or [hl]                                       ; $7ad0: $b6
    sbc l                                         ; $7ad1: $9d
    sbc l                                         ; $7ad2: $9d
    nop                                           ; $7ad3: $00
    ld b, [hl]                                    ; $7ad4: $46

jr_065_7ad5:
    inc hl                                        ; $7ad5: $23
    ldh [$85], a                                  ; $7ad6: $e0 $85
    ret nc                                        ; $7ad8: $d0

    xor $31                                       ; $7ad9: $ee $31
    ld a, [bc]                                    ; $7adb: $0a
    ld b, h                                       ; $7adc: $44
    ld [bc], a                                    ; $7add: $02
    sub $60                                       ; $7ade: $d6 $60
    call nz, $8040                                ; $7ae0: $c4 $40 $80
    db $e3                                        ; $7ae3: $e3
    nop                                           ; $7ae4: $00
    add hl, bc                                    ; $7ae5: $09
    jp $eadf                                      ; $7ae6: $c3 $df $ea


    rst $08                                       ; $7ae9: $cf
    ld [$62c2], a                                 ; $7aea: $ea $c2 $62
    inc c                                         ; $7aed: $0c
    ld h, b                                       ; $7aee: $60
    ld sp, $b304                                  ; $7aef: $31 $04 $b3
    ld h, b                                       ; $7af2: $60
    ccf                                           ; $7af3: $3f
    and c                                         ; $7af4: $a1
    ld bc, $c290                                  ; $7af5: $01 $90 $c2
    ld [c], a                                     ; $7af8: $e2
    dec b                                         ; $7af9: $05
    and c                                         ; $7afa: $a1
    ld a, [bc]                                    ; $7afb: $0a
    ld b, d                                       ; $7afc: $42
    db $ec                                        ; $7afd: $ec
    ld b, c                                       ; $7afe: $41
    rst $18                                       ; $7aff: $df
    rst $20                                       ; $7b00: $e7
    ldh a, [$ea]                                  ; $7b01: $f0 $ea
    add [hl]                                      ; $7b03: $86
    add d                                         ; $7b04: $82
    db $10                                        ; $7b05: $10
    inc c                                         ; $7b06: $0c
    ld h, b                                       ; $7b07: $60
    ld sp, $4007                                  ; $7b08: $31 $07 $40
    db $e3                                        ; $7b0b: $e3
    rst $38                                       ; $7b0c: $ff

Jump_065_7b0d:
    push hl                                       ; $7b0d: $e5
    sbc h                                         ; $7b0e: $9c
    inc b                                         ; $7b0f: $04
    push hl                                       ; $7b10: $e5
    rst $18                                       ; $7b11: $df
    rst $20                                       ; $7b12: $e7
    ldh a, [$ef]                                  ; $7b13: $f0 $ef
    ld b, e                                       ; $7b15: $43
    ld [c], a                                     ; $7b16: $e2
    db $e3                                        ; $7b17: $e3
    ld sp, $3705                                  ; $7b18: $31 $05 $37
    add c                                         ; $7b1b: $81
    push bc                                       ; $7b1c: $c5
    ld hl, $e6c0                                  ; $7b1d: $21 $c0 $e6
    ld b, [hl]                                    ; $7b20: $46
    adc c                                         ; $7b21: $89
    ld hl, $ec80                                  ; $7b22: $21 $80 $ec
    ld b, b                                       ; $7b25: $40
    rst $18                                       ; $7b26: $df
    jp hl                                         ; $7b27: $e9


    ldh a, [$e9]                                  ; $7b28: $f0 $e9
    dec c                                         ; $7b2a: $0d
    pop bc                                        ; $7b2b: $c1
    ld [hl], c                                    ; $7b2c: $71
    ld [bc], a                                    ; $7b2d: $02
    ld sp, $fe03                                  ; $7b2e: $31 $03 $fe
    and d                                         ; $7b31: $a2
    sbc a                                         ; $7b32: $9f
    add e                                         ; $7b33: $83
    and d                                         ; $7b34: $a2
    sbc h                                         ; $7b35: $9c
    inc c                                         ; $7b36: $0c
    ld h, c                                       ; $7b37: $61
    ld a, a                                       ; $7b38: $7f
    and $e7                                       ; $7b39: $e6 $e7
    ld h, c                                       ; $7b3b: $61
    rst $18                                       ; $7b3c: $df
    jp hl                                         ; $7b3d: $e9


    ldh a, [$e9]                                  ; $7b3e: $f0 $e9
    db $d3                                        ; $7b40: $d3
    ld [hl], b                                    ; $7b41: $70
    ld [hl], c                                    ; $7b42: $71
    inc bc                                        ; $7b43: $03
    ld sp, $f105                                  ; $7b44: $31 $05 $f1
    ldh [$bf], a                                  ; $7b47: $e0 $bf
    ld b, d                                       ; $7b49: $42
    sbc h                                         ; $7b4a: $9c
    ld b, [hl]                                    ; $7b4b: $46
    xor a                                         ; $7b4c: $af
    ld [bc], a                                    ; $7b4d: $02
    ld b, b                                       ; $7b4e: $40
    ld e, $ff                                     ; $7b4f: $1e $ff
    ldh [$37], a                                  ; $7b51: $e0 $37
    ld b, l                                       ; $7b53: $45
    sbc h                                         ; $7b54: $9c
    sbc a                                         ; $7b55: $9f
    ld d, c                                       ; $7b56: $51
    nop                                           ; $7b57: $00
    rst $18                                       ; $7b58: $df
    jp hl                                         ; $7b59: $e9


    ld b, c                                       ; $7b5a: $41
    ld bc, $cf82                                  ; $7b5b: $01 $82 $cf
    and $d7                                       ; $7b5e: $e6 $d7
    ld [hl], e                                    ; $7b60: $73
    ld b, e                                       ; $7b61: $43
    ld sp, $f105                                  ; $7b62: $31 $05 $f1
    ldh [$f6], a                                  ; $7b65: $e0 $f6
    nop                                           ; $7b67: $00
    db $fc                                        ; $7b68: $fc
    and b                                         ; $7b69: $a0
    sbc h                                         ; $7b6a: $9c
    ld l, a                                       ; $7b6b: $6f
    ld b, [hl]                                    ; $7b6c: $46
    add hl, sp                                    ; $7b6d: $39
    and h                                         ; $7b6e: $a4
    ld h, h                                       ; $7b6f: $64
    rst $38                                       ; $7b70: $ff
    ldh [$a5], a                                  ; $7b71: $e0 $a5
    add hl, sp                                    ; $7b73: $39
    ld a, $e2                                     ; $7b74: $3e $e2
    add b                                         ; $7b76: $80
    rst $18                                       ; $7b77: $df
    jp hl                                         ; $7b78: $e9


    rst $08                                       ; $7b79: $cf
    ld [$8437], a                                 ; $7b7a: $ea $37 $84
    ld sp, $8105                                  ; $7b7d: $31 $05 $81

Call_065_7b80:
    ldh [$f6], a                                  ; $7b80: $e0 $f6
    ld bc, $60b9                                  ; $7b82: $01 $b9 $60
    ld b, [hl]                                    ; $7b85: $46
    rst $38                                       ; $7b86: $ff
    ld a, $69                                     ; $7b87: $3e $69
    and e                                         ; $7b89: $a3
    dec [hl]                                      ; $7b8a: $35
    dec [hl]                                      ; $7b8b: $35
    and e                                         ; $7b8c: $a3
    ld l, d                                       ; $7b8d: $6a
    ld a, $00                                     ; $7b8e: $3e $00
    ret nz                                        ; $7b90: $c0

    db $e3                                        ; $7b91: $e3
    rst $18                                       ; $7b92: $df
    add sp, -$31                                  ; $7b93: $e8 $cf
    ld [$24f4], a                                 ; $7b95: $ea $f4 $24
    ld sp, $e505                                  ; $7b98: $31 $05 $e5
    jr nz, jr_065_7bc3                            ; $7b9b: $20 $26

    ld hl, $e3c0                                  ; $7b9d: $21 $c0 $e3
    add b                                         ; $7ba0: $80
    cp [hl]                                       ; $7ba1: $be

Jump_065_7ba2:
    ld b, c                                       ; $7ba2: $41
    ret nz                                        ; $7ba3: $c0

    push hl                                       ; $7ba4: $e5
    rst $18                                       ; $7ba5: $df
    add sp, -$31                                  ; $7ba6: $e8 $cf
    ld [$0630], a                                 ; $7ba8: $ea $30 $06
    ld sp, $f505                                  ; $7bab: $31 $05 $f5
    ld h, h                                       ; $7bae: $64
    sbc [hl]                                      ; $7baf: $9e
    cpl                                           ; $7bb0: $2f
    ld b, [hl]                                    ; $7bb1: $46
    add hl, sp                                    ; $7bb2: $39
    ld l, e                                       ; $7bb3: $6b
    ld [hl], c                                    ; $7bb4: $71
    rst $38                                       ; $7bb5: $ff
    ldh [$6d], a                                  ; $7bb6: $e0 $6d
    ld b, b                                       ; $7bb8: $40
    pop hl                                        ; $7bb9: $e1
    db $ec                                        ; $7bba: $ec
    ld [bc], a                                    ; $7bbb: $02
    ret nz                                        ; $7bbc: $c0

    rst $18                                       ; $7bbd: $df
    rst $20                                       ; $7bbe: $e7
    ld e, b                                       ; $7bbf: $58
    inc bc                                        ; $7bc0: $03
    rst $08                                       ; $7bc1: $cf
    push hl                                       ; $7bc2: $e5

jr_065_7bc3:
    jr nc, @+$05                                  ; $7bc3: $30 $03

    xor d                                         ; $7bc5: $aa
    xor c                                         ; $7bc6: $a9
    ldh a, [$e1]                                  ; $7bc7: $f0 $e1
    sbc a                                         ; $7bc9: $9f
    sbc h                                         ; $7bca: $9c
    nop                                           ; $7bcb: $00
    ret nz                                        ; $7bcc: $c0

    rst $00                                       ; $7bcd: $c7
    db $ec                                        ; $7bce: $ec
    ld bc, $60ea                                  ; $7bcf: $01 $ea $60
    ldh [$ea], a                                  ; $7bd2: $e0 $ea
    ldh a, [$e6]                                  ; $7bd4: $f0 $e6
    jr nc, jr_065_7bdc                            ; $7bd6: $30 $04

    dec h                                         ; $7bd8: $25
    add [hl]                                      ; $7bd9: $86
    ldh a, [$e5]                                  ; $7bda: $f0 $e5

jr_065_7bdc:
    nop                                           ; $7bdc: $00
    ld a, l                                       ; $7bdd: $7d
    ret nz                                        ; $7bde: $c0

    cp a                                          ; $7bdf: $bf
    and [hl]                                      ; $7be0: $a6
    db $ec                                        ; $7be1: $ec
    nop                                           ; $7be2: $00
    ld [$e0c1], a                                 ; $7be3: $ea $c1 $e0
    jp hl                                         ; $7be6: $e9


    ldh a, [$e6]                                  ; $7be7: $f0 $e6
    jr nc, @+$06                                  ; $7be9: $30 $04

    dec h                                         ; $7beb: $25
    add [hl]                                      ; $7bec: $86
    ld [bc], a                                    ; $7bed: $02
    ldh a, [$e6]                                  ; $7bee: $f0 $e6
    sbc a                                         ; $7bf0: $9f
    add $80                                       ; $7bf1: $c6 $80
    jp $ea85                                      ; $7bf3: $c3 $85 $ea


    jp $e9e0                                      ; $7bf6: $c3 $e0 $e9


    ldh a, [$e6]                                  ; $7bf9: $f0 $e6
    jr nc, jr_065_7c0a                            ; $7bfb: $30 $0d

    nop                                           ; $7bfd: $00
    ldh a, [$e8]                                  ; $7bfe: $f0 $e8
    ret c                                         ; $7c00: $d8

    inc b                                         ; $7c01: $04
    xor b                                         ; $7c02: $a8
    inc hl                                        ; $7c03: $23
    ldh [$f0], a                                  ; $7c04: $e0 $f0
    push bc                                       ; $7c06: $c5
    ld h, d                                       ; $7c07: $62
    jr nc, jr_065_7c17                            ; $7c08: $30 $0d

jr_065_7c0a:
    ldh a, [$e8]                                  ; $7c0a: $f0 $e8
    sbc b                                         ; $7c0c: $98
    inc bc                                        ; $7c0d: $03
    nop                                           ; $7c0e: $00
    pop de                                        ; $7c0f: $d1
    and d                                         ; $7c10: $a2
    ldh [$f2], a                                  ; $7c11: $e0 $f2
    ret nc                                        ; $7c13: $d0

    ld [c], a                                     ; $7c14: $e2
    rst $38                                       ; $7c15: $ff
    ld l, [hl]                                    ; $7c16: $6e

jr_065_7c17:
    add hl, hl                                    ; $7c17: $29
    adc l                                         ; $7c18: $8d
    ld d, d                                       ; $7c19: $52
    rlca                                          ; $7c1a: $07
    ldh [$ed], a                                  ; $7c1b: $e0 $ed
    add $e1                                       ; $7c1d: $c6 $e1
    nop                                           ; $7c1f: $00
    nop                                           ; $7c20: $00
    nop                                           ; $7c21: $00
    pop bc                                        ; $7c22: $c1
    nop                                           ; $7c23: $00
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
    nop                                           ; $7c2e: $00
    nop                                           ; $7c2f: $00
    dec c                                         ; $7c30: $0d
    add b                                         ; $7c31: $80
    cp $e0                                        ; $7c32: $fe $e0
    nop                                           ; $7c34: $00
    ld b, b                                       ; $7c35: $40
    ret c                                         ; $7c36: $d8

    push hl                                       ; $7c37: $e5
    rst $30                                       ; $7c38: $f7
    and $eb                                       ; $7c39: $e6 $eb
    ldh [rIE], a                                  ; $7c3b: $e0 $ff
    rst $38                                       ; $7c3d: $ff
    nop                                           ; $7c3e: $00
    rst $38                                       ; $7c3f: $ff
    db $f4                                        ; $7c40: $f4
    nop                                           ; $7c41: $00
    nop                                           ; $7c42: $00
    nop                                           ; $7c43: $00
    ld [bc], a                                    ; $7c44: $02
    nop                                           ; $7c45: $00
    dec h                                         ; $7c46: $25
    add hl, bc                                    ; $7c47: $09
    ld [bc], a                                    ; $7c48: $02
    ld bc, $0b24                                  ; $7c49: $01 $24 $0b
    ld [bc], a                                    ; $7c4c: $02
    ld [bc], a                                    ; $7c4d: $02
    ld e, $0c                                     ; $7c4e: $1e $0c
    ld [bc], a                                    ; $7c50: $02
    inc bc                                        ; $7c51: $03
    rra                                           ; $7c52: $1f
    inc c                                         ; $7c53: $0c
    ld [bc], a                                    ; $7c54: $02
    inc b                                         ; $7c55: $04
    inc hl                                        ; $7c56: $23
    inc c                                         ; $7c57: $0c
    ld [bc], a                                    ; $7c58: $02
    dec b                                         ; $7c59: $05
    dec e                                         ; $7c5a: $1d
    dec c                                         ; $7c5b: $0d
    ld [bc], a                                    ; $7c5c: $02
    ld b, $28                                     ; $7c5d: $06 $28
    rrca                                          ; $7c5f: $0f
    ld [bc], a                                    ; $7c60: $02
    rlca                                          ; $7c61: $07
    add hl, de                                    ; $7c62: $19
    db $10                                        ; $7c63: $10
    ld [bc], a                                    ; $7c64: $02
    ld [$1020], sp                                ; $7c65: $08 $20 $10
    ld [bc], a                                    ; $7c68: $02
    add hl, bc                                    ; $7c69: $09
    inc hl                                        ; $7c6a: $23
    db $10                                        ; $7c6b: $10
    ld [bc], a                                    ; $7c6c: $02
    ld a, [bc]                                    ; $7c6d: $0a
    inc h                                         ; $7c6e: $24
    db $10                                        ; $7c6f: $10
    ld [bc], a                                    ; $7c70: $02
    dec bc                                        ; $7c71: $0b
    add hl, hl                                    ; $7c72: $29
    db $10                                        ; $7c73: $10
    ld [bc], a                                    ; $7c74: $02
    inc c                                         ; $7c75: $0c
    ld e, $11                                     ; $7c76: $1e $11
    ld [bc], a                                    ; $7c78: $02
    dec c                                         ; $7c79: $0d
    ld h, $12                                     ; $7c7a: $26 $12
    ld [bc], a                                    ; $7c7c: $02
    ld c, $1c                                     ; $7c7d: $0e $1c
    inc de                                        ; $7c7f: $13
    ld [bc], a                                    ; $7c80: $02
    rrca                                          ; $7c81: $0f
    jr nz, jr_065_7c98                            ; $7c82: $20 $14

    ld [bc], a                                    ; $7c84: $02
    db $10                                        ; $7c85: $10
    inc hl                                        ; $7c86: $23
    dec d                                         ; $7c87: $15
    ld [bc], a                                    ; $7c88: $02
    ld de, $1724                                  ; $7c89: $11 $24 $17
    ld [bc], a                                    ; $7c8c: $02
    ld [de], a                                    ; $7c8d: $12
    jr nz, jr_065_7ca8                            ; $7c8e: $20 $18

    ld [bc], a                                    ; $7c90: $02
    inc de                                        ; $7c91: $13
    ld hl, $0218                                  ; $7c92: $21 $18 $02
    inc d                                         ; $7c95: $14
    inc e                                         ; $7c96: $1c
    dec de                                        ; $7c97: $1b

jr_065_7c98:
    ld [bc], a                                    ; $7c98: $02
    dec d                                         ; $7c99: $15
    ld e, $1b                                     ; $7c9a: $1e $1b
    ld [bc], a                                    ; $7c9c: $02
    ld d, $23                                     ; $7c9d: $16 $23
    inc e                                         ; $7c9f: $1c
    ld [bc], a                                    ; $7ca0: $02
    rla                                           ; $7ca1: $17
    dec h                                         ; $7ca2: $25
    inc e                                         ; $7ca3: $1c
    ld [bc], a                                    ; $7ca4: $02
    jr jr_065_7cd2                                ; $7ca5: $18 $2b

    dec e                                         ; $7ca7: $1d

jr_065_7ca8:
    ld [bc], a                                    ; $7ca8: $02
    add hl, de                                    ; $7ca9: $19
    ld a, [hl+]                                   ; $7caa: $2a
    jr nz, jr_065_7caf                            ; $7cab: $20 $02

    ld a, [de]                                    ; $7cad: $1a
    dec e                                         ; $7cae: $1d

jr_065_7caf:
    ld hl, $1b02                                  ; $7caf: $21 $02 $1b
    rra                                           ; $7cb2: $1f
    ld hl, $1c02                                  ; $7cb3: $21 $02 $1c
    dec h                                         ; $7cb6: $25
    ld hl, $1d02                                  ; $7cb7: $21 $02 $1d
    ld [hl+], a                                   ; $7cba: $22
    ld [hl+], a                                   ; $7cbb: $22
    ld [bc], a                                    ; $7cbc: $02
    ld e, $20                                     ; $7cbd: $1e $20
    inc hl                                        ; $7cbf: $23
    ld [bc], a                                    ; $7cc0: $02
    rra                                           ; $7cc1: $1f
    inc d                                         ; $7cc2: $14
    inc h                                         ; $7cc3: $24
    ld [bc], a                                    ; $7cc4: $02
    jr nz, jr_065_7cec                            ; $7cc5: $20 $25

    dec h                                         ; $7cc7: $25
    ld [bc], a                                    ; $7cc8: $02
    ld hl, $2613                                  ; $7cc9: $21 $13 $26
    ld [bc], a                                    ; $7ccc: $02
    ld [hl+], a                                   ; $7ccd: $22
    ld h, $29                                     ; $7cce: $26 $29
    ld [bc], a                                    ; $7cd0: $02
    inc hl                                        ; $7cd1: $23

jr_065_7cd2:
    add hl, de                                    ; $7cd2: $19
    cpl                                           ; $7cd3: $2f
    ld [bc], a                                    ; $7cd4: $02
    inc h                                         ; $7cd5: $24
    jr jr_065_7d08                                ; $7cd6: $18 $30

    ld [bc], a                                    ; $7cd8: $02
    dec h                                         ; $7cd9: $25
    inc d                                         ; $7cda: $14
    ld sp, $2602                                  ; $7cdb: $31 $02 $26
    add hl, de                                    ; $7cde: $19
    dec [hl]                                      ; $7cdf: $35
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

jr_065_7cec:
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

jr_065_7d08:
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

Jump_065_7e47:
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

Call_065_7ee1:
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

Jump_065_7f21:
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

Jump_065_7fe0:
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
