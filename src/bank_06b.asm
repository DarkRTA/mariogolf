; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $06b", ROMX[$4000], BANK[$6b]

    inc c                                         ; $4000: $0c
    ld b, b                                       ; $4001: $40
    ld l, e                                       ; $4002: $6b
    ld c, d                                       ; $4003: $4a
    inc d                                         ; $4004: $14
    ld d, l                                       ; $4005: $55
    ld c, [hl]                                    ; $4006: $4e
    ld e, h                                       ; $4007: $5c
    add hl, de                                    ; $4008: $19
    ld l, b                                       ; $4009: $68
    ld a, l                                       ; $400a: $7d
    ld [hl], d                                    ; $400b: $72
    inc d                                         ; $400c: $14
    ld b, b                                       ; $400d: $40
    dec d                                         ; $400e: $15
    ld b, h                                       ; $400f: $44
    ld sp, hl                                     ; $4010: $f9
    ld c, b                                       ; $4011: $48
    jr jr_06b_405d                                ; $4012: $18 $49

    ccf                                           ; $4014: $3f

jr_06b_4015:
    ld c, $0e                                     ; $4015: $0e $0e
    dec c                                         ; $4017: $0d
    dec c                                         ; $4018: $0d
    dec c                                         ; $4019: $0d
    ld c, $ff                                     ; $401a: $0e $ff
    db $e3                                        ; $401c: $e3
    or $e5                                        ; $401d: $f6 $e5
    rst $38                                       ; $401f: $ff

Jump_06b_4020:
    dec c                                         ; $4020: $0d
    dec c                                         ; $4021: $0d
    ld c, l                                       ; $4022: $4d
    ld c, l                                       ; $4023: $4d
    ld c, $0e                                     ; $4024: $0e $0e
    ld c, l                                       ; $4026: $4d
    ld c, l                                       ; $4027: $4d
    ld bc, $e74d                                  ; $4028: $01 $4d $e7
    ldh [$fb], a                                  ; $402b: $e0 $fb
    db $e4                                        ; $402d: $e4
    reti                                          ; $402e: $d9


    ld [c], a                                     ; $402f: $e2
    ret c                                         ; $4030: $d8

    db $ed                                        ; $4031: $ed
    call nz, $c9e1                                ; $4032: $c4 $e1 $c9
    pop hl                                        ; $4035: $e1
    jp $08e3                                      ; $4036: $c3 $e3 $08


    or $e6                                        ; $4039: $f6 $e6
    jp nc, $cfe2                                  ; $403b: $d2 $e2 $cf

    db $e3                                        ; $403e: $e3
    ld c, l                                       ; $403f: $4d

Jump_06b_4040:
    cp $e0                                        ; $4040: $fe $e0
    push af                                       ; $4042: $f5
    ld [c], a                                     ; $4043: $e2
    sbc c                                         ; $4044: $99
    ldh [$b2], a                                  ; $4045: $e0 $b2
    pop hl                                        ; $4047: $e1
    ret nz                                        ; $4048: $c0

    ret c                                         ; $4049: $d8

    ld [$e7c4], a                                 ; $404a: $ea $c4 $e7
    ld a, e                                       ; $404d: $7b
    db $ec                                        ; $404e: $ec
    jp $7ae4                                      ; $404f: $c3 $e4 $7a


    ldh [$fe], a                                  ; $4052: $e0 $fe
    pop hl                                        ; $4054: $e1
    dec l                                         ; $4055: $2d
    dec l                                         ; $4056: $2d
    jr nz, jr_06b_4015                            ; $4057: $20 $bc

    db $e3                                        ; $4059: $e3
    ld l, l                                       ; $405a: $6d
    ldh [rHDMA3], a                               ; $405b: $e0 $53

jr_06b_405d:
    pop af                                        ; $405d: $f1
    xor l                                         ; $405e: $ad
    rst $28                                       ; $405f: $ef
    ret nz                                        ; $4060: $c0

    db $e4                                        ; $4061: $e4
    ld l, l                                       ; $4062: $6d
    cp h                                          ; $4063: $bc
    ld [c], a                                     ; $4064: $e2
    ld a, e                                       ; $4065: $7b
    pop hl                                        ; $4066: $e1
    pop bc                                        ; $4067: $c1
    dec l                                         ; $4068: $2d
    or d                                          ; $4069: $b2
    db $e4                                        ; $406a: $e4
    add l                                         ; $406b: $85
    rst $38                                       ; $406c: $ff
    ret nz                                        ; $406d: $c0

    db $e4                                        ; $406e: $e4
    inc d                                         ; $406f: $14
    pop hl                                        ; $4070: $e1
    pop bc                                        ; $4071: $c1
    ldh [$2b], a                                  ; $4072: $e0 $2b
    dec bc                                        ; $4074: $0b
    ld a, a                                       ; $4075: $7f
    ld l, e                                       ; $4076: $6b
    dec hl                                        ; $4077: $2b
    ld a, [bc]                                    ; $4078: $0a
    ld a, [hl+]                                   ; $4079: $2a
    dec c                                         ; $407a: $0d
    dec c                                         ; $407b: $0d
    dec l                                         ; $407c: $2d
    add l                                         ; $407d: $85
    or $fc                                        ; $407e: $f6 $fc
    nop                                           ; $4080: $00
    db $f4                                        ; $4081: $f4
    add d                                         ; $4082: $82
    db $e3                                        ; $4083: $e3
    ld a, [bc]                                    ; $4084: $0a
    ld a, [bc]                                    ; $4085: $0a
    ld l, d                                       ; $4086: $6a
    dec bc                                        ; $4087: $0b
    ld c, e                                       ; $4088: $4b
    ld c, d                                       ; $4089: $4a
    rra                                           ; $408a: $1f
    ld a, [hl+]                                   ; $408b: $2a
    ld c, d                                       ; $408c: $4a
    dec c                                         ; $408d: $0d
    dec l                                         ; $408e: $2d
    dec l                                         ; $408f: $2d
    sbc $c6                                       ; $4090: $de $c6
    nop                                           ; $4092: $00
    rst $38                                       ; $4093: $ff
    adc $c1                                       ; $4094: $ce $c1
    cp $43                                        ; $4096: $fe $43
    ld [c], a                                     ; $4098: $e2
    ld l, e                                       ; $4099: $6b
    ld c, d                                       ; $409a: $4a
    ld a, [bc]                                    ; $409b: $0a
    ld a, [hl+]                                   ; $409c: $2a
    dec bc                                        ; $409d: $0b
    dec bc                                        ; $409e: $0b
    dec hl                                        ; $409f: $2b
    jp $0a0a                                      ; $40a0: $c3 $0a $0a


    ret nz                                        ; $40a3: $c0

    ld [c], a                                     ; $40a4: $e2
    ld [hl], d                                    ; $40a5: $72
    ret nz                                        ; $40a6: $c0

    nop                                           ; $40a7: $00
    rst $38                                       ; $40a8: $ff
    ld [hl], l                                    ; $40a9: $75
    push bc                                       ; $40aa: $c5
    dec c                                         ; $40ab: $0d
    ld l, l                                       ; $40ac: $6d
    cp a                                          ; $40ad: $bf
    ld c, e                                       ; $40ae: $4b

Jump_06b_40af:
    dec c                                         ; $40af: $0d
    ld c, e                                       ; $40b0: $4b
    ld c, e                                       ; $40b1: $4b
    dec hl                                        ; $40b2: $2b
    dec bc                                        ; $40b3: $0b
    rst $38                                       ; $40b4: $ff
    ldh [rOCPD], a                                ; $40b5: $e0 $6b
    rlca                                          ; $40b7: $07
    ld c, e                                       ; $40b8: $4b
    dec l                                         ; $40b9: $2d
    dec c                                         ; $40ba: $0d
    nop                                           ; $40bb: $00
    ldh [$b5], a                                  ; $40bc: $e0 $b5
    jp nz, $ff00                                  ; $40be: $c2 $00 $ff

    ld c, l                                       ; $40c1: $4d
    pop bc                                        ; $40c2: $c1
    xor $a1                                       ; $40c3: $ee $a1
    ei                                            ; $40c5: $fb
    ld c, e                                       ; $40c6: $4b

Jump_06b_40c7:
    ld c, e                                       ; $40c7: $4b
    ld [$0ba0], a                                 ; $40c8: $ea $a0 $0b
    ld c, e                                       ; $40cb: $4b
    ld c, e                                       ; $40cc: $4b
    ld c, e                                       ; $40cd: $4b
    ld l, e                                       ; $40ce: $6b

Call_06b_40cf:
    adc e                                         ; $40cf: $8b
    ld c, e                                       ; $40d0: $4b
    ld l, e                                       ; $40d1: $6b
    ld b, c                                       ; $40d2: $41
    ldh [$2d], a                                  ; $40d3: $e0 $2d
    rst $38                                       ; $40d5: $ff
    and h                                         ; $40d6: $a4
    nop                                           ; $40d7: $00
    cp $c0                                        ; $40d8: $fe $c0
    push hl                                       ; $40da: $e5
    dec c                                         ; $40db: $0d
    ld e, [hl]                                    ; $40dc: $5e
    ret nz                                        ; $40dd: $c0

    ldh [$0b], a                                  ; $40de: $e0 $0b
    dec c                                         ; $40e0: $0d
    ld c, e                                       ; $40e1: $4b
    dec hl                                        ; $40e2: $2b
    ld a, [hl-]                                   ; $40e3: $3a
    ldh [$2d], a                                  ; $40e4: $e0 $2d
    db $fd                                        ; $40e6: $fd
    ldh [$a8], a                                  ; $40e7: $e0 $a8
    nop                                           ; $40e9: $00
    rst $38                                       ; $40ea: $ff
    add l                                         ; $40eb: $85
    and a                                         ; $40ec: $a7
    res 4, c                                      ; $40ed: $cb $a1
    ld l, l                                       ; $40ef: $6d
    ret nz                                        ; $40f0: $c0

    ldh [$2b], a                                  ; $40f1: $e0 $2b
    add d                                         ; $40f3: $82
    ldh [$2b], a                                  ; $40f4: $e0 $2b
    add e                                         ; $40f6: $83
    dec c                                         ; $40f7: $0d
    ld c, e                                       ; $40f8: $4b
    add e                                         ; $40f9: $83
    ldh [rP1], a                                  ; $40fa: $e0 $00
    rst $38                                       ; $40fc: $ff
    add l                                         ; $40fd: $85
    xor e                                         ; $40fe: $ab
    ld d, [hl]                                    ; $40ff: $56
    and c                                         ; $4100: $a1
    ret nz                                        ; $4101: $c0

    ld [c], a                                     ; $4102: $e2
    dec hl                                        ; $4103: $2b
    add hl, bc                                    ; $4104: $09
    dec bc                                        ; $4105: $0b
    inc h                                         ; $4106: $24
    and b                                         ; $4107: $a0
    inc bc                                        ; $4108: $03
    ret nz                                        ; $4109: $c0

    ld l, l                                       ; $410a: $6d
    ld [hl-], a                                   ; $410b: $32
    and c                                         ; $410c: $a1
    cpl                                           ; $410d: $2f
    and b                                         ; $410e: $a0
    nop                                           ; $410f: $00
    rst $38                                       ; $4110: $ff
    add l                                         ; $4111: $85
    and l                                         ; $4112: $a5
    inc d                                         ; $4113: $14
    ld b, [hl]                                    ; $4114: $46
    ldh [$80], a                                  ; $4115: $e0 $80
    ldh [$0b], a                                  ; $4117: $e0 $0b
    add b                                         ; $4119: $80
    ldh [rOCPD], a                                ; $411a: $e0 $6b
    or a                                          ; $411c: $b7
    and b                                         ; $411d: $a0
    call c, $2b82                                 ; $411e: $dc $82 $2b
    pop bc                                        ; $4121: $c1
    or b                                          ; $4122: $b0
    nop                                           ; $4123: $00
    rst $38                                       ; $4124: $ff
    ld [$84a3], sp                                ; $4125: $08 $a3 $84
    pop bc                                        ; $4128: $c1
    jp Jump_000_0bc0                              ; $4129: $c3 $c0 $0b


    ld l, e                                       ; $412c: $6b
    ret nz                                        ; $412d: $c0

    pop hl                                        ; $412e: $e1
    ld l, l                                       ; $412f: $6d
    or b                                          ; $4130: $b0
    inc bc                                        ; $4131: $03
    and d                                         ; $4132: $a2
    add c                                         ; $4133: $81
    call nz, $db00                                ; $4134: $c4 $00 $db
    ld c, [hl]                                    ; $4137: $4e
    and l                                         ; $4138: $a5
    ld c, e                                       ; $4139: $4b
    dec hl                                        ; $413a: $2b
    ld b, h                                       ; $413b: $44
    ret nz                                        ; $413c: $c0

    ld a, [bc]                                    ; $413d: $0a
    add l                                         ; $413e: $85
    ld c, e                                       ; $413f: $4b
    ld b, c                                       ; $4140: $41
    ldh [rWX], a                                  ; $4141: $e0 $4b
    ret nz                                        ; $4143: $c0

    ret nz                                        ; $4144: $c0

    inc bc                                        ; $4145: $03
    and [hl]                                      ; $4146: $a6
    nop                                           ; $4147: $00
    rst $38                                       ; $4148: $ff
    call nz, Call_06b_4b84                        ; $4149: $c4 $84 $4b
    ld [hl], a                                    ; $414c: $77
    ld l, e                                       ; $414d: $6b
    ld l, e                                       ; $414e: $6b
    dec bc                                        ; $414f: $0b
    ld b, d                                       ; $4150: $42

jr_06b_4151:
    ret nz                                        ; $4151: $c0

    dec bc                                        ; $4152: $0b
    dec c                                         ; $4153: $0d
    ld l, e                                       ; $4154: $6b
    add b                                         ; $4155: $80

jr_06b_4156:
    pop bc                                        ; $4156: $c1
    ld b, b                                       ; $4157: $40
    ld b, [hl]                                    ; $4158: $46
    add [hl]                                      ; $4159: $86
    nop                                           ; $415a: $00
    rst $38                                       ; $415b: $ff
    ret nz                                        ; $415c: $c0

    push hl                                       ; $415d: $e5
    ld a, [bc]                                    ; $415e: $0a
    ret nz                                        ; $415f: $c0

    ret nz                                        ; $4160: $c0

    ld [c], a                                     ; $4161: $e2
    cp d                                          ; $4162: $ba
    and b                                         ; $4163: $a0
    ld c, l                                       ; $4164: $4d
    inc bc                                        ; $4165: $03
    ret nz                                        ; $4166: $c0

    db $10                                        ; $4167: $10
    ld l, l                                       ; $4168: $6d
    add l                                         ; $4169: $85
    nop                                           ; $416a: $00
    rst $38                                       ; $416b: $ff
    ret nz                                        ; $416c: $c0

    push hl                                       ; $416d: $e5
    jp nz, $0ba0                                  ; $416e: $c2 $a0 $0b

    add c                                         ; $4171: $81
    jp nz, $e03f                                  ; $4172: $c2 $3f $e0

    ld [bc], a                                    ; $4175: $02
    ret nz                                        ; $4176: $c0

    jr jr_06b_4151                                ; $4177: $18 $d8

    ld [hl], d                                    ; $4179: $72
    nop                                           ; $417a: $00
    sub e                                         ; $417b: $93
    rst $08                                       ; $417c: $cf
    ld h, b                                       ; $417d: $60
    ld c, l                                       ; $417e: $4d
    dec l                                         ; $417f: $2d
    adc b                                         ; $4180: $88
    and b                                         ; $4181: $a0
    dec b                                         ; $4182: $05
    and b                                         ; $4183: $a0
    rst $38                                       ; $4184: $ff
    ldh [rNR41], a                                ; $4185: $e0 $20
    ld a, h                                       ; $4187: $7c
    and b                                         ; $4188: $a0
    ld [bc], a                                    ; $4189: $02
    jp nz, $9f00                                  ; $418a: $c2 $00 $9f

    sbc l                                         ; $418d: $9d
    xor b                                         ; $418e: $a8
    call z, Call_06b_4b60                         ; $418f: $cc $60 $4b
    add c                                         ; $4192: $81
    and c                                         ; $4193: $a1
    ccf                                           ; $4194: $3f
    ret nz                                        ; $4195: $c0

    jr nz, jr_06b_4156                            ; $4196: $20 $be

    and d                                         ; $4198: $a2
    ld [hl], c                                    ; $4199: $71
    ld h, e                                       ; $419a: $63
    nop                                           ; $419b: $00
    cp a                                          ; $419c: $bf
    nop                                           ; $419d: $00
    and l                                         ; $419e: $a5
    ld c, d                                       ; $419f: $4a
    ld h, b                                       ; $41a0: $60
    dec l                                         ; $41a1: $2d
    add c                                         ; $41a2: $81
    and b                                         ; $41a3: $a0
    cp e                                          ; $41a4: $bb
    ret nz                                        ; $41a5: $c0

    rrca                                          ; $41a6: $0f
    ld a, [bc]                                    ; $41a7: $0a
    dec hl                                        ; $41a8: $2b
    dec c                                         ; $41a9: $0d
    ld l, e                                       ; $41aa: $6b
    rst $38                                       ; $41ab: $ff
    ret nz                                        ; $41ac: $c0

    ld l, [hl]                                    ; $41ad: $6e
    ld h, l                                       ; $41ae: $65
    nop                                           ; $41af: $00
    rst $38                                       ; $41b0: $ff
    ret nz                                        ; $41b1: $c0

    db $e3                                        ; $41b2: $e3
    ld [bc], a                                    ; $41b3: $02
    jp Jump_000_2d40                              ; $41b4: $c3 $40 $2d


    inc bc                                        ; $41b7: $03
    and b                                         ; $41b8: $a0
    add b                                         ; $41b9: $80
    add b                                         ; $41ba: $80
    ret nz                                        ; $41bb: $c0

    ldh [$bf], a                                  ; $41bc: $e0 $bf
    ldh [$32], a                                  ; $41be: $e0 $32
    ld h, e                                       ; $41c0: $63
    nop                                           ; $41c1: $00
    rst $38                                       ; $41c2: $ff
    ld [$6a00], sp                                ; $41c3: $08 $00 $6a
    ld b, h                                       ; $41c6: $44
    ret nz                                        ; $41c7: $c0

    add b                                         ; $41c8: $80
    add b                                         ; $41c9: $80
    dec bc                                        ; $41ca: $0b
    inc [hl]                                      ; $41cb: $34
    ret nz                                        ; $41cc: $c0

    ld a, l                                       ; $41cd: $7d
    pop bc                                        ; $41ce: $c1
    nop                                           ; $41cf: $00
    cp a                                          ; $41d0: $bf
    ld a, e                                       ; $41d1: $7b
    ld b, l                                       ; $41d2: $45
    nop                                           ; $41d3: $00
    ld d, d                                       ; $41d4: $52
    push hl                                       ; $41d5: $e5
    inc b                                         ; $41d6: $04
    pop hl                                        ; $41d7: $e1
    ld b, c                                       ; $41d8: $41
    and c                                         ; $41d9: $a1
    cp a                                          ; $41da: $bf
    db $e3                                        ; $41db: $e3
    ld [hl], $44                                  ; $41dc: $36 $44
    nop                                           ; $41de: $00
    ld a, a                                       ; $41df: $7f
    ld a, a                                       ; $41e0: $7f
    pop bc                                        ; $41e1: $c1
    ld a, e                                       ; $41e2: $7b
    and h                                         ; $41e3: $a4
    inc b                                         ; $41e4: $04
    db $fd                                        ; $41e5: $fd
    ld h, b                                       ; $41e6: $60
    ld a, $81                                     ; $41e7: $3e $81
    ld l, e                                       ; $41e9: $6b
    db $fd                                        ; $41ea: $fd
    ld h, c                                       ; $41eb: $61
    nop                                           ; $41ec: $00
    rst $18                                       ; $41ed: $df
    nop                                           ; $41ee: $00
    ld c, b                                       ; $41ef: $48
    push bc                                       ; $41f0: $c5
    ld hl, $60c1                                  ; $41f1: $21 $c1 $60
    nop                                           ; $41f4: $00
    ld a, a                                       ; $41f5: $7f
    ld h, c                                       ; $41f6: $61
    ld a, [hl]                                    ; $41f7: $7e
    pop bc                                        ; $41f8: $c1
    cp l                                          ; $41f9: $bd
    ld h, b                                       ; $41fa: $60
    cp a                                          ; $41fb: $bf
    ld [hl+], a                                   ; $41fc: $22
    nop                                           ; $41fd: $00
    rst $38                                       ; $41fe: $ff
    nop                                           ; $41ff: $00
    ld h, d                                       ; $4200: $62
    rst $38                                       ; $4201: $ff
    ld b, h                                       ; $4202: $44
    cp a                                          ; $4203: $bf
    add c                                         ; $4204: $81
    ld b, b                                       ; $4205: $40
    cp [hl]                                       ; $4206: $be
    pop bc                                        ; $4207: $c1
    cp d                                          ; $4208: $ba
    add b                                         ; $4209: $80
    inc [hl]                                      ; $420a: $34
    ld b, c                                       ; $420b: $41
    cp e                                          ; $420c: $bb
    ld h, e                                       ; $420d: $63
    nop                                           ; $420e: $00
    rst $38                                       ; $420f: $ff
    jr c, jr_06b_4235                             ; $4210: $38 $23

    ld l, l                                       ; $4212: $6d
    ld a, $82                                     ; $4213: $3e $82
    ld h, e                                       ; $4215: $63
    dec bc                                        ; $4216: $0b
    ld a, [bc]                                    ; $4217: $0a
    cp a                                          ; $4218: $bf
    ld b, b                                       ; $4219: $40
    inc a                                         ; $421a: $3c
    ld h, b                                       ; $421b: $60
    ld a, $60                                     ; $421c: $3e $60
    ld c, $0e                                     ; $421e: $0e $0e
    or a                                          ; $4220: $b7
    ld h, b                                       ; $4221: $60
    cp b                                          ; $4222: $b8
    nop                                           ; $4223: $00
    rst $38                                       ; $4224: $ff
    add e                                         ; $4225: $83
    inc h                                         ; $4226: $24
    pop bc                                        ; $4227: $c1
    ldh [$0a], a                                  ; $4228: $e0 $0a
    ld a, [bc]                                    ; $422a: $0a
    ld c, d                                       ; $422b: $4a
    ret nz                                        ; $422c: $c0

    ld b, c                                       ; $422d: $41
    dec bc                                        ; $422e: $0b
    jp nz, $c07e                                  ; $422f: $c2 $7e $c0

    ld c, e                                       ; $4232: $4b
    ld b, c                                       ; $4233: $41
    ld [c], a                                     ; $4234: $e2

jr_06b_4235:
    ld [hl], a                                    ; $4235: $77
    add d                                         ; $4236: $82
    nop                                           ; $4237: $00
    rst $18                                       ; $4238: $df

jr_06b_4239:
    cp a                                          ; $4239: $bf
    add l                                         ; $423a: $85
    ld a, [bc]                                    ; $423b: $0a
    ld a, [bc]                                    ; $423c: $0a
    add b                                         ; $423d: $80
    ccf                                           ; $423e: $3f
    add b                                         ; $423f: $80
    add b                                         ; $4240: $80
    ld b, b                                       ; $4241: $40
    cp [hl]                                       ; $4242: $be
    ld b, c                                       ; $4243: $41
    db $fd                                        ; $4244: $fd
    ld h, d                                       ; $4245: $62
    add c                                         ; $4246: $81
    ld [c], a                                     ; $4247: $e2
    nop                                           ; $4248: $00
    rst $38                                       ; $4249: $ff
    nop                                           ; $424a: $00
    ld b, e                                       ; $424b: $43
    ld c, e                                       ; $424c: $4b
    ld [de], a                                    ; $424d: $12
    pop bc                                        ; $424e: $c1
    ldh [$0a], a                                  ; $424f: $e0 $0a
    ld a, a                                       ; $4251: $7f
    ld b, b                                       ; $4252: $40
    pop bc                                        ; $4253: $c1
    ldh [rWX], a                                  ; $4254: $e0 $4b
    ld [hl], $21                                  ; $4256: $36 $21
    add b                                         ; $4258: $80
    pop hl                                        ; $4259: $e1
    nop                                           ; $425a: $00
    rst $38                                       ; $425b: $ff
    inc b                                         ; $425c: $04
    nop                                           ; $425d: $00
    jp Jump_000_22bf                              ; $425e: $c3 $bf $22


    ld l, e                                       ; $4261: $6b
    jp Jump_06b_4020                              ; $4262: $c3 $20 $40


    ld b, c                                       ; $4265: $41
    rst $30                                       ; $4266: $f7
    ld bc, $0342                                  ; $4267: $01 $42 $03
    nop                                           ; $426a: $00
    rst $38                                       ; $426b: $ff
    nop                                           ; $426c: $00
    nop                                           ; $426d: $00
    call nz, $a142                                ; $426e: $c4 $42 $a1
    rlca                                          ; $4271: $07
    ld h, b                                       ; $4272: $60
    dec a                                         ; $4273: $3d
    ld h, c                                       ; $4274: $61
    rst $30                                       ; $4275: $f7
    inc b                                         ; $4276: $04
    jr nc, jr_06b_427e                            ; $4277: $30 $05

    nop                                           ; $4279: $00
    rst $18                                       ; $427a: $df
    inc a                                         ; $427b: $3c
    dec h                                         ; $427c: $25
    nop                                           ; $427d: $00

jr_06b_427e:
    ld bc, $fda0                                  ; $427e: $01 $a0 $fd
    ld b, c                                       ; $4281: $41
    jp nz, Jump_06b_4040                          ; $4282: $c2 $40 $40

    ld b, b                                       ; $4285: $40
    ret nz                                        ; $4286: $c0

    db $e3                                        ; $4287: $e3
    nop                                           ; $4288: $00
    sbc a                                         ; $4289: $9f
    call nz, $bf04                                ; $428a: $c4 $04 $bf
    inc hl                                        ; $428d: $23
    add b                                         ; $428e: $80
    ld a, $62                                     ; $428f: $3e $62

jr_06b_4291:
    db $fd                                        ; $4291: $fd
    ld b, b                                       ; $4292: $40
    ld b, d                                       ; $4293: $42
    ld b, $00                                     ; $4294: $06 $00

Jump_06b_4296:
    cp a                                          ; $4296: $bf
    jp Jump_000_3ea6                              ; $4297: $c3 $a6 $3e


    ld b, d                                       ; $429a: $42
    ret nz                                        ; $429b: $c0

    db $e3                                        ; $429c: $e3
    dec bc                                        ; $429d: $0b
    nop                                           ; $429e: $00

Jump_06b_429f:
    ld b, b                                       ; $429f: $40

Jump_06b_42a0:
    add b                                         ; $42a0: $80
    rlca                                          ; $42a1: $07
    pop hl                                        ; $42a2: $e1
    nop                                           ; $42a3: $00
    ccf                                           ; $42a4: $3f
    add c                                         ; $42a5: $81
    ld b, l                                       ; $42a6: $45
    ld e, b                                       ; $42a7: $58
    add c                                         ; $42a8: $81
    jp nz, Jump_000_0281                          ; $42a9: $c2 $81 $02

    jp nz, $403c                                  ; $42ac: $c2 $3c $40

    db $10                                        ; $42af: $10
    cp $40                                        ; $42b0: $fe $40
    add l                                         ; $42b2: $85
    sub $00                                       ; $42b3: $d6 $00
    pop de                                        ; $42b5: $d1
    jr jr_06b_4239                                ; $42b6: $18 $81

    ld c, l                                       ; $42b8: $4d
    jp z, $c080                                   ; $42b9: $ca $80 $c0

    db $e4                                        ; $42bc: $e4
    ei                                            ; $42bd: $fb
    jr nz, jr_06b_42c0                            ; $42be: $20 $00

jr_06b_42c0:
    nop                                           ; $42c0: $00
    ccf                                           ; $42c1: $3f
    jr z, jr_06b_4291                             ; $42c2: $28 $cd

    nop                                           ; $42c4: $00
    db $e3                                        ; $42c5: $e3
    add c                                         ; $42c6: $81
    and e                                         ; $42c7: $a3
    ld a, a                                       ; $42c8: $7f
    nop                                           ; $42c9: $00
    ld [bc], a                                    ; $42ca: $02
    and b                                         ; $42cb: $a0
    nop                                           ; $42cc: $00
    ld e, a                                       ; $42cd: $5f
    ld a, e                                       ; $42ce: $7b
    ld [$fdc0], sp                                ; $42cf: $08 $c0 $fd
    ld h, b                                       ; $42d2: $60
    ret nz                                        ; $42d3: $c0

    and $3f                                       ; $42d4: $e6 $3f
    ld [bc], a                                    ; $42d6: $02
    add l                                         ; $42d7: $85
    rst $38                                       ; $42d8: $ff
    nop                                           ; $42d9: $00
    adc b                                         ; $42da: $88
    cp e                                          ; $42db: $bb
    ld [bc], a                                    ; $42dc: $02
    ld c, e                                       ; $42dd: $4b
    dec c                                         ; $42de: $0d
    nop                                           ; $42df: $00
    ccf                                           ; $42e0: $3f
    ld [c], a                                     ; $42e1: $e2

Jump_06b_42e2:
    add c                                         ; $42e2: $81
    pop hl                                        ; $42e3: $e1
    ld b, d                                       ; $42e4: $42
    add d                                         ; $42e5: $82
    nop                                           ; $42e6: $00
    rst $38                                       ; $42e7: $ff
    add c                                         ; $42e8: $81
    adc b                                         ; $42e9: $88
    cp [hl]                                       ; $42ea: $be
    and d                                         ; $42eb: $a2
    ccf                                           ; $42ec: $3f
    push hl                                       ; $42ed: $e5
    cp [hl]                                       ; $42ee: $be
    and c                                         ; $42ef: $a1
    nop                                           ; $42f0: $00
    nop                                           ; $42f1: $00
    rst $38                                       ; $42f2: $ff
    ld [c], a                                     ; $42f3: $e2
    ld h, l                                       ; $42f4: $65
    ld bc, $9282                                  ; $42f5: $01 $82 $92
    ld b, e                                       ; $42f8: $43
    ret nz                                        ; $42f9: $c0

    push hl                                       ; $42fa: $e5
    cp $04                                        ; $42fb: $fe $04
    nop                                           ; $42fd: $00
    rst $18                                       ; $42fe: $df
    jr jr_06b_4345                                ; $42ff: $18 $44

jr_06b_4301:
    adc b                                         ; $4301: $88
    cp d                                          ; $4302: $ba
    dec b                                         ; $4303: $05
    ld a, [hl]                                    ; $4304: $7e
    pop bc                                        ; $4305: $c1
    cp l                                          ; $4306: $bd
    ld b, b                                       ; $4307: $40
    ld c, e                                       ; $4308: $4b
    cp a                                          ; $4309: $bf
    and [hl]                                      ; $430a: $a6
    nop                                           ; $430b: $00
    rst $38                                       ; $430c: $ff
    ret nz                                        ; $430d: $c0

    add l                                         ; $430e: $85
    ld c, l                                       ; $430f: $4d
    nop                                           ; $4310: $00
    adc h                                         ; $4311: $8c
    add b                                         ; $4312: $80
    ld a, h                                       ; $4313: $7c
    ld bc, $c082                                  ; $4314: $01 $82 $c0
    add c                                         ; $4317: $81
    add c                                         ; $4318: $81
    nop                                           ; $4319: $00
    cp a                                          ; $431a: $bf
    nop                                           ; $431b: $00
    dec h                                         ; $431c: $25
    jp $8cc3                                      ; $431d: $c3 $c3 $8c


Jump_06b_4320:
    add b                                         ; $4320: $80

Jump_06b_4321:
    ld bc, $026b                                  ; $4321: $01 $6b $02
    ld h, d                                       ; $4324: $62
    ld [bc], a                                    ; $4325: $02
    pop bc                                        ; $4326: $c1
    ret nz                                        ; $4327: $c0

    add l                                         ; $4328: $85
    nop                                           ; $4329: $00
    rst $38                                       ; $432a: $ff
    ccf                                           ; $432b: $3f
    rlca                                          ; $432c: $07
    adc e                                         ; $432d: $8b
    ld b, b                                       ; $432e: $40
    ld a, a                                       ; $432f: $7f
    and d                                         ; $4330: $a2
    nop                                           ; $4331: $00
    ld b, d                                       ; $4332: $42
    pop hl                                        ; $4333: $e1
    ret nz                                        ; $4334: $c0

    add [hl]                                      ; $4335: $86
    nop                                           ; $4336: $00
    rst $38                                       ; $4337: $ff
    jp $bd62                                      ; $4338: $c3 $62 $bd


    ld h, d                                       ; $433b: $62
    add $21                                       ; $433c: $c6 $21
    cp a                                          ; $433e: $bf
    add d                                         ; $433f: $82
    ret nz                                        ; $4340: $c0

    pop hl                                        ; $4341: $e1
    nop                                           ; $4342: $00
    ld b, $e3                                     ; $4343: $06 $e3

jr_06b_4345:
    nop                                           ; $4345: $00
    rst $18                                       ; $4346: $df
    add $a3                                       ; $4347: $c6 $a3
    add d                                         ; $4349: $82
    ld b, d                                       ; $434a: $42
    dec bc                                        ; $434b: $0b
    ld b, b                                       ; $434c: $40
    dec b                                         ; $434d: $05
    and c                                         ; $434e: $a1
    jp nz, $2ec1                                  ; $434f: $c2 $c1 $2e

    db $e3                                        ; $4352: $e3
    nop                                           ; $4353: $00
    nop                                           ; $4354: $00
    rst $38                                       ; $4355: $ff
    pop af                                        ; $4356: $f1
    inc h                                         ; $4357: $24
    pop bc                                        ; $4358: $c1
    push hl                                       ; $4359: $e5
    rst $38                                       ; $435a: $ff
    add b                                         ; $435b: $80
    inc a                                         ; $435c: $3c
    nop                                           ; $435d: $00
    add d                                         ; $435e: $82
    jp nz, $b5d8                                  ; $435f: $c2 $d8 $b5

    ld a, e                                       ; $4362: $7b
    ld c, $00                                     ; $4363: $0e $00
    add $a2                                       ; $4365: $c6 $a2
    jp $80c2                                      ; $4367: $c3 $c2 $80


    ld [c], a                                     ; $436a: $e2
    ld b, b                                       ; $436b: $40
    db $e3                                        ; $436c: $e3
    ret nz                                        ; $436d: $c0

    and $00                                       ; $436e: $e6 $00
    rst $38                                       ; $4370: $ff
    ld [hl], l                                    ; $4371: $75
    ld h, c                                       ; $4372: $61
    ld b, l                                       ; $4373: $45
    ret nz                                        ; $4374: $c0

    inc b                                         ; $4375: $04
    ret                                           ; $4376: $c9


    ld h, b                                       ; $4377: $60
    cp $e3                                        ; $4378: $fe $e3
    dec bc                                        ; $437a: $0b
    ld a, e                                       ; $437b: $7b
    jr nz, jr_06b_4301                            ; $437c: $20 $83

    inc bc                                        ; $437e: $03
    nop                                           ; $437f: $00
    rst $38                                       ; $4380: $ff
    nop                                           ; $4381: $00
    rst $20                                       ; $4382: $e7
    add hl, bc                                    ; $4383: $09
    ld [c], a                                     ; $4384: $e2
    ld [bc], a                                    ; $4385: $02
    db $fc                                        ; $4386: $fc
    db $e4                                        ; $4387: $e4
    dec c                                         ; $4388: $0d
    ld [bc], a                                    ; $4389: $02
    add b                                         ; $438a: $80
    or b                                          ; $438b: $b0
    add d                                         ; $438c: $82
    nop                                           ; $438d: $00
    rst $38                                       ; $438e: $ff
    push bc                                       ; $438f: $c5
    ld b, e                                       ; $4390: $43
    add h                                         ; $4391: $84
    jp Jump_06b_63c3                              ; $4392: $c3 $c3 $63


    add b                                         ; $4395: $80
    pop bc                                        ; $4396: $c1
    ld h, c                                       ; $4397: $61
    ld a, a                                       ; $4398: $7f
    jp nz, $df00                                  ; $4399: $c2 $00 $df

    adc h                                         ; $439c: $8c
    inc b                                         ; $439d: $04
    ld b, h                                       ; $439e: $44
    call nz, $e5c1                                ; $439f: $c4 $c1 $e5
    ld a, l                                       ; $43a2: $7d
    ld b, b                                       ; $43a3: $40
    dec c                                         ; $43a4: $0d
    db $10                                        ; $43a5: $10
    ccf                                           ; $43a6: $3f
    ret nz                                        ; $43a7: $c0

    nop                                           ; $43a8: $00
    rst $38                                       ; $43a9: $ff
    ld b, h                                       ; $43aa: $44
    add hl, hl                                    ; $43ab: $29
    ret nz                                        ; $43ac: $c0

    ld [$c00b], a                                 ; $43ad: $ea $0b $c0
    db $e4                                        ; $43b0: $e4
    nop                                           ; $43b1: $00
    rst $38                                       ; $43b2: $ff
    ld a, e                                       ; $43b3: $7b
    rst $20                                       ; $43b4: $e7
    ld a, [de]                                    ; $43b5: $1a
    add b                                         ; $43b6: $80
    ldh [$2b], a                                  ; $43b7: $e0 $2b
    add $c0                                       ; $43b9: $c6 $c0
    dec bc                                        ; $43bb: $0b
    dec l                                         ; $43bc: $2d
    ld a, a                                       ; $43bd: $7f
    and l                                         ; $43be: $a5
    nop                                           ; $43bf: $00
    rst $18                                       ; $43c0: $df
    nop                                           ; $43c1: $00
    ld b, l                                       ; $43c2: $45
    nop                                           ; $43c3: $00
    sub [hl]                                      ; $43c4: $96

Jump_06b_43c5:
    inc hl                                        ; $43c5: $23
    inc b                                         ; $43c6: $04
    ld b, c                                       ; $43c7: $41
    rst $38                                       ; $43c8: $ff
    push bc                                       ; $43c9: $c5
    ld b, d                                       ; $43ca: $42
    ld [hl+], a                                   ; $43cb: $22
    ret nz                                        ; $43cc: $c0

    jp nz, $ff7b                                  ; $43cd: $c2 $7b $ff

    ld a, e                                       ; $43d0: $7b
    ld b, [hl]                                    ; $43d1: $46
    nop                                           ; $43d2: $00
    jp hl                                         ; $43d3: $e9


    nop                                           ; $43d4: $00
    inc bc                                        ; $43d5: $03
    inc hl                                        ; $43d6: $23
    nop                                           ; $43d7: $00
    rst $38                                       ; $43d8: $ff
    nop                                           ; $43d9: $00
    add $85                                       ; $43da: $c6 $85
    ld h, c                                       ; $43dc: $61
    jp nz, Jump_06b_7f20                          ; $43dd: $c2 $20 $7f

    ld b, b                                       ; $43e0: $40
    add h                                         ; $43e1: $84
    nop                                           ; $43e2: $00
    inc bc                                        ; $43e3: $03
    ld [hl+], a                                   ; $43e4: $22
    nop                                           ; $43e5: $00
    ret c                                         ; $43e6: $d8

    ld d, h                                       ; $43e7: $54
    nop                                           ; $43e8: $00
    ld d, d                                       ; $43e9: $52
    ld [bc], a                                    ; $43ea: $02
    inc hl                                        ; $43eb: $23
    db $fd                                        ; $43ec: $fd
    and l                                         ; $43ed: $a5
    add l                                         ; $43ee: $85
    inc b                                         ; $43ef: $04
    nop                                           ; $43f0: $00
    rst $18                                       ; $43f1: $df
    nop                                           ; $43f2: $00
    ld b, a                                       ; $43f3: $47
    ld a, [hl]                                    ; $43f4: $7e
    ld l, c                                       ; $43f5: $69
    nop                                           ; $43f6: $00
    ld b, [hl]                                    ; $43f7: $46
    ld bc, $64c3                                  ; $43f8: $01 $c3 $64
    nop                                           ; $43fb: $00
    rst $38                                       ; $43fc: $ff
    xor a                                         ; $43fd: $af
    ld b, $7b                                     ; $43fe: $06 $7b
    inc hl                                        ; $4400: $23
    ld a, [hl-]                                   ; $4401: $3a
    ld [bc], a                                    ; $4402: $02
    rst $20                                       ; $4403: $e7
    and [hl]                                      ; $4404: $a6
    nop                                           ; $4405: $00
    rst $38                                       ; $4406: $ff
    nop                                           ; $4407: $00
    cp c                                          ; $4408: $b9
    xor c                                         ; $4409: $a9
    dec a                                         ; $440a: $3d
    ld bc, $e7f8                                  ; $440b: $01 $f8 $e7
    or h                                          ; $440e: $b4
    pop hl                                        ; $440f: $e1
    add l                                         ; $4410: $85
    or $00                                        ; $4411: $f6 $00
    nop                                           ; $4413: $00
    nop                                           ; $4414: $00
    rst $38                                       ; $4415: $ff
    call c, $a0dd                                 ; $4416: $dc $dd $a0
    sbc $df                                       ; $4419: $de $df
    ldh [$e1], a                                  ; $441b: $e0 $e1
    ld [c], a                                     ; $441d: $e2
    ld l, e                                       ; $441e: $6b
    db $e3                                        ; $441f: $e3
    db $e4                                        ; $4420: $e4
    or $e7                                        ; $4421: $f6 $e7
    and b                                         ; $4423: $a0
    rst $38                                       ; $4424: $ff
    ldh [$d8], a                                  ; $4425: $e0 $d8
    reti                                          ; $4427: $d9


    ld a, [$3be1]                                 ; $4428: $fa $e1 $3b
    jp c, $f5db                                   ; $442b: $da $db $f5

    db $e4                                        ; $442e: $e4
    ret nc                                        ; $442f: $d0

    pop de                                        ; $4430: $d1
    and b                                         ; $4431: $a0
    ret c                                         ; $4432: $d8

    rst $28                                       ; $4433: $ef
    call nz, $ffe1                                ; $4434: $c4 $e1 $ff
    push hl                                       ; $4437: $e5
    and $e7                                       ; $4438: $e6 $e7
    and b                                         ; $443a: $a0
    add sp, -$17                                  ; $443b: $e8 $e9
    ld [$63eb], a                                 ; $443d: $ea $eb $63
    db $ec                                        ; $4440: $ec
    and b                                         ; $4441: $a0
    or $e7                                        ; $4442: $f6 $e7
    jp nc, $c6e1                                  ; $4444: $d2 $e1 $c6

    ldh [$f5], a                                  ; $4447: $e0 $f5
    or $b7                                        ; $4449: $f6 $b7
    pop hl                                        ; $444b: $e1
    ld b, $bb                                     ; $444c: $06 $bb
    db $e3                                        ; $444e: $e3
    jp nc, $abd3                                  ; $444f: $d2 $d3 $ab

    ldh [$d8], a                                  ; $4452: $e0 $d8
    db $ed                                        ; $4454: $ed
    call nz, $ade1                                ; $4455: $c4 $e1 $ad
    rst $28                                       ; $4458: $ef
    add d                                         ; $4459: $82
    ldh [$ee], a                                  ; $445a: $e0 $ee
    jp nc, $9fe2                                  ; $445c: $d2 $e2 $9f

    and d                                         ; $445f: $a2
    sbc l                                         ; $4460: $9d
    rst $38                                       ; $4461: $ff
    ld [c], a                                     ; $4462: $e2
    and d                                         ; $4463: $a2
    sbc a                                         ; $4464: $9f
    and b                                         ; $4465: $a0
    ccf                                           ; $4466: $3f
    db $ed                                        ; $4467: $ed
    xor $d4                                       ; $4468: $ee $d4
    push de                                       ; $446a: $d5
    rst $28                                       ; $446b: $ef
    and b                                         ; $446c: $a0
    add l                                         ; $446d: $85
    db $ed                                        ; $446e: $ed
    ld c, c                                       ; $446f: $49
    ld [c], a                                     ; $4470: $e2
    ld a, h                                       ; $4471: $7c
    xor l                                         ; $4472: $ad
    ldh a, [$d2]                                  ; $4473: $f0 $d2
    db $e3                                        ; $4475: $e3
    sbc a                                         ; $4476: $9f
    sbc h                                         ; $4477: $9c
    ld a, c                                       ; $4478: $79
    ld a, d                                       ; $4479: $7a
    ld a, e                                       ; $447a: $7b
    rst $38                                       ; $447b: $ff
    ldh [rIE], a                                  ; $447c: $e0 $ff
    ld a, h                                       ; $447e: $7c
    ld a, l                                       ; $447f: $7d
    sbc h                                         ; $4480: $9c

Jump_06b_4481:
    sbc a                                         ; $4481: $9f

Call_06b_4482:
    ldh a, [$f1]                                  ; $4482: $f0 $f1
    ld a, [c]                                     ; $4484: $f2
    di                                            ; $4485: $f3
    sub c                                         ; $4486: $91
    db $f4                                        ; $4487: $f4
    ld a, [hl+]                                   ; $4488: $2a
    ldh [rHDMA3], a                               ; $4489: $e0 $53
    ldh a, [rP1]                                  ; $448b: $f0 $00
    rst $28                                       ; $448d: $ef
    and b                                         ; $448e: $a0
    jp nc, $c1e2                                  ; $448f: $d2 $e2 $c1

    ldh [$7e], a                                  ; $4492: $e0 $7e
    rst $38                                       ; $4494: $ff
    ld b, l                                       ; $4495: $45
    ld b, l                                       ; $4496: $45
    ld b, [hl]                                    ; $4497: $46
    ld b, l                                       ; $4498: $45
    ld c, b                                       ; $4499: $48
    ld c, b                                       ; $449a: $48
    ld a, a                                       ; $449b: $7f
    ld a, l                                       ; $449c: $7d
    rrca                                          ; $449d: $0f
    sbc [hl]                                      ; $449e: $9e
    and b                                         ; $449f: $a0
    sub $d7                                       ; $44a0: $d6 $d7
    ret c                                         ; $44a2: $d8

    pop de                                        ; $44a3: $d1
    nop                                           ; $44a4: $00
    or $43                                        ; $44a5: $f6 $43
    ldh [$c1], a                                  ; $44a7: $e0 $c1
    ldh [rIE], a                                  ; $44a9: $e0 $ff
    ld c, b                                       ; $44ab: $48
    ld c, c                                       ; $44ac: $49
    ld d, d                                       ; $44ad: $52
    ld b, l                                       ; $44ae: $45
    inc sp                                        ; $44af: $33
    ld b, a                                       ; $44b0: $47
    ld h, b                                       ; $44b1: $60
    ld d, l                                       ; $44b2: $55
    add e                                         ; $44b3: $83
    add c                                         ; $44b4: $81
    sbc [hl]                                      ; $44b5: $9e
    or d                                          ; $44b6: $b2
    ret nz                                        ; $44b7: $c0

    ret c                                         ; $44b8: $d8

    pop de                                        ; $44b9: $d1
    nop                                           ; $44ba: $00
    db $f4                                        ; $44bb: $f4
    ret z                                         ; $44bc: $c8

    ret nz                                        ; $44bd: $c0

    add d                                         ; $44be: $82
    ld [c], a                                     ; $44bf: $e2
    ld b, a                                       ; $44c0: $47
    ccf                                           ; $44c1: $3f
    ld d, a                                       ; $44c2: $57
    ld d, d                                       ; $44c3: $52
    ld a, [hl+]                                   ; $44c4: $2a
    jr nz, jr_06b_44f1                            ; $44c5: $20 $2a

    ld d, d                                       ; $44c7: $52
    ret nz                                        ; $44c8: $c0

    pop hl                                        ; $44c9: $e1
    ld a, b                                       ; $44ca: $78
    jp nz, Jump_000_00ec                          ; $44cb: $c2 $ec $00

    rst $38                                       ; $44ce: $ff
    ld a, e                                       ; $44cf: $7b
    jp nz, $d7d6                                  ; $44d0: $c2 $d6 $d7

    inc b                                         ; $44d3: $04
    ldh [rDMA], a                                 ; $44d4: $e0 $46
    add b                                         ; $44d6: $80
    ld b, [hl]                                    ; $44d7: $46
    rst $38                                       ; $44d8: $ff
    ld b, [hl]                                    ; $44d9: $46
    ld b, h                                       ; $44da: $44
    dec hl                                        ; $44db: $2b
    inc l                                         ; $44dc: $2c
    jr nz, jr_06b_44ff                            ; $44dd: $20 $20

    ld a, [hl+]                                   ; $44df: $2a
    ld b, e                                       ; $44e0: $43
    rst $00                                       ; $44e1: $c7
    add e                                         ; $44e2: $83
    add h                                         ; $44e3: $84
    sbc [hl]                                      ; $44e4: $9e
    halt                                          ; $44e5: $76
    push bc                                       ; $44e6: $c5
    nop                                           ; $44e7: $00
    rst $38                                       ; $44e8: $ff

jr_06b_44e9:
    ld b, $c3                                     ; $44e9: $06 $c3
    and c                                         ; $44eb: $a1
    ld b, [hl]                                    ; $44ec: $46
    rst $38                                       ; $44ed: $ff
    ld b, [hl]                                    ; $44ee: $46
    add b                                         ; $44ef: $80
    or d                                          ; $44f0: $b2

jr_06b_44f1:
    or d                                          ; $44f1: $b2
    ld [hl], $21                                  ; $44f2: $36 $21
    ld h, $2f                                     ; $44f4: $26 $2f
    ccf                                           ; $44f6: $3f
    ld a, [hl+]                                   ; $44f7: $2a
    ld b, l                                       ; $44f8: $45
    ld b, [hl]                                    ; $44f9: $46
    adc d                                         ; $44fa: $8a
    add l                                         ; $44fb: $85
    sbc [hl]                                      ; $44fc: $9e
    rst $28                                       ; $44fd: $ef
    and b                                         ; $44fe: $a0

jr_06b_44ff:
    nop                                           ; $44ff: $00
    rst $38                                       ; $4500: $ff
    db $ec                                        ; $4501: $ec
    or $a1                                        ; $4502: $f6 $a1
    call z, $9ea4                                 ; $4504: $cc $a4 $9e
    or d                                          ; $4507: $b2
    ret nz                                        ; $4508: $c0

    ldh [$36], a                                  ; $4509: $e0 $36
    cp e                                          ; $450b: $bb
    dec [hl]                                      ; $450c: $35
    ld a, a                                       ; $450d: $7f
    inc a                                         ; $450e: $3c
    xor [hl]                                      ; $450f: $ae
    or d                                          ; $4510: $b2
    ld b, [hl]                                    ; $4511: $46
    add e                                         ; $4512: $83
    add h                                         ; $4513: $84
    ld b, [hl]                                    ; $4514: $46
    ret nz                                        ; $4515: $c0

    pop bc                                        ; $4516: $c1
    ldh a, [rP1]                                  ; $4517: $f0 $00
    rst $38                                       ; $4519: $ff
    add l                                         ; $451a: $85
    and h                                         ; $451b: $a4
    ld [bc], a                                    ; $451c: $02
    ld [c], a                                     ; $451d: $e2
    ret nz                                        ; $451e: $c0

    ldh [rLCDC], a                                ; $451f: $e0 $40
    dec [hl]                                      ; $4521: $35
    dec [hl]                                      ; $4522: $35
    dec [hl]                                      ; $4523: $35
    rst $38                                       ; $4524: $ff
    inc a                                         ; $4525: $3c
    xor a                                         ; $4526: $af
    ld b, [hl]                                    ; $4527: $46
    add e                                         ; $4528: $83
    add [hl]                                      ; $4529: $86
    add l                                         ; $452a: $85
    or d                                          ; $452b: $b2
    and c                                         ; $452c: $a1
    ldh [$72], a                                  ; $452d: $e0 $72
    and e                                         ; $452f: $a3
    nop                                           ; $4530: $00
    rst $38                                       ; $4531: $ff
    add l                                         ; $4532: $85
    and e                                         ; $4533: $a3
    add c                                         ; $4534: $81
    ldh [$80], a                                  ; $4535: $e0 $80
    ldh [$39], a                                  ; $4537: $e0 $39
    dec [hl]                                      ; $4539: $35

Call_06b_453a:
    dec [hl]                                      ; $453a: $35
    rst $38                                       ; $453b: $ff
    ld l, h                                       ; $453c: $6c
    ld [hl], d                                    ; $453d: $72
    adc b                                         ; $453e: $88
    adc b                                         ; $453f: $88
    add h                                         ; $4540: $84
    add l                                         ; $4541: $85
    or d                                          ; $4542: $b2

Jump_06b_4543:
    sbc h                                         ; $4543: $9c
    pop bc                                        ; $4544: $c1
    sbc a                                         ; $4545: $9f
    jr c, jr_06b_44e9                             ; $4546: $38 $a1

    add hl, hl                                    ; $4548: $29
    and c                                         ; $4549: $a1
    nop                                           ; $454a: $00
    rst $38                                       ; $454b: $ff
    ld d, a                                       ; $454c: $57
    and d                                         ; $454d: $a2
    ld b, c                                       ; $454e: $41
    ldh [rLYC], a                                 ; $454f: $e0 $45
    add b                                         ; $4551: $80
    rst $38                                       ; $4552: $ff
    ld a, [hl-]                                   ; $4553: $3a
    dec [hl]                                      ; $4554: $35
    dec [hl]                                      ; $4555: $35
    ld [hl], e                                    ; $4556: $73
    ld l, [hl]                                    ; $4557: $6e
    or d                                          ; $4558: $b2
    ld b, [hl]                                    ; $4559: $46
    ld b, [hl]                                    ; $455a: $46
    ldh [$c1], a                                  ; $455b: $e0 $c1
    ldh [$03], a                                  ; $455d: $e0 $03
    and b                                         ; $455f: $a0
    inc [hl]                                      ; $4560: $34
    and c                                         ; $4561: $a1
    nop                                           ; $4562: $00
    rst $38                                       ; $4563: $ff
    ld d, a                                       ; $4564: $57
    and h                                         ; $4565: $a4
    sbc [hl]                                      ; $4566: $9e

jr_06b_4567:
    ld b, [hl]                                    ; $4567: $46
    ld b, [hl]                                    ; $4568: $46
    dec de                                        ; $4569: $1b
    add hl, sp                                    ; $456a: $39
    ld l, c                                       ; $456b: $69
    ld b, c                                       ; $456c: $41
    ldh [rOCPS], a                                ; $456d: $e0 $6a
    ld [hl], $c0                                  ; $456f: $36 $c0
    ldh [$82], a                                  ; $4571: $e0 $82
    ldh [$03], a                                  ; $4573: $e0 $03
    and d                                         ; $4575: $a2
    ld hl, sp+$00                                 ; $4576: $f8 $00
    cp a                                          ; $4578: $bf
    add l                                         ; $4579: $85
    and l                                         ; $457a: $a5
    ret nz                                        ; $457b: $c0

    ldh [rLYC], a                                 ; $457c: $e0 $45
    ld a, [hl-]                                   ; $457e: $3a
    ld l, e                                       ; $457f: $6b
    ld l, h                                       ; $4580: $6c
    rr e                                          ; $4581: $cb $1b
    dec [hl]                                      ; $4583: $35
    ld l, d                                       ; $4584: $6a
    jr c, jr_06b_4567                             ; $4585: $38 $e0

    ld b, [hl]                                    ; $4587: $46
    sbc [hl]                                      ; $4588: $9e
    inc bc                                        ; $4589: $03
    and e                                         ; $458a: $a3
    add l                                         ; $458b: $85
    or b                                          ; $458c: $b0
    nop                                           ; $458d: $00
    ld a, [c]                                     ; $458e: $f2
    db $ec                                        ; $458f: $ec
    ld d, l                                       ; $4590: $55
    and b                                         ; $4591: $a0
    ret nz                                        ; $4592: $c0

    ld [c], a                                     ; $4593: $e2
    ld l, [hl]                                    ; $4594: $6e
    ld [hl], h                                    ; $4595: $74
    add b                                         ; $4596: $80
    ldh [$b2], a                                  ; $4597: $e0 $b2
    ld b, [hl]                                    ; $4599: $46
    or d                                          ; $459a: $b2
    jp $9e46                                      ; $459b: $c3 $46 $9e


    inc bc                                        ; $459e: $03
    and d                                         ; $459f: $a2
    add l                                         ; $45a0: $85
    pop de                                        ; $45a1: $d1
    nop                                           ; $45a2: $00
    db $d3                                        ; $45a3: $d3
    ld bc, $39c3                                  ; $45a4: $01 $c3 $39
    cp e                                          ; $45a7: $bb
    nop                                           ; $45a8: $00
    ccf                                           ; $45a9: $3f
    ldh [$80], a                                  ; $45aa: $e0 $80
    ld [c], a                                     ; $45ac: $e2
    jp nz, Jump_000_36c0                          ; $45ad: $c2 $c0 $36

    add c                                         ; $45b0: $81
    nop                                           ; $45b1: $00
    rst $18                                       ; $45b2: $df
    nop                                           ; $45b3: $00
    call nz, $c101                                ; $45b4: $c4 $01 $c1
    jp z, Jump_000_3fc0                           ; $45b7: $ca $c0 $3f

    cp e                                          ; $45ba: $bb
    ld l, e                                       ; $45bb: $6b
    ld l, h                                       ; $45bc: $6c
    ld l, h                                       ; $45bd: $6c
    ld l, l                                       ; $45be: $6d
    or d                                          ; $45bf: $b2

Jump_06b_45c0:
    ccf                                           ; $45c0: $3f
    ld [c], a                                     ; $45c1: $e2
    ld l, l                                       ; $45c2: $6d
    pop hl                                        ; $45c3: $e1
    db $ec                                        ; $45c4: $ec
    add l                                         ; $45c5: $85
    pop af                                        ; $45c6: $f1
    nop                                           ; $45c7: $00
    sub h                                         ; $45c8: $94
    push af                                       ; $45c9: $f5
    or $41                                        ; $45ca: $f6 $41
    and b                                         ; $45cc: $a0
    ld b, l                                       ; $45cd: $45
    ld [hl], $6e                                  ; $45ce: $36 $6e
    rst $38                                       ; $45d0: $ff
    ld [hl], b                                    ; $45d1: $70
    ld [hl], b                                    ; $45d2: $70
    ld l, [hl]                                    ; $45d3: $6e
    jr c, jr_06b_460d                             ; $45d4: $38 $37

    ld b, l                                       ; $45d6: $45
    ld b, [hl]                                    ; $45d7: $46
    ld b, [hl]                                    ; $45d8: $46
    ldh a, [rSC]                                  ; $45d9: $f0 $02
    jp nz, Jump_06b_6180                          ; $45db: $c2 $80 $61

    nop                                           ; $45de: $00
    rst $38                                       ; $45df: $ff
    nop                                           ; $45e0: $00
    xor b                                         ; $45e1: $a8
    or d                                          ; $45e2: $b2
    inc a                                         ; $45e3: $3c
    cp e                                          ; $45e4: $bb
    dec [hl]                                      ; $45e5: $35
    rlca                                          ; $45e6: $07
    dec [hl]                                      ; $45e7: $35
    rst $08                                       ; $45e8: $cf
    rst $08                                       ; $45e9: $cf
    ld a, [hl]                                    ; $45ea: $7e
    ret nz                                        ; $45eb: $c0

    jp nz, Jump_06b_7d82                          ; $45ec: $c2 $82 $7d

    jp $ff00                                      ; $45ef: $c3 $00 $ff


    ld b, $64                                     ; $45f2: $06 $64
    ei                                            ; $45f4: $fb
    sbc a                                         ; $45f5: $9f
    sbc h                                         ; $45f6: $9c
    add c                                         ; $45f7: $81
    and b                                         ; $45f8: $a0
    ld [hl], $3a                                  ; $45f9: $36 $3a
    adc $cb                                       ; $45fb: $ce $cb
    rst $08                                       ; $45fd: $cf
    pop hl                                        ; $45fe: $e1
    or d                                          ; $45ff: $b2
    ccf                                           ; $4600: $3f
    pop bc                                        ; $4601: $c1
    add b                                         ; $4602: $80
    ld h, e                                       ; $4603: $63
    nop                                           ; $4604: $00
    rst $38                                       ; $4605: $ff
    ld de, $d065                                  ; $4606: $11 $65 $d0
    pop de                                        ; $4609: $d1
    sbc a                                         ; $460a: $9f
    rst $38                                       ; $460b: $ff
    sbc h                                         ; $460c: $9c

jr_06b_460d:
    ld [hl], $3c                                  ; $460d: $36 $3c
    xor [hl]                                      ; $460f: $ae
    ld a, $ce                                     ; $4610: $3e $ce
    call z, $c0ce                                 ; $4612: $cc $ce $c0
    cp $a2                                        ; $4615: $fe $a2
    add b                                         ; $4617: $80
    ld h, h                                       ; $4618: $64
    nop                                           ; $4619: $00
    rst $38                                       ; $461a: $ff
    ld a, e                                       ; $461b: $7b
    ld b, b                                       ; $461c: $40
    jp z, $d241                                   ; $461d: $ca $41 $d2

Call_06b_4620:
    ld b, b                                       ; $4620: $40
    sbc [hl]                                      ; $4621: $9e
    or d                                          ; $4622: $b2
    rst $38                                       ; $4623: $ff
    ld a, [hl-]                                   ; $4624: $3a
    xor a                                         ; $4625: $af
    add hl, sp                                    ; $4626: $39
    rst $08                                       ; $4627: $cf
    call Call_06b_40cf                            ; $4628: $cd $cf $40
    ld b, [hl]                                    ; $462b: $46
    ld hl, sp+$7d                                 ; $462c: $f8 $7d
    jp $bf00                                      ; $462e: $c3 $00 $bf


    nop                                           ; $4631: $00
    ld l, e                                       ; $4632: $6b
    and c                                         ; $4633: $a1
    or d                                          ; $4634: $b2
    ld a, [hl-]                                   ; $4635: $3a
    ld [hl], $b2                                  ; $4636: $36 $b2
    rra                                           ; $4638: $1f
    ld [hl], $35                                  ; $4639: $36 $35
    ld [hl], $ae                                  ; $463b: $36 $ae
    xor [hl]                                      ; $463d: $ae
    cp a                                          ; $463e: $bf
    db $e3                                        ; $463f: $e3
    ld a, h                                       ; $4640: $7c
    pop bc                                        ; $4641: $c1
    nop                                           ; $4642: $00
    rst $38                                       ; $4643: $ff
    cp $00                                        ; $4644: $fe $00
    ld h, a                                       ; $4646: $67
    sbc [hl]                                      ; $4647: $9e
    or d                                          ; $4648: $b2
    dec [hl]                                      ; $4649: $35
    inc a                                         ; $464a: $3c
    or d                                          ; $464b: $b2
    or d                                          ; $464c: $b2
    inc a                                         ; $464d: $3c
    rla                                           ; $464e: $17
    ld [hl], $af                                  ; $464f: $36 $af
    xor a                                         ; $4651: $af
    ld a, a                                       ; $4652: $7f
    ldh [$b2], a                                  ; $4653: $e0 $b2
    ld a, $61                                     ; $4655: $3e $61
    nop                                           ; $4657: $00
    rst $38                                       ; $4658: $ff
    nop                                           ; $4659: $00
    ld l, b                                       ; $465a: $68
    ld e, $fd                                     ; $465b: $1e $fd
    ld h, b                                       ; $465d: $60
    inc a                                         ; $465e: $3c
    dec [hl]                                      ; $465f: $35
    ld [hl], $36                                  ; $4660: $36 $36
    ccf                                           ; $4662: $3f
    ldh [$fc], a                                  ; $4663: $e0 $fc
    add c                                         ; $4665: $81
    ret nz                                        ; $4666: $c0

    ldh [$f0], a                                  ; $4667: $e0 $f0
    or [hl]                                       ; $4669: $b6
    ld hl, $ff00                                  ; $466a: $21 $00 $ff
    nop                                           ; $466d: $00
    ld b, e                                       ; $466e: $43
    db $fd                                        ; $466f: $fd
    ld h, e                                       ; $4670: $63
    scf                                           ; $4671: $37
    jr c, jr_06b_46a9                             ; $4672: $38 $35

    rst $08                                       ; $4674: $cf
    rra                                           ; $4675: $1f
    call z, $cccc                                 ; $4676: $cc $cc $cc
    rst $08                                       ; $4679: $cf
    add hl, sp                                    ; $467a: $39
    ld a, l                                       ; $467b: $7d
    add c                                         ; $467c: $81
    or h                                          ; $467d: $b4
    ld hl, $ff00                                  ; $467e: $21 $00 $ff
    db $fc                                        ; $4681: $fc
    nop                                           ; $4682: $00
    ld h, l                                       ; $4683: $65
    rst $38                                       ; $4684: $ff
    ld b, c                                       ; $4685: $41
    ld b, l                                       ; $4686: $45
    or d                                          ; $4687: $b2
    ld b, b                                       ; $4688: $40
    dec [hl]                                      ; $4689: $35
    adc $cb                                       ; $468a: $ce $cb
    rrca                                          ; $468c: $0f
    call z, $cecc                                 ; $468d: $cc $cc $ce
    add hl, sp                                    ; $4690: $39
    cp l                                          ; $4691: $bd
    and c                                         ; $4692: $a1
    ld bc, $0082                                  ; $4693: $01 $82 $00
    rst $38                                       ; $4696: $ff
    nop                                           ; $4697: $00
    ld h, h                                       ; $4698: $64
    ld a, $7f                                     ; $4699: $3e $7f
    and c                                         ; $469b: $a1
    ld b, a                                       ; $469c: $47
    ld c, h                                       ; $469d: $4c
    ld d, l                                       ; $469e: $55
    inc a                                         ; $469f: $3c
    adc $80                                       ; $46a0: $ce $80
    pop hl                                        ; $46a2: $e1
    ld a, [hl]                                    ; $46a3: $7e
    ret nz                                        ; $46a4: $c0

    ldh a, [$3d]                                  ; $46a5: $f0 $3d
    and e                                         ; $46a7: $a3
    nop                                           ; $46a8: $00

jr_06b_46a9:
    rst $38                                       ; $46a9: $ff
    nop                                           ; $46aa: $00
    ld h, [hl]                                    ; $46ab: $66
    add e                                         ; $46ac: $83
    ld b, b                                       ; $46ad: $40
    ld c, l                                       ; $46ae: $4d
    ld h, c                                       ; $46af: $61
    ld e, d                                       ; $46b0: $5a
    dec [hl]                                      ; $46b1: $35

Jump_06b_46b2:
    ld c, $c0                                     ; $46b2: $0e $c0
    ldh [$cf], a                                  ; $46b4: $e0 $cf
    ld [hl], $45                                  ; $46b6: $36 $45
    db $fd                                        ; $46b8: $fd
    ld h, c                                       ; $46b9: $61
    or c                                          ; $46ba: $b1
    ld [bc], a                                    ; $46bb: $02
    nop                                           ; $46bc: $00
    rst $38                                       ; $46bd: $ff
    nop                                           ; $46be: $00
    ld b, h                                       ; $46bf: $44
    ld a, [hl]                                    ; $46c0: $7e
    ret nz                                        ; $46c1: $c0

    ld b, b                                       ; $46c2: $40
    ld d, c                                       ; $46c3: $51
    ld e, [hl]                                    ; $46c4: $5e
    ld h, c                                       ; $46c5: $61
    ld d, l                                       ; $46c6: $55
    inc a                                         ; $46c7: $3c
    call $c0c1                                    ; $46c8: $cd $c1 $c0
    ldh a, [$c1]                                  ; $46cb: $f0 $c1
    ld [c], a                                     ; $46cd: $e2
    ld [hl], a                                    ; $46ce: $77
    ld [bc], a                                    ; $46cf: $02
    nop                                           ; $46d0: $00
    rst $38                                       ; $46d1: $ff
    ld a, e                                       ; $46d2: $7b
    ld b, l                                       ; $46d3: $45
    and c                                         ; $46d4: $a1
    or d                                          ; $46d5: $b2
    or d                                          ; $46d6: $b2
    ld b, l                                       ; $46d7: $45
    scf                                           ; $46d8: $37
    ld d, d                                       ; $46d9: $52
    ld d, d                                       ; $46da: $52
    ld [hl], $be                                  ; $46db: $36 $be
    ld b, b                                       ; $46dd: $40
    ld [hl], $b2                                  ; $46de: $36 $b2
    ld bc, $3f61                                  ; $46e0: $01 $61 $3f
    ld h, h                                       ; $46e3: $64
    ld h, b                                       ; $46e4: $60
    nop                                           ; $46e5: $00
    rst $38                                       ; $46e6: $ff
    ld a, e                                       ; $46e7: $7b
    ld h, d                                       ; $46e8: $62
    ld b, d                                       ; $46e9: $42
    and c                                         ; $46ea: $a1
    cp $40                                        ; $46eb: $fe $40
    cp a                                          ; $46ed: $bf
    ld b, b                                       ; $46ee: $40
    dec [hl]                                      ; $46ef: $35
    cp e                                          ; $46f0: $bb
    pop bc                                        ; $46f1: $c1
    ld [c], a                                     ; $46f2: $e2
    add b                                         ; $46f3: $80
    ld b, d                                       ; $46f4: $42
    ld bc, $9f00                                  ; $46f5: $01 $00 $9f
    or $a6                                        ; $46f8: $f6 $a6
    sub h                                         ; $46fa: $94
    add b                                         ; $46fb: $80
    ld a, $81                                     ; $46fc: $3e $81
    cp a                                          ; $46fe: $bf
    ld b, b                                       ; $46ff: $40
    cp l                                          ; $4700: $bd
    and c                                         ; $4701: $a1
    and c                                         ; $4702: $a1
    or b                                          ; $4703: $b0
    ld b, d                                       ; $4704: $42
    inc bc                                        ; $4705: $03
    nop                                           ; $4706: $00
    sbc a                                         ; $4707: $9f
    nop                                           ; $4708: $00
    ld b, h                                       ; $4709: $44
    cp l                                          ; $470a: $bd
    ld b, l                                       ; $470b: $45
    ld b, h                                       ; $470c: $44
    inc a                                         ; $470d: $3c
    rst $38                                       ; $470e: $ff
    jr nz, jr_06b_4746                            ; $470f: $20 $35

    add c                                         ; $4711: $81
    add hl, sp                                    ; $4712: $39
    ld b, d                                       ; $4713: $42
    ld b, b                                       ; $4714: $40
    ld b, d                                       ; $4715: $42
    dec b                                         ; $4716: $05
    nop                                           ; $4717: $00
    rst $38                                       ; $4718: $ff
    add l                                         ; $4719: $85
    ld bc, $45bd                                  ; $471a: $01 $bd $45
    ld b, c                                       ; $471d: $41
    pop hl                                        ; $471e: $e1
    dec [hl]                                      ; $471f: $35
    inc bc                                        ; $4720: $03
    dec [hl]                                      ; $4721: $35
    ld a, [hl-]                                   ; $4722: $3a
    pop bc                                        ; $4723: $c1
    jp $a202                                      ; $4724: $c3 $02 $a2


    nop                                           ; $4727: $00
    rst $38                                       ; $4728: $ff
    nop                                           ; $4729: $00
    ld [hl+], a                                   ; $472a: $22
    cp l                                          ; $472b: $bd
    ld b, e                                       ; $472c: $43
    ld b, c                                       ; $472d: $41
    ld [c], a                                     ; $472e: $e2
    inc c                                         ; $472f: $0c
    ld a, a                                       ; $4730: $7f
    pop hl                                        ; $4731: $e1
    ld a, $42                                     ; $4732: $3e $42
    ret c                                         ; $4734: $d8

    reti                                          ; $4735: $d9


    nop                                           ; $4736: $00
    rst $38                                       ; $4737: $ff
    nop                                           ; $4738: $00
    inc hl                                        ; $4739: $23
    sub l                                         ; $473a: $95
    ld bc, $60be                                  ; $473b: $01 $be $60
    ld b, b                                       ; $473e: $40
    ret nz                                        ; $473f: $c0

    and $7f                                       ; $4740: $e6 $7f
    ldh [rSC], a                                  ; $4742: $e0 $02
    and d                                         ; $4744: $a2
    nop                                           ; $4745: $00

jr_06b_4746:
    rst $38                                       ; $4746: $ff
    nop                                           ; $4747: $00
    and a                                         ; $4748: $a7
    cp [hl]                                       ; $4749: $be
    nop                                           ; $474a: $00
    and c                                         ; $474b: $a1
    ld b, b                                       ; $474c: $40
    db $e4                                        ; $474d: $e4
    rlca                                          ; $474e: $07
    dec [hl]                                      ; $474f: $35
    inc a                                         ; $4750: $3c
    ld b, h                                       ; $4751: $44
    add d                                         ; $4752: $82
    add b                                         ; $4753: $80
    db $ec                                        ; $4754: $ec
    nop                                           ; $4755: $00
    nop                                           ; $4756: $00
    ld e, a                                       ; $4757: $5f
    or $06                                        ; $4758: $f6 $06
    ld d, h                                       ; $475a: $54
    ld hl, $c082                                  ; $475b: $21 $82 $c0
    push bc                                       ; $475e: $c5
    dec [hl]                                      ; $475f: $35
    add c                                         ; $4760: $81
    and b                                         ; $4761: $a0
    ld b, d                                       ; $4762: $42
    add b                                         ; $4763: $80
    add l                                         ; $4764: $85
    ld a, [c]                                     ; $4765: $f2
    nop                                           ; $4766: $00
    sub l                                         ; $4767: $95
    cp e                                          ; $4768: $bb
    ld bc, $639e                                  ; $4769: $01 $9e $63
    ld b, [hl]                                    ; $476c: $46
    or d                                          ; $476d: $b2
    rst $38                                       ; $476e: $ff
    jp nz, $e181                                  ; $476f: $c2 $81 $e1

    ld [bc], a                                    ; $4772: $02
    add b                                         ; $4773: $80
    ret nc                                        ; $4774: $d0

    pop de                                        ; $4775: $d1
    nop                                           ; $4776: $00
    rst $38                                       ; $4777: $ff

Jump_06b_4778:
    ld h, $7b                                     ; $4778: $26 $7b
    ld [$d3d2], sp                                ; $477a: $08 $d2 $d3
    dec a                                         ; $477d: $3d
    nop                                           ; $477e: $00
    ld a, a                                       ; $477f: $7f
    jp $bf42                                      ; $4780: $c3 $42 $bf


    ld bc, $4081                                  ; $4783: $01 $81 $40
    jr nz, jr_06b_4788                            ; $4786: $20 $00

jr_06b_4788:
    rst $38                                       ; $4788: $ff
    nop                                           ; $4789: $00
    call nz, $a4fe                                ; $478a: $c4 $fe $a4
    inc a                                         ; $478d: $3c
    nop                                           ; $478e: $00
    rst $38                                       ; $478f: $ff
    and d                                         ; $4790: $a2
    ld b, b                                       ; $4791: $40
    add e                                         ; $4792: $83
    ld h, b                                       ; $4793: $60
    cp $03                                        ; $4794: $fe $03
    ret nz                                        ; $4796: $c0

    nop                                           ; $4797: $00
    rst $18                                       ; $4798: $df
    or $a0                                        ; $4799: $f6 $a0
    ret nz                                        ; $479b: $c0

    add c                                         ; $479c: $81
    ld b, b                                       ; $479d: $40
    ld h, h                                       ; $479e: $64
    ccf                                           ; $479f: $3f
    ld [c], a                                     ; $47a0: $e2
    add d                                         ; $47a1: $82
    add b                                         ; $47a2: $80
    ld b, [hl]                                    ; $47a3: $46
    and c                                         ; $47a4: $a1
    inc b                                         ; $47a5: $04
    cp a                                          ; $47a6: $bf
    and l                                         ; $47a7: $a5
    nop                                           ; $47a8: $00
    rst $38                                       ; $47a9: $ff
    rst $18                                       ; $47aa: $df
    dec sp                                        ; $47ab: $3b
    add d                                         ; $47ac: $82
    add b                                         ; $47ad: $80
    ld h, e                                       ; $47ae: $63
    ccf                                           ; $47af: $3f
    and c                                         ; $47b0: $a1
    add d                                         ; $47b1: $82
    ret nz                                        ; $47b2: $c0

    jp Jump_000_2044                              ; $47b3: $c3 $44 $20


    nop                                           ; $47b6: $00
    rst $38                                       ; $47b7: $ff
    nop                                           ; $47b8: $00
    add l                                         ; $47b9: $85
    ld d, l                                       ; $47ba: $55
    ld hl, $207f                                  ; $47bb: $21 $7f $20
    ld a, a                                       ; $47be: $7f
    and e                                         ; $47bf: $a3
    ld b, d                                       ; $47c0: $42
    ret nz                                        ; $47c1: $c0

    ld [bc], a                                    ; $47c2: $02
    xor l                                         ; $47c3: $ad
    jr nz, jr_06b_47d2                            ; $47c4: $20 $0c

    nop                                           ; $47c6: $00
    rst $38                                       ; $47c7: $ff
    nop                                           ; $47c8: $00
    and e                                         ; $47c9: $a3
    sbc $df                                       ; $47ca: $de $df
    ld d, l                                       ; $47cc: $55
    ld hl, $00be                                  ; $47cd: $21 $be $00
    ret nz                                        ; $47d0: $c0

    add d                                         ; $47d1: $82

jr_06b_47d2:
    jp nz, Jump_000_01a0                          ; $47d2: $c2 $a0 $01

    sbc [hl]                                      ; $47d5: $9e
    pop af                                        ; $47d6: $f1
    ld b, b                                       ; $47d7: $40
    xor h                                         ; $47d8: $ac
    nop                                           ; $47d9: $00
    nop                                           ; $47da: $00
    rst $18                                       ; $47db: $df
    nop                                           ; $47dc: $00
    and e                                         ; $47dd: $a3
    ld d, l                                       ; $47de: $55
    inc hl                                        ; $47df: $23
    ld a, $00                                     ; $47e0: $3e $00
    ret nz                                        ; $47e2: $c0

    add c                                         ; $47e3: $81
    add c                                         ; $47e4: $81
    dec sp                                        ; $47e5: $3b
    inc b                                         ; $47e6: $04
    ld h, b                                       ; $47e7: $60
    inc bc                                        ; $47e8: $03
    ret nz                                        ; $47e9: $c0

    add l                                         ; $47ea: $85
    ld [hl], h                                    ; $47eb: $74
    nop                                           ; $47ec: $00
    ld [hl-], a                                   ; $47ed: $32
    sub e                                         ; $47ee: $93
    add d                                         ; $47ef: $82

Jump_06b_47f0:
    ld b, c                                       ; $47f0: $41
    pop hl                                        ; $47f1: $e1
    ld b, l                                       ; $47f2: $45
    ld a, [c]                                     ; $47f3: $f2
    jp Jump_06b_4320                              ; $47f4: $c3 $20 $43


    add c                                         ; $47f7: $81
    nop                                           ; $47f8: $00
    jp $d0a0                                      ; $47f9: $c3 $a0 $d0


    pop de                                        ; $47fc: $d1
    sbc $df                                       ; $47fd: $de $df
    call z, $ff00                                 ; $47ff: $cc $00 $ff
    nop                                           ; $4802: $00
    ld h, d                                       ; $4803: $62
    sub $d7                                       ; $4804: $d6 $d7
    ld b, e                                       ; $4806: $43
    ld b, d                                       ; $4807: $42
    call z, Call_06b_4620                         ; $4808: $cc $20 $46
    ld b, l                                       ; $480b: $45
    ld bc, $433f                                  ; $480c: $01 $3f $43
    nop                                           ; $480f: $00
    add b                                         ; $4810: $80
    ld [c], a                                     ; $4811: $e2
    add e                                         ; $4812: $83
    ld bc, $ff00                                  ; $4813: $01 $00 $ff
    add l                                         ; $4816: $85
    and d                                         ; $4817: $a2
    add e                                         ; $4818: $83
    inc bc                                        ; $4819: $03
    pop bc                                        ; $481a: $c1
    pop hl                                        ; $481b: $e1
    nop                                           ; $481c: $00
    db $fc                                        ; $481d: $fc
    push hl                                       ; $481e: $e5
    ld [bc], a                                    ; $481f: $02
    call nz, $ff00                                ; $4820: $c4 $00 $ff
    or $62                                        ; $4823: $f6 $62
    add e                                         ; $4825: $83
    ld b, b                                       ; $4826: $40
    pop bc                                        ; $4827: $c1
    jp hl                                         ; $4828: $e9


    add d                                         ; $4829: $82
    nop                                           ; $482a: $00
    ld [bc], a                                    ; $482b: $02
    jp RST_10                                     ; $482c: $c3 $10 $00


    rst $38                                       ; $482f: $ff
    nop                                           ; $4830: $00
    ld b, h                                       ; $4831: $44
    add e                                         ; $4832: $83
    ld b, b                                       ; $4833: $40
    add d                                         ; $4834: $82
    jp hl                                         ; $4835: $e9


    or d                                          ; $4836: $b2
    add d                                         ; $4837: $82
    ld b, b                                       ; $4838: $40
    push bc                                       ; $4839: $c5
    ld b, d                                       ; $483a: $42
    nop                                           ; $483b: $00
    rst $38                                       ; $483c: $ff
    ld hl, sp-$0a                                 ; $483d: $f8 $f6
    ld bc, $c104                                  ; $483f: $01 $04 $c1
    add h                                         ; $4842: $84
    ret nz                                        ; $4843: $c0

    ld b, [hl]                                    ; $4844: $46
    ld b, l                                       ; $4845: $45
    ld b, e                                       ; $4846: $43
    ld b, c                                       ; $4847: $41
    ld b, e                                       ; $4848: $43
    ret nz                                        ; $4849: $c0

    db $fd                                        ; $484a: $fd
    ldh [rIE], a                                  ; $484b: $e0 $ff
    push bc                                       ; $484d: $c5
    jr z, jr_06b_48b0                             ; $484e: $28 $60

    nop                                           ; $4850: $00
    rst $38                                       ; $4851: $ff
    ld e, [hl]                                    ; $4852: $5e
    ld h, c                                       ; $4853: $61

jr_06b_4854:
    inc b                                         ; $4854: $04
    push bc                                       ; $4855: $c5
    ld [hl], $3b                                  ; $4856: $36 $3b
    inc bc                                        ; $4858: $03
    dec [hl]                                      ; $4859: $35
    dec sp                                        ; $485a: $3b
    db $fd                                        ; $485b: $fd
    ldh [rSCX], a                                 ; $485c: $e0 $43
    add c                                         ; $485e: $81
    add e                                         ; $485f: $83
    inc h                                         ; $4860: $24
    nop                                           ; $4861: $00
    cp $c7                                        ; $4862: $fe $c7
    add l                                         ; $4864: $85
    add e                                         ; $4865: $83
    ld [hl+], a                                   ; $4866: $22
    rla                                           ; $4867: $17
    inc a                                         ; $4868: $3c
    and h                                         ; $4869: $a4
    ld h, h                                       ; $486a: $64
    rst $38                                       ; $486b: $ff
    ldh [$a5], a                                  ; $486c: $e0 $a5
    ld b, d                                       ; $486e: $42
    add c                                         ; $486f: $81
    ld b, e                                       ; $4870: $43
    jr nz, jr_06b_48a1                            ; $4871: $20 $2e

    jr nz, @-$06                                  ; $4873: $20 $f8

    nop                                           ; $4875: $00
    rst $38                                       ; $4876: $ff
    nop                                           ; $4877: $00
    ld b, b                                       ; $4878: $40
    push bc                                       ; $4879: $c5
    ld b, l                                       ; $487a: $45
    ld b, [hl]                                    ; $487b: $46
    ld b, d                                       ; $487c: $42
    dec [hl]                                      ; $487d: $35
    ld l, c                                       ; $487e: $69
    and e                                         ; $487f: $a3
    rrca                                          ; $4880: $0f
    dec [hl]                                      ; $4881: $35
    dec [hl]                                      ; $4882: $35
    and e                                         ; $4883: $a3
    ld l, d                                       ; $4884: $6a
    ld b, d                                       ; $4885: $42
    add b                                         ; $4886: $80
    inc bc                                        ; $4887: $03
    ld hl, HeaderNewLicenseeCode                  ; $4888: $21 $44 $01
    nop                                           ; $488b: $00
    rst $38                                       ; $488c: $ff
    ld [bc], a                                    ; $488d: $02
    nop                                           ; $488e: $00
    call nz, $43a0                                ; $488f: $c4 $a0 $43
    jr nz, jr_06b_4854                            ; $4892: $20 $c0

    ldh [rSCX], a                                 ; $4894: $e0 $43
    ld b, c                                       ; $4896: $41
    ret nz                                        ; $4897: $c0

    ld [c], a                                     ; $4898: $e2
    ld b, h                                       ; $4899: $44
    ld [bc], a                                    ; $489a: $02
    and a                                         ; $489b: $a7
    add e                                         ; $489c: $83
    ld a, [$bf00]                                 ; $489d: $fa $00 $bf
    db $e4                                        ; $48a0: $e4

jr_06b_48a1:
    push bc                                       ; $48a1: $c5
    ld b, c                                       ; $48a2: $41
    or d                                          ; $48a3: $b2
    or d                                          ; $48a4: $b2
    ld b, h                                       ; $48a5: $44
    inc a                                         ; $48a6: $3c
    ld l, e                                       ; $48a7: $6b
    dec b                                         ; $48a8: $05
    ld [hl], c                                    ; $48a9: $71
    rst $38                                       ; $48aa: $ff
    ldh [$6d], a                                  ; $48ab: $e0 $6d
    add d                                         ; $48ad: $82
    ld h, b                                       ; $48ae: $60
    inc bc                                        ; $48af: $03

jr_06b_48b0:
    ld hl, $01eb                                  ; $48b0: $21 $eb $01
    nop                                           ; $48b3: $00
    rst $18                                       ; $48b4: $df
    nop                                           ; $48b5: $00
    rst $00                                       ; $48b6: $c7
    ld bc, $c0b2                                  ; $48b7: $01 $b2 $c0
    rst $00                                       ; $48ba: $c7
    inc bc                                        ; $48bb: $03
    ld [hl+], a                                   ; $48bc: $22
    adc [hl]                                      ; $48bd: $8e
    nop                                           ; $48be: $00
    nop                                           ; $48bf: $00
    rst $38                                       ; $48c0: $ff
    nop                                           ; $48c1: $00
    ld [hl+], a                                   ; $48c2: $22
    ld b, e                                       ; $48c3: $43
    and b                                         ; $48c4: $a0
    ld [bc], a                                    ; $48c5: $02
    ld [hl+], a                                   ; $48c6: $22
    and b                                         ; $48c7: $a0
    ld b, b                                       ; $48c8: $40
    push bc                                       ; $48c9: $c5
    inc bc                                        ; $48ca: $03
    inc h                                         ; $48cb: $24
    nop                                           ; $48cc: $00
    rst $18                                       ; $48cd: $df
    nop                                           ; $48ce: $00
    add a                                         ; $48cf: $87
    ld [bc], a                                    ; $48d0: $02
    ld hl, $ff9d                                  ; $48d1: $21 $9d $ff
    push hl                                       ; $48d4: $e5
    sbc a                                         ; $48d5: $9f
    ld h, b                                       ; $48d6: $60
    ld [hl], b                                    ; $48d7: $70
    add e                                         ; $48d8: $83
    nop                                           ; $48d9: $00
    rst $18                                       ; $48da: $df
    ld a, e                                       ; $48db: $7b
    dec b                                         ; $48dc: $05
    dec d                                         ; $48dd: $15
    ld h, h                                       ; $48de: $64
    cp $e5                                        ; $48df: $fe $e5
    sub $d7                                       ; $48e1: $d6 $d7
    inc bc                                        ; $48e3: $03
    ld [hl+], a                                   ; $48e4: $22
    nop                                           ; $48e5: $00
    db $e3                                        ; $48e6: $e3
    and b                                         ; $48e7: $a0
    nop                                           ; $48e8: $00
    rst $38                                       ; $48e9: $ff
    or $02                                        ; $48ea: $f6 $02
    call nc, $1004                                ; $48ec: $d4 $04 $10
    ld [hl+], a                                   ; $48ef: $22
    halt                                          ; $48f0: $76
    add b                                         ; $48f1: $80
    or c                                          ; $48f2: $b1
    add c                                         ; $48f3: $81
    nop                                           ; $48f4: $00
    sbc e                                         ; $48f5: $9b
    nop                                           ; $48f6: $00
    nop                                           ; $48f7: $00
    nop                                           ; $48f8: $00
    pop bc                                        ; $48f9: $c1
    nop                                           ; $48fa: $00
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
    nop                                           ; $4906: $00
    dec c                                         ; $4907: $0d
    add b                                         ; $4908: $80
    cp $e0                                        ; $4909: $fe $e0
    nop                                           ; $490b: $00
    ld b, b                                       ; $490c: $40
    ret c                                         ; $490d: $d8

    push hl                                       ; $490e: $e5
    rst $30                                       ; $490f: $f7
    and $ff                                       ; $4910: $e6 $ff
    rst $38                                       ; $4912: $ff
    rst $38                                       ; $4913: $ff
    rst $30                                       ; $4914: $f7
    nop                                           ; $4915: $00
    nop                                           ; $4916: $00
    nop                                           ; $4917: $00
    ld bc, $1900                                  ; $4918: $01 $00 $19
    ld [$0101], sp                                ; $491b: $08 $01 $01
    ld a, [de]                                    ; $491e: $1a
    ld [$0201], sp                                ; $491f: $08 $01 $02
    ld d, $09                                     ; $4922: $16 $09
    ld bc, $1903                                  ; $4924: $01 $03 $19
    add hl, bc                                    ; $4927: $09
    ld bc, $1b04                                  ; $4928: $01 $04 $1b
    add hl, bc                                    ; $492b: $09
    ld bc, $1f05                                  ; $492c: $01 $05 $1f
    add hl, bc                                    ; $492f: $09
    ld bc, $1606                                  ; $4930: $01 $06 $16
    ld a, [bc]                                    ; $4933: $0a
    ld [bc], a                                    ; $4934: $02
    rlca                                          ; $4935: $07
    ld e, $0a                                     ; $4936: $1e $0a
    ld bc, $2308                                  ; $4938: $01 $08 $23
    ld a, [bc]                                    ; $493b: $0a
    ld bc, $1509                                  ; $493c: $01 $09 $15
    dec bc                                        ; $493f: $0b
    ld bc, $160a                                  ; $4940: $01 $0a $16
    dec bc                                        ; $4943: $0b
    ld bc, $220b                                  ; $4944: $01 $0b $22
    dec bc                                        ; $4947: $0b
    ld bc, $150c                                  ; $4948: $01 $0c $15
    inc c                                         ; $494b: $0c
    ld bc, $1e0d                                  ; $494c: $01 $0d $1e
    inc c                                         ; $494f: $0c
    ld bc, $210e                                  ; $4950: $01 $0e $21
    inc c                                         ; $4953: $0c
    ld bc, $1e0f                                  ; $4954: $01 $0f $1e
    dec c                                         ; $4957: $0d
    ld bc, $1d10                                  ; $4958: $01 $10 $1d
    ld c, $01                                     ; $495b: $0e $01
    ld de, $0e1e                                  ; $495d: $11 $1e $0e
    ld bc, $1d12                                  ; $4960: $01 $12 $1d
    rrca                                          ; $4963: $0f
    ld bc, $1f13                                  ; $4964: $01 $13 $1f
    rrca                                          ; $4967: $0f
    ld bc, $1814                                  ; $4968: $01 $14 $18
    db $10                                        ; $496b: $10
    ld bc, $1d15                                  ; $496c: $01 $15 $1d
    db $10                                        ; $496f: $10
    ld bc, $1e16                                  ; $4970: $01 $16 $1e
    db $10                                        ; $4973: $10
    ld bc, $1717                                  ; $4974: $01 $17 $17
    ld de, $1801                                  ; $4977: $11 $01 $18
    jr @+$13                                      ; $497a: $18 $11

    ld bc, $1d19                                  ; $497c: $01 $19 $1d
    ld de, $1a01                                  ; $497f: $11 $01 $1a
    ld e, $11                                     ; $4982: $1e $11
    ld bc, $1f1b                                  ; $4984: $01 $1b $1f
    ld de, $1c01                                  ; $4987: $11 $01 $1c
    jr jr_06b_499f                                ; $498a: $18 $13

    ld bc, $1a1d                                  ; $498c: $01 $1d $1a
    inc de                                        ; $498f: $13
    ld bc, $201e                                  ; $4990: $01 $1e $20
    inc de                                        ; $4993: $13
    ld bc, $201f                                  ; $4994: $01 $1f $20
    inc d                                         ; $4997: $14
    ld bc, $2020                                  ; $4998: $01 $20 $20
    dec d                                         ; $499b: $15
    ld bc, $1921                                  ; $499c: $01 $21 $19

jr_06b_499f:
    ld d, $02                                     ; $499f: $16 $02
    ld [hl+], a                                   ; $49a1: $22
    dec de                                        ; $49a2: $1b
    ld d, $01                                     ; $49a3: $16 $01
    inc hl                                        ; $49a5: $23
    add hl, de                                    ; $49a6: $19
    rla                                           ; $49a7: $17
    ld bc, $1c24                                  ; $49a8: $01 $24 $1c
    rla                                           ; $49ab: $17
    ld bc, $1925                                  ; $49ac: $01 $25 $19
    jr @+$03                                      ; $49af: $18 $01

    ld h, $1c                                     ; $49b1: $26 $1c
    jr jr_06b_49b6                                ; $49b3: $18 $01

    daa                                           ; $49b5: $27

jr_06b_49b6:
    dec e                                         ; $49b6: $1d
    jr jr_06b_49bb                                ; $49b7: $18 $02

    jr z, jr_06b_49db                             ; $49b9: $28 $20

jr_06b_49bb:
    jr @+$04                                      ; $49bb: $18 $02

    add hl, hl                                    ; $49bd: $29
    ld hl, $0118                                  ; $49be: $21 $18 $01
    ld a, [hl+]                                   ; $49c1: $2a
    dec h                                         ; $49c2: $25
    jr jr_06b_49c6                                ; $49c3: $18 $01

    dec hl                                        ; $49c5: $2b

jr_06b_49c6:
    add hl, de                                    ; $49c6: $19
    add hl, de                                    ; $49c7: $19
    ld bc, $222c                                  ; $49c8: $01 $2c $22
    add hl, de                                    ; $49cb: $19
    ld bc, $252d                                  ; $49cc: $01 $2d $25
    add hl, de                                    ; $49cf: $19
    ld bc, $192e                                  ; $49d0: $01 $2e $19
    ld a, [de]                                    ; $49d3: $1a
    ld bc, $242f                                  ; $49d4: $01 $2f $24
    ld a, [de]                                    ; $49d7: $1a
    ld bc, $1a30                                  ; $49d8: $01 $30 $1a

jr_06b_49db:
    dec de                                        ; $49db: $1b
    ld bc, $1631                                  ; $49dc: $01 $31 $16
    ld e, $01                                     ; $49df: $1e $01
    ld [hl-], a                                   ; $49e1: $32
    ld d, $1f                                     ; $49e2: $16 $1f
    ld bc, $1733                                  ; $49e4: $01 $33 $17
    rra                                           ; $49e7: $1f
    ld bc, $2034                                  ; $49e8: $01 $34 $20
    rra                                           ; $49eb: $1f
    ld bc, $2135                                  ; $49ec: $01 $35 $21
    rra                                           ; $49ef: $1f
    ld bc, $1736                                  ; $49f0: $01 $36 $17
    jr nz, jr_06b_49f6                            ; $49f3: $20 $01

    scf                                           ; $49f5: $37

jr_06b_49f6:
    ld e, $20                                     ; $49f6: $1e $20
    ld bc, $1f38                                  ; $49f8: $01 $38 $1f
    jr nz, jr_06b_49fe                            ; $49fb: $20 $01

    add hl, sp                                    ; $49fd: $39

jr_06b_49fe:
    jr nz, @+$22                                  ; $49fe: $20 $20

Jump_06b_4a00:
    ld bc, $1f3a                                  ; $4a00: $01 $3a $1f
    ld hl, $3b01                                  ; $4a03: $21 $01 $3b
    jr nz, @+$23                                  ; $4a06: $20 $21

    ld bc, $203c                                  ; $4a08: $01 $3c $20
    ld [hl+], a                                   ; $4a0b: $22
    ld bc, $233d                                  ; $4a0c: $01 $3d $23
    dec h                                         ; $4a0f: $25
    ld bc, $233e                                  ; $4a10: $01 $3e $23
    ld h, $01                                     ; $4a13: $26 $01
    ccf                                           ; $4a15: $3f
    inc hl                                        ; $4a16: $23
    daa                                           ; $4a17: $27
    ld bc, $1940                                  ; $4a18: $01 $40 $19
    jr z, jr_06b_4a1e                             ; $4a1b: $28 $01

    ld b, c                                       ; $4a1d: $41

jr_06b_4a1e:
    ld [hl+], a                                   ; $4a1e: $22
    jr z, jr_06b_4a22                             ; $4a1f: $28 $01

    ld b, d                                       ; $4a21: $42

jr_06b_4a22:
    inc hl                                        ; $4a22: $23
    jr z, jr_06b_4a26                             ; $4a23: $28 $01

    ld b, e                                       ; $4a25: $43

jr_06b_4a26:
    add hl, de                                    ; $4a26: $19
    add hl, hl                                    ; $4a27: $29
    ld bc, $2244                                  ; $4a28: $01 $44 $22
    add hl, hl                                    ; $4a2b: $29
    ld bc, $1945                                  ; $4a2c: $01 $45 $19
    ld a, [hl+]                                   ; $4a2f: $2a
    ld bc, $1a46                                  ; $4a30: $01 $46 $1a
    ld a, [hl+]                                   ; $4a33: $2a
    ld bc, $2247                                  ; $4a34: $01 $47 $22
    ld a, [hl+]                                   ; $4a37: $2a
    ld bc, $1948                                  ; $4a38: $01 $48 $19
    dec hl                                        ; $4a3b: $2b
    ld bc, $1a49                                  ; $4a3c: $01 $49 $1a
    dec hl                                        ; $4a3f: $2b
    ld bc, $194a                                  ; $4a40: $01 $4a $19
    inc l                                         ; $4a43: $2c
    ld bc, $1e4b                                  ; $4a44: $01 $4b $1e
    inc sp                                        ; $4a47: $33
    ld bc, $1f4c                                  ; $4a48: $01 $4c $1f
    inc [hl]                                      ; $4a4b: $34
    ld bc, $204d                                  ; $4a4c: $01 $4d $20
    ld [hl], $01                                  ; $4a4f: $36 $01
    ld c, [hl]                                    ; $4a51: $4e
    jr nz, @+$39                                  ; $4a52: $20 $37

    ld bc, $134f                                  ; $4a54: $01 $4f $13
    add hl, sp                                    ; $4a57: $39
    ld bc, $1350                                  ; $4a58: $01 $50 $13
    ld a, [hl-]                                   ; $4a5b: $3a
    ld bc, $1451                                  ; $4a5c: $01 $51 $14
    ld a, [hl-]                                   ; $4a5f: $3a
    ld bc, $1452                                  ; $4a60: $01 $52 $14
    dec sp                                        ; $4a63: $3b
    ld bc, $1553                                  ; $4a64: $01 $53 $15
    inc a                                         ; $4a67: $3c
    rst $38                                       ; $4a68: $ff
    rst $38                                       ; $4a69: $ff
    rst $38                                       ; $4a6a: $ff
    ld [hl], e                                    ; $4a6b: $73
    ld c, d                                       ; $4a6c: $4a
    and [hl]                                      ; $4a6d: $a6
    ld c, [hl]                                    ; $4a6e: $4e
    xor [hl]                                      ; $4a6f: $ae
    ld d, e                                       ; $4a70: $53
    call $ff53                                    ; $4a71: $cd $53 $ff
    ld c, $0e                                     ; $4a74: $0e $0e
    dec c                                         ; $4a76: $0d
    dec c                                         ; $4a77: $0d
    dec c                                         ; $4a78: $0d
    ld c, l                                       ; $4a79: $4d
    ld c, l                                       ; $4a7a: $4d
    ld c, l                                       ; $4a7b: $4d
    inc b                                         ; $4a7c: $04
    ld hl, sp-$20                                 ; $4a7d: $f8 $e0
    push af                                       ; $4a7f: $f5
    ldh [rKEY1], a                                ; $4a80: $e0 $4d
    push af                                       ; $4a82: $f5
    ldh [$ee], a                                  ; $4a83: $e0 $ee
    ld [c], a                                     ; $4a85: $e2
    di                                            ; $4a86: $f3
    pop hl                                        ; $4a87: $e1
    ei                                            ; $4a88: $fb
    pop hl                                        ; $4a89: $e1
    cp $e2                                        ; $4a8a: $fe $e2
    inc b                                         ; $4a8c: $04
    or $fb                                        ; $4a8d: $f6 $fb
    jp z, Jump_06b_4de0                           ; $4a8f: $ca $e0 $4d

    ret nc                                        ; $4a92: $d0

    ld [c], a                                     ; $4a93: $e2
    or l                                          ; $4a94: $b5
    pop hl                                        ; $4a95: $e1
    or [hl]                                       ; $4a96: $b6
    ldh [$b1], a                                  ; $4a97: $e0 $b1
    ld [c], a                                     ; $4a99: $e2
    or b                                          ; $4a9a: $b0
    ldh [rNR23], a                                ; $4a9b: $e0 $18
    xor a                                         ; $4a9d: $af
    pop hl                                        ; $4a9e: $e1
    ld a, [$f6e4]                                 ; $4a9f: $fa $e4 $f6
    ei                                            ; $4aa2: $fb
    ld c, $0e                                     ; $4aa3: $0e $0e
    ret nz                                        ; $4aa5: $c0

    db $e3                                        ; $4aa6: $e3
    cp d                                          ; $4aa7: $ba
    ldh [rPCM12], a                               ; $4aa8: $e0 $76
    pop hl                                        ; $4aaa: $e1
    pop bc                                        ; $4aab: $c1
    dec l                                         ; $4aac: $2d
    or e                                          ; $4aad: $b3
    db $e4                                        ; $4aae: $e4
    add l                                         ; $4aaf: $85
    rst $38                                       ; $4ab0: $ff
    ld [c], a                                     ; $4ab1: $e2
    push hl                                       ; $4ab2: $e5
    add b                                         ; $4ab3: $80
    pop hl                                        ; $4ab4: $e1
    ld c, h                                       ; $4ab5: $4c
    pop hl                                        ; $4ab6: $e1
    ld c, l                                       ; $4ab7: $4d
    dec c                                         ; $4ab8: $0d
    ccf                                           ; $4ab9: $3f
    ld l, l                                       ; $4aba: $6d
    ld a, [bc]                                    ; $4abb: $0a
    ld a, [bc]                                    ; $4abc: $0a
    ld a, [hl+]                                   ; $4abd: $2a
    ld c, l                                       ; $4abe: $4d
    dec l                                         ; $4abf: $2d
    add e                                         ; $4ac0: $83
    pop hl                                        ; $4ac1: $e1
    add l                                         ; $4ac2: $85
    rst $38                                       ; $4ac3: $ff
    ld d, b                                       ; $4ac4: $50
    ld [c], a                                     ; $4ac5: $e2
    push hl                                       ; $4ac6: $e5
    rst $00                                       ; $4ac7: $c7
    ld [c], a                                     ; $4ac8: $e2
    add h                                         ; $4ac9: $84
    pop hl                                        ; $4aca: $e1
    jp Jump_06b_6be0                              ; $4acb: $c3 $e0 $6b


    ret nz                                        ; $4ace: $c0

    ldh [rWY], a                                  ; $4acf: $e0 $4a
    ret nz                                        ; $4ad1: $c0

    pop hl                                        ; $4ad2: $e1
    ld hl, sp+$00                                 ; $4ad3: $f8 $00
    rst $38                                       ; $4ad5: $ff
    nop                                           ; $4ad6: $00
    db $eb                                        ; $4ad7: $eb
    inc a                                         ; $4ad8: $3c
    pop hl                                        ; $4ad9: $e1
    dec hl                                        ; $4ada: $2b
    ld a, [bc]                                    ; $4adb: $0a
    dec bc                                        ; $4adc: $0b
    dec bc                                        ; $4add: $0b
    dec bc                                        ; $4ade: $0b
    rla                                           ; $4adf: $17
    dec hl                                        ; $4ae0: $2b
    ld a, [hl+]                                   ; $4ae1: $2a
    ld a, [bc]                                    ; $4ae2: $0a
    ccf                                           ; $4ae3: $3f
    ldh [$0d], a                                  ; $4ae4: $e0 $0d
    nop                                           ; $4ae6: $00
    rst $38                                       ; $4ae7: $ff
    nop                                           ; $4ae8: $00
    db $eb                                        ; $4ae9: $eb
    dec sp                                        ; $4aea: $3b
    pop hl                                        ; $4aeb: $e1
    ei                                            ; $4aec: $fb
    dec l                                         ; $4aed: $2d
    dec hl                                        ; $4aee: $2b
    ret nz                                        ; $4aef: $c0

    ldh [rOCPD], a                                ; $4af0: $e0 $6b
    ld a, [hl+]                                   ; $4af2: $2a
    ld c, e                                       ; $4af3: $4b
    dec l                                         ; $4af4: $2d
    dec l                                         ; $4af5: $2d
    ldh a, [$ee]                                  ; $4af6: $f0 $ee
    ret nz                                        ; $4af8: $c0

    add l                                         ; $4af9: $85
    rst $38                                       ; $4afa: $ff
    nop                                           ; $4afb: $00
    ld [$c2bc], a                                 ; $4afc: $ea $bc $c2
    ld l, e                                       ; $4aff: $6b
    dec bc                                        ; $4b00: $0b
    dec bc                                        ; $4b01: $0b
    ld c, e                                       ; $4b02: $4b
    rst $20                                       ; $4b03: $e7
    ld a, [bc]                                    ; $4b04: $0a
    ld a, [bc]                                    ; $4b05: $0a
    ld a, [bc]                                    ; $4b06: $0a
    nop                                           ; $4b07: $00
    rst $38                                       ; $4b08: $ff
    nop                                           ; $4b09: $00
    db $f4                                        ; $4b0a: $f4
    dec hl                                        ; $4b0b: $2b
    ld c, e                                       ; $4b0c: $4b
    ld c, e                                       ; $4b0d: $4b
    add d                                         ; $4b0e: $82
    ret nz                                        ; $4b0f: $c0

    ldh [rWX], a                                  ; $4b10: $e0 $4b
    ret nz                                        ; $4b12: $c0

    pop hl                                        ; $4b13: $e1
    ld a, [$85a3]                                 ; $4b14: $fa $a3 $85
    rst $38                                       ; $4b17: $ff
    nop                                           ; $4b18: $00
    call nz, $a2cb                                ; $4b19: $c4 $cb $a2
    dec bc                                        ; $4b1c: $0b
    rst $38                                       ; $4b1d: $ff
    ld l, e                                       ; $4b1e: $6b
    ld a, [bc]                                    ; $4b1f: $0a
    dec hl                                        ; $4b20: $2b
    ld l, e                                       ; $4b21: $6b
    ld l, e                                       ; $4b22: $6b
    ld c, e                                       ; $4b23: $4b
    dec c                                         ; $4b24: $0d
    ld l, l                                       ; $4b25: $6d
    ldh a, [rSC]                                  ; $4b26: $f0 $02
    jp nz, $ff85                                  ; $4b28: $c2 $85 $ff

    call c, $84e8                                 ; $4b2b: $dc $e8 $84
    and d                                         ; $4b2e: $a2
    dec l                                         ; $4b2f: $2d
    ld l, e                                       ; $4b30: $6b
    ld l, e                                       ; $4b31: $6b
    dec hl                                        ; $4b32: $2b
    rlca                                          ; $4b33: $07
    ld l, e                                       ; $4b34: $6b
    dec c                                         ; $4b35: $0d
    ld l, e                                       ; $4b36: $6b
    pop bc                                        ; $4b37: $c1
    pop bc                                        ; $4b38: $c1

jr_06b_4b39:
    xor e                                         ; $4b39: $ab
    and d                                         ; $4b3a: $a2
    add l                                         ; $4b3b: $85
    rst $38                                       ; $4b3c: $ff
    nop                                           ; $4b3d: $00
    push bc                                       ; $4b3e: $c5
    ld d, c                                       ; $4b3f: $51

jr_06b_4b40:
    and h                                         ; $4b40: $a4
    ret nz                                        ; $4b41: $c0

    ret nz                                        ; $4b42: $c0

    db $e4                                        ; $4b43: $e4
    cp a                                          ; $4b44: $bf
    and e                                         ; $4b45: $a3
    halt                                          ; $4b46: $76
    and c                                         ; $4b47: $a1
    ld a, e                                       ; $4b48: $7b
    rst $38                                       ; $4b49: $ff
    ld [hl+], a                                   ; $4b4a: $22
    db $e3                                        ; $4b4b: $e3
    pop bc                                        ; $4b4c: $c1
    and e                                         ; $4b4d: $a3
    ld l, l                                       ; $4b4e: $6d
    dec hl                                        ; $4b4f: $2b
    pop bc                                        ; $4b50: $c1
    dec bc                                        ; $4b51: $0b
    add b                                         ; $4b52: $80
    pop hl                                        ; $4b53: $e1
    ld a, a                                       ; $4b54: $7f
    and c                                         ; $4b55: $a1
    or e                                          ; $4b56: $b3
    and d                                         ; $4b57: $a2
    add l                                         ; $4b58: $85
    rst $38                                       ; $4b59: $ff
    nop                                           ; $4b5a: $00
    jp hl                                         ; $4b5b: $e9


    ld c, l                                       ; $4b5c: $4d
    dec c                                         ; $4b5d: $0d
    add c                                         ; $4b5e: $81
    ld l, e                                       ; $4b5f: $6b

Call_06b_4b60:
    ret nz                                        ; $4b60: $c0

    ld [c], a                                     ; $4b61: $e2
    cp a                                          ; $4b62: $bf
    pop hl                                        ; $4b63: $e1
    rst $28                                       ; $4b64: $ef
    add e                                         ; $4b65: $83
    ld a, [$00c7]                                 ; $4b66: $fa $c7 $00
    sbc $c0                                       ; $4b69: $de $c0
    db $e3                                        ; $4b6b: $e3
    ld c, e                                       ; $4b6c: $4b
    ld bc, $fe0a                                  ; $4b6d: $01 $0a $fe
    and b                                         ; $4b70: $a0
    cp a                                          ; $4b71: $bf
    db $e4                                        ; $4b72: $e4
    ld a, h                                       ; $4b73: $7c
    pop bc                                        ; $4b74: $c1
    ld a, e                                       ; $4b75: $7b
    rst $18                                       ; $4b76: $df
    ld [c], a                                     ; $4b77: $e2
    db $e3                                        ; $4b78: $e3
    ld c, e                                       ; $4b79: $4b
    add d                                         ; $4b7a: $82
    add b                                         ; $4b7b: $80
    ldh [$82], a                                  ; $4b7c: $e0 $82
    add c                                         ; $4b7e: $81
    and c                                         ; $4b7f: $a1
    dec hl                                        ; $4b80: $2b
    cp a                                          ; $4b81: $bf
    db $e3                                        ; $4b82: $e3

Jump_06b_4b83:
    inc a                                         ; $4b83: $3c

Call_06b_4b84:
    jp nz, $bf7b                                  ; $4b84: $c2 $7b $bf

    nop                                           ; $4b87: $00
    and l                                         ; $4b88: $a5
    add l                                         ; $4b89: $85
    add d                                         ; $4b8a: $82
    dec l                                         ; $4b8b: $2d
    rst $38                                       ; $4b8c: $ff
    ld l, e                                       ; $4b8d: $6b
    ld c, e                                       ; $4b8e: $4b
    ld c, e                                       ; $4b8f: $4b
    ld l, e                                       ; $4b90: $6b
    dec hl                                        ; $4b91: $2b
    dec hl                                        ; $4b92: $2b
    dec hl                                        ; $4b93: $2b
    ld c, e                                       ; $4b94: $4b
    rlca                                          ; $4b95: $07
    dec bc                                        ; $4b96: $0b
    dec hl                                        ; $4b97: $2b
    dec bc                                        ; $4b98: $0b
    inc a                                         ; $4b99: $3c
    db $e3                                        ; $4b9a: $e3
    jr c, jr_06b_4b40                             ; $4b9b: $38 $a3

    nop                                           ; $4b9d: $00

Jump_06b_4b9e:
    rst $38                                       ; $4b9e: $ff
    rst $38                                       ; $4b9f: $ff
    add d                                         ; $4ba0: $82
    add b                                         ; $4ba1: $80
    and b                                         ; $4ba2: $a0
    ld c, $c0                                     ; $4ba3: $0e $c0
    ldh [$0b], a                                  ; $4ba5: $e0 $0b
    ld c, e                                       ; $4ba7: $4b
    ld c, e                                       ; $4ba8: $4b
    cp c                                          ; $4ba9: $b9
    ret nz                                        ; $4baa: $c0

    cp a                                          ; $4bab: $bf
    ld [c], a                                     ; $4bac: $e2
    ld a, e                                       ; $4bad: $7b
    rst $18                                       ; $4bae: $df
    jr jr_06b_4b39                                ; $4baf: $18 $88

    ld [bc], a                                    ; $4bb1: $02
    rst $38                                       ; $4bb2: $ff
    and d                                         ; $4bb3: $a2
    dec bc                                        ; $4bb4: $0b
    pop bc                                        ; $4bb5: $c1
    ret nz                                        ; $4bb6: $c0

    cp c                                          ; $4bb7: $b9
    pop bc                                        ; $4bb8: $c1
    ld hl, sp-$40                                 ; $4bb9: $f8 $c0
    ld a, d                                       ; $4bbb: $7a
    and d                                         ; $4bbc: $a2
    nop                                           ; $4bbd: $00
    rst $38                                       ; $4bbe: $ff
    nop                                           ; $4bbf: $00
    db $e3                                        ; $4bc0: $e3
    xor $dd                                       ; $4bc1: $ee $dd
    db $e4                                        ; $4bc3: $e4
    ld c, l                                       ; $4bc4: $4d
    dec c                                         ; $4bc5: $0d
    dec l                                         ; $4bc6: $2d
    add b                                         ; $4bc7: $80
    pop bc                                        ; $4bc8: $c1
    ld l, e                                       ; $4bc9: $6b
    ld c, e                                       ; $4bca: $4b
    dec bc                                        ; $4bcb: $0b
    nop                                           ; $4bcc: $00
    halt                                          ; $4bcd: $76
    add b                                         ; $4bce: $80
    ld a, [$7b84]                                 ; $4bcf: $fa $84 $7b
    rst $18                                       ; $4bd2: $df
    nop                                           ; $4bd3: $00
    push hl                                       ; $4bd4: $e5
    ld b, c                                       ; $4bd5: $41
    ld h, d                                       ; $4bd6: $62
    cp a                                          ; $4bd7: $bf
    pop hl                                        ; $4bd8: $e1
    ld bc, $fee0                                  ; $4bd9: $01 $e0 $fe
    jp $ae60                                      ; $4bdc: $c3 $60 $ae


    ld h, c                                       ; $4bdf: $61
    ld a, e                                       ; $4be0: $7b
    rst $38                                       ; $4be1: $ff
    nop                                           ; $4be2: $00
    and d                                         ; $4be3: $a2
    ld a, l                                       ; $4be4: $7d
    and l                                         ; $4be5: $a5

jr_06b_4be6:
    cp a                                          ; $4be6: $bf
    pop hl                                        ; $4be7: $e1
    ld l, e                                       ; $4be8: $6b
    dec hl                                        ; $4be9: $2b
    scf                                           ; $4bea: $37
    ret nz                                        ; $4beb: $c0

    ld bc, $b92b                                  ; $4bec: $01 $2b $b9
    add b                                         ; $4bef: $80
    cp $c2                                        ; $4bf0: $fe $c2
    nop                                           ; $4bf2: $00
    rst $38                                       ; $4bf3: $ff
    cp $44                                        ; $4bf4: $fe $44
    adc e                                         ; $4bf6: $8b
    ld b, h                                       ; $4bf7: $44
    cp $80                                        ; $4bf8: $fe $80
    cp a                                          ; $4bfa: $bf

jr_06b_4bfb:
    ldh [$80], a                                  ; $4bfb: $e0 $80
    cp c                                          ; $4bfd: $b9
    add c                                         ; $4bfe: $81
    ld a, e                                       ; $4bff: $7b

jr_06b_4c00:
    ld e, a                                       ; $4c00: $5f
    nop                                           ; $4c01: $00
    rst $20                                       ; $4c02: $e7
    adc l                                         ; $4c03: $8d
    ld b, c                                       ; $4c04: $41
    call z, $fda3                                 ; $4c05: $cc $a3 $fd
    ret nz                                        ; $4c08: $c0

    ld a, [$6ba0]                                 ; $4c09: $fa $a0 $6b
    and b                                         ; $4c0c: $a0
    nop                                           ; $4c0d: $00
    ldh [$c0], a                                  ; $4c0e: $e0 $c0
    db $e3                                        ; $4c10: $e3
    nop                                           ; $4c11: $00
    rst $38                                       ; $4c12: $ff
    sbc l                                         ; $4c13: $9d
    rst $20                                       ; $4c14: $e7
    cp d                                          ; $4c15: $ba
    add e                                         ; $4c16: $83
    dec c                                         ; $4c17: $0d
    add b                                         ; $4c18: $80
    ret nz                                        ; $4c19: $c0

    ld l, e                                       ; $4c1a: $6b
    ld bc, $f94b                                  ; $4c1b: $01 $4b $f9
    add h                                         ; $4c1e: $84
    nop                                           ; $4c1f: $00
    rst $38                                       ; $4c20: $ff
    inc a                                         ; $4c21: $3c
    ld b, l                                       ; $4c22: $45
    jr c, @+$45                                   ; $4c23: $38 $43

    add hl, sp                                    ; $4c25: $39
    and c                                         ; $4c26: $a1
    db $fc                                        ; $4c27: $fc
    and b                                         ; $4c28: $a0
    or [hl]                                       ; $4c29: $b6
    ld h, b                                       ; $4c2a: $60
    ret nz                                        ; $4c2b: $c0

    cp a                                          ; $4c2c: $bf
    call nz, $bf7b                                ; $4c2d: $c4 $7b $bf
    sbc l                                         ; $4c30: $9d
    db $e4                                        ; $4c31: $e4
    cp e                                          ; $4c32: $bb

jr_06b_4c33:
    and e                                         ; $4c33: $a3
    ld sp, hl                                     ; $4c34: $f9
    add c                                         ; $4c35: $81
    ld a, e                                       ; $4c36: $7b
    and c                                         ; $4c37: $a1
    dec c                                         ; $4c38: $0d
    dec c                                         ; $4c39: $0d
    jr nz, jr_06b_4bfb                            ; $4c3a: $20 $bf

    call nz, $ff00                                ; $4c3c: $c4 $00 $ff
    sbc l                                         ; $4c3f: $9d
    add e                                         ; $4c40: $83
    ld a, e                                       ; $4c41: $7b
    jr nz, jr_06b_4cbe                            ; $4c42: $20 $7a

    add d                                         ; $4c44: $82
    ld l, l                                       ; $4c45: $6d
    ret nz                                        ; $4c46: $c0

    jr nz, jr_06b_4c00                            ; $4c47: $20 $b7

    ld b, c                                       ; $4c49: $41
    ld bc, $7f0d                                  ; $4c4a: $01 $0d $7f
    pop hl                                        ; $4c4d: $e1
    nop                                           ; $4c4e: $00
    cp a                                          ; $4c4f: $bf
    nop                                           ; $4c50: $00
    db $ec                                        ; $4c51: $ec
    ld a, [hl-]                                   ; $4c52: $3a
    add b                                         ; $4c53: $80
    cp e                                          ; $4c54: $bb
    and b                                         ; $4c55: $a0
    cp b                                          ; $4c56: $b8
    add e                                         ; $4c57: $83
    ld a, l                                       ; $4c58: $7d
    and h                                         ; $4c59: $a4
    ld [$ff00], sp                                ; $4c5a: $08 $00 $ff
    jr jr_06b_4be6                                ; $4c5d: $18 $87

    pop bc                                        ; $4c5f: $c1
    jp nz, Jump_06b_7e4b                          ; $4c60: $c2 $4b $7e

    ret nz                                        ; $4c63: $c0

    cp l                                          ; $4c64: $bd
    add b                                         ; $4c65: $80
    ccf                                           ; $4c66: $3f
    ldh [$a6], a                                  ; $4c67: $e0 $a6
    inc b                                         ; $4c69: $04
    nop                                           ; $4c6a: $00
    nop                                           ; $4c6b: $00
    rst $38                                       ; $4c6c: $ff
    jr jr_06b_4c33                                ; $4c6d: $18 $c4

    cp c                                          ; $4c6f: $b9
    ld hl, $e141                                  ; $4c70: $21 $41 $e1
    ret nz                                        ; $4c73: $c0

    ld [c], a                                     ; $4c74: $e2
    db $fd                                        ; $4c75: $fd
    add c                                         ; $4c76: $81
    ld h, a                                       ; $4c77: $67
    add e                                         ; $4c78: $83
    ld a, e                                       ; $4c79: $7b
    db $dd                                        ; $4c7a: $dd
    ld [$a79d], sp                                ; $4c7b: $08 $9d $a7
    cp a                                          ; $4c7e: $bf
    and l                                         ; $4c7f: $a5
    db $fd                                        ; $4c80: $fd
    and c                                         ; $4c81: $a1
    dec hl                                        ; $4c82: $2b
    db $fd                                        ; $4c83: $fd
    add b                                         ; $4c84: $80
    cp d                                          ; $4c85: $ba
    ld h, d                                       ; $4c86: $62
    add hl, sp                                    ; $4c87: $39
    call nz, $fd00                                ; $4c88: $c4 $00 $fd
    inc c                                         ; $4c8b: $0c
    add b                                         ; $4c8c: $80
    ld bc, $a37f                                  ; $4c8d: $01 $7f $a3
    ld c, e                                       ; $4c90: $4b
    dec bc                                        ; $4c91: $0b
    db $fc                                        ; $4c92: $fc
    add c                                         ; $4c93: $81
    ei                                            ; $4c94: $fb
    ld h, c                                       ; $4c95: $61
    ld a, [hl-]                                   ; $4c96: $3a
    ld h, e                                       ; $4c97: $63
    nop                                           ; $4c98: $00
    rst $38                                       ; $4c99: $ff
    nop                                           ; $4c9a: $00
    ld a, [$b904]                                 ; $4c9b: $fa $04 $b9
    ld b, d                                       ; $4c9e: $42
    cp [hl]                                       ; $4c9f: $be
    add c                                         ; $4ca0: $81
    ld hl, sp+$00                                 ; $4ca1: $f8 $00
    ld a, d                                       ; $4ca3: $7a
    ret nz                                        ; $4ca4: $c0

    rst $38                                       ; $4ca5: $ff
    ret nz                                        ; $4ca6: $c0

    ld [hl], $23                                  ; $4ca7: $36 $23
    nop                                           ; $4ca9: $00
    rst $38                                       ; $4caa: $ff
    nop                                           ; $4cab: $00
    adc [hl]                                      ; $4cac: $8e
    ld b, h                                       ; $4cad: $44
    cp d                                          ; $4cae: $ba
    ld h, d                                       ; $4caf: $62
    add d                                         ; $4cb0: $82
    ldh [$c1], a                                  ; $4cb1: $e0 $c1
    pop bc                                        ; $4cb3: $c1
    db $fd                                        ; $4cb4: $fd
    add d                                         ; $4cb5: $82
    xor [hl]                                      ; $4cb6: $ae
    and d                                         ; $4cb7: $a2
    nop                                           ; $4cb8: $00
    rst $38                                       ; $4cb9: $ff
    sub a                                         ; $4cba: $97
    add d                                         ; $4cbb: $82
    nop                                           ; $4cbc: $00
    rst $38                                       ; $4cbd: $ff

jr_06b_4cbe:
    and h                                         ; $4cbe: $a4
    ld a, $83                                     ; $4cbf: $3e $83
    ld sp, hl                                     ; $4cc1: $f9
    ld h, c                                       ; $4cc2: $61
    ld a, [hl]                                    ; $4cc3: $7e
    add d                                         ; $4cc4: $82
    and h                                         ; $4cc5: $a4
    add e                                         ; $4cc6: $83
    nop                                           ; $4cc7: $00
    rst $38                                       ; $4cc8: $ff
    ld a, c                                       ; $4cc9: $79
    dec h                                         ; $4cca: $25
    ld a, a                                       ; $4ccb: $7f
    add b                                         ; $4ccc: $80
    nop                                           ; $4ccd: $00
    add c                                         ; $4cce: $81
    and e                                         ; $4ccf: $a3
    ld a, [hl]                                    ; $4cd0: $7e
    add l                                         ; $4cd1: $85
    nop                                           ; $4cd2: $00
    rst $38                                       ; $4cd3: $ff
    jr jr_06b_4d1c                                ; $4cd4: $18 $46

    call $c042                                    ; $4cd6: $cd $42 $c0
    ld [c], a                                     ; $4cd9: $e2
    rst $30                                       ; $4cda: $f7
    ld b, b                                       ; $4cdb: $40
    ld a, [hl]                                    ; $4cdc: $7e
    add l                                         ; $4cdd: $85
    inc c                                         ; $4cde: $0c
    nop                                           ; $4cdf: $00
    rst $38                                       ; $4ce0: $ff
    sbc l                                         ; $4ce1: $9d
    xor d                                         ; $4ce2: $aa
    ld c, l                                       ; $4ce3: $4d
    dec l                                         ; $4ce4: $2d
    ld b, c                                       ; $4ce5: $41
    ld h, b                                       ; $4ce6: $60
    add hl, sp                                    ; $4ce7: $39
    ld b, b                                       ; $4ce8: $40
    add c                                         ; $4ce9: $81
    jp nz, $2376                                  ; $4cea: $c2 $76 $23

    nop                                           ; $4ced: $00
    or $5d                                        ; $4cee: $f6 $5d
    sbc l                                         ; $4cf0: $9d
    rst $20                                       ; $4cf1: $e7
    rst $08                                       ; $4cf2: $cf
    add d                                         ; $4cf3: $82
    ld hl, sp+$21                                 ; $4cf4: $f8 $21
    ld a, b                                       ; $4cf6: $78
    jr nz, @+$80                                  ; $4cf7: $20 $7e

    ld h, c                                       ; $4cf9: $61
    ld a, c                                       ; $4cfa: $79
    ld [hl+], a                                   ; $4cfb: $22
    ld [hl+], a                                   ; $4cfc: $22
    ld bc, $00c8                                  ; $4cfd: $01 $c8 $00
    rst $38                                       ; $4d00: $ff
    jr @-$59                                      ; $4d01: $18 $a5

    cp b                                          ; $4d03: $b8
    ld hl, $770a                                  ; $4d04: $21 $0a $77
    ld b, b                                       ; $4d07: $40
    cp h                                          ; $4d08: $bc
    add b                                         ; $4d09: $80
    ld c, l                                       ; $4d0a: $4d
    dec l                                         ; $4d0b: $2d
    ld d, c                                       ; $4d0c: $51
    ld l, l                                       ; $4d0d: $6d
    cp a                                          ; $4d0e: $bf
    push bc                                       ; $4d0f: $c5
    nop                                           ; $4d10: $00
    rst $38                                       ; $4d11: $ff
    or l                                          ; $4d12: $b5
    ld b, $6d                                     ; $4d13: $06 $6d
    inc b                                         ; $4d15: $04
    pop hl                                        ; $4d16: $e1
    dec bc                                        ; $4d17: $0b
    or $20                                        ; $4d18: $f6 $20
    and b                                         ; $4d1a: $a0
    ei                                            ; $4d1b: $fb

jr_06b_4d1c:
    inc h                                         ; $4d1c: $24
    db $fd                                        ; $4d1d: $fd
    db $e3                                        ; $4d1e: $e3
    sbc $64                                       ; $4d1f: $de $64
    nop                                           ; $4d21: $00
    reti                                          ; $4d22: $d9


    ld b, b                                       ; $4d23: $40
    adc e                                         ; $4d24: $8b
    dec bc                                        ; $4d25: $0b
    ld a, [hl-]                                   ; $4d26: $3a
    add b                                         ; $4d27: $80
    ld c, e                                       ; $4d28: $4b
    and b                                         ; $4d29: $a0
    ld sp, $3d60                                  ; $4d2a: $31 $60 $3d
    db $e3                                        ; $4d2d: $e3
    sbc [hl]                                      ; $4d2e: $9e
    ld b, h                                       ; $4d2f: $44
    nop                                           ; $4d30: $00
    jp c, Jump_06b_45c0                           ; $4d31: $da $c0 $45

    dec l                                         ; $4d34: $2d
    pop bc                                        ; $4d35: $c1
    ld [c], a                                     ; $4d36: $e2
    ld c, e                                       ; $4d37: $4b
    ld h, b                                       ; $4d38: $60
    ld a, b                                       ; $4d39: $78
    ld b, b                                       ; $4d3a: $40
    dec sp                                        ; $4d3b: $3b
    ret nz                                        ; $4d3c: $c0

    ld a, l                                       ; $4d3d: $7d
    and $ba                                       ; $4d3e: $e6 $ba
    jp $9f00                                      ; $4d40: $c3 $00 $9f


    ld l, e                                       ; $4d43: $6b
    ld c, l                                       ; $4d44: $4d
    ld bc, $00a1                                  ; $4d45: $01 $a1 $00
    rst $38                                       ; $4d48: $ff
    ld [c], a                                     ; $4d49: $e2
    ld a, [$baa0]                                 ; $4d4a: $fa $a0 $ba
    ld h, c                                       ; $4d4d: $61
    ld a, a                                       ; $4d4e: $7f
    call nz, $ff00                                ; $4d4f: $c4 $00 $ff
    dec d                                         ; $4d52: $15
    ld [c], a                                     ; $4d53: $e2
    ret                                           ; $4d54: $c9


    ld b, b                                       ; $4d55: $40
    nop                                           ; $4d56: $00
    add c                                         ; $4d57: $81
    ld b, b                                       ; $4d58: $40
    cp [hl]                                       ; $4d59: $be
    db $e3                                        ; $4d5a: $e3
    cp a                                          ; $4d5b: $bf
    db $e3                                        ; $4d5c: $e3
    push af                                       ; $4d5d: $f5
    ld [bc], a                                    ; $4d5e: $02
    db $10                                        ; $4d5f: $10
    ld c, c                                       ; $4d60: $49
    nop                                           ; $4d61: $00
    ld [hl], e                                    ; $4d62: $73
    rst $38                                       ; $4d63: $ff
    daa                                           ; $4d64: $27
    ld c, e                                       ; $4d65: $4b
    rst $38                                       ; $4d66: $ff
    ld h, e                                       ; $4d67: $63
    nop                                           ; $4d68: $00
    inc sp                                        ; $4d69: $33
    nop                                           ; $4d6a: $00
    ld [hl], h                                    ; $4d6b: $74
    ld [hl+], a                                   ; $4d6c: $22
    ld [hl], e                                    ; $4d6d: $73
    inc bc                                        ; $4d6e: $03
    sbc l                                         ; $4d6f: $9d
    add d                                         ; $4d70: $82
    nop                                           ; $4d71: $00
    ei                                            ; $4d72: $fb
    cp d                                          ; $4d73: $ba
    inc bc                                        ; $4d74: $03
    ld [hl], a                                    ; $4d75: $77
    ld bc, $837c                                  ; $4d76: $01 $7c $83
    nop                                           ; $4d79: $00
    cp b                                          ; $4d7a: $b8
    jp nz, Jump_000_0273                          ; $4d7b: $c2 $73 $02

    ld h, l                                       ; $4d7e: $65
    add e                                         ; $4d7f: $83
    or h                                          ; $4d80: $b4
    and h                                         ; $4d81: $a4
    nop                                           ; $4d82: $00
    sub a                                         ; $4d83: $97
    ccf                                           ; $4d84: $3f
    add h                                         ; $4d85: $84
    ld a, $60                                     ; $4d86: $3e $60
    dec sp                                        ; $4d88: $3b
    add c                                         ; $4d89: $81
    nop                                           ; $4d8a: $00
    ret nz                                        ; $4d8b: $c0

    db $e3                                        ; $4d8c: $e3
    di                                            ; $4d8d: $f3
    ld [bc], a                                    ; $4d8e: $02
    ld [hl], a                                    ; $4d8f: $77
    jp nz, Jump_06b_429f                          ; $4d90: $c2 $9f $42

    ld l, $03                                     ; $4d93: $2e $03
    nop                                           ; $4d95: $00
    ld [hl], b                                    ; $4d96: $70
    ld d, [hl]                                    ; $4d97: $56
    ld h, d                                       ; $4d98: $62
    cp $c5                                        ; $4d99: $fe $c5
    jr jr_06b_4ddb                                ; $4d9b: $18 $3e

    ld [c], a                                     ; $4d9d: $e2
    pop bc                                        ; $4d9e: $c1
    db $e4                                        ; $4d9f: $e4
    or d                                          ; $4da0: $b2
    ld bc, $2b2b                                  ; $4da1: $01 $2b $2b
    ld h, [hl]                                    ; $4da4: $66
    jr nz, jr_06b_4dde                            ; $4da5: $20 $37

    and h                                         ; $4da7: $a4
    nop                                           ; $4da8: $00
    cp c                                          ; $4da9: $b9
    nop                                           ; $4daa: $00
    dec [hl]                                      ; $4dab: $35
    ld [hl+], a                                   ; $4dac: $22
    add [hl]                                      ; $4dad: $86
    ld hl, $e289                                  ; $4dae: $21 $89 $e2
    rst $38                                       ; $4db1: $ff
    and $72                                       ; $4db2: $e6 $72
    ld b, c                                       ; $4db4: $41
    ld sp, hl                                     ; $4db5: $f9
    pop bc                                        ; $4db6: $c1
    ld [hl], h                                    ; $4db7: $74
    and h                                         ; $4db8: $a4
    inc d                                         ; $4db9: $14
    ld b, e                                       ; $4dba: $43
    nop                                           ; $4dbb: $00
    nop                                           ; $4dbc: $00
    or c                                          ; $4dbd: $b1
    push af                                       ; $4dbe: $f5
    inc bc                                        ; $4dbf: $03
    dec a                                         ; $4dc0: $3d
    ld b, b                                       ; $4dc1: $40
    ld a, l                                       ; $4dc2: $7d
    ld hl, $e7c0                                  ; $4dc3: $21 $c0 $e7
    halt                                          ; $4dc6: $76
    push bc                                       ; $4dc7: $c5
    db $f4                                        ; $4dc8: $f4
    ld b, h                                       ; $4dc9: $44
    and a                                         ; $4dca: $a7
    ld h, $00                                     ; $4dcb: $26 $00
    nop                                           ; $4dcd: $00
    xor [hl]                                      ; $4dce: $ae
    call nc, $be63                                ; $4dcf: $d4 $63 $be
    pop hl                                        ; $4dd2: $e1
    ld a, l                                       ; $4dd3: $7d
    nop                                           ; $4dd4: $00
    cp l                                          ; $4dd5: $bd
    ld [$e4bf], a                                 ; $4dd6: $ea $bf $e4
    add hl, sp                                    ; $4dd9: $39
    pop hl                                        ; $4dda: $e1

jr_06b_4ddb:
    ld d, [hl]                                    ; $4ddb: $56
    inc b                                         ; $4ddc: $04
    adc b                                         ; $4ddd: $88

jr_06b_4dde:
    nop                                           ; $4dde: $00
    sub b                                         ; $4ddf: $90

Jump_06b_4de0:
    ld a, e                                       ; $4de0: $7b
    ld h, c                                       ; $4de1: $61
    ld c, d                                       ; $4de2: $4a
    inc bc                                        ; $4de3: $03
    dec c                                         ; $4de4: $0d
    ld a, l                                       ; $4de5: $7d
    ret nz                                        ; $4de6: $c0

    dec [hl]                                      ; $4de7: $35
    jr nz, jr_06b_4e65                            ; $4de8: $20 $7b

    push hl                                       ; $4dea: $e5
    ld l, e                                       ; $4deb: $6b
    nop                                           ; $4dec: $00
    ld [hl], b                                    ; $4ded: $70
    and b                                         ; $4dee: $a0
    xor h                                         ; $4def: $ac
    ld h, b                                       ; $4df0: $60
    ld l, d                                       ; $4df1: $6a
    ld b, c                                       ; $4df2: $41
    ld a, d                                       ; $4df3: $7a
    ld [c], a                                     ; $4df4: $e2
    nop                                           ; $4df5: $00
    sub a                                         ; $4df6: $97
    sbc e                                         ; $4df7: $9b
    call nz, RST_38                               ; $4df8: $c4 $38 $00
    ld a, [hl-]                                   ; $4dfb: $3a
    pop bc                                        ; $4dfc: $c1
    inc c                                         ; $4dfd: $0c
    cp l                                          ; $4dfe: $bd
    db $e4                                        ; $4dff: $e4
    ld [hl], e                                    ; $4e00: $73
    db $e3                                        ; $4e01: $e3
    ld c, e                                       ; $4e02: $4b
    ld c, e                                       ; $4e03: $4b
    rst $28                                       ; $4e04: $ef
    and d                                         ; $4e05: $a2
    ld h, [hl]                                    ; $4e06: $66
    inc b                                         ; $4e07: $04
    ld h, a                                       ; $4e08: $67
    ld b, a                                       ; $4e09: $47
    sbc l                                         ; $4e0a: $9d
    ld l, h                                       ; $4e0b: $6c
    nop                                           ; $4e0c: $00
    rst $30                                       ; $4e0d: $f7
    nop                                           ; $4e0e: $00
    rst $10                                       ; $4e0f: $d7
    jp $e0bd                                      ; $4e10: $c3 $bd $e0


    ld a, [$f540]                                 ; $4e13: $fa $40 $f5
    ret nz                                        ; $4e16: $c0

    ld l, a                                       ; $4e17: $6f
    inc bc                                        ; $4e18: $03
    pop bc                                        ; $4e19: $c1
    ld [c], a                                     ; $4e1a: $e2
    cp a                                          ; $4e1b: $bf
    db $e3                                        ; $4e1c: $e3
    add b                                         ; $4e1d: $80
    or b                                          ; $4e1e: $b0
    add d                                         ; $4e1f: $82
    nop                                           ; $4e20: $00
    sub e                                         ; $4e21: $93
    db $10                                        ; $4e22: $10
    add l                                         ; $4e23: $85
    ld l, [hl]                                    ; $4e24: $6e
    and h                                         ; $4e25: $a4
    rst $30                                       ; $4e26: $f7
    ret nz                                        ; $4e27: $c0

    ld b, [hl]                                    ; $4e28: $46
    ld [c], a                                     ; $4e29: $e2
    pop bc                                        ; $4e2a: $c1
    push hl                                       ; $4e2b: $e5
    dec l                                         ; $4e2c: $2d
    nop                                           ; $4e2d: $00
    ld [hl-], a                                   ; $4e2e: $32
    pop bc                                        ; $4e2f: $c1
    cpl                                           ; $4e30: $2f
    xor b                                         ; $4e31: $a8
    and a                                         ; $4e32: $a7
    ld [hl], c                                    ; $4e33: $71
    ld d, e                                       ; $4e34: $53
    and h                                         ; $4e35: $a4
    add [hl]                                      ; $4e36: $86
    ld b, c                                       ; $4e37: $41
    ld l, e                                       ; $4e38: $6b
    nop                                           ; $4e39: $00
    ld a, d                                       ; $4e3a: $7a
    pop hl                                        ; $4e3b: $e1
    ld [hl], b                                    ; $4e3c: $70
    and b                                         ; $4e3d: $a0
    nop                                           ; $4e3e: $00
    add d                                         ; $4e3f: $82
    db $e3                                        ; $4e40: $e3
    ld l, c                                       ; $4e41: $69
    ld hl, $41e6                                  ; $4e42: $21 $e6 $41
    db $ec                                        ; $4e45: $ec
    ld h, l                                       ; $4e46: $65
    ld [hl+], a                                   ; $4e47: $22
    ld [de], a                                    ; $4e48: $12
    or a                                          ; $4e49: $b7
    inc hl                                        ; $4e4a: $23
    push bc                                       ; $4e4b: $c5
    ld h, e                                       ; $4e4c: $63
    add sp, -$7d                                  ; $4e4d: $e8 $83
    ld [$e136], sp                                ; $4e4f: $08 $36 $e1
    add d                                         ; $4e52: $82
    ld [c], a                                     ; $4e53: $e2
    ld h, l                                       ; $4e54: $65
    ld b, b                                       ; $4e55: $40
    dec hl                                        ; $4e56: $2b
    daa                                           ; $4e57: $27
    ld b, c                                       ; $4e58: $41
    nop                                           ; $4e59: $00
    inc [hl]                                      ; $4e5a: $34
    or $27                                        ; $4e5b: $f6 $27
    ld e, c                                       ; $4e5d: $59
    and d                                         ; $4e5e: $a2
    nop                                           ; $4e5f: $00
    add d                                         ; $4e60: $82
    ld h, h                                       ; $4e61: $64
    ld h, l                                       ; $4e62: $65
    ld [hl+], a                                   ; $4e63: $22
    db $ed                                        ; $4e64: $ed

jr_06b_4e65:
    and b                                         ; $4e65: $a0
    add b                                         ; $4e66: $80
    db $e3                                        ; $4e67: $e3
    xor b                                         ; $4e68: $a8
    ld [hl+], a                                   ; $4e69: $22
    db $d3                                        ; $4e6a: $d3
    inc hl                                        ; $4e6b: $23
    nop                                           ; $4e6c: $00
    db $f4                                        ; $4e6d: $f4
    ld [hl], c                                    ; $4e6e: $71
    inc h                                         ; $4e6f: $24
    nop                                           ; $4e70: $00
    jp nz, $e943                                  ; $4e71: $c2 $43 $e9

    inc h                                         ; $4e74: $24
    ld l, a                                       ; $4e75: $6f
    pop bc                                        ; $4e76: $c1
    xor a                                         ; $4e77: $af
    and b                                         ; $4e78: $a0
    pop bc                                        ; $4e79: $c1
    db $e3                                        ; $4e7a: $e3
    db $ec                                        ; $4e7b: $ec
    ld a, [bc]                                    ; $4e7c: $0a
    and a                                         ; $4e7d: $a7
    ld d, e                                       ; $4e7e: $53
    ld c, [hl]                                    ; $4e7f: $4e
    ld h, d                                       ; $4e80: $62
    nop                                           ; $4e81: $00
    ld c, c                                       ; $4e82: $49
    ld h, c                                       ; $4e83: $61
    xor c                                         ; $4e84: $a9
    dec h                                         ; $4e85: $25
    and c                                         ; $4e86: $a1
    add [hl]                                      ; $4e87: $86
    xor c                                         ; $4e88: $a9
    inc h                                         ; $4e89: $24
    nop                                           ; $4e8a: $00
    ld hl, sp+$71                                 ; $4e8b: $f8 $71
    xor b                                         ; $4e8d: $a8
    ld b, b                                       ; $4e8e: $40
    inc bc                                        ; $4e8f: $03
    ld a, h                                       ; $4e90: $7c
    and $00                                       ; $4e91: $e6 $00
    inc sp                                        ; $4e93: $33
    ld bc, $6417                                  ; $4e94: $01 $17 $64
    nop                                           ; $4e97: $00
    rst $30                                       ; $4e98: $f7
    jr jr_06b_4f08                                ; $4e99: $18 $6d

    and h                                         ; $4e9b: $a4
    ld b, a                                       ; $4e9c: $47
    db $dd                                        ; $4e9d: $dd
    dec b                                         ; $4e9e: $05
    sub d                                         ; $4e9f: $92
    inc bc                                        ; $4ea0: $03
    nop                                           ; $4ea1: $00
    add d                                         ; $4ea2: $82
    nop                                           ; $4ea3: $00
    nop                                           ; $4ea4: $00
    nop                                           ; $4ea5: $00
    rst $38                                       ; $4ea6: $ff
    call c, $a0dd                                 ; $4ea7: $dc $dd $a0
    sbc $df                                       ; $4eaa: $de $df
    and b                                         ; $4eac: $a0
    and b                                         ; $4ead: $a0
    and b                                         ; $4eae: $a0
    rst $18                                       ; $4eaf: $df
    ret nc                                        ; $4eb0: $d0

    pop de                                        ; $4eb1: $d1
    and b                                         ; $4eb2: $a0
    ret c                                         ; $4eb3: $d8

    reti                                          ; $4eb4: $d9


    ld hl, sp-$20                                 ; $4eb5: $f8 $e0
    and b                                         ; $4eb7: $a0
    and b                                         ; $4eb8: $a0
    di                                            ; $4eb9: $f3
    jp c, $efdb                                   ; $4eba: $da $db $ef

    pop hl                                        ; $4ebd: $e1
    add sp, -$1e                                  ; $4ebe: $e8 $e2
    ldh [$e1], a                                  ; $4ec0: $e0 $e1
    ld [c], a                                     ; $4ec2: $e2
    db $e3                                        ; $4ec3: $e3
    db $dd                                        ; $4ec4: $dd
    db $e4                                        ; $4ec5: $e4
    or $fb                                        ; $4ec6: $f6 $fb
    push hl                                       ; $4ec8: $e5
    and $e7                                       ; $4ec9: $e6 $e7
    jp z, $d2e2                                   ; $4ecb: $ca $e2 $d2

    db $d3                                        ; $4ece: $d3
    add $c7                                       ; $4ecf: $c6 $c7
    ldh [$f5], a                                  ; $4ed1: $e0 $f5
    or $be                                        ; $4ed3: $f6 $be
    ld [c], a                                     ; $4ed5: $e2
    cp c                                          ; $4ed6: $b9
    pop hl                                        ; $4ed7: $e1
    add sp, -$1f                                  ; $4ed8: $e8 $e1
    add sp, -$17                                  ; $4eda: $e8 $e9
    rst $20                                       ; $4edc: $e7
    ld [$eceb], a                                 ; $4edd: $ea $eb $ec
    or $fc                                        ; $4ee0: $f6 $fc
    sbc l                                         ; $4ee2: $9d
    ld [c], a                                     ; $4ee3: $e2
    and b                                         ; $4ee4: $a0
    db $ed                                        ; $4ee5: $ed
    xor $f7                                       ; $4ee6: $ee $f7
    call nc, $efd5                                ; $4ee8: $d4 $d5 $ef
    ld a, d                                       ; $4eeb: $7a
    ldh [$9f], a                                  ; $4eec: $e0 $9f
    sbc l                                         ; $4eee: $9d
    sbc l                                         ; $4eef: $9d
    sbc l                                         ; $4ef0: $9d
    sbc a                                         ; $4ef1: $9f
    sbc a                                         ; $4ef2: $9f
    push af                                       ; $4ef3: $f5
    or $d6                                        ; $4ef4: $f6 $d6
    rst $10                                       ; $4ef6: $d7
    add sp, -$1d                                  ; $4ef7: $e8 $e3
    ld a, e                                       ; $4ef9: $7b
    rst $38                                       ; $4efa: $ff
    rst $18                                       ; $4efb: $df
    cp $9d                                        ; $4efc: $fe $9d
    ld [c], a                                     ; $4efe: $e2
    and b                                         ; $4eff: $a0
    ldh a, [$f1]                                  ; $4f00: $f0 $f1
    ld a, [c]                                     ; $4f02: $f2
    di                                            ; $4f03: $f3
    db $f4                                        ; $4f04: $f4
    sbc a                                         ; $4f05: $9f
    rst $38                                       ; $4f06: $ff
    sbc l                                         ; $4f07: $9d

jr_06b_4f08:
    and d                                         ; $4f08: $a2
    sbc h                                         ; $4f09: $9c
    ld c, b                                       ; $4f0a: $48
    ld c, [hl]                                    ; $4f0b: $4e
    ld c, b                                       ; $4f0c: $48
    sbc h                                         ; $4f0d: $9c
    sbc a                                         ; $4f0e: $9f
    ld [hl], b                                    ; $4f0f: $70
    ld [hl], $e0                                  ; $4f10: $36 $e0
    add l                                         ; $4f12: $85
    rst $38                                       ; $4f13: $ff
    ld h, a                                       ; $4f14: $67
    db $e4                                        ; $4f15: $e4
    nop                                           ; $4f16: $00
    push hl                                       ; $4f17: $e5
    push af                                       ; $4f18: $f5
    or $9f                                        ; $4f19: $f6 $9f
    jp Jump_000_3fe0                              ; $4f1b: $c3 $e0 $3f


    ld b, h                                       ; $4f1e: $44
    ld e, c                                       ; $4f1f: $59
    ld d, h                                       ; $4f20: $54
    ld h, b                                       ; $4f21: $60

Call_06b_4f22:
    ld d, l                                       ; $4f22: $55
    sbc [hl]                                      ; $4f23: $9e
    db $fd                                        ; $4f24: $fd
    ret nz                                        ; $4f25: $c0

    nop                                           ; $4f26: $00
    rst $38                                       ; $4f27: $ff
    db $fc                                        ; $4f28: $fc
    nop                                           ; $4f29: $00
    db $eb                                        ; $4f2a: $eb
    ld c, [hl]                                    ; $4f2b: $4e
    ldh [$9e], a                                  ; $4f2c: $e0 $9e
    ld b, h                                       ; $4f2e: $44
    ld e, c                                       ; $4f2f: $59
    dec hl                                        ; $4f30: $2b
    inc l                                         ; $4f31: $2c
    cpl                                           ; $4f32: $2f
    rrca                                          ; $4f33: $0f
    ld a, [hl+]                                   ; $4f34: $2a
    ld d, [hl]                                    ; $4f35: $56
    ld d, l                                       ; $4f36: $55
    sbc [hl]                                      ; $4f37: $9e
    ld sp, hl                                     ; $4f38: $f9
    pop bc                                        ; $4f39: $c1
    add l                                         ; $4f3a: $85
    rst $38                                       ; $4f3b: $ff
    nop                                           ; $4f3c: $00
    jp hl                                         ; $4f3d: $e9


    add h                                         ; $4f3e: $84
    pop bc                                        ; $4f3f: $c1
    rst $38                                       ; $4f40: $ff
    sbc a                                         ; $4f41: $9f
    sbc h                                         ; $4f42: $9c
    dec l                                         ; $4f43: $2d
    jr nz, @+$22                                  ; $4f44: $20 $20

    jr nz, jr_06b_4f72                            ; $4f46: $20 $2a

    ld d, b                                       ; $4f48: $50
    jp $9e45                                      ; $4f49: $c3 $45 $9e


    or d                                          ; $4f4c: $b2
    pop hl                                        ; $4f4d: $e1
    add l                                         ; $4f4e: $85
    rst $38                                       ; $4f4f: $ff
    nop                                           ; $4f50: $00
    jp hl                                         ; $4f51: $e9


    ld c, [hl]                                    ; $4f52: $4e
    pop hl                                        ; $4f53: $e1
    and b                                         ; $4f54: $a0
    sbc [hl]                                      ; $4f55: $9e
    ld a, $c0                                     ; $4f56: $3e $c0
    ldh [$2e], a                                  ; $4f58: $e0 $2e
    ld c, d                                       ; $4f5a: $4a
    ld e, l                                       ; $4f5b: $5d
    ld e, h                                       ; $4f5c: $5c
    and c                                         ; $4f5d: $a1
    nop                                           ; $4f5e: $00
    rst $38                                       ; $4f5f: $ff
    nop                                           ; $4f60: $00
    di                                            ; $4f61: $f3
    ccf                                           ; $4f62: $3f
    add hl, sp                                    ; $4f63: $39
    ld hl, $2d26                                  ; $4f64: $21 $26 $2d
    ld c, a                                       ; $4f67: $4f
    ld d, [hl]                                    ; $4f68: $56
    add b                                         ; $4f69: $80
    ldh [rP1], a                                  ; $4f6a: $e0 $00
    rst $38                                       ; $4f6c: $ff
    db $fc                                        ; $4f6d: $fc
    nop                                           ; $4f6e: $00
    call $a0c1                                    ; $4f6f: $cd $c1 $a0

jr_06b_4f72:
    sbc [hl]                                      ; $4f72: $9e
    ld b, [hl]                                    ; $4f73: $46
    add hl, sp                                    ; $4f74: $39
    swap l                                        ; $4f75: $cb $35
    ld a, $83                                     ; $4f77: $3e $83
    ld b, l                                       ; $4f79: $45
    ld b, e                                       ; $4f7a: $43
    add b                                         ; $4f7b: $80
    ret nz                                        ; $4f7c: $c0

    or d                                          ; $4f7d: $b2
    and b                                         ; $4f7e: $a0
    add l                                         ; $4f7f: $85
    rst $38                                       ; $4f80: $ff
    nop                                           ; $4f81: $00
    ld [$a0c1], a                                 ; $4f82: $ea $c1 $a0
    sbc a                                         ; $4f85: $9f
    ld a, a                                       ; $4f86: $7f
    sbc h                                         ; $4f87: $9c
    ld b, l                                       ; $4f88: $45
    ld a, [hl-]                                   ; $4f89: $3a
    dec [hl]                                      ; $4f8a: $35
    ld a, $b2                                     ; $4f8b: $3e $b2
    ld b, [hl]                                    ; $4f8d: $46
    pop bc                                        ; $4f8e: $c1
    pop bc                                        ; $4f8f: $c1
    ld b, $b2                                     ; $4f90: $06 $b2
    and b                                         ; $4f92: $a0
    and b                                         ; $4f93: $a0
    and b                                         ; $4f94: $a0
    nop                                           ; $4f95: $00
    rst $38                                       ; $4f96: $ff
    nop                                           ; $4f97: $00
    push bc                                       ; $4f98: $c5
    pop bc                                        ; $4f99: $c1
    and e                                         ; $4f9a: $a3
    ld a, a                                       ; $4f9b: $7f
    ldh [$c0], a                                  ; $4f9c: $e0 $c0
    ld [c], a                                     ; $4f9e: $e2
    ld [hl], b                                    ; $4f9f: $70
    or d                                          ; $4fa0: $b2
    and [hl]                                      ; $4fa1: $a6
    nop                                           ; $4fa2: $00
    rst $38                                       ; $4fa3: $ff
    nop                                           ; $4fa4: $00
    call nz, $a3c1                                ; $4fa5: $c4 $c1 $a3
    sbc h                                         ; $4fa8: $9c
    ld b, l                                       ; $4fa9: $45
    ld [hl], $80                                  ; $4faa: $36 $80
    pop hl                                        ; $4fac: $e1
    res 3, h                                      ; $4fad: $cb $9c
    sbc a                                         ; $4faf: $9f
    or d                                          ; $4fb0: $b2
    and d                                         ; $4fb1: $a2
    and b                                         ; $4fb2: $a0
    nop                                           ; $4fb3: $00
    rst $38                                       ; $4fb4: $ff
    nop                                           ; $4fb5: $00
    res 4, c                                      ; $4fb6: $cb $a1
    ld b, [hl]                                    ; $4fb8: $46
    rra                                           ; $4fb9: $1f
    add hl, sp                                    ; $4fba: $39
    rst $08                                       ; $4fbb: $cf
    rst $08                                       ; $4fbc: $cf
    ld a, $b2                                     ; $4fbd: $3e $b2
    cp a                                          ; $4fbf: $bf
    pop hl                                        ; $4fc0: $e1
    or c                                          ; $4fc1: $b1
    and c                                         ; $4fc2: $a1
    inc a                                         ; $4fc3: $3c
    ret nz                                        ; $4fc4: $c0

    db $fc                                        ; $4fc5: $fc
    nop                                           ; $4fc6: $00
    rst $38                                       ; $4fc7: $ff
    nop                                           ; $4fc8: $00
    ret                                           ; $4fc9: $c9


    sbc [hl]                                      ; $4fca: $9e
    ld b, [hl]                                    ; $4fcb: $46
    ld a, $cb                                     ; $4fcc: $3e $cb
    adc $3a                                       ; $4fce: $ce $3a
    pop bc                                        ; $4fd0: $c1
    ld b, l                                       ; $4fd1: $45
    cp a                                          ; $4fd2: $bf
    db $e4                                        ; $4fd3: $e4
    ld [hl], d                                    ; $4fd4: $72
    add d                                         ; $4fd5: $82
    nop                                           ; $4fd6: $00
    rst $38                                       ; $4fd7: $ff
    nop                                           ; $4fd8: $00
    ret z                                         ; $4fd9: $c8

    ret nz                                        ; $4fda: $c0

    ldh [$ce], a                                  ; $4fdb: $e0 $ce
    call z, $cf1b                                 ; $4fdd: $cc $1b $cf
    ld [hl], $bf                                  ; $4fe0: $36 $bf
    ld [c], a                                     ; $4fe2: $e2
    and d                                         ; $4fe3: $a2
    sbc a                                         ; $4fe4: $9f
    xor $a2                                       ; $4fe5: $ee $a2
    nop                                           ; $4fe7: $00
    rst $38                                       ; $4fe8: $ff
    nop                                           ; $4fe9: $00
    set 7, a                                      ; $4fea: $cb $ff
    rst $08                                       ; $4fec: $cf
    call Call_000_35cf                            ; $4fed: $cd $cf $35
    jr c, jr_06b_5029                             ; $4ff0: $38 $37

    ccf                                           ; $4ff2: $3f
    scf                                           ; $4ff3: $37
    add e                                         ; $4ff4: $83
    scf                                           ; $4ff5: $37
    ld b, l                                       ; $4ff6: $45
    dec sp                                        ; $4ff7: $3b
    pop bc                                        ; $4ff8: $c1
    add sp, $62                                   ; $4ff9: $e8 $62
    nop                                           ; $4ffb: $00
    rst $38                                       ; $4ffc: $ff
    nop                                           ; $4ffd: $00
    add e                                         ; $4ffe: $83
    rst $38                                       ; $4fff: $ff
    add c                                         ; $5000: $81
    ld b, l                                       ; $5001: $45
    dec sp                                        ; $5002: $3b
    scf                                           ; $5003: $37
    dec a                                         ; $5004: $3d
    jp Jump_000_38e0                              ; $5005: $c3 $e0 $38


    dec [hl]                                      ; $5008: $35
    rst $08                                       ; $5009: $cf

jr_06b_500a:
    ld a, d                                       ; $500a: $7a
    ldh [$7a], a                                  ; $500b: $e0 $7a
    add b                                         ; $500d: $80
    ldh a, [$3a]                                  ; $500e: $f0 $3a
    and b                                         ; $5010: $a0
    ld a, e                                       ; $5011: $7b
    rst $18                                       ; $5012: $df
    sbc l                                         ; $5013: $9d
    push bc                                       ; $5014: $c5
    rst $38                                       ; $5015: $ff
    add d                                         ; $5016: $82
    ld b, [hl]                                    ; $5017: $46
    ld b, [hl]                                    ; $5018: $46
    or d                                          ; $5019: $b2
    or d                                          ; $501a: $b2
    ld a, a                                       ; $501b: $7f
    or d                                          ; $501c: $b2
    ld b, b                                       ; $501d: $40
    dec [hl]                                      ; $501e: $35
    adc $cb                                       ; $501f: $ce $cb
    rst $08                                       ; $5021: $cf
    add hl, sp                                    ; $5022: $39
    add hl, sp                                    ; $5023: $39
    ret nz                                        ; $5024: $c0

    db $e3                                        ; $5025: $e3
    ret c                                         ; $5026: $d8

    reti                                          ; $5027: $d9


    nop                                           ; $5028: $00

jr_06b_5029:
    rst $38                                       ; $5029: $ff
    nop                                           ; $502a: $00
    add e                                         ; $502b: $83
    ld a, e                                       ; $502c: $7b
    ld h, b                                       ; $502d: $60
    jp c, $d0db                                   ; $502e: $da $db $d0

    rst $28                                       ; $5031: $ef
    pop de                                        ; $5032: $d1
    sbc a                                         ; $5033: $9f
    sbc l                                         ; $5034: $9d
    sbc h                                         ; $5035: $9c
    cp a                                          ; $5036: $bf
    ldh [rLYC], a                                 ; $5037: $e0 $45
    ld a, [hl-]                                   ; $5039: $3a
    rst $08                                       ; $503a: $cf
    rlca                                          ; $503b: $07
    call z, Call_000_3acb                         ; $503c: $cc $cb $3a
    ld a, [hl-]                                   ; $503f: $3a
    and d                                         ; $5040: $a2

jr_06b_5041:
    nop                                           ; $5041: $00
    rst $38                                       ; $5042: $ff
    nop                                           ; $5043: $00
    add l                                         ; $5044: $85
    adc h                                         ; $5045: $8c
    and h                                         ; $5046: $a4
    ld a, l                                       ; $5047: $7d
    ldh [$2f], a                                  ; $5048: $e0 $2f
    or d                                          ; $504a: $b2
    or d                                          ; $504b: $b2
    ld a, $35                                     ; $504c: $3e $35
    cp b                                          ; $504e: $b8
    ret nz                                        ; $504f: $c0

    add hl, sp                                    ; $5050: $39
    cp c                                          ; $5051: $b9
    ld h, b                                       ; $5052: $60
    ld sp, $f061                                  ; $5053: $31 $61 $f0
    nop                                           ; $5056: $00
    rst $38                                       ; $5057: $ff
    nop                                           ; $5058: $00
    ld h, e                                       ; $5059: $63
    ld a, $64                                     ; $505a: $3e $64
    cp a                                          ; $505c: $bf
    pop hl                                        ; $505d: $e1
    add hl, sp                                    ; $505e: $39
    dec [hl]                                      ; $505f: $35
    rst $08                                       ; $5060: $cf
    rlc e                                         ; $5061: $cb $03
    adc $3e                                       ; $5063: $ce $3e
    ld a, b                                       ; $5065: $78
    and b                                         ; $5066: $a0
    xor e                                         ; $5067: $ab
    ld b, c                                       ; $5068: $41
    nop                                           ; $5069: $00
    rst $38                                       ; $506a: $ff
    sbc l                                         ; $506b: $9d
    and e                                         ; $506c: $a3
    ld a, $62                                     ; $506d: $3e $62
    cp d                                          ; $506f: $ba
    and d                                         ; $5070: $a2
    jr jr_06b_50b2                                ; $5071: $18 $3f

    ldh [$be], a                                  ; $5073: $e0 $be
    ret nz                                        ; $5075: $c0

    add b                                         ; $5076: $80
    ldh [$f5], a                                  ; $5077: $e0 $f5
    or $ab                                        ; $5079: $f6 $ab
    ld b, b                                       ; $507b: $40
    nop                                           ; $507c: $00
    rst $38                                       ; $507d: $ff
    sbc l                                         ; $507e: $9d
    and d                                         ; $507f: $a2
    jr c, jr_06b_500a                             ; $5080: $38 $88

    ld b, e                                       ; $5082: $43
    cp e                                          ; $5083: $bb
    jp $e03f                                      ; $5084: $c3 $3f $e0


    dec [hl]                                      ; $5087: $35
    inc a                                         ; $5088: $3c
    ld b, h                                       ; $5089: $44
    ld sp, hl                                     ; $508a: $f9
    add l                                         ; $508b: $85
    nop                                           ; $508c: $00
    rst $38                                       ; $508d: $ff
    ld a, b                                       ; $508e: $78
    jr @-$57                                      ; $508f: $18 $a7

    cp d                                          ; $5091: $ba
    ld h, d                                       ; $5092: $62
    ret nz                                        ; $5093: $c0

    ldh [$cb], a                                  ; $5094: $e0 $cb
    rst $08                                       ; $5096: $cf
    dec [hl]                                      ; $5097: $35
    ld b, b                                       ; $5098: $40
    ld sp, hl                                     ; $5099: $f9
    add h                                         ; $509a: $84
    ld hl, sp+$00                                 ; $509b: $f8 $00
    rst $38                                       ; $509d: $ff
    jr jr_06b_5029                                ; $509e: $18 $89

    rst $38                                       ; $50a0: $ff
    jr nz, jr_06b_5041                            ; $50a1: $20 $9e

    ld b, [hl]                                    ; $50a3: $46
    ld b, [hl]                                    ; $50a4: $46
    ld a, $cf                                     ; $50a5: $3e $cf
    rlca                                          ; $50a7: $07
    call Call_06b_453a                            ; $50a8: $cd $3a $45
    ld sp, hl                                     ; $50ab: $f9
    add c                                         ; $50ac: $81
    ldh a, [rNR43]                                ; $50ad: $f0 $22
    nop                                           ; $50af: $00
    rst $38                                       ; $50b0: $ff
    sbc l                                         ; $50b1: $9d

jr_06b_50b2:
    db $e3                                        ; $50b2: $e3
    cp d                                          ; $50b3: $ba
    ld b, e                                       ; $50b4: $43
    halt                                          ; $50b5: $76
    ret nz                                        ; $50b6: $c0

    pop hl                                        ; $50b7: $e1
    add hl, sp                                    ; $50b8: $39
    dec [hl]                                      ; $50b9: $35
    ld hl, sp+$60                                 ; $50ba: $f8 $60
    or d                                          ; $50bc: $b2
    ld b, [hl]                                    ; $50bd: $46
    and c                                         ; $50be: $a1
    xor c                                         ; $50bf: $a9
    ld b, c                                       ; $50c0: $41
    ld hl, sp+$00                                 ; $50c1: $f8 $00
    rst $38                                       ; $50c3: $ff
    sbc l                                         ; $50c4: $9d
    add h                                         ; $50c5: $84
    nop                                           ; $50c6: $00
    and $83                                       ; $50c7: $e6 $83
    adc c                                         ; $50c9: $89
    adc b                                         ; $50ca: $88
    ld [hl], d                                    ; $50cb: $72
    ld l, h                                       ; $50cc: $6c
    ldh [$b8], a                                  ; $50cd: $e0 $b8
    add b                                         ; $50cf: $80
    ld a, b                                       ; $50d0: $78
    add c                                         ; $50d1: $81
    dec l                                         ; $50d2: $2d
    jr nz, jr_06b_50d5                            ; $50d3: $20 $00

jr_06b_50d5:
    rst $38                                       ; $50d5: $ff
    nop                                           ; $50d6: $00
    ld [$469e], a                                 ; $50d7: $ea $9e $46
    adc d                                         ; $50da: $8a
    sbc a                                         ; $50db: $9f
    add l                                         ; $50dc: $85
    ld b, b                                       ; $50dd: $40
    ld l, [hl]                                    ; $50de: $6e
    ld [hl], h                                    ; $50df: $74
    dec [hl]                                      ; $50e0: $35
    cp b                                          ; $50e1: $b8
    add b                                         ; $50e2: $80
    or [hl]                                       ; $50e3: $b6
    ld h, b                                       ; $50e4: $60
    jp c, $dbf1                                   ; $50e5: $da $f1 $db

    nop                                           ; $50e8: $00
    rst $38                                       ; $50e9: $ff
    jr jr_06b_5155                                ; $50ea: $18 $69

    pop bc                                        ; $50ec: $c1
    pop bc                                        ; $50ed: $c1
    add c                                         ; $50ee: $81
    ld b, [hl]                                    ; $50ef: $46
    ld b, b                                       ; $50f0: $40
    cp e                                          ; $50f1: $bb
    rrca                                          ; $50f2: $0f
    ld l, e                                       ; $50f3: $6b
    ld l, h                                       ; $50f4: $6c
    dec [hl]                                      ; $50f5: $35
    add hl, sp                                    ; $50f6: $39
    ld [hl], $63                                  ; $50f7: $36 $63
    nop                                           ; $50f9: $00
    rst $38                                       ; $50fa: $ff
    sbc l                                         ; $50fb: $9d
    ld l, b                                       ; $50fc: $68
    ld a, d                                       ; $50fd: $7a
    nop                                           ; $50fe: $00
    ccf                                           ; $50ff: $3f
    sbc a                                         ; $5100: $9f
    sbc h                                         ; $5101: $9c
    adc h                                         ; $5102: $8c
    ld a, l                                       ; $5103: $7d
    ld b, d                                       ; $5104: $42
    cp e                                          ; $5105: $bb
    ld a, a                                       ; $5106: $7f
    ldh [$be], a                                  ; $5107: $e0 $be
    ret nz                                        ; $5109: $c0

    ldh [$be], a                                  ; $510a: $e0 $be
    and b                                         ; $510c: $a0
    ld a, e                                       ; $510d: $7b
    sbc [hl]                                      ; $510e: $9e
    sbc l                                         ; $510f: $9d
    ld l, e                                       ; $5110: $6b
    ld a, d                                       ; $5111: $7a
    nop                                           ; $5112: $00
    ld a, a                                       ; $5113: $7f
    ldh [rLYC], a                                 ; $5114: $e0 $45
    ld a, [hl-]                                   ; $5116: $3a
    cp e                                          ; $5117: $bb
    inc bc                                        ; $5118: $03
    ld l, c                                       ; $5119: $69
    dec [hl]                                      ; $511a: $35
    ld a, $e0                                     ; $511b: $3e $e0
    ld a, [hl]                                    ; $511d: $7e
    and b                                         ; $511e: $a0
    ld a, h                                       ; $511f: $7c
    add h                                         ; $5120: $84
    nop                                           ; $5121: $00
    rst $38                                       ; $5122: $ff
    ld a, e                                       ; $5123: $7b
    ld hl, $027a                                  ; $5124: $21 $7a $02
    dec b                                         ; $5127: $05
    and c                                         ; $5128: $a1
    ccf                                           ; $5129: $3f
    ldh [$3e], a                                  ; $512a: $e0 $3e
    ret nz                                        ; $512c: $c0

    ldh [$7d], a                                  ; $512d: $e0 $7d
    and d                                         ; $512f: $a2
    xor [hl]                                      ; $5130: $ae
    pop bc                                        ; $5131: $c1
    nop                                           ; $5132: $00
    rst $38                                       ; $5133: $ff
    jr jr_06b_5199                                ; $5134: $18 $63

    cp $7a                                        ; $5136: $fe $7a
    inc b                                         ; $5138: $04
    sbc [hl]                                      ; $5139: $9e
    ld b, [hl]                                    ; $513a: $46
    adc h                                         ; $513b: $8c
    ld a, l                                       ; $513c: $7d
    ld a, $62                                     ; $513d: $3e $62
    halt                                          ; $513f: $76
    rlca                                          ; $5140: $07
    dec [hl]                                      ; $5141: $35
    cp e                                          ; $5142: $bb
    cp e                                          ; $5143: $bb
    db $fd                                        ; $5144: $fd
    add c                                         ; $5145: $81
    or [hl]                                       ; $5146: $b6
    jr nz, jr_06b_5149                            ; $5147: $20 $00

jr_06b_5149:
    rst $38                                       ; $5149: $ff
    nop                                           ; $514a: $00
    push bc                                       ; $514b: $c5
    bit 0, d                                      ; $514c: $cb $42
    ld a, [hl]                                    ; $514e: $7e
    ret nz                                        ; $514f: $c0

    and b                                         ; $5150: $a0
    adc [hl]                                      ; $5151: $8e
    ld h, h                                       ; $5152: $64
    ld a, b                                       ; $5153: $78
    dec [hl]                                      ; $5154: $35

jr_06b_5155:
    rst $08                                       ; $5155: $cf
    cp e                                          ; $5156: $bb
    ld a, l                                       ; $5157: $7d
    add d                                         ; $5158: $82
    ret nz                                        ; $5159: $c0

    nop                                           ; $515a: $00
    rst $38                                       ; $515b: $ff
    nop                                           ; $515c: $00
    ret                                           ; $515d: $c9


    cp c                                          ; $515e: $b9
    ld b, e                                       ; $515f: $43
    ld a, $81                                     ; $5160: $3e $81
    pop bc                                        ; $5162: $c1
    ldh [rP1], a                                  ; $5163: $e0 $00
    ld [c], a                                     ; $5165: $e2
    ret nc                                        ; $5166: $d0

    pop de                                        ; $5167: $d1
    ldh [$27], a                                  ; $5168: $e0 $27
    pop hl                                        ; $516a: $e1
    nop                                           ; $516b: $00
    rst $38                                       ; $516c: $ff
    jr jr_06b_51b2                                ; $516d: $18 $43

    cp c                                          ; $516f: $b9
    ld b, e                                       ; $5170: $43
    ld a, a                                       ; $5171: $7f
    add c                                         ; $5172: $81
    cp e                                          ; $5173: $bb

jr_06b_5174:
    cp e                                          ; $5174: $bb
    ld a, [hl-]                                   ; $5175: $3a
    jr nc, jr_06b_5174                            ; $5176: $30 $fc

    ld b, b                                       ; $5178: $40
    ld a, [hl]                                    ; $5179: $7e
    add d                                         ; $517a: $82
    nop                                           ; $517b: $00
    rst $38                                       ; $517c: $ff
    nop                                           ; $517d: $00
    ret z                                         ; $517e: $c8

    push af                                       ; $517f: $f5
    or $c0                                        ; $5180: $f6 $c0
    add b                                         ; $5182: $80
    ld b, b                                       ; $5183: $40
    and b                                         ; $5184: $a0
    rra                                           ; $5185: $1f

jr_06b_5186:
    rst $08                                       ; $5186: $cf
    rst $08                                       ; $5187: $cf
    ld a, [hl-]                                   ; $5188: $3a
    ld b, l                                       ; $5189: $45
    and c                                         ; $518a: $a1
    db $eb                                        ; $518b: $eb
    ld h, e                                       ; $518c: $63
    nop                                           ; $518d: $00
    rst $38                                       ; $518e: $ff
    sbc l                                         ; $518f: $9d
    xor b                                         ; $5190: $a8
    dec de                                        ; $5191: $1b
    sub $d7                                       ; $5192: $d6 $d7
    ld a, l                                       ; $5194: $7d
    ld h, b                                       ; $5195: $60
    ld a, $cb                                     ; $5196: $3e $cb
    cp a                                          ; $5198: $bf

jr_06b_5199:
    pop hl                                        ; $5199: $e1
    ld a, [hl]                                    ; $519a: $7e
    ld h, b                                       ; $519b: $60
    ld [hl], a                                    ; $519c: $77
    inc h                                         ; $519d: $24
    jr jr_06b_51a0                                ; $519e: $18 $00

jr_06b_51a0:
    rst $38                                       ; $51a0: $ff
    jr jr_06b_5209                                ; $51a1: $18 $66

    cp b                                          ; $51a3: $b8
    inc hl                                        ; $51a4: $23
    dec [hl]                                      ; $51a5: $35
    dec [hl]                                      ; $51a6: $35
    add c                                         ; $51a7: $81
    call nz, Call_000_2279                        ; $51a8: $c4 $79 $22
    nop                                           ; $51ab: $00
    rst $38                                       ; $51ac: $ff
    ret z                                         ; $51ad: $c8

    jr jr_06b_51d7                                ; $51ae: $18 $27

    cp b                                          ; $51b0: $b8
    inc hl                                        ; $51b1: $23

jr_06b_51b2:
    add b                                         ; $51b2: $80
    ldh [$bb], a                                  ; $51b3: $e0 $bb
    ld [hl], l                                    ; $51b5: $75
    jr nz, jr_06b_51ee                            ; $51b6: $20 $36

    ld bc, $d9d8                                  ; $51b8: $01 $d8 $d9
    nop                                           ; $51bb: $00
    and $a0                                       ; $51bc: $e6 $a0
    nop                                           ; $51be: $00
    rst $38                                       ; $51bf: $ff
    nop                                           ; $51c0: $00
    add a                                         ; $51c1: $87
    cp l                                          ; $51c2: $bd
    ld b, b                                       ; $51c3: $40
    ld b, b                                       ; $51c4: $40
    add b                                         ; $51c5: $80

jr_06b_51c6:
    db $fc                                        ; $51c6: $fc
    jr nz, jr_06b_5186                            ; $51c7: $20 $bd

    add b                                         ; $51c9: $80
    ld a, [hl]                                    ; $51ca: $7e
    add b                                         ; $51cb: $80
    ret nz                                        ; $51cc: $c0

    ld a, c                                       ; $51cd: $79
    jr nz, jr_06b_51c6                            ; $51ce: $20 $f6

    ld a, [de]                                    ; $51d0: $1a
    nop                                           ; $51d1: $00
    adc l                                         ; $51d2: $8d
    ld b, b                                       ; $51d3: $40
    add h                                         ; $51d4: $84
    cp [hl]                                       ; $51d5: $be
    ret nz                                        ; $51d6: $c0

jr_06b_51d7:
    rst $38                                       ; $51d7: $ff
    and b                                         ; $51d8: $a0
    ld b, [hl]                                    ; $51d9: $46
    sbc h                                         ; $51da: $9c
    and c                                         ; $51db: $a1
    sbc l                                         ; $51dc: $9d
    ld a, [$f640]                                 ; $51dd: $fa $40 $f6
    ld bc, $82f6                                  ; $51e0: $01 $f6 $82
    nop                                           ; $51e3: $00
    sbc a                                         ; $51e4: $9f
    reti                                          ; $51e5: $d9


    ld a, d                                       ; $51e6: $7a
    nop                                           ; $51e7: $00
    adc d                                         ; $51e8: $8a
    add e                                         ; $51e9: $83
    add l                                         ; $51ea: $85
    add hl, sp                                    ; $51eb: $39
    ld b, b                                       ; $51ec: $40
    add b                                         ; $51ed: $80

jr_06b_51ee:
    cp a                                          ; $51ee: $bf
    and c                                         ; $51ef: $a1
    inc sp                                        ; $51f0: $33
    nop                                           ; $51f1: $00
    ld [hl], e                                    ; $51f2: $73
    ld bc, $e37d                                  ; $51f3: $01 $7d $e3
    and b                                         ; $51f6: $a0
    add b                                         ; $51f7: $80
    nop                                           ; $51f8: $00
    rst $38                                       ; $51f9: $ff

jr_06b_51fa:
    ld bc, $01c3                                  ; $51fa: $01 $c3 $01
    and c                                         ; $51fd: $a1
    ld b, b                                       ; $51fe: $40
    add b                                         ; $51ff: $80
    cp h                                          ; $5200: $bc
    ret nz                                        ; $5201: $c0

    inc sp                                        ; $5202: $33
    nop                                           ; $5203: $00
    ld [hl], e                                    ; $5204: $73
    ld b, $e3                                     ; $5205: $06 $e3
    rst $20                                       ; $5207: $e7
    db $e4                                        ; $5208: $e4

jr_06b_5209:
    ret nc                                        ; $5209: $d0

    pop de                                        ; $520a: $d1
    nop                                           ; $520b: $00
    rst $38                                       ; $520c: $ff
    ld b, b                                       ; $520d: $40
    add e                                         ; $520e: $83
    add hl, sp                                    ; $520f: $39
    cp e                                          ; $5210: $bb
    ld l, [hl]                                    ; $5211: $6e
    ld sp, $bf6f                                  ; $5212: $31 $6f $bf
    pop hl                                        ; $5215: $e1
    inc sp                                        ; $5216: $33
    ld bc, $0773                                  ; $5217: $01 $73 $07
    jp nc, Jump_000_00d3                          ; $521a: $d2 $d3 $00

    db $fc                                        ; $521d: $fc
    ld a, h                                       ; $521e: $7c
    inc hl                                        ; $521f: $23
    sbc $40                                       ; $5220: $de $40
    add c                                         ; $5222: $81
    ld [hl], $bb                                  ; $5223: $36 $bb
    ld l, [hl]                                    ; $5225: $6e
    ld [hl], b                                    ; $5226: $70
    db $fc                                        ; $5227: $fc
    pop bc                                        ; $5228: $c1
    jr c, jr_06b_5268                             ; $5229: $38 $3d

    rlca                                          ; $522b: $07
    dec a                                         ; $522c: $3d
    scf                                           ; $522d: $37
    ld b, e                                       ; $522e: $43
    or [hl]                                       ; $522f: $b6
    ld b, d                                       ; $5230: $42
    and b                                         ; $5231: $a0
    dec h                                         ; $5232: $25
    nop                                           ; $5233: $00
    ld a, d                                       ; $5234: $7a
    ld a, h                                       ; $5235: $7c
    ld [hl+], a                                   ; $5236: $22
    cp a                                          ; $5237: $bf
    ld h, c                                       ; $5238: $61
    jr jr_06b_51fa                                ; $5239: $18 $bf

    ldh [$bd], a                                  ; $523b: $e0 $bd
    ld h, c                                       ; $523d: $61
    rst $38                                       ; $523e: $ff
    ld [c], a                                     ; $523f: $e2
    dec sp                                        ; $5240: $3b
    jr c, jr_06b_5275                             ; $5241: $38 $32

    ld [bc], a                                    ; $5243: $02
    ld h, h                                       ; $5244: $64
    add d                                         ; $5245: $82
    or e                                          ; $5246: $b3
    add c                                         ; $5247: $81
    adc b                                         ; $5248: $88
    nop                                           ; $5249: $00
    sbc b                                         ; $524a: $98
    sub c                                         ; $524b: $91
    and e                                         ; $524c: $a3
    ld a, $63                                     ; $524d: $3e $63
    cp e                                          ; $524f: $bb
    cp l                                          ; $5250: $bd
    ld h, c                                       ; $5251: $61
    cp $e4                                        ; $5252: $fe $e4
    ld [hl-], a                                   ; $5254: $32
    nop                                           ; $5255: $00
    sbc l                                         ; $5256: $9d
    ld bc, $f19d                                  ; $5257: $01 $9d $f1
    ld [bc], a                                    ; $525a: $02
    dec l                                         ; $525b: $2d
    inc bc                                        ; $525c: $03
    nop                                           ; $525d: $00
    sub l                                         ; $525e: $95
    ld hl, sp+$01                                 ; $525f: $f8 $01
    ccf                                           ; $5261: $3f
    and c                                         ; $5262: $a1
    ld a, a                                       ; $5263: $7f
    ld [c], a                                     ; $5264: $e2
    db $fd                                        ; $5265: $fd
    ld h, b                                       ; $5266: $60
    add b                                         ; $5267: $80

jr_06b_5268:
    cp a                                          ; $5268: $bf
    add sp, $77                                   ; $5269: $e8 $77
    ret nz                                        ; $526b: $c0

    cp [hl]                                       ; $526c: $be
    ldh [$b2], a                                  ; $526d: $e0 $b2
    and e                                         ; $526f: $a3
    ld a, [de]                                    ; $5270: $1a
    jr nz, jr_06b_5273                            ; $5271: $20 $00

jr_06b_5273:
    or [hl]                                       ; $5273: $b6
    dec a                                         ; $5274: $3d

jr_06b_5275:
    ld b, e                                       ; $5275: $43
    adc [hl]                                      ; $5276: $8e
    jp Jump_06b_7b7b                              ; $5277: $c3 $7b $7b


    db $fd                                        ; $527a: $fd
    ld h, b                                       ; $527b: $60
    rst $38                                       ; $527c: $ff
    add sp, $72                                   ; $527d: $e8 $72
    ld b, c                                       ; $527f: $41
    dec [hl]                                      ; $5280: $35
    call nz, $dfde                                ; $5281: $c4 $de $df
    ld hl, sp-$10                                 ; $5284: $f8 $f0
    and e                                         ; $5286: $a3
    nop                                           ; $5287: $00
    or e                                          ; $5288: $b3
    sub [hl]                                      ; $5289: $96
    jp nz, $9d9f                                  ; $528a: $c2 $9f $9d

    sbc h                                         ; $528d: $9c
    ld b, l                                       ; $528e: $45
    scf                                           ; $528f: $37

jr_06b_5290:
    rla                                           ; $5290: $17
    dec a                                         ; $5291: $3d
    jr c, jr_06b_52cf                             ; $5292: $38 $3b

    cp [hl]                                       ; $5294: $be
    add sp, $39                                   ; $5295: $e8 $39
    dec [hl]                                      ; $5297: $35
    call nz, $012d                                ; $5298: $c4 $2d $01
    ld [hl], e                                    ; $529b: $73
    pop bc                                        ; $529c: $c1
    ldh a, [$66]                                  ; $529d: $f0 $66
    ld bc, $b100                                  ; $529f: $01 $00 $b1
    ld a, e                                       ; $52a2: $7b
    ld h, h                                       ; $52a3: $64
    cp [hl]                                       ; $52a4: $be
    ldh [rDMA], a                                 ; $52a5: $e0 $46
    ld b, l                                       ; $52a7: $45
    ld b, e                                       ; $52a8: $43
    scf                                           ; $52a9: $37
    inc [hl]                                      ; $52aa: $34
    cp l                                          ; $52ab: $bd
    rst $20                                       ; $52ac: $e7
    dec [hl]                                      ; $52ad: $35
    push bc                                       ; $52ae: $c5
    sbc l                                         ; $52af: $9d
    rst $30                                       ; $52b0: $f7
    call nz, $d3d2                                ; $52b1: $c4 $d2 $d3
    nop                                           ; $52b4: $00
    ld d, h                                       ; $52b5: $54
    db $d3                                        ; $52b6: $d3
    and d                                         ; $52b7: $a2
    call z, Call_000_00f9                         ; $52b8: $cc $f9 $00
    jr c, jr_06b_52bd                             ; $52bb: $38 $00

jr_06b_52bd:
    or d                                          ; $52bd: $b2
    or d                                          ; $52be: $b2
    cp l                                          ; $52bf: $bd
    pop hl                                        ; $52c0: $e1
    ld a, d                                       ; $52c1: $7a
    jp $443c                                      ; $52c2: $c3 $3c $44


    ld e, $f0                                     ; $52c5: $1e $f0
    pop hl                                        ; $52c7: $e1
    ld b, [hl]                                    ; $52c8: $46
    ld b, [hl]                                    ; $52c9: $46
    ld b, l                                       ; $52ca: $45
    ld b, c                                       ; $52cb: $41
    xor d                                         ; $52cc: $aa
    add c                                         ; $52cd: $81
    ld d, a                                       ; $52ce: $57

jr_06b_52cf:
    jp nz, $9200                                  ; $52cf: $c2 $00 $92

    sbc h                                         ; $52d2: $9c
    ld a, e                                       ; $52d3: $7b
    ld h, h                                       ; $52d4: $64
    inc a                                         ; $52d5: $3c
    ldh [$9c], a                                  ; $52d6: $e0 $9c
    ld b, [hl]                                    ; $52d8: $46
    ld b, [hl]                                    ; $52d9: $46
    cp l                                          ; $52da: $bd
    ld [c], a                                     ; $52db: $e2
    ld a, e                                       ; $52dc: $7b
    ld [c], a                                     ; $52dd: $e2
    dec sp                                        ; $52de: $3b
    inc e                                         ; $52df: $1c
    cp [hl]                                       ; $52e0: $be
    pop bc                                        ; $52e1: $c1
    rst $28                                       ; $52e2: $ef
    ldh [rLYC], a                                 ; $52e3: $e0 $45
    ld [hl], $a6                                  ; $52e5: $36 $a6
    xor d                                         ; $52e7: $aa
    add c                                         ; $52e8: $81
    add sp, $63                                   ; $52e9: $e8 $63
    nop                                           ; $52eb: $00
    sub c                                         ; $52ec: $91
    db $e4                                        ; $52ed: $e4
    or $85                                        ; $52ee: $f6 $85
    or a                                          ; $52f0: $b7
    jr nz, jr_06b_5290                            ; $52f1: $20 $9d

    inc a                                         ; $52f3: $3c
    ldh [$cc], a                                  ; $52f4: $e0 $cc
    ld [c], a                                     ; $52f6: $e2
    ld b, e                                       ; $52f7: $43
    ld b, c                                       ; $52f8: $41
    ccf                                           ; $52f9: $3f
    inc e                                         ; $52fa: $1c
    cp e                                          ; $52fb: $bb
    and b                                         ; $52fc: $a0
    pop bc                                        ; $52fd: $c1
    db $e3                                        ; $52fe: $e3
    ld h, d                                       ; $52ff: $62
    and a                                         ; $5300: $a7
    ld h, [hl]                                    ; $5301: $66
    ld l, c                                       ; $5302: $69
    add d                                         ; $5303: $82
    db $ec                                        ; $5304: $ec
    ld h, [hl]                                    ; $5305: $66
    ld [hl+], a                                   ; $5306: $22
    ld [hl], c                                    ; $5307: $71
    ld b, $ee                                     ; $5308: $06 $ee
    ld h, b                                       ; $530a: $60
    jp nc, Jump_000_35d3                          ; $530b: $d2 $d3 $35

    add c                                         ; $530e: $81
    ld [de], a                                    ; $530f: $12
    ldh [$bb], a                                  ; $5310: $e0 $bb
    pop hl                                        ; $5312: $e1
    ld b, [hl]                                    ; $5313: $46
    ld [c], a                                     ; $5314: $e2
    pop bc                                        ; $5315: $c1
    db $e3                                        ; $5316: $e3
    rla                                           ; $5317: $17
    ld h, a                                       ; $5318: $67

jr_06b_5319:
    and e                                         ; $5319: $a3
    ld l, b                                       ; $531a: $68
    cp a                                          ; $531b: $bf
    ldh [$9e], a                                  ; $531c: $e0 $9e

jr_06b_531e:
    ld h, a                                       ; $531e: $67
    rlca                                          ; $531f: $07
    ld [hl+], a                                   ; $5320: $22
    ld [hl], c                                    ; $5321: $71
    ld d, e                                       ; $5322: $53
    and h                                         ; $5323: $a4
    ldh a, [$85]                                  ; $5324: $f0 $85
    ld h, e                                       ; $5326: $63
    scf                                           ; $5327: $37
    ld [c], a                                     ; $5328: $e2
    ld l, h                                       ; $5329: $6c
    ld b, b                                       ; $532a: $40
    pop bc                                        ; $532b: $c1
    db $e3                                        ; $532c: $e3
    dec [hl]                                      ; $532d: $35
    dec [hl]                                      ; $532e: $35
    ld l, h                                       ; $532f: $6c
    or a                                          ; $5330: $b7
    add a                                         ; $5331: $87
    cp b                                          ; $5332: $b8
    ld b, d                                       ; $5333: $42
    sbc [hl]                                      ; $5334: $9e
    ld h, a                                       ; $5335: $67
    rlca                                          ; $5336: $07
    ld [hl+], a                                   ; $5337: $22
    ld de, $a477                                  ; $5338: $11 $77 $a4
    ld [hl-], a                                   ; $533b: $32
    nop                                           ; $533c: $00
    sub $e7                                       ; $533d: $d6 $e7
    rst $10                                       ; $533f: $d7
    push af                                       ; $5340: $f5
    or $7a                                        ; $5341: $f6 $7a
    pop hl                                        ; $5343: $e1
    di                                            ; $5344: $f3
    pop bc                                        ; $5345: $c1
    ld b, l                                       ; $5346: $45
    ld [hl], $b9                                  ; $5347: $36 $b9
    ccf                                           ; $5349: $3f
    cp d                                          ; $534a: $ba
    and e                                         ; $534b: $a3
    dec [hl]                                      ; $534c: $35
    ld l, h                                       ; $534d: $6c
    ld l, a                                       ; $534e: $6f
    ld l, [hl]                                    ; $534f: $6e
    daa                                           ; $5350: $27
    ld hl, $0667                                  ; $5351: $21 $67 $06
    ret nz                                        ; $5354: $c0

    nop                                           ; $5355: $00
    db $f4                                        ; $5356: $f4
    pop af                                        ; $5357: $f1
    add c                                         ; $5358: $81
    add h                                         ; $5359: $84
    jr nz, jr_06b_5319                            ; $535a: $20 $bd

    ld [c], a                                     ; $535c: $e2
    or d                                          ; $535d: $b2
    pop bc                                        ; $535e: $c1
    di                                            ; $535f: $f3
    ret nz                                        ; $5360: $c0

    ld b, l                                       ; $5361: $45
    ld [hl], $60                                  ; $5362: $36 $60
    ld l, d                                       ; $5364: $6a
    add b                                         ; $5365: $80
    pop bc                                        ; $5366: $c1
    ld [c], a                                     ; $5367: $e2
    daa                                           ; $5368: $27
    ld b, c                                       ; $5369: $41
    nop                                           ; $536a: $00
    ld sp, hl                                     ; $536b: $f9
    ld [hl], c                                    ; $536c: $71
    ld h, l                                       ; $536d: $65
    push af                                       ; $536e: $f5
    or $bd                                        ; $536f: $f6 $bd
    ld [c], a                                     ; $5371: $e2
    dec bc                                        ; $5372: $0b
    push af                                       ; $5373: $f5
    or $d2                                        ; $5374: $f6 $d2
    and c                                         ; $5376: $a1
    sbc a                                         ; $5377: $9f
    cp a                                          ; $5378: $bf
    ld [c], a                                     ; $5379: $e2
    pop bc                                        ; $537a: $c1
    db $e3                                        ; $537b: $e3
    pop bc                                        ; $537c: $c1
    and c                                         ; $537d: $a1
    nop                                           ; $537e: $00
    ld hl, sp+$00                                 ; $537f: $f8 $00
    ld a, e                                       ; $5381: $7b
    jp hl                                         ; $5382: $e9


    dec b                                         ; $5383: $05
    add h                                         ; $5384: $84
    rst $20                                       ; $5385: $e7
    jr nz, @-$4c                                  ; $5386: $20 $b2

    jp nz, $c1ae                                  ; $5388: $c2 $ae $c1

    ld a, [hl+]                                   ; $538b: $2a
    jr nz, jr_06b_53e6                            ; $538c: $20 $58

    nop                                           ; $538e: $00
    nop                                           ; $538f: $00
    ld hl, sp+$06                                 ; $5390: $f8 $06
    db $ec                                        ; $5392: $ec
    ld c, b                                       ; $5393: $48
    pop hl                                        ; $5394: $e1
    ld [c], a                                     ; $5395: $e2
    or d                                          ; $5396: $b2
    srl a                                         ; $5397: $cb $3f
    and d                                         ; $5399: $a2
    jr jr_06b_531e                                ; $539a: $18 $82

    nop                                           ; $539c: $00
    rst $30                                       ; $539d: $f7
    sub e                                         ; $539e: $93
    ld c, l                                       ; $539f: $4d
    nop                                           ; $53a0: $00
    or d                                          ; $53a1: $b2
    add $0a                                       ; $53a2: $c6 $0a
    ld [c], a                                     ; $53a4: $e2
    push af                                       ; $53a5: $f5
    ld b, b                                       ; $53a6: $40
    xor c                                         ; $53a7: $a9
    inc h                                         ; $53a8: $24
    nop                                           ; $53a9: $00
    add d                                         ; $53aa: $82
    nop                                           ; $53ab: $00
    nop                                           ; $53ac: $00
    nop                                           ; $53ad: $00
    pop bc                                        ; $53ae: $c1
    nop                                           ; $53af: $00
    rst $38                                       ; $53b0: $ff
    rst $38                                       ; $53b1: $ff
    rst $38                                       ; $53b2: $ff
    rst $38                                       ; $53b3: $ff
    rst $38                                       ; $53b4: $ff
    rst $38                                       ; $53b5: $ff
    rst $38                                       ; $53b6: $ff
    rst $38                                       ; $53b7: $ff
    rst $38                                       ; $53b8: $ff
    rst $38                                       ; $53b9: $ff
    nop                                           ; $53ba: $00
    nop                                           ; $53bb: $00
    dec c                                         ; $53bc: $0d
    add b                                         ; $53bd: $80
    cp $e0                                        ; $53be: $fe $e0
    nop                                           ; $53c0: $00
    ld b, b                                       ; $53c1: $40
    ret c                                         ; $53c2: $d8

    push hl                                       ; $53c3: $e5
    rst $30                                       ; $53c4: $f7
    and $ff                                       ; $53c5: $e6 $ff
    rst $38                                       ; $53c7: $ff
    rst $38                                       ; $53c8: $ff
    rst $30                                       ; $53c9: $f7
    nop                                           ; $53ca: $00
    nop                                           ; $53cb: $00
    nop                                           ; $53cc: $00
    ld bc, $1000                                  ; $53cd: $01 $00 $10
    ld a, [bc]                                    ; $53d0: $0a
    ld bc, $1001                                  ; $53d1: $01 $01 $10
    dec bc                                        ; $53d4: $0b
    ld bc, $1002                                  ; $53d5: $01 $02 $10
    inc c                                         ; $53d8: $0c
    ld bc, $1003                                  ; $53d9: $01 $03 $10
    dec c                                         ; $53dc: $0d
    ld bc, $1104                                  ; $53dd: $01 $04 $11
    dec c                                         ; $53e0: $0d
    ld bc, $1105                                  ; $53e1: $01 $05 $11
    ld c, $01                                     ; $53e4: $0e $01

jr_06b_53e6:
    ld b, $12                                     ; $53e6: $06 $12
    ld c, $01                                     ; $53e8: $0e $01
    rlca                                          ; $53ea: $07
    ld [de], a                                    ; $53eb: $12
    rrca                                          ; $53ec: $0f
    ld bc, $1308                                  ; $53ed: $01 $08 $13
    rrca                                          ; $53f0: $0f
    ld bc, $0f09                                  ; $53f1: $01 $09 $0f
    ld [de], a                                    ; $53f4: $12
    ld bc, $100a                                  ; $53f5: $01 $0a $10
    ld [de], a                                    ; $53f8: $12
    ld bc, $110b                                  ; $53f9: $01 $0b $11
    ld [de], a                                    ; $53fc: $12
    ld bc, $100c                                  ; $53fd: $01 $0c $10
    inc de                                        ; $5400: $13
    ld bc, $110d                                  ; $5401: $01 $0d $11
    inc de                                        ; $5404: $13
    ld bc, $110e                                  ; $5405: $01 $0e $11
    inc d                                         ; $5408: $14
    ld bc, $120f                                  ; $5409: $01 $0f $12
    inc d                                         ; $540c: $14
    ld bc, $1210                                  ; $540d: $01 $10 $12
    dec d                                         ; $5410: $15
    ld bc, $1211                                  ; $5411: $01 $11 $12
    ld d, $01                                     ; $5414: $16 $01
    ld [de], a                                    ; $5416: $12
    inc de                                        ; $5417: $13
    rla                                           ; $5418: $17
    ld bc, $1313                                  ; $5419: $01 $13 $13
    jr jr_06b_541f                                ; $541c: $18 $01

    inc d                                         ; $541e: $14

jr_06b_541f:
    jr jr_06b_543b                                ; $541f: $18 $1a

    ld bc, $1915                                  ; $5421: $01 $15 $19
    ld a, [de]                                    ; $5424: $1a
    ld bc, $1916                                  ; $5425: $01 $16 $19
    dec de                                        ; $5428: $1b
    ld bc, $1a17                                  ; $5429: $01 $17 $1a
    inc e                                         ; $542c: $1c
    ld bc, $1518                                  ; $542d: $01 $18 $15
    dec e                                         ; $5430: $1d
    ld bc, $1a19                                  ; $5431: $01 $19 $1a
    dec e                                         ; $5434: $1d
    ld bc, $151a                                  ; $5435: $01 $1a $15
    ld e, $01                                     ; $5438: $1e $01
    dec de                                        ; $543a: $1b

jr_06b_543b:
    ld d, $1f                                     ; $543b: $16 $1f
    ld bc, $161c                                  ; $543d: $01 $1c $16
    jr nz, jr_06b_5443                            ; $5440: $20 $01

    dec e                                         ; $5442: $1d

jr_06b_5443:
    add hl, de                                    ; $5443: $19
    ld hl, $1e01                                  ; $5444: $21 $01 $1e
    ld a, [de]                                    ; $5447: $1a
    ld hl, $1f01                                  ; $5448: $21 $01 $1f
    add hl, de                                    ; $544b: $19
    ld [hl+], a                                   ; $544c: $22
    ld bc, $1320                                  ; $544d: $01 $20 $13
    inc hl                                        ; $5450: $23
    ld bc, $1421                                  ; $5451: $01 $21 $14
    inc hl                                        ; $5454: $23
    ld bc, $1822                                  ; $5455: $01 $22 $18
    inc hl                                        ; $5458: $23
    ld bc, $1323                                  ; $5459: $01 $23 $13
    inc h                                         ; $545c: $24
    ld bc, $1724                                  ; $545d: $01 $24 $17
    inc h                                         ; $5460: $24
    ld bc, $1825                                  ; $5461: $01 $25 $18
    inc h                                         ; $5464: $24
    ld bc, $1326                                  ; $5465: $01 $26 $13
    dec h                                         ; $5468: $25
    ld bc, $1827                                  ; $5469: $01 $27 $18
    daa                                           ; $546c: $27
    ld bc, $1928                                  ; $546d: $01 $28 $19
    daa                                           ; $5470: $27
    ld bc, $1829                                  ; $5471: $01 $29 $18
    jr z, jr_06b_5477                             ; $5474: $28 $01

    ld a, [hl+]                                   ; $5476: $2a

jr_06b_5477:
    ld a, [de]                                    ; $5477: $1a
    ld a, [hl+]                                   ; $5478: $2a
    ld bc, $1a2b                                  ; $5479: $01 $2b $1a
    dec hl                                        ; $547c: $2b
    ld bc, $1d2c                                  ; $547d: $01 $2c $1d
    dec hl                                        ; $5480: $2b
    ld bc, $152d                                  ; $5481: $01 $2d $15
    inc l                                         ; $5484: $2c
    ld bc, $1d2e                                  ; $5485: $01 $2e $1d
    inc l                                         ; $5488: $2c
    ld bc, $1e2f                                  ; $5489: $01 $2f $1e
    inc l                                         ; $548c: $2c
    ld bc, $1f30                                  ; $548d: $01 $30 $1f
    inc l                                         ; $5490: $2c
    ld bc, $1531                                  ; $5491: $01 $31 $15
    dec l                                         ; $5494: $2d
    ld bc, $1e32                                  ; $5495: $01 $32 $1e
    dec l                                         ; $5498: $2d
    ld bc, $1f33                                  ; $5499: $01 $33 $1f
    dec l                                         ; $549c: $2d
    ld bc, $2034                                  ; $549d: $01 $34 $20
    dec l                                         ; $54a0: $2d
    ld bc, $1635                                  ; $54a1: $01 $35 $16
    ld l, $01                                     ; $54a4: $2e $01
    ld [hl], $17                                  ; $54a6: $36 $17
    cpl                                           ; $54a8: $2f
    ld bc, $1837                                  ; $54a9: $01 $37 $18
    cpl                                           ; $54ac: $2f
    ld bc, $1738                                  ; $54ad: $01 $38 $17
    jr nc, jr_06b_54b3                            ; $54b0: $30 $01

    add hl, sp                                    ; $54b2: $39

jr_06b_54b3:
    jr jr_06b_54e5                                ; $54b3: $18 $30

    ld bc, $193a                                  ; $54b5: $01 $3a $19
    jr nc, jr_06b_54bb                            ; $54b8: $30 $01

    dec sp                                        ; $54ba: $3b

jr_06b_54bb:
    jr @+$33                                      ; $54bb: $18 $31

    ld bc, $283c                                  ; $54bd: $01 $3c $28
    ld [hl-], a                                   ; $54c0: $32
    ld bc, $283d                                  ; $54c1: $01 $3d $28
    inc sp                                        ; $54c4: $33
    ld bc, $293e                                  ; $54c5: $01 $3e $29
    inc sp                                        ; $54c8: $33
    ld bc, $2a3f                                  ; $54c9: $01 $3f $2a
    inc sp                                        ; $54cc: $33
    ld bc, $2940                                  ; $54cd: $01 $40 $29
    inc [hl]                                      ; $54d0: $34
    ld bc, $2a41                                  ; $54d1: $01 $41 $2a
    inc [hl]                                      ; $54d4: $34
    ld bc, $2b42                                  ; $54d5: $01 $42 $2b
    inc [hl]                                      ; $54d8: $34
    ld bc, $1a43                                  ; $54d9: $01 $43 $1a
    dec [hl]                                      ; $54dc: $35
    ld bc, $1b44                                  ; $54dd: $01 $44 $1b
    dec [hl]                                      ; $54e0: $35
    ld bc, $1c45                                  ; $54e1: $01 $45 $1c
    dec [hl]                                      ; $54e4: $35

jr_06b_54e5:
    ld bc, $2a46                                  ; $54e5: $01 $46 $2a
    dec [hl]                                      ; $54e8: $35
    ld bc, $2b47                                  ; $54e9: $01 $47 $2b
    dec [hl]                                      ; $54ec: $35
    ld bc, $2c48                                  ; $54ed: $01 $48 $2c
    dec [hl]                                      ; $54f0: $35
    ld bc, $1d49                                  ; $54f1: $01 $49 $1d
    ld [hl], $01                                  ; $54f4: $36 $01
    ld c, d                                       ; $54f6: $4a
    ld e, $36                                     ; $54f7: $1e $36
    ld bc, $1f4b                                  ; $54f9: $01 $4b $1f
    ld [hl], $01                                  ; $54fc: $36 $01
    ld c, h                                       ; $54fe: $4c
    inc h                                         ; $54ff: $24
    jr c, jr_06b_5503                             ; $5500: $38 $01

    ld c, l                                       ; $5502: $4d

jr_06b_5503:
    dec h                                         ; $5503: $25
    jr c, jr_06b_5507                             ; $5504: $38 $01

    ld c, [hl]                                    ; $5506: $4e

jr_06b_5507:
    ld h, $38                                     ; $5507: $26 $38
    ld bc, $274f                                  ; $5509: $01 $4f $27
    add hl, sp                                    ; $550c: $39
    ld bc, $2850                                  ; $550d: $01 $50 $28
    add hl, sp                                    ; $5510: $39
    rst $38                                       ; $5511: $ff
    rst $38                                       ; $5512: $ff
    rst $38                                       ; $5513: $ff
    inc e                                         ; $5514: $1c
    ld d, l                                       ; $5515: $55
    push bc                                       ; $5516: $c5
    ld d, a                                       ; $5517: $57
    inc d                                         ; $5518: $14
    ld e, e                                       ; $5519: $5b
    inc sp                                        ; $551a: $33
    ld e, e                                       ; $551b: $5b
    ccf                                           ; $551c: $3f
    ld c, $0e                                     ; $551d: $0e $0e
    dec c                                         ; $551f: $0d
    dec c                                         ; $5520: $0d
    dec c                                         ; $5521: $0d
    ld c, $ff                                     ; $5522: $0e $ff
    db $e3                                        ; $5524: $e3
    or $ff                                        ; $5525: $f6 $ff
    nop                                           ; $5527: $00
    db $ec                                        ; $5528: $ec
    rst $28                                       ; $5529: $ef
    db $dd                                        ; $552a: $dd
    pop hl                                        ; $552b: $e1
    rst $10                                       ; $552c: $d7
    db $e3                                        ; $552d: $e3
    or $ff                                        ; $552e: $f6 $ff
    or $f6                                        ; $5530: $f6 $f6
    sbc c                                         ; $5532: $99
    rst $38                                       ; $5533: $ff
    or $f9                                        ; $5534: $f6 $f9
    sbc c                                         ; $5536: $99
    rst $38                                       ; $5537: $ff
    nop                                           ; $5538: $00
    add l                                         ; $5539: $85
    rst $38                                       ; $553a: $ff
    or $ff                                        ; $553b: $f6 $ff
    nop                                           ; $553d: $00
    rst $38                                       ; $553e: $ff
    or $ff                                        ; $553f: $f6 $ff
    ld a, e                                       ; $5541: $7b
    rst $38                                       ; $5542: $ff
    or $ff                                        ; $5543: $f6 $ff
    nop                                           ; $5545: $00
    rst $38                                       ; $5546: $ff
    or $ff                                        ; $5547: $f6 $ff
    nop                                           ; $5549: $00
    add l                                         ; $554a: $85
    rst $38                                       ; $554b: $ff
    or $ff                                        ; $554c: $f6 $ff
    nop                                           ; $554e: $00
    rst $38                                       ; $554f: $ff
    or $ff                                        ; $5550: $f6 $ff
    ld a, e                                       ; $5552: $7b
    rst $38                                       ; $5553: $ff
    or $ff                                        ; $5554: $f6 $ff
    sbc c                                         ; $5556: $99
    rst $38                                       ; $5557: $ff
    add l                                         ; $5558: $85
    rst $38                                       ; $5559: $ff
    ld [hl-], a                                   ; $555a: $32
    or $f8                                        ; $555b: $f6 $f8
    ld c, l                                       ; $555d: $4d
    rst $38                                       ; $555e: $ff
    ldh [$b6], a                                  ; $555f: $e0 $b6
    pop hl                                        ; $5561: $e1
    ld c, l                                       ; $5562: $4d
    ld c, l                                       ; $5563: $4d
    nop                                           ; $5564: $00
    rst $38                                       ; $5565: $ff
    adc a                                         ; $5566: $8f
    ld a, [c]                                     ; $5567: $f2
    db $10                                        ; $5568: $10
    call c, $fce2                                 ; $5569: $dc $e2 $fc
    push hl                                       ; $556c: $e5
    ld a, e                                       ; $556d: $7b
    rst $38                                       ; $556e: $ff
    ld a, [bc]                                    ; $556f: $0a
    and $0d                                       ; $5570: $e6 $0d
    add a                                         ; $5572: $87
    ld [c], a                                     ; $5573: $e2
    add h                                         ; $5574: $84
    pop hl                                        ; $5575: $e1
    ret nz                                        ; $5576: $c0

    pop hl                                        ; $5577: $e1
    ld [bc], a                                    ; $5578: $02
    push af                                       ; $5579: $f5
    pop hl                                        ; $557a: $e1
    ld c, l                                       ; $557b: $4d
    or a                                          ; $557c: $b7
    ld [c], a                                     ; $557d: $e2
    nop                                           ; $557e: $00
    rst $38                                       ; $557f: $ff
    ld c, b                                       ; $5580: $48
    db $e4                                        ; $5581: $e4
    nop                                           ; $5582: $00
    ld [c], a                                     ; $5583: $e2
    ret nz                                        ; $5584: $c0

    ld [c], a                                     ; $5585: $e2
    or a                                          ; $5586: $b7
    ret nz                                        ; $5587: $c0

    ldh [$3c], a                                  ; $5588: $e0 $3c
    ldh [$85], a                                  ; $558a: $e0 $85
    rst $38                                       ; $558c: $ff
    adc a                                         ; $558d: $8f
    jp z, $e14a                                   ; $558e: $ca $4a $e1

    adc e                                         ; $5591: $8b
    ld [c], a                                     ; $5592: $e2
    dec l                                         ; $5593: $2d
    ld c, l                                       ; $5594: $4d
    dec l                                         ; $5595: $2d
    ret nz                                        ; $5596: $c0

    inc bc                                        ; $5597: $03
    pop hl                                        ; $5598: $e1
    or b                                          ; $5599: $b0
    db $e3                                        ; $559a: $e3
    nop                                           ; $559b: $00
    rst $38                                       ; $559c: $ff
    add l                                         ; $559d: $85
    call nz, $e34a                                ; $559e: $c4 $4a $e3
    dec a                                         ; $55a1: $3d
    ret nz                                        ; $55a2: $c0

    ld l, l                                       ; $55a3: $6d
    ld c, e                                       ; $55a4: $4b
    add c                                         ; $55a5: $81
    dec bc                                        ; $55a6: $0b
    push bc                                       ; $55a7: $c5
    ret nz                                        ; $55a8: $c0

    cp l                                          ; $55a9: $bd
    ldh [rHDMA3], a                               ; $55aa: $e0 $53
    ret c                                         ; $55ac: $d8

    inc d                                         ; $55ad: $14
    rst $08                                       ; $55ae: $cf
    ld c, e                                       ; $55af: $4b
    ld [c], a                                     ; $55b0: $e2
    ld c, c                                       ; $55b1: $49
    ldh [rKEY1], a                                ; $55b2: $e0 $4d
    rla                                           ; $55b4: $17
    ld l, l                                       ; $55b5: $6d
    dec c                                         ; $55b6: $0d
    dec bc                                        ; $55b7: $0b
    cp $e0                                        ; $55b8: $fe $e0
    dec c                                         ; $55ba: $0d
    ld a, h                                       ; $55bb: $7c
    db $e3                                        ; $55bc: $e3
    nop                                           ; $55bd: $00
    rst $38                                       ; $55be: $ff
    ld a, [bc]                                    ; $55bf: $0a
    rst $00                                       ; $55c0: $c7
    inc l                                         ; $55c1: $2c
    ret nz                                        ; $55c2: $c0

    ret nz                                        ; $55c3: $c0

    add h                                         ; $55c4: $84
    pop hl                                        ; $55c5: $e1
    dec c                                         ; $55c6: $0d
    dec hl                                        ; $55c7: $2b
    or [hl]                                       ; $55c8: $b6
    db $e4                                        ; $55c9: $e4
    dec l                                         ; $55ca: $2d
    add l                                         ; $55cb: $85
    rst $38                                       ; $55cc: $ff
    adc a                                         ; $55cd: $8f
    xor c                                         ; $55ce: $a9
    ld [hl], $08                                  ; $55cf: $36 $08
    ret nz                                        ; $55d1: $c0

    dec c                                         ; $55d2: $0d
    ld l, l                                       ; $55d3: $6d
    ld a, d                                       ; $55d4: $7a
    db $e4                                        ; $55d5: $e4
    dec hl                                        ; $55d6: $2b
    dec bc                                        ; $55d7: $0b
    ld a, h                                       ; $55d8: $7c
    ldh [$c0], a                                  ; $55d9: $e0 $c0
    db $e4                                        ; $55db: $e4
    ld hl, sp+$00                                 ; $55dc: $f8 $00
    rst $38                                       ; $55de: $ff
    add l                                         ; $55df: $85
    and l                                         ; $55e0: $a5
    pop bc                                        ; $55e1: $c1
    pop hl                                        ; $55e2: $e1
    ld a, [bc]                                    ; $55e3: $0a
    ld a, [bc]                                    ; $55e4: $0a
    ld a, [hl+]                                   ; $55e5: $2a
    dec bc                                        ; $55e6: $0b
    ld l, e                                       ; $55e7: $6b
    rlca                                          ; $55e8: $07
    dec hl                                        ; $55e9: $2b
    dec bc                                        ; $55ea: $0b
    dec hl                                        ; $55eb: $2b
    ld a, $e0                                     ; $55ec: $3e $e0
    add b                                         ; $55ee: $80
    ldh [rP1], a                                  ; $55ef: $e0 $00
    rst $38                                       ; $55f1: $ff
    nop                                           ; $55f2: $00
    rst $20                                       ; $55f3: $e7
    ld bc, $bfa0                                  ; $55f4: $01 $a0 $bf

jr_06b_55f7:
    ld c, e                                       ; $55f7: $4b
    dec c                                         ; $55f8: $0d
    ld c, d                                       ; $55f9: $4a
    ld c, d                                       ; $55fa: $4a
    ld a, [hl+]                                   ; $55fb: $2a
    ld a, [bc]                                    ; $55fc: $0a
    jp Jump_000_0be0                              ; $55fd: $c3 $e0 $0b


    db $e3                                        ; $5600: $e3
    ld l, e                                       ; $5601: $6b
    ld c, e                                       ; $5602: $4b
    add b                                         ; $5603: $80
    ldh [rP1], a                                  ; $5604: $e0 $00
    rst $18                                       ; $5606: $df
    jr z, jr_06b_55f7                             ; $5607: $28 $ee

    dec hl                                        ; $5609: $2b
    ld a, [bc]                                    ; $560a: $0a
    dec bc                                        ; $560b: $0b
    ld a, a                                       ; $560c: $7f
    dec bc                                        ; $560d: $0b
    dec bc                                        ; $560e: $0b
    dec hl                                        ; $560f: $2b
    ld l, e                                       ; $5610: $6b
    ld l, e                                       ; $5611: $6b
    ld c, e                                       ; $5612: $4b
    dec l                                         ; $5613: $2d
    add b                                         ; $5614: $80
    ld [c], a                                     ; $5615: $e2
    ld hl, sp-$7b                                 ; $5616: $f8 $85
    rst $38                                       ; $5618: $ff
    nop                                           ; $5619: $00
    jp hl                                         ; $561a: $e9


    add b                                         ; $561b: $80
    ld [c], a                                     ; $561c: $e2
    ld c, e                                       ; $561d: $4b
    ld l, e                                       ; $561e: $6b
    ld c, e                                       ; $561f: $4b
    ld l, e                                       ; $5620: $6b
    ld a, [bc]                                    ; $5621: $0a
    ccf                                           ; $5622: $3f
    ld a, [bc]                                    ; $5623: $0a
    dec l                                         ; $5624: $2d
    dec l                                         ; $5625: $2d
    dec l                                         ; $5626: $2d
    dec c                                         ; $5627: $0d
    ld l, l                                       ; $5628: $6d
    nop                                           ; $5629: $00
    rst $38                                       ; $562a: $ff
    nop                                           ; $562b: $00
    db $ec                                        ; $562c: $ec
    inc d                                         ; $562d: $14
    ld b, b                                       ; $562e: $40
    add b                                         ; $562f: $80
    ld bc, $0ae0                                  ; $5630: $01 $e0 $0a
    rst $38                                       ; $5633: $ff

jr_06b_5634:
    ldh [$0d], a                                  ; $5634: $e0 $0d
    pop bc                                        ; $5636: $c1
    ldh [rP1], a                                  ; $5637: $e0 $00
    rst $18                                       ; $5639: $df
    nop                                           ; $563a: $00
    db $ed                                        ; $563b: $ed
    ld a, [bc]                                    ; $563c: $0a
    ld b, [hl]                                    ; $563d: $46
    pop bc                                        ; $563e: $c1
    ld a, [bc]                                    ; $563f: $0a
    add d                                         ; $5640: $82
    ldh [$2a], a                                  ; $5641: $e0 $2a
    ld b, d                                       ; $5643: $42
    pop hl                                        ; $5644: $e1
    ld a, [hl]                                    ; $5645: $7e
    and c                                         ; $5646: $a1
    nop                                           ; $5647: $00
    rst $38                                       ; $5648: $ff
    jr z, jr_06b_5634                             ; $5649: $28 $e9

    dec [hl]                                      ; $564b: $35
    ld c, l                                       ; $564c: $4d
    dec bc                                        ; $564d: $0b
    ldh [$0d], a                                  ; $564e: $e0 $0d
    add l                                         ; $5650: $85
    ret nz                                        ; $5651: $c0

    dec l                                         ; $5652: $2d
    dec c                                         ; $5653: $0d
    ld b, d                                       ; $5654: $42
    ldh [$80], a                                  ; $5655: $e0 $80
    and d                                         ; $5657: $a2
    nop                                           ; $5658: $00
    add l                                         ; $5659: $85
    rst $38                                       ; $565a: $ff
    nop                                           ; $565b: $00
    jp z, $e3bf                                   ; $565c: $ca $bf $e3

    inc b                                         ; $565f: $04
    ldh [$bd], a                                  ; $5660: $e0 $bd
    and b                                         ; $5662: $a0
    push af                                       ; $5663: $f5
    and b                                         ; $5664: $a0
    nop                                           ; $5665: $00
    rst $38                                       ; $5666: $ff
    adc a                                         ; $5667: $8f
    ld l, b                                       ; $5668: $68
    db $10                                        ; $5669: $10
    call z, $ce61                                 ; $566a: $cc $61 $ce
    ld h, c                                       ; $566d: $61
    ld b, $a0                                     ; $566e: $06 $a0
    add h                                         ; $5670: $84
    pop bc                                        ; $5671: $c1
    ld l, l                                       ; $5672: $6d
    ld b, e                                       ; $5673: $43
    and e                                         ; $5674: $a3
    nop                                           ; $5675: $00
    rst $38                                       ; $5676: $ff
    ld b, $a6                                     ; $5677: $06 $a6
    ld [bc], a                                    ; $5679: $02
    jp nz, Jump_06b_4b83                          ; $567a: $c2 $83 $4b

    call nz, $bda0                                ; $567d: $c4 $a0 $bd
    add b                                         ; $5680: $80
    ld [hl], e                                    ; $5681: $73
    and c                                         ; $5682: $a1
    ld l, l                                       ; $5683: $6d
    add h                                         ; $5684: $84
    nop                                           ; $5685: $00
    rst $38                                       ; $5686: $ff
    ret nz                                        ; $5687: $c0

    and $0f                                       ; $5688: $e6 $0f
    dec c                                         ; $568a: $0d
    ld l, l                                       ; $568b: $6d
    dec hl                                        ; $568c: $2b
    dec hl                                        ; $568d: $2b
    rst $38                                       ; $568e: $ff
    add b                                         ; $568f: $80
    inc b                                         ; $5690: $04
    db $e4                                        ; $5691: $e4
    dec l                                         ; $5692: $2d
    add e                                         ; $5693: $83
    nop                                           ; $5694: $00
    rst $38                                       ; $5695: $ff
    inc c                                         ; $5696: $0c
    inc c                                         ; $5697: $0c
    ld h, d                                       ; $5698: $62
    add c                                         ; $5699: $81
    add h                                         ; $569a: $84
    ld c, e                                       ; $569b: $4b
    ld c, e                                       ; $569c: $4b
    jp nz, Jump_06b_4481                          ; $569d: $c2 $81 $44

    add h                                         ; $56a0: $84
    nop                                           ; $56a1: $00
    ld a, a                                       ; $56a2: $7f
    adc a                                         ; $56a3: $8f
    ld b, a                                       ; $56a4: $47
    ld b, $c0                                     ; $56a5: $06 $c0
    add e                                         ; $56a7: $83
    dec c                                         ; $56a8: $0d
    dec hl                                        ; $56a9: $2b
    rlca                                          ; $56aa: $07
    and c                                         ; $56ab: $a1
    add $a1                                       ; $56ac: $c6 $a1
    ld a, [c]                                     ; $56ae: $f2
    ld b, a                                       ; $56af: $47
    nop                                           ; $56b0: $00
    rst $38                                       ; $56b1: $ff
    ld a, [bc]                                    ; $56b2: $0a
    ld b, c                                       ; $56b3: $41
    inc e                                         ; $56b4: $1c
    adc d                                         ; $56b5: $8a

jr_06b_56b6:
    ld b, c                                       ; $56b6: $41
    add c                                         ; $56b7: $81
    add b                                         ; $56b8: $80
    ld c, e                                       ; $56b9: $4b
    dec bc                                        ; $56ba: $0b
    ld c, e                                       ; $56bb: $4b
    ld [bc], a                                    ; $56bc: $02
    pop hl                                        ; $56bd: $e1
    call nz, Call_000_0046                        ; $56be: $c4 $46 $00
    rst $38                                       ; $56c1: $ff
    nop                                           ; $56c2: $00
    ld l, h                                       ; $56c3: $6c
    ld b, h                                       ; $56c4: $44
    ld c, l                                       ; $56c5: $4d
    ld b, c                                       ; $56c6: $41
    add $60                                       ; $56c7: $c6 $60
    add [hl]                                      ; $56c9: $86
    add c                                         ; $56ca: $81
    adc b                                         ; $56cb: $88
    add d                                         ; $56cc: $82
    add l                                         ; $56cd: $85
    rst $38                                       ; $56ce: $ff
    nop                                           ; $56cf: $00
    db $eb                                        ; $56d0: $eb
    inc bc                                        ; $56d1: $03
    add e                                         ; $56d2: $83
    ld bc, $804b                                  ; $56d3: $01 $4b $80
    pop hl                                        ; $56d6: $e1
    ret z                                         ; $56d7: $c8

    add b                                         ; $56d8: $80
    nop                                           ; $56d9: $00
    rst $38                                       ; $56da: $ff
    adc a                                         ; $56db: $8f
    dec l                                         ; $56dc: $2d
    call nz, Call_000_0864                        ; $56dd: $c4 $64 $08
    add [hl]                                      ; $56e0: $86
    ret c                                         ; $56e1: $d8

    inc a                                         ; $56e2: $3c
    nop                                           ; $56e3: $00
    inc d                                         ; $56e4: $14
    ld a, [hl+]                                   ; $56e5: $2a
    add hl, bc                                    ; $56e6: $09
    ld b, d                                       ; $56e7: $42
    add b                                         ; $56e8: $80
    call nz, $c582                                ; $56e9: $c4 $82 $c5
    nop                                           ; $56ec: $00
    rst $38                                       ; $56ed: $ff
    adc a                                         ; $56ee: $8f
    jr z, jr_06b_56b6                             ; $56ef: $28 $c5

    ld bc, $c005                                  ; $56f1: $01 $05 $c0
    nop                                           ; $56f4: $00
    ld c, b                                       ; $56f5: $48
    ld h, c                                       ; $56f6: $61
    inc bc                                        ; $56f7: $03
    ld h, b                                       ; $56f8: $60
    ld b, d                                       ; $56f9: $42
    ld b, b                                       ; $56fa: $40
    add l                                         ; $56fb: $85
    rst $38                                       ; $56fc: $ff
    add l                                         ; $56fd: $85
    xor c                                         ; $56fe: $a9
    ld b, d                                       ; $56ff: $42
    db $e3                                        ; $5700: $e3
    rst $00                                       ; $5701: $c7
    ld h, b                                       ; $5702: $60
    db $fd                                        ; $5703: $fd
    pop hl                                        ; $5704: $e1
    add c                                         ; $5705: $81
    dec hl                                        ; $5706: $2b
    add a                                         ; $5707: $87
    ld h, d                                       ; $5708: $62
    nop                                           ; $5709: $00
    rst $38                                       ; $570a: $ff
    add l                                         ; $570b: $85
    xor b                                         ; $570c: $a8
    ld b, d                                       ; $570d: $42
    ld [c], a                                     ; $570e: $e2
    call $c040                                    ; $570f: $cd $40 $c0
    db $e3                                        ; $5712: $e3
    dec bc                                        ; $5713: $0b
    ret nc                                        ; $5714: $d0

    ret nz                                        ; $5715: $c0

    jr nz, jr_06b_5718                            ; $5716: $20 $00

jr_06b_5718:
    rst $38                                       ; $5718: $ff
    nop                                           ; $5719: $00
    db $eb                                        ; $571a: $eb
    sub l                                         ; $571b: $95
    nop                                           ; $571c: $00
    ld l, e                                       ; $571d: $6b
    adc l                                         ; $571e: $8d
    ld b, c                                       ; $571f: $41
    dec bc                                        ; $5720: $0b
    dec l                                         ; $5721: $2d
    ld bc, $7f0b                                  ; $5722: $01 $0b $7f
    pop bc                                        ; $5725: $c1
    nop                                           ; $5726: $00
    rst $38                                       ; $5727: $ff
    nop                                           ; $5728: $00
    db $ec                                        ; $5729: $ec
    ld l, $20                                     ; $572a: $2e $20
    ret nz                                        ; $572c: $c0

    ldh [$3e], a                                  ; $572d: $e0 $3e
    db $e3                                        ; $572f: $e3
    ret nz                                        ; $5730: $c0

    db $e4                                        ; $5731: $e4
    ret nz                                        ; $5732: $c0

    add l                                         ; $5733: $85
    rst $38                                       ; $5734: $ff
    add $8a                                       ; $5735: $c6 $8a
    ld b, b                                       ; $5737: $40
    db $eb                                        ; $5738: $eb
    nop                                           ; $5739: $00
    rst $38                                       ; $573a: $ff
    nop                                           ; $573b: $00
    db $eb                                        ; $573c: $eb
    ld d, d                                       ; $573d: $52
    jr nz, @+$0f                                  ; $573e: $20 $0d

    ld c, e                                       ; $5740: $4b
    rlca                                          ; $5741: $07
    ld l, e                                       ; $5742: $6b
    dec bc                                        ; $5743: $0b
    ld l, e                                       ; $5744: $6b
    db $fd                                        ; $5745: $fd
    pop hl                                        ; $5746: $e1
    ld b, b                                       ; $5747: $40
    xor b                                         ; $5748: $a8
    ld a, e                                       ; $5749: $7b
    rst $38                                       ; $574a: $ff
    ld [$8525], sp                                ; $574b: $08 $25 $85
    ld h, e                                       ; $574e: $63
    nop                                           ; $574f: $00
    jp Jump_000_03e1                              ; $5750: $c3 $e1 $03


    add d                                         ; $5753: $82
    nop                                           ; $5754: $00
    rst $38                                       ; $5755: $ff
    ld a, e                                       ; $5756: $7b
    ld h, $db                                     ; $5757: $26 $db
    ld [hl+], a                                   ; $5759: $22
    ld b, h                                       ; $575a: $44
    ld h, d                                       ; $575b: $62
    adc b                                         ; $575c: $88
    ld h, c                                       ; $575d: $61
    ld b, $60                                     ; $575e: $06 $60
    nop                                           ; $5760: $00
    adc b                                         ; $5761: $88
    ld b, e                                       ; $5762: $43
    add l                                         ; $5763: $85
    rst $38                                       ; $5764: $ff
    nop                                           ; $5765: $00
    jp z, $e3ff                                   ; $5766: $ca $ff $e3

    jp Jump_000_04e1                              ; $5769: $c3 $e1 $04


    ld [c], a                                     ; $576c: $e2
    ld h, h                                       ; $576d: $64
    inc hl                                        ; $576e: $23
    nop                                           ; $576f: $00
    rst $38                                       ; $5770: $ff
    nop                                           ; $5771: $00
    nop                                           ; $5772: $00
    jp Jump_06b_4296                              ; $5773: $c3 $96 $42


    inc a                                         ; $5776: $3c
    and c                                         ; $5777: $a1
    add $e9                                       ; $5778: $c6 $e9
    nop                                           ; $577a: $00
    rst $38                                       ; $577b: $ff
    or $0a                                        ; $577c: $f6 $0a
    db $fc                                        ; $577e: $fc
    ld [$f585], a                                 ; $577f: $ea $85 $f5
    nop                                           ; $5782: $00
    nop                                           ; $5783: $00
    sbc b                                         ; $5784: $98
    ret nz                                        ; $5785: $c0

    db $ec                                        ; $5786: $ec
    add l                                         ; $5787: $85
    rst $38                                       ; $5788: $ff
    add l                                         ; $5789: $85
    add hl, bc                                    ; $578a: $09
    ld sp, hl                                     ; $578b: $f9
    push bc                                       ; $578c: $c5
    cpl                                           ; $578d: $2f
    and a                                         ; $578e: $a7
    ret c                                         ; $578f: $d8

    jr jr_06b_5792                                ; $5790: $18 $00

jr_06b_5792:
    ld sp, $c100                                  ; $5792: $31 $00 $c1
    rst $20                                       ; $5795: $e7
    rst $00                                       ; $5796: $c7
    ld bc, $f685                                  ; $5797: $01 $85 $f6
    ld a, e                                       ; $579a: $7b
    ccf                                           ; $579b: $3f
    or $ff                                        ; $579c: $f6 $ff
    and e                                         ; $579e: $a3
    rst $38                                       ; $579f: $ff
    add l                                         ; $57a0: $85
    rst $38                                       ; $57a1: $ff
    sbc c                                         ; $57a2: $99
    rst $38                                       ; $57a3: $ff
    nop                                           ; $57a4: $00
    nop                                           ; $57a5: $00
    rst $38                                       ; $57a6: $ff
    adc a                                         ; $57a7: $8f
    rst $38                                       ; $57a8: $ff
    ld a, e                                       ; $57a9: $7b
    rst $38                                       ; $57aa: $ff
    or $ff                                        ; $57ab: $f6 $ff
    nop                                           ; $57ad: $00
    rst $38                                       ; $57ae: $ff
    or $ff                                        ; $57af: $f6 $ff
    add l                                         ; $57b1: $85
    rst $38                                       ; $57b2: $ff
    or $ff                                        ; $57b3: $f6 $ff
    nop                                           ; $57b5: $00
    nop                                           ; $57b6: $00
    rst $38                                       ; $57b7: $ff
    or $ff                                        ; $57b8: $f6 $ff
    ld a, e                                       ; $57ba: $7b
    rst $38                                       ; $57bb: $ff
    or $ff                                        ; $57bc: $f6 $ff
    nop                                           ; $57be: $00
    rst $38                                       ; $57bf: $ff
    add l                                         ; $57c0: $85
    cp $00                                        ; $57c1: $fe $00
    nop                                           ; $57c3: $00
    nop                                           ; $57c4: $00
    rst $38                                       ; $57c5: $ff
    call c, $a0dd                                 ; $57c6: $dc $dd $a0
    sbc $df                                       ; $57c9: $de $df
    ldh [$e1], a                                  ; $57cb: $e0 $e1
    ld [c], a                                     ; $57cd: $e2
    di                                            ; $57ce: $f3
    db $e3                                        ; $57cf: $e3
    db $e4                                        ; $57d0: $e4
    or $ff                                        ; $57d1: $f6 $ff
    db $ec                                        ; $57d3: $ec
    pop af                                        ; $57d4: $f1
    push hl                                       ; $57d5: $e5
    and $e7                                       ; $57d6: $e6 $e7
    and b                                         ; $57d8: $a0
    ccf                                           ; $57d9: $3f
    add sp, -$17                                  ; $57da: $e8 $e9
    ld [$eceb], a                                 ; $57dc: $ea $eb $ec
    and b                                         ; $57df: $a0
    or $ff                                        ; $57e0: $f6 $ff
    db $ec                                        ; $57e2: $ec
    pop af                                        ; $57e3: $f1
    nop                                           ; $57e4: $00
    sbc c                                         ; $57e5: $99
    rst $38                                       ; $57e6: $ff
    or $fb                                        ; $57e7: $f6 $fb
    sbc c                                         ; $57e9: $99
    rst $38                                       ; $57ea: $ff
    or $fb                                        ; $57eb: $f6 $fb
    sbc c                                         ; $57ed: $99
    rst $38                                       ; $57ee: $ff
    nop                                           ; $57ef: $00
    rst $38                                       ; $57f0: $ff
    sbc c                                         ; $57f1: $99
    rst $38                                       ; $57f2: $ff
    nop                                           ; $57f3: $00
    rst $38                                       ; $57f4: $ff
    nop                                           ; $57f5: $00
    adc a                                         ; $57f6: $8f
    rst $38                                       ; $57f7: $ff
    nop                                           ; $57f8: $00
    rst $38                                       ; $57f9: $ff
    or $ff                                        ; $57fa: $f6 $ff
    nop                                           ; $57fc: $00
    rst $38                                       ; $57fd: $ff
    or $ff                                        ; $57fe: $f6 $ff
    nop                                           ; $5800: $00
    rst $38                                       ; $5801: $ff
    or $ff                                        ; $5802: $f6 $ff
    nop                                           ; $5804: $00
    rst $38                                       ; $5805: $ff
    ret nc                                        ; $5806: $d0

    or $ff                                        ; $5807: $f6 $ff
    nop                                           ; $5809: $00
    rst $38                                       ; $580a: $ff
    or $ff                                        ; $580b: $f6 $ff
    nop                                           ; $580d: $00
    rst $38                                       ; $580e: $ff
    and b                                         ; $580f: $a0
    rst $38                                       ; $5810: $ff
    ldh [$d0], a                                  ; $5811: $e0 $d0
    pop de                                        ; $5813: $d1
    db $e3                                        ; $5814: $e3
    and b                                         ; $5815: $a0
    db $e4                                        ; $5816: $e4
    ld hl, sp-$20                                 ; $5817: $f8 $e0
    nop                                           ; $5819: $00
    rst $38                                       ; $581a: $ff
    adc a                                         ; $581b: $8f
    ldh a, [$d6]                                  ; $581c: $f0 $d6
    rst $10                                       ; $581e: $d7
    and b                                         ; $581f: $a0
    rra                                           ; $5820: $1f
    and b                                         ; $5821: $a0
    jp nc, $a0d3                                  ; $5822: $d2 $d3 $a0

    and b                                         ; $5825: $a0
    ld hl, sp-$1f                                 ; $5826: $f8 $e1
    nop                                           ; $5828: $00
    rst $38                                       ; $5829: $ff
    ld a, [bc]                                    ; $582a: $0a
    add sp, -$04                                  ; $582b: $e8 $fc
    add a                                         ; $582d: $87
    pop hl                                        ; $582e: $e1
    jp $d8e0                                      ; $582f: $c3 $e0 $d8


    reti                                          ; $5832: $d9


    db $ed                                        ; $5833: $ed
    xor $d4                                       ; $5834: $ee $d4
    push de                                       ; $5836: $d5
    add c                                         ; $5837: $81
    rst $28                                       ; $5838: $ef
    ld hl, sp-$20                                 ; $5839: $f8 $e0
    halt                                          ; $583b: $76
    ldh [rP1], a                                  ; $583c: $e0 $00
    rst $38                                       ; $583e: $ff
    ld a, [bc]                                    ; $583f: $0a
    rst $20                                       ; $5840: $e7
    ld c, d                                       ; $5841: $4a
    pop hl                                        ; $5842: $e1
    set 4, b                                      ; $5843: $cb $e0
    jp c, $db3f                                   ; $5845: $da $3f $db

    ldh a, [$f1]                                  ; $5848: $f0 $f1
    ld a, [c]                                     ; $584a: $f2
    di                                            ; $584b: $f3
    db $f4                                        ; $584c: $f4
    ld hl, sp-$20                                 ; $584d: $f8 $e0
    halt                                          ; $584f: $76
    ldh [$f8], a                                  ; $5850: $e0 $f8
    nop                                           ; $5852: $00
    rst $38                                       ; $5853: $ff
    ld a, [bc]                                    ; $5854: $0a
    add sp, $4a                                   ; $5855: $e8 $4a
    ldh [$da], a                                  ; $5857: $e0 $da
    db $db                                        ; $5859: $db
    and b                                         ; $585a: $a0
    and b                                         ; $585b: $a0
    sbc a                                         ; $585c: $9f
    ld a, a                                       ; $585d: $7f
    and d                                         ; $585e: $a2
    sbc l                                         ; $585f: $9d
    sbc a                                         ; $5860: $9f
    and b                                         ; $5861: $a0
    and b                                         ; $5862: $a0
    push af                                       ; $5863: $f5
    or $7e                                        ; $5864: $f6 $7e
    pop hl                                        ; $5866: $e1
    ld hl, sp+$00                                 ; $5867: $f8 $00
    rst $38                                       ; $5869: $ff
    adc a                                         ; $586a: $8f
    add $4a                                       ; $586b: $c6 $4a
    db $e3                                        ; $586d: $e3
    sbc $df                                       ; $586e: $de $df
    sbc a                                         ; $5870: $9f
    sbc h                                         ; $5871: $9c
    ld b, [hl]                                    ; $5872: $46
    scf                                           ; $5873: $37
    ld b, [hl]                                    ; $5874: $46
    sbc h                                         ; $5875: $9c
    sbc l                                         ; $5876: $9d
    cp l                                          ; $5877: $bd
    pop hl                                        ; $5878: $e1
    jp c, Jump_000_00db                           ; $5879: $da $db $00

    rst $38                                       ; $587c: $ff
    ld a, [bc]                                    ; $587d: $0a
    add $fd                                       ; $587e: $c6 $fd
    and b                                         ; $5880: $a0
    ld c, d                                       ; $5881: $4a
    ld [c], a                                     ; $5882: $e2
    sbc a                                         ; $5883: $9f
    sbc l                                         ; $5884: $9d
    sbc l                                         ; $5885: $9d
    sbc h                                         ; $5886: $9c
    or d                                          ; $5887: $b2
    ld b, [hl]                                    ; $5888: $46
    add [hl]                                      ; $5889: $86
    cp $e0                                        ; $588a: $fe $e0
    or d                                          ; $588c: $b2
    sbc h                                         ; $588d: $9c
    ld a, h                                       ; $588e: $7c
    ld [c], a                                     ; $588f: $e2
    nop                                           ; $5890: $00
    rst $38                                       ; $5891: $ff
    ld a, [bc]                                    ; $5892: $0a
    add $4f                                       ; $5893: $c6 $4f
    ldh [$a0], a                                  ; $5895: $e0 $a0
    db $fc                                        ; $5897: $fc
    add h                                         ; $5898: $84
    pop hl                                        ; $5899: $e1
    pop bc                                        ; $589a: $c1
    ldh [$79], a                                  ; $589b: $e0 $79
    ld a, d                                       ; $589d: $7a
    ld a, e                                       ; $589e: $7b
    ld a, h                                       ; $589f: $7c
    ld a, l                                       ; $58a0: $7d
    sbc h                                         ; $58a1: $9c
    pop bc                                        ; $58a2: $c1
    sbc a                                         ; $58a3: $9f
    nop                                           ; $58a4: $00
    rst $38                                       ; $58a5: $ff
    ld a, [bc]                                    ; $58a6: $0a
    set 0, c                                      ; $58a7: $cb $c1
    ldh [$c6], a                                  ; $58a9: $e0 $c6
    ldh [rIE], a                                  ; $58ab: $e0 $ff
    ldh [$8f], a                                  ; $58ad: $e0 $8f
    ld b, l                                       ; $58af: $45
    sbc a                                         ; $58b0: $9f
    ld b, l                                       ; $58b1: $45
    ld b, [hl]                                    ; $58b2: $46
    add c                                         ; $58b3: $81
    ld b, [hl]                                    ; $58b4: $46
    and c                                         ; $58b5: $a1
    nop                                           ; $58b6: $00
    rst $38                                       ; $58b7: $ff
    adc a                                         ; $58b8: $8f
    xor c                                         ; $58b9: $a9
    sub $fd                                       ; $58ba: $d6 $fd
    rst $10                                       ; $58bc: $d7
    pop bc                                        ; $58bd: $c1
    ldh [$7e], a                                  ; $58be: $e0 $7e
    ld c, b                                       ; $58c0: $48
    ld c, [hl]                                    ; $58c1: $4e
    ld c, b                                       ; $58c2: $48
    ld b, l                                       ; $58c3: $45
    ld b, [hl]                                    ; $58c4: $46
    ld a, a                                       ; $58c5: $7f
    ld b, l                                       ; $58c6: $45
    ld [hl], $36                                  ; $58c7: $36 $36
    ld b, l                                       ; $58c9: $45
    add c                                         ; $58ca: $81
    or d                                          ; $58cb: $b2
    sbc [hl]                                      ; $58cc: $9e
    nop                                           ; $58cd: $00
    rst $38                                       ; $58ce: $ff
    cp $00                                        ; $58cf: $fe $00
    jp hl                                         ; $58d1: $e9


    ret c                                         ; $58d2: $d8

    reti                                          ; $58d3: $d9


    and c                                         ; $58d4: $a1
    ld b, [hl]                                    ; $58d5: $46
    add b                                         ; $58d6: $80
    ld d, c                                       ; $58d7: $51
    ld e, [hl]                                    ; $58d8: $5e
    cp a                                          ; $58d9: $bf
    ld d, h                                       ; $58da: $54
    ld e, c                                       ; $58db: $59
    dec hl                                        ; $58dc: $2b
    dec hl                                        ; $58dd: $2b
    jr c, jr_06b_5915                             ; $58de: $38 $35

    ret nz                                        ; $58e0: $c0

    ldh [rDMA], a                                 ; $58e1: $e0 $46
    ld sp, hl                                     ; $58e3: $f9
    sbc [hl]                                      ; $58e4: $9e
    nop                                           ; $58e5: $00
    rst $18                                       ; $58e6: $df
    ld a, [bc]                                    ; $58e7: $0a
    xor c                                         ; $58e8: $a9
    jp c, $9edb                                   ; $58e9: $da $db $9e

    or d                                          ; $58ec: $b2
    add b                                         ; $58ed: $80
    rst $38                                       ; $58ee: $ff
    ld b, l                                       ; $58ef: $45
    ld e, e                                       ; $58f0: $5b
    ld a, [hl+]                                   ; $58f1: $2a
    jr nz, jr_06b_5914                            ; $58f2: $20 $20

    daa                                           ; $58f4: $27
    scf                                           ; $58f5: $37
    ld b, c                                       ; $58f6: $41
    sbc a                                         ; $58f7: $9f
    ld b, l                                       ; $58f8: $45
    add e                                         ; $58f9: $83
    add h                                         ; $58fa: $84
    or d                                          ; $58fb: $b2
    sbc [hl]                                      ; $58fc: $9e
    nop                                           ; $58fd: $00
    rst $38                                       ; $58fe: $ff
    ld a, [bc]                                    ; $58ff: $0a
    xor e                                         ; $5900: $ab
    sbc [hl]                                      ; $5901: $9e
    cp $80                                        ; $5902: $fe $80
    ldh [rRP], a                                  ; $5904: $e0 $56
    ld a, [hl+]                                   ; $5906: $2a
    inc l                                         ; $5907: $2c
    inc l                                         ; $5908: $2c
    ld a, [hl+]                                   ; $5909: $2a
    ld b, a                                       ; $590a: $47
    ld e, d                                       ; $590b: $5a
    sbc a                                         ; $590c: $9f
    add e                                         ; $590d: $83
    add [hl]                                      ; $590e: $86
    add l                                         ; $590f: $85
    sbc h                                         ; $5910: $9c
    sbc a                                         ; $5911: $9f
    nop                                           ; $5912: $00
    rst $38                                       ; $5913: $ff

jr_06b_5914:
    nop                                           ; $5914: $00

jr_06b_5915:
    db $eb                                        ; $5915: $eb
    sbc [hl]                                      ; $5916: $9e
    rst $38                                       ; $5917: $ff
    or d                                          ; $5918: $b2
    add d                                         ; $5919: $82
    add e                                         ; $591a: $83
    ld d, d                                       ; $591b: $52
    ld c, c                                       ; $591c: $49
    ld b, e                                       ; $591d: $43
    ld c, [hl]                                    ; $591e: $4e
    ld c, c                                       ; $591f: $49
    rst $00                                       ; $5920: $c7
    ld h, b                                       ; $5921: $60
    ld d, l                                       ; $5922: $55
    adc d                                         ; $5923: $8a

Jump_06b_5924:
    pop bc                                        ; $5924: $c1
    ldh [rP1], a                                  ; $5925: $e0 $00
    rst $18                                       ; $5927: $df
    nop                                           ; $5928: $00
    db $ec                                        ; $5929: $ec
    sbc [hl]                                      ; $592a: $9e
    ld b, [hl]                                    ; $592b: $46
    rst $38                                       ; $592c: $ff
    add l                                         ; $592d: $85
    add [hl]                                      ; $592e: $86
    add e                                         ; $592f: $83
    ld e, e                                       ; $5930: $5b
    ld b, l                                       ; $5931: $45
    ld d, e                                       ; $5932: $53
    ld e, c                                       ; $5933: $59
    ld d, e                                       ; $5934: $53
    ldh a, [rSCY]                                 ; $5935: $f0 $42
    pop hl                                        ; $5937: $e1
    ld a, [hl]                                    ; $5938: $7e
    and c                                         ; $5939: $a1
    nop                                           ; $593a: $00
    rst $38                                       ; $593b: $ff
    nop                                           ; $593c: $00
    jp hl                                         ; $593d: $e9


    sbc a                                         ; $593e: $9f
    sbc h                                         ; $593f: $9c
    or d                                          ; $5940: $b2
    add l                                         ; $5941: $85
    rst $38                                       ; $5942: $ff
    adc e                                         ; $5943: $8b
    ld b, [hl]                                    ; $5944: $46
    ld b, [hl]                                    ; $5945: $46
    ld b, [hl]                                    ; $5946: $46
    add e                                         ; $5947: $83
    adc c                                         ; $5948: $89
    add [hl]                                      ; $5949: $86
    add l                                         ; $594a: $85
    ld b, e                                       ; $594b: $43
    or d                                          ; $594c: $b2
    and c                                         ; $594d: $a1
    ld a, [hl-]                                   ; $594e: $3a
    add d                                         ; $594f: $82
    nop                                           ; $5950: $00
    rst $38                                       ; $5951: $ff
    nop                                           ; $5952: $00
    srl [hl]                                      ; $5953: $cb $3e
    ldh [rDMA], a                                 ; $5955: $e0 $46
    inc b                                         ; $5957: $04
    ldh [$c1], a                                  ; $5958: $e0 $c1
    ld b, [hl]                                    ; $595a: $46
    add c                                         ; $595b: $81
    and d                                         ; $595c: $a2
    ld a, [hl-]                                   ; $595d: $3a
    add b                                         ; $595e: $80
    nop                                           ; $595f: $00
    rst $38                                       ; $5960: $ff
    adc a                                         ; $5961: $8f
    ld h, [hl]                                    ; $5962: $66
    call z, $a060                                 ; $5963: $cc $60 $a0
    sbc [hl]                                      ; $5966: $9e
    rst $38                                       ; $5967: $ff
    or d                                          ; $5968: $b2
    add l                                         ; $5969: $85
    add a                                         ; $596a: $87
    adc b                                         ; $596b: $88
    add a                                         ; $596c: $87
    add l                                         ; $596d: $85
    or d                                          ; $596e: $b2
    sbc h                                         ; $596f: $9c
    ret nz                                        ; $5970: $c0

    cp [hl]                                       ; $5971: $be
    add b                                         ; $5972: $80
    ld a, [hl-]                                   ; $5973: $3a
    add d                                         ; $5974: $82
    nop                                           ; $5975: $00
    rst $38                                       ; $5976: $ff
    ld a, [bc]                                    ; $5977: $0a
    ld h, d                                       ; $5978: $62
    sub d                                         ; $5979: $92
    add c                                         ; $597a: $81
    call z, $a161                                 ; $597b: $cc $61 $a1
    or d                                          ; $597e: $b2
    nop                                           ; $597f: $00
    ld b, c                                       ; $5980: $41
    ldh [$83], a                                  ; $5981: $e0 $83
    db $e3                                        ; $5983: $e3
    ldh a, [$83]                                  ; $5984: $f0 $83
    nop                                           ; $5986: $00
    rst $38                                       ; $5987: $ff
    ld a, [bc]                                    ; $5988: $0a
    ld h, c                                       ; $5989: $61
    ld c, l                                       ; $598a: $4d
    ld h, b                                       ; $598b: $60
    call z, $8562                                 ; $598c: $cc $62 $85
    add c                                         ; $598f: $81
    rlca                                          ; $5990: $07
    ld b, [hl]                                    ; $5991: $46
    ld b, [hl]                                    ; $5992: $46
    xor [hl]                                      ; $5993: $ae
    call nz, $82c0                                ; $5994: $c4 $c0 $82
    ld h, d                                       ; $5997: $62
    ld [hl], $60                                  ; $5998: $36 $60
    nop                                           ; $599a: $00
    rst $38                                       ; $599b: $ff
    add l                                         ; $599c: $85
    ld h, h                                       ; $599d: $64
    jp c, $62cc                                   ; $599e: $da $cc $62

    sbc [hl]                                      ; $59a1: $9e
    add c                                         ; $59a2: $81
    pop hl                                        ; $59a3: $e1
    or d                                          ; $59a4: $b2
    xor a                                         ; $59a5: $af
    ret nz                                        ; $59a6: $c0

Call_06b_59a7:
    pop hl                                        ; $59a7: $e1
    ret c                                         ; $59a8: $d8

    reti                                          ; $59a9: $d9


    inc c                                         ; $59aa: $0c
    nop                                           ; $59ab: $00
    ld e, a                                       ; $59ac: $5f
    adc a                                         ; $59ad: $8f
    ld b, a                                       ; $59ae: $47
    sub $d7                                       ; $59af: $d6 $d7
    add d                                         ; $59b1: $82
    add c                                         ; $59b2: $81
    ld bc, $42e0                                  ; $59b3: $01 $e0 $42
    pop hl                                        ; $59b6: $e1
    ld b, l                                       ; $59b7: $45
    add b                                         ; $59b8: $80
    rrca                                          ; $59b9: $0f
    sub $d7                                       ; $59ba: $d6 $d7
    jp c, Jump_000_00db                           ; $59bc: $da $db $00

    ld e, a                                       ; $59bf: $5f
    inc d                                         ; $59c0: $14
    ld b, a                                       ; $59c1: $47
    inc d                                         ; $59c2: $14
    ld h, d                                       ; $59c3: $62
    add c                                         ; $59c4: $81
    pop bc                                        ; $59c5: $c1
    add $02                                       ; $59c6: $c6 $02
    db $e4                                        ; $59c8: $e4
    ret c                                         ; $59c9: $d8

    reti                                          ; $59ca: $d9


    nop                                           ; $59cb: $00
    ld e, a                                       ; $59cc: $5f
    nop                                           ; $59cd: $00
    jp hl                                         ; $59ce: $e9


    ld c, c                                       ; $59cf: $49
    ld h, b                                       ; $59d0: $60
    db $e3                                        ; $59d1: $e3
    db $e4                                        ; $59d2: $e4
    ld c, $c1                                     ; $59d3: $0e $c1
    db $e3                                        ; $59d5: $e3
    ld b, [hl]                                    ; $59d6: $46
    ld b, [hl]                                    ; $59d7: $46
    and c                                         ; $59d8: $a1
    add d                                         ; $59d9: $82
    pop hl                                        ; $59da: $e1

Jump_06b_59db:
    nop                                           ; $59db: $00
    ld e, a                                       ; $59dc: $5f
    add l                                         ; $59dd: $85
    ld c, l                                       ; $59de: $4d
    jp nz, Jump_06b_42a0                          ; $59df: $c2 $a0 $42

    add d                                         ; $59e2: $82
    jp $869e                                      ; $59e3: $c3 $9e $86


    ld b, c                                       ; $59e6: $41
    nop                                           ; $59e7: $00
    ccf                                           ; $59e8: $3f
    nop                                           ; $59e9: $00
    db $eb                                        ; $59ea: $eb
    pop bc                                        ; $59eb: $c1
    ld [c], a                                     ; $59ec: $e2
    xor [hl]                                      ; $59ed: $ae
    ld b, c                                       ; $59ee: $41
    ret nz                                        ; $59ef: $c0

    pop bc                                        ; $59f0: $c1
    or d                                          ; $59f1: $b2
    ld [$fc81], sp                                ; $59f2: $08 $81 $fc
    ld hl, $ff00                                  ; $59f5: $21 $00 $ff
    adc a                                         ; $59f8: $8f
    daa                                           ; $59f9: $27
    inc d                                         ; $59fa: $14
    ld b, b                                       ; $59fb: $40
    and c                                         ; $59fc: $a1
    or d                                          ; $59fd: $b2
    add c                                         ; $59fe: $81
    or d                                          ; $59ff: $b2
    add [hl]                                      ; $5a00: $86
    ret nz                                        ; $5a01: $c0

    rlca                                          ; $5a02: $07
    ld h, b                                       ; $5a03: $60
    add d                                         ; $5a04: $82
    jp $ff00                                      ; $5a05: $c3 $00 $ff


    inc d                                         ; $5a08: $14
    daa                                           ; $5a09: $27
    sub d                                         ; $5a0a: $92
    pop bc                                        ; $5a0b: $c1
    sbc a                                         ; $5a0c: $9f
    ld a, a                                       ; $5a0d: $7f
    sbc h                                         ; $5a0e: $9c
    ld b, l                                       ; $5a0f: $45
    ld b, e                                       ; $5a10: $43
    or d                                          ; $5a11: $b2
    or d                                          ; $5a12: $b2
    ld b, e                                       ; $5a13: $43
    ld b, e                                       ; $5a14: $43
    ei                                            ; $5a15: $fb
    ldh [$e0], a                                  ; $5a16: $e0 $e0
    add [hl]                                      ; $5a18: $86
    add d                                         ; $5a19: $82
    nop                                           ; $5a1a: $00
    rst $38                                       ; $5a1b: $ff
    add l                                         ; $5a1c: $85
    and l                                         ; $5a1d: $a5
    add d                                         ; $5a1e: $82
    ld [c], a                                     ; $5a1f: $e2
    push bc                                       ; $5a20: $c5
    add b                                         ; $5a21: $80
    ld [hl], $3b                                  ; $5a22: $36 $3b
    dec [hl]                                      ; $5a24: $35
    dec c                                         ; $5a25: $0d
    dec sp                                        ; $5a26: $3b
    db $fd                                        ; $5a27: $fd
    ldh [$36], a                                  ; $5a28: $e0 $36
    or d                                          ; $5a2a: $b2
    add a                                         ; $5a2b: $87
    ld h, d                                       ; $5a2c: $62
    nop                                           ; $5a2d: $00
    rst $38                                       ; $5a2e: $ff
    add l                                         ; $5a2f: $85
    and [hl]                                      ; $5a30: $a6
    sla c                                         ; $5a31: $cb $21
    cp a                                          ; $5a33: $bf
    sbc [hl]                                      ; $5a34: $9e
    or d                                          ; $5a35: $b2

jr_06b_5a36:
    ld b, h                                       ; $5a36: $44
    inc a                                         ; $5a37: $3c
    and h                                         ; $5a38: $a4
    ld h, h                                       ; $5a39: $64
    rst $38                                       ; $5a3a: $ff
    ldh [$a5], a                                  ; $5a3b: $e0 $a5
    db $e3                                        ; $5a3d: $e3
    inc a                                         ; $5a3e: $3c
    ld b, h                                       ; $5a3f: $44
    ld b, l                                       ; $5a40: $45
    add b                                         ; $5a41: $80
    nop                                           ; $5a42: $00
    rst $38                                       ; $5a43: $ff
    add l                                         ; $5a44: $85
    ld l, l                                       ; $5a45: $6d
    or d                                          ; $5a46: $b2
    ld b, d                                       ; $5a47: $42
    dec [hl]                                      ; $5a48: $35
    rst $38                                       ; $5a49: $ff
    ld l, c                                       ; $5a4a: $69
    and e                                         ; $5a4b: $a3
    dec [hl]                                      ; $5a4c: $35
    dec [hl]                                      ; $5a4d: $35
    and e                                         ; $5a4e: $a3
    ld l, d                                       ; $5a4f: $6a
    dec [hl]                                      ; $5a50: $35
    ld b, d                                       ; $5a51: $42
    jr nz, jr_06b_5a59                            ; $5a52: $20 $05

    add b                                         ; $5a54: $80
    nop                                           ; $5a55: $00
    rst $38                                       ; $5a56: $ff
    ld a, e                                       ; $5a57: $7b
    add hl, bc                                    ; $5a58: $09

jr_06b_5a59:
    ld d, d                                       ; $5a59: $52
    nop                                           ; $5a5a: $00
    ret nz                                        ; $5a5b: $c0

    ld [c], a                                     ; $5a5c: $e2
    dec [hl]                                      ; $5a5d: $35
    rst $38                                       ; $5a5e: $ff
    ldh [$c0], a                                  ; $5a5f: $e0 $c0
    db $e3                                        ; $5a61: $e3
    ld l, b                                       ; $5a62: $68
    nop                                           ; $5a63: $00
    rst $38                                       ; $5a64: $ff
    nop                                           ; $5a65: $00
    jp hl                                         ; $5a66: $e9


    ld d, d                                       ; $5a67: $52
    nop                                           ; $5a68: $00
    and c                                         ; $5a69: $a1
    ld b, b                                       ; $5a6a: $40
    ldh [rOCPD], a                                ; $5a6b: $e0 $6b
    ld [hl], c                                    ; $5a6d: $71
    rst $38                                       ; $5a6e: $ff
    ldh [rSB], a                                  ; $5a6f: $e0 $01
    ld l, l                                       ; $5a71: $6d
    ld b, b                                       ; $5a72: $40
    ldh [$c5], a                                  ; $5a73: $e0 $c5
    ld h, b                                       ; $5a75: $60
    nop                                           ; $5a76: $00
    rst $38                                       ; $5a77: $ff
    add l                                         ; $5a78: $85
    add [hl]                                      ; $5a79: $86
    add [hl]                                      ; $5a7a: $86
    add h                                         ; $5a7b: $84
    ret nz                                        ; $5a7c: $c0

    rst $00                                       ; $5a7d: $c7
    ld b, [hl]                                    ; $5a7e: $46
    jr nz, jr_06b_5a81                            ; $5a7f: $20 $00

jr_06b_5a81:
    nop                                           ; $5a81: $00
    rst $38                                       ; $5a82: $ff
    add l                                         ; $5a83: $85
    and a                                         ; $5a84: $a7
    ld d, d                                       ; $5a85: $52
    inc bc                                        ; $5a86: $03
    add d                                         ; $5a87: $82
    and c                                         ; $5a88: $a1
    ld b, c                                       ; $5a89: $41
    ret nz                                        ; $5a8a: $c0

    ei                                            ; $5a8b: $fb
    and b                                         ; $5a8c: $a0
    rlca                                          ; $5a8d: $07
    ld hl, $ff00                                  ; $5a8e: $21 $00 $ff
    jr jr_06b_5a36                                ; $5a91: $18 $a3

    and $58                                       ; $5a93: $e6 $58
    nop                                           ; $5a95: $00
    inc d                                         ; $5a96: $14
    add b                                         ; $5a97: $80
    push af                                       ; $5a98: $f5
    or $c6                                        ; $5a99: $f6 $c6
    ld [bc], a                                    ; $5a9b: $02
    add a                                         ; $5a9c: $87
    ld h, b                                       ; $5a9d: $60
    ld b, h                                       ; $5a9e: $44
    nop                                           ; $5a9f: $00
    nop                                           ; $5aa0: $00
    nop                                           ; $5aa1: $00
    cp a                                          ; $5aa2: $bf
    nop                                           ; $5aa3: $00
    adc $01                                       ; $5aa4: $ce $01
    inc hl                                        ; $5aa6: $23
    ld c, d                                       ; $5aa7: $4a
    ld [bc], a                                    ; $5aa8: $02
    ldh a, [$e3]                                  ; $5aa9: $f0 $e3
    nop                                           ; $5aab: $00
    rst $38                                       ; $5aac: $ff
    nop                                           ; $5aad: $00
    rst $00                                       ; $5aae: $c7
    sub [hl]                                      ; $5aaf: $96
    ld b, d                                       ; $5ab0: $42
    inc c                                         ; $5ab1: $0c
    inc c                                         ; $5ab2: $0c
    ld [c], a                                     ; $5ab3: $e2
    ld hl, sp+$61                                 ; $5ab4: $f8 $61
    ret nc                                        ; $5ab6: $d0

    pop de                                        ; $5ab7: $d1
    ldh a, [$a0]                                  ; $5ab8: $f0 $a0
    add l                                         ; $5aba: $85
    ld [hl], e                                    ; $5abb: $73
    nop                                           ; $5abc: $00
    or [hl]                                       ; $5abd: $b6
    inc b                                         ; $5abe: $04
    ld h, c                                       ; $5abf: $61
    nop                                           ; $5ac0: $00
    db $fc                                        ; $5ac1: $fc
    ld h, c                                       ; $5ac2: $61
    ld hl, sp+$61                                 ; $5ac3: $f8 $61
    ld hl, sp+$40                                 ; $5ac5: $f8 $40
    add l                                         ; $5ac7: $85
    push af                                       ; $5ac8: $f5
    nop                                           ; $5ac9: $00
    sub h                                         ; $5aca: $94
    ld a, [hl]                                    ; $5acb: $7e
    jp nz, $c10c                                  ; $5acc: $c2 $0c $c1

    ld [$00c0], sp                                ; $5acf: $08 $c0 $00
    ld [hl], d                                    ; $5ad2: $72
    jp nz, $f585                                  ; $5ad3: $c2 $85 $f5

    nop                                           ; $5ad6: $00
    ld d, h                                       ; $5ad7: $54
    ld a, [hl]                                    ; $5ad8: $7e
    jp nz, Jump_000_24ec                          ; $5ad9: $c2 $ec $24

    ld [hl], d                                    ; $5adc: $72
    jp nz, $f585                                  ; $5add: $c2 $85 $f5

    nop                                           ; $5ae0: $00
    ld [hl], $00                                  ; $5ae1: $36 $00
    sub h                                         ; $5ae3: $94
    ld b, c                                       ; $5ae4: $41
    or $ed                                        ; $5ae5: $f6 $ed
    nop                                           ; $5ae7: $00
    rst $38                                       ; $5ae8: $ff
    or $ff                                        ; $5ae9: $f6 $ff
    nop                                           ; $5aeb: $00
    rst $38                                       ; $5aec: $ff
    or $ff                                        ; $5aed: $f6 $ff
    nop                                           ; $5aef: $00
    rst $38                                       ; $5af0: $ff
    or $ff                                        ; $5af1: $f6 $ff
    nop                                           ; $5af3: $00
    nop                                           ; $5af4: $00
    ccf                                           ; $5af5: $3f
    or $ff                                        ; $5af6: $f6 $ff
    nop                                           ; $5af8: $00
    rst $38                                       ; $5af9: $ff
    or $ff                                        ; $5afa: $f6 $ff
    nop                                           ; $5afc: $00
    rst $38                                       ; $5afd: $ff
    or $ff                                        ; $5afe: $f6 $ff
    sbc c                                         ; $5b00: $99
    rst $38                                       ; $5b01: $ff
    nop                                           ; $5b02: $00
    rst $38                                       ; $5b03: $ff
    nop                                           ; $5b04: $00
    sbc c                                         ; $5b05: $99
    rst $38                                       ; $5b06: $ff
    nop                                           ; $5b07: $00
    rst $38                                       ; $5b08: $ff
    adc a                                         ; $5b09: $8f
    rst $38                                       ; $5b0a: $ff
    nop                                           ; $5b0b: $00
    rst $38                                       ; $5b0c: $ff
    or $ff                                        ; $5b0d: $f6 $ff
    nop                                           ; $5b0f: $00
    rst $28                                       ; $5b10: $ef
    nop                                           ; $5b11: $00
    nop                                           ; $5b12: $00
    nop                                           ; $5b13: $00
    pop bc                                        ; $5b14: $c1
    nop                                           ; $5b15: $00
    rst $38                                       ; $5b16: $ff
    rst $38                                       ; $5b17: $ff
    rst $38                                       ; $5b18: $ff
    rst $38                                       ; $5b19: $ff
    rst $38                                       ; $5b1a: $ff
    rst $38                                       ; $5b1b: $ff
    rst $38                                       ; $5b1c: $ff
    rst $38                                       ; $5b1d: $ff
    rst $38                                       ; $5b1e: $ff
    rst $38                                       ; $5b1f: $ff
    nop                                           ; $5b20: $00
    nop                                           ; $5b21: $00
    dec c                                         ; $5b22: $0d
    add b                                         ; $5b23: $80
    cp $e0                                        ; $5b24: $fe $e0
    nop                                           ; $5b26: $00
    ld b, b                                       ; $5b27: $40
    ret c                                         ; $5b28: $d8

    push hl                                       ; $5b29: $e5
    rst $30                                       ; $5b2a: $f7
    and $ff                                       ; $5b2b: $e6 $ff
    rst $38                                       ; $5b2d: $ff
    rst $38                                       ; $5b2e: $ff
    rst $30                                       ; $5b2f: $f7
    nop                                           ; $5b30: $00
    nop                                           ; $5b31: $00
    nop                                           ; $5b32: $00
    ld bc, $2100                                  ; $5b33: $01 $00 $21
    ld [de], a                                    ; $5b36: $12
    ld bc, $2301                                  ; $5b37: $01 $01 $23
    ld [de], a                                    ; $5b3a: $12
    ld bc, $2502                                  ; $5b3b: $01 $02 $25
    ld [de], a                                    ; $5b3e: $12
    ld bc, $2603                                  ; $5b3f: $01 $03 $26
    ld [de], a                                    ; $5b42: $12
    ld bc, $2004                                  ; $5b43: $01 $04 $20
    inc de                                        ; $5b46: $13
    ld bc, $2205                                  ; $5b47: $01 $05 $22
    inc de                                        ; $5b4a: $13
    ld bc, $2806                                  ; $5b4b: $01 $06 $28
    dec d                                         ; $5b4e: $15
    ld bc, $1b07                                  ; $5b4f: $01 $07 $1b
    rla                                           ; $5b52: $17
    ld bc, $2808                                  ; $5b53: $01 $08 $28
    rla                                           ; $5b56: $17
    ld bc, $1b09                                  ; $5b57: $01 $09 $1b
    add hl, de                                    ; $5b5a: $19
    ld bc, $260a                                  ; $5b5b: $01 $0a $26
    ld a, [de]                                    ; $5b5e: $1a
    ld bc, $1c0b                                  ; $5b5f: $01 $0b $1c
    dec de                                        ; $5b62: $1b
    ld bc, $260c                                  ; $5b63: $01 $0c $26
    dec de                                        ; $5b66: $1b
    ld bc, $1d0d                                  ; $5b67: $01 $0d $1d
    inc e                                         ; $5b6a: $1c
    ld bc, $250e                                  ; $5b6b: $01 $0e $25
    inc e                                         ; $5b6e: $1c
    ld bc, $1d0f                                  ; $5b6f: $01 $0f $1d
    dec e                                         ; $5b72: $1d
    ld bc, $2310                                  ; $5b73: $01 $10 $23
    dec e                                         ; $5b76: $1d
    ld bc, $1d11                                  ; $5b77: $01 $11 $1d
    ld e, $01                                     ; $5b7a: $1e $01
    ld [de], a                                    ; $5b7c: $12
    ld [hl+], a                                   ; $5b7d: $22
    ld e, $01                                     ; $5b7e: $1e $01
    inc de                                        ; $5b80: $13
    ld [hl+], a                                   ; $5b81: $22
    rra                                           ; $5b82: $1f
    ld bc, $1c14                                  ; $5b83: $01 $14 $1c
    jr nz, jr_06b_5b89                            ; $5b86: $20 $01

    dec d                                         ; $5b88: $15

jr_06b_5b89:
    jr nz, jr_06b_5bab                            ; $5b89: $20 $20

    ld [bc], a                                    ; $5b8b: $02
    ld d, $21                                     ; $5b8c: $16 $21
    jr nz, jr_06b_5b91                            ; $5b8e: $20 $01

    rla                                           ; $5b90: $17

jr_06b_5b91:
    ld [hl+], a                                   ; $5b91: $22
    jr nz, @+$03                                  ; $5b92: $20 $01

    jr jr_06b_5bb2                                ; $5b94: $18 $1c

    ld hl, $1901                                  ; $5b96: $21 $01 $19
    jr nz, @+$23                                  ; $5b99: $20 $21

    ld bc, $211a                                  ; $5b9b: $01 $1a $21
    ld hl, $1b01                                  ; $5b9e: $21 $01 $1b
    inc e                                         ; $5ba1: $1c
    ld [hl+], a                                   ; $5ba2: $22
    ld bc, $201c                                  ; $5ba3: $01 $1c $20
    ld [hl+], a                                   ; $5ba6: $22
    ld bc, $1b1d                                  ; $5ba7: $01 $1d $1b
    inc hl                                        ; $5baa: $23

jr_06b_5bab:
    ld bc, $1a1e                                  ; $5bab: $01 $1e $1a
    inc h                                         ; $5bae: $24
    ld bc, $1b1f                                  ; $5baf: $01 $1f $1b

jr_06b_5bb2:
    inc h                                         ; $5bb2: $24
    ld bc, $2020                                  ; $5bb3: $01 $20 $20
    inc h                                         ; $5bb6: $24
    ld bc, $1921                                  ; $5bb7: $01 $21 $19
    dec h                                         ; $5bba: $25
    ld bc, $1a22                                  ; $5bbb: $01 $22 $1a
    dec h                                         ; $5bbe: $25
    ld bc, $1c23                                  ; $5bbf: $01 $23 $1c
    dec h                                         ; $5bc2: $25
    ld bc, $1f24                                  ; $5bc3: $01 $24 $1f
    dec h                                         ; $5bc6: $25
    ld bc, $2025                                  ; $5bc7: $01 $25 $20
    dec h                                         ; $5bca: $25
    ld bc, $1826                                  ; $5bcb: $01 $26 $18
    ld h, $01                                     ; $5bce: $26 $01
    daa                                           ; $5bd0: $27
    add hl, de                                    ; $5bd1: $19
    ld h, $01                                     ; $5bd2: $26 $01
    jr z, @+$1c                                   ; $5bd4: $28 $1a

    ld h, $02                                     ; $5bd6: $26 $02
    add hl, hl                                    ; $5bd8: $29
    dec de                                        ; $5bd9: $1b
    ld h, $01                                     ; $5bda: $26 $01
    ld a, [hl+]                                   ; $5bdc: $2a
    inc e                                         ; $5bdd: $1c
    ld h, $01                                     ; $5bde: $26 $01
    dec hl                                        ; $5be0: $2b
    ld e, $26                                     ; $5be1: $1e $26
    ld bc, $1f2c                                  ; $5be3: $01 $2c $1f
    ld h, $01                                     ; $5be6: $26 $01
    dec l                                         ; $5be8: $2d
    jr nz, @+$28                                  ; $5be9: $20 $26

    ld bc, $1a2e                                  ; $5beb: $01 $2e $1a
    daa                                           ; $5bee: $27
    ld bc, $1b2f                                  ; $5bef: $01 $2f $1b
    daa                                           ; $5bf2: $27
    ld bc, $1f30                                  ; $5bf3: $01 $30 $1f
    daa                                           ; $5bf6: $27
    ld bc, $2031                                  ; $5bf7: $01 $31 $20
    daa                                           ; $5bfa: $27
    ld bc, $1732                                  ; $5bfb: $01 $32 $17
    jr z, jr_06b_5c01                             ; $5bfe: $28 $01

    inc sp                                        ; $5c00: $33

jr_06b_5c01:
    jr nz, jr_06b_5c2b                            ; $5c01: $20 $28

    ld bc, $1634                                  ; $5c03: $01 $34 $16
    add hl, hl                                    ; $5c06: $29
    ld bc, $2135                                  ; $5c07: $01 $35 $21
    add hl, hl                                    ; $5c0a: $29
    ld bc, $1636                                  ; $5c0b: $01 $36 $16
    ld a, [hl+]                                   ; $5c0e: $2a
    ld bc, $2137                                  ; $5c0f: $01 $37 $21
    ld a, [hl+]                                   ; $5c12: $2a
    ld bc, $1638                                  ; $5c13: $01 $38 $16
    dec hl                                        ; $5c16: $2b
    ld bc, $2139                                  ; $5c17: $01 $39 $21
    dec hl                                        ; $5c1a: $2b
    ld bc, $163a                                  ; $5c1b: $01 $3a $16
    inc l                                         ; $5c1e: $2c
    ld bc, $213b                                  ; $5c1f: $01 $3b $21
    inc l                                         ; $5c22: $2c
    ld bc, $173c                                  ; $5c23: $01 $3c $17
    dec l                                         ; $5c26: $2d
    ld bc, $203d                                  ; $5c27: $01 $3d $20
    dec l                                         ; $5c2a: $2d

jr_06b_5c2b:
    ld bc, $183e                                  ; $5c2b: $01 $3e $18
    ld l, $01                                     ; $5c2e: $2e $01
    ccf                                           ; $5c30: $3f
    add hl, de                                    ; $5c31: $19
    ld l, $01                                     ; $5c32: $2e $01
    ld b, b                                       ; $5c34: $40
    ld a, [de]                                    ; $5c35: $1a
    ld l, $01                                     ; $5c36: $2e $01
    ld b, c                                       ; $5c38: $41
    dec e                                         ; $5c39: $1d
    ld l, $01                                     ; $5c3a: $2e $01
    ld b, d                                       ; $5c3c: $42
    ld e, $2e                                     ; $5c3d: $1e $2e
    ld bc, $1f43                                  ; $5c3f: $01 $43 $1f
    ld l, $01                                     ; $5c42: $2e $01
    ld b, h                                       ; $5c44: $44
    dec de                                        ; $5c45: $1b
    cpl                                           ; $5c46: $2f
    ld bc, $1c45                                  ; $5c47: $01 $45 $1c
    cpl                                           ; $5c4a: $2f
    rst $38                                       ; $5c4b: $ff
    rst $38                                       ; $5c4c: $ff
    rst $38                                       ; $5c4d: $ff
    ld d, [hl]                                    ; $5c4e: $56
    ld e, h                                       ; $5c4f: $5c
    add [hl]                                      ; $5c50: $86
    ld h, b                                       ; $5c51: $60
    rlca                                          ; $5c52: $07
    ld h, [hl]                                    ; $5c53: $66
    ld h, $66                                     ; $5c54: $26 $66
    cp a                                          ; $5c56: $bf
    ld c, $0e                                     ; $5c57: $0e $0e
    dec c                                         ; $5c59: $0d
    dec c                                         ; $5c5a: $0d
    dec c                                         ; $5c5b: $0d
    ld c, $ff                                     ; $5c5c: $0e $ff
    db $e3                                        ; $5c5e: $e3
    ld c, l                                       ; $5c5f: $4d
    rlca                                          ; $5c60: $07
    dec c                                         ; $5c61: $0d
    dec c                                         ; $5c62: $0d
    ld c, l                                       ; $5c63: $4d
    rst $38                                       ; $5c64: $ff
    ldh [$f0], a                                  ; $5c65: $e0 $f0
    pop hl                                        ; $5c67: $e1
    or $e0                                        ; $5c68: $f6 $e0
    add sp, -$19                                  ; $5c6a: $e8 $e7
    or $fb                                        ; $5c6c: $f6 $fb
    add hl, bc                                    ; $5c6e: $09
    ld c, $c1                                     ; $5c6f: $0e $c1
    db $e3                                        ; $5c71: $e3
    cp e                                          ; $5c72: $bb
    ldh [rKEY1], a                                ; $5c73: $e0 $4d
    pop bc                                        ; $5c75: $c1
    ldh [$c7], a                                  ; $5c76: $e0 $c7
    ld [c], a                                     ; $5c78: $e2
    ld a, [c]                                     ; $5c79: $f2
    db $e4                                        ; $5c7a: $e4
    ld [c], a                                     ; $5c7b: $e2
    and $38                                       ; $5c7c: $e6 $38
    or $fb                                        ; $5c7e: $f6 $fb
    sbc l                                         ; $5c80: $9d
    and $c0                                       ; $5c81: $e6 $c0
    pop hl                                        ; $5c83: $e1
    ld c, l                                       ; $5c84: $4d
    ld c, l                                       ; $5c85: $4d
    dec l                                         ; $5c86: $2d
    ld l, a                                       ; $5c87: $6f
    ldh [rPCM34], a                               ; $5c88: $e0 $77
    ld [c], a                                     ; $5c8a: $e2
    ld [hl], b                                    ; $5c8b: $70
    add l                                         ; $5c8c: $85
    db $e4                                        ; $5c8d: $e4
    or $e7                                        ; $5c8e: $f6 $e7
    ld [hl], c                                    ; $5c90: $71
    push af                                       ; $5c91: $f5
    ld a, a                                       ; $5c92: $7f
    db $e4                                        ; $5c93: $e4
    ld c, l                                       ; $5c94: $4d
    dec c                                         ; $5c95: $0d
    ld l, l                                       ; $5c96: $6d
    add $e2                                       ; $5c97: $c6 $e2
    add c                                         ; $5c99: $81
    dec l                                         ; $5c9a: $2d
    dec a                                         ; $5c9b: $3d
    push hl                                       ; $5c9c: $e5
    jr z, @-$1b                                   ; $5c9d: $28 $e3

    dec l                                         ; $5c9f: $2d
    ld [c], a                                     ; $5ca0: $e2
    ld a, e                                       ; $5ca1: $7b
    ld hl, sp-$6d                                 ; $5ca2: $f8 $93
    pop hl                                        ; $5ca4: $e1
    dec c                                         ; $5ca5: $0d
    db $e3                                        ; $5ca6: $e3
    ld l, l                                       ; $5ca7: $6d
    inc sp                                        ; $5ca8: $33
    dec c                                         ; $5ca9: $0d
    ld c, e                                       ; $5caa: $4b
    rst $38                                       ; $5cab: $ff
    ldh [rTMA], a                                 ; $5cac: $e0 $06
    ldh [$2d], a                                  ; $5cae: $e0 $2d
    dec c                                         ; $5cb0: $0d
    add e                                         ; $5cb1: $83
    ldh [$7f], a                                  ; $5cb2: $e0 $7f
    pop hl                                        ; $5cb4: $e1
    ldh [$f8], a                                  ; $5cb5: $e0 $f8
    db $e3                                        ; $5cb7: $e3
    ei                                            ; $5cb8: $fb
    db $e3                                        ; $5cb9: $e3
    ldh a, [$e2]                                  ; $5cba: $f0 $e2
    nop                                           ; $5cbc: $00
    ld a, [c]                                     ; $5cbd: $f2
    sub b                                         ; $5cbe: $90
    and $2b                                       ; $5cbf: $e6 $2b
    ld c, e                                       ; $5cc1: $4b
    dec bc                                        ; $5cc2: $0b
    inc b                                         ; $5cc3: $04
    db $fd                                        ; $5cc4: $fd
    ldh [$be], a                                  ; $5cc5: $e0 $be
    ldh [$2d], a                                  ; $5cc7: $e0 $2d
    call nc, $c0e2                                ; $5cc9: $d4 $e2 $c0
    db $e4                                        ; $5ccc: $e4
    and b                                         ; $5ccd: $a0
    push bc                                       ; $5cce: $c5
    nop                                           ; $5ccf: $00
    rst $30                                       ; $5cd0: $f7
    sub h                                         ; $5cd1: $94
    pop bc                                        ; $5cd2: $c1
    ld d, $8e                                     ; $5cd3: $16 $8e
    pop bc                                        ; $5cd5: $c1
    dec hl                                        ; $5cd6: $2b
    dec bc                                        ; $5cd7: $0b
    rst $38                                       ; $5cd8: $ff
    pop hl                                        ; $5cd9: $e1
    ld c, e                                       ; $5cda: $4b
    inc a                                         ; $5cdb: $3c
    add sp, -$78                                  ; $5cdc: $e8 $88
    ld [c], a                                     ; $5cde: $e2
    or e                                          ; $5cdf: $b3
    push hl                                       ; $5ce0: $e5
    nop                                           ; $5ce1: $00
    ld h, d                                       ; $5ce2: $62
    ret nz                                        ; $5ce3: $c0

    nop                                           ; $5ce4: $00
    di                                            ; $5ce5: $f3
    ld c, e                                       ; $5ce6: $4b
    jp nz, $e002                                  ; $5ce7: $c2 $02 $e0

    ret nz                                        ; $5cea: $c0

    db $e3                                        ; $5ceb: $e3
    ei                                            ; $5cec: $fb
    call nz, $c2b9                                ; $5ced: $c4 $b9 $c2
    xor [hl]                                      ; $5cf0: $ae
    jp $f3a0                                      ; $5cf1: $c3 $a0 $f3


    pop hl                                        ; $5cf4: $e1
    or e                                          ; $5cf5: $b3
    db $e4                                        ; $5cf6: $e4
    nop                                           ; $5cf7: $00
    di                                            ; $5cf8: $f3
    sub h                                         ; $5cf9: $94
    ret nz                                        ; $5cfa: $c0

    rst $08                                       ; $5cfb: $cf
    ldh [rWX], a                                  ; $5cfc: $e0 $4b
    add c                                         ; $5cfe: $81
    ld [c], a                                     ; $5cff: $e2
    dec hl                                        ; $5d00: $2b
    db $fc                                        ; $5d01: $fc
    add b                                         ; $5d02: $80
    push bc                                       ; $5d03: $c5
    cp b                                          ; $5d04: $b8
    pop bc                                        ; $5d05: $c1
    ld l, l                                       ; $5d06: $6d
    ld c, e                                       ; $5d07: $4b
    dec c                                         ; $5d08: $0d
    dec bc                                        ; $5d09: $0b
    dec c                                         ; $5d0a: $0d
    ld c, e                                       ; $5d0b: $4b

jr_06b_5d0c:
    ld b, b                                       ; $5d0c: $40
    ld l, h                                       ; $5d0d: $6c
    call nz, $f700                                ; $5d0e: $c4 $00 $f7
    ret nz                                        ; $5d11: $c0

    ld [$e040], a                                 ; $5d12: $ea $40 $e0
    cp d                                          ; $5d15: $ba
    ret nz                                        ; $5d16: $c0

    cp [hl]                                       ; $5d17: $be
    and c                                         ; $5d18: $a1
    ld c, l                                       ; $5d19: $4d
    ld l, a                                       ; $5d1a: $6f
    jp nz, Jump_06b_6c70                          ; $5d1b: $c2 $70 $6c

    jp nz, $e443                                  ; $5d1e: $c2 $43 $e4

    nop                                           ; $5d21: $00
    db $f4                                        ; $5d22: $f4
    sub c                                         ; $5d23: $91
    jp nz, $0d2d                                  ; $5d24: $c2 $2d $0d

    ld l, e                                       ; $5d27: $6b
    ld bc, $3ce2                                  ; $5d28: $01 $e2 $3c
    rst $38                                       ; $5d2b: $ff
    and $f7                                       ; $5d2c: $e6 $f7
    and d                                         ; $5d2e: $a2
    ld a, [bc]                                    ; $5d2f: $0a
    ld l, d                                       ; $5d30: $6a
    dec bc                                        ; $5d31: $0b
    ld a, [bc]                                    ; $5d32: $0a
    dec hl                                        ; $5d33: $2b
    jp nz, $c476                                  ; $5d34: $c2 $76 $c4

    ldh a, [rP1]                                  ; $5d37: $f0 $00
    or $0e                                        ; $5d39: $f6 $0e
    ldh [$c0], a                                  ; $5d3b: $e0 $c0
    push bc                                       ; $5d3d: $c5
    cp a                                          ; $5d3e: $bf
    add sp, $0a                                   ; $5d3f: $e8 $0a
    ld a, [bc]                                    ; $5d41: $0a
    ld a, [hl+]                                   ; $5d42: $2a
    ld a, [bc]                                    ; $5d43: $0a
    rra                                           ; $5d44: $1f
    ld a, [bc]                                    ; $5d45: $0a
    ld c, d                                       ; $5d46: $4a
    dec c                                         ; $5d47: $0d
    ld c, e                                       ; $5d48: $4b
    ld l, l                                       ; $5d49: $6d
    ld h, b                                       ; $5d4a: $60
    and c                                         ; $5d4b: $a1
    nop                                           ; $5d4c: $00
    or $ff                                        ; $5d4d: $f6 $ff
    add c                                         ; $5d4f: $81
    adc [hl]                                      ; $5d50: $8e
    adc b                                         ; $5d51: $88
    and b                                         ; $5d52: $a0
    ld l, e                                       ; $5d53: $6b
    dec bc                                        ; $5d54: $0b
    ld c, e                                       ; $5d55: $4b
    db $fd                                        ; $5d56: $fd
    ldh [$ef], a                                  ; $5d57: $e0 $ef
    add b                                         ; $5d59: $80
    ld a, a                                       ; $5d5a: $7f
    push hl                                       ; $5d5b: $e5
    ld c, e                                       ; $5d5c: $4b
    rst $38                                       ; $5d5d: $ff
    ld c, e                                       ; $5d5e: $4b
    ld a, [hl+]                                   ; $5d5f: $2a
    ld a, [bc]                                    ; $5d60: $0a
    dec bc                                        ; $5d61: $0b
    dec hl                                        ; $5d62: $2b
    ld a, [hl+]                                   ; $5d63: $2a
    ld a, [bc]                                    ; $5d64: $0a
    dec c                                         ; $5d65: $0d
    inc bc                                        ; $5d66: $03
    ld c, e                                       ; $5d67: $4b
    dec l                                         ; $5d68: $2d
    jr nz, jr_06b_5d0c                            ; $5d69: $20 $a1

    dec hl                                        ; $5d6b: $2b
    jp $f100                                      ; $5d6c: $c3 $00 $f1


    ccf                                           ; $5d6f: $3f
    db $e4                                        ; $5d70: $e4
    ld c, d                                       ; $5d71: $4a
    and $bb                                       ; $5d72: $e6 $bb
    db $e3                                        ; $5d74: $e3
    ld a, $b0                                     ; $5d75: $3e $b0
    and b                                         ; $5d77: $a0
    dec hl                                        ; $5d78: $2b
    ld l, e                                       ; $5d79: $6b
    ld l, e                                       ; $5d7a: $6b
    dec hl                                        ; $5d7b: $2b
    ld a, [bc]                                    ; $5d7c: $0a
    ccf                                           ; $5d7d: $3f
    db $e3                                        ; $5d7e: $e3
    add sp, -$7c                                  ; $5d7f: $e8 $84
    ret nz                                        ; $5d81: $c0

    nop                                           ; $5d82: $00
    or e                                          ; $5d83: $b3
    ld e, b                                       ; $5d84: $58
    and d                                         ; $5d85: $a2
    dec b                                         ; $5d86: $05
    and e                                         ; $5d87: $a3
    nop                                           ; $5d88: $00
    and d                                         ; $5d89: $a2
    ld a, [$b781]                                 ; $5d8a: $fa $81 $b7
    pop bc                                        ; $5d8d: $c1
    ld a, [bc]                                    ; $5d8e: $0a
    ld a, [bc]                                    ; $5d8f: $0a
    ld b, b                                       ; $5d90: $40
    db $eb                                        ; $5d91: $eb
    and b                                         ; $5d92: $a0
    ld l, $e0                                     ; $5d93: $2e $e0
    add hl, hl                                    ; $5d95: $29
    and d                                         ; $5d96: $a2
    nop                                           ; $5d97: $00
    cp b                                          ; $5d98: $b8
    cp a                                          ; $5d99: $bf
    add h                                         ; $5d9a: $84
    call nz, $6d81                                ; $5d9b: $c4 $81 $6d
    ld d, e                                       ; $5d9e: $53
    and d                                         ; $5d9f: $a2
    ld h, $b4                                     ; $5da0: $26 $b4
    db $e4                                        ; $5da2: $e4
    ld a, [bc]                                    ; $5da3: $0a
    ld c, d                                       ; $5da4: $4a
    inc l                                         ; $5da5: $2c
    and b                                         ; $5da6: $a0
    db $ed                                        ; $5da7: $ed
    and b                                         ; $5da8: $a0
    ld c, e                                       ; $5da9: $4b
    cp $c0                                        ; $5daa: $fe $c0
    nop                                           ; $5dac: $00
    sub $e0                                       ; $5dad: $d6 $e0
    inc b                                         ; $5daf: $04
    add e                                         ; $5db0: $83
    sub c                                         ; $5db1: $91
    and l                                         ; $5db2: $a5
    ldh a, [$c2]                                  ; $5db3: $f0 $c2
    nop                                           ; $5db5: $00
    add c                                         ; $5db6: $81
    halt                                          ; $5db7: $76
    add c                                         ; $5db8: $81
    ld a, [hl+]                                   ; $5db9: $2a
    ld a, [bc]                                    ; $5dba: $0a
    ld l, d                                       ; $5dbb: $6a
    dec de                                        ; $5dbc: $1b
    ld l, e                                       ; $5dbd: $6b
    ld l, e                                       ; $5dbe: $6b
    xor l                                         ; $5dbf: $ad
    and c                                         ; $5dc0: $a1
    ld c, e                                       ; $5dc1: $4b
    ld l, l                                       ; $5dc2: $6d
    nop                                           ; $5dc3: $00
    or [hl]                                       ; $5dc4: $b6
    db $db                                        ; $5dc5: $db
    ld h, h                                       ; $5dc6: $64
    ld a, e                                       ; $5dc7: $7b
    add sp, $32                                   ; $5dc8: $e8 $32
    ld b, [hl]                                    ; $5dca: $46
    and h                                         ; $5dcb: $a4
    dec l                                         ; $5dcc: $2d
    dec [hl]                                      ; $5dcd: $35
    and b                                         ; $5dce: $a0
    ccf                                           ; $5dcf: $3f
    ldh [rWX], a                                  ; $5dd0: $e0 $4b
    dec hl                                        ; $5dd2: $2b
    cp h                                          ; $5dd3: $bc
    and b                                         ; $5dd4: $a0
    ld h, e                                       ; $5dd5: $63
    add b                                         ; $5dd6: $80
    ret nz                                        ; $5dd7: $c0

    pop bc                                        ; $5dd8: $c1
    add $00                                       ; $5dd9: $c6 $00
    sub b                                         ; $5ddb: $90
    db $fd                                        ; $5ddc: $fd
    add h                                         ; $5ddd: $84
    sbc h                                         ; $5dde: $9c
    add e                                         ; $5ddf: $83
    add $87                                       ; $5de0: $c6 $87
    rst $30                                       ; $5de2: $f7
    pop bc                                        ; $5de3: $c1
    ld l, e                                       ; $5de4: $6b
    ld c, e                                       ; $5de5: $4b
    ld bc, $ed6b                                  ; $5de6: $01 $6b $ed
    add b                                         ; $5de9: $80
    jp hl                                         ; $5dea: $e9


    ld h, b                                       ; $5deb: $60
    sub l                                         ; $5dec: $95
    ld h, h                                       ; $5ded: $64
    nop                                           ; $5dee: $00
    di                                            ; $5def: $f3
    ld b, l                                       ; $5df0: $45
    db $e3                                        ; $5df1: $e3
    ld b, [hl]                                    ; $5df2: $46
    db $e4                                        ; $5df3: $e4
    inc l                                         ; $5df4: $2c
    jp $b402                                      ; $5df5: $c3 $02 $b4


    ld h, l                                       ; $5df8: $65
    ld l, e                                       ; $5df9: $6b
    ld b, d                                       ; $5dfa: $42
    ret nz                                        ; $5dfb: $c0

    xor a                                         ; $5dfc: $af
    jp nz, Jump_06b_612a                          ; $5dfd: $c2 $2a $61

    nop                                           ; $5e00: $00
    db $f4                                        ; $5e01: $f4
    jr jr_06b_5e72                                ; $5e02: $18 $6e

    ld b, $83                                     ; $5e04: $06 $83
    ld e, $c8                                     ; $5e06: $1e $c8
    db $e4                                        ; $5e08: $e4
    dec l                                         ; $5e09: $2d
    dec l                                         ; $5e0a: $2d
    dec c                                         ; $5e0b: $0d
    ld l, l                                       ; $5e0c: $6d
    nop                                           ; $5e0d: $00
    ld a, a                                       ; $5e0e: $7f
    jr jr_06b_5e7a                                ; $5e0f: $18 $69

    cp d                                          ; $5e11: $ba
    jp Jump_06b_7504                              ; $5e12: $c3 $04 $75


    ld h, b                                       ; $5e15: $60
    jr nc, jr_06b_5e78                            ; $5e16: $30 $60

    dec bc                                        ; $5e18: $0b
    cp h                                          ; $5e19: $bc
    add b                                         ; $5e1a: $80
    jp nz, Jump_000_00c1                          ; $5e1b: $c2 $c1 $00

    ld a, l                                       ; $5e1e: $7d
    sub e                                         ; $5e1f: $93
    ld c, l                                       ; $5e20: $4d
    cp h                                          ; $5e21: $bc
    ld h, e                                       ; $5e22: $63
    nop                                           ; $5e23: $00
    db $e3                                        ; $5e24: $e3
    ld h, d                                       ; $5e25: $62
    inc l                                         ; $5e26: $2c
    ret nz                                        ; $5e27: $c0

    nop                                           ; $5e28: $00
    cp b                                          ; $5e29: $b8
    and a                                         ; $5e2a: $a7
    ld d, [hl]                                    ; $5e2b: $56
    ld hl, sp+$44                                 ; $5e2c: $f8 $44
    rst $18                                       ; $5e2e: $df
    ld h, e                                       ; $5e2f: $63
    cp b                                          ; $5e30: $b8
    ld h, l                                       ; $5e31: $65
    nop                                           ; $5e32: $00
    rst $38                                       ; $5e33: $ff
    nop                                           ; $5e34: $00
    db $ec                                        ; $5e35: $ec
    and l                                         ; $5e36: $a5
    dec [hl]                                      ; $5e37: $35
    ld b, l                                       ; $5e38: $45
    ld [hl], b                                    ; $5e39: $70
    ld b, d                                       ; $5e3a: $42
    add b                                         ; $5e3b: $80
    and d                                         ; $5e3c: $a2
    db $d3                                        ; $5e3d: $d3
    ld h, h                                       ; $5e3e: $64
    nop                                           ; $5e3f: $00
    rst $38                                       ; $5e40: $ff
    rst $00                                       ; $5e41: $c7
    dec h                                         ; $5e42: $25
    ret                                           ; $5e43: $c9


    ld h, h                                       ; $5e44: $64
    inc bc                                        ; $5e45: $03
    ld l, l                                       ; $5e46: $6d
    ld c, e                                       ; $5e47: $4b
    cp e                                          ; $5e48: $bb
    ld h, b                                       ; $5e49: $60
    xor e                                         ; $5e4a: $ab
    ld b, c                                       ; $5e4b: $41
    sbc b                                         ; $5e4c: $98
    inc hl                                        ; $5e4d: $23
    nop                                           ; $5e4e: $00
    rst $38                                       ; $5e4f: $ff
    ld h, a                                       ; $5e50: $67
    ld h, a                                       ; $5e51: $67
    ld [hl], d                                    ; $5e52: $72
    ld [hl+], a                                   ; $5e53: $22
    add d                                         ; $5e54: $82
    dec hl                                        ; $5e55: $2b
    ld h, b                                       ; $5e56: $60
    dec bc                                        ; $5e57: $0b
    and $22                                       ; $5e58: $e6 $22
    ldh [$a5], a                                  ; $5e5a: $e0 $a5
    nop                                           ; $5e5c: $00
    rst $38                                       ; $5e5d: $ff
    ld h, a                                       ; $5e5e: $67
    ld h, l                                       ; $5e5f: $65
    ld [$6da1], a                                 ; $5e60: $ea $a1 $6d
    ret nz                                        ; $5e63: $c0

    ld h, [hl]                                    ; $5e64: $66
    ld b, b                                       ; $5e65: $40
    add hl, sp                                    ; $5e66: $39
    ld h, e                                       ; $5e67: $63
    ret c                                         ; $5e68: $d8

    ld [hl+], a                                   ; $5e69: $22
    nop                                           ; $5e6a: $00
    rst $38                                       ; $5e6b: $ff
    call nz, $ea26                                ; $5e6c: $c4 $26 $ea
    ld bc, $0b6d                                  ; $5e6f: $01 $6d $0b

jr_06b_5e72:
    add b                                         ; $5e72: $80
    ld h, a                                       ; $5e73: $67
    ld b, b                                       ; $5e74: $40
    inc a                                         ; $5e75: $3c
    and c                                         ; $5e76: $a1
    ld h, l                                       ; $5e77: $65

jr_06b_5e78:
    inc h                                         ; $5e78: $24
    nop                                           ; $5e79: $00

jr_06b_5e7a:
    rst $38                                       ; $5e7a: $ff
    ld l, l                                       ; $5e7b: $6d
    daa                                           ; $5e7c: $27
    ld l, d                                       ; $5e7d: $6a
    ld hl, $202e                                  ; $5e7e: $21 $2e $20
    dec hl                                        ; $5e81: $2b
    pop bc                                        ; $5e82: $c1
    dec bc                                        ; $5e83: $0b
    cp e                                          ; $5e84: $bb
    add b                                         ; $5e85: $80
    cp b                                          ; $5e86: $b8
    ld b, d                                       ; $5e87: $42
    ld [hl], c                                    ; $5e88: $71
    cpl                                           ; $5e89: $2f
    nop                                           ; $5e8a: $00
    ld sp, hl                                     ; $5e8b: $f9
    ld l, e                                       ; $5e8c: $6b
    ld bc, $0d6b                                  ; $5e8d: $01 $6b $0d
    add c                                         ; $5e90: $81
    dec l                                         ; $5e91: $2d
    rst $20                                       ; $5e92: $e7
    ld [hl+], a                                   ; $5e93: $22
    xor c                                         ; $5e94: $a9
    ld b, b                                       ; $5e95: $40
    ld a, [$0043]                                 ; $5e96: $fa $43 $00
    rst $38                                       ; $5e99: $ff
    db $ec                                        ; $5e9a: $ec
    add [hl]                                      ; $5e9b: $86
    ret nz                                        ; $5e9c: $c0

    db $e3                                        ; $5e9d: $e3
    dec hl                                        ; $5e9e: $2b
    inc bc                                        ; $5e9f: $03
    dec hl                                        ; $5ea0: $2b
    ld a, [bc]                                    ; $5ea1: $0a
    jr z, jr_06b_5ee6                             ; $5ea2: $28 $42

    ret nz                                        ; $5ea4: $c0

    push hl                                       ; $5ea5: $e5
    nop                                           ; $5ea6: $00
    rst $38                                       ; $5ea7: $ff
    ld a, a                                       ; $5ea8: $7f
    inc b                                         ; $5ea9: $04
    db $fd                                        ; $5eaa: $fd
    ld bc, $e041                                  ; $5eab: $01 $41 $e0

jr_06b_5eae:
    nop                                           ; $5eae: $00
    jr z, jr_06b_5ed1                             ; $5eaf: $28 $20

    and a                                         ; $5eb1: $a7
    ld [hl+], a                                   ; $5eb2: $22
    add b                                         ; $5eb3: $80
    db $e4                                        ; $5eb4: $e4
    nop                                           ; $5eb5: $00
    rst $38                                       ; $5eb6: $ff
    ld b, a                                       ; $5eb7: $47
    inc h                                         ; $5eb8: $24
    ld l, e                                       ; $5eb9: $6b
    ld [bc], a                                    ; $5eba: $02
    ld b, c                                       ; $5ebb: $41
    push hl                                       ; $5ebc: $e5
    jr c, jr_06b_5f20                             ; $5ebd: $38 $61

    nop                                           ; $5ebf: $00
    ld h, l                                       ; $5ec0: $65
    ld [bc], a                                    ; $5ec1: $02
    nop                                           ; $5ec2: $00
    rst $38                                       ; $5ec3: $ff
    db $ec                                        ; $5ec4: $ec
    dec b                                         ; $5ec5: $05
    ld l, e                                       ; $5ec6: $6b
    ld [bc], a                                    ; $5ec7: $02
    add c                                         ; $5ec8: $81
    ldh [rSTAT], a                                ; $5ec9: $e0 $41
    pop hl                                        ; $5ecb: $e1
    dec sp                                        ; $5ecc: $3b
    ldh [rP1], a                                  ; $5ecd: $e0 $00
    pop hl                                        ; $5ecf: $e1
    nop                                           ; $5ed0: $00

jr_06b_5ed1:
    dec d                                         ; $5ed1: $15
    inc hl                                        ; $5ed2: $23
    nop                                           ; $5ed3: $00
    rst $38                                       ; $5ed4: $ff
    ld l, e                                       ; $5ed5: $6b
    ld b, $c2                                     ; $5ed6: $06 $c2
    push bc                                       ; $5ed8: $c5
    cp e                                          ; $5ed9: $bb
    ld h, b                                       ; $5eda: $60
    ld a, d                                       ; $5edb: $7a
    add e                                         ; $5edc: $83
    nop                                           ; $5edd: $00
    rst $18                                       ; $5ede: $df
    rrca                                          ; $5edf: $0f
    and h                                         ; $5ee0: $a4
    ld [hl-], a                                   ; $5ee1: $32
    cp a                                          ; $5ee2: $bf
    inc bc                                        ; $5ee3: $03
    ld l, e                                       ; $5ee4: $6b
    add e                                         ; $5ee5: $83

jr_06b_5ee6:
    and b                                         ; $5ee6: $a0
    jp nz, Jump_000_0bc0                          ; $5ee7: $c2 $c0 $0b

    ld a, [bc]                                    ; $5eea: $0a
    ld h, e                                       ; $5eeb: $63
    jr nz, jr_06b_5eae                            ; $5eec: $20 $c0

    and h                                         ; $5eee: $a4
    nop                                           ; $5eef: $00
    nop                                           ; $5ef0: $00
    rst $38                                       ; $5ef1: $ff
    ld b, a                                       ; $5ef2: $47
    dec b                                         ; $5ef3: $05
    call nz, $c0a0                                ; $5ef4: $c4 $a0 $c0
    ldh [$29], a                                  ; $5ef7: $e0 $29
    ld [hl+], a                                   ; $5ef9: $22
    cp h                                          ; $5efa: $bc
    and c                                         ; $5efb: $a1
    add b                                         ; $5efc: $80
    and h                                         ; $5efd: $a4
    nop                                           ; $5efe: $00
    rst $38                                       ; $5eff: $ff
    inc b                                         ; $5f00: $04
    db $ec                                        ; $5f01: $ec
    ld h, $81                                     ; $5f02: $26 $81
    pop hl                                        ; $5f04: $e1
    dec c                                         ; $5f05: $0d
    ld a, a                                       ; $5f06: $7f
    ld b, b                                       ; $5f07: $40
    nop                                           ; $5f08: $00
    ld [c], a                                     ; $5f09: $e2
    add b                                         ; $5f0a: $80
    pop hl                                        ; $5f0b: $e1
    xor l                                         ; $5f0c: $ad
    add l                                         ; $5f0d: $85
    nop                                           ; $5f0e: $00
    rst $18                                       ; $5f0f: $df
    inc d                                         ; $5f10: $14
    sub [hl]                                      ; $5f11: $96
    add e                                         ; $5f12: $83
    ret nz                                        ; $5f13: $c0

    pop hl                                        ; $5f14: $e1
    dec c                                         ; $5f15: $0d
    ld l, b                                       ; $5f16: $68
    inc bc                                        ; $5f17: $03
    dec hl                                        ; $5f18: $2b
    cp [hl]                                       ; $5f19: $be
    add b                                         ; $5f1a: $80
    cpl                                           ; $5f1b: $2f
    and e                                         ; $5f1c: $a3
    nop                                           ; $5f1d: $00
    rst $38                                       ; $5f1e: $ff
    nop                                           ; $5f1f: $00

jr_06b_5f20:
    nop                                           ; $5f20: $00
    call nz, $e141                                ; $5f21: $c4 $41 $e1
    dec bc                                        ; $5f24: $0b
    and b                                         ; $5f25: $a0
    ld [bc], a                                    ; $5f26: $02
    jp $c280                                      ; $5f27: $c3 $80 $c2


    nop                                           ; $5f2a: $00
    rst $18                                       ; $5f2b: $df
    ld [hl], c                                    ; $5f2c: $71
    ld b, [hl]                                    ; $5f2d: $46
    jp nz, Jump_000_00c4                          ; $5f2e: $c2 $c4 $00

    ld b, d                                       ; $5f31: $42
    and b                                         ; $5f32: $a0
    ld l, b                                       ; $5f33: $68
    ld bc, $c180                                  ; $5f34: $01 $80 $c1
    ld b, b                                       ; $5f37: $40
    and h                                         ; $5f38: $a4
    nop                                           ; $5f39: $00
    rst $38                                       ; $5f3a: $ff
    add e                                         ; $5f3b: $83
    add h                                         ; $5f3c: $84
    ld b, d                                       ; $5f3d: $42
    jp nz, $80c3                                  ; $5f3e: $c2 $c3 $80

    add b                                         ; $5f41: $80
    add c                                         ; $5f42: $81

jr_06b_5f43:
    and d                                         ; $5f43: $a2
    ei                                            ; $5f44: $fb
    jr nz, jr_06b_5f47                            ; $5f45: $20 $00

jr_06b_5f47:
    and e                                         ; $5f47: $a3
    nop                                           ; $5f48: $00
    rst $38                                       ; $5f49: $ff
    jr nc, jr_06b_5f6d                            ; $5f4a: $30 $21

    rlca                                          ; $5f4c: $07
    add d                                         ; $5f4d: $82
    ld b, h                                       ; $5f4e: $44
    and b                                         ; $5f4f: $a0
    dec l                                         ; $5f50: $2d
    add d                                         ; $5f51: $82
    jp $0b83                                      ; $5f52: $c3 $83 $0b


    ld h, a                                       ; $5f55: $67
    ld bc, $21f8                                  ; $5f56: $01 $f8 $21
    db $fc                                        ; $5f59: $fc

jr_06b_5f5a:
    inc b                                         ; $5f5a: $04
    nop                                           ; $5f5b: $00
    db $fd                                        ; $5f5c: $fd
    rlca                                          ; $5f5d: $07
    add e                                         ; $5f5e: $83
    dec l                                         ; $5f5f: $2d
    nop                                           ; $5f60: $00
    rlca                                          ; $5f61: $07
    ld b, b                                       ; $5f62: $40
    pop bc                                        ; $5f63: $c1
    db $e3                                        ; $5f64: $e3
    ld b, e                                       ; $5f65: $43
    jp nz, $a440                                  ; $5f66: $c2 $40 $a4

    nop                                           ; $5f69: $00
    db $fd                                        ; $5f6a: $fd
    ld b, $a5                                     ; $5f6b: $06 $a5

jr_06b_5f6d:
    pop bc                                        ; $5f6d: $c1
    pop hl                                        ; $5f6e: $e1
    jp nz, $80e5                                  ; $5f6f: $c2 $e5 $80

    inc a                                         ; $5f72: $3c
    nop                                           ; $5f73: $00
    ld a, [$3b21]                                 ; $5f74: $fa $21 $3b
    ld b, d                                       ; $5f77: $42
    nop                                           ; $5f78: $00
    db $fd                                        ; $5f79: $fd
    cp a                                          ; $5f7a: $bf
    inc b                                         ; $5f7b: $04
    rlca                                          ; $5f7c: $07
    add [hl]                                      ; $5f7d: $86
    ld [bc], a                                    ; $5f7e: $02
    db $e4                                        ; $5f7f: $e4
    dec c                                         ; $5f80: $0d
    rlca                                          ; $5f81: $07
    dec bc                                        ; $5f82: $0b
    dec l                                         ; $5f83: $2d
    dec l                                         ; $5f84: $2d
    nop                                           ; $5f85: $00
    ld e, a                                       ; $5f86: $5f
    inc [hl]                                      ; $5f87: $34
    ld b, $47                                     ; $5f88: $06 $47
    add d                                         ; $5f8a: $82
    jp nz, $bee5                                  ; $5f8b: $c2 $e5 $be

    ld bc, $ba00                                  ; $5f8e: $01 $00 $ba
    ld hl, $307b                                  ; $5f91: $21 $7b $30
    ld a, [bc]                                    ; $5f94: $0a
    dec hl                                        ; $5f95: $2b
    adc [hl]                                      ; $5f96: $8e
    ld h, $c6                                     ; $5f97: $26 $c6
    add a                                         ; $5f99: $87
    add e                                         ; $5f9a: $83
    db $e3                                        ; $5f9b: $e3
    ld a, e                                       ; $5f9c: $7b
    ld hl, $a503                                  ; $5f9d: $21 $03 $a5
    ld b, b                                       ; $5fa0: $40
    nop                                           ; $5fa1: $00
    call nc, Call_000_259f                        ; $5fa2: $d4 $9f $25
    ld b, $a4                                     ; $5fa5: $06 $a4
    ld b, a                                       ; $5fa7: $47
    add c                                         ; $5fa8: $81
    ld b, h                                       ; $5fa9: $44
    and $01                                       ; $5faa: $e6 $01
    ld h, b                                       ; $5fac: $60
    ld l, l                                       ; $5fad: $6d
    ccf                                           ; $5fae: $3f
    dec b                                         ; $5faf: $05
    nop                                           ; $5fb0: $00
    nop                                           ; $5fb1: $00
    inc sp                                        ; $5fb2: $33
    jr z, jr_06b_5f5a                             ; $5fb3: $28 $a5

    call z, $4d42                                 ; $5fb5: $cc $42 $4d
    ld b, b                                       ; $5fb8: $40
    ld b, a                                       ; $5fb9: $47
    add c                                         ; $5fba: $81
    rlca                                          ; $5fbb: $07
    push bc                                       ; $5fbc: $c5
    cp l                                          ; $5fbd: $bd
    add b                                         ; $5fbe: $80
    ld b, h                                       ; $5fbf: $44
    pop bc                                        ; $5fc0: $c1
    jr nz, jr_06b_5f43                            ; $5fc1: $20 $80

    db $e3                                        ; $5fc3: $e3
    nop                                           ; $5fc4: $00
    di                                            ; $5fc5: $f3
    ret                                           ; $5fc6: $c9


    add $11                                       ; $5fc7: $c6 $11
    ld b, b                                       ; $5fc9: $40
    jp Jump_06b_6be0                              ; $5fca: $c3 $e0 $6b


    rst $00                                       ; $5fcd: $c7
    add d                                         ; $5fce: $82
    adc l                                         ; $5fcf: $8d
    and b                                         ; $5fd0: $a0
    inc b                                         ; $5fd1: $04
    dec b                                         ; $5fd2: $05
    ld [c], a                                     ; $5fd3: $e2
    pop af                                        ; $5fd4: $f1
    pop hl                                        ; $5fd5: $e1
    ld l, l                                       ; $5fd6: $6d
    ld b, e                                       ; $5fd7: $43
    ld b, [hl]                                    ; $5fd8: $46
    nop                                           ; $5fd9: $00
    ret c                                         ; $5fda: $d8

    ld d, b                                       ; $5fdb: $50
    ld b, d                                       ; $5fdc: $42
    ld d, [hl]                                    ; $5fdd: $56
    add b                                         ; $5fde: $80
    adc a                                         ; $5fdf: $8f
    ld hl, $8600                                  ; $5fe0: $21 $00 $86
    add c                                         ; $5fe3: $81
    ret                                           ; $5fe4: $c9


    and b                                         ; $5fe5: $a0
    or $e3                                        ; $5fe6: $f6 $e3
    ccf                                           ; $5fe8: $3f
    ld [bc], a                                    ; $5fe9: $02
    inc bc                                        ; $5fea: $03
    push bc                                       ; $5feb: $c5
    nop                                           ; $5fec: $00
    or [hl]                                       ; $5fed: $b6
    ld d, l                                       ; $5fee: $55
    ld [bc], a                                    ; $5fef: $02
    db $d3                                        ; $5ff0: $d3
    ld [hl+], a                                   ; $5ff1: $22
    nop                                           ; $5ff2: $00
    ld d, b                                       ; $5ff3: $50
    ld b, d                                       ; $5ff4: $42
    cp $e6                                        ; $5ff5: $fe $e6
    add h                                         ; $5ff7: $84
    ldh [$75], a                                  ; $5ff8: $e0 $75
    inc h                                         ; $5ffa: $24
    nop                                           ; $5ffb: $00
    rst $30                                       ; $5ffc: $f7
    ld c, $85                                     ; $5ffd: $0e $85
    db $d3                                        ; $5fff: $d3
    ld b, l                                       ; $6000: $45
    cp a                                          ; $6001: $bf
    add sp, $00                                   ; $6002: $e8 $00
    ld b, l                                       ; $6004: $45
    ldh [$2e], a                                  ; $6005: $e0 $2e
    and h                                         ; $6007: $a4
    nop                                           ; $6008: $00
    call c, $c104                                 ; $6009: $dc $04 $c1
    sub $21                                       ; $600c: $d6 $21
    ld a, [hl]                                    ; $600e: $7e
    db $e3                                        ; $600f: $e3
    ld b, a                                       ; $6010: $47
    push hl                                       ; $6011: $e5
    cp e                                          ; $6012: $bb
    dec b                                         ; $6013: $05
    nop                                           ; $6014: $00
    add l                                         ; $6015: $85
    xor a                                         ; $6016: $af
    nop                                           ; $6017: $00
    xor l                                         ; $6018: $ad
    ret nz                                        ; $6019: $c0

    db $e4                                        ; $601a: $e4
    ld d, c                                       ; $601b: $51
    ld b, e                                       ; $601c: $43
    ld b, d                                       ; $601d: $42
    add e                                         ; $601e: $83
    ret                                           ; $601f: $c9


    pop bc                                        ; $6020: $c1
    ld e, b                                       ; $6021: $58
    ld h, $59                                     ; $6022: $26 $59
    ld [hl], c                                    ; $6024: $71
    nop                                           ; $6025: $00
    nop                                           ; $6026: $00
    ld [$4062], a                                 ; $6027: $ea $62 $40
    call nc, Call_06b_4f22                        ; $602a: $d4 $22 $4f
    nop                                           ; $602d: $00
    dec c                                         ; $602e: $0d
    jr nz, jr_06b_6078                            ; $602f: $20 $47

    db $e3                                        ; $6031: $e3
    dec bc                                        ; $6032: $0b
    ld h, h                                       ; $6033: $64
    add l                                         ; $6034: $85
    ldh a, [rNR10]                                ; $6035: $f0 $10
    nop                                           ; $6037: $00
    xor $05                                       ; $6038: $ee $05
    pop bc                                        ; $603a: $c1
    ld e, b                                       ; $603b: $58

Jump_06b_603c:
    ld b, b                                       ; $603c: $40
    ld d, e                                       ; $603d: $53
    ld h, c                                       ; $603e: $61
    dec hl                                        ; $603f: $2b
    add a                                         ; $6040: $87
    ld b, b                                       ; $6041: $40
    add h                                         ; $6042: $84
    db $e4                                        ; $6043: $e4
    ld l, c                                       ; $6044: $69
    jp Jump_06b_5924                              ; $6045: $c3 $24 $59


    rla                                           ; $6048: $17
    ld a, [bc]                                    ; $6049: $0a
    adc e                                         ; $604a: $8b
    dec l                                         ; $604b: $2d
    cp a                                          ; $604c: $bf
    pop hl                                        ; $604d: $e1
    pop bc                                        ; $604e: $c1
    pop hl                                        ; $604f: $e1
    ld l, l                                       ; $6050: $6d
    pop bc                                        ; $6051: $c1
    ld [bc], a                                    ; $6052: $02
    adc a                                         ; $6053: $8f
    ld h, e                                       ; $6054: $63
    inc b                                         ; $6055: $04
    ld a, [bc]                                    ; $6056: $0a
    adc [hl]                                      ; $6057: $8e
    nop                                           ; $6058: $00
    sub [hl]                                      ; $6059: $96
    dec c                                         ; $605a: $0d
    cp a                                          ; $605b: $bf
    ld [c], a                                     ; $605c: $e2
    pop bc                                        ; $605d: $c1
    pop hl                                        ; $605e: $e1
    inc l                                         ; $605f: $2c
    xor b                                         ; $6060: $a8
    ld e, c                                       ; $6061: $59
    add hl, de                                    ; $6062: $19
    nop                                           ; $6063: $00
    jp z, $8700                                   ; $6064: $ca $00 $87

    inc h                                         ; $6067: $24
    dec c                                         ; $6068: $0d
    jp nz, $86ec                                  ; $6069: $c2 $ec $86

    sbc $53                                       ; $606c: $de $53
    nop                                           ; $606e: $00
    di                                            ; $606f: $f3
    add [hl]                                      ; $6070: $86
    ld h, h                                       ; $6071: $64
    ld b, d                                       ; $6072: $42
    dec h                                         ; $6073: $25
    adc a                                         ; $6074: $8f
    or c                                          ; $6075: $b1
    ld h, b                                       ; $6076: $60

Jump_06b_6077:
    nop                                           ; $6077: $00

jr_06b_6078:
    sbc c                                         ; $6078: $99
    ld c, $e4                                     ; $6079: $0e $e4
    ret nc                                        ; $607b: $d0

    jp $223a                                      ; $607c: $c3 $3a $22


    add l                                         ; $607f: $85
    ld a, [$0e0d]                                 ; $6080: $fa $0d $0e
    nop                                           ; $6083: $00
    nop                                           ; $6084: $00
    nop                                           ; $6085: $00
    rst $38                                       ; $6086: $ff
    call c, $a0dd                                 ; $6087: $dc $dd $a0
    sbc $df                                       ; $608a: $de $df
    ldh [$e1], a                                  ; $608c: $e0 $e1
    ld [c], a                                     ; $608e: $e2
    xor a                                         ; $608f: $af
    db $e3                                        ; $6090: $e3
    db $e4                                        ; $6091: $e4
    sub $d7                                       ; $6092: $d6 $d7
    or $e0                                        ; $6094: $f6 $e0
    and b                                         ; $6096: $a0
    rst $38                                       ; $6097: $ff
    ld [c], a                                     ; $6098: $e2
    jp nc, $d3e1                                  ; $6099: $d2 $e1 $d3

    ld hl, sp-$1f                                 ; $609c: $f8 $e1
    add sp, -$1c                                  ; $609e: $e8 $e4
    sbc $e7                                       ; $60a0: $de $e7
    or $f1                                        ; $60a2: $f6 $f1
    push hl                                       ; $60a4: $e5
    and $e7                                       ; $60a5: $e6 $e7
    rst $38                                       ; $60a7: $ff
    and b                                         ; $60a8: $a0
    add sp, -$17                                  ; $60a9: $e8 $e9
    ld [$eceb], a                                 ; $60ab: $ea $eb $ec
    and b                                         ; $60ae: $a0
    ret c                                         ; $60af: $d8

    db $fd                                        ; $60b0: $fd
    reti                                          ; $60b1: $d9


    jp $f5e1                                      ; $60b2: $c3 $e1 $f5


    or $a0                                        ; $60b5: $f6 $a0
    db $ed                                        ; $60b7: $ed
    xor $d4                                       ; $60b8: $ee $d4
    rra                                           ; $60ba: $1f
    push de                                       ; $60bb: $d5
    rst $28                                       ; $60bc: $ef
    db $e3                                        ; $60bd: $e3
    db $e4                                        ; $60be: $e4
    and b                                         ; $60bf: $a0
    add sp, -$1c                                  ; $60c0: $e8 $e4
    sbc $e7                                       ; $60c2: $de $e7
    or $f1                                        ; $60c4: $f6 $f1
    cp [hl]                                       ; $60c6: $be
    sbc l                                         ; $60c7: $9d
    rst $20                                       ; $60c8: $e7
    jp c, $a0db                                   ; $60c9: $da $db $a0

    sbc a                                         ; $60cc: $9f
    sbc l                                         ; $60cd: $9d
    rst $38                                       ; $60ce: $ff
    ldh [$9f], a                                  ; $60cf: $e0 $9f
    rra                                           ; $60d1: $1f
    ldh a, [$f1]                                  ; $60d2: $f0 $f1
    ld a, [c]                                     ; $60d4: $f2
    di                                            ; $60d5: $f3
    db $f4                                        ; $60d6: $f4
    ld [hl], a                                    ; $60d7: $77
    ldh [$85], a                                  ; $60d8: $e0 $85
    db $e4                                        ; $60da: $e4
    or $e7                                        ; $60db: $f6 $e7
    db $fc                                        ; $60dd: $fc
    ld [hl], c                                    ; $60de: $71
    pop af                                        ; $60df: $f1
    sbc l                                         ; $60e0: $9d
    push hl                                       ; $60e1: $e5
    ret nc                                        ; $60e2: $d0

    pop de                                        ; $60e3: $d1
    and b                                         ; $60e4: $a0
    and b                                         ; $60e5: $a0
    sbc a                                         ; $60e6: $9f
    sbc h                                         ; $60e7: $9c
    ld l, l                                       ; $60e8: $6d
    or d                                          ; $60e9: $b2
    rst $38                                       ; $60ea: $ff
    ldh [$9c], a                                  ; $60eb: $e0 $9c
    sbc a                                         ; $60ed: $9f
    ld a, d                                       ; $60ee: $7a
    pop hl                                        ; $60ef: $e1
    sub $d7                                       ; $60f0: $d6 $d7
    inc sp                                        ; $60f2: $33
    ldh [$80], a                                  ; $60f3: $e0 $80
    ld h, e                                       ; $60f5: $63
    ldh [$2a], a                                  ; $60f6: $e0 $2a
    ldh [$2c], a                                  ; $60f8: $e0 $2c
    pop hl                                        ; $60fa: $e1
    ld a, e                                       ; $60fb: $7b
    or $9d                                        ; $60fc: $f6 $9d
    push hl                                       ; $60fe: $e5
    dec c                                         ; $60ff: $0d
    ldh [$c1], a                                  ; $6100: $e0 $c1
    ldh [rDMA], a                                 ; $6102: $e0 $46
    ld c, $ff                                     ; $6104: $0e $ff
    ldh [$b2], a                                  ; $6106: $e0 $b2
    sbc h                                         ; $6108: $9c
    and d                                         ; $6109: $a2
    cp [hl]                                       ; $610a: $be
    ldh [$32], a                                  ; $610b: $e0 $32
    pop hl                                        ; $610d: $e1
    xor h                                         ; $610e: $ac
    pop hl                                        ; $610f: $e1
    ld a, [hl+]                                   ; $6110: $2a
    ld [c], a                                     ; $6111: $e2
    db $f4                                        ; $6112: $f4
    cp e                                          ; $6113: $bb
    db $e4                                        ; $6114: $e4
    nop                                           ; $6115: $00
    push af                                       ; $6116: $f5
    and b                                         ; $6117: $a0
    dec c                                         ; $6118: $0d
    db $e3                                        ; $6119: $e3
    and c                                         ; $611a: $a1
    or d                                          ; $611b: $b2
    ld b, l                                       ; $611c: $45
    ccf                                           ; $611d: $3f
    ld l, a                                       ; $611e: $6f
    scf                                           ; $611f: $37
    scf                                           ; $6120: $37
    ccf                                           ; $6121: $3f
    ld b, l                                       ; $6122: $45
    cp [hl]                                       ; $6123: $be
    ldh [$9f], a                                  ; $6124: $e0 $9f
    and b                                         ; $6126: $a0
    ld [hl-], a                                   ; $6127: $32
    ldh [$fc], a                                  ; $6128: $e0 $fc

Jump_06b_612a:
    cp c                                          ; $612a: $b9
    jp nz, $e02a                                  ; $612b: $c2 $2a $e0

    push af                                       ; $612e: $f5
    or $d8                                        ; $612f: $f6 $d8
    reti                                          ; $6131: $d9


    db $e3                                        ; $6132: $e3
    db $e4                                        ; $6133: $e4
    db $f4                                        ; $6134: $f4
    ld e, a                                       ; $6135: $5f
    ldh [rP1], a                                  ; $6136: $e0 $00
    or $a0                                        ; $6138: $f6 $a0
    dec c                                         ; $613a: $0d
    ld [c], a                                     ; $613b: $e2
    sbc [hl]                                      ; $613c: $9e
    or d                                          ; $613d: $b2
    ld b, b                                       ; $613e: $40
    dec [hl]                                      ; $613f: $35
    ld b, $ff                                     ; $6140: $06 $ff
    ldh [rLCDC], a                                ; $6142: $e0 $40
    ld b, [hl]                                    ; $6144: $46
    inc a                                         ; $6145: $3c
    db $e3                                        ; $6146: $e3
    cp c                                          ; $6147: $b9
    jp nz, $c370                                  ; $6148: $c2 $70 $c3

    or e                                          ; $614b: $b3
    db $e3                                        ; $614c: $e3
    ld h, d                                       ; $614d: $62
    pop bc                                        ; $614e: $c1
    add sp, $00                                   ; $614f: $e8 $00
    di                                            ; $6151: $f3
    adc b                                         ; $6152: $88
    jp nz, $e002                                  ; $6153: $c2 $02 $e0

    add hl, sp                                    ; $6156: $39
    ret nz                                        ; $6157: $c0

    pop hl                                        ; $6158: $e1
    add hl, sp                                    ; $6159: $39
    or d                                          ; $615a: $b2
    xor [hl]                                      ; $615b: $ae
    add b                                         ; $615c: $80
    ei                                            ; $615d: $fb
    jp nz, $c2b9                                  ; $615e: $c2 $b9 $c2

    xor [hl]                                      ; $6161: $ae
    jp nz, $e030                                  ; $6162: $c2 $30 $e0

    or e                                          ; $6165: $b3
    rst $20                                       ; $6166: $e7
    nop                                           ; $6167: $00
    di                                            ; $6168: $f3
    inc bc                                        ; $6169: $03
    ret nz                                        ; $616a: $c0

    sbc [hl]                                      ; $616b: $9e
    ld [hl], a                                    ; $616c: $77
    or d                                          ; $616d: $b2
    ld b, [hl]                                    ; $616e: $46
    ld a, $80                                     ; $616f: $3e $80
    pop hl                                        ; $6171: $e1
    ld a, $b2                                     ; $6172: $3e $b2
    xor a                                         ; $6174: $af
    cp d                                          ; $6175: $ba
    pop bc                                        ; $6176: $c1
    inc l                                         ; $6177: $2c
    ld [hl], a                                    ; $6178: $77
    ret nz                                        ; $6179: $c0

    xor [hl]                                      ; $617a: $ae
    pop bc                                        ; $617b: $c1
    ld b, [hl]                                    ; $617c: $46
    or d                                          ; $617d: $b2
    cp $e0                                        ; $617e: $fe $e0

Jump_06b_6180:
    sbc h                                         ; $6180: $9c
    ld l, h                                       ; $6181: $6c
    jp $f700                                      ; $6182: $c3 $00 $f7


    ldh [$03], a                                  ; $6185: $e0 $03
    pop bc                                        ; $6187: $c1
    ret nz                                        ; $6188: $c0

    and $40                                       ; $6189: $e6 $40
    ldh [$ba], a                                  ; $618b: $e0 $ba
    ret nz                                        ; $618d: $c0

    ld [hl], a                                    ; $618e: $77
    ret nz                                        ; $618f: $c0

    and d                                         ; $6190: $a2
    sbc l                                         ; $6191: $9d
    sbc h                                         ; $6192: $9c
    rst $38                                       ; $6193: $ff
    or d                                          ; $6194: $b2
    ld a, c                                       ; $6195: $79
    ld a, d                                       ; $6196: $7a
    ld a, e                                       ; $6197: $7b
    ld a, e                                       ; $6198: $7b
    ld a, h                                       ; $6199: $7c
    ld a, l                                       ; $619a: $7d
    sbc h                                         ; $619b: $9c
    ld bc, $e89f                                  ; $619c: $01 $9f $e8
    and b                                         ; $619f: $a0
    nop                                           ; $61a0: $00
    ld hl, sp-$2f                                 ; $61a1: $f8 $d1
    pop bc                                        ; $61a3: $c1
    ld b, b                                       ; $61a4: $40
    and $7b                                       ; $61a5: $e6 $7b
    pop bc                                        ; $61a7: $c1
    db $fc                                        ; $61a8: $fc
    ld [c], a                                     ; $61a9: $e2
    ld [hl-], a                                   ; $61aa: $32
    ret nz                                        ; $61ab: $c0

    ld a, a                                       ; $61ac: $7f
    ld a, c                                       ; $61ad: $79
    ld a, [hl]                                    ; $61ae: $7e
    ld c, b                                       ; $61af: $48
    ld d, e                                       ; $61b0: $53
    ld b, l                                       ; $61b1: $45
    ld d, b                                       ; $61b2: $50
    ld a, a                                       ; $61b3: $7f
    cp a                                          ; $61b4: $bf
    ldh [$e0], a                                  ; $61b5: $e0 $e0
    ld a, e                                       ; $61b7: $7b
    jp $f800                                      ; $61b8: $c3 $00 $f8


    ccf                                           ; $61bb: $3f
    ldh [$c0], a                                  ; $61bc: $e0 $c0
    push bc                                       ; $61be: $c5
    cp [hl]                                       ; $61bf: $be
    push hl                                       ; $61c0: $e5
    ld a, c                                       ; $61c1: $79
    ld a, d                                       ; $61c2: $7a
    adc a                                         ; $61c3: $8f
    rst $38                                       ; $61c4: $ff
    ld c, d                                       ; $61c5: $4a
    ld h, b                                       ; $61c6: $60
    ld d, h                                       ; $61c7: $54
    ld d, c                                       ; $61c8: $51
    ld e, a                                       ; $61c9: $5f
    ld d, l                                       ; $61ca: $55
    add c                                         ; $61cb: $81
    ld b, [hl]                                    ; $61cc: $46
    add c                                         ; $61cd: $81
    sbc [hl]                                      ; $61ce: $9e

jr_06b_61cf:
    ld h, b                                       ; $61cf: $60
    and h                                         ; $61d0: $a4
    nop                                           ; $61d1: $00
    db $d3                                        ; $61d2: $d3
    ld [bc], a                                    ; $61d3: $02
    and d                                         ; $61d4: $a2
    ld b, b                                       ; $61d5: $40
    push bc                                       ; $61d6: $c5
    cp e                                          ; $61d7: $bb
    and b                                         ; $61d8: $a0
    ld a, l                                       ; $61d9: $7d
    db $e4                                        ; $61da: $e4
    add b                                         ; $61db: $80
    rst $38                                       ; $61dc: $ff
    ld b, [hl]                                    ; $61dd: $46
    ld b, [hl]                                    ; $61de: $46
    ld d, l                                       ; $61df: $55
    ld d, [hl]                                    ; $61e0: $56
    ld a, [hl+]                                   ; $61e1: $2a
    ld a, [hl+]                                   ; $61e2: $2a
    ld d, [hl]                                    ; $61e3: $56
    ld e, d                                       ; $61e4: $5a
    rlca                                          ; $61e5: $07
    add c                                         ; $61e6: $81
    ld b, [hl]                                    ; $61e7: $46
    and c                                         ; $61e8: $a1
    ld l, $c1                                     ; $61e9: $2e $c1
    xor e                                         ; $61eb: $ab
    and c                                         ; $61ec: $a1
    nop                                           ; $61ed: $00
    di                                            ; $61ee: $f3
    ld [bc], a                                    ; $61ef: $02
    and c                                         ; $61f0: $a1
    ret nz                                        ; $61f1: $c0

    and l                                         ; $61f2: $a5
    db $f4                                        ; $61f3: $f4
    ld a, e                                       ; $61f4: $7b
    and c                                         ; $61f5: $a1
    inc a                                         ; $61f6: $3c
    ret nz                                        ; $61f7: $c0

    xor [hl]                                      ; $61f8: $ae
    ret nz                                        ; $61f9: $c0

    ld [c], a                                     ; $61fa: $e2
    ld b, h                                       ; $61fb: $44
    ld b, e                                       ; $61fc: $43
    ld l, $30                                     ; $61fd: $2e $30
    rlca                                          ; $61ff: $07
    ld c, a                                       ; $6200: $4f
    ld d, l                                       ; $6201: $55
    add c                                         ; $6202: $81
    ld l, d                                       ; $6203: $6a
    and c                                         ; $6204: $a1
    ld hl, sp-$5f                                 ; $6205: $f8 $a1
    nop                                           ; $6207: $00
    or [hl]                                       ; $6208: $b6
    ret nc                                        ; $6209: $d0

    and c                                         ; $620a: $a1
    ld b, b                                       ; $620b: $40
    and e                                         ; $620c: $a3
    ld a, [$c185]                                 ; $620d: $fa $85 $c1
    sbc l                                         ; $6210: $9d
    add $c0                                       ; $6211: $c6 $c0
    xor a                                         ; $6213: $af
    or d                                          ; $6214: $b2
    ld b, [hl]                                    ; $6215: $46
    add d                                         ; $6216: $82
    add e                                         ; $6217: $83
    rst $38                                       ; $6218: $ff
    ld b, [hl]                                    ; $6219: $46
    ld c, d                                       ; $621a: $4a
    ld e, d                                       ; $621b: $5a
    ld l, $20                                     ; $621c: $2e $20
    dec l                                         ; $621e: $2d
    ld b, l                                       ; $621f: $45
    add c                                         ; $6220: $81
    jr nc, jr_06b_61cf                            ; $6221: $30 $ac

    and d                                         ; $6223: $a2
    xor e                                         ; $6224: $ab
    and b                                         ; $6225: $a0
    nop                                           ; $6226: $00
    or [hl]                                       ; $6227: $b6
    ld a, [hl-]                                   ; $6228: $3a
    add b                                         ; $6229: $80
    ret nc                                        ; $622a: $d0

    pop de                                        ; $622b: $d1
    ret nz                                        ; $622c: $c0

    add d                                         ; $622d: $82
    ld c, b                                       ; $622e: $48
    pop bc                                        ; $622f: $c1
    cp $f4                                        ; $6230: $fe $f4
    add h                                         ; $6232: $84
    add l                                         ; $6233: $85
    add [hl]                                      ; $6234: $86
    add e                                         ; $6235: $83
    ld c, a                                       ; $6236: $4f
    ld d, [hl]                                    ; $6237: $56
    ld a, [hl+]                                   ; $6238: $2a
    ld h, $04                                     ; $6239: $26 $04
    ret nz                                        ; $623b: $c0

    ldh [rNR52], a                                ; $623c: $e0 $26
    and b                                         ; $623e: $a0
    sbc [hl]                                      ; $623f: $9e
    inc h                                         ; $6240: $24
    add e                                         ; $6241: $83
    nop                                           ; $6242: $00
    or c                                          ; $6243: $b1
    nop                                           ; $6244: $00
    add b                                         ; $6245: $80
    ld a, [bc]                                    ; $6246: $0a
    add [hl]                                      ; $6247: $86
    dec a                                         ; $6248: $3d
    add d                                         ; $6249: $82
    db $fc                                        ; $624a: $fc
    or d                                          ; $624b: $b2
    add b                                         ; $624c: $80
    ld [hl], h                                    ; $624d: $74
    add b                                         ; $624e: $80
    sbc h                                         ; $624f: $9c
    or d                                          ; $6250: $b2
    add l                                         ; $6251: $85
    adc e                                         ; $6252: $8b
    ld d, l                                       ; $6253: $55
    ld h, c                                       ; $6254: $61
    ld a, a                                       ; $6255: $7f
    ld d, d                                       ; $6256: $52
    add hl, sp                                    ; $6257: $39
    inc a                                         ; $6258: $3c
    ld b, h                                       ; $6259: $44
    adc h                                         ; $625a: $8c
    ld a, l                                       ; $625b: $7d
    or d                                          ; $625c: $b2
    cp [hl]                                       ; $625d: $be
    ret nz                                        ; $625e: $c0

    ret nz                                        ; $625f: $c0

    sbc h                                         ; $6260: $9c
    add b                                         ; $6261: $80
    nop                                           ; $6262: $00
    sub a                                         ; $6263: $97
    ld a, [bc]                                    ; $6264: $0a
    add d                                         ; $6265: $82
    adc b                                         ; $6266: $88
    add c                                         ; $6267: $81
    cp a                                          ; $6268: $bf
    ld h, a                                       ; $6269: $67
    jp nz, $82a0                                  ; $626a: $c2 $a0 $82

    add e                                         ; $626d: $83
    rra                                           ; $626e: $1f
    ld d, e                                       ; $626f: $53
    ld e, c                                       ; $6270: $59
    ld b, h                                       ; $6271: $44
    inc a                                         ; $6272: $3c
    ld [hl], $3f                                  ; $6273: $36 $3f
    ldh [rBCPD], a                                ; $6275: $e0 $69
    add b                                         ; $6277: $80
    xor c                                         ; $6278: $a9
    ld h, c                                       ; $6279: $61
    sbc b                                         ; $627a: $98
    nop                                           ; $627b: $00
    sub l                                         ; $627c: $95
    db $fd                                        ; $627d: $fd
    add e                                         ; $627e: $83
    adc b                                         ; $627f: $88
    add c                                         ; $6280: $81
    sbc $df                                       ; $6281: $de $df
    ld b, $a3                                     ; $6283: $06 $a3
    ld l, [hl]                                    ; $6285: $6e
    jp nz, $df85                                  ; $6286: $c2 $85 $df

    add a                                         ; $6289: $87
    adc c                                         ; $628a: $89
    add e                                         ; $628b: $83
    ld b, l                                       ; $628c: $45
    ld [hl], $c0                                  ; $628d: $36 $c0
    ldh [$b2], a                                  ; $628f: $e0 $b2
    sbc [hl]                                      ; $6291: $9e
    add b                                         ; $6292: $80
    xor c                                         ; $6293: $a9
    ld h, h                                       ; $6294: $64
    nop                                           ; $6295: $00
    push af                                       ; $6296: $f5
    rst $38                                       ; $6297: $ff
    db $e4                                        ; $6298: $e4
    adc b                                         ; $6299: $88
    add c                                         ; $629a: $81
    cp a                                          ; $629b: $bf
    ld h, e                                       ; $629c: $63
    ld l, [hl]                                    ; $629d: $6e
    jp $c1fc                                      ; $629e: $c3 $fc $c1


    ld b, l                                       ; $62a1: $45
    rra                                           ; $62a2: $1f
    ld b, l                                       ; $62a3: $45
    add e                                         ; $62a4: $83
    add h                                         ; $62a5: $84
    or d                                          ; $62a6: $b2
    and c                                         ; $62a7: $a1
    xor c                                         ; $62a8: $a9
    ld h, h                                       ; $62a9: $64
    nop                                           ; $62aa: $00
    db $f4                                        ; $62ab: $f4
    jr @+$70                                      ; $62ac: $18 $6e

    db $fc                                        ; $62ae: $fc
    ld l, [hl]                                    ; $62af: $6e

jr_06b_62b0:
    jp $c077                                      ; $62b0: $c3 $77 $c0


    add l                                         ; $62b3: $85
    add a                                         ; $62b4: $87
    adc b                                         ; $62b5: $88
    adc b                                         ; $62b6: $88
    add a                                         ; $62b7: $87
    add l                                         ; $62b8: $85
    rrca                                          ; $62b9: $0f
    sbc h                                         ; $62ba: $9c
    sbc a                                         ; $62bb: $9f
    sub $d7                                       ; $62bc: $d6 $d7
    nop                                           ; $62be: $00
    ld a, e                                       ; $62bf: $7b
    jr jr_06b_632d                                ; $62c0: $18 $6b

    rst $30                                       ; $62c2: $f7
    ld b, c                                       ; $62c3: $41
    add h                                         ; $62c4: $84
    ld h, d                                       ; $62c5: $62
    ldh [$aa], a                                  ; $62c6: $e0 $aa
    ld h, c                                       ; $62c8: $61
    cp [hl]                                       ; $62c9: $be
    add c                                         ; $62ca: $81
    ldh [rLCDC], a                                ; $62cb: $e0 $40
    nop                                           ; $62cd: $00
    ld a, e                                       ; $62ce: $7b
    sub e                                         ; $62cf: $93
    ld c, a                                       ; $62d0: $4f
    ret c                                         ; $62d1: $d8

    reti                                          ; $62d2: $d9


    push af                                       ; $62d3: $f5
    ld bc, $2bf6                                  ; $62d4: $01 $f6 $2b
    call nz, $c203                                ; $62d7: $c4 $03 $c2
    nop                                           ; $62da: $00
    or [hl]                                       ; $62db: $b6
    sbc l                                         ; $62dc: $9d
    ld d, h                                       ; $62dd: $54
    ld a, h                                       ; $62de: $7c
    ld h, l                                       ; $62df: $65
    ld a, [hl+]                                   ; $62e0: $2a
    push bc                                       ; $62e1: $c5
    jr c, jr_06b_6346                             ; $62e2: $38 $62

    jr jr_06b_62e6                                ; $62e4: $18 $00

jr_06b_62e6:
    rst $38                                       ; $62e6: $ff
    ld c, $46                                     ; $62e7: $0e $46
    jr z, jr_06b_634f                             ; $62e9: $28 $64

    sub $d7                                       ; $62eb: $d6 $d7
    and e                                         ; $62ed: $a3
    ld h, b                                       ; $62ee: $60
    pop af                                        ; $62ef: $f1
    ld h, d                                       ; $62f0: $62
    ld h, e                                       ; $62f1: $63
    pop bc                                        ; $62f2: $c1
    sub b                                         ; $62f3: $90

jr_06b_62f4:
    ld [hl], c                                    ; $62f4: $71
    ld c, h                                       ; $62f5: $4c
    ld [hl+], a                                   ; $62f6: $22
    ld e, e                                       ; $62f7: $5b
    dec [hl]                                      ; $62f8: $35
    ld b, d                                       ; $62f9: $42
    push hl                                       ; $62fa: $e5
    add d                                         ; $62fb: $82
    ld b, [hl]                                    ; $62fc: $46
    rst $38                                       ; $62fd: $ff
    and c                                         ; $62fe: $a1
    dec e                                         ; $62ff: $1d
    ld b, b                                       ; $6300: $40
    ret nc                                        ; $6301: $d0

    ld b, c                                       ; $6302: $41
    pop de                                        ; $6303: $d1
    and $21                                       ; $6304: $e6 $21
    nop                                           ; $6306: $00
    rst $38                                       ; $6307: $ff
    inc b                                         ; $6308: $04
    ld b, l                                       ; $6309: $45
    ld l, d                                       ; $630a: $6a
    jr nz, jr_06b_62f4                            ; $630b: $20 $e7

    jr nz, jr_06b_62b0                            ; $630d: $20 $a1

    xor h                                         ; $630f: $ac
    ld h, c                                       ; $6310: $61
    ldh [$27], a                                  ; $6311: $e0 $27
    ld b, c                                       ; $6313: $41
    ld h, l                                       ; $6314: $65
    ld [hl+], a                                   ; $6315: $22
    nop                                           ; $6316: $00
    rst $38                                       ; $6317: $ff
    db $ec                                        ; $6318: $ec
    and a                                         ; $6319: $a7
    ld l, d                                       ; $631a: $6a
    ld hl, $9d9f                                  ; $631b: $21 $9f $9d
    sbc h                                         ; $631e: $9c
    add c                                         ; $631f: $81
    ld b, l                                       ; $6320: $45
    add hl, hl                                    ; $6321: $29
    add b                                         ; $6322: $80
    add hl, sp                                    ; $6323: $39
    ld h, b                                       ; $6324: $60
    xor h                                         ; $6325: $ac
    ld b, h                                       ; $6326: $44
    nop                                           ; $6327: $00
    rst $38                                       ; $6328: $ff
    db $ec                                        ; $6329: $ec
    inc b                                         ; $632a: $04
    ld h, a                                       ; $632b: $67
    ld h, h                                       ; $632c: $64

jr_06b_632d:
    ld b, [hl]                                    ; $632d: $46
    rrca                                          ; $632e: $0f
    ld b, l                                       ; $632f: $45
    ld [hl], $35                                  ; $6330: $36 $35
    ld [hl], $bf                                  ; $6332: $36 $bf
    ldh [$bc], a                                  ; $6334: $e0 $bc
    and h                                         ; $6336: $a4
    nop                                           ; $6337: $00
    rst $38                                       ; $6338: $ff
    db $ec                                        ; $6339: $ec
    dec b                                         ; $633a: $05
    cp $f1                                        ; $633b: $fe $f1
    ld bc, $9c9f                                  ; $633d: $01 $9f $9c

Jump_06b_6340:
    add e                                         ; $6340: $83
    adc c                                         ; $6341: $89
    adc b                                         ; $6342: $88
    ld [hl], d                                    ; $6343: $72
    ld l, h                                       ; $6344: $6c
    add e                                         ; $6345: $83

jr_06b_6346:
    inc a                                         ; $6346: $3c
    ld b, h                                       ; $6347: $44
    cp b                                          ; $6348: $b8
    ld b, c                                       ; $6349: $41
    ld sp, hl                                     ; $634a: $f9
    ld b, c                                       ; $634b: $41
    ld [hl], c                                    ; $634c: $71
    ld a, [hl+]                                   ; $634d: $2a
    nop                                           ; $634e: $00

jr_06b_634f:
    db $fc                                        ; $634f: $fc
    ld l, c                                       ; $6350: $69
    ld h, c                                       ; $6351: $61
    ld b, [hl]                                    ; $6352: $46
    rra                                           ; $6353: $1f
    adc d                                         ; $6354: $8a
    add l                                         ; $6355: $85
    add hl, sp                                    ; $6356: $39
    ld l, [hl]                                    ; $6357: $6e
    ld [hl], h                                    ; $6358: $74
    jr z, jr_06b_639b                             ; $6359: $28 $40

    ld a, h                                       ; $635b: $7c
    add c                                         ; $635c: $81
    jr nc, jr_06b_6380                            ; $635d: $30 $21

    ld hl, sp+$00                                 ; $635f: $f8 $00
    rst $38                                       ; $6361: $ff
    db $ec                                        ; $6362: $ec
    add [hl]                                      ; $6363: $86
    ld l, b                                       ; $6364: $68
    ld b, c                                       ; $6365: $41
    ld b, [hl]                                    ; $6366: $46
    add c                                         ; $6367: $81
    ld b, l                                       ; $6368: $45
    ld a, [hl-]                                   ; $6369: $3a
    rlc c                                         ; $636a: $cb $01
    ld l, c                                       ; $636c: $69
    jr z, jr_06b_63af                             ; $636d: $28 $40

    inc a                                         ; $636f: $3c
    add c                                         ; $6370: $81
    ld e, d                                       ; $6371: $5a
    ld [bc], a                                    ; $6372: $02
    nop                                           ; $6373: $00
    rst $38                                       ; $6374: $ff
    adc c                                         ; $6375: $89
    inc b                                         ; $6376: $04
    add hl, sp                                    ; $6377: $39
    jr nz, jr_06b_63bb                            ; $6378: $20 $41

    ldh [$7f], a                                  ; $637a: $e0 $7f
    add h                                         ; $637c: $84
    ld b, h                                       ; $637d: $44
    inc a                                         ; $637e: $3c
    dec [hl]                                      ; $637f: $35

jr_06b_6380:
    ld l, c                                       ; $6380: $69
    dec [hl]                                      ; $6381: $35
    ld a, [hl-]                                   ; $6382: $3a
    cp [hl]                                       ; $6383: $be
    ret nz                                        ; $6384: $c0

    and c                                         ; $6385: $a1
    sbc [hl]                                      ; $6386: $9e
    jr z, jr_06b_63ab                             ; $6387: $28 $22

    nop                                           ; $6389: $00
    rst $38                                       ; $638a: $ff
    ld [hl], c                                    ; $638b: $71
    add h                                         ; $638c: $84
    ld l, e                                       ; $638d: $6b
    ld bc, $419e                                  ; $638e: $01 $9e $41
    pop hl                                        ; $6391: $e1
    dec [hl]                                      ; $6392: $35
    rrca                                          ; $6393: $0f
    ld h, d                                       ; $6394: $62
    halt                                          ; $6395: $76
    rst $08                                       ; $6396: $cf
    rst $08                                       ; $6397: $cf
    daa                                           ; $6398: $27
    ld b, b                                       ; $6399: $40
    ld a, h                                       ; $639a: $7c

jr_06b_639b:
    ld h, b                                       ; $639b: $60
    cp $c2                                        ; $639c: $fe $c2
    nop                                           ; $639e: $00
    rst $38                                       ; $639f: $ff
    reti                                          ; $63a0: $d9


    db $e4                                        ; $63a1: $e4
    cp a                                          ; $63a2: $bf
    add c                                         ; $63a3: $81
    ld l, e                                       ; $63a4: $6b
    ld [bc], a                                    ; $63a5: $02
    add e                                         ; $63a6: $83
    add h                                         ; $63a7: $84
    ld b, c                                       ; $63a8: $41
    ld [c], a                                     ; $63a9: $e2
    cp e                                          ; $63aa: $bb

jr_06b_63ab:
    adc $01                                       ; $63ab: $ce $01
    ld a, $7c                                     ; $63ad: $3e $7c

jr_06b_63af:
    ld h, c                                       ; $63af: $61
    ld [hl-], a                                   ; $63b0: $32
    and c                                         ; $63b1: $a1
    nop                                           ; $63b2: $00
    rst $38                                       ; $63b3: $ff
    db $ec                                        ; $63b4: $ec

jr_06b_63b5:
    ld [bc], a                                    ; $63b5: $02
    ld b, e                                       ; $63b6: $43
    and d                                         ; $63b7: $a2
    add c                                         ; $63b8: $81
    db $e3                                        ; $63b9: $e3
    ld b, c                                       ; $63ba: $41

jr_06b_63bb:
    ldh [$c0], a                                  ; $63bb: $e0 $c0
    add b                                         ; $63bd: $80
    pop hl                                        ; $63be: $e1
    xor c                                         ; $63bf: $a9
    nop                                           ; $63c0: $00
    ld l, l                                       ; $63c1: $6d
    pop hl                                        ; $63c2: $e1

Jump_06b_63c3:
    nop                                           ; $63c3: $00
    rst $38                                       ; $63c4: $ff
    nop                                           ; $63c5: $00
    ld [c], a                                     ; $63c6: $e2
    cp a                                          ; $63c7: $bf
    ld [bc], a                                    ; $63c8: $02
    and c                                         ; $63c9: $a1
    ld b, [hl]                                    ; $63ca: $46
    rst $38                                       ; $63cb: $ff
    add c                                         ; $63cc: $81
    or d                                          ; $63cd: $b2
    ld a, $cb                                     ; $63ce: $3e $cb
    ld h, d                                       ; $63d0: $62
    halt                                          ; $63d1: $76
    dec [hl]                                      ; $63d2: $35
    res 0, e                                      ; $63d3: $cb $83
    inc a                                         ; $63d5: $3c
    ld b, h                                       ; $63d6: $44
    ei                                            ; $63d7: $fb
    jr nz, jr_06b_63b5                            ; $63d8: $20 $db

    ld b, d                                       ; $63da: $42
    nop                                           ; $63db: $00
    rst $38                                       ; $63dc: $ff
    ld [hl], c                                    ; $63dd: $71
    ld h, [hl]                                    ; $63de: $66
    cp a                                          ; $63df: $bf
    nop                                           ; $63e0: $00
    add c                                         ; $63e1: $81
    ld b, $69                                     ; $63e2: $06 $69
    nop                                           ; $63e4: $00
    ld l, c                                       ; $63e5: $69
    dec [hl]                                      ; $63e6: $35
    add b                                         ; $63e7: $80
    ld [c], a                                     ; $63e8: $e2
    inc a                                         ; $63e9: $3c
    ld h, e                                       ; $63ea: $63
    nop                                           ; $63eb: $00
    rst $38                                       ; $63ec: $ff
    db $ec                                        ; $63ed: $ec
    and h                                         ; $63ee: $a4
    ld l, e                                       ; $63ef: $6b
    ld bc, $463f                                  ; $63f0: $01 $3f $46
    or d                                          ; $63f3: $b2
    adc h                                         ; $63f4: $8c
    ld a, l                                       ; $63f5: $7d
    ld b, l                                       ; $63f6: $45
    ld a, [hl-]                                   ; $63f7: $3a
    ret nz                                        ; $63f8: $c0

    ldh [rP1], a                                  ; $63f9: $e0 $00
    ldh [$c3], a                                  ; $63fb: $e0 $c3
    ld b, [hl]                                    ; $63fd: $46
    sbc [hl]                                      ; $63fe: $9e
    db $db                                        ; $63ff: $db
    ld b, e                                       ; $6400: $43
    nop                                           ; $6401: $00
    rst $38                                       ; $6402: $ff
    db $ec                                        ; $6403: $ec
    and e                                         ; $6404: $a3
    inc bc                                        ; $6405: $03
    jp nz, $b2b2                                  ; $6406: $c2 $b2 $b2

    inc b                                         ; $6409: $04
    ccf                                           ; $640a: $3f
    ldh [$80], a                                  ; $640b: $e0 $80
    ldh [$ce], a                                  ; $640d: $e0 $ce
    ret nz                                        ; $640f: $c0

    ldh [$bc], a                                  ; $6410: $e0 $bc
    ld hl, $8181                                  ; $6412: $21 $81 $81
    nop                                           ; $6415: $00
    rst $38                                       ; $6416: $ff
    nop                                           ; $6417: $00
    jp nz, Jump_000_03f6                          ; $6418: $c2 $f6 $03

    pop bc                                        ; $641b: $c1
    ld b, [hl]                                    ; $641c: $46
    or d                                          ; $641d: $b2
    call nz, Call_000_3e40                        ; $641e: $c4 $40 $3e
    ld l, e                                       ; $6421: $6b
    ld l, h                                       ; $6422: $6c
    dec [hl]                                      ; $6423: $35
    inc bc                                        ; $6424: $03
    adc $bb                                       ; $6425: $ce $bb
    add b                                         ; $6427: $80
    jp nz, $612c                                  ; $6428: $c2 $2c $61

    nop                                           ; $642b: $00
    rst $38                                       ; $642c: $ff
    db $ec                                        ; $642d: $ec
    ld [bc], a                                    ; $642e: $02
    ld l, l                                       ; $642f: $6d
    ld bc, $8048                                  ; $6430: $01 $48 $80
    rrca                                          ; $6433: $0f
    adc d                                         ; $6434: $8a
    add l                                         ; $6435: $85
    ld b, l                                       ; $6436: $45
    ld a, [hl-]                                   ; $6437: $3a
    ld b, c                                       ; $6438: $41
    and b                                         ; $6439: $a0
    nop                                           ; $643a: $00
    call nz, Call_000_037a                        ; $643b: $c4 $7a $03
    nop                                           ; $643e: $00
    rst $38                                       ; $643f: $ff
    ld [bc], a                                    ; $6440: $02
    ld l, a                                       ; $6441: $6f
    ld bc, $08a0                                  ; $6442: $01 $a0 $08
    add c                                         ; $6445: $81
    ld b, l                                       ; $6446: $45

jr_06b_6447:
    ld b, b                                       ; $6447: $40

jr_06b_6448:
    add c                                         ; $6448: $81
    and d                                         ; $6449: $a2
    ld a, a                                       ; $644a: $7f
    add d                                         ; $644b: $82
    add b                                         ; $644c: $80
    and e                                         ; $644d: $a3
    nop                                           ; $644e: $00
    rst $38                                       ; $644f: $ff
    ret c                                         ; $6450: $d8

    add l                                         ; $6451: $85
    add b                                         ; $6452: $80
    rlca                                          ; $6453: $07
    add d                                         ; $6454: $82
    add l                                         ; $6455: $85
    add b                                         ; $6456: $80
    add a                                         ; $6457: $87
    add l                                         ; $6458: $85
    ld b, e                                       ; $6459: $43
    add b                                         ; $645a: $80
    dec [hl]                                      ; $645b: $35
    ld l, e                                       ; $645c: $6b
    pop bc                                        ; $645d: $c1
    ld l, h                                       ; $645e: $6c
    ld b, c                                       ; $645f: $41
    and b                                         ; $6460: $a0
    ccf                                           ; $6461: $3f
    add b                                         ; $6462: $80
    add b                                         ; $6463: $80
    add e                                         ; $6464: $83
    nop                                           ; $6465: $00
    rst $38                                       ; $6466: $ff
    rlca                                          ; $6467: $07
    add h                                         ; $6468: $84
    add e                                         ; $6469: $83
    add [hl]                                      ; $646a: $86
    ei                                            ; $646b: $fb
    add l                                         ; $646c: $85
    or d                                          ; $646d: $b2
    pop bc                                        ; $646e: $c1
    pop hl                                        ; $646f: $e1
    dec [hl]                                      ; $6470: $35
    ld l, [hl]                                    ; $6471: $6e
    ld [hl], b                                    ; $6472: $70
    ld [hl], c                                    ; $6473: $71
    adc c                                         ; $6474: $89
    pop bc                                        ; $6475: $c1
    add e                                         ; $6476: $83
    add b                                         ; $6477: $80
    and d                                         ; $6478: $a2
    and $80                                       ; $6479: $e6 $80
    nop                                           ; $647b: $00
    db $fd                                        ; $647c: $fd
    ld b, $a4                                     ; $647d: $06 $a4
    pop bc                                        ; $647f: $c1
    ld [c], a                                     ; $6480: $e2
    ld b, l                                       ; $6481: $45
    scf                                           ; $6482: $37
    add hl, sp                                    ; $6483: $39
    jr c, jr_06b_6447                             ; $6484: $38 $c1

    ldh [$be], a                                  ; $6486: $e0 $be
    ldh [$39], a                                  ; $6488: $e0 $39
    add l                                         ; $648a: $85
    adc e                                         ; $648b: $8b
    ld a, a                                       ; $648c: $7f
    ld h, b                                       ; $648d: $60
    pop hl                                        ; $648e: $e1
    inc bc                                        ; $648f: $03
    ld b, b                                       ; $6490: $40
    nop                                           ; $6491: $00
    db $fc                                        ; $6492: $fc
    ld b, $a3                                     ; $6493: $06 $a3
    rlca                                          ; $6495: $07
    add d                                         ; $6496: $82
    add e                                         ; $6497: $83
    ld [c], a                                     ; $6498: $e2
    cp a                                          ; $6499: $bf
    pop hl                                        ; $649a: $e1
    add c                                         ; $649b: $81
    ld h, b                                       ; $649c: $60
    add b                                         ; $649d: $80
    ld b, c                                       ; $649e: $41
    add d                                         ; $649f: $82
    ldh [rP1], a                                  ; $64a0: $e0 $00
    ld e, [hl]                                    ; $64a2: $5e
    adc $40                                       ; $64a3: $ce $40
    ld c, c                                       ; $64a5: $49
    ld b, d                                       ; $64a6: $42
    add $82                                       ; $64a7: $c6 $82
    pop bc                                        ; $64a9: $c1
    db $e4                                        ; $64aa: $e4
    jr c, jr_06b_64e4                             ; $64ab: $38 $37

    ld b, l                                       ; $64ad: $45
    rlca                                          ; $64ae: $07
    or d                                          ; $64af: $b2
    ld a, c                                       ; $64b0: $79
    adc l                                         ; $64b1: $8d
    ld a, [hl]                                    ; $64b2: $7e
    ld b, d                                       ; $64b3: $42
    nop                                           ; $64b4: $00
    ld e, e                                       ; $64b5: $5b
    call Call_06b_7463                            ; $64b6: $cd $63 $74
    ld [bc], a                                    ; $64b9: $02
    add $84                                       ; $64ba: $c6 $84
    ld a, [hl]                                    ; $64bc: $7e
    add e                                         ; $64bd: $83
    db $e3                                        ; $64be: $e3
    ld a, c                                       ; $64bf: $79
    ld a, d                                       ; $64c0: $7a
    ld a, e                                       ; $64c1: $7b
    adc a                                         ; $64c2: $8f
    sbc h                                         ; $64c3: $9c
    sbc a                                         ; $64c4: $9f
    jr nc, jr_06b_6448                            ; $64c5: $30 $81

    ld b, b                                       ; $64c7: $40
    nop                                           ; $64c8: $00
    jr c, @+$11                                   ; $64c9: $38 $0f

    add e                                         ; $64cb: $83
    ld e, b                                       ; $64cc: $58
    ld [hl+], a                                   ; $64cd: $22
    add h                                         ; $64ce: $84
    jp nz, $8047                                  ; $64cf: $c2 $47 $80

    pop bc                                        ; $64d2: $c1
    push hl                                       ; $64d3: $e5
    ld a, [hl]                                    ; $64d4: $7e
    nop                                           ; $64d5: $00
    ld b, d                                       ; $64d6: $42
    ret c                                         ; $64d7: $d8

    ld [hl], e                                    ; $64d8: $73
    jr nz, jr_06b_64db                            ; $64d9: $20 $00

jr_06b_64db:
    scf                                           ; $64db: $37
    ld e, b                                       ; $64dc: $58

jr_06b_64dd:
    ld hl, $d3d2                                  ; $64dd: $21 $d2 $d3
    rlca                                          ; $64e0: $07
    add e                                         ; $64e1: $83
    sbc a                                         ; $64e2: $9f
    and d                                         ; $64e3: $a2

jr_06b_64e4:
    ld h, e                                       ; $64e4: $63
    sbc l                                         ; $64e5: $9d
    sbc h                                         ; $64e6: $9c
    add hl, bc                                    ; $64e7: $09
    ld h, b                                       ; $64e8: $60
    adc b                                         ; $64e9: $88
    ld h, b                                       ; $64ea: $60
    pop bc                                        ; $64eb: $c1
    and $46                                       ; $64ec: $e6 $46
    and c                                         ; $64ee: $a1
    ld b, e                                       ; $64ef: $43
    ld b, e                                       ; $64f0: $43
    ld b, b                                       ; $64f1: $40
    nop                                           ; $64f2: $00
    dec [hl]                                      ; $64f3: $35
    rrca                                          ; $64f4: $0f
    add l                                         ; $64f5: $85
    ld c, e                                       ; $64f6: $4b

Jump_06b_64f7:
    inc bc                                        ; $64f7: $03
    ret nc                                        ; $64f8: $d0

    ldh [$08], a                                  ; $64f9: $e0 $08
    and b                                         ; $64fb: $a0
    ld c, c                                       ; $64fc: $49

jr_06b_64fd:
    ld b, b                                       ; $64fd: $40
    dec sp                                        ; $64fe: $3b
    dec b                                         ; $64ff: $05
    pop hl                                        ; $6500: $e1
    adc l                                         ; $6501: $8d
    add b                                         ; $6502: $80
    pop bc                                        ; $6503: $c1
    ldh [$9c], a                                  ; $6504: $e0 $9c
    sbc a                                         ; $6506: $9f
    ld b, e                                       ; $6507: $43
    ld b, e                                       ; $6508: $43
    nop                                           ; $6509: $00
    jr c, jr_06b_652e                             ; $650a: $38 $22

    ld b, e                                       ; $650c: $43
    sbc a                                         ; $650d: $9f
    rst $20                                       ; $650e: $e7
    sbc h                                         ; $650f: $9c
    ld b, l                                       ; $6510: $45
    ld b, c                                       ; $6511: $41
    db $d3                                        ; $6512: $d3
    jr nz, jr_06b_64dd                            ; $6513: $20 $c8

    add c                                         ; $6515: $81
    or d                                          ; $6516: $b2
    ld b, l                                       ; $6517: $45
    ccf                                           ; $6518: $3f
    rlca                                          ; $6519: $07
    ld b, e                                       ; $651a: $43
    ld b, l                                       ; $651b: $45
    ld b, [hl]                                    ; $651c: $46
    add $c1                                       ; $651d: $c6 $c1
    ld a, [hl]                                    ; $651f: $7e
    ld bc, $2075                                  ; $6520: $01 $75 $20
    dec hl                                        ; $6523: $2b
    nop                                           ; $6524: $00
    nop                                           ; $6525: $00
    ld hl, sp-$04                                 ; $6526: $f8 $fc
    adc a                                         ; $6528: $8f
    ld b, b                                       ; $6529: $40
    sub $00                                       ; $652a: $d6 $00
    sbc h                                         ; $652c: $9c
    ld b, l                                       ; $652d: $45

jr_06b_652e:
    ld [hl], $62                                  ; $652e: $36 $62
    ld [hl], $45                                  ; $6530: $36 $45

Jump_06b_6532:
    ld c, $4f                                     ; $6532: $0e $4f
    ldh [$8c], a                                  ; $6534: $e0 $8c
    ld a, l                                       ; $6536: $7d
    or d                                          ; $6537: $b2
    rst $38                                       ; $6538: $ff
    ldh [$c6], a                                  ; $6539: $e0 $c6
    jp Jump_000_2575                              ; $653b: $c3 $75 $25


    nop                                           ; $653e: $00
    ld hl, sp+$58                                 ; $653f: $f8 $58
    adc a                                         ; $6541: $8f
    ld bc, $810e                                  ; $6542: $01 $0e $81
    pop bc                                        ; $6545: $c1
    ldh [$a7], a                                  ; $6546: $e0 $a7
    ld h, [hl]                                    ; $6548: $66

Jump_06b_6549:
    cp a                                          ; $6549: $bf
    ld [c], a                                     ; $654a: $e2
    ld a, a                                       ; $654b: $7f
    cp a                                          ; $654c: $bf
    ldh [$83], a                                  ; $654d: $e0 $83
    ld a, c                                       ; $654f: $79
    ld a, [hl]                                    ; $6550: $7e
    add h                                         ; $6551: $84
    ld [c], a                                     ; $6552: $e2
    ld hl, sp+$04                                 ; $6553: $f8 $04
    add l                                         ; $6555: $85
    adc d                                         ; $6556: $8a
    nop                                           ; $6557: $00
    sub b                                         ; $6558: $90
    ld [de], a                                    ; $6559: $12
    jr nz, jr_06b_64fd                            ; $655a: $20 $a1

    rst $18                                       ; $655c: $df
    ld [hl], $62                                  ; $655d: $36 $62
    ld h, a                                       ; $655f: $67
    and e                                         ; $6560: $a3
    ld l, b                                       ; $6561: $68
    cp a                                          ; $6562: $bf
    ld [c], a                                     ; $6563: $e2
    or d                                          ; $6564: $b2
    adc [hl]                                      ; $6565: $8e
    add hl, de                                    ; $6566: $19
    ld a, e                                       ; $6567: $7b
    add h                                         ; $6568: $84
    db $e3                                        ; $6569: $e3
    ld a, b                                       ; $656a: $78
    ld b, b                                       ; $656b: $40
    ret c                                         ; $656c: $d8

    reti                                          ; $656d: $d9


    add l                                         ; $656e: $85
    ld l, $00                                     ; $656f: $2e $00
    ld l, a                                       ; $6571: $6f
    ld e, a                                       ; $6572: $5f
    ld bc, $9e3f                                  ; $6573: $01 $3f $9e
    xor b                                         ; $6576: $a8
    xor c                                         ; $6577: $a9
    ld l, h                                       ; $6578: $6c
    dec [hl]                                      ; $6579: $35
    dec [hl]                                      ; $657a: $35
    cp a                                          ; $657b: $bf
    pop hl                                        ; $657c: $e1
    adc l                                         ; $657d: $8d
    ld bc, $848c                                  ; $657e: $01 $8c $84
    ldh [$72], a                                  ; $6581: $e0 $72
    and e                                         ; $6583: $a3
    jp c, Jump_06b_59db                           ; $6584: $da $db $59

    inc sp                                        ; $6587: $33
    nop                                           ; $6588: $00
    ld a, [hl+]                                   ; $6589: $2a
    inc h                                         ; $658a: $24
    ld b, c                                       ; $658b: $41
    sbc [hl]                                      ; $658c: $9e
    rst $38                                       ; $658d: $ff
    ld [hl], $6e                                  ; $658e: $36 $6e
    ld l, a                                       ; $6590: $6f
    ld l, h                                       ; $6591: $6c
    dec [hl]                                      ; $6592: $35
    and e                                         ; $6593: $a3
    xor d                                         ; $6594: $aa
    cp e                                          ; $6595: $bb
    inc c                                         ; $6596: $0c
    db $fc                                        ; $6597: $fc
    ret nz                                        ; $6598: $c0

    ld c, [hl]                                    ; $6599: $4e
    ld bc, $d7d6                                  ; $659a: $01 $d6 $d7
    dec bc                                        ; $659d: $0b
    ld h, l                                       ; $659e: $65
    ld e, c                                       ; $659f: $59
    ld [hl-], a                                   ; $65a0: $32
    nop                                           ; $65a1: $00
    db $eb                                        ; $65a2: $eb
    ret                                           ; $65a3: $c9


    ld b, b                                       ; $65a4: $40
    ld a, h                                       ; $65a5: $7c
    nop                                           ; $65a6: $00
    ldh [$bf], a                                  ; $65a7: $e0 $bf
    ldh [$6c], a                                  ; $65a9: $e0 $6c
    ld l, a                                       ; $65ab: $6f
    ld l, [hl]                                    ; $65ac: $6e
    ld [hl], $9c                                  ; $65ad: $36 $9c

Call_06b_65af:
    ld [$8fe0], sp                                ; $65af: $08 $e0 $8f
    push af                                       ; $65b2: $f5
    or $d8                                        ; $65b3: $f6 $d8
    reti                                          ; $65b5: $d9


    adc e                                         ; $65b6: $8b
    inc bc                                        ; $65b7: $03
    ld e, c                                       ; $65b8: $59
    inc d                                         ; $65b9: $14
    nop                                           ; $65ba: $00
    inc l                                         ; $65bb: $2c
    ret nc                                        ; $65bc: $d0

    dec c                                         ; $65bd: $0d
    pop de                                        ; $65be: $d1
    add b                                         ; $65bf: $80
    pop bc                                        ; $65c0: $c1
    ld l, [hl]                                    ; $65c1: $6e
    ld l, a                                       ; $65c2: $6f
    pop bc                                        ; $65c3: $c1
    pop hl                                        ; $65c4: $e1
    jp z, Jump_06b_72c7                           ; $65c5: $ca $c7 $72

    ld b, e                                       ; $65c8: $43
    ld e, c                                       ; $65c9: $59
    ld [de], a                                    ; $65ca: $12
    jr nz, jr_06b_65d7                            ; $65cb: $20 $0a

    adc h                                         ; $65cd: $8c
    adc [hl]                                      ; $65ce: $8e
    ld [hl+], a                                   ; $65cf: $22
    ld a, [hl]                                    ; $65d0: $7e
    ldh [$c1], a                                  ; $65d1: $e0 $c1
    pop hl                                        ; $65d3: $e1
    jp z, $a0c2                                   ; $65d4: $ca $c2 $a0

jr_06b_65d7:
    adc a                                         ; $65d7: $8f
    xor l                                         ; $65d8: $ad
    nop                                           ; $65d9: $00
    reti                                          ; $65da: $d9


    nop                                           ; $65db: $00
    ld hl, $8043                                  ; $65dc: $21 $43 $80
    and b                                         ; $65df: $a0
    cp $e0                                        ; $65e0: $fe $e0
    ld [de], a                                    ; $65e2: $12
    and d                                         ; $65e3: $a2
    db $f4                                        ; $65e4: $f4
    add c                                         ; $65e5: $81
    ld h, e                                       ; $65e6: $63
    dec d                                         ; $65e7: $15
    nop                                           ; $65e8: $00
    ld d, b                                       ; $65e9: $50
    ld hl, $0043                                  ; $65ea: $21 $43 $00
    call c, $d563                                 ; $65ed: $dc $63 $d5
    inc hl                                        ; $65f0: $23
    sub d                                         ; $65f1: $92
    ld h, b                                       ; $65f2: $60
    sbc $39                                       ; $65f3: $de $39
    nop                                           ; $65f5: $00
    ld c, [hl]                                    ; $65f6: $4e
    ld c, h                                       ; $65f7: $4c
    ld bc, $6006                                  ; $65f8: $01 $06 $60
    cp [hl]                                       ; $65fb: $be
    ld h, b                                       ; $65fc: $60
    nop                                           ; $65fd: $00
    jp z, $85c4                                   ; $65fe: $ca $c4 $85

    ld hl, sp+$00                                 ; $6601: $f8 $00
    ld b, d                                       ; $6603: $42
    nop                                           ; $6604: $00
    nop                                           ; $6605: $00
    nop                                           ; $6606: $00
    pop bc                                        ; $6607: $c1
    nop                                           ; $6608: $00
    rst $38                                       ; $6609: $ff
    rst $38                                       ; $660a: $ff
    rst $38                                       ; $660b: $ff
    rst $38                                       ; $660c: $ff
    rst $38                                       ; $660d: $ff
    rst $38                                       ; $660e: $ff
    rst $38                                       ; $660f: $ff
    rst $38                                       ; $6610: $ff
    rst $38                                       ; $6611: $ff
    rst $38                                       ; $6612: $ff
    nop                                           ; $6613: $00
    nop                                           ; $6614: $00
    dec c                                         ; $6615: $0d
    add b                                         ; $6616: $80
    cp $e0                                        ; $6617: $fe $e0
    nop                                           ; $6619: $00
    ld b, b                                       ; $661a: $40
    ret c                                         ; $661b: $d8

    push hl                                       ; $661c: $e5
    rst $30                                       ; $661d: $f7
    and $ff                                       ; $661e: $e6 $ff
    rst $38                                       ; $6620: $ff
    rst $38                                       ; $6621: $ff
    rst $30                                       ; $6622: $f7
    nop                                           ; $6623: $00
    nop                                           ; $6624: $00
    nop                                           ; $6625: $00
    ld bc, $0e00                                  ; $6626: $01 $00 $0e
    inc bc                                        ; $6629: $03
    ld bc, $0f01                                  ; $662a: $01 $01 $0f
    inc bc                                        ; $662d: $03
    ld bc, $1002                                  ; $662e: $01 $02 $10
    inc bc                                        ; $6631: $03
    ld bc, $1103                                  ; $6632: $01 $03 $11
    inc bc                                        ; $6635: $03
    ld bc, $0d04                                  ; $6636: $01 $04 $0d
    inc b                                         ; $6639: $04
    ld bc, $1205                                  ; $663a: $01 $05 $12
    inc b                                         ; $663d: $04
    ld bc, $0c06                                  ; $663e: $01 $06 $0c
    dec b                                         ; $6641: $05
    ld bc, $1407                                  ; $6642: $01 $07 $14
    dec b                                         ; $6645: $05
    ld bc, $0c08                                  ; $6646: $01 $08 $0c
    ld b, $01                                     ; $6649: $06 $01
    add hl, bc                                    ; $664b: $09
    inc d                                         ; $664c: $14
    ld b, $01                                     ; $664d: $06 $01
    ld a, [bc]                                    ; $664f: $0a
    dec d                                         ; $6650: $15
    ld b, $01                                     ; $6651: $06 $01
    dec bc                                        ; $6653: $0b
    inc c                                         ; $6654: $0c
    rlca                                          ; $6655: $07
    ld bc, $130c                                  ; $6656: $01 $0c $13
    rlca                                          ; $6659: $07
    ld bc, $150d                                  ; $665a: $01 $0d $15
    rlca                                          ; $665d: $07
    ld bc, $160e                                  ; $665e: $01 $0e $16
    rlca                                          ; $6661: $07
    ld bc, $0b0f                                  ; $6662: $01 $0f $0b
    ld [$1001], sp                                ; $6665: $08 $01 $10
    inc de                                        ; $6668: $13
    ld [$1102], sp                                ; $6669: $08 $02 $11
    inc d                                         ; $666c: $14
    ld [$1201], sp                                ; $666d: $08 $01 $12
    dec d                                         ; $6670: $15
    ld [$1301], sp                                ; $6671: $08 $01 $13
    ld d, $08                                     ; $6674: $16 $08
    ld bc, $1714                                  ; $6676: $01 $14 $17
    ld [$1501], sp                                ; $6679: $08 $01 $15
    ld hl, $0108                                  ; $667c: $21 $08 $01
    ld d, $23                                     ; $667f: $16 $23
    ld [$1701], sp                                ; $6681: $08 $01 $17
    dec bc                                        ; $6684: $0b
    add hl, bc                                    ; $6685: $09
    ld bc, $1418                                  ; $6686: $01 $18 $14
    add hl, bc                                    ; $6689: $09
    ld bc, $1519                                  ; $668a: $01 $19 $15
    add hl, bc                                    ; $668d: $09
    ld bc, $181a                                  ; $668e: $01 $1a $18
    add hl, bc                                    ; $6691: $09
    ld bc, $191b                                  ; $6692: $01 $1b $19
    add hl, bc                                    ; $6695: $09
    ld bc, $1a1c                                  ; $6696: $01 $1c $1a
    add hl, bc                                    ; $6699: $09
    ld bc, $1f1d                                  ; $669a: $01 $1d $1f
    add hl, bc                                    ; $669d: $09
    ld bc, $0c1e                                  ; $669e: $01 $1e $0c
    ld a, [bc]                                    ; $66a1: $0a
    ld bc, $1c1f                                  ; $66a2: $01 $1f $1c
    ld a, [bc]                                    ; $66a5: $0a
    ld bc, $1d20                                  ; $66a6: $01 $20 $1d
    ld a, [bc]                                    ; $66a9: $0a
    ld bc, $1e21                                  ; $66aa: $01 $21 $1e
    ld a, [bc]                                    ; $66ad: $0a
    ld bc, $0c22                                  ; $66ae: $01 $22 $0c
    dec bc                                        ; $66b1: $0b
    ld bc, $1423                                  ; $66b2: $01 $23 $14
    dec bc                                        ; $66b5: $0b
    ld bc, $0c24                                  ; $66b6: $01 $24 $0c
    inc c                                         ; $66b9: $0c
    ld bc, $1325                                  ; $66ba: $01 $25 $13
    inc c                                         ; $66bd: $0c
    ld bc, $1426                                  ; $66be: $01 $26 $14
    inc c                                         ; $66c1: $0c
    ld bc, $1527                                  ; $66c2: $01 $27 $15
    inc c                                         ; $66c5: $0c
    ld bc, $0d28                                  ; $66c6: $01 $28 $0d
    dec c                                         ; $66c9: $0d
    ld bc, $1229                                  ; $66ca: $01 $29 $12
    dec c                                         ; $66cd: $0d
    ld bc, $132a                                  ; $66ce: $01 $2a $13
    dec c                                         ; $66d1: $0d
    ld bc, $142b                                  ; $66d2: $01 $2b $14
    dec c                                         ; $66d5: $0d
    ld bc, $152c                                  ; $66d6: $01 $2c $15
    dec c                                         ; $66d9: $0d
    ld bc, $162d                                  ; $66da: $01 $2d $16
    dec c                                         ; $66dd: $0d
    ld bc, $182e                                  ; $66de: $01 $2e $18
    dec c                                         ; $66e1: $0d
    ld bc, $192f                                  ; $66e2: $01 $2f $19
    dec c                                         ; $66e5: $0d
    ld bc, $2730                                  ; $66e6: $01 $30 $27
    dec c                                         ; $66e9: $0d
    ld bc, $0e31                                  ; $66ea: $01 $31 $0e
    ld c, $01                                     ; $66ed: $0e $01
    ld [hl-], a                                   ; $66ef: $32
    rrca                                          ; $66f0: $0f
    ld c, $01                                     ; $66f1: $0e $01
    inc sp                                        ; $66f3: $33
    db $10                                        ; $66f4: $10
    ld c, $01                                     ; $66f5: $0e $01
    inc [hl]                                      ; $66f7: $34
    ld de, $010e                                  ; $66f8: $11 $0e $01
    dec [hl]                                      ; $66fb: $35
    ld [de], a                                    ; $66fc: $12
    ld c, $01                                     ; $66fd: $0e $01
    ld [hl], $19                                  ; $66ff: $36 $19
    ld c, $02                                     ; $6701: $0e $02
    scf                                           ; $6703: $37
    ld a, [de]                                    ; $6704: $1a
    ld c, $01                                     ; $6705: $0e $01
    jr c, @+$1d                                   ; $6707: $38 $1b

    ld c, $01                                     ; $6709: $0e $01
    add hl, sp                                    ; $670b: $39
    jr z, @+$10                                   ; $670c: $28 $0e

    ld bc, $1a3a                                  ; $670e: $01 $3a $1a
    rrca                                          ; $6711: $0f
    ld bc, $1b3b                                  ; $6712: $01 $3b $1b
    rrca                                          ; $6715: $0f
    ld bc, $1c3c                                  ; $6716: $01 $3c $1c
    rrca                                          ; $6719: $0f
    ld bc, $273d                                  ; $671a: $01 $3d $27
    rrca                                          ; $671d: $0f
    ld bc, $1d3e                                  ; $671e: $01 $3e $1d
    db $10                                        ; $6721: $10
    ld bc, $283f                                  ; $6722: $01 $3f $28
    db $10                                        ; $6725: $10
    ld bc, $1e40                                  ; $6726: $01 $40 $1e
    ld [de], a                                    ; $6729: $12
    ld bc, $2841                                  ; $672a: $01 $41 $28
    ld [de], a                                    ; $672d: $12
    ld bc, $1f42                                  ; $672e: $01 $42 $1f
    inc de                                        ; $6731: $13
    ld bc, $2043                                  ; $6732: $01 $43 $20
    inc de                                        ; $6735: $13
    ld bc, $2844                                  ; $6736: $01 $44 $28
    inc de                                        ; $6739: $13
    ld bc, $2345                                  ; $673a: $01 $45 $23
    dec d                                         ; $673d: $15
    ld bc, $2546                                  ; $673e: $01 $46 $25
    dec d                                         ; $6741: $15
    ld bc, $2847                                  ; $6742: $01 $47 $28
    ld a, [de]                                    ; $6745: $1a
    ld bc, $2948                                  ; $6746: $01 $48 $29
    ld a, [de]                                    ; $6749: $1a
    ld bc, $2a49                                  ; $674a: $01 $49 $2a
    dec de                                        ; $674d: $1b
    ld bc, $2b4a                                  ; $674e: $01 $4a $2b
    inc e                                         ; $6751: $1c
    ld bc, $2b4b                                  ; $6752: $01 $4b $2b
    dec e                                         ; $6755: $1d
    ld bc, $2b4c                                  ; $6756: $01 $4c $2b
    ld e, $01                                     ; $6759: $1e $01
    ld c, l                                       ; $675b: $4d
    inc l                                         ; $675c: $2c
    ld e, $01                                     ; $675d: $1e $01
    ld c, [hl]                                    ; $675f: $4e
    dec hl                                        ; $6760: $2b
    rra                                           ; $6761: $1f
    ld bc, $2c4f                                  ; $6762: $01 $4f $2c
    rra                                           ; $6765: $1f
    ld bc, $2c50                                  ; $6766: $01 $50 $2c
    jr nz, jr_06b_676c                            ; $6769: $20 $01

    ld d, c                                       ; $676b: $51

jr_06b_676c:
    add hl, hl                                    ; $676c: $29
    ld [hl+], a                                   ; $676d: $22
    ld bc, $2c52                                  ; $676e: $01 $52 $2c
    ld [hl+], a                                   ; $6771: $22
    ld bc, $2353                                  ; $6772: $01 $53 $23
    inc h                                         ; $6775: $24
    ld bc, $2354                                  ; $6776: $01 $54 $23
    dec h                                         ; $6779: $25
    ld bc, $2155                                  ; $677a: $01 $55 $21
    ld h, $01                                     ; $677d: $26 $01
    ld d, [hl]                                    ; $677f: $56
    add hl, hl                                    ; $6780: $29
    ld h, $01                                     ; $6781: $26 $01
    ld d, a                                       ; $6783: $57
    ld hl, $0127                                  ; $6784: $21 $27 $01
    ld e, b                                       ; $6787: $58
    ld [hl+], a                                   ; $6788: $22
    daa                                           ; $6789: $27
    ld bc, $2459                                  ; $678a: $01 $59 $24
    daa                                           ; $678d: $27
    ld bc, $215a                                  ; $678e: $01 $5a $21
    jr z, jr_06b_6794                             ; $6791: $28 $01

    ld e, e                                       ; $6793: $5b

jr_06b_6794:
    inc h                                         ; $6794: $24
    jr z, jr_06b_6798                             ; $6795: $28 $01

    ld e, h                                       ; $6797: $5c

jr_06b_6798:
    ld a, [hl+]                                   ; $6798: $2a
    jr z, jr_06b_679c                             ; $6799: $28 $01

    ld e, l                                       ; $679b: $5d

jr_06b_679c:
    inc l                                         ; $679c: $2c
    jr z, jr_06b_67a0                             ; $679d: $28 $01

    ld e, [hl]                                    ; $679f: $5e

jr_06b_67a0:
    jr nz, @+$2b                                  ; $67a0: $20 $29

    ld bc, $215f                                  ; $67a2: $01 $5f $21
    add hl, hl                                    ; $67a5: $29
    ld bc, $2060                                  ; $67a6: $01 $60 $20
    ld a, [hl+]                                   ; $67a9: $2a
    ld bc, $2361                                  ; $67aa: $01 $61 $23
    ld a, [hl+]                                   ; $67ad: $2a
    ld bc, $2c62                                  ; $67ae: $01 $62 $2c
    ld a, [hl+]                                   ; $67b1: $2a
    ld bc, $2b63                                  ; $67b2: $01 $63 $2b
    dec hl                                        ; $67b5: $2b
    ld bc, $2c64                                  ; $67b6: $01 $64 $2c
    dec hl                                        ; $67b9: $2b
    ld bc, $2165                                  ; $67ba: $01 $65 $21
    inc l                                         ; $67bd: $2c
    ld bc, $2c66                                  ; $67be: $01 $66 $2c
    inc l                                         ; $67c1: $2c
    ld bc, $2a67                                  ; $67c2: $01 $67 $2a
    ld l, $01                                     ; $67c5: $2e $01
    ld l, b                                       ; $67c7: $68
    add hl, hl                                    ; $67c8: $29
    cpl                                           ; $67c9: $2f
    ld bc, $1a69                                  ; $67ca: $01 $69 $1a
    inc sp                                        ; $67cd: $33
    ld bc, $1c6a                                  ; $67ce: $01 $6a $1c
    inc sp                                        ; $67d1: $33
    ld bc, $246b                                  ; $67d2: $01 $6b $24
    inc sp                                        ; $67d5: $33
    ld bc, $176c                                  ; $67d6: $01 $6c $17
    inc [hl]                                      ; $67d9: $34
    ld bc, $196d                                  ; $67da: $01 $6d $19
    inc [hl]                                      ; $67dd: $34
    ld bc, $1a6e                                  ; $67de: $01 $6e $1a
    inc [hl]                                      ; $67e1: $34
    ld bc, $1c6f                                  ; $67e2: $01 $6f $1c
    inc [hl]                                      ; $67e5: $34
    ld bc, $1d70                                  ; $67e6: $01 $70 $1d
    inc [hl]                                      ; $67e9: $34
    ld bc, $2371                                  ; $67ea: $01 $71 $23
    inc [hl]                                      ; $67ed: $34
    ld bc, $1d72                                  ; $67ee: $01 $72 $1d
    dec [hl]                                      ; $67f1: $35
    ld bc, $1e73                                  ; $67f2: $01 $73 $1e
    dec [hl]                                      ; $67f5: $35
    ld bc, $1f74                                  ; $67f6: $01 $74 $1f
    dec [hl]                                      ; $67f9: $35
    ld bc, $2075                                  ; $67fa: $01 $75 $20
    dec [hl]                                      ; $67fd: $35
    ld bc, $1e76                                  ; $67fe: $01 $76 $1e
    ld [hl], $01                                  ; $6801: $36 $01
    ld [hl], a                                    ; $6803: $77
    rra                                           ; $6804: $1f
    ld [hl], $01                                  ; $6805: $36 $01
    ld a, b                                       ; $6807: $78
    inc e                                         ; $6808: $1c
    scf                                           ; $6809: $37
    ld bc, $1b79                                  ; $680a: $01 $79 $1b
    jr c, jr_06b_6810                             ; $680d: $38 $01

    ld a, d                                       ; $680f: $7a

jr_06b_6810:
    inc e                                         ; $6810: $1c
    jr c, jr_06b_6814                             ; $6811: $38 $01

    ld a, e                                       ; $6813: $7b

jr_06b_6814:
    add hl, de                                    ; $6814: $19
    add hl, sp                                    ; $6815: $39
    rst $38                                       ; $6816: $ff
    rst $38                                       ; $6817: $ff
    rst $38                                       ; $6818: $ff
    ld hl, $3b68                                  ; $6819: $21 $68 $3b
    ld l, h                                       ; $681c: $6c
    rst $38                                       ; $681d: $ff
    ld [hl], b                                    ; $681e: $70
    ld e, $71                                     ; $681f: $1e $71
    ccf                                           ; $6821: $3f
    ld c, $0e                                     ; $6822: $0e $0e
    dec c                                         ; $6824: $0d
    dec c                                         ; $6825: $0d
    dec c                                         ; $6826: $0d
    ld c, $ff                                     ; $6827: $0e $ff
    db $e3                                        ; $6829: $e3
    or $ea                                        ; $682a: $f6 $ea
    ld b, a                                       ; $682c: $47
    dec c                                         ; $682d: $0d
    ld c, l                                       ; $682e: $4d
    ld c, l                                       ; $682f: $4d
    db $e4                                        ; $6830: $e4
    ldh [$e1], a                                  ; $6831: $e0 $e1
    ldh [$f8], a                                  ; $6833: $e0 $f8
    pop hl                                        ; $6835: $e1
    ld c, l                                       ; $6836: $4d
    db $dd                                        ; $6837: $dd
    ldh [rNR41], a                                ; $6838: $e0 $20
    pop af                                        ; $683a: $f1
    pop hl                                        ; $683b: $e1
    call nc, $dbf1                                ; $683c: $d4 $f1 $db
    pop hl                                        ; $683f: $e1
    ld a, [$f6e4]                                 ; $6840: $fa $e4 $f6
    add sp, $4d                                   ; $6843: $e8 $4d
    xor c                                         ; $6845: $a9
    ld [c], a                                     ; $6846: $e2
    ret nz                                        ; $6847: $c0

    ld [c], a                                     ; $6848: $e2
    jr nz, @-$49                                  ; $6849: $20 $b5

    pop hl                                        ; $684b: $e1
    db $f4                                        ; $684c: $f4
    db $e4                                        ; $684d: $e4
    sub l                                         ; $684e: $95
    db $e4                                        ; $684f: $e4
    call nc, $85eb                                ; $6850: $d4 $eb $85
    rst $28                                       ; $6853: $ef
    dec c                                         ; $6854: $0d
    sub h                                         ; $6855: $94
    db $e3                                        ; $6856: $e3
    ld a, b                                       ; $6857: $78
    push hl                                       ; $6858: $e5
    ld [bc], a                                    ; $6859: $02
    cp $e0                                        ; $685a: $fe $e0
    dec l                                         ; $685c: $2d
    or b                                          ; $685d: $b0
    ldh [rHDMA5], a                               ; $685e: $e0 $55
    pop hl                                        ; $6860: $e1
    ld e, c                                       ; $6861: $59
    xor $85                                       ; $6862: $ee $85
    ldh a, [rLY]                                  ; $6864: $f0 $44
    pop hl                                        ; $6866: $e1
    call nz, $ffe4                                ; $6867: $c4 $e4 $ff
    dec c                                         ; $686a: $0d
    dec c                                         ; $686b: $0d
    ld l, l                                       ; $686c: $6d
    ld a, [bc]                                    ; $686d: $0a
    ld a, [hl+]                                   ; $686e: $2a
    ld l, e                                       ; $686f: $6b
    ld c, e                                       ; $6870: $4b
    ld c, e                                       ; $6871: $4b
    rlca                                          ; $6872: $07
    ld c, e                                       ; $6873: $4b
    ld c, l                                       ; $6874: $4d
    dec l                                         ; $6875: $2d
    pop af                                        ; $6876: $f1
    db $e3                                        ; $6877: $e3
    inc d                                         ; $6878: $14
    ld [c], a                                     ; $6879: $e2
    ld c, a                                       ; $687a: $4f
    db $eb                                        ; $687b: $eb
    nop                                           ; $687c: $00
    ld a, [c]                                     ; $687d: $f2
    inc de                                        ; $687e: $13
    db $e3                                        ; $687f: $e3
    rst $38                                       ; $6880: $ff
    ld c, l                                       ; $6881: $4d
    ld c, l                                       ; $6882: $4d
    ld l, l                                       ; $6883: $6d
    ld l, e                                       ; $6884: $6b
    ld a, [bc]                                    ; $6885: $0a
    ld a, [hl+]                                   ; $6886: $2a
    dec bc                                        ; $6887: $0b
    dec hl                                        ; $6888: $2b
    add a                                         ; $6889: $87
    dec bc                                        ; $688a: $0b
    dec bc                                        ; $688b: $0b
    dec c                                         ; $688c: $0d
    ld a, [hl]                                    ; $688d: $7e
    ld [c], a                                     ; $688e: $e2
    dec hl                                        ; $688f: $2b
    db $e3                                        ; $6890: $e3
    nop                                           ; $6891: $00
    rst $38                                       ; $6892: $ff
    inc de                                        ; $6893: $13
    db $e4                                        ; $6894: $e4
    ld l, l                                       ; $6895: $6d
    rst $30                                       ; $6896: $f7
    ld l, e                                       ; $6897: $6b
    dec c                                         ; $6898: $0d
    dec c                                         ; $6899: $0d
    call nz, Call_000_0be0                        ; $689a: $c4 $e0 $0b
    dec bc                                        ; $689d: $0b
    ld a, [bc]                                    ; $689e: $0a
    ld c, d                                       ; $689f: $4a
    rlca                                          ; $68a0: $07
    dec c                                         ; $68a1: $0d
    ld c, e                                       ; $68a2: $4b
    dec l                                         ; $68a3: $2d
    cp c                                          ; $68a4: $b9
    pop bc                                        ; $68a5: $c1
    cp b                                          ; $68a6: $b8
    pop bc                                        ; $68a7: $c1
    nop                                           ; $68a8: $00
    rst $38                                       ; $68a9: $ff
    sub a                                         ; $68aa: $97
    db $e3                                        ; $68ab: $e3
    pop bc                                        ; $68ac: $c1
    ldh [$fd], a                                  ; $68ad: $e0 $fd
    dec hl                                        ; $68af: $2b
    add l                                         ; $68b0: $85
    ldh [rOCPD], a                                ; $68b1: $e0 $6b
    dec bc                                        ; $68b3: $0b
    ld l, e                                       ; $68b4: $6b
    ld a, [bc]                                    ; $68b5: $0a
    ld a, [bc]                                    ; $68b6: $0a
    ld a, [bc]                                    ; $68b7: $0a
    and c                                         ; $68b8: $a1
    ld c, e                                       ; $68b9: $4b
    ret nz                                        ; $68ba: $c0

    ld [c], a                                     ; $68bb: $e2
    nop                                           ; $68bc: $00
    rst $38                                       ; $68bd: $ff
    ld b, h                                       ; $68be: $44
    call nz, $c14e                                ; $68bf: $c4 $4e $c1
    ld l, l                                       ; $68c2: $6d
    add h                                         ; $68c3: $84
    ldh [rOCPD], a                                ; $68c4: $e0 $6b
    rst $38                                       ; $68c6: $ff
    ld c, e                                       ; $68c7: $4b
    dec hl                                        ; $68c8: $2b
    ld c, e                                       ; $68c9: $4b
    ld l, e                                       ; $68ca: $6b
    ld c, e                                       ; $68cb: $4b
    ld a, [bc]                                    ; $68cc: $0a
    ld a, [hl+]                                   ; $68cd: $2a
    ld c, e                                       ; $68ce: $4b
    pop hl                                        ; $68cf: $e1
    dec bc                                        ; $68d0: $0b
    pop af                                        ; $68d1: $f1
    ldh [$39], a                                  ; $68d2: $e0 $39
    pop bc                                        ; $68d4: $c1
    nop                                           ; $68d5: $00
    rst $38                                       ; $68d6: $ff
    ld [bc], a                                    ; $68d7: $02
    rst $20                                       ; $68d8: $e7
    dec hl                                        ; $68d9: $2b
    dec bc                                        ; $68da: $0b
    ld c, e                                       ; $68db: $4b
    ld e, a                                       ; $68dc: $5f
    ld a, [bc]                                    ; $68dd: $0a
    ld c, d                                       ; $68de: $4a
    dec bc                                        ; $68df: $0b
    dec hl                                        ; $68e0: $2b
    dec hl                                        ; $68e1: $2b
    ld hl, sp-$20                                 ; $68e2: $f8 $e0
    ld c, e                                       ; $68e4: $4b
    or d                                          ; $68e5: $b2
    ldh [$f8], a                                  ; $68e6: $e0 $f8
    ret nz                                        ; $68e8: $c0

    rst $00                                       ; $68e9: $c7
    nop                                           ; $68ea: $00
    db $fd                                        ; $68eb: $fd
    add b                                         ; $68ec: $80
    db $e3                                        ; $68ed: $e3
    dec c                                         ; $68ee: $0d
    ld l, e                                       ; $68ef: $6b
    ld c, e                                       ; $68f0: $4b
    dec bc                                        ; $68f1: $0b
    ld a, [hl+]                                   ; $68f2: $2a
    ld l, a                                       ; $68f3: $6f
    ld c, d                                       ; $68f4: $4a
    ld l, e                                       ; $68f5: $6b
    ld a, [bc]                                    ; $68f6: $0a
    dec hl                                        ; $68f7: $2b
    add c                                         ; $68f8: $81

jr_06b_68f9:
    ret nz                                        ; $68f9: $c0

    dec c                                         ; $68fa: $0d
    ld l, l                                       ; $68fb: $6d
    or e                                          ; $68fc: $b3
    and c                                         ; $68fd: $a1
    jr nc, jr_06b_68f9                            ; $68fe: $30 $f9

    and b                                         ; $6900: $a0
    nop                                           ; $6901: $00
    rst $38                                       ; $6902: $ff
    dec c                                         ; $6903: $0d
    rst $00                                       ; $6904: $c7
    cp a                                          ; $6905: $bf
    ldh [$0a], a                                  ; $6906: $e0 $0a
    ld a, [bc]                                    ; $6908: $0a
    add c                                         ; $6909: $81
    ldh [$82], a                                  ; $690a: $e0 $82
    db $e3                                        ; $690c: $e3
    ld hl, sp-$7e                                 ; $690d: $f8 $82
    and a                                         ; $690f: $a7
    nop                                           ; $6910: $00
    rst $38                                       ; $6911: $ff
    push bc                                       ; $6912: $c5
    and e                                         ; $6913: $a3
    ld c, e                                       ; $6914: $4b
    dec hl                                        ; $6915: $2b
    dec bc                                        ; $6916: $0b
    ld a, [bc]                                    ; $6917: $0a
    ld a, [bc]                                    ; $6918: $0a
    add [hl]                                      ; $6919: $86
    ld b, b                                       ; $691a: $40
    ldh [rWX], a                                  ; $691b: $e0 $4b
    dec c                                         ; $691d: $0d
    jp nz, $aaa4                                  ; $691e: $c2 $a4 $aa

    jp nz, $ff00                                  ; $6921: $c2 $00 $ff

    add l                                         ; $6924: $85
    and l                                         ; $6925: $a5
    ld c, e                                       ; $6926: $4b
    add c                                         ; $6927: $81
    ld l, e                                       ; $6928: $6b
    ld a, a                                       ; $6929: $7f
    pop bc                                        ; $692a: $c1
    add c                                         ; $692b: $81
    pop hl                                        ; $692c: $e1
    add d                                         ; $692d: $82
    and c                                         ; $692e: $a1
    ld [hl], b                                    ; $692f: $70
    and l                                         ; $6930: $a5
    nop                                           ; $6931: $00
    rst $38                                       ; $6932: $ff
    add b                                         ; $6933: $80
    and $4b                                       ; $6934: $e6 $4b
    ld bc, $c36b                                  ; $6936: $01 $6b $c3
    ret nz                                        ; $6939: $c0

    ld bc, $04e1                                  ; $693a: $01 $e1 $04
    jp $80b0                                      ; $693d: $c3 $b0 $80


    call nc, Call_000_0092                        ; $6940: $d4 $92 $00
    or b                                          ; $6943: $b0
    add b                                         ; $6944: $80
    add d                                         ; $6945: $82
    rla                                           ; $6946: $17
    dec l                                         ; $6947: $2d
    ld c, e                                       ; $6948: $4b
    ld l, e                                       ; $6949: $6b
    add d                                         ; $694a: $82
    ret nz                                        ; $694b: $c0

    ld l, e                                       ; $694c: $6b
    cp b                                          ; $694d: $b8
    ldh [rDIV], a                                 ; $694e: $e0 $04
    jp nz, $a4c4                                  ; $6950: $c2 $c4 $a4

    ret nz                                        ; $6953: $c0

    nop                                           ; $6954: $00
    rst $38                                       ; $6955: $ff
    ld e, b                                       ; $6956: $58
    and d                                         ; $6957: $a2
    ld c, h                                       ; $6958: $4c
    add c                                         ; $6959: $81
    inc bc                                        ; $695a: $03
    ret nz                                        ; $695b: $c0

    inc bc                                        ; $695c: $03
    ldh [$78], a                                  ; $695d: $e0 $78
    ldh [rKEY1], a                                ; $695f: $e0 $4d
    dec l                                         ; $6961: $2d
    ld [hl], b                                    ; $6962: $70
    add h                                         ; $6963: $84
    and c                                         ; $6964: $a1
    ld e, c                                       ; $6965: $59
    or e                                          ; $6966: $b3
    nop                                           ; $6967: $00
    sub h                                         ; $6968: $94
    inc c                                         ; $6969: $0c
    add c                                         ; $696a: $81
    dec hl                                        ; $696b: $2b
    dec c                                         ; $696c: $0d
    dec c                                         ; $696d: $0d
    ld b, $a0                                     ; $696e: $06 $a0
    nop                                           ; $6970: $00
    scf                                           ; $6971: $37
    pop hl                                        ; $6972: $e1
    inc bc                                        ; $6973: $03
    and e                                         ; $6974: $a3
    nop                                           ; $6975: $00
    rst $38                                       ; $6976: $ff
    ldh a, [$66]                                  ; $6977: $f0 $66
    call z, $c662                                 ; $6979: $cc $62 $c6
    and b                                         ; $697c: $a0
    rst $38                                       ; $697d: $ff
    pop bc                                        ; $697e: $c1
    ccf                                           ; $697f: $3f
    db $e4                                        ; $6980: $e4
    ld [hl], b                                    ; $6981: $70
    nop                                           ; $6982: $00
    rst $38                                       ; $6983: $ff
    nop                                           ; $6984: $00
    adc b                                         ; $6985: $88
    dec bc                                        ; $6986: $0b
    add b                                         ; $6987: $80
    pop bc                                        ; $6988: $c1
    add b                                         ; $6989: $80
    ld l, e                                       ; $698a: $6b
    dec c                                         ; $698b: $0d
    ld l, e                                       ; $698c: $6b
    ld a, $a0                                     ; $698d: $3e $a0
    nop                                           ; $698f: $00
    add c                                         ; $6990: $81
    and b                                         ; $6991: $a0
    jp $6d82                                      ; $6992: $c3 $82 $6d


    ld h, e                                       ; $6995: $63
    nop                                           ; $6996: $00
    rst $38                                       ; $6997: $ff
    pop bc                                        ; $6998: $c1
    ld h, d                                       ; $6999: $62
    nop                                           ; $699a: $00
    and b                                         ; $699b: $a0
    add b                                         ; $699c: $80
    pop bc                                        ; $699d: $c1
    inc hl                                        ; $699e: $23
    ld h, b                                       ; $699f: $60
    add b                                         ; $69a0: $80
    ld bc, $8381                                  ; $69a1: $01 $81 $83
    add d                                         ; $69a4: $82
    ld a, [hl]                                    ; $69a5: $7e
    and e                                         ; $69a6: $a3
    nop                                           ; $69a7: $00
    rst $38                                       ; $69a8: $ff
    ld [bc], a                                    ; $69a9: $02
    add d                                         ; $69aa: $82
    jp nz, $fec0                                  ; $69ab: $c2 $c0 $fe

    ldh [$0b], a                                  ; $69ae: $e0 $0b
    add b                                         ; $69b0: $80
    db $fd                                        ; $69b1: $fd
    ret nz                                        ; $69b2: $c0

    ccf                                           ; $69b3: $3f
    jp nz, $c601                                  ; $69b4: $c2 $01 $c6

    nop                                           ; $69b7: $00
    rst $38                                       ; $69b8: $ff
    adc $43                                       ; $69b9: $ce $43
    add c                                         ; $69bb: $81
    and b                                         ; $69bc: $a0
    ld a, a                                       ; $69bd: $7f
    and c                                         ; $69be: $a1
    dec bc                                        ; $69bf: $0b
    ld b, c                                       ; $69c0: $41
    dec bc                                        ; $69c1: $0b
    ccf                                           ; $69c2: $3f
    jp nz, $6640                                  ; $69c3: $c2 $40 $66

    nop                                           ; $69c6: $00
    rst $38                                       ; $69c7: $ff
    inc bc                                        ; $69c8: $03
    call nz, $600d                                ; $69c9: $c4 $0d $60
    ld c, e                                       ; $69cc: $4b
    dec b                                         ; $69cd: $05
    and c                                         ; $69ce: $a1
    add h                                         ; $69cf: $84
    add b                                         ; $69d0: $80
    add b                                         ; $69d1: $80
    or [hl]                                       ; $69d2: $b6
    add b                                         ; $69d3: $80
    dec hl                                        ; $69d4: $2b
    ld b, b                                       ; $69d5: $40
    ld h, l                                       ; $69d6: $65
    nop                                           ; $69d7: $00
    rst $38                                       ; $69d8: $ff
    ld c, b                                       ; $69d9: $48
    ld h, e                                       ; $69da: $63
    ld c, b                                       ; $69db: $48
    ld b, c                                       ; $69dc: $41
    dec l                                         ; $69dd: $2d
    inc hl                                        ; $69de: $23
    ld l, e                                       ; $69df: $6b
    ld c, e                                       ; $69e0: $4b
    jp Jump_06b_7aa0                              ; $69e1: $c3 $a0 $7a


    ret nz                                        ; $69e4: $c0

    cp d                                          ; $69e5: $ba
    ret nz                                        ; $69e6: $c0

    ld l, e                                       ; $69e7: $6b
    cp [hl]                                       ; $69e8: $be
    ld b, b                                       ; $69e9: $40
    cp e                                          ; $69ea: $bb
    and [hl]                                      ; $69eb: $a6
    nop                                           ; $69ec: $00
    nop                                           ; $69ed: $00
    db $dd                                        ; $69ee: $dd
    jp nc, $0985                                  ; $69ef: $d2 $85 $09

    add b                                         ; $69f2: $80
    rst $38                                       ; $69f3: $ff
    and b                                         ; $69f4: $a0
    db $fc                                        ; $69f5: $fc
    pop bc                                        ; $69f6: $c1
    cp l                                          ; $69f7: $bd
    ld b, b                                       ; $69f8: $40
    ld b, b                                       ; $69f9: $40
    ld h, h                                       ; $69fa: $64
    nop                                           ; $69fb: $00
    rst $38                                       ; $69fc: $ff
    inc d                                         ; $69fd: $14
    inc b                                         ; $69fe: $04
    ld b, d                                       ; $69ff: $42
    ret nz                                        ; $6a00: $c0

    db $e3                                        ; $6a01: $e3
    dec hl                                        ; $6a02: $2b
    pop bc                                        ; $6a03: $c1
    pop hl                                        ; $6a04: $e1
    dec c                                         ; $6a05: $0d
    ld a, [$3740]                                 ; $6a06: $fa $40 $37
    ret nz                                        ; $6a09: $c0

    dec a                                         ; $6a0a: $3d
    call nz, RST_30                               ; $6a0b: $c4 $30 $00
    rst $38                                       ; $6a0e: $ff
    ld [bc], a                                    ; $6a0f: $02
    ld h, h                                       ; $6a10: $64
    ld b, l                                       ; $6a11: $45
    ld b, b                                       ; $6a12: $40
    ret nz                                        ; $6a13: $c0

    pop bc                                        ; $6a14: $c1
    ld a, [bc]                                    ; $6a15: $0a
    dec bc                                        ; $6a16: $0b
    ld a, [$37a2]                                 ; $6a17: $fa $a2 $37
    ld b, b                                       ; $6a1a: $40
    jr nc, jr_06b_6a48                            ; $6a1b: $30 $2b

    ld h, d                                       ; $6a1d: $62
    nop                                           ; $6a1e: $00
    rst $38                                       ; $6a1f: $ff
    add c                                         ; $6a20: $81
    push bc                                       ; $6a21: $c5
    ld bc, $6ba0                                  ; $6a22: $01 $a0 $6b
    ld l, e                                       ; $6a25: $6b
    add e                                         ; $6a26: $83
    ld b, b                                       ; $6a27: $40
    call nz, $02e1                                ; $6a28: $c4 $e1 $02
    or a                                          ; $6a2b: $b7
    and b                                         ; $6a2c: $a0
    ld l, l                                       ; $6a2d: $6d
    dec sp                                        ; $6a2e: $3b
    ld hl, $e1fe                                  ; $6a2f: $21 $fe $e1
    nop                                           ; $6a32: $00
    cp $c1                                        ; $6a33: $fe $c1
    ld b, e                                       ; $6a35: $43
    ret nz                                        ; $6a36: $c0

    and c                                         ; $6a37: $a1
    rlca                                          ; $6a38: $07
    ld h, c                                       ; $6a39: $61
    ld b, b                                       ; $6a3a: $40
    add l                                         ; $6a3b: $85
    pop hl                                        ; $6a3c: $e1
    scf                                           ; $6a3d: $37
    add b                                         ; $6a3e: $80
    add d                                         ; $6a3f: $82
    ld b, d                                       ; $6a40: $42
    ccf                                           ; $6a41: $3f
    rst $20                                       ; $6a42: $e7
    nop                                           ; $6a43: $00
    ld e, d                                       ; $6a44: $5a
    rst $08                                       ; $6a45: $cf
    inc bc                                        ; $6a46: $03
    ld l, l                                       ; $6a47: $6d

jr_06b_6a48:
    inc bc                                        ; $6a48: $03
    ldh [$80], a                                  ; $6a49: $e0 $80
    add h                                         ; $6a4b: $84
    ld h, c                                       ; $6a4c: $61
    cp h                                          ; $6a4d: $bc
    add b                                         ; $6a4e: $80
    ld b, d                                       ; $6a4f: $42

jr_06b_6a50:
    db $e4                                        ; $6a50: $e4
    add l                                         ; $6a51: $85
    rst $28                                       ; $6a52: $ef
    nop                                           ; $6a53: $00
    inc sp                                        ; $6a54: $33
    add d                                         ; $6a55: $82
    db $e3                                        ; $6a56: $e3
    adc e                                         ; $6a57: $8b
    jr nz, jr_06b_6a85                            ; $6a58: $20 $2b

    inc bc                                        ; $6a5a: $03
    dec hl                                        ; $6a5b: $2b
    ld a, [bc]                                    ; $6a5c: $0a
    add c                                         ; $6a5d: $81
    add b                                         ; $6a5e: $80
    db $fd                                        ; $6a5f: $fd
    jr nz, @+$41                                  ; $6a60: $20 $3f

    ld h, d                                       ; $6a62: $62
    nop                                           ; $6a63: $00
    sbc a                                         ; $6a64: $9f
    add l                                         ; $6a65: $85
    adc b                                         ; $6a66: $88
    call nz, Call_000_0820                        ; $6a67: $c4 $20 $08
    push bc                                       ; $6a6a: $c5
    ld b, c                                       ; $6a6b: $41
    ld b, h                                       ; $6a6c: $44
    ld b, b                                       ; $6a6d: $40
    ld b, b                                       ; $6a6e: $40
    and b                                         ; $6a6f: $a0
    ld l, e                                       ; $6a70: $6b
    jp Jump_000_0023                              ; $6a71: $c3 $23 $00


    sbc a                                         ; $6a74: $9f
    ld d, [hl]                                    ; $6a75: $56
    ld [bc], a                                    ; $6a76: $02
    inc bc                                        ; $6a77: $03
    and e                                         ; $6a78: $a3
    nop                                           ; $6a79: $00
    jp Jump_06b_7fe2                              ; $6a7a: $c3 $e2 $7f


    ldh [$bc], a                                  ; $6a7d: $e0 $bc
    ld hl, $4102                                  ; $6a7f: $21 $02 $41
    db $ec                                        ; $6a82: $ec
    ld b, $00                                     ; $6a83: $06 $00

jr_06b_6a85:
    ld a, [$c3da]                                 ; $6a85: $fa $da $c3
    call Call_000_0061                            ; $6a88: $cd $61 $00
    add [hl]                                      ; $6a8b: $86
    jr nz, jr_06b_6a50                            ; $6a8c: $20 $c2

    pop hl                                        ; $6a8e: $e1
    ld b, c                                       ; $6a8f: $41
    ld b, c                                       ; $6a90: $41
    add e                                         ; $6a91: $83
    ret nz                                        ; $6a92: $c0

    ld b, e                                       ; $6a93: $43
    ld b, $00                                     ; $6a94: $06 $00
    rst $38                                       ; $6a96: $ff
    cp a                                          ; $6a97: $bf
    and e                                         ; $6a98: $a3
    add $00                                       ; $6a99: $c6 $00
    nop                                           ; $6a9b: $00
    call nz, $8262                                ; $6a9c: $c4 $62 $82
    ld hl, $a0c5                                  ; $6a9f: $21 $c5 $a0
    add l                                         ; $6aa2: $85
    inc [hl]                                      ; $6aa3: $34
    nop                                           ; $6aa4: $00
    cpl                                           ; $6aa5: $2f
    ld b, l                                       ; $6aa6: $45
    and [hl]                                      ; $6aa7: $a6
    add [hl]                                      ; $6aa8: $86
    nop                                           ; $6aa9: $00
    ld b, [hl]                                    ; $6aaa: $46
    jr nz, jr_06b_6aad                            ; $6aab: $20 $00

jr_06b_6aad:
    ld a, $40                                     ; $6aad: $3e $40
    add c                                         ; $6aaf: $81
    jr nz, @+$07                                  ; $6ab0: $20 $05

    and b                                         ; $6ab2: $a0
    ld b, [hl]                                    ; $6ab3: $46
    add [hl]                                      ; $6ab4: $86
    nop                                           ; $6ab5: $00
    call c, Call_06b_4482                         ; $6ab6: $dc $82 $44
    ld b, [hl]                                    ; $6ab9: $46
    nop                                           ; $6aba: $00
    ld [$0321], sp                                ; $6abb: $08 $21 $03
    dec hl                                        ; $6abe: $2b
    dec c                                         ; $6abf: $0d
    cp [hl]                                       ; $6ac0: $be
    ldh [rSCY], a                                 ; $6ac1: $e0 $42
    ld l, b                                       ; $6ac3: $68
    nop                                           ; $6ac4: $00
    ld a, [hl]                                    ; $6ac5: $7e
    add l                                         ; $6ac6: $85
    ld h, l                                       ; $6ac7: $65
    ld b, c                                       ; $6ac8: $41
    ldh [$c9], a                                  ; $6ac9: $e0 $c9
    nop                                           ; $6acb: $00
    ld bc, $820b                                  ; $6acc: $01 $0b $82
    nop                                           ; $6acf: $00
    inc bc                                        ; $6ad0: $03
    ld [hl+], a                                   ; $6ad1: $22
    ld [hl], b                                    ; $6ad2: $70
    ld [bc], a                                    ; $6ad3: $02
    add l                                         ; $6ad4: $85
    or b                                          ; $6ad5: $b0
    nop                                           ; $6ad6: $00
    adc a                                         ; $6ad7: $8f
    call nz, $10a3                                ; $6ad8: $c4 $a3 $10
    and c                                         ; $6adb: $a1
    ld a, [bc]                                    ; $6adc: $0a
    push bc                                       ; $6add: $c5
    ld h, b                                       ; $6ade: $60
    dec bc                                        ; $6adf: $0b
    rst $38                                       ; $6ae0: $ff
    jr nz, jr_06b_6aee                            ; $6ae1: $20 $0b

    inc bc                                        ; $6ae3: $03
    inc h                                         ; $6ae4: $24
    add l                                         ; $6ae5: $85
    sub d                                         ; $6ae6: $92

jr_06b_6ae7:
    nop                                           ; $6ae7: $00
    ldh a, [$c0]                                  ; $6ae8: $f0 $c0
    push hl                                       ; $6aea: $e5
    nop                                           ; $6aeb: $00
    pop bc                                        ; $6aec: $c1
    pop hl                                        ; $6aed: $e1

jr_06b_6aee:
    dec sp                                        ; $6aee: $3b
    ldh [$83], a                                  ; $6aef: $e0 $83
    ld [hl+], a                                   ; $6af1: $22
    add $42                                       ; $6af2: $c6 $42
    pop bc                                        ; $6af4: $c1
    and h                                         ; $6af5: $a4
    nop                                           ; $6af6: $00
    db $dd                                        ; $6af7: $dd
    add [hl]                                      ; $6af8: $86
    inc hl                                        ; $6af9: $23
    rlca                                          ; $6afa: $07
    jr nz, jr_06b_6afd                            ; $6afb: $20 $00

jr_06b_6afd:
    rst $00                                       ; $6afd: $c7
    add d                                         ; $6afe: $82
    ld b, e                                       ; $6aff: $43
    dec h                                         ; $6b00: $25
    add l                                         ; $6b01: $85
    or $00                                        ; $6b02: $f6 $00
    call Call_000_221a                            ; $6b04: $cd $1a $22
    add l                                         ; $6b07: $85
    ld h, c                                       ; $6b08: $61
    ld c, b                                       ; $6b09: $48
    ldh [rTMA], a                                 ; $6b0a: $e0 $06
    and c                                         ; $6b0c: $a1
    nop                                           ; $6b0d: $00
    ld [bc], a                                    ; $6b0e: $02
    db $e4                                        ; $6b0f: $e4
    add l                                         ; $6b10: $85
    db $f4                                        ; $6b11: $f4

jr_06b_6b12:
    nop                                           ; $6b12: $00
    ldh a, [$57]                                  ; $6b13: $f0 $57
    inc b                                         ; $6b15: $04
    adc d                                         ; $6b16: $8a
    ld bc, $4246                                  ; $6b17: $01 $46 $42
    add l                                         ; $6b1a: $85
    ld b, c                                       ; $6b1b: $41
    xor e                                         ; $6b1c: $ab
    and l                                         ; $6b1d: $a5
    inc h                                         ; $6b1e: $24
    nop                                           ; $6b1f: $00
    rst $38                                       ; $6b20: $ff
    add l                                         ; $6b21: $85
    ld h, [hl]                                    ; $6b22: $66
    ld l, e                                       ; $6b23: $6b
    ld c, b                                       ; $6b24: $48
    jr nz, jr_06b_6ae7                            ; $6b25: $20 $c0

    ld b, d                                       ; $6b27: $42
    dec c                                         ; $6b28: $0d
    rst $00                                       ; $6b29: $c7
    ld b, e                                       ; $6b2a: $43
    add l                                         ; $6b2b: $85
    db $f4                                        ; $6b2c: $f4
    ld [$f300], sp                                ; $6b2d: $08 $00 $f3
    nop                                           ; $6b30: $00
    pop bc                                        ; $6b31: $c1
    ld c, c                                       ; $6b32: $49
    and c                                         ; $6b33: $a1
    dec hl                                        ; $6b34: $2b
    dec b                                         ; $6b35: $05
    and c                                         ; $6b36: $a1
    push bc                                       ; $6b37: $c5
    nop                                           ; $6b38: $00
    add l                                         ; $6b39: $85
    ld hl, sp+$00                                 ; $6b3a: $f8 $00
    xor $00                                       ; $6b3c: $ee $00
    cp l                                          ; $6b3e: $bd
    add d                                         ; $6b3f: $82
    pop bc                                        ; $6b40: $c1
    pop hl                                        ; $6b41: $e1
    add a                                         ; $6b42: $87
    ld b, b                                       ; $6b43: $40
    inc bc                                        ; $6b44: $03
    jp Jump_06b_6549                              ; $6b45: $c3 $49 $65


    nop                                           ; $6b48: $00
    rst $38                                       ; $6b49: $ff
    add l                                         ; $6b4a: $85
    ld b, d                                       ; $6b4b: $42
    nop                                           ; $6b4c: $00
    jp nz, $c70c                                  ; $6b4d: $c2 $0c $c7

    ld h, d                                       ; $6b50: $62
    add e                                         ; $6b51: $83
    pop bc                                        ; $6b52: $c1
    dec c                                         ; $6b53: $0d
    ld l, l                                       ; $6b54: $6d
    ld b, $22                                     ; $6b55: $06 $22
    add l                                         ; $6b57: $85
    sub h                                         ; $6b58: $94
    nop                                           ; $6b59: $00
    db $d3                                        ; $6b5a: $d3
    ret nc                                        ; $6b5b: $d0

    ld hl, $0b01                                  ; $6b5c: $21 $01 $0b
    pop bc                                        ; $6b5f: $c1
    ld h, c                                       ; $6b60: $61
    pop bc                                        ; $6b61: $c1
    ld [c], a                                     ; $6b62: $e2
    or $41                                        ; $6b63: $f6 $41
    add l                                         ; $6b65: $85
    or [hl]                                       ; $6b66: $b6
    nop                                           ; $6b67: $00
    ret nc                                        ; $6b68: $d0

    add b                                         ; $6b69: $80
    and e                                         ; $6b6a: $a3
    add e                                         ; $6b6b: $83
    and d                                         ; $6b6c: $a2
    ld b, b                                       ; $6b6d: $40
    ld b, $a3                                     ; $6b6e: $06 $a3
    nop                                           ; $6b70: $00
    rst $38                                       ; $6b71: $ff
    nop                                           ; $6b72: $00
    res 1, l                                      ; $6b73: $cb $8d
    ld bc, $2086                                  ; $6b75: $01 $86 $20
    adc c                                         ; $6b78: $89
    nop                                           ; $6b79: $00
    dec bc                                        ; $6b7a: $0b
    ld c, b                                       ; $6b7b: $48
    ld h, b                                       ; $6b7c: $60
    nop                                           ; $6b7d: $00
    sbc $13                                       ; $6b7e: $de $13
    nop                                           ; $6b80: $00
    reti                                          ; $6b81: $d9


    ret nz                                        ; $6b82: $c0

    ld [c], a                                     ; $6b83: $e2
    cp a                                          ; $6b84: $bf
    pop hl                                        ; $6b85: $e1
    push bc                                       ; $6b86: $c5
    jr nz, jr_06b_6b12                            ; $6b87: $20 $89

    ld b, d                                       ; $6b89: $42
    ld a, [bc]                                    ; $6b8a: $0a
    ld d, h                                       ; $6b8b: $54
    nop                                           ; $6b8c: $00
    rst $30                                       ; $6b8d: $f7
    inc b                                         ; $6b8e: $04
    ld b, $20                                     ; $6b8f: $06 $20

jr_06b_6b91:
    rst $38                                       ; $6b91: $ff
    ld [c], a                                     ; $6b92: $e2
    dec c                                         ; $6b93: $0d
    inc bc                                        ; $6b94: $03
    pop bc                                        ; $6b95: $c1
    ld a, [bc]                                    ; $6b96: $0a
    ld d, h                                       ; $6b97: $54
    nop                                           ; $6b98: $00
    sub [hl]                                      ; $6b99: $96
    add c                                         ; $6b9a: $81
    ld h, e                                       ; $6b9b: $63
    adc h                                         ; $6b9c: $8c
    ld hl, $6b81                                  ; $6b9d: $21 $81 $6b
    jp Jump_000_30a0                              ; $6ba0: $c3 $a0 $30


    and e                                         ; $6ba3: $a3
    nop                                           ; $6ba4: $00
    rst $38                                       ; $6ba5: $ff
    or l                                          ; $6ba6: $b5
    ld h, $41                                     ; $6ba7: $26 $41
    and h                                         ; $6ba9: $a4
    ld b, c                                       ; $6baa: $41
    add d                                         ; $6bab: $82
    dec bc                                        ; $6bac: $0b
    ld hl, $490b                                  ; $6bad: $21 $0b $49
    ld bc, $6406                                  ; $6bb0: $01 $06 $64
    nop                                           ; $6bb3: $00
    rst $38                                       ; $6bb4: $ff
    ld a, l                                       ; $6bb5: $7d
    ld h, a                                       ; $6bb6: $67
    ld l, l                                       ; $6bb7: $6d
    jp nz, Jump_000_3be3                          ; $6bb8: $c2 $e3 $3b

    ret nz                                        ; $6bbb: $c0

    nop                                           ; $6bbc: $00
    ld [bc], a                                    ; $6bbd: $02
    and l                                         ; $6bbe: $a5
    nop                                           ; $6bbf: $00
    rst $38                                       ; $6bc0: $ff
    nop                                           ; $6bc1: $00
    add l                                         ; $6bc2: $85
    ld b, d                                       ; $6bc3: $42
    and c                                         ; $6bc4: $a1
    ret z                                         ; $6bc5: $c8

    nop                                           ; $6bc6: $00
    ret nz                                        ; $6bc7: $c0

    rst $20                                       ; $6bc8: $e7
    ld a, [hl+]                                   ; $6bc9: $2a
    call nz, $ff00                                ; $6bca: $c4 $00 $ff
    jr c, jr_06b_6b91                             ; $6bcd: $38 $c2

    ld h, l                                       ; $6bcf: $65
    call nz, $c920                                ; $6bd0: $c4 $20 $c9
    jr nz, jr_06b_6be0                            ; $6bd3: $20 $0b

    dec bc                                        ; $6bd5: $0b
    dec l                                         ; $6bd6: $2d
    jp nz, Jump_06b_4a00                          ; $6bd7: $c2 $00 $4a

    inc b                                         ; $6bda: $04
    nop                                           ; $6bdb: $00
    nop                                           ; $6bdc: $00
    rst $38                                       ; $6bdd: $ff
    nop                                           ; $6bde: $00
    ld b, [hl]                                    ; $6bdf: $46

Jump_06b_6be0:
jr_06b_6be0:
    ld b, h                                       ; $6be0: $44
    ld b, c                                       ; $6be1: $41
    inc b                                         ; $6be2: $04
    ld h, c                                       ; $6be3: $61
    rst $38                                       ; $6be4: $ff
    jp Jump_06b_43c5                              ; $6be5: $c3 $c5 $43


    nop                                           ; $6be8: $00
    rst $38                                       ; $6be9: $ff
    inc l                                         ; $6bea: $2c
    ld h, e                                       ; $6beb: $63
    nop                                           ; $6bec: $00
    ld b, d                                       ; $6bed: $42
    and h                                         ; $6bee: $a4
    dec c                                         ; $6bef: $0d
    jr nz, jr_06b_6bf2                            ; $6bf0: $20 $00

jr_06b_6bf2:
    and $80                                       ; $6bf2: $e6 $80
    ld [c], a                                     ; $6bf4: $e2
    nop                                           ; $6bf5: $00
    rst $38                                       ; $6bf6: $ff
    add l                                         ; $6bf7: $85
    ld b, $42                                     ; $6bf8: $06 $42
    ld h, c                                       ; $6bfa: $61
    ld b, [hl]                                    ; $6bfb: $46
    and b                                         ; $6bfc: $a0
    ld bc, $416b                                  ; $6bfd: $01 $6b $41
    ld h, b                                       ; $6c00: $60
    ld a, $61                                     ; $6c01: $3e $61
    nop                                           ; $6c03: $00
    and c                                         ; $6c04: $a1
    nop                                           ; $6c05: $00
    rst $38                                       ; $6c06: $ff
    nop                                           ; $6c07: $00
    add hl, hl                                    ; $6c08: $29
    ld a, h                                       ; $6c09: $7c
    ld h, b                                       ; $6c0a: $60
    pop bc                                        ; $6c0b: $c1
    and b                                         ; $6c0c: $a0
    nop                                           ; $6c0d: $00
    add [hl]                                      ; $6c0e: $86
    ld h, c                                       ; $6c0f: $61
    add d                                         ; $6c10: $82
    add h                                         ; $6c11: $84
    db $eb                                        ; $6c12: $eb
    ld b, d                                       ; $6c13: $42
    nop                                           ; $6c14: $00
    rst $38                                       ; $6c15: $ff
    nop                                           ; $6c16: $00
    ld h, e                                       ; $6c17: $63
    ret nz                                        ; $6c18: $c0

    and h                                         ; $6c19: $a4
    cp c                                          ; $6c1a: $b9
    dec h                                         ; $6c1b: $25
    ld [$0023], sp                                ; $6c1c: $08 $23 $00
    nop                                           ; $6c1f: $00
    rst $38                                       ; $6c20: $ff
    nop                                           ; $6c21: $00
    ret z                                         ; $6c22: $c8

    adc a                                         ; $6c23: $8f
    db $e3                                        ; $6c24: $e3
    adc h                                         ; $6c25: $8c
    jp Jump_06b_6532                              ; $6c26: $c3 $32 $65


    nop                                           ; $6c29: $00
    rst $38                                       ; $6c2a: $ff
    ld [hl+], a                                   ; $6c2b: $22
    push hl                                       ; $6c2c: $e5
    rst $10                                       ; $6c2d: $d7
    inc bc                                        ; $6c2e: $03
    nop                                           ; $6c2f: $00
    ld c, e                                       ; $6c30: $4b
    jp $85b2                                      ; $6c31: $c3 $b2 $85


    inc b                                         ; $6c34: $04
    ld b, h                                       ; $6c35: $44
    nop                                           ; $6c36: $00
    di                                            ; $6c37: $f3
    nop                                           ; $6c38: $00
    nop                                           ; $6c39: $00
    nop                                           ; $6c3a: $00
    rst $38                                       ; $6c3b: $ff
    call c, $a0dd                                 ; $6c3c: $dc $dd $a0
    sbc $df                                       ; $6c3f: $de $df
    ldh [$e1], a                                  ; $6c41: $e0 $e1
    ld [c], a                                     ; $6c43: $e2
    ei                                            ; $6c44: $fb
    db $e3                                        ; $6c45: $e3
    db $e4                                        ; $6c46: $e4
    or $ec                                        ; $6c47: $f6 $ec
    and b                                         ; $6c49: $a0
    and b                                         ; $6c4a: $a0
    and b                                         ; $6c4b: $a0
    ret nc                                        ; $6c4c: $d0

    pop de                                        ; $6c4d: $d1
    ld [hl], a                                    ; $6c4e: $77
    and b                                         ; $6c4f: $a0
    ret c                                         ; $6c50: $d8

    reti                                          ; $6c51: $d9


    ld hl, sp-$20                                 ; $6c52: $f8 $e0
    jp c, $a0db                                   ; $6c54: $da $db $a0

    rst $30                                       ; $6c57: $f7
    pop hl                                        ; $6c58: $e1
    db $fc                                        ; $6c59: $fc
    pop af                                        ; $6c5a: $f1
    ldh [$d4], a                                  ; $6c5b: $e0 $d4
    rst $28                                       ; $6c5d: $ef
    push hl                                       ; $6c5e: $e5
    and $e7                                       ; $6c5f: $e6 $e7
    and b                                         ; $6c61: $a0
    add sp, -$17                                  ; $6c62: $e8 $e9
    rst $08                                       ; $6c64: $cf
    ld [$eceb], a                                 ; $6c65: $ea $eb $ec
    and b                                         ; $6c68: $a0
    or $eb                                        ; $6c69: $f6 $eb
    rst $38                                       ; $6c6b: $ff
    pop hl                                        ; $6c6c: $e1
    jp nc, Jump_000_26d3                          ; $6c6d: $d2 $d3 $26

Jump_06b_6c70:
    push bc                                       ; $6c70: $c5
    ld [c], a                                     ; $6c71: $e2
    push af                                       ; $6c72: $f5
    or $bc                                        ; $6c73: $f6 $bc
    db $e3                                        ; $6c75: $e3
    pop af                                        ; $6c76: $f1
    ldh [$a0], a                                  ; $6c77: $e0 $a0
    call nc, $85ee                                ; $6c79: $d4 $ee $85
    db $f4                                        ; $6c7c: $f4
    rst $38                                       ; $6c7d: $ff
    db $e3                                        ; $6c7e: $e3
    db $e4                                        ; $6c7f: $e4
    and b                                         ; $6c80: $a0
    db $ed                                        ; $6c81: $ed
    xor $d4                                       ; $6c82: $ee $d4
    push de                                       ; $6c84: $d5
    rst $28                                       ; $6c85: $ef
    cpl                                           ; $6c86: $2f
    and b                                         ; $6c87: $a0
    sbc a                                         ; $6c88: $9f
    and d                                         ; $6c89: $a2
    sbc l                                         ; $6c8a: $9d
    rst $38                                       ; $6c8b: $ff
    pop hl                                        ; $6c8c: $e1
    sbc a                                         ; $6c8d: $9f
    pop af                                        ; $6c8e: $f1
    db $e4                                        ; $6c8f: $e4
    ld e, c                                       ; $6c90: $59
    xor $fe                                       ; $6c91: $ee $fe
    add l                                         ; $6c93: $85

jr_06b_6c94:
    db $f4                                        ; $6c94: $f4
    and b                                         ; $6c95: $a0
    sub $d7                                       ; $6c96: $d6 $d7
    ldh a, [$f1]                                  ; $6c98: $f0 $f1
    ld a, [c]                                     ; $6c9a: $f2
    di                                            ; $6c9b: $f3
    cp a                                          ; $6c9c: $bf
    db $f4                                        ; $6c9d: $f4
    sbc a                                         ; $6c9e: $9f
    sbc h                                         ; $6c9f: $9c
    ld c, b                                       ; $6ca0: $48
    ld c, b                                       ; $6ca1: $48
    ld b, [hl]                                    ; $6ca2: $46
    rst $38                                       ; $6ca3: $ff
    ldh [$9c], a                                  ; $6ca4: $e0 $9c
    pop bc                                        ; $6ca6: $c1
    sbc a                                         ; $6ca7: $9f
    pop af                                        ; $6ca8: $f1
    ld [c], a                                     ; $6ca9: $e2
    dec hl                                        ; $6caa: $2b
    ldh [rVBK], a                                 ; $6cab: $e0 $4f
    db $ec                                        ; $6cad: $ec
    nop                                           ; $6cae: $00
    db $f4                                        ; $6caf: $f4
    rlca                                          ; $6cb0: $07
    ld [c], a                                     ; $6cb1: $e2
    sbc a                                         ; $6cb2: $9f
    sbc l                                         ; $6cb3: $9d
    rst $38                                       ; $6cb4: $ff
    sbc l                                         ; $6cb5: $9d
    sbc h                                         ; $6cb6: $9c
    ld b, h                                       ; $6cb7: $44
    ld e, c                                       ; $6cb8: $59
    ld d, e                                       ; $6cb9: $53
    dec hl                                        ; $6cba: $2b
    dec hl                                        ; $6cbb: $2b
    ld b, e                                       ; $6cbc: $43
    rrca                                          ; $6cbd: $0f
    ld b, l                                       ; $6cbe: $45
    xor [hl]                                      ; $6cbf: $ae
    sbc h                                         ; $6cc0: $9c
    sbc a                                         ; $6cc1: $9f
    dec l                                         ; $6cc2: $2d
    ld [c], a                                     ; $6cc3: $e2
    nop                                           ; $6cc4: $00
    rst $38                                       ; $6cc5: $ff
    or $c4                                        ; $6cc6: $f6 $c4
    call z, $ffc0                                 ; $6cc8: $cc $c0 $ff
    sbc a                                         ; $6ccb: $9f
    sbc h                                         ; $6ccc: $9c
    ld b, [hl]                                    ; $6ccd: $46
    or d                                          ; $6cce: $b2
    or d                                          ; $6ccf: $b2
    ld b, l                                       ; $6cd0: $45
    ld a, [hl+]                                   ; $6cd1: $2a
    cpl                                           ; $6cd2: $2f
    ld a, a                                       ; $6cd3: $7f
    jr nz, jr_06b_6c94                            ; $6cd4: $20 $be

    ld c, e                                       ; $6cd6: $4b
    ld d, l                                       ; $6cd7: $55
    xor a                                         ; $6cd8: $af
    ld b, [hl]                                    ; $6cd9: $46
    and c                                         ; $6cda: $a1
    ld l, l                                       ; $6cdb: $6d
    ldh [$f0], a                                  ; $6cdc: $e0 $f0
    nop                                           ; $6cde: $00
    rst $38                                       ; $6cdf: $ff
    add l                                         ; $6ce0: $85
    push bc                                       ; $6ce1: $c5
    call z, $c1c0                                 ; $6ce2: $cc $c0 $c1
    ldh [rLYC], a                                 ; $6ce5: $e0 $45
    scf                                           ; $6ce7: $37
    scf                                           ; $6ce8: $37
    ld [hl], $ff                                  ; $6ce9: $36 $ff
    dec h                                         ; $6ceb: $25
    jr nz, @+$2c                                  ; $6cec: $20 $2a

    ld c, c                                       ; $6cee: $49
    ld h, b                                       ; $6cef: $60
    ld d, l                                       ; $6cf0: $55
    ld b, [hl]                                    ; $6cf1: $46
    ld b, [hl]                                    ; $6cf2: $46
    pop hl                                        ; $6cf3: $e1
    sbc [hl]                                      ; $6cf4: $9e
    ld [hl], h                                    ; $6cf5: $74
    jp nz, $ff00                                  ; $6cf6: $c2 $00 $ff

    add l                                         ; $6cf9: $85
    jp nz, $e095                                  ; $6cfa: $c2 $95 $e0

    sbc a                                         ; $6cfd: $9f
    sbc h                                         ; $6cfe: $9c
    or d                                          ; $6cff: $b2
    rst $38                                       ; $6d00: $ff
    ld b, l                                       ; $6d01: $45
    ld [hl], $38                                  ; $6d02: $36 $38
    jr c, @+$37                                   ; $6d04: $38 $35

    cp h                                          ; $6d06: $bc
    ld [hl+], a                                   ; $6d07: $22
    ld b, b                                       ; $6d08: $40
    rlca                                          ; $6d09: $07
    ld d, e                                       ; $6d0a: $53
    ld d, e                                       ; $6d0b: $53
    ld b, l                                       ; $6d0c: $45
    rst $38                                       ; $6d0d: $ff
    ret nz                                        ; $6d0e: $c0

    add hl, sp                                    ; $6d0f: $39
    jp nz, $ff00                                  ; $6d10: $c2 $00 $ff

    or $a0                                        ; $6d13: $f6 $a0
    ld [de], a                                    ; $6d15: $12
    jp nz, $a1fd                                  ; $6d16: $c2 $fd $a1

    pop bc                                        ; $6d19: $c1
    ldh [$3a], a                                  ; $6d1a: $e0 $3a
    ld b, a                                       ; $6d1c: $47
    ld d, l                                       ; $6d1d: $55
    inc a                                         ; $6d1e: $3c
    dec [hl]                                      ; $6d1f: $35
    dec [hl]                                      ; $6d20: $35
    add e                                         ; $6d21: $83
    ld [hl], $45                                  ; $6d22: $36 $45
    ret nz                                        ; $6d24: $c0

    pop bc                                        ; $6d25: $c1
    add hl, sp                                    ; $6d26: $39
    jp $ff00                                      ; $6d27: $c3 $00 $ff


    or $a0                                        ; $6d2a: $f6 $a0
    adc $a2                                       ; $6d2c: $ce $a2
    sbc [hl]                                      ; $6d2e: $9e
    ld a, [hl]                                    ; $6d2f: $7e
    ret nz                                        ; $6d30: $c0

    pop hl                                        ; $6d31: $e1
    ld d, [hl]                                    ; $6d32: $56
    ld d, [hl]                                    ; $6d33: $56
    ld a, [hl-]                                   ; $6d34: $3a
    swap l                                        ; $6d35: $cb $35
    ld a, [hl-]                                   ; $6d37: $3a
    add d                                         ; $6d38: $82
    ld [c], a                                     ; $6d39: $e2
    ldh a, [$c2]                                  ; $6d3a: $f0 $c2
    and c                                         ; $6d3c: $a1
    nop                                           ; $6d3d: $00
    rst $38                                       ; $6d3e: $ff
    add l                                         ; $6d3f: $85
    and l                                         ; $6d40: $a5
    add e                                         ; $6d41: $83
    ret nz                                        ; $6d42: $c0

    sbc h                                         ; $6d43: $9c
    or d                                          ; $6d44: $b2
    ld b, b                                       ; $6d45: $40
    ld a, [hl-]                                   ; $6d46: $3a
    ccf                                           ; $6d47: $3f
    ld c, e                                       ; $6d48: $4b
    ld d, [hl]                                    ; $6d49: $56
    ld a, [hl-]                                   ; $6d4a: $3a
    dec [hl]                                      ; $6d4b: $35
    dec [hl]                                      ; $6d4c: $35
    add hl, sp                                    ; $6d4d: $39
    ld b, e                                       ; $6d4e: $43
    pop hl                                        ; $6d4f: $e1
    or e                                          ; $6d50: $b3
    and b                                         ; $6d51: $a0
    ret c                                         ; $6d52: $d8

    ld l, h                                       ; $6d53: $6c
    and c                                         ; $6d54: $a1
    nop                                           ; $6d55: $00
    rst $38                                       ; $6d56: $ff
    add l                                         ; $6d57: $85
    and c                                         ; $6d58: $a1
    push af                                       ; $6d59: $f5
    or $45                                        ; $6d5a: $f6 $45
    and b                                         ; $6d5c: $a0
    sbc [hl]                                      ; $6d5d: $9e
    ld b, [hl]                                    ; $6d5e: $46
    rst $38                                       ; $6d5f: $ff
    ld b, d                                       ; $6d60: $42
    ld a, [hl-]                                   ; $6d61: $3a
    ld d, d                                       ; $6d62: $52
    ld e, d                                       ; $6d63: $5a
    inc a                                         ; $6d64: $3c
    dec [hl]                                      ; $6d65: $35
    inc a                                         ; $6d66: $3c
    ld b, h                                       ; $6d67: $44
    jp $9eb2                                      ; $6d68: $c3 $b2 $9e


    or e                                          ; $6d6b: $b3
    and h                                         ; $6d6c: $a4
    nop                                           ; $6d6d: $00
    rst $38                                       ; $6d6e: $ff
    nop                                           ; $6d6f: $00
    db $e4                                        ; $6d70: $e4
    ld b, l                                       ; $6d71: $45
    and c                                         ; $6d72: $a1
    sbc [hl]                                      ; $6d73: $9e
    ld b, [hl]                                    ; $6d74: $46
    inc bc                                        ; $6d75: $03
    ld b, l                                       ; $6d76: $45
    ld a, [hl-]                                   ; $6d77: $3a
    ret nz                                        ; $6d78: $c0

    ret nz                                        ; $6d79: $c0

    ld b, c                                       ; $6d7a: $41
    ldh [$c0], a                                  ; $6d7b: $e0 $c0
    ldh [$b3], a                                  ; $6d7d: $e0 $b3
    and d                                         ; $6d7f: $a2
    call nc, Call_000_0091                        ; $6d80: $d4 $91 $00
    ld a, [c]                                     ; $6d83: $f2
    cp [hl]                                       ; $6d84: $be
    ld b, l                                       ; $6d85: $45
    and d                                         ; $6d86: $a2
    sbc [hl]                                      ; $6d87: $9e
    ld b, [hl]                                    ; $6d88: $46
    ld b, [hl]                                    ; $6d89: $46
    add hl, sp                                    ; $6d8a: $39
    dec [hl]                                      ; $6d8b: $35
    rst $38                                       ; $6d8c: $ff
    ldh [$39], a                                  ; $6d8d: $e0 $39
    ld h, b                                       ; $6d8f: $60
    ld b, h                                       ; $6d90: $44
    pop bc                                        ; $6d91: $c1
    inc b                                         ; $6d92: $04
    jp nz, $91d4                                  ; $6d93: $c2 $d4 $91

    add l                                         ; $6d96: $85
    sub d                                         ; $6d97: $92
    ld b, l                                       ; $6d98: $45
    and h                                         ; $6d99: $a4
    ld b, [hl]                                    ; $6d9a: $46
    ld b, h                                       ; $6d9b: $44
    add d                                         ; $6d9c: $82
    pop bc                                        ; $6d9d: $c1
    jp Jump_06b_46b2                              ; $6d9e: $c3 $b2 $46


    call nz, Call_06b_78a0                        ; $6da1: $c4 $a0 $78
    add d                                         ; $6da4: $82
    ld e, c                                       ; $6da5: $59
    sub c                                         ; $6da6: $91
    add l                                         ; $6da7: $85
    sub e                                         ; $6da8: $93
    push af                                       ; $6da9: $f5
    or $fe                                        ; $6daa: $f6 $fe
    sub e                                         ; $6dac: $93
    and b                                         ; $6dad: $a0
    sbc [hl]                                      ; $6dae: $9e
    ld b, [hl]                                    ; $6daf: $46
    ld b, h                                       ; $6db0: $44
    jr c, jr_06b_6de8                             ; $6db1: $38 $35

    ld a, [hl-]                                   ; $6db3: $3a
    or d                                          ; $6db4: $b2
    add $c0                                       ; $6db5: $c6 $c0
    ldh [$9c], a                                  ; $6db7: $e0 $9c
    sbc a                                         ; $6db9: $9f
    dec a                                         ; $6dba: $3d
    add c                                         ; $6dbb: $81
    ld e, c                                       ; $6dbc: $59
    sub c                                         ; $6dbd: $91
    nop                                           ; $6dbe: $00
    cp c                                          ; $6dbf: $b9
    and c                                         ; $6dc0: $a1
    ld b, l                                       ; $6dc1: $45
    daa                                           ; $6dc2: $27
    or d                                          ; $6dc3: $b2
    or d                                          ; $6dc4: $b2
    inc a                                         ; $6dc5: $3c
    ret nz                                        ; $6dc6: $c0

    ldh [$7f], a                                  ; $6dc7: $e0 $7f
    ldh [$9e], a                                  ; $6dc9: $e0 $9e
    dec sp                                        ; $6dcb: $3b
    add d                                         ; $6dcc: $82
    nop                                           ; $6dcd: $00
    rst $38                                       ; $6dce: $ff
    ld [hl], $00                                  ; $6dcf: $36 $00
    xor d                                         ; $6dd1: $aa
    sbc [hl]                                      ; $6dd2: $9e
    ld b, d                                       ; $6dd3: $42
    pop bc                                        ; $6dd4: $c1
    pop bc                                        ; $6dd5: $c1
    jr c, jr_06b_6e0f                             ; $6dd6: $38 $37

    ret nz                                        ; $6dd8: $c0

    ld [c], a                                     ; $6dd9: $e2
    inc bc                                        ; $6dda: $03
    and c                                         ; $6ddb: $a1
    ld hl, sp+$00                                 ; $6ddc: $f8 $00
    rst $38                                       ; $6dde: $ff
    nop                                           ; $6ddf: $00
    ret z                                         ; $6de0: $c8

    pop bc                                        ; $6de1: $c1
    add b                                         ; $6de2: $80
    ld b, l                                       ; $6de3: $45
    ld a, [hl-]                                   ; $6de4: $3a
    cp e                                          ; $6de5: $bb
    jr c, jr_06b_6e1f                             ; $6de6: $38 $37

jr_06b_6de8:
    pop bc                                        ; $6de8: $c1
    ld [hl], $bf                                  ; $6de9: $36 $bf
    jp Jump_06b_6077                              ; $6deb: $c3 $77 $60


    nop                                           ; $6dee: $00
    rst $18                                       ; $6def: $df
    nop                                           ; $6df0: $00
    xor e                                         ; $6df1: $ab
    add b                                         ; $6df2: $80
    ret nz                                        ; $6df3: $c0

    inc a                                         ; $6df4: $3c
    or d                                          ; $6df5: $b2
    rlca                                          ; $6df6: $07
    or d                                          ; $6df7: $b2
    xor [hl]                                      ; $6df8: $ae
    ld a, [hl-]                                   ; $6df9: $3a
    ld a, a                                       ; $6dfa: $7f
    jp nz, Jump_06b_603c                          ; $6dfb: $c2 $3c $60

    ld a, [hl]                                    ; $6dfe: $7e
    and e                                         ; $6dff: $a3
    nop                                           ; $6e00: $00
    rst $38                                       ; $6e01: $ff
    nop                                           ; $6e02: $00
    and e                                         ; $6e03: $a3
    rst $38                                       ; $6e04: $ff
    sbc [hl]                                      ; $6e05: $9e
    ld b, [hl]                                    ; $6e06: $46
    xor [hl]                                      ; $6e07: $ae
    ld b, [hl]                                    ; $6e08: $46
    or d                                          ; $6e09: $b2
    inc a                                         ; $6e0a: $3c
    ld [hl], $b2                                  ; $6e0b: $36 $b2
    rlca                                          ; $6e0d: $07
    xor a                                         ; $6e0e: $af

jr_06b_6e0f:
    ld a, [hl-]                                   ; $6e0f: $3a
    ld b, b                                       ; $6e10: $40
    add e                                         ; $6e11: $83
    add b                                         ; $6e12: $80
    inc a                                         ; $6e13: $3c
    ld h, c                                       ; $6e14: $61
    ld b, b                                       ; $6e15: $40
    ld h, c                                       ; $6e16: $61
    nop                                           ; $6e17: $00
    rst $38                                       ; $6e18: $ff
    nop                                           ; $6e19: $00
    and [hl]                                      ; $6e1a: $a6
    rst $38                                       ; $6e1b: $ff
    ld b, [hl]                                    ; $6e1c: $46
    xor a                                         ; $6e1d: $af
    ld b, [hl]                                    ; $6e1e: $46

jr_06b_6e1f:
    add hl, sp                                    ; $6e1f: $39
    rst $08                                       ; $6e20: $cf
    call $cfcd                                    ; $6e21: $cd $cd $cf
    add b                                         ; $6e24: $80
    ccf                                           ; $6e25: $3f
    pop bc                                        ; $6e26: $c1
    jp nz, Jump_06b_7e60                          ; $6e27: $c2 $60 $7e

    and h                                         ; $6e2a: $a4
    nop                                           ; $6e2b: $00
    rst $38                                       ; $6e2c: $ff
    add l                                         ; $6e2d: $85
    ld b, b                                       ; $6e2e: $40
    adc $41                                       ; $6e2f: $ce $41
    ld bc, $3a81                                  ; $6e31: $01 $81 $3a
    rra                                           ; $6e34: $1f
    rst $08                                       ; $6e35: $cf
    call $cecc                                    ; $6e36: $cd $cc $ce
    ld [hl], $3e                                  ; $6e39: $36 $3e
    jp Jump_06b_6340                              ; $6e3b: $c3 $40 $63


    nop                                           ; $6e3e: $00
    rst $38                                       ; $6e3f: $ff
    ld hl, sp-$7b                                 ; $6e40: $f8 $85
    ld b, e                                       ; $6e42: $43
    ld b, l                                       ; $6e43: $45
    ld b, b                                       ; $6e44: $40
    ret nz                                        ; $6e45: $c0

    ret nz                                        ; $6e46: $c0

    scf                                           ; $6e47: $37
    scf                                           ; $6e48: $37
    xor [hl]                                      ; $6e49: $ae
    rst $08                                       ; $6e4a: $cf
    cp e                                          ; $6e4b: $bb
    ret nz                                        ; $6e4c: $c0

    ld a, a                                       ; $6e4d: $7f
    ld [c], a                                     ; $6e4e: $e2
    cp l                                          ; $6e4f: $bd
    add d                                         ; $6e50: $82
    ld h, $a2                                     ; $6e51: $26 $a2
    nop                                           ; $6e53: $00
    rst $38                                       ; $6e54: $ff
    nop                                           ; $6e55: $00
    and h                                         ; $6e56: $a4
    cp a                                          ; $6e57: $bf
    add b                                         ; $6e58: $80
    ld b, [hl]                                    ; $6e59: $46
    or d                                          ; $6e5a: $b2
    rra                                           ; $6e5b: $1f
    xor a                                         ; $6e5c: $af
    inc a                                         ; $6e5d: $3c
    adc $cc                                       ; $6e5e: $ce $cc
    rst $08                                       ; $6e60: $cf
    cp l                                          ; $6e61: $bd
    and c                                         ; $6e62: $a1
    ld b, b                                       ; $6e63: $40
    ld h, h                                       ; $6e64: $64
    nop                                           ; $6e65: $00
    rst $38                                       ; $6e66: $ff
    ld a, h                                       ; $6e67: $7c
    nop                                           ; $6e68: $00
    and [hl]                                      ; $6e69: $a6
    cp a                                          ; $6e6a: $bf
    add c                                         ; $6e6b: $81
    or d                                          ; $6e6c: $b2
    ld [hl], $cf                                  ; $6e6d: $36 $cf
    call z, $c0bb                                 ; $6e6f: $cc $bb $c0
    pop hl                                        ; $6e72: $e1
    pop bc                                        ; $6e73: $c1
    xor [hl]                                      ; $6e74: $ae
    ld b, b                                       ; $6e75: $40
    ld h, h                                       ; $6e76: $64
    nop                                           ; $6e77: $00
    rst $38                                       ; $6e78: $ff
    add $21                                       ; $6e79: $c6 $21
    nop                                           ; $6e7b: $00
    and l                                         ; $6e7c: $a5
    ret nz                                        ; $6e7d: $c0

    ret nz                                        ; $6e7e: $c0

    set 1, h                                      ; $6e7f: $cb $cc
    ld h, d                                       ; $6e81: $62
    cp a                                          ; $6e82: $bf
    jp nz, Jump_06b_40af                          ; $6e83: $c2 $af $40

    ld h, h                                       ; $6e86: $64
    nop                                           ; $6e87: $00
    rst $38                                       ; $6e88: $ff
    add l                                         ; $6e89: $85
    ld hl, $d7d6                                  ; $6e8a: $21 $d6 $d7
    adc h                                         ; $6e8d: $8c
    jr nz, jr_06b_6e9d                            ; $6e8e: $20 $0d

    and c                                         ; $6e90: $a1
    add b                                         ; $6e91: $80
    add b                                         ; $6e92: $80
    adc $cc                                       ; $6e93: $ce $cc
    pop bc                                        ; $6e95: $c1
    pop hl                                        ; $6e96: $e1
    cp $82                                        ; $6e97: $fe $82
    add d                                         ; $6e99: $82
    ld b, d                                       ; $6e9a: $42
    nop                                           ; $6e9b: $00
    rst $38                                       ; $6e9c: $ff

jr_06b_6e9d:
    ld h, e                                       ; $6e9d: $63
    pop hl                                        ; $6e9e: $e1
    ld [c], a                                     ; $6e9f: $e2
    ldh a, [rP1]                                  ; $6ea0: $f0 $00
    inc bc                                        ; $6ea2: $03
    ld b, d                                       ; $6ea3: $42
    add c                                         ; $6ea4: $81
    ld b, b                                       ; $6ea5: $40
    ld [hl], $cf                                  ; $6ea6: $36 $cf
    ld b, c                                       ; $6ea8: $41
    pop bc                                        ; $6ea9: $c1
    nop                                           ; $6eaa: $00
    pop bc                                        ; $6eab: $c1
    pop bc                                        ; $6eac: $c1
    add d                                         ; $6ead: $82
    ld b, d                                       ; $6eae: $42
    nop                                           ; $6eaf: $00
    cp a                                          ; $6eb0: $bf
    nop                                           ; $6eb1: $00
    ld h, h                                       ; $6eb2: $64
    inc bc                                        ; $6eb3: $03
    ld b, d                                       ; $6eb4: $42
    inc bc                                        ; $6eb5: $03
    ldh [$c3], a                                  ; $6eb6: $e0 $c3
    ld h, b                                       ; $6eb8: $60
    pop bc                                        ; $6eb9: $c1
    add b                                         ; $6eba: $80
    inc bc                                        ; $6ebb: $03
    ld b, l                                       ; $6ebc: $45
    ld b, [hl]                                    ; $6ebd: $46
    jp nz, $bb21                                  ; $6ebe: $c2 $21 $bb

    nop                                           ; $6ec1: $00
    nop                                           ; $6ec2: $00
    cp a                                          ; $6ec3: $bf
    add l                                         ; $6ec4: $85
    ld [hl+], a                                   ; $6ec5: $22
    ret c                                         ; $6ec6: $d8

    ld hl, $a003                                  ; $6ec7: $21 $03 $a0
    rst $18                                       ; $6eca: $df
    ld [hl], $3b                                  ; $6ecb: $36 $3b
    dec [hl]                                      ; $6ecd: $35
    dec [hl]                                      ; $6ece: $35
    bit 0, c                                      ; $6ecf: $cb $41
    add b                                         ; $6ed1: $80
    add hl, sp                                    ; $6ed2: $39
    add hl, sp                                    ; $6ed3: $39
    add e                                         ; $6ed4: $83
    ld b, [hl]                                    ; $6ed5: $46
    xor a                                         ; $6ed6: $af
    add b                                         ; $6ed7: $80
    add e                                         ; $6ed8: $83
    nop                                           ; $6ed9: $00
    sbc a                                         ; $6eda: $9f
    ld a, e                                       ; $6edb: $7b
    ld [bc], a                                    ; $6edc: $02
    ld c, h                                       ; $6edd: $4c

jr_06b_6ede:
    nop                                           ; $6ede: $00
    call nz, $cbc1                                ; $6edf: $c4 $c1 $cb
    ld c, $83                                     ; $6ee2: $0e $83
    ld h, c                                       ; $6ee4: $61
    dec [hl]                                      ; $6ee5: $35
    add hl, sp                                    ; $6ee6: $39
    or d                                          ; $6ee7: $b2
    nop                                           ; $6ee8: $00
    and e                                         ; $6ee9: $a3
    inc [hl]                                      ; $6eea: $34
    nop                                           ; $6eeb: $00
    nop                                           ; $6eec: $00
    sbc a                                         ; $6eed: $9f
    add l                                         ; $6eee: $85
    add e                                         ; $6eef: $83
    ld [hl], d                                    ; $6ef0: $72
    ld b, e                                       ; $6ef1: $43
    and d                                         ; $6ef2: $a2
    ld b, l                                       ; $6ef3: $45
    add a                                         ; $6ef4: $87
    ld b, b                                       ; $6ef5: $40
    ld b, d                                       ; $6ef6: $42

jr_06b_6ef7:
    ld h, b                                       ; $6ef7: $60
    swap l                                        ; $6ef8: $cb $35
    dec sp                                        ; $6efa: $3b
    ld bc, $f040                                  ; $6efb: $01 $40 $f0
    inc bc                                        ; $6efe: $03
    jr nz, jr_06b_6f44                            ; $6eff: $20 $43

    ld bc, $ff00                                  ; $6f01: $01 $00 $ff
    db $dd                                        ; $6f04: $dd
    pop hl                                        ; $6f05: $e1
    ret nc                                        ; $6f06: $d0

    pop de                                        ; $6f07: $d1
    push af                                       ; $6f08: $f5
    or $09                                        ; $6f09: $f6 $09
    and c                                         ; $6f0b: $a1
    call nz, $c2c0                                ; $6f0c: $c4 $c0 $c2
    ld [c], a                                     ; $6f0f: $e2
    dec [hl]                                      ; $6f10: $35
    add c                                         ; $6f11: $81
    ld b, b                                       ; $6f12: $40
    add e                                         ; $6f13: $83
    nop                                           ; $6f14: $00
    inc [hl]                                      ; $6f15: $34
    inc bc                                        ; $6f16: $03
    nop                                           ; $6f17: $00
    rst $38                                       ; $6f18: $ff
    jr nz, @-$4d                                  ; $6f19: $20 $b1

    and c                                         ; $6f1b: $a1
    add l                                         ; $6f1c: $85
    and e                                         ; $6f1d: $a3
    add l                                         ; $6f1e: $85
    ld h, b                                       ; $6f1f: $60
    ld b, b                                       ; $6f20: $40
    ld [c], a                                     ; $6f21: $e2
    ld bc, $a141                                  ; $6f22: $01 $41 $a1
    add c                                         ; $6f25: $81
    ld b, e                                       ; $6f26: $43
    ld e, c                                       ; $6f27: $59
    ld [hl], b                                    ; $6f28: $70
    xor h                                         ; $6f29: $ac
    nop                                           ; $6f2a: $00
    ld l, $85                                     ; $6f2b: $2e $85
    and [hl]                                      ; $6f2d: $a6
    or d                                          ; $6f2e: $b2
    or d                                          ; $6f2f: $b2
    add h                                         ; $6f30: $84
    ld b, c                                       ; $6f31: $41
    ld [hl], $c1                                  ; $6f32: $36 $c1
    ld [hl+], a                                   ; $6f34: $22
    sbc [hl]                                      ; $6f35: $9e
    add sp, -$51                                  ; $6f36: $e8 $af
    inc bc                                        ; $6f38: $03
    nop                                           ; $6f39: $00
    rst $38                                       ; $6f3a: $ff
    add l                                         ; $6f3b: $85
    ld c, b                                       ; $6f3c: $48
    or d                                          ; $6f3d: $b2
    ld b, h                                       ; $6f3e: $44
    ld b, c                                       ; $6f3f: $41
    inc a                                         ; $6f40: $3c
    or d                                          ; $6f41: $b2
    ld a, [hl-]                                   ; $6f42: $3a
    add a                                         ; $6f43: $87

jr_06b_6f44:
    jr c, jr_06b_6f7d                             ; $6f44: $38 $37

    ld b, l                                       ; $6f46: $45
    ld b, c                                       ; $6f47: $41
    ld b, h                                       ; $6f48: $44
    ld e, c                                       ; $6f49: $59
    ld l, [hl]                                    ; $6f4a: $6e
    nop                                           ; $6f4b: $00
    pop af                                        ; $6f4c: $f1
    add l                                         ; $6f4d: $85
    ld h, l                                       ; $6f4e: $65
    or d                                          ; $6f4f: $b2
    dec c                                         ; $6f50: $0d
    or d                                          ; $6f51: $b2
    ret nz                                        ; $6f52: $c0

    pop bc                                        ; $6f53: $c1
    ld a, [hl-]                                   ; $6f54: $3a
    add hl, sp                                    ; $6f55: $39
    inc b                                         ; $6f56: $04
    jr nz, jr_06b_6ede                            ; $6f57: $20 $85

    ld bc, $4241                                  ; $6f59: $01 $41 $42
    nop                                           ; $6f5c: $00
    rst $38                                       ; $6f5d: $ff
    inc b                                         ; $6f5e: $04
    add l                                         ; $6f5f: $85
    ld h, [hl]                                    ; $6f60: $66
    ld bc, $39e4                                  ; $6f61: $01 $e4 $39
    ret nz                                        ; $6f64: $c0

    pop hl                                        ; $6f65: $e1
    inc bc                                        ; $6f66: $03
    ld hl, $0145                                  ; $6f67: $21 $45 $01
    ld e, c                                       ; $6f6a: $59
    ld d, c                                       ; $6f6b: $51
    nop                                           ; $6f6c: $00
    rst $28                                       ; $6f6d: $ef
    ld [bc], a                                    ; $6f6e: $02
    add l                                         ; $6f6f: $85
    ld h, e                                       ; $6f70: $63
    ld b, [hl]                                    ; $6f71: $46
    add h                                         ; $6f72: $84
    and c                                         ; $6f73: $a1
    push bc                                       ; $6f74: $c5
    jr nz, jr_06b_6ef7                            ; $6f75: $20 $80

    pop hl                                        ; $6f77: $e1
    ld [bc], a                                    ; $6f78: $02

jr_06b_6f79:
    ldh [rLYC], a                                 ; $6f79: $e0 $45
    ld [bc], a                                    ; $6f7b: $02
    nop                                           ; $6f7c: $00

jr_06b_6f7d:
    rst $38                                       ; $6f7d: $ff
    add b                                         ; $6f7e: $80
    add l                                         ; $6f7f: $85
    ld l, b                                       ; $6f80: $68
    ld b, [hl]                                    ; $6f81: $46
    jr nz, jr_06b_6fcb                            ; $6f82: $20 $47

    ld b, b                                       ; $6f84: $40
    call nz, Call_06b_59a7                        ; $6f85: $c4 $a7 $59
    ld d, c                                       ; $6f88: $51
    nop                                           ; $6f89: $00
    di                                            ; $6f8a: $f3
    add l                                         ; $6f8b: $85
    ld h, e                                       ; $6f8c: $63
    add hl, sp                                    ; $6f8d: $39
    ld h, d                                       ; $6f8e: $62
    ld b, $a2                                     ; $6f8f: $06 $a2
    ld [hl], $c4                                  ; $6f91: $36 $c4
    and l                                         ; $6f93: $a5
    add l                                         ; $6f94: $85
    ld a, [c]                                     ; $6f95: $f2
    nop                                           ; $6f96: $00
    ld a, [c]                                     ; $6f97: $f2
    sbc $df                                       ; $6f98: $de $df
    sbc c                                         ; $6f9a: $99
    ld b, c                                       ; $6f9b: $41
    dec sp                                        ; $6f9c: $3b
    and c                                         ; $6f9d: $a1
    ld b, d                                       ; $6f9e: $42
    ld b, a                                       ; $6f9f: $47
    and b                                         ; $6fa0: $a0
    or d                                          ; $6fa1: $b2
    ld b, b                                       ; $6fa2: $40
    dec [hl]                                      ; $6fa3: $35
    add l                                         ; $6fa4: $85
    ld b, c                                       ; $6fa5: $41
    or e                                          ; $6fa6: $b3
    ld h, d                                       ; $6fa7: $62
    db $e4                                        ; $6fa8: $e4
    ld e, c                                       ; $6fa9: $59
    inc [hl]                                      ; $6faa: $34
    nop                                           ; $6fab: $00
    sub $44                                       ; $6fac: $d6 $44
    ld b, $40                                     ; $6fae: $06 $40
    ld bc, $4440                                  ; $6fb0: $01 $40 $44
    ld b, [hl]                                    ; $6fb3: $46
    or d                                          ; $6fb4: $b2
    ld d, c                                       ; $6fb5: $51
    and c                                         ; $6fb6: $a1
    or e                                          ; $6fb7: $b3
    ld [bc], a                                    ; $6fb8: $02
    ld e, c                                       ; $6fb9: $59
    dec [hl]                                      ; $6fba: $35
    nop                                           ; $6fbb: $00
    push de                                       ; $6fbc: $d5
    ld b, b                                       ; $6fbd: $40
    push bc                                       ; $6fbe: $c5
    pop hl                                        ; $6fbf: $e1
    ld a, [hl-]                                   ; $6fc0: $3a
    dec b                                         ; $6fc1: $05
    and b                                         ; $6fc2: $a0
    jp $9eb2                                      ; $6fc3: $c3 $b2 $9e


    or e                                          ; $6fc6: $b3
    ld h, d                                       ; $6fc7: $62
    nop                                           ; $6fc8: $00
    rst $38                                       ; $6fc9: $ff
    add l                                         ; $6fca: $85

jr_06b_6fcb:
    ld b, h                                       ; $6fcb: $44
    ret nz                                        ; $6fcc: $c0

    push bc                                       ; $6fcd: $c5
    ld a, [hl-]                                   ; $6fce: $3a
    ld b, l                                       ; $6fcf: $45
    ret nz                                        ; $6fd0: $c0

    add e                                         ; $6fd1: $83
    jp nz, $a004                                  ; $6fd2: $c2 $04 $a0

    or e                                          ; $6fd5: $b3
    ld h, c                                       ; $6fd6: $61
    nop                                           ; $6fd7: $00
    rst $38                                       ; $6fd8: $ff
    add l                                         ; $6fd9: $85
    ld h, $47                                     ; $6fda: $26 $47
    ld [bc], a                                    ; $6fdc: $02
    ld b, l                                       ; $6fdd: $45
    ld a, [hl-]                                   ; $6fde: $3a
    ret nz                                        ; $6fdf: $c0

    ld bc, $47e0                                  ; $6fe0: $01 $e0 $47
    ld hl, $6409                                  ; $6fe3: $21 $09 $64
    add l                                         ; $6fe6: $85
    sub d                                         ; $6fe7: $92
    nop                                           ; $6fe8: $00
    db $d3                                        ; $6fe9: $d3
    ld b, l                                       ; $6fea: $45
    ld [hl+], a                                   ; $6feb: $22
    add hl, sp                                    ; $6fec: $39
    dec [hl]                                      ; $6fed: $35
    rlca                                          ; $6fee: $07
    ld [hl], $37                                  ; $6fef: $36 $37
    jr c, jr_06b_6f79                             ; $6ff1: $38 $86

    add d                                         ; $6ff3: $82
    inc b                                         ; $6ff4: $04
    call nz, $ff00                                ; $6ff5: $c4 $00 $ff
    add l                                         ; $6ff8: $85
    dec b                                         ; $6ff9: $05
    ld b, l                                       ; $6ffa: $45
    ld [hl+], a                                   ; $6ffb: $22
    ld h, b                                       ; $6ffc: $60
    inc bc                                        ; $6ffd: $03
    and c                                         ; $6ffe: $a1
    rlca                                          ; $6fff: $07
    add c                                         ; $7000: $81
    ld c, b                                       ; $7001: $48
    ld bc, $f685                                  ; $7002: $01 $85 $f6
    nop                                           ; $7005: $00
    call nc, $f6f5                                ; $7006: $d4 $f5 $f6
    jp nz, Jump_000_0f60                          ; $7009: $c2 $60 $0f

    ld [hl], $38                                  ; $700c: $36 $38
    scf                                           ; $700e: $37
    ld b, e                                       ; $700f: $43
    jp Jump_06b_73c1                              ; $7010: $c3 $c1 $73


    ld h, b                                       ; $7013: $60
    add l                                         ; $7014: $85
    or $00                                        ; $7015: $f6 $00
    call nc, $020e                                ; $7017: $d4 $0e $02
    ret nz                                        ; $701a: $c0

    ld b, [hl]                                    ; $701b: $46
    ld b, [hl]                                    ; $701c: $46
    ld b, l                                       ; $701d: $45
    ret z                                         ; $701e: $c8

    add b                                         ; $701f: $80
    ld a, [$4880]                                 ; $7020: $fa $80 $48
    ld [bc], a                                    ; $7023: $02
    add l                                         ; $7024: $85
    sub l                                         ; $7025: $95
    nop                                           ; $7026: $00
    nop                                           ; $7027: $00
    or e                                          ; $7028: $b3
    ld b, $22                                     ; $7029: $06 $22
    jp $bbe1                                      ; $702b: $c3 $e1 $bb


    add c                                         ; $702e: $81
    ld c, b                                       ; $702f: $48
    ld [bc], a                                    ; $7030: $02
    nop                                           ; $7031: $00
    rst $38                                       ; $7032: $ff
    nop                                           ; $7033: $00
    ld l, c                                       ; $7034: $69
    ld b, $25                                     ; $7035: $06 $25
    jp nz, $e280                                  ; $7037: $c2 $80 $e2

    and c                                         ; $703a: $a1
    or l                                          ; $703b: $b5
    inc bc                                        ; $703c: $03
    nop                                           ; $703d: $00
    rst $38                                       ; $703e: $ff
    add l                                         ; $703f: $85
    dec b                                         ; $7040: $05
    ld b, $24                                     ; $7041: $06 $24
    ld b, l                                       ; $7043: $45
    or d                                          ; $7044: $b2
    ccf                                           ; $7045: $3f
    ld b, c                                       ; $7046: $41
    ld b, e                                       ; $7047: $43
    ld b, e                                       ; $7048: $43
    ld b, c                                       ; $7049: $41
    ld b, e                                       ; $704a: $43
    ld b, l                                       ; $704b: $45
    adc d                                         ; $704c: $8a
    ld bc, $41c6                                  ; $704d: $01 $c6 $41
    ret nc                                        ; $7050: $d0

    nop                                           ; $7051: $00
    rst $38                                       ; $7052: $ff
    ld a, e                                       ; $7053: $7b
    inc b                                         ; $7054: $04
    ld b, $24                                     ; $7055: $06 $24
    inc b                                         ; $7057: $04
    ld b, b                                       ; $7058: $40
    dec sp                                        ; $7059: $3b
    db $fd                                        ; $705a: $fd
    ldh [$36], a                                  ; $705b: $e0 $36
    ld b, l                                       ; $705d: $45
    ld hl, sp+$02                                 ; $705e: $f8 $02
    and e                                         ; $7060: $a3
    nop                                           ; $7061: $00
    rst $38                                       ; $7062: $ff
    nop                                           ; $7063: $00
    add a                                         ; $7064: $87
    push af                                       ; $7065: $f5
    or $9f                                        ; $7066: $f6 $9f
    sbc h                                         ; $7068: $9c
    ld b, h                                       ; $7069: $44
    rst $30                                       ; $706a: $f7
    inc a                                         ; $706b: $3c
    and h                                         ; $706c: $a4
    ld h, h                                       ; $706d: $64
    rst $38                                       ; $706e: $ff
    ldh [$a5], a                                  ; $706f: $e0 $a5
    inc a                                         ; $7071: $3c
    ld b, h                                       ; $7072: $44
    sbc [hl]                                      ; $7073: $9e
    ldh a, [$b5]                                  ; $7074: $f0 $b5
    ld [bc], a                                    ; $7076: $02
    nop                                           ; $7077: $00
    rst $38                                       ; $7078: $ff
    add l                                         ; $7079: $85
    dec b                                         ; $707a: $05
    ld b, d                                       ; $707b: $42
    ld h, e                                       ; $707c: $63
    ld b, d                                       ; $707d: $42
    dec [hl]                                      ; $707e: $35
    ld l, c                                       ; $707f: $69
    and e                                         ; $7080: $a3
    ccf                                           ; $7081: $3f
    dec [hl]                                      ; $7082: $35
    dec [hl]                                      ; $7083: $35
    and e                                         ; $7084: $a3
    ld l, d                                       ; $7085: $6a
    dec [hl]                                      ; $7086: $35
    ld b, d                                       ; $7087: $42
    dec b                                         ; $7088: $05
    ld h, e                                       ; $7089: $63
    nop                                           ; $708a: $00
    rst $38                                       ; $708b: $ff
    inc b                                         ; $708c: $04
    nop                                           ; $708d: $00
    add l                                         ; $708e: $85
    ld b, d                                       ; $708f: $42
    ld h, d                                       ; $7090: $62
    xor [hl]                                      ; $7091: $ae
    ret nz                                        ; $7092: $c0

    ldh [$82], a                                  ; $7093: $e0 $82
    ld b, c                                       ; $7095: $41
    ret nz                                        ; $7096: $c0

    ld [c], a                                     ; $7097: $e2
    dec b                                         ; $7098: $05
    ld h, d                                       ; $7099: $62
    nop                                           ; $709a: $00
    rst $38                                       ; $709b: $ff
    db $fc                                        ; $709c: $fc
    add l                                         ; $709d: $85
    inc bc                                        ; $709e: $03
    add $01                                       ; $709f: $c6 $01
    and c                                         ; $70a1: $a1
    ld b, [hl]                                    ; $70a2: $46
    xor a                                         ; $70a3: $af
    ld b, h                                       ; $70a4: $44
    inc a                                         ; $70a5: $3c
    ld l, e                                       ; $70a6: $6b
    dec b                                         ; $70a7: $05
    ld [hl], c                                    ; $70a8: $71
    rst $38                                       ; $70a9: $ff
    ldh [$6d], a                                  ; $70aa: $e0 $6d
    ld b, b                                       ; $70ac: $40
    ldh [rTIMA], a                                ; $70ad: $e0 $05
    ld h, d                                       ; $70af: $62
    nop                                           ; $70b0: $00
    rst $38                                       ; $70b1: $ff
    nop                                           ; $70b2: $00
    ld h, [hl]                                    ; $70b3: $66
    ld bc, $c0e1                                  ; $70b4: $01 $e1 $c0
    ld b, a                                       ; $70b7: $47
    nop                                           ; $70b8: $00
    ret nz                                        ; $70b9: $c0

    call nz, $41c4                                ; $70ba: $c4 $c4 $41
    inc bc                                        ; $70bd: $03
    ld h, d                                       ; $70be: $62
    nop                                           ; $70bf: $00
    rst $38                                       ; $70c0: $ff
    nop                                           ; $70c1: $00
    dec h                                         ; $70c2: $25
    ret nc                                        ; $70c3: $d0

    pop de                                        ; $70c4: $d1
    nop                                           ; $70c5: $00
    cp a                                          ; $70c6: $bf
    pop hl                                        ; $70c7: $e1
    ld b, e                                       ; $70c8: $43
    ret nz                                        ; $70c9: $c0

    ld b, b                                       ; $70ca: $40
    ret nz                                        ; $70cb: $c0

    ld b, [hl]                                    ; $70cc: $46
    ld b, b                                       ; $70cd: $40
    ld [hl-], a                                   ; $70ce: $32
    ld h, b                                       ; $70cf: $60
    nop                                           ; $70d0: $00
    rst $38                                       ; $70d1: $ff
    nop                                           ; $70d2: $00
    ld l, c                                       ; $70d3: $69
    rst $10                                       ; $70d4: $d7
    nop                                           ; $70d5: $00
    dec sp                                        ; $70d6: $3b
    sbc a                                         ; $70d7: $9f
    sbc l                                         ; $70d8: $9d
    rst $38                                       ; $70d9: $ff
    db $e4                                        ; $70da: $e4
    sbc a                                         ; $70db: $9f
    push af                                       ; $70dc: $f5

jr_06b_70dd:
    or $c8                                        ; $70dd: $f6 $c8
    ld bc, $ff00                                  ; $70df: $01 $00 $ff
    nop                                           ; $70e2: $00
    ld a, e                                       ; $70e3: $7b
    ld b, [hl]                                    ; $70e4: $46
    ret nz                                        ; $70e5: $c0

    and e                                         ; $70e6: $a3
    ld d, b                                       ; $70e7: $50
    inc hl                                        ; $70e8: $23
    adc e                                         ; $70e9: $8b
    jr nz, jr_06b_70dd                            ; $70ea: $20 $f1

    db $e4                                        ; $70ec: $e4
    nop                                           ; $70ed: $00
    rst $38                                       ; $70ee: $ff
    and a                                         ; $70ef: $a7
    add l                                         ; $70f0: $85
    ld de, $00c4                                  ; $70f1: $11 $c4 $00
    ld d, b                                       ; $70f4: $50
    ld hl, $c174                                  ; $70f5: $21 $74 $c1
    ld [bc], a                                    ; $70f8: $02
    call nz, $f800                                ; $70f9: $c4 $00 $f8
    nop                                           ; $70fc: $00
    nop                                           ; $70fd: $00
    nop                                           ; $70fe: $00
    pop bc                                        ; $70ff: $c1
    nop                                           ; $7100: $00
    rst $38                                       ; $7101: $ff
    rst $38                                       ; $7102: $ff
    rst $38                                       ; $7103: $ff
    rst $38                                       ; $7104: $ff
    rst $38                                       ; $7105: $ff
    rst $38                                       ; $7106: $ff
    rst $38                                       ; $7107: $ff
    rst $38                                       ; $7108: $ff
    rst $38                                       ; $7109: $ff
    rst $38                                       ; $710a: $ff
    nop                                           ; $710b: $00
    nop                                           ; $710c: $00
    dec c                                         ; $710d: $0d
    add b                                         ; $710e: $80
    cp $e0                                        ; $710f: $fe $e0
    nop                                           ; $7111: $00
    ld b, b                                       ; $7112: $40
    ret c                                         ; $7113: $d8

    push hl                                       ; $7114: $e5
    rst $30                                       ; $7115: $f7
    and $ff                                       ; $7116: $e6 $ff
    rst $38                                       ; $7118: $ff
    rst $38                                       ; $7119: $ff
    rst $30                                       ; $711a: $f7
    nop                                           ; $711b: $00
    nop                                           ; $711c: $00
    nop                                           ; $711d: $00
    ld bc, $1e00                                  ; $711e: $01 $00 $1e
    dec b                                         ; $7121: $05
    ld bc, $1f01                                  ; $7122: $01 $01 $1f
    dec b                                         ; $7125: $05
    ld [bc], a                                    ; $7126: $02
    ld [bc], a                                    ; $7127: $02
    daa                                           ; $7128: $27
    dec b                                         ; $7129: $05
    ld bc, $1b03                                  ; $712a: $01 $03 $1b
    rlca                                          ; $712d: $07
    ld bc, $1a04                                  ; $712e: $01 $04 $1a
    ld [$0501], sp                                ; $7131: $08 $01 $05
    ld a, [de]                                    ; $7134: $1a
    add hl, bc                                    ; $7135: $09
    ld bc, $1b06                                  ; $7136: $01 $06 $1b
    ld a, [bc]                                    ; $7139: $0a
    ld bc, $2407                                  ; $713a: $01 $07 $24
    dec bc                                        ; $713d: $0b
    ld bc, $2408                                  ; $713e: $01 $08 $24
    inc c                                         ; $7141: $0c
    ld bc, $2209                                  ; $7142: $01 $09 $22
    ld c, $01                                     ; $7145: $0e $01
    ld a, [bc]                                    ; $7147: $0a
    ld hl, $010f                                  ; $7148: $21 $0f $01
    dec bc                                        ; $714b: $0b
    ld [hl+], a                                   ; $714c: $22
    rrca                                          ; $714d: $0f
    ld bc, $1d0c                                  ; $714e: $01 $0c $1d
    db $10                                        ; $7151: $10
    ld bc, $1e0d                                  ; $7152: $01 $0d $1e
    db $10                                        ; $7155: $10
    ld bc, $210e                                  ; $7156: $01 $0e $21
    db $10                                        ; $7159: $10
    ld bc, $220f                                  ; $715a: $01 $0f $22
    db $10                                        ; $715d: $10
    ld bc, $2310                                  ; $715e: $01 $10 $23
    db $10                                        ; $7161: $10
    ld bc, $2311                                  ; $7162: $01 $11 $23
    ld de, $1201                                  ; $7165: $11 $01 $12
    ld e, $12                                     ; $7168: $1e $12
    ld bc, $1f13                                  ; $716a: $01 $13 $1f
    inc de                                        ; $716d: $13
    ld bc, $2014                                  ; $716e: $01 $14 $20
    inc de                                        ; $7171: $13
    ld bc, $1d15                                  ; $7172: $01 $15 $1d
    inc d                                         ; $7175: $14
    ld bc, $2016                                  ; $7176: $01 $16 $20
    inc d                                         ; $7179: $14
    ld [bc], a                                    ; $717a: $02
    rla                                           ; $717b: $17
    ld hl, $0214                                  ; $717c: $21 $14 $02
    jr jr_06b_719c                                ; $717f: $18 $1b

    dec d                                         ; $7181: $15
    ld bc, $2319                                  ; $7182: $01 $19 $23
    dec d                                         ; $7185: $15
    ld bc, $231a                                  ; $7186: $01 $1a $23
    ld d, $01                                     ; $7189: $16 $01
    dec de                                        ; $718b: $1b
    inc h                                         ; $718c: $24
    ld d, $01                                     ; $718d: $16 $01
    inc e                                         ; $718f: $1c
    ld hl, $0117                                  ; $7190: $21 $17 $01
    dec e                                         ; $7193: $1d
    inc h                                         ; $7194: $24
    rla                                           ; $7195: $17
    ld bc, $1e1e                                  ; $7196: $01 $1e $1e
    jr jr_06b_719d                                ; $7199: $18 $02

    rra                                           ; $719b: $1f

jr_06b_719c:
    rra                                           ; $719c: $1f

jr_06b_719d:
    jr @+$03                                      ; $719d: $18 $01

    jr nz, jr_06b_71c5                            ; $719f: $20 $24

    jr @+$03                                      ; $71a1: $18 $01

    ld hl, $1825                                  ; $71a3: $21 $25 $18
    ld bc, $1e22                                  ; $71a6: $01 $22 $1e
    add hl, de                                    ; $71a9: $19
    ld bc, $2223                                  ; $71aa: $01 $23 $22
    add hl, de                                    ; $71ad: $19
    ld bc, $2424                                  ; $71ae: $01 $24 $24
    add hl, de                                    ; $71b1: $19
    ld bc, $2525                                  ; $71b2: $01 $25 $25
    add hl, de                                    ; $71b5: $19
    ld bc, $2426                                  ; $71b6: $01 $26 $24
    ld a, [de]                                    ; $71b9: $1a
    ld [bc], a                                    ; $71ba: $02
    daa                                           ; $71bb: $27
    daa                                           ; $71bc: $27
    ld a, [de]                                    ; $71bd: $1a
    ld bc, $2328                                  ; $71be: $01 $28 $23
    dec de                                        ; $71c1: $1b
    ld bc, $2429                                  ; $71c2: $01 $29 $24

jr_06b_71c5:
    dec de                                        ; $71c5: $1b
    ld bc, $222a                                  ; $71c6: $01 $2a $22
    inc e                                         ; $71c9: $1c
    ld bc, $232b                                  ; $71ca: $01 $2b $23
    inc e                                         ; $71cd: $1c
    ld bc, $1b2c                                  ; $71ce: $01 $2c $1b
    dec e                                         ; $71d1: $1d
    ld bc, $202d                                  ; $71d2: $01 $2d $20
    dec e                                         ; $71d5: $1d
    ld bc, $212e                                  ; $71d6: $01 $2e $21
    dec e                                         ; $71d9: $1d
    ld bc, $222f                                  ; $71da: $01 $2f $22
    dec e                                         ; $71dd: $1d
    ld bc, $2030                                  ; $71de: $01 $30 $20
    ld e, $01                                     ; $71e1: $1e $01
    ld sp, $1e21                                  ; $71e3: $31 $21 $1e
    ld [bc], a                                    ; $71e6: $02
    ld [hl-], a                                   ; $71e7: $32
    dec h                                         ; $71e8: $25
    ld e, $01                                     ; $71e9: $1e $01
    inc sp                                        ; $71eb: $33
    ld hl, $011f                                  ; $71ec: $21 $1f $01
    inc [hl]                                      ; $71ef: $34
    jr jr_06b_7214                                ; $71f0: $18 $22

    ld bc, $1935                                  ; $71f2: $01 $35 $19
    ld [hl+], a                                   ; $71f5: $22
    ld bc, $1836                                  ; $71f6: $01 $36 $18
    inc hl                                        ; $71f9: $23
    ld bc, $1937                                  ; $71fa: $01 $37 $19
    inc hl                                        ; $71fd: $23
    ld bc, $1838                                  ; $71fe: $01 $38 $18
    inc h                                         ; $7201: $24
    ld bc, $1e39                                  ; $7202: $01 $39 $1e
    inc h                                         ; $7205: $24
    ld bc, $173a                                  ; $7206: $01 $3a $17
    dec h                                         ; $7209: $25
    ld bc, $183b                                  ; $720a: $01 $3b $18
    dec h                                         ; $720d: $25
    ld bc, $173c                                  ; $720e: $01 $3c $17
    ld h, $01                                     ; $7211: $26 $01
    dec a                                         ; $7213: $3d

jr_06b_7214:
    jr @+$28                                      ; $7214: $18 $26

    ld bc, $173e                                  ; $7216: $01 $3e $17
    daa                                           ; $7219: $27
    ld bc, $1d3f                                  ; $721a: $01 $3f $1d
    daa                                           ; $721d: $27
    ld bc, $1c40                                  ; $721e: $01 $40 $1c
    jr z, jr_06b_7224                             ; $7221: $28 $01

    ld b, c                                       ; $7223: $41

jr_06b_7224:
    dec e                                         ; $7224: $1d
    jr z, jr_06b_7228                             ; $7225: $28 $01

    ld b, d                                       ; $7227: $42

jr_06b_7228:
    ld a, [de]                                    ; $7228: $1a
    add hl, hl                                    ; $7229: $29
    ld bc, $1b43                                  ; $722a: $01 $43 $1b
    add hl, hl                                    ; $722d: $29
    ld bc, $1c44                                  ; $722e: $01 $44 $1c
    add hl, hl                                    ; $7231: $29
    ld bc, $1a45                                  ; $7232: $01 $45 $1a
    ld a, [hl+]                                   ; $7235: $2a
    ld bc, $1b46                                  ; $7236: $01 $46 $1b
    ld a, [hl+]                                   ; $7239: $2a
    ld bc, $1947                                  ; $723a: $01 $47 $19
    dec hl                                        ; $723d: $2b
    ld bc, $1a48                                  ; $723e: $01 $48 $1a
    dec hl                                        ; $7241: $2b
    ld bc, $2049                                  ; $7242: $01 $49 $20
    dec hl                                        ; $7245: $2b
    ld bc, $1b4a                                  ; $7246: $01 $4a $1b
    inc l                                         ; $7249: $2c
    ld bc, $204b                                  ; $724a: $01 $4b $20
    inc l                                         ; $724d: $2c
    ld bc, $1a4c                                  ; $724e: $01 $4c $1a
    dec l                                         ; $7251: $2d
    ld bc, $194d                                  ; $7252: $01 $4d $19
    ld l, $01                                     ; $7255: $2e $01
    ld c, [hl]                                    ; $7257: $4e
    ld a, [de]                                    ; $7258: $1a
    ld l, $01                                     ; $7259: $2e $01
    ld c, a                                       ; $725b: $4f
    dec e                                         ; $725c: $1d
    ld sp, $5001                                  ; $725d: $31 $01 $50
    dec e                                         ; $7260: $1d
    ld [hl-], a                                   ; $7261: $32
    ld bc, $1c51                                  ; $7262: $01 $51 $1c
    inc sp                                        ; $7265: $33
    ld bc, $1d52                                  ; $7266: $01 $52 $1d
    inc sp                                        ; $7269: $33
    ld bc, $1853                                  ; $726a: $01 $53 $18
    inc [hl]                                      ; $726d: $34
    ld bc, $1d54                                  ; $726e: $01 $54 $1d
    inc [hl]                                      ; $7271: $34
    ld bc, $1755                                  ; $7272: $01 $55 $17
    dec [hl]                                      ; $7275: $35
    ld [bc], a                                    ; $7276: $02
    ld d, [hl]                                    ; $7277: $56
    inc d                                         ; $7278: $14
    ld a, [hl-]                                   ; $7279: $3a
    rst $38                                       ; $727a: $ff
    rst $38                                       ; $727b: $ff
    rst $38                                       ; $727c: $ff
    add l                                         ; $727d: $85
    ld [hl], d                                    ; $727e: $72
    push af                                       ; $727f: $f5
    halt                                          ; $7280: $76
    ld b, [hl]                                    ; $7281: $46
    ld a, l                                       ; $7282: $7d
    ld h, c                                       ; $7283: $61
    ld a, l                                       ; $7284: $7d
    ld [hl], c                                    ; $7285: $71
    dec c                                         ; $7286: $0d
    rst $38                                       ; $7287: $ff
    rst $38                                       ; $7288: $ff
    rst $38                                       ; $7289: $ff
    rst $38                                       ; $728a: $ff
    ld [c], a                                     ; $728b: $e2
    pop hl                                        ; $728c: $e1
    ld c, $0e                                     ; $728d: $0e $0e
    ld l, $f5                                     ; $728f: $2e $f5
    ldh a, [$2c]                                  ; $7291: $f0 $2c
    rst $38                                       ; $7293: $ff
    rst $38                                       ; $7294: $ff
    cp [hl]                                       ; $7295: $be
    db $ed                                        ; $7296: $ed
    ld c, $0e                                     ; $7297: $0e $0e
    or c                                          ; $7299: $b1
    db $e3                                        ; $729a: $e3
    ld c, [hl]                                    ; $729b: $4e
    rst $38                                       ; $729c: $ff
    jp hl                                         ; $729d: $e9


    rst $20                                       ; $729e: $e7
    db $e3                                        ; $729f: $e3
    ld [hl], b                                    ; $72a0: $70
    sbc a                                         ; $72a1: $9f
    db $e3                                        ; $72a2: $e3
    rst $18                                       ; $72a3: $df
    db $e4                                        ; $72a4: $e4
    ld a, a                                       ; $72a5: $7f
    rst $28                                       ; $72a6: $ef
    pop hl                                        ; $72a7: $e1
    jp hl                                         ; $72a8: $e9


    ld c, $6e                                     ; $72a9: $0e $6e
    dec bc                                        ; $72ab: $0b
    rst $38                                       ; $72ac: $ff
    jp hl                                         ; $72ad: $e9


    inc b                                         ; $72ae: $04
    cp a                                          ; $72af: $bf
    ld [c], a                                     ; $72b0: $e2
    ld e, e                                       ; $72b1: $5b
    ld [c], a                                     ; $72b2: $e2
    ld c, $c0                                     ; $72b3: $0e $c0
    or $e1                                        ; $72b5: $f6 $e1
    jp hl                                         ; $72b7: $e9


    pop bc                                        ; $72b8: $c1
    db $ec                                        ; $72b9: $ec
    cp a                                          ; $72ba: $bf
    and $c0                                       ; $72bb: $e6 $c0
    rst $38                                       ; $72bd: $ff
    ld a, h                                       ; $72be: $7c
    db $f4                                        ; $72bf: $f4
    jp $e082                                      ; $72c0: $c3 $82 $e0


    inc c                                         ; $72c3: $0c
    inc c                                         ; $72c4: $0c
    inc c                                         ; $72c5: $0c
    inc l                                         ; $72c6: $2c

Jump_06b_72c7:
    inc l                                         ; $72c7: $2c
    db $fc                                        ; $72c8: $fc
    ldh [rP1], a                                  ; $72c9: $e0 $00
    ld hl, sp-$1e                                 ; $72cb: $f8 $e2
    ld a, [hl]                                    ; $72cd: $7e
    push hl                                       ; $72ce: $e5
    rst $18                                       ; $72cf: $df
    and $de                                       ; $72d0: $e6 $de
    call $e44a                                    ; $72d2: $cd $4a $e4
    ld b, e                                       ; $72d5: $43
    and $c2                                       ; $72d6: $e6 $c2
    ldh [$fd], a                                  ; $72d8: $e0 $fd
    add sp, $01                                   ; $72da: $e8 $01
    inc l                                         ; $72dc: $2c
    cp [hl]                                       ; $72dd: $be
    ldh [$fc], a                                  ; $72de: $e0 $fc
    call nz, $e503                                ; $72e0: $c4 $03 $e5
    sbc h                                         ; $72e3: $9c
    call z, $e9c0                                 ; $72e4: $cc $c0 $e9
    pop bc                                        ; $72e7: $c1
    xor $7d                                       ; $72e8: $ee $7d
    db $e3                                        ; $72ea: $e3
    ld h, b                                       ; $72eb: $60
    db $fc                                        ; $72ec: $fc
    push bc                                       ; $72ed: $c5
    db $d3                                        ; $72ee: $d3
    ret                                           ; $72ef: $c9


    add b                                         ; $72f0: $80
    db $ec                                        ; $72f1: $ec
    ld b, e                                       ; $72f2: $43
    push hl                                       ; $72f3: $e5
    add d                                         ; $72f4: $82
    add sp, $4c                                   ; $72f5: $e8 $4c
    ld l, h                                       ; $72f7: $6c
    scf                                           ; $72f8: $37
    ldh [$03], a                                  ; $72f9: $e0 $03
    ld l, h                                       ; $72fb: $6c
    ld c, h                                       ; $72fc: $4c
    cp a                                          ; $72fd: $bf
    push hl                                       ; $72fe: $e5
    dec de                                        ; $72ff: $1b
    ret nz                                        ; $7300: $c0

    add b                                         ; $7301: $80
    call z, $ca13                                 ; $7302: $cc $13 $ca
    pop hl                                        ; $7305: $e1
    pop hl                                        ; $7306: $e1
    ld b, e                                       ; $7307: $43
    ld [$6c0b], a                                 ; $7308: $ea $0b $6c
    ld c, h                                       ; $730b: $4c
    cp $e0                                        ; $730c: $fe $e0
    ld l, h                                       ; $730e: $6c
    cp h                                          ; $730f: $bc
    pop hl                                        ; $7310: $e1
    ld a, [hl]                                    ; $7311: $7e
    and $40                                       ; $7312: $e6 $40
    adc $27                                       ; $7314: $ce $27
    jp z, Jump_06b_47f0                           ; $7316: $ca $f0 $47

    ret nz                                        ; $7319: $c0

    call $8bc1                                    ; $731a: $cd $c1 $8b
    pop hl                                        ; $731d: $e1
    ret                                           ; $731e: $c9


    pop hl                                        ; $731f: $e1
    ld c, h                                       ; $7320: $4c
    dec hl                                        ; $7321: $2b
    dec bc                                        ; $7322: $0b
    ld c, h                                       ; $7323: $4c
    ld bc, $b36c                                  ; $7324: $01 $6c $b3
    jp nz, $c0b6                                  ; $7327: $c2 $b6 $c0

    db $fc                                        ; $732a: $fc
    push bc                                       ; $732b: $c5
    sub a                                         ; $732c: $97
    call nz, $a5f0                                ; $732d: $c4 $f0 $a5
    rst $20                                       ; $7330: $e7
    push bc                                       ; $7331: $c5
    rst $20                                       ; $7332: $e7
    ld [c], a                                     ; $7333: $e2
    ld a, b                                       ; $7334: $78
    ld [$c0c0], sp                                ; $7335: $08 $c0 $c0
    ld [c], a                                     ; $7338: $e2
    adc e                                         ; $7339: $8b
    ldh [rWX], a                                  ; $733a: $e0 $4b
    ld c, e                                       ; $733c: $4b
    ld c, h                                       ; $733d: $4c
    ld c, h                                       ; $733e: $4c
    ret nz                                        ; $733f: $c0

    ldh [rNR32], a                                ; $7340: $e0 $1c
    rst $30                                       ; $7342: $f7
    and c                                         ; $7343: $a1
    ld a, h                                       ; $7344: $7c
    ldh [$4c], a                                  ; $7345: $e0 $4c
    inc c                                         ; $7347: $0c
    inc c                                         ; $7348: $0c
    ld hl, sp-$55                                 ; $7349: $f8 $ab
    ld b, $d1                                     ; $734b: $06 $d1
    pop bc                                        ; $734d: $c1
    add sp, -$41                                  ; $734e: $e8 $bf
    dec bc                                        ; $7350: $0b
    dec bc                                        ; $7351: $0b
    ld c, e                                       ; $7352: $4b
    ld c, e                                       ; $7353: $4b
    dec hl                                        ; $7354: $2b
    dec hl                                        ; $7355: $2b
    pop bc                                        ; $7356: $c1
    ldh [$0a], a                                  ; $7357: $e0 $0a
    ld bc, $b50a                                  ; $7359: $01 $0a $b5
    and c                                         ; $735c: $a1
    dec [hl]                                      ; $735d: $35
    jp nz, $aaf8                                  ; $735e: $c2 $f8 $aa

    ld b, $d0                                     ; $7361: $06 $d0
    adc d                                         ; $7363: $8a
    and d                                         ; $7364: $a2
    ld b, c                                       ; $7365: $41
    ld [c], a                                     ; $7366: $e2
    adc b                                         ; $7367: $88
    db $e4                                        ; $7368: $e4
    rla                                           ; $7369: $17
    ld c, e                                       ; $736a: $4b
    dec hl                                        ; $736b: $2b
    ld c, e                                       ; $736c: $4b
    ret nz                                        ; $736d: $c0

    ld [c], a                                     ; $736e: $e2
    ld c, e                                       ; $736f: $4b
    dec hl                                        ; $7370: $2b
    db $e3                                        ; $7371: $e3
    halt                                          ; $7372: $76
    and [hl]                                      ; $7373: $a6
    ret nz                                        ; $7374: $c0

    push af                                       ; $7375: $f5
    ld [de], a                                    ; $7376: $12
    pop bc                                        ; $7377: $c1
    push hl                                       ; $7378: $e5
    ld l, h                                       ; $7379: $6c
    ld c, b                                       ; $737a: $48
    db $e4                                        ; $737b: $e4
    rst $00                                       ; $737c: $c7
    ldh [rWX], a                                  ; $737d: $e0 $4b
    rst $38                                       ; $737f: $ff
    ld [c], a                                     ; $7380: $e2
    db $ec                                        ; $7381: $ec
    jp nz, $e17f                                  ; $7382: $c2 $7f $e1

    sub c                                         ; $7385: $91
    dec bc                                        ; $7386: $0b
    ld a, a                                       ; $7387: $7f
    ret nz                                        ; $7388: $c0

    and d                                         ; $7389: $a2
    sub [hl]                                      ; $738a: $96
    ret nz                                        ; $738b: $c0

    and $2c                                       ; $738c: $e6 $2c
    pop bc                                        ; $738e: $c1
    db $e4                                        ; $738f: $e4
    ei                                            ; $7390: $fb
    add e                                         ; $7391: $83
    dec hl                                        ; $7392: $2b
    pop hl                                        ; $7393: $e1
    dec hl                                        ; $7394: $2b
    ret nz                                        ; $7395: $c0

    db $e3                                        ; $7396: $e3
    ld a, a                                       ; $7397: $7f
    ld [c], a                                     ; $7398: $e2
    ld h, l                                       ; $7399: $65
    sub b                                         ; $739a: $90
    ld b, [hl]                                    ; $739b: $46
    add l                                         ; $739c: $85
    ld c, $6e                                     ; $739d: $0e $6e
    ld a, [bc]                                    ; $739f: $0a
    sub c                                         ; $73a0: $91
    ld a, [bc]                                    ; $73a1: $0a
    add e                                         ; $73a2: $83
    jp $ebc0                                      ; $73a3: $c3 $c0 $eb


    cp [hl]                                       ; $73a6: $be
    ldh [$4c], a                                  ; $73a7: $e0 $4c
    pop bc                                        ; $73a9: $c1
    ret nz                                        ; $73aa: $c0

    inc sp                                        ; $73ab: $33
    and c                                         ; $73ac: $a1
    ld a, [bc]                                    ; $73ad: $0a
    pop hl                                        ; $73ae: $e1
    ld a, [bc]                                    ; $73af: $0a
    ld a, h                                       ; $73b0: $7c
    add $3f                                       ; $73b1: $c6 $3f
    xor [hl]                                      ; $73b3: $ae
    adc h                                         ; $73b4: $8c
    add b                                         ; $73b5: $80
    ret nz                                        ; $73b6: $c0

    jp hl                                         ; $73b7: $e9


    ld l, e                                       ; $73b8: $6b
    ld c, e                                       ; $73b9: $4b
    ld l, e                                       ; $73ba: $6b
    ld bc, $790b                                  ; $73bb: $01 $0b $79
    rst $20                                       ; $73be: $e7
    cp c                                          ; $73bf: $b9

jr_06b_73c0:
    and c                                         ; $73c0: $a1

Jump_06b_73c1:
    db $ed                                        ; $73c1: $ed
    add b                                         ; $73c2: $80
    or e                                          ; $73c3: $b3
    ret nz                                        ; $73c4: $c0

    cp c                                          ; $73c5: $b9
    and d                                         ; $73c6: $a2
    inc a                                         ; $73c7: $3c
    jp nz, $aa6f                                  ; $73c8: $c2 $6f $aa

    ld hl, sp+$67                                 ; $73cb: $f8 $67
    add b                                         ; $73cd: $80
    jp $cac5                                      ; $73ce: $c3 $c5 $ca


    add c                                         ; $73d1: $81
    ld l, e                                       ; $73d2: $6b
    ld l, e                                       ; $73d3: $6b
    ld a, [bc]                                    ; $73d4: $0a
    ld a, [bc]                                    ; $73d5: $0a
    ld a, [bc]                                    ; $73d6: $0a
    add c                                         ; $73d7: $81
    ld l, e                                       ; $73d8: $6b
    dec sp                                        ; $73d9: $3b
    add a                                         ; $73da: $87
    ld b, b                                       ; $73db: $40
    pop bc                                        ; $73dc: $c1
    cp $c6                                        ; $73dd: $fe $c6
    pop de                                        ; $73df: $d1
    add [hl]                                      ; $73e0: $86
    sbc b                                         ; $73e1: $98
    ld h, a                                       ; $73e2: $67
    ret nz                                        ; $73e3: $c0

    db $eb                                        ; $73e4: $eb
    inc c                                         ; $73e5: $0c
    dec b                                         ; $73e6: $05
    inc c                                         ; $73e7: $0c
    pop bc                                        ; $73e8: $c1
    pop hl                                        ; $73e9: $e1
    ld c, d                                       ; $73ea: $4a
    ld b, [hl]                                    ; $73eb: $46
    jp nz, Jump_06b_64f7                          ; $73ec: $c2 $f7 $64

    ccf                                           ; $73ef: $3f
    ld [c], a                                     ; $73f0: $e2
    cp $ca                                        ; $73f1: $fe $ca
    add hl, bc                                    ; $73f3: $09
    and $40                                       ; $73f4: $e6 $40
    xor a                                         ; $73f6: $af
    ld h, h                                       ; $73f7: $64
    add d                                         ; $73f8: $82
    ret nz                                        ; $73f9: $c0

    pop bc                                        ; $73fa: $c1
    and $16                                       ; $73fb: $e6 $16
    pop hl                                        ; $73fd: $e1
    cp a                                          ; $73fe: $bf
    ldh [$7f], a                                  ; $73ff: $e0 $7f
    rst $20                                       ; $7401: $e7
    dec hl                                        ; $7402: $2b

jr_06b_7403:
    ccf                                           ; $7403: $3f
    db $e3                                        ; $7404: $e3
    jr jr_06b_7403                                ; $7405: $18 $fc

    and c                                         ; $7407: $a1
    ld a, [hl]                                    ; $7408: $7e
    call $f1c0                                    ; $7409: $cd $c0 $f1
    inc c                                         ; $740c: $0c
    inc l                                         ; $740d: $2c
    ret nz                                        ; $740e: $c0

    db $ed                                        ; $740f: $ed
    ld l, $85                                     ; $7410: $2e $85
    ld a, [hl]                                    ; $7412: $7e
    jp Jump_06b_7fc0                              ; $7413: $c3 $c0 $7f


    xor c                                         ; $7416: $a9
    xor h                                         ; $7417: $ac
    ld h, d                                       ; $7418: $62
    dec hl                                        ; $7419: $2b
    and c                                         ; $741a: $a1
    jr jr_06b_73c0                                ; $741b: $18 $a3

    ret z                                         ; $741d: $c8

    add h                                         ; $741e: $84
    add b                                         ; $741f: $80
    pop hl                                        ; $7420: $e1
    ld a, [bc]                                    ; $7421: $0a
    ld l, d                                       ; $7422: $6a
    ld bc, $c04b                                  ; $7423: $01 $4b $c0
    db $ed                                        ; $7426: $ed
    or l                                          ; $7427: $b5
    ld h, b                                       ; $7428: $60
    ret nz                                        ; $7429: $c0

    db $ed                                        ; $742a: $ed
    add a                                         ; $742b: $87
    ld h, l                                       ; $742c: $65
    jp nz, $9aa0                                  ; $742d: $c2 $a0 $9a

    call nz, $80c4                                ; $7430: $c4 $c4 $80
    inc h                                         ; $7433: $24
    pop bc                                        ; $7434: $c1
    ld [c], a                                     ; $7435: $e2
    cp [hl]                                       ; $7436: $be
    ret nz                                        ; $7437: $c0

    ld c, e                                       ; $7438: $4b
    cp [hl]                                       ; $7439: $be
    db $e4                                        ; $743a: $e4
    add b                                         ; $743b: $80
    push hl                                       ; $743c: $e5
    ld c, h                                       ; $743d: $4c
    ret nz                                        ; $743e: $c0

    ld a, [$668f]                                 ; $743f: $fa $8f $66
    add c                                         ; $7442: $81
    ld c, d                                       ; $7443: $4a
    ret nz                                        ; $7444: $c0

    db $e4                                        ; $7445: $e4
    cp b                                          ; $7446: $b8
    and [hl]                                      ; $7447: $a6
    cp [hl]                                       ; $7448: $be
    and l                                         ; $7449: $a5
    add b                                         ; $744a: $80
    rst $38                                       ; $744b: $ff
    jp z, $8162                                   ; $744c: $ca $62 $81

    db $e3                                        ; $744f: $e3
    ld a, [hl+]                                   ; $7450: $2a
    ld h, b                                       ; $7451: $60
    add b                                         ; $7452: $80
    rst $08                                       ; $7453: $cf
    add b                                         ; $7454: $80
    db $e4                                        ; $7455: $e4
    ld b, d                                       ; $7456: $42
    or h                                          ; $7457: $b4
    jp nz, $c1ca                                  ; $7458: $c2 $ca $c1

    ld [$4c0b], a                                 ; $745b: $ea $0b $4c
    inc a                                         ; $745e: $3c
    add e                                         ; $745f: $83
    ldh a, [$80]                                  ; $7460: $f0 $80
    ld [c], a                                     ; $7462: $e2

Call_06b_7463:
    sub $29                                       ; $7463: $d6 $29
    adc b                                         ; $7465: $88
    daa                                           ; $7466: $27
    ld b, b                                       ; $7467: $40
    ret                                           ; $7468: $c9


    ld c, d                                       ; $7469: $4a
    ld c, d                                       ; $746a: $4a
    ld a, [bc]                                    ; $746b: $0a
    ld a, [hl+]                                   ; $746c: $2a
    daa                                           ; $746d: $27
    ld a, [hl+]                                   ; $746e: $2a
    ld a, [bc]                                    ; $746f: $0a
    ld c, e                                       ; $7470: $4b
    ld bc, $3de6                                  ; $7471: $01 $e6 $3d
    and d                                         ; $7474: $a2
    inc l                                         ; $7475: $2c
    dec sp                                        ; $7476: $3b
    and c                                         ; $7477: $a1
    add b                                         ; $7478: $80
    push bc                                       ; $7479: $c5
    add b                                         ; $747a: $80
    scf                                           ; $747b: $37
    ld h, a                                       ; $747c: $67
    ld b, [hl]                                    ; $747d: $46
    ld [hl+], a                                   ; $747e: $22
    add b                                         ; $747f: $80
    and e                                         ; $7480: $a3
    db $db                                        ; $7481: $db
    and h                                         ; $7482: $a4
    ld c, d                                       ; $7483: $4a
    ld b, b                                       ; $7484: $40
    rst $38                                       ; $7485: $ff
    pop bc                                        ; $7486: $c1
    ld b, c                                       ; $7487: $41
    pop hl                                        ; $7488: $e1
    dec hl                                        ; $7489: $2b
    ld [bc], a                                    ; $748a: $02
    ld a, h                                       ; $748b: $7c
    and a                                         ; $748c: $a7
    ld l, e                                       ; $748d: $6b
    inc [hl]                                      ; $748e: $34
    ld b, c                                       ; $748f: $41
    ld [hl], e                                    ; $7490: $73
    ld h, b                                       ; $7491: $60
    ld sp, hl                                     ; $7492: $f9
    ld b, e                                       ; $7493: $43
    ld d, [hl]                                    ; $7494: $56
    daa                                           ; $7495: $27
    ld a, [hl+]                                   ; $7496: $2a
    ld h, l                                       ; $7497: $65
    nop                                           ; $7498: $00
    jp z, Jump_06b_7f06                           ; $7499: $ca $06 $7f

    ldh [$0a], a                                  ; $749c: $e0 $0a
    ld a, [hl+]                                   ; $749e: $2a
    add $60                                       ; $749f: $c6 $60
    pop bc                                        ; $74a1: $c1
    add sp, $00                                   ; $74a2: $e8 $00
    ret                                           ; $74a4: $c9


    pop bc                                        ; $74a5: $c1
    stop                                          ; $74a6: $10 $00
    jp z, $96fe                                   ; $74a8: $ca $fe $96

    add b                                         ; $74ab: $80
    ld c, e                                       ; $74ac: $4b
    ld c, d                                       ; $74ad: $4a
    ld c, d                                       ; $74ae: $4a
    ld c, d                                       ; $74af: $4a

jr_06b_74b0:
    ld c, e                                       ; $74b0: $4b
    ld c, e                                       ; $74b1: $4b
    ld l, e                                       ; $74b2: $6b
    ld [bc], a                                    ; $74b3: $02
    rst $30                                       ; $74b4: $f7
    ld h, h                                       ; $74b5: $64
    ld l, e                                       ; $74b6: $6b
    pop bc                                        ; $74b7: $c1
    db $e4                                        ; $74b8: $e4
    add b                                         ; $74b9: $80
    call nz, $9402                                ; $74ba: $c4 $02 $94
    nop                                           ; $74bd: $00
    push bc                                       ; $74be: $c5
    ld c, b                                       ; $74bf: $48
    ld b, b                                       ; $74c0: $40
    inc a                                         ; $74c1: $3c
    ld [c], a                                     ; $74c2: $e2
    add c                                         ; $74c3: $81
    ld l, d                                       ; $74c4: $6a

Call_06b_74c5:
    ld a, $8d                                     ; $74c5: $3e $8d
    nop                                           ; $74c7: $00
    jp z, $064d                                   ; $74c8: $ca $4d $06

    dec a                                         ; $74cb: $3d
    db $e4                                        ; $74cc: $e4
    add b                                         ; $74cd: $80
    xor b                                         ; $74ce: $a8
    ld b, e                                       ; $74cf: $43
    jr nz, jr_06b_751e                            ; $74d0: $20 $4c

    rrca                                          ; $74d2: $0f
    ld c, e                                       ; $74d3: $4b
    ld c, e                                       ; $74d4: $4b
    ld a, [bc]                                    ; $74d5: $0a
    ld a, [hl+]                                   ; $74d6: $2a
    ld a, a                                       ; $74d7: $7f
    ldh [$be], a                                  ; $74d8: $e0 $be
    and h                                         ; $74da: $a4
    db $fd                                        ; $74db: $fd
    ld h, l                                       ; $74dc: $65
    nop                                           ; $74dd: $00
    jp nc, $8098                                  ; $74de: $d2 $98 $80

    rst $28                                       ; $74e1: $ef
    inc bc                                        ; $74e2: $03
    jr nz, jr_06b_752b                            ; $74e3: $20 $46

    ld h, b                                       ; $74e5: $60
    dec bc                                        ; $74e6: $0b
    dec bc                                        ; $74e7: $0b

jr_06b_74e8:
    sub h                                         ; $74e8: $94
    ld bc, $a47c                                  ; $74e9: $01 $7c $a4
    ld l, h                                       ; $74ec: $6c
    ldh a, [$f3]                                  ; $74ed: $f0 $f3

jr_06b_74ef:
    ld bc, $bf80                                  ; $74ef: $01 $80 $bf
    ld a, l                                       ; $74f2: $7d
    add a                                         ; $74f3: $87
    add d                                         ; $74f4: $82
    ld b, b                                       ; $74f5: $40
    dec c                                         ; $74f6: $0d
    dec c                                         ; $74f7: $0d
    dec hl                                        ; $74f8: $2b
    dec hl                                        ; $74f9: $2b
    ret nz                                        ; $74fa: $c0

    cp [hl]                                       ; $74fb: $be
    pop hl                                        ; $74fc: $e1
    cp l                                          ; $74fd: $bd
    ld h, [hl]                                    ; $74fe: $66
    add b                                         ; $74ff: $80
    cp e                                          ; $7500: $bb
    add b                                         ; $7501: $80
    add a                                         ; $7502: $87
    pop bc                                        ; $7503: $c1

Jump_06b_7504:
    jr nz, @+$06                                  ; $7504: $20 $04

    and b                                         ; $7506: $a0
    dec c                                         ; $7507: $0d
    dec c                                         ; $7508: $0d
    ld b, $7d                                     ; $7509: $06 $7d
    ld h, d                                       ; $750b: $62
    dec c                                         ; $750c: $0d
    dec c                                         ; $750d: $0d
    or [hl]                                       ; $750e: $b6
    ld h, b                                       ; $750f: $60
    ld a, [hl]                                    ; $7510: $7e

jr_06b_7511:
    add h                                         ; $7511: $84
    ld b, b                                       ; $7512: $40
    sub d                                         ; $7513: $92
    add b                                         ; $7514: $80
    add l                                         ; $7515: $85
    ld a, [de]                                    ; $7516: $1a
    ld h, c                                       ; $7517: $61
    jr nz, jr_06b_74ef                            ; $7518: $20 $d5

    jr nz, jr_06b_74b0                            ; $751a: $20 $94

    and d                                         ; $751c: $a2
    ret z                                         ; $751d: $c8

jr_06b_751e:
    ld [c], a                                     ; $751e: $e2
    add hl, sp                                    ; $751f: $39
    ld h, c                                       ; $7520: $61
    or $40                                        ; $7521: $f6 $40
    ld c, l                                       ; $7523: $4d
    halt                                          ; $7524: $76
    ld h, d                                       ; $7525: $62
    cpl                                           ; $7526: $2f
    ld [hl+], a                                   ; $7527: $22
    jr nz, jr_06b_74e8                            ; $7528: $20 $be

    ld b, [hl]                                    ; $752a: $46

jr_06b_752b:
    jp nz, Jump_06b_40c7                          ; $752b: $c2 $c7 $40

    add a                                         ; $752e: $87
    jp c, $8520                                   ; $752f: $da $20 $85

    add c                                         ; $7532: $81
    ld l, d                                       ; $7533: $6a
    ld c, h                                       ; $7534: $4c
    ld hl, $e188                                  ; $7535: $21 $88 $e1
    ld [$4283], sp                                ; $7538: $08 $83 $42
    ret nz                                        ; $753b: $c0

    pop hl                                        ; $753c: $e1
    ld a, c                                       ; $753d: $79
    jr nz, @+$4d                                  ; $753e: $20 $4b

    ld a, [hl-]                                   ; $7540: $3a
    inc hl                                        ; $7541: $23
    ld b, b                                       ; $7542: $40
    ld l, a                                       ; $7543: $6f
    add b                                         ; $7544: $80
    ld l, b                                       ; $7545: $68
    ld c, $21                                     ; $7546: $0e $21
    nop                                           ; $7548: $00
    add a                                         ; $7549: $87
    ld h, d                                       ; $754a: $62
    add d                                         ; $754b: $82
    ld b, e                                       ; $754c: $43
    ret nz                                        ; $754d: $c0

    pop hl                                        ; $754e: $e1
    ld a, b                                       ; $754f: $78
    ld b, d                                       ; $7550: $42
    ret nz                                        ; $7551: $c0

    pop hl                                        ; $7552: $e1
    cp [hl]                                       ; $7553: $be
    ld h, e                                       ; $7554: $63
    ret nz                                        ; $7555: $c0

    add sp, -$40                                  ; $7556: $e8 $c0
    ld d, b                                       ; $7558: $50
    jr nc, @-$79                                  ; $7559: $30 $85

    add l                                         ; $755b: $85
    ld b, a                                       ; $755c: $47
    ld h, b                                       ; $755d: $60
    add e                                         ; $755e: $83
    jp $433a                                      ; $755f: $c3 $3a $43


    dec l                                         ; $7562: $2d
    dec c                                         ; $7563: $0d
    add b                                         ; $7564: $80
    pop hl                                        ; $7565: $e1
    xor b                                         ; $7566: $a8
    inc bc                                        ; $7567: $03
    ld b, b                                       ; $7568: $40
    ret nz                                        ; $7569: $c0

    ld c, b                                       ; $756a: $48
    add b                                         ; $756b: $80
    xor a                                         ; $756c: $af
    ld a, [de]                                    ; $756d: $1a
    ld hl, $6287                                  ; $756e: $21 $87 $62
    ld c, l                                       ; $7571: $4d
    ld hl, $c143                                  ; $7572: $21 $43 $c1
    dec l                                         ; $7575: $2d
    ld a, l                                       ; $7576: $7d
    ld [c], a                                     ; $7577: $e2
    dec de                                        ; $7578: $1b
    dec c                                         ; $7579: $0d
    dec l                                         ; $757a: $2d
    add b                                         ; $757b: $80
    db $e4                                        ; $757c: $e4
    ld l, h                                       ; $757d: $6c
    ld c, h                                       ; $757e: $4c
    add b                                         ; $757f: $80
    xor [hl]                                      ; $7580: $ae
    dec sp                                        ; $7581: $3b
    rst $20                                       ; $7582: $e7
    ld b, b                                       ; $7583: $40
    ld h, h                                       ; $7584: $64
    ld a, [de]                                    ; $7585: $1a
    push bc                                       ; $7586: $c5
    ld h, d                                       ; $7587: $62
    ld l, e                                       ; $7588: $6b
    ret                                           ; $7589: $c9


    jp nz, Jump_000_2a0a                          ; $758a: $c2 $0a $2a

    ld d, [hl]                                    ; $758d: $56
    jr nz, jr_06b_7511                            ; $758e: $20 $81

    db $e4                                        ; $7590: $e4
    dec a                                         ; $7591: $3d
    ld b, c                                       ; $7592: $41
    add b                                         ; $7593: $80
    ld l, $00                                     ; $7594: $2e $00
    nop                                           ; $7596: $00
    push hl                                       ; $7597: $e5
    add b                                         ; $7598: $80
    ld [$4539], sp                                ; $7599: $08 $39 $45
    ld b, b                                       ; $759c: $40
    ld h, h                                       ; $759d: $64
    add l                                         ; $759e: $85
    ld h, d                                       ; $759f: $62
    ld b, a                                       ; $75a0: $47
    and d                                         ; $75a1: $a2
    dec hl                                        ; $75a2: $2b
    ld h, h                                       ; $75a3: $64
    rst $38                                       ; $75a4: $ff
    ld b, b                                       ; $75a5: $40
    dec d                                         ; $75a6: $15
    ld hl, $812d                                  ; $75a7: $21 $2d $81
    pop hl                                        ; $75aa: $e1
    ld a, e                                       ; $75ab: $7b
    ld hl, $0b6c                                  ; $75ac: $21 $6c $0b
    ret nz                                        ; $75af: $c0

    and h                                         ; $75b0: $a4
    nop                                           ; $75b1: $00
    sub c                                         ; $75b2: $91
    inc b                                         ; $75b3: $04
    or h                                          ; $75b4: $b4
    inc bc                                        ; $75b5: $03
    or b                                          ; $75b6: $b0
    push hl                                       ; $75b7: $e5
    nop                                           ; $75b8: $00
    ld h, c                                       ; $75b9: $61
    add hl, bc                                    ; $75ba: $09
    and c                                         ; $75bb: $a1
    add $43                                       ; $75bc: $c6 $43
    add h                                         ; $75be: $84
    ld h, b                                       ; $75bf: $60
    ld a, l                                       ; $75c0: $7d
    ld h, d                                       ; $75c1: $62
    ld b, c                                       ; $75c2: $41
    ld a, [hl+]                                   ; $75c3: $2a
    ld a, l                                       ; $75c4: $7d
    nop                                           ; $75c5: $00
    ld a, $88                                     ; $75c6: $3e $88
    ret nz                                        ; $75c8: $c0

    jp hl                                         ; $75c9: $e9


    ret nz                                        ; $75ca: $c0

    ld c, a                                       ; $75cb: $4f
    ld a, a                                       ; $75cc: $7f
    jp nz, $822c                                  ; $75cd: $c2 $2c $82

    ld h, h                                       ; $75d0: $64
    add hl, sp                                    ; $75d1: $39
    ld a, [hl+]                                   ; $75d2: $2a
    inc a                                         ; $75d3: $3c
    ld h, e                                       ; $75d4: $63
    or l                                          ; $75d5: $b5
    rlca                                          ; $75d6: $07
    ld l, e                                       ; $75d7: $6b
    ld c, e                                       ; $75d8: $4b

jr_06b_75d9:
    inc l                                         ; $75d9: $2c
    ld [$c0a1], a                                 ; $75da: $ea $a1 $c0
    ld a, [$d828]                                 ; $75dd: $fa $28 $d8
    ld bc, $e5bf                                  ; $75e0: $01 $bf $e5
    db $fd                                        ; $75e3: $fd
    ld b, d                                       ; $75e4: $42
    ld c, e                                       ; $75e5: $4b
    cp l                                          ; $75e6: $bd
    ld b, a                                       ; $75e7: $47
    ld c, e                                       ; $75e8: $4b
    ld bc, $7ea2                                  ; $75e9: $01 $a2 $7e
    ld c, $06                                     ; $75ec: $0e $06
    nop                                           ; $75ee: $00
    ld b, l                                       ; $75ef: $45
    ld c, [hl]                                    ; $75f0: $4e
    ld l, $4e                                     ; $75f1: $2e $4e
    ldh [rNR31], a                                ; $75f3: $e0 $1b
    and e                                         ; $75f5: $a3
    nop                                           ; $75f6: $00
    ld h, e                                       ; $75f7: $63
    ld a, l                                       ; $75f8: $7d
    ld hl, $e7c1                                  ; $75f9: $21 $c1 $e7
    call z, Call_000_02fb                         ; $75fc: $cc $fb $02
    ld h, [hl]                                    ; $75ff: $66
    ret nz                                        ; $7600: $c0

    ld c, $6e                                     ; $7601: $0e $6e
    ld c, c                                       ; $7603: $49
    dec hl                                        ; $7604: $2b
    ld [hl], e                                    ; $7605: $73
    rlca                                          ; $7606: $07
    ld c, [hl]                                    ; $7607: $4e
    ld l, $08                                     ; $7608: $2e $08
    ret nz                                        ; $760a: $c0

    ldh [$57], a                                  ; $760b: $e0 $57
    inc bc                                        ; $760d: $03
    cp a                                          ; $760e: $bf
    and $2b                                       ; $760f: $e6 $2b
    scf                                           ; $7611: $37
    jp nz, $253c                                  ; $7612: $c2 $3c $25

    xor d                                         ; $7615: $aa
    jr nz, jr_06b_75d9                            ; $7616: $20 $c1

    ldh [rNR10], a                                ; $7618: $e0 $10
    pop bc                                        ; $761a: $c1
    ld c, c                                       ; $761b: $49
    cp b                                          ; $761c: $b8
    ld b, a                                       ; $761d: $47
    add hl, hl                                    ; $761e: $29
    ld h, c                                       ; $761f: $61
    ld d, a                                       ; $7620: $57
    inc b                                         ; $7621: $04
    inc l                                         ; $7622: $2c
    dec a                                         ; $7623: $3d
    and $be                                       ; $7624: $e6 $be
    ld b, b                                       ; $7626: $40
    cp l                                          ; $7627: $bd
    dec h                                         ; $7628: $25
    pop bc                                        ; $7629: $c1
    dec l                                         ; $762a: $2d
    ld [hl], d                                    ; $762b: $72
    ld b, e                                       ; $762c: $43
    ld [de], a                                    ; $762d: $12
    ld h, h                                       ; $762e: $64
    pop bc                                        ; $762f: $c1
    ld b, a                                       ; $7630: $47
    ld a, $4b                                     ; $7631: $3e $4b
    ld d, a                                       ; $7633: $57
    inc b                                         ; $7634: $04
    ld l, h                                       ; $7635: $6c
    ld l, h                                       ; $7636: $6c
    dec b                                         ; $7637: $05
    dec bc                                        ; $7638: $0b
    ccf                                           ; $7639: $3f
    nop                                           ; $763a: $00
    ld a, [hl+]                                   ; $763b: $2a
    ld b, c                                       ; $763c: $41
    inc hl                                        ; $763d: $23
    cp l                                          ; $763e: $bd
    add d                                         ; $763f: $82
    cp e                                          ; $7640: $bb
    ld [hl+], a                                   ; $7641: $22
    add d                                         ; $7642: $82
    inc b                                         ; $7643: $04
    ret nz                                        ; $7644: $c0

    dec bc                                        ; $7645: $0b
    nop                                           ; $7646: $00
    ld sp, $fe67                                  ; $7647: $31 $67 $fe
    ret nz                                        ; $764a: $c0

    inc a                                         ; $764b: $3c
    inc hl                                        ; $764c: $23
    pop bc                                        ; $764d: $c1
    ldh [$c1], a                                  ; $764e: $e0 $c1
    and c                                         ; $7650: $a1
    add a                                         ; $7651: $87
    rst $00                                       ; $7652: $c7
    add d                                         ; $7653: $82
    ld [c], a                                     ; $7654: $e2
    inc [hl]                                      ; $7655: $34
    ld hl, $0200                                  ; $7656: $21 $00 $02
    push hl                                       ; $7659: $e5
    ld b, b                                       ; $765a: $40
    xor a                                         ; $765b: $af
    ld [hl], d                                    ; $765c: $72
    ld b, c                                       ; $765d: $41
    cp a                                          ; $765e: $bf
    pop hl                                        ; $765f: $e1
    jp c, Jump_06b_4321                           ; $7660: $da $21 $43

    add c                                         ; $7663: $81
    jp Jump_06b_7e29                              ; $7664: $c3 $29 $7e


    db $e3                                        ; $7667: $e3
    nop                                           ; $7668: $00
    pop bc                                        ; $7669: $c1
    di                                            ; $766a: $f3
    or e                                          ; $766b: $b3
    dec h                                         ; $766c: $25
    ld [hl-], a                                   ; $766d: $32
    ld b, d                                       ; $766e: $42
    cp a                                          ; $766f: $bf
    ld [c], a                                     ; $7670: $e2
    add d                                         ; $7671: $82
    nop                                           ; $7672: $00
    ret nz                                        ; $7673: $c0

    db $ec                                        ; $7674: $ec
    ld a, [$b562]                                 ; $7675: $fa $62 $b5
    nop                                           ; $7678: $00
    nop                                           ; $7679: $00
    add h                                         ; $767a: $84
    jp $afc2                                      ; $767b: $c3 $c2 $af


    ld l, l                                       ; $767e: $6d
    ld hl, $23f2                                  ; $767f: $21 $f2 $23
    dec sp                                        ; $7682: $3b
    ret nz                                        ; $7683: $c0

    ret nz                                        ; $7684: $c0

    ld h, b                                       ; $7685: $60
    pop bc                                        ; $7686: $c1
    db $ed                                        ; $7687: $ed
    ld b, b                                       ; $7688: $40
    ld b, c                                       ; $7689: $41
    nop                                           ; $768a: $00
    rst $38                                       ; $768b: $ff
    ld h, b                                       ; $768c: $60
    ld b, l                                       ; $768d: $45
    call nz, $a442                                ; $768e: $c4 $42 $a4
    add d                                         ; $7691: $82
    ld c, d                                       ; $7692: $4a
    xor $86                                       ; $7693: $ee $86
    ld a, [$c0a0]                                 ; $7695: $fa $a0 $c0
    pop af                                        ; $7698: $f1
    rst $38                                       ; $7699: $ff
    jr nz, jr_06b_769d                            ; $769a: $20 $01

    ld c, e                                       ; $769c: $4b

jr_06b_769d:
    ld b, $c2                                     ; $769d: $06 $c2
    ld d, d                                       ; $769f: $52
    ld h, l                                       ; $76a0: $65
    cp h                                          ; $76a1: $bc
    inc sp                                        ; $76a2: $33
    cp e                                          ; $76a3: $bb
    push bc                                       ; $76a4: $c5
    ld a, a                                       ; $76a5: $7f
    ldh a, [$c1]                                  ; $76a6: $f0 $c1
    db $e3                                        ; $76a8: $e3
    ret nz                                        ; $76a9: $c0

    db $fd                                        ; $76aa: $fd
    nop                                           ; $76ab: $00
    xor e                                         ; $76ac: $ab
    ld h, b                                       ; $76ad: $60
    cp a                                          ; $76ae: $bf
    db $f4                                        ; $76af: $f4
    rst $00                                       ; $76b0: $c7
    and c                                         ; $76b1: $a1
    push bc                                       ; $76b2: $c5
    ld [hl], d                                    ; $76b3: $72
    inc a                                         ; $76b4: $3c
    ld h, [hl]                                    ; $76b5: $66
    dec a                                         ; $76b6: $3d
    add sp, -$3f                                  ; $76b7: $e8 $c1
    ld a, [c]                                     ; $76b9: $f2
    rst $38                                       ; $76ba: $ff
    ld hl, sp+$00                                 ; $76bb: $f8 $00
    or h                                          ; $76bd: $b4
    dec b                                         ; $76be: $05
    dec a                                         ; $76bf: $3d
    or $c5                                        ; $76c0: $f6 $c5
    jp z, $fdc0                                   ; $76c2: $ca $c0 $fd

    db $fc                                        ; $76c5: $fc
    rst $08                                       ; $76c6: $cf
    res 0, c                                      ; $76c7: $cb $81
    dec c                                         ; $76c9: $0d
    inc hl                                        ; $76ca: $23
    add [hl]                                      ; $76cb: $86
    ld c, c                                       ; $76cc: $49
    nop                                           ; $76cd: $00
    cp d                                          ; $76ce: $ba
    or h                                          ; $76cf: $b4
    daa                                           ; $76d0: $27
    nop                                           ; $76d1: $00
    cp e                                          ; $76d2: $bb
    call z, $c586                                 ; $76d3: $cc $86 $c5
    ld b, a                                       ; $76d6: $47
    ld h, a                                       ; $76d7: $67
    cp [hl]                                       ; $76d8: $be
    di                                            ; $76d9: $f3
    ret nz                                        ; $76da: $c0

    and $33                                       ; $76db: $e6 $33
    add b                                         ; $76dd: $80
    nop                                           ; $76de: $00
    rst $38                                       ; $76df: $ff
    jp hl                                         ; $76e0: $e9


    add [hl]                                      ; $76e1: $86
    push bc                                       ; $76e2: $c5
    rlca                                          ; $76e3: $07
    ld h, [hl]                                    ; $76e4: $66
    cp $8e                                        ; $76e5: $fe $8e
    ld l, [hl]                                    ; $76e7: $6e
    jp hl                                         ; $76e8: $e9


    ld hl, $cdd1                                  ; $76e9: $21 $d1 $cd
    sub l                                         ; $76ec: $95
    rst $38                                       ; $76ed: $ff
    rst $38                                       ; $76ee: $ff
    nop                                           ; $76ef: $00
    rst $38                                       ; $76f0: $ff
    ei                                            ; $76f1: $fb
    nop                                           ; $76f2: $00
    nop                                           ; $76f3: $00
    nop                                           ; $76f4: $00
    ld [hl], c                                    ; $76f5: $71
    and b                                         ; $76f6: $a0
    rst $38                                       ; $76f7: $ff
    rst $38                                       ; $76f8: $ff
    rst $38                                       ; $76f9: $ff
    rst $38                                       ; $76fa: $ff
    ld [c], a                                     ; $76fb: $e2
    pop hl                                        ; $76fc: $e1
    call nc, $d4d5                                ; $76fd: $d4 $d5 $d4
    push af                                       ; $7700: $f5
    ldh a, [$6c]                                  ; $7701: $f0 $6c
    rst $38                                       ; $7703: $ff
    rst $38                                       ; $7704: $ff
    cp [hl]                                       ; $7705: $be
    db $ed                                        ; $7706: $ed
    ld [c], a                                     ; $7707: $e2
    db $e3                                        ; $7708: $e3
    sub $e2                                       ; $7709: $d6 $e2
    sbc a                                         ; $770b: $9f
    sbc l                                         ; $770c: $9d
    rst $38                                       ; $770d: $ff
    jp hl                                         ; $770e: $e9


    ld h, c                                       ; $770f: $61
    sbc a                                         ; $7710: $9f
    sbc a                                         ; $7711: $9f
    add sp, -$21                                  ; $7712: $e8 $df
    db $e4                                        ; $7714: $e4
    ld a, a                                       ; $7715: $7f
    rst $28                                       ; $7716: $ef
    add b                                         ; $7717: $80
    db $e3                                        ; $7718: $e3
    db $e4                                        ; $7719: $e4
    push hl                                       ; $771a: $e5
    pop bc                                        ; $771b: $c1
    ld [c], a                                     ; $771c: $e2
    res 3, h                                      ; $771d: $cb $9c
    ld b, [hl]                                    ; $771f: $46
    rst $38                                       ; $7720: $ff
    jp hl                                         ; $7721: $e9


    sbc h                                         ; $7722: $9c
    cp a                                          ; $7723: $bf
    pop hl                                        ; $7724: $e1
    ld a, [hl]                                    ; $7725: $7e
    ldh [$d6], a                                  ; $7726: $e0 $d6
    rst $10                                       ; $7728: $d7
    ld sp, $dfd8                                  ; $7729: $31 $d8 $df
    db $e4                                        ; $772c: $e4
    ld [hl], c                                    ; $772d: $71
    ld a, [c]                                     ; $772e: $f2
    pop hl                                        ; $772f: $e1
    pop hl                                        ; $7730: $e1
    and $e7                                       ; $7731: $e6 $e7
    pop bc                                        ; $7733: $c1
    rst $28                                       ; $7734: $ef
    cp a                                          ; $7735: $bf
    and $87                                       ; $7736: $e6 $87
    reti                                          ; $7738: $d9


    jp c, $dfdb                                   ; $7739: $da $db $df

    db $e3                                        ; $773c: $e3
    ld [hl-], a                                   ; $773d: $32
    di                                            ; $773e: $f3
    pop hl                                        ; $773f: $e1
    pop hl                                        ; $7740: $e1
    add d                                         ; $7741: $82
    push hl                                       ; $7742: $e5
    inc bc                                        ; $7743: $03
    rst $38                                       ; $7744: $ff
    inc b                                         ; $7745: $04
    rlca                                          ; $7746: $07
    inc b                                         ; $7747: $04
    inc bc                                        ; $7748: $03
    dec bc                                        ; $7749: $0b
    inc bc                                        ; $774a: $03
    add hl, bc                                    ; $774b: $09
    inc b                                         ; $774c: $04
    add hl, sp                                    ; $774d: $39
    rlca                                          ; $774e: $07
    ld hl, sp-$20                                 ; $774f: $f8 $e0
    ld a, [hl]                                    ; $7751: $7e
    push hl                                       ; $7752: $e5
    call c, $dedd                                 ; $7753: $dc $dd $de
    sbc $d3                                       ; $7756: $de $d3
    ld a, [bc]                                    ; $7758: $0a
    db $e3                                        ; $7759: $e3
    cp h                                          ; $775a: $bc
    pop hl                                        ; $775b: $e1
    db $e4                                        ; $775c: $e4
    ld b, e                                       ; $775d: $43
    ldh [$03], a                                  ; $775e: $e0 $03
    inc b                                         ; $7760: $04
    dec c                                         ; $7761: $0d
    sbc c                                         ; $7762: $99
    rst $38                                       ; $7763: $ff
    and $98                                       ; $7764: $e6 $98
    add hl, sp                                    ; $7766: $39
    dec c                                         ; $7767: $0d
    cp [hl]                                       ; $7768: $be
    ldh [$3d], a                                  ; $7769: $e0 $3d
    ld [c], a                                     ; $776b: $e2
    rst $18                                       ; $776c: $df
    ldh [$e1], a                                  ; $776d: $e0 $e1
    sbc h                                         ; $776f: $9c
    db $d3                                        ; $7770: $d3
    ld a, [bc]                                    ; $7771: $0a
    db $e3                                        ; $7772: $e3
    call z, $e3e1                                 ; $7773: $cc $e1 $e3
    inc b                                         ; $7776: $04
    ldh [rSC], a                                  ; $7777: $e0 $02
    db $10                                        ; $7779: $10
    jp z, $c7e0                                   ; $777a: $ca $e0 $c7

    ldh [rP1], a                                  ; $777d: $e0 $00
    ld bc, $ba3e                                  ; $777f: $01 $3e $ba
    pop hl                                        ; $7782: $e1
    nop                                           ; $7783: $00
    ld bc, $0d98                                  ; $7784: $01 $98 $0d
    ld [bc], a                                    ; $7787: $02
    db $fc                                        ; $7788: $fc
    add $d3                                       ; $7789: $c6 $d3
    ret                                           ; $778b: $c9


    jr c, jr_06b_77f9                             ; $778c: $38 $6b

    add $2b                                       ; $778e: $c6 $2b
    add sp, -$3f                                  ; $7790: $e8 $c1
    pop hl                                        ; $7792: $e1
    rrca                                          ; $7793: $0f
    sbc c                                         ; $7794: $99
    sbc b                                         ; $7795: $98
    pop bc                                        ; $7796: $c1
    ldh [$86], a                                  ; $7797: $e0 $86
    ldh [$f7], a                                  ; $7799: $e0 $f7
    sbc b                                         ; $779b: $98
    ld b, $06                                     ; $779c: $06 $06
    ld a, b                                       ; $779e: $78
    ldh [$0d], a                                  ; $779f: $e0 $0d
    dec c                                         ; $77a1: $0d
    sbc b                                         ; $77a2: $98
    rrca                                          ; $77a3: $0f
    add b                                         ; $77a4: $80
    cp a                                          ; $77a5: $bf
    db $e3                                        ; $77a6: $e3
    sbc e                                         ; $77a7: $9b
    ret nz                                        ; $77a8: $c0

    add b                                         ; $77a9: $80

jr_06b_77aa:
    call z, $ca13                                 ; $77aa: $cc $13 $ca
    ld a, h                                       ; $77ad: $7c
    ret nz                                        ; $77ae: $c0

    pop bc                                        ; $77af: $c1
    db $e3                                        ; $77b0: $e3
    add a                                         ; $77b1: $87
    db $e3                                        ; $77b2: $e3
    sbc b                                         ; $77b3: $98
    rst $38                                       ; $77b4: $ff
    sbc d                                         ; $77b5: $9a
    ld c, $05                                     ; $77b6: $0e $05
    dec b                                         ; $77b8: $05
    ld c, $0f                                     ; $77b9: $0e $0f
    inc b                                         ; $77bb: $04
    inc bc                                        ; $77bc: $03
    rlca                                          ; $77bd: $07
    ld [$9999], sp                                ; $77be: $08 $99 $99
    cp a                                          ; $77c1: $bf
    db $e4                                        ; $77c2: $e4
    ld e, a                                       ; $77c3: $5f
    push bc                                       ; $77c4: $c5
    add $b0                                       ; $77c5: $c6 $b0
    ld b, $c2                                     ; $77c7: $06 $c2
    ld b, a                                       ; $77c9: $47
    ret nz                                        ; $77ca: $c0

    ei                                            ; $77cb: $fb
    dec b                                         ; $77cc: $05
    dec c                                         ; $77cd: $0d
    add d                                         ; $77ce: $82
    ld [c], a                                     ; $77cf: $e2
    dec c                                         ; $77d0: $0d
    rlca                                          ; $77d1: $07
    rlca                                          ; $77d2: $07
    sbc c                                         ; $77d3: $99
    sbc b                                         ; $77d4: $98
    ld a, a                                       ; $77d5: $7f
    ld b, $39                                     ; $77d6: $06 $39
    add hl, sp                                    ; $77d8: $39
    inc bc                                        ; $77d9: $03
    inc bc                                        ; $77da: $03
    scf                                           ; $77db: $37
    ld b, h                                       ; $77dc: $44
    ret nz                                        ; $77dd: $c0

    ldh [rTAC], a                                 ; $77de: $e0 $07
    sbc c                                         ; $77e0: $99
    rrca                                          ; $77e1: $0f
    dec b                                         ; $77e2: $05
    add hl, sp                                    ; $77e3: $39
    jp $c15f                                      ; $77e4: $c3 $5f $c1


    jr c, jr_06b_77aa                             ; $77e7: $38 $c1

    rrca                                          ; $77e9: $0f
    push bc                                       ; $77ea: $c5
    ld [$e8c2], sp                                ; $77eb: $08 $c2 $e8
    daa                                           ; $77ee: $27
    push bc                                       ; $77ef: $c5
    ld [$4ec1], sp                                ; $77f0: $08 $c1 $4e
    pop hl                                        ; $77f3: $e1
    sbc c                                         ; $77f4: $99
    adc e                                         ; $77f5: $8b
    ldh [$3f], a                                  ; $77f6: $e0 $3f
    ccf                                           ; $77f8: $3f

jr_06b_77f9:
    inc bc                                        ; $77f9: $03
    rst $38                                       ; $77fa: $ff
    inc b                                         ; $77fb: $04
    dec b                                         ; $77fc: $05
    ld a, [hl-]                                   ; $77fd: $3a
    ld a, [hl-]                                   ; $77fe: $3a
    scf                                           ; $77ff: $37
    jr c, @+$37                                   ; $7800: $38 $35

    ld b, d                                       ; $7802: $42
    ccf                                           ; $7803: $3f
    ld [bc], a                                    ; $7804: $02
    rlca                                          ; $7805: $07
    rlca                                          ; $7806: $07
    rrca                                          ; $7807: $0f
    sbc c                                         ; $7808: $99
    ld b, $f8                                     ; $7809: $06 $f8
    and a                                         ; $780b: $a7
    ld d, a                                       ; $780c: $57
    push bc                                       ; $780d: $c5
    ld e, b                                       ; $780e: $58
    ld b, [hl]                                    ; $780f: $46
    jp z, $c006                                   ; $7810: $ca $06 $c0

    ret                                           ; $7813: $c9


    and c                                         ; $7814: $a1
    dec b                                         ; $7815: $05
    ld c, $93                                     ; $7816: $0e $93
    pop hl                                        ; $7818: $e1
    ld [bc], a                                    ; $7819: $02

jr_06b_781a:
    ret                                           ; $781a: $c9


    ldh [rIE], a                                  ; $781b: $e0 $ff
    dec [hl]                                      ; $781d: $35
    jr c, @+$39                                   ; $781e: $38 $37

    add hl, sp                                    ; $7820: $39
    dec [hl]                                      ; $7821: $35
    dec [hl]                                      ; $7822: $35
    jp z, $0fcb                                   ; $7823: $ca $cb $0f

    dec [hl]                                      ; $7826: $35
    ld b, d                                       ; $7827: $42
    ld b, e                                       ; $7828: $43
    ld b, l                                       ; $7829: $45
    ld [$7fe0], a                                 ; $782a: $ea $e0 $7f
    ldh [$b7], a                                  ; $782d: $e0 $b7
    and l                                         ; $782f: $a5
    jr c, @-$39                                   ; $7830: $38 $c5

    sub b                                         ; $7832: $90
    dec hl                                        ; $7833: $2b
    and [hl]                                      ; $7834: $a6
    daa                                           ; $7835: $27
    jp $a28a                                      ; $7836: $c3 $8a $a2


    add c                                         ; $7839: $81
    ld [c], a                                     ; $783a: $e2
    ld b, $c7                                     ; $783b: $06 $c7
    ldh [$fe], a                                  ; $783d: $e0 $fe
    pop hl                                        ; $783f: $e1
    ld [hl], $ff                                  ; $7840: $36 $ff
    ld [hl], $35                                  ; $7842: $36 $35
    ret z                                         ; $7844: $c8

    ret                                           ; $7845: $c9


    dec [hl]                                      ; $7846: $35
    dec [hl]                                      ; $7847: $35
    ld a, [hl-]                                   ; $7848: $3a
    ld b, h                                       ; $7849: $44
    ld b, b                                       ; $784a: $40
    cp c                                          ; $784b: $b9
    pop bc                                        ; $784c: $c1
    ld a, a                                       ; $784d: $7f
    ldh [rPCM12], a                               ; $784e: $e0 $76
    and h                                         ; $7850: $a4
    jr c, jr_06b_781a                             ; $7851: $38 $c7

    jp hl                                         ; $7853: $e9


    add h                                         ; $7854: $84
    daa                                           ; $7855: $27
    jp Jump_06b_4b9e                              ; $7856: $c3 $9e $4b


    and b                                         ; $7859: $a0
    sbc $81                                       ; $785a: $de $81
    pop hl                                        ; $785c: $e1
    sbc b                                         ; $785d: $98
    ld c, $05                                     ; $785e: $0e $05
    ld a, [hl-]                                   ; $7860: $3a
    ret nz                                        ; $7861: $c0

    db $e3                                        ; $7862: $e3
    dec [hl]                                      ; $7863: $35
    add hl, sp                                    ; $7864: $39
    dec a                                         ; $7865: $3d
    dec a                                         ; $7866: $3d
    rst $38                                       ; $7867: $ff
    ldh [$38], a                                  ; $7868: $e0 $38
    add hl, sp                                    ; $786a: $39
    dec b                                         ; $786b: $05
    ld c, $31                                     ; $786c: $0e $31
    ret nz                                        ; $786e: $c0

    ld a, a                                       ; $786f: $7f
    pop hl                                        ; $7870: $e1
    jp $9e46                                      ; $7871: $c3 $46 $9e


    ld b, h                                       ; $7874: $44
    adc $a6                                       ; $7875: $ce $a6
    add a                                         ; $7877: $87
    ret nz                                        ; $7878: $c0

    pop hl                                        ; $7879: $e1
    ld d, b                                       ; $787a: $50
    ret nz                                        ; $787b: $c0

    sbc b                                         ; $787c: $98
    sbc b                                         ; $787d: $98
    cp e                                          ; $787e: $bb
    ld [$c140], sp                                ; $787f: $08 $40 $c1
    db $e4                                        ; $7882: $e4
    dec [hl]                                      ; $7883: $35
    dec [hl]                                      ; $7884: $35
    dec sp                                        ; $7885: $3b
    add hl, sp                                    ; $7886: $39
    pop hl                                        ; $7887: $e1
    ld b, l                                       ; $7888: $45
    ret                                           ; $7889: $c9


    ld b, $30                                     ; $788a: $06 $30
    jp nz, $e17f                                  ; $788c: $c2 $7f $e1

    sbc [hl]                                      ; $788f: $9e
    add $96                                       ; $7890: $c6 $96
    res 0, b                                      ; $7892: $cb $80
    add $c7                                       ; $7894: $c6 $c7
    or d                                          ; $7896: $b2
    ld [bc], a                                    ; $7897: $02
    ldh [$98], a                                  ; $7898: $e0 $98
    ret nz                                        ; $789a: $c0

    ld [$e339], a                                 ; $789b: $ea $39 $e3
    ld [bc], a                                    ; $789e: $02
    dec c                                         ; $789f: $0d

Call_06b_78a0:
    ldh a, [$a1]                                  ; $78a0: $f0 $a1
    rrca                                          ; $78a2: $0f
    add a                                         ; $78a3: $87
    dec b                                         ; $78a4: $05
    add $c7                                       ; $78a5: $c6 $c7
    or l                                          ; $78a7: $b5
    add d                                         ; $78a8: $82
    ld a, h                                       ; $78a9: $7c
    adc a                                         ; $78aa: $8f
    ld c, c                                       ; $78ab: $49
    add b                                         ; $78ac: $80
    adc h                                         ; $78ad: $8c
    add b                                         ; $78ae: $80
    call nz, $c5f3                                ; $78af: $c4 $f3 $c5
    ld b, $8b                                     ; $78b2: $06 $8b
    and c                                         ; $78b4: $a1
    add b                                         ; $78b5: $80
    ld [c], a                                     ; $78b6: $e2
    jr c, jr_06b_78f6                             ; $78b7: $38 $3d

    scf                                           ; $78b9: $37
    ccf                                           ; $78ba: $3f
    ld a, [de]                                    ; $78bb: $1a
    ld a, d                                       ; $78bc: $7a
    and $39                                       ; $78bd: $e6 $39
    ld a, a                                       ; $78bf: $7f
    db $e4                                        ; $78c0: $e4
    call nz, Call_06b_74c5                        ; $78c1: $c4 $c5 $74
    add d                                         ; $78c4: $82
    ld e, e                                       ; $78c5: $5b
    add c                                         ; $78c6: $81
    jp c, $e86b                                   ; $78c7: $da $6b $e8

    ld c, c                                       ; $78ca: $49
    add b                                         ; $78cb: $80
    ld [bc], a                                    ; $78cc: $02
    db $e3                                        ; $78cd: $e3
    add d                                         ; $78ce: $82
    ldh [$98], a                                  ; $78cf: $e0 $98
    nop                                           ; $78d1: $00
    pop hl                                        ; $78d2: $e1
    ld [hl], $48                                  ; $78d3: $36 $48
    ld c, [hl]                                    ; $78d5: $4e
    dec sp                                        ; $78d6: $3b
    ld c, c                                       ; $78d7: $49
    ld b, h                                       ; $78d8: $44
    ld a, [hl-]                                   ; $78d9: $3a
    and $3a                                       ; $78da: $e6 $3a
    dec b                                         ; $78dc: $05
    ld c, $3a                                     ; $78dd: $0e $3a
    and b                                         ; $78df: $a0
    cp $c5                                        ; $78e0: $fe $c5
    ld [hl], b                                    ; $78e2: $70
    ld a, h                                       ; $78e3: $7c
    add h                                         ; $78e4: $84
    sbc b                                         ; $78e5: $98
    ld l, c                                       ; $78e6: $69
    ld c, c                                       ; $78e7: $49
    add b                                         ; $78e8: $80
    ld [bc], a                                    ; $78e9: $02
    db $e3                                        ; $78ea: $e3

jr_06b_78eb:
    sbc b                                         ; $78eb: $98
    sbc b                                         ; $78ec: $98
    sub a                                         ; $78ed: $97
    ld b, h                                       ; $78ee: $44
    and b                                         ; $78ef: $a0
    rst $38                                       ; $78f0: $ff
    ld b, $43                                     ; $78f1: $06 $43
    ld c, d                                       ; $78f3: $4a
    ld h, b                                       ; $78f4: $60
    ld h, c                                       ; $78f5: $61

jr_06b_78f6:
    ld h, c                                       ; $78f6: $61
    ld e, h                                       ; $78f7: $5c
    inc a                                         ; $78f8: $3c
    ld [bc], a                                    ; $78f9: $02
    ld a, a                                       ; $78fa: $7f
    rst $20                                       ; $78fb: $e7
    ld [$e1a7], sp                                ; $78fc: $08 $a7 $e1
    cp $ca                                        ; $78ff: $fe $ca
    db $fc                                        ; $7901: $fc
    add l                                         ; $7902: $85
    xor a                                         ; $7903: $af
    ld h, l                                       ; $7904: $65
    add d                                         ; $7905: $82
    ret nz                                        ; $7906: $c0

    sbc c                                         ; $7907: $99
    ret nz                                        ; $7908: $c0

    ld sp, hl                                     ; $7909: $f9
    sub a                                         ; $790a: $97
    rst $38                                       ; $790b: $ff
    ldh [$7f], a                                  ; $790c: $e0 $7f
    pop hl                                        ; $790e: $e1
    ld c, a                                       ; $790f: $4f
    ld h, c                                       ; $7910: $61
    ld h, c                                       ; $7911: $61
    ld h, c                                       ; $7912: $61
    ld d, l                                       ; $7913: $55
    ld e, [hl]                                    ; $7914: $5e
    ld a, d                                       ; $7915: $7a
    push bc                                       ; $7916: $c5
    dec [hl]                                      ; $7917: $35
    dec [hl]                                      ; $7918: $35
    ld a, $06                                     ; $7919: $3e $06
    and $e1                                       ; $791b: $e6 $e1
    sbc b                                         ; $791d: $98
    db $fc                                        ; $791e: $fc
    and c                                         ; $791f: $a1
    ld [hl], b                                    ; $7920: $70
    ld a, [hl]                                    ; $7921: $7e
    call Call_06b_65af                            ; $7922: $cd $af $65
    ld b, d                                       ; $7925: $42
    ret nz                                        ; $7926: $c0

    db $db                                        ; $7927: $db
    ldh [$96], a                                  ; $7928: $e0 $96
    sub [hl]                                      ; $792a: $96
    sub [hl]                                      ; $792b: $96
    cp a                                          ; $792c: $bf
    ldh [$cb], a                                  ; $792d: $e0 $cb
    sbc c                                         ; $792f: $99
    ld a, [bc]                                    ; $7930: $0a
    ret nz                                        ; $7931: $c0

    pop hl                                        ; $7932: $e1
    ld d, [hl]                                    ; $7933: $56
    ld a, [$c0a4]                                 ; $7934: $fa $a4 $c0
    pop hl                                        ; $7937: $e1
    ld a, [bc]                                    ; $7938: $0a
    sub a                                         ; $7939: $97
    ld b, $e5                                     ; $793a: $06 $e5
    ldh [$97], a                                  ; $793c: $e0 $97
    sbc b                                         ; $793e: $98
    ld a, e                                       ; $793f: $7b
    and b                                         ; $7940: $a0
    ld a, [hl]                                    ; $7941: $7e
    pop bc                                        ; $7942: $c1
    ccf                                           ; $7943: $3f
    and d                                         ; $7944: $a2
    add h                                         ; $7945: $84
    add a                                         ; $7946: $87
    jr nc, jr_06b_78eb                            ; $7947: $30 $a2

    ld a, $02                                     ; $7949: $3e $02
    ret nz                                        ; $794b: $c0

    ld [$9a98], sp                                ; $794c: $08 $98 $9a
    sub [hl]                                      ; $794f: $96
    sub l                                         ; $7950: $95
    jp c, Jump_000_13e0                           ; $7951: $da $e0 $13

    and b                                         ; $7954: $a0
    db $dd                                        ; $7955: $dd
    ld c, e                                       ; $7956: $4b
    add b                                         ; $7957: $80
    ldh [$61], a                                  ; $7958: $e0 $61
    ld d, d                                       ; $795a: $52
    ld [hl], $c0                                  ; $795b: $36 $c0
    rst $20                                       ; $795d: $e7
    sbc b                                         ; $795e: $98
    sub a                                         ; $795f: $97
    rra                                           ; $7960: $1f
    sub l                                         ; $7961: $95
    sub l                                         ; $7962: $95
    sub a                                         ; $7963: $97
    sbc b                                         ; $7964: $98
    ld [$c33e], sp                                ; $7965: $08 $3e $c3
    ccf                                           ; $7968: $3f
    xor h                                         ; $7969: $ac
    add a                                         ; $796a: $87
    ld h, d                                       ; $796b: $62
    sbc h                                         ; $796c: $9c
    add b                                         ; $796d: $80
    db $e3                                        ; $796e: $e3
    sbc d                                         ; $796f: $9a
    ld [c], a                                     ; $7970: $e2
    inc b                                         ; $7971: $04
    inc bc                                        ; $7972: $03
    ld c, b                                       ; $7973: $48
    ld bc, $7fe0                                  ; $7974: $01 $e0 $7f
    ldh [rSCX], a                                 ; $7977: $e0 $43
    ret nz                                        ; $7979: $c0

    add hl, sp                                    ; $797a: $39
    and c                                         ; $797b: $a1
    ret nz                                        ; $797c: $c0

    push hl                                       ; $797d: $e5
    add b                                         ; $797e: $80
    add sp, $3f                                   ; $797f: $e8 $3f
    xor h                                         ; $7981: $ac
    ld l, b                                       ; $7982: $68
    ld h, d                                       ; $7983: $62
    add d                                         ; $7984: $82
    and b                                         ; $7985: $a0
    ld a, [bc]                                    ; $7986: $0a
    sbc c                                         ; $7987: $99
    add d                                         ; $7988: $82
    nop                                           ; $7989: $00
    db $e3                                        ; $798a: $e3
    ld [bc], a                                    ; $798b: $02
    jp nz, $ffc1                                  ; $798c: $c2 $c1 $ff

    jp nz, $a0c1                                  ; $798f: $c2 $c1 $a0

    ccf                                           ; $7992: $3f
    add $e6                                       ; $7993: $c6 $e6
    pop bc                                        ; $7995: $c1
    ld a, [bc]                                    ; $7996: $0a
    ret nz                                        ; $7997: $c0

    cp [hl]                                       ; $7998: $be
    and e                                         ; $7999: $a3
    ccf                                           ; $799a: $3f
    xor h                                         ; $799b: $ac
    ld l, b                                       ; $799c: $68
    ld h, d                                       ; $799d: $62
    ret nz                                        ; $799e: $c0

    pop bc                                        ; $799f: $c1
    ld d, e                                       ; $79a0: $53
    ld h, b                                       ; $79a1: $60
    pop bc                                        ; $79a2: $c1
    pop bc                                        ; $79a3: $c1
    ld b, $4a                                     ; $79a4: $06 $4a
    inc e                                         ; $79a6: $1c
    pop bc                                        ; $79a7: $c1
    ld [c], a                                     ; $79a8: $e2
    ld b, c                                       ; $79a9: $41
    rst $20                                       ; $79aa: $e7
    dec [hl]                                      ; $79ab: $35
    ld b, d                                       ; $79ac: $42
    ld [$60ad], sp                                ; $79ad: $08 $ad $60
    ld [hl], a                                    ; $79b0: $77
    ld h, b                                       ; $79b1: $60
    ret nz                                        ; $79b2: $c0

    jp nz, Jump_06b_42e2                          ; $79b3: $c2 $e2 $42

    or [hl]                                       ; $79b6: $b6
    inc c                                         ; $79b7: $0c
    adc h                                         ; $79b8: $8c
    ld h, d                                       ; $79b9: $62
    jp nz, $c1c4                                  ; $79ba: $c2 $c4 $c1

    jp hl                                         ; $79bd: $e9


    dec [hl]                                      ; $79be: $35
    add hl, sp                                    ; $79bf: $39
    ld [bc], a                                    ; $79c0: $02
    dec de                                        ; $79c1: $1b
    dec c                                         ; $79c2: $0d
    dec c                                         ; $79c3: $0d
    ldh a, [$60]                                  ; $79c4: $f0 $60
    sbc c                                         ; $79c6: $99
    inc c                                         ; $79c7: $0c
    cp $82                                        ; $79c8: $fe $82
    sub $28                                       ; $79ca: $d6 $28
    adc b                                         ; $79cc: $88
    daa                                           ; $79cd: $27
    db $f4                                        ; $79ce: $f4
    add b                                         ; $79cf: $80
    db $e3                                        ; $79d0: $e3
    cp a                                          ; $79d1: $bf
    ld [c], a                                     ; $79d2: $e2
    ld b, $02                                     ; $79d3: $06 $02
    ret nz                                        ; $79d5: $c0

    ld d, h                                       ; $79d6: $54
    ld d, e                                       ; $79d7: $53
    ld d, b                                       ; $79d8: $50
    ld [hl], $fb                                  ; $79d9: $36 $fb
    jr c, jr_06b_7a1a                             ; $79db: $38 $3d

    ld bc, $35e4                                  ; $79dd: $01 $e4 $35
    ld a, [hl-]                                   ; $79e0: $3a
    scf                                           ; $79e1: $37
    dec bc                                        ; $79e2: $0b
    dec bc                                        ; $79e3: $0b
    ld bc, $ec05                                  ; $79e4: $01 $05 $ec
    ld b, b                                       ; $79e7: $40
    add b                                         ; $79e8: $80
    db $e4                                        ; $79e9: $e4
    ld d, d                                       ; $79ea: $52
    ld hl, $25f7                                  ; $79eb: $21 $f7 $25
    ld b, [hl]                                    ; $79ee: $46
    ld [hl+], a                                   ; $79ef: $22
    adc c                                         ; $79f0: $89
    jr nz, jr_06b_79f3                            ; $79f1: $20 $00

jr_06b_79f3:
    ld [c], a                                     ; $79f3: $e2
    or $90                                        ; $79f4: $f6 $90
    ld b, d                                       ; $79f6: $42
    sbc c                                         ; $79f7: $99
    ld c, $81                                     ; $79f8: $0e $81
    ret nz                                        ; $79fa: $c0

    ld e, l                                       ; $79fb: $5d
    ld c, h                                       ; $79fc: $4c
    ld d, d                                       ; $79fd: $52
    ld b, e                                       ; $79fe: $43
    scf                                           ; $79ff: $37
    ld a, [hl+]                                   ; $7a00: $2a
    cpl                                           ; $7a01: $2f
    ld a, [hl+]                                   ; $7a02: $2a
    db $fd                                        ; $7a03: $fd
    and [hl]                                      ; $7a04: $a6
    dec sp                                        ; $7a05: $3b
    ld [hl], $f5                                  ; $7a06: $36 $f5
    ld b, c                                       ; $7a08: $41
    nop                                           ; $7a09: $00
    db $e3                                        ; $7a0a: $e3
    ret nz                                        ; $7a0b: $c0

    sub h                                         ; $7a0c: $94
    ld [hl+], a                                   ; $7a0d: $22
    rst $30                                       ; $7a0e: $f7
    inc h                                         ; $7a0f: $24
    adc b                                         ; $7a10: $88
    inc hl                                        ; $7a11: $23
    ld b, b                                       ; $7a12: $40
    and e                                         ; $7a13: $a3
    add l                                         ; $7a14: $85
    ld h, d                                       ; $7a15: $62
    sub [hl]                                      ; $7a16: $96
    add d                                         ; $7a17: $82
    ld c, d                                       ; $7a18: $4a
    ld h, b                                       ; $7a19: $60

jr_06b_7a1a:
    rst $38                                       ; $7a1a: $ff
    ld d, a                                       ; $7a1b: $57
    ld h, c                                       ; $7a1c: $61
    ld c, h                                       ; $7a1d: $4c
    ld e, d                                       ; $7a1e: $5a
    jr nc, @+$22                                  ; $7a1f: $30 $20

    jr nc, jr_06b_7a61                            ; $7a21: $30 $3e

    ld b, $bc                                     ; $7a23: $06 $bc
    add [hl]                                      ; $7a25: $86
    dec d                                         ; $7a26: $15
    rrca                                          ; $7a27: $0f
    db $fc                                        ; $7a28: $fc
    ld h, e                                       ; $7a29: $63
    nop                                           ; $7a2a: $00
    ld a, [c]                                     ; $7a2b: $f2
    ld b, b                                       ; $7a2c: $40
    and e                                         ; $7a2d: $a3
    db $db                                        ; $7a2e: $db
    ret nz                                        ; $7a2f: $c0

    cp a                                          ; $7a30: $bf
    db $e3                                        ; $7a31: $e3
    rst $10                                       ; $7a32: $d7
    ld c, $05                                     ; $7a33: $0e $05
    ld e, e                                       ; $7a35: $5b
    ld a, $a0                                     ; $7a36: $3e $a0
    ld d, [hl]                                    ; $7a38: $56
    add b                                         ; $7a39: $80
    rst $20                                       ; $7a3a: $e7
    jr c, jr_06b_7a74                             ; $7a3b: $38 $37

    and e                                         ; $7a3d: $a3
    inc bc                                        ; $7a3e: $03
    inc b                                         ; $7a3f: $04
    xor $21                                       ; $7a40: $ee $21
    nop                                           ; $7a42: $00
    call nz, $9402                                ; $7a43: $c4 $02 $94
    ld b, $87                                     ; $7a46: $06 $87
    ld b, h                                       ; $7a48: $44
    sbc c                                         ; $7a49: $99
    rst $38                                       ; $7a4a: $ff
    sbc c                                         ; $7a4b: $99
    jr jr_06b_7a61                                ; $7a4c: $18 $13

    rlca                                          ; $7a4e: $07
    rla                                           ; $7a4f: $17
    ld c, e                                       ; $7a50: $4b
    ld h, c                                       ; $7a51: $61
    ld d, h                                       ; $7a52: $54
    ld bc, $bf44                                  ; $7a53: $01 $44 $bf
    and l                                         ; $7a56: $a5
    add d                                         ; $7a57: $82
    ld [c], a                                     ; $7a58: $e2
    db $ed                                        ; $7a59: $ed
    jr nz, @-$7e                                  ; $7a5a: $20 $80

    xor c                                         ; $7a5c: $a9
    ld c, l                                       ; $7a5d: $4d
    ld b, $c5                                     ; $7a5e: $06 $c5
    inc bc                                        ; $7a60: $03

jr_06b_7a61:
    nop                                           ; $7a61: $00
    db $e3                                        ; $7a62: $e3
    db $fc                                        ; $7a63: $fc
    ld [$8442], sp                                ; $7a64: $08 $42 $84
    jr nz, jr_06b_7a6b                            ; $7a67: $20 $02

    dec bc                                        ; $7a69: $0b
    ld b, [hl]                                    ; $7a6a: $46

jr_06b_7a6b:
    ld b, e                                       ; $7a6b: $43
    ld d, e                                       ; $7a6c: $53
    ld d, e                                       ; $7a6d: $53
    dec e                                         ; $7a6e: $1d
    ld b, l                                       ; $7a6f: $45
    cp l                                          ; $7a70: $bd
    add $36                                       ; $7a71: $c6 $36
    ld [bc], a                                    ; $7a73: $02

jr_06b_7a74:
    rrca                                          ; $7a74: $0f
    ld h, [hl]                                    ; $7a75: $66
    jp nz, $b280                                  ; $7a76: $c2 $80 $b2

    add b                                         ; $7a79: $80
    jp z, Jump_06b_4778                           ; $7a7a: $ca $78 $47

    inc hl                                        ; $7a7d: $23
    rst $08                                       ; $7a7e: $cf
    jr nz, jr_06b_7afe                            ; $7a7f: $20 $7d

    ld bc, $7a79                                  ; $7a81: $01 $79 $7a
    ld a, h                                       ; $7a84: $7c
    ld a, l                                       ; $7a85: $7d
    ld a, h                                       ; $7a86: $7c
    and e                                         ; $7a87: $a3
    ld b, $fd                                     ; $7a88: $06 $fd
    ld h, b                                       ; $7a8a: $60
    sbc d                                         ; $7a8b: $9a
    sub a                                         ; $7a8c: $97
    nop                                           ; $7a8d: $00
    push bc                                       ; $7a8e: $c5
    cp a                                          ; $7a8f: $bf
    ld c, h                                       ; $7a90: $4c
    nop                                           ; $7a91: $00
    and l                                         ; $7a92: $a5
    nop                                           ; $7a93: $00
    pop bc                                        ; $7a94: $c1
    cp $a3                                        ; $7a95: $fe $a3
    cp $cf                                        ; $7a97: $fe $cf
    jr nz, jr_06b_7ab2                            ; $7a99: $20 $17

    ld b, e                                       ; $7a9b: $43
    ld b, e                                       ; $7a9c: $43
    ld b, l                                       ; $7a9d: $45
    ld a, c                                       ; $7a9e: $79
    ld a, [hl]                                    ; $7a9f: $7e

Jump_06b_7aa0:
    ld b, [hl]                                    ; $7aa0: $46
    rst $28                                       ; $7aa1: $ef
    ld b, [hl]                                    ; $7aa2: $46
    adc [hl]                                      ; $7aa3: $8e
    ld a, h                                       ; $7aa4: $7c
    ld a, l                                       ; $7aa5: $7d
    ld sp, hl                                     ; $7aa6: $f9
    add c                                         ; $7aa7: $81
    ld a, [hl-]                                   ; $7aa8: $3a
    dec b                                         ; $7aa9: $05
    sbc c                                         ; $7aaa: $99
    ret nz                                        ; $7aab: $c0

    xor b                                         ; $7aac: $a8
    add b                                         ; $7aad: $80
    nop                                           ; $7aae: $00
    jp nz, $4ebf                                  ; $7aaf: $c2 $bf $4e

jr_06b_7ab2:
    nop                                           ; $7ab2: $00
    and l                                         ; $7ab3: $a5
    add b                                         ; $7ab4: $80
    db $e4                                        ; $7ab5: $e4
    push de                                       ; $7ab6: $d5
    ld h, c                                       ; $7ab7: $61
    dec c                                         ; $7ab8: $0d
    ld [bc], a                                    ; $7ab9: $02
    db $fd                                        ; $7aba: $fd
    ld b, l                                       ; $7abb: $45
    pop bc                                        ; $7abc: $c1
    ld [c], a                                     ; $7abd: $e2
    ld b, l                                       ; $7abe: $45
    ld b, l                                       ; $7abf: $45
    ld b, [hl]                                    ; $7ac0: $46
    ld b, [hl]                                    ; $7ac1: $46
    ld a, a                                       ; $7ac2: $7f
    ld a, l                                       ; $7ac3: $7d
    ld b, $b1                                     ; $7ac4: $06 $b1
    ld b, b                                       ; $7ac6: $40
    inc a                                         ; $7ac7: $3c
    inc c                                         ; $7ac8: $0c
    db $ed                                        ; $7ac9: $ed
    ld bc, $9040                                  ; $7aca: $01 $40 $90
    adc b                                         ; $7acd: $88
    jr nz, jr_06b_7ad0                            ; $7ace: $20 $00

jr_06b_7ad0:
    and a                                         ; $7ad0: $a7
    add $21                                       ; $7ad1: $c6 $21
    ccf                                           ; $7ad3: $3f
    add hl, bc                                    ; $7ad4: $09
    inc b                                         ; $7ad5: $04
    rrca                                          ; $7ad6: $0f

jr_06b_7ad7:
    rrca                                          ; $7ad7: $0f
    ld [bc], a                                    ; $7ad8: $02
    dec bc                                        ; $7ad9: $0b
    ret z                                         ; $7ada: $c8

    ldh [$82], a                                  ; $7adb: $e0 $82
    pop hl                                        ; $7add: $e1
    ld d, $c0                                     ; $7ade: $16 $c0
    pop hl                                        ; $7ae0: $e1
    ld b, [hl]                                    ; $7ae1: $46
    add c                                         ; $7ae2: $81
    ld sp, $4041                                  ; $7ae3: $31 $41 $40
    ld a, d                                       ; $7ae6: $7a
    ld hl, $a400                                  ; $7ae7: $21 $00 $a4
    add d                                         ; $7aea: $82
    ld l, c                                       ; $7aeb: $69
    ld hl, sp-$78                                 ; $7aec: $f8 $88
    jr nz, jr_06b_7af0                            ; $7aee: $20 $00

jr_06b_7af0:
    and l                                         ; $7af0: $a5
    db $d3                                        ; $7af1: $d3
    nop                                           ; $7af2: $00
    rrca                                          ; $7af3: $0f
    ld [bc], a                                    ; $7af4: $02
    ld b, a                                       ; $7af5: $47
    ld c, h                                       ; $7af6: $4c
    ld d, d                                       ; $7af7: $52
    rst $38                                       ; $7af8: $ff
    ld [bc], a                                    ; $7af9: $02
    ld [bc], a                                    ; $7afa: $02
    ld [hl], $35                                  ; $7afb: $36 $35
    ld b, d                                       ; $7afd: $42

jr_06b_7afe:
    ld b, [hl]                                    ; $7afe: $46
    ld b, [hl]                                    ; $7aff: $46
    add b                                         ; $7b00: $80
    nop                                           ; $7b01: $00
    db $fd                                        ; $7b02: $fd
    jp nz, $e1c0                                  ; $7b03: $c2 $c0 $e1

    ld [hl], b                                    ; $7b06: $70
    ld b, c                                       ; $7b07: $41
    ret nz                                        ; $7b08: $c0

    ldh [$c0], a                                  ; $7b09: $e0 $c0
    push bc                                       ; $7b0b: $c5
    ld b, l                                       ; $7b0c: $45
    xor d                                         ; $7b0d: $aa
    add h                                         ; $7b0e: $84
    dec b                                         ; $7b0f: $05
    ret nz                                        ; $7b10: $c0

    and e                                         ; $7b11: $a3
    xor e                                         ; $7b12: $ab
    ld b, $47                                     ; $7b13: $06 $47
    ld b, a                                       ; $7b15: $47
    ld h, b                                       ; $7b16: $60
    ld d, l                                       ; $7b17: $55
    ld [$4480], sp                                ; $7b18: $08 $80 $44
    ret nz                                        ; $7b1b: $c0

    db $ec                                        ; $7b1c: $ec
    inc a                                         ; $7b1d: $3c
    pop bc                                        ; $7b1e: $c1
    inc c                                         ; $7b1f: $0c
    db $fd                                        ; $7b20: $fd
    ld b, b                                       ; $7b21: $40
    add b                                         ; $7b22: $80
    and h                                         ; $7b23: $a4
    adc l                                         ; $7b24: $8d
    ld h, d                                       ; $7b25: $62
    inc a                                         ; $7b26: $3c
    ld a, [bc]                                    ; $7b27: $0a
    ld b, b                                       ; $7b28: $40
    and [hl]                                      ; $7b29: $a6
    dec b                                         ; $7b2a: $05
    ld e, [hl]                                    ; $7b2b: $5e
    ld l, [hl]                                    ; $7b2c: $6e
    add a                                         ; $7b2d: $87
    ld h, c                                       ; $7b2e: $61
    ld a, [hl-]                                   ; $7b2f: $3a
    dec [hl]                                      ; $7b30: $35
    ld a, [hl-]                                   ; $7b31: $3a
    ld [$82e0], sp                                ; $7b32: $08 $e0 $82
    add e                                         ; $7b35: $83
    ld a, a                                       ; $7b36: $7f
    db $e3                                        ; $7b37: $e3
    inc bc                                        ; $7b38: $03
    add e                                         ; $7b39: $83
    add h                                         ; $7b3a: $84
    jr c, jr_06b_7b5d                             ; $7b3b: $38 $20

    ret nz                                        ; $7b3d: $c0

    ret nz                                        ; $7b3e: $c0

    rst $38                                       ; $7b3f: $ff
    ld b, e                                       ; $7b40: $43
    ret nz                                        ; $7b41: $c0

    ld b, [hl]                                    ; $7b42: $46
    dec sp                                        ; $7b43: $3b
    ld l, h                                       ; $7b44: $6c
    ld b, b                                       ; $7b45: $40
    and e                                         ; $7b46: $a3
    cp l                                          ; $7b47: $bd
    inc c                                         ; $7b48: $0c
    ret nz                                        ; $7b49: $c0

    pop hl                                        ; $7b4a: $e1
    ld h, c                                       ; $7b4b: $61
    ld a, $35                                     ; $7b4c: $3e $35
    add hl, sp                                    ; $7b4e: $39
    dec [hl]                                      ; $7b4f: $35
    jr nz, jr_06b_7ad7                            ; $7b50: $20 $85

    ld e, e                                       ; $7b52: $5b
    add a                                         ; $7b53: $87
    adc c                                         ; $7b54: $89
    cp [hl]                                       ; $7b55: $be
    ld [c], a                                     ; $7b56: $e2
    adc d                                         ; $7b57: $8a
    add l                                         ; $7b58: $85
    ld [hl], c                                    ; $7b59: $71
    jr nz, jr_06b_7b9a                            ; $7b5a: $20 $3e

    db $e3                                        ; $7b5c: $e3

jr_06b_7b5d:
    ld h, b                                       ; $7b5d: $60
    and e                                         ; $7b5e: $a3
    dec c                                         ; $7b5f: $0d
    dec c                                         ; $7b60: $0d
    add b                                         ; $7b61: $80
    xor [hl]                                      ; $7b62: $ae
    dec sp                                        ; $7b63: $3b
    rst $20                                       ; $7b64: $e7
    ld b, b                                       ; $7b65: $40
    and d                                         ; $7b66: $a2
    sbc c                                         ; $7b67: $99
    ld b, a                                       ; $7b68: $47
    ld h, d                                       ; $7b69: $62
    ld e, b                                       ; $7b6a: $58
    ld a, e                                       ; $7b6b: $7b
    add hl, sp                                    ; $7b6c: $39
    ld [hl], $c9                                  ; $7b6d: $36 $c9
    pop bc                                        ; $7b6f: $c1
    ld c, d                                       ; $7b70: $4a
    ld b, a                                       ; $7b71: $47
    add l                                         ; $7b72: $85
    add [hl]                                      ; $7b73: $86
    ld a, l                                       ; $7b74: $7d
    ldh [$3c], a                                  ; $7b75: $e0 $3c
    add c                                         ; $7b77: $81
    ld [c], a                                     ; $7b78: $e2
    dec a                                         ; $7b79: $3d
    ld b, b                                       ; $7b7a: $40

Jump_06b_7b7b:
    rrca                                          ; $7b7b: $0f
    dec c                                         ; $7b7c: $0d
    ld [bc], a                                    ; $7b7d: $02
    ld [$6340], sp                                ; $7b7e: $08 $40 $63
    ld bc, $e869                                  ; $7b81: $01 $69 $e8
    add hl, sp                                    ; $7b84: $39
    ld b, [hl]                                    ; $7b85: $46
    nop                                           ; $7b86: $00
    db $e4                                        ; $7b87: $e4
    push bc                                       ; $7b88: $c5
    ld h, d                                       ; $7b89: $62
    ld d, d                                       ; $7b8a: $52
    adc d                                         ; $7b8b: $8a
    pop bc                                        ; $7b8c: $c1
    ld b, l                                       ; $7b8d: $45
    ld c, e                                       ; $7b8e: $4b
    ld h, c                                       ; $7b8f: $61
    ccf                                           ; $7b90: $3f
    ld d, d                                       ; $7b91: $52
    add l                                         ; $7b92: $85
    add a                                         ; $7b93: $87
    adc b                                         ; $7b94: $88
    adc b                                         ; $7b95: $88
    add a                                         ; $7b96: $87
    add c                                         ; $7b97: $81
    pop hl                                        ; $7b98: $e1
    or h                                          ; $7b99: $b4

jr_06b_7b9a:
    nop                                           ; $7b9a: $00
    rrca                                          ; $7b9b: $0f
    inc bc                                        ; $7b9c: $03
    inc bc                                        ; $7b9d: $03
    ld b, l                                       ; $7b9e: $45
    ld [$43c0], sp                                ; $7b9f: $08 $c0 $43
    ld b, b                                       ; $7ba2: $40
    inc bc                                        ; $7ba3: $03
    ccf                                           ; $7ba4: $3f
    ld b, e                                       ; $7ba5: $43
    add hl, sp                                    ; $7ba6: $39
    ld b, c                                       ; $7ba7: $41
    db $ec                                        ; $7ba8: $ec
    ret nz                                        ; $7ba9: $c0

    ld b, l                                       ; $7baa: $45
    ld e, d                                       ; $7bab: $5a
    ld [bc], a                                    ; $7bac: $02
    ld d, d                                       ; $7bad: $52
    ld d, a                                       ; $7bae: $57
    ld b, l                                       ; $7baf: $45
    ld b, b                                       ; $7bb0: $40
    ld d, h                                       ; $7bb1: $54
    ld c, b                                       ; $7bb2: $48
    ld b, l                                       ; $7bb3: $45
    cp l                                          ; $7bb4: $bd
    ld b, [hl]                                    ; $7bb5: $46
    db $fd                                        ; $7bb6: $fd
    ld hl, $494c                                  ; $7bb7: $21 $4c $49
    ld b, l                                       ; $7bba: $45
    ccf                                           ; $7bbb: $3f
    db $fc                                        ; $7bbc: $fc
    ld b, l                                       ; $7bbd: $45
    dec sp                                        ; $7bbe: $3b
    add a                                         ; $7bbf: $87
    ld [hl], $05                                  ; $7bc0: $36 $05
    ld c, $80                                     ; $7bc2: $0e $80
    ld h, e                                       ; $7bc4: $63
    ld b, b                                       ; $7bc5: $40
    dec c                                         ; $7bc6: $0d
    ret nz                                        ; $7bc7: $c0

    ld b, l                                       ; $7bc8: $45
    ld b, e                                       ; $7bc9: $43
    ld bc, $3718                                  ; $7bca: $01 $18 $37
    inc b                                         ; $7bcd: $04
    inc bc                                        ; $7bce: $03
    ld d, d                                       ; $7bcf: $52
    add h                                         ; $7bd0: $84
    ld b, c                                       ; $7bd1: $41
    ld c, c                                       ; $7bd2: $49
    ld c, b                                       ; $7bd3: $48
    ld a, l                                       ; $7bd4: $7d
    ld b, e                                       ; $7bd5: $43
    inc a                                         ; $7bd6: $3c
    ld b, a                                       ; $7bd7: $47
    rlca                                          ; $7bd8: $07
    ld [hl], $45                                  ; $7bd9: $36 $45
    ld b, $c0                                     ; $7bdb: $06 $c0
    inc h                                         ; $7bdd: $24
    ld b, b                                       ; $7bde: $40
    dec c                                         ; $7bdf: $0d
    ret nz                                        ; $7be0: $c0

    and l                                         ; $7be1: $a5
    ld b, d                                       ; $7be2: $42
    ld bc, $205a                                  ; $7be3: $01 $5a $20
    or l                                          ; $7be6: $b5
    ld [bc], a                                    ; $7be7: $02
    cp a                                          ; $7be8: $bf
    ld [c], a                                     ; $7be9: $e2
    ld h, b                                       ; $7bea: $60
    ld a, l                                       ; $7beb: $7d
    ld b, c                                       ; $7bec: $41
    ld d, d                                       ; $7bed: $52
    ld b, l                                       ; $7bee: $45
    cp h                                          ; $7bef: $bc
    ld h, $3a                                     ; $7bf0: $26 $3a
    db $e3                                        ; $7bf2: $e3
    ld b, l                                       ; $7bf3: $45
    ld [bc], a                                    ; $7bf4: $02
    ld b, b                                       ; $7bf5: $40
    dec h                                         ; $7bf6: $25
    push bc                                       ; $7bf7: $c5
    dec c                                         ; $7bf8: $0d
    ret nz                                        ; $7bf9: $c0

    and d                                         ; $7bfa: $a2
    sbc a                                         ; $7bfb: $9f
    ret nc                                        ; $7bfc: $d0

    ld b, [hl]                                    ; $7bfd: $46
    set 0, [hl]                                   ; $7bfe: $cb $c6
    rst $00                                       ; $7c00: $c7
    ccf                                           ; $7c01: $3f
    ld hl, $bf98                                  ; $7c02: $21 $98 $bf
    db $e4                                        ; $7c05: $e4
    cp [hl]                                       ; $7c06: $be
    ld hl, $4445                                  ; $7c07: $21 $45 $44
    ld a, d                                       ; $7c0a: $7a
    inc a                                         ; $7c0b: $3c
    ld h, $3a                                     ; $7c0c: $26 $3a
    add c                                         ; $7c0e: $81
    ldh [$c6], a                                  ; $7c0f: $e0 $c6
    rst $00                                       ; $7c11: $c7
    ld b, [hl]                                    ; $7c12: $46
    ret nc                                        ; $7c13: $d0

    ld a, a                                       ; $7c14: $7f
    ld bc, $7c7c                                  ; $7c15: $01 $7c $7c
    add hl, bc                                    ; $7c18: $09
    add b                                         ; $7c19: $80
    dec h                                         ; $7c1a: $25
    and b                                         ; $7c1b: $a0
    db $d3                                        ; $7c1c: $d3
    ret nc                                        ; $7c1d: $d0

    call nz, Call_06b_7fc5                        ; $7c1e: $c4 $c5 $7f
    ldh [$9c], a                                  ; $7c21: $e0 $9c
    add b                                         ; $7c23: $80
    nop                                           ; $7c24: $00
    cp a                                          ; $7c25: $bf
    and $55                                       ; $7c26: $e6 $55
    ld b, l                                       ; $7c28: $45
    ld b, e                                       ; $7c29: $43
    cp $45                                        ; $7c2a: $fe $45
    ld a, [hl]                                    ; $7c2c: $7e
    ld h, b                                       ; $7c2d: $60
    dec b                                         ; $7c2e: $05
    rra                                           ; $7c2f: $1f
    dec b                                         ; $7c30: $05
    call nz, $d0c5                                ; $7c31: $c4 $c5 $d0
    db $d3                                        ; $7c34: $d3
    ret z                                         ; $7c35: $c8

    inc b                                         ; $7c36: $04
    ret                                           ; $7c37: $c9


    and $b3                                       ; $7c38: $e6 $b3
    inc b                                         ; $7c3a: $04
    jp c, Jump_000_00b4                           ; $7c3b: $da $b4 $00

    jp nc, Jump_000_03be                          ; $7c3e: $d2 $be $03

    sub a                                         ; $7c41: $97
    sbc d                                         ; $7c42: $9a
    ld a, [hl]                                    ; $7c43: $7e
    ldh [rHDMA3], a                               ; $7c44: $e0 $53
    ld d, h                                       ; $7c46: $54
    ld l, $79                                     ; $7c47: $2e $79
    jp nz, Jump_06b_4543                          ; $7c49: $c2 $43 $45

    ld b, l                                       ; $7c4c: $45
    cp l                                          ; $7c4d: $bd
    inc h                                         ; $7c4e: $24
    and e                                         ; $7c4f: $a3
    cp e                                          ; $7c50: $bb
    nop                                           ; $7c51: $00
    sbc $c0                                       ; $7c52: $de $c0
    ld [hl], c                                    ; $7c54: $71
    jp nc, Jump_000_0586                          ; $7c55: $d2 $86 $05

    cp h                                          ; $7c58: $bc
    xor a                                         ; $7c59: $af
    ld a, $05                                     ; $7c5a: $3e $05
    sbc d                                         ; $7c5c: $9a
    sub a                                         ; $7c5d: $97
    sub a                                         ; $7c5e: $97
    ld [bc], a                                    ; $7c5f: $02
    add b                                         ; $7c60: $80
    inc bc                                        ; $7c61: $03
    ld b, l                                       ; $7c62: $45

jr_06b_7c63:
    ld d, d                                       ; $7c63: $52
    ld a, [hl-]                                   ; $7c64: $3a
    jp $80bd                                      ; $7c65: $c3 $bd $80


    ld a, [hl-]                                   ; $7c68: $3a
    dec h                                         ; $7c69: $25
    xor h                                         ; $7c6a: $ac
    and c                                         ; $7c6b: $a1
    add d                                         ; $7c6c: $82
    ld b, d                                       ; $7c6d: $42
    ret nz                                        ; $7c6e: $c0

    ld a, [bc]                                    ; $7c6f: $0a
    jr nz, jr_06b_7c63                            ; $7c70: $20 $f1

    daa                                           ; $7c72: $27
    cp $c0                                        ; $7c73: $fe $c0
    cp h                                          ; $7c75: $bc
    ld bc, $c1ff                                  ; $7c76: $01 $ff $c1
    jp $5b61                                      ; $7c79: $c3 $61 $5b


    pop bc                                        ; $7c7c: $c1
    add l                                         ; $7c7d: $85
    cp a                                          ; $7c7e: $bf
    ldh [rNR41], a                                ; $7c7f: $e0 $20
    add d                                         ; $7c81: $82
    ldh [$2d], a                                  ; $7c82: $e0 $2d
    and d                                         ; $7c84: $a2
    ld [bc], a                                    ; $7c85: $02
    push hl                                       ; $7c86: $e5
    cp h                                          ; $7c87: $bc
    dec l                                         ; $7c88: $2d
    xor a                                         ; $7c89: $af
    inc bc                                        ; $7c8a: $03
    db $d3                                        ; $7c8b: $d3
    cp a                                          ; $7c8c: $bf
    ldh [$3c], a                                  ; $7c8d: $e0 $3c
    nop                                           ; $7c8f: $00
    nop                                           ; $7c90: $00
    sbc d                                         ; $7c91: $9a
    ld b, c                                       ; $7c92: $41
    cp $ea                                        ; $7c93: $fe $ea
    ld a, [hl]                                    ; $7c95: $7e
    db $e3                                        ; $7c96: $e3
    dec l                                         ; $7c97: $2d
    and b                                         ; $7c98: $a0
    ld [bc], a                                    ; $7c99: $02
    ldh [$82], a                                  ; $7c9a: $e0 $82
    dec l                                         ; $7c9c: $2d
    cp a                                          ; $7c9d: $bf
    inc hl                                        ; $7c9e: $23
    cpl                                           ; $7c9f: $2f
    ld h, h                                       ; $7ca0: $64
    ld [bc], a                                    ; $7ca1: $02
    cp a                                          ; $7ca2: $bf
    pop hl                                        ; $7ca3: $e1
    ld b, $01                                     ; $7ca4: $06 $01
    ld b, b                                       ; $7ca6: $40
    ret nz                                        ; $7ca7: $c0

    db $ec                                        ; $7ca8: $ec
    dec a                                         ; $7ca9: $3d
    ld [c], a                                     ; $7caa: $e2
    xor [hl]                                      ; $7cab: $ae
    add b                                         ; $7cac: $80
    pop bc                                        ; $7cad: $c1
    db $e3                                        ; $7cae: $e3
    ld b, d                                       ; $7caf: $42
    xor d                                         ; $7cb0: $aa
    sbc b                                         ; $7cb1: $98
    ld a, l                                       ; $7cb2: $7d
    inc h                                         ; $7cb3: $24
    xor a                                         ; $7cb4: $af
    dec b                                         ; $7cb5: $05
    ld a, [hl]                                    ; $7cb6: $7e
    ldh [rTIMA], a                                ; $7cb7: $e0 $05
    ld c, $81                                     ; $7cb9: $0e $81
    db $ed                                        ; $7cbb: $ed
    inc [hl]                                      ; $7cbc: $34
    and c                                         ; $7cbd: $a1
    ld a, [hl-]                                   ; $7cbe: $3a
    ld b, b                                       ; $7cbf: $40
    jp nz, $82c0                                  ; $7cc0: $c2 $c0 $82

    db $e4                                        ; $7cc3: $e4
    ld b, d                                       ; $7cc4: $42
    and h                                         ; $7cc5: $a4
    add d                                         ; $7cc6: $82
    ld c, d                                       ; $7cc7: $4a
    xor a                                         ; $7cc8: $af
    ld b, $3d                                     ; $7cc9: $06 $3d
    ldh [rSC], a                                  ; $7ccb: $e0 $02
    add c                                         ; $7ccd: $81
    xor $00                                       ; $7cce: $ee $00
    ld h, [hl]                                    ; $7cd0: $66
    and b                                         ; $7cd1: $a0
    xor [hl]                                      ; $7cd2: $ae
    add b                                         ; $7cd3: $80
    ld b, e                                       ; $7cd4: $43
    ld [c], a                                     ; $7cd5: $e2
    ld d, d                                       ; $7cd6: $52
    ld h, l                                       ; $7cd7: $65
    cp e                                          ; $7cd8: $bb
    db $10                                        ; $7cd9: $10
    rst $28                                       ; $7cda: $ef
    inc bc                                        ; $7cdb: $03
    db $fc                                        ; $7cdc: $fc
    pop bc                                        ; $7cdd: $c1
    ret nz                                        ; $7cde: $c0

    ldh a, [rSB]                                  ; $7cdf: $f0 $01
    ld b, l                                       ; $7ce1: $45
    pop bc                                        ; $7ce2: $c1
    db $e3                                        ; $7ce3: $e3
    ld d, d                                       ; $7ce4: $52
    ld h, [hl]                                    ; $7ce5: $66
    ld a, e                                       ; $7ce6: $7b
    db $10                                        ; $7ce7: $10
    rst $28                                       ; $7ce8: $ef
    ld bc, $60ab                                  ; $7ce9: $01 $ab $60
    cp a                                          ; $7cec: $bf
    db $f4                                        ; $7ced: $f4
    rst $00                                       ; $7cee: $c7
    and c                                         ; $7cef: $a1
    nop                                           ; $7cf0: $00
    adc [hl]                                      ; $7cf1: $8e
    ld h, b                                       ; $7cf2: $60
    add hl, bc                                    ; $7cf3: $09
    ret nc                                        ; $7cf4: $d0

    ld [hl], h                                    ; $7cf5: $74
    dec b                                         ; $7cf6: $05
    scf                                           ; $7cf7: $37
    ld h, l                                       ; $7cf8: $65
    ld a, [hl]                                    ; $7cf9: $7e
    ld a, [c]                                     ; $7cfa: $f2
    add [hl]                                      ; $7cfb: $86
    ret nc                                        ; $7cfc: $d0

    add l                                         ; $7cfd: $85
    db $ec                                        ; $7cfe: $ec
    and [hl]                                      ; $7cff: $a6
    rst $00                                       ; $7d00: $c7
    nop                                           ; $7d01: $00
    dec a                                         ; $7d02: $3d
    ldh a, [rBGP]                                 ; $7d03: $f0 $47
    call nz, $cd85                                ; $7d05: $c4 $85 $cd
    pop bc                                        ; $7d08: $c1
    ld [$c7a6], sp                                ; $7d09: $08 $a6 $c7
    db $fc                                        ; $7d0c: $fc
    ret nc                                        ; $7d0d: $d0

    ld [$e1c1], sp                                ; $7d0e: $08 $c1 $e1
    pop bc                                        ; $7d11: $c1
    nop                                           ; $7d12: $00
    ld c, b                                       ; $7d13: $48
    inc h                                         ; $7d14: $24
    ld b, h                                       ; $7d15: $44
    ld b, [hl]                                    ; $7d16: $46
    or l                                          ; $7d17: $b5
    inc c                                         ; $7d18: $0c
    ld l, c                                       ; $7d19: $69
    inc hl                                        ; $7d1a: $23
    or h                                          ; $7d1b: $b4
    ld b, b                                       ; $7d1c: $40
    cp e                                          ; $7d1d: $bb
    call z, $a2c9                                 ; $7d1e: $cc $c9 $a2
    rst $08                                       ; $7d21: $cf
    add c                                         ; $7d22: $81
    jr nc, jr_06b_7d6d                            ; $7d23: $30 $48

    ld h, $be                                     ; $7d25: $26 $be
    di                                            ; $7d27: $f3
    ld l, c                                       ; $7d28: $69
    inc hl                                        ; $7d29: $23
    and [hl]                                      ; $7d2a: $a6
    add c                                         ; $7d2b: $81
    db $d3                                        ; $7d2c: $d3
    pop de                                        ; $7d2d: $d1
    rst $38                                       ; $7d2e: $ff
    jp hl                                         ; $7d2f: $e9


    adc d                                         ; $7d30: $8a
    and d                                         ; $7d31: $a2
    nop                                           ; $7d32: $00
    jr jr_06b_7d76                                ; $7d33: $18 $41

    ld c, b                                       ; $7d35: $48
    dec h                                         ; $7d36: $25
    cp $8e                                        ; $7d37: $fe $8e
    ld l, [hl]                                    ; $7d39: $6e
    jp hl                                         ; $7d3a: $e9


    sbc l                                         ; $7d3b: $9d
    pop de                                        ; $7d3c: $d1
    call $ff95                                    ; $7d3d: $cd $95 $ff
    rst $38                                       ; $7d40: $ff
    rst $38                                       ; $7d41: $ff
    ei                                            ; $7d42: $fb
    nop                                           ; $7d43: $00
    nop                                           ; $7d44: $00
    nop                                           ; $7d45: $00
    pop bc                                        ; $7d46: $c1
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
    nop                                           ; $7d52: $00
    nop                                           ; $7d53: $00
    ld bc, $fe80                                  ; $7d54: $01 $80 $fe
    ldh [rIE], a                                  ; $7d57: $e0 $ff
    rst $38                                       ; $7d59: $ff
    rst $38                                       ; $7d5a: $ff
    rst $38                                       ; $7d5b: $ff
    rst $38                                       ; $7d5c: $ff
    add sp, $00                                   ; $7d5d: $e8 $00
    nop                                           ; $7d5f: $00
    nop                                           ; $7d60: $00
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

jr_06b_7d6d:
    rst $38                                       ; $7d6d: $ff
    rst $38                                       ; $7d6e: $ff
    rst $38                                       ; $7d6f: $ff
    rst $38                                       ; $7d70: $ff
    rst $38                                       ; $7d71: $ff
    rst $38                                       ; $7d72: $ff
    rst $38                                       ; $7d73: $ff
    rst $38                                       ; $7d74: $ff
    rst $38                                       ; $7d75: $ff

jr_06b_7d76:
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

Jump_06b_7d82:
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

Jump_06b_7e29:
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

Jump_06b_7e4b:
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

Jump_06b_7e60:
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

Jump_06b_7f06:
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

Jump_06b_7f20:
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

Jump_06b_7fc0:
    rst $38                                       ; $7fc0: $ff
    rst $38                                       ; $7fc1: $ff
    rst $38                                       ; $7fc2: $ff
    rst $38                                       ; $7fc3: $ff
    rst $38                                       ; $7fc4: $ff

Call_06b_7fc5:
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

Jump_06b_7fe2:
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
