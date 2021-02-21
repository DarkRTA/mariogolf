; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02c", ROMX[$4000], BANK[$2c]

    pop de                                        ; $4000: $d1
    ld a, d                                       ; $4001: $7a
    ld a, b                                       ; $4002: $78
    ld a, e                                       ; $4003: $7b
    ld l, b                                       ; $4004: $68
    ld b, b                                       ; $4005: $40
    ld [hl], b                                    ; $4006: $70
    ld b, b                                       ; $4007: $40
    push af                                       ; $4008: $f5
    ld b, l                                       ; $4009: $45
    inc h                                         ; $400a: $24
    ld c, b                                       ; $400b: $48
    adc e                                         ; $400c: $8b
    ld c, c                                       ; $400d: $49
    rst $10                                       ; $400e: $d7
    ld c, c                                       ; $400f: $49
    jr nz, jr_02c_405c                            ; $4010: $20 $4a

    dec hl                                        ; $4012: $2b
    ld c, d                                       ; $4013: $4a
    or b                                          ; $4014: $b0
    ld b, b                                       ; $4015: $40
    ld h, d                                       ; $4016: $62
    ld c, h                                       ; $4017: $4c
    ld l, d                                       ; $4018: $6a
    ld c, h                                       ; $4019: $4c
    ld [hl], h                                    ; $401a: $74
    ld d, d                                       ; $401b: $52
    ld b, c                                       ; $401c: $41
    ld d, h                                       ; $401d: $54
    pop hl                                        ; $401e: $e1
    ld d, l                                       ; $401f: $55
    daa                                           ; $4020: $27
    ld d, [hl]                                    ; $4021: $56
    ld l, l                                       ; $4022: $6d
    ld d, [hl]                                    ; $4023: $56
    ld l, [hl]                                    ; $4024: $6e
    ld d, [hl]                                    ; $4025: $56
    xor d                                         ; $4026: $aa
    ld c, h                                       ; $4027: $4c
    db $f4                                        ; $4028: $f4
    ld d, [hl]                                    ; $4029: $56
    db $fc                                        ; $402a: $fc
    ld d, [hl]                                    ; $402b: $56
    ld l, a                                       ; $402c: $6f
    ld e, l                                       ; $402d: $5d
    ld [hl], l                                    ; $402e: $75
    ld h, c                                       ; $402f: $61
    sbc c                                         ; $4030: $99
    ld h, h                                       ; $4031: $64
    ld a, [$4d64]                                 ; $4032: $fa $64 $4d
    ld h, l                                       ; $4035: $65
    ld c, [hl]                                    ; $4036: $4e
    ld h, l                                       ; $4037: $65
    inc a                                         ; $4038: $3c
    ld d, a                                       ; $4039: $57
    call nc, $dc65                                ; $403a: $d4 $65 $dc
    ld h, l                                       ; $403d: $65
    xor [hl]                                      ; $403e: $ae
    ld l, b                                       ; $403f: $68
    ld l, a                                       ; $4040: $6f
    ld l, d                                       ; $4041: $6a
    or $6b                                        ; $4042: $f6 $6b
    ld c, d                                       ; $4044: $4a
    ld l, h                                       ; $4045: $6c
    sbc e                                         ; $4046: $9b
    ld l, h                                       ; $4047: $6c
    sbc h                                         ; $4048: $9c
    ld l, h                                       ; $4049: $6c
    inc e                                         ; $404a: $1c
    ld h, [hl]                                    ; $404b: $66
    ld [hl+], a                                   ; $404c: $22
    ld l, l                                       ; $404d: $6d
    ld a, [hl+]                                   ; $404e: $2a
    ld l, l                                       ; $404f: $6d
    push af                                       ; $4050: $f5
    ld [hl], d                                    ; $4051: $72
    or l                                          ; $4052: $b5
    halt                                          ; $4053: $76
    sub c                                         ; $4054: $91
    ld a, c                                       ; $4055: $79
    rst $38                                       ; $4056: $ff
    ld a, c                                       ; $4057: $79
    ld c, d                                       ; $4058: $4a
    ld a, d                                       ; $4059: $7a
    ld c, e                                       ; $405a: $4b
    ld a, d                                       ; $405b: $7a

jr_02c_405c:
    ld l, d                                       ; $405c: $6a
    ld l, l                                       ; $405d: $6d
    jr nz, @+$4c                                  ; $405e: $20 $4a

    ld l, l                                       ; $4060: $6d
    ld d, [hl]                                    ; $4061: $56
    ld c, l                                       ; $4062: $4d
    ld h, l                                       ; $4063: $65
    sbc e                                         ; $4064: $9b
    ld l, h                                       ; $4065: $6c
    ld c, d                                       ; $4066: $4a
    ld a, d                                       ; $4067: $7a
    nop                                           ; $4068: $00
    nop                                           ; $4069: $00
    nop                                           ; $406a: $00
    nop                                           ; $406b: $00
    inc d                                         ; $406c: $14
    ld [de], a                                    ; $406d: $12
    nop                                           ; $406e: $00
    nop                                           ; $406f: $00
    add b                                         ; $4070: $80
    nop                                           ; $4071: $00
    jr nz, jr_02c_40c9                            ; $4072: $20 $55

    and b                                         ; $4074: $a0
    ld a, [hl]                                    ; $4075: $7e
    rst $38                                       ; $4076: $ff
    ld a, a                                       ; $4077: $7f
    ld [$0825], sp                                ; $4078: $08 $25 $08
    dec h                                         ; $407b: $25
    ld [$0825], sp                                ; $407c: $08 $25 $08
    dec h                                         ; $407f: $25
    ld h, d                                       ; $4080: $62
    ld a, l                                       ; $4081: $7d
    jp hl                                         ; $4082: $e9


    inc l                                         ; $4083: $2c
    add sp, $7e                                   ; $4084: $e8 $7e
    rst $38                                       ; $4086: $ff
    ld a, a                                       ; $4087: $7f
    ld b, b                                       ; $4088: $40
    inc bc                                        ; $4089: $03
    sub $01                                       ; $408a: $d6 $01
    ld b, b                                       ; $408c: $40
    ld [bc], a                                    ; $408d: $02
    ld e, a                                       ; $408e: $5f
    ld [bc], a                                    ; $408f: $02
    add sp, $7e                                   ; $4090: $e8 $7e
    jp hl                                         ; $4092: $e9


    inc l                                         ; $4093: $2c
    sub $01                                       ; $4094: $d6 $01
    rst $38                                       ; $4096: $ff
    ld a, a                                       ; $4097: $7f
    ld b, b                                       ; $4098: $40
    inc bc                                        ; $4099: $03
    ld a, a                                       ; $409a: $7f
    inc hl                                        ; $409b: $23
    rra                                           ; $409c: $1f
    ld h, h                                       ; $409d: $64
    ld b, [hl]                                    ; $409e: $46
    db $10                                        ; $409f: $10
    ld b, b                                       ; $40a0: $40
    inc bc                                        ; $40a1: $03
    sbc a                                         ; $40a2: $9f
    ld [bc], a                                    ; $40a3: $02
    dec e                                         ; $40a4: $1d
    nop                                           ; $40a5: $00
    ld b, [hl]                                    ; $40a6: $46
    db $10                                        ; $40a7: $10
    ld [$0825], sp                                ; $40a8: $08 $25 $08
    dec h                                         ; $40ab: $25
    ld [$0825], sp                                ; $40ac: $08 $25 $08
    dec h                                         ; $40af: $25
    rst $38                                       ; $40b0: $ff
    jr jr_02c_40cb                                ; $40b1: $18 $18

    dec [hl]                                      ; $40b3: $35
    dec l                                         ; $40b4: $2d
    ld c, [hl]                                    ; $40b5: $4e
    ld a, a                                       ; $40b6: $7f
    ld e, h                                       ; $40b7: $5c
    ld [hl], a                                    ; $40b8: $77
    rst $38                                       ; $40b9: $ff
    jr z, @+$41                                   ; $40ba: $28 $3f

    dec hl                                        ; $40bc: $2b
    ccf                                           ; $40bd: $3f
    cpl                                           ; $40be: $2f
    inc a                                         ; $40bf: $3c
    scf                                           ; $40c0: $37
    inc [hl]                                      ; $40c1: $34
    rst $38                                       ; $40c2: $ff
    nop                                           ; $40c3: $00
    nop                                           ; $40c4: $00
    ldh a, [$f0]                                  ; $40c5: $f0 $f0
    ld l, b                                       ; $40c7: $68
    sbc b                                         ; $40c8: $98

jr_02c_40c9:
    db $e4                                        ; $40c9: $e4
    inc a                                         ; $40ca: $3c

jr_02c_40cb:
    rst $38                                       ; $40cb: $ff
    ld a, h                                       ; $40cc: $7c
    call nc, $dc74                                ; $40cd: $d4 $74 $dc
    ld hl, sp-$48                                 ; $40d0: $f8 $b8
    ld hl, sp-$58                                 ; $40d2: $f8 $a8
    rst $38                                       ; $40d4: $ff
    inc hl                                        ; $40d5: $23
    ld [hl+], a                                   ; $40d6: $22
    inc bc                                        ; $40d7: $03
    inc bc                                        ; $40d8: $03
    rlca                                          ; $40d9: $07
    dec b                                         ; $40da: $05
    ld c, $0b                                     ; $40db: $0e $0b
    rst $38                                       ; $40dd: $ff
    rlca                                          ; $40de: $07
    rlca                                          ; $40df: $07
    rrca                                          ; $40e0: $0f
    rrca                                          ; $40e1: $0f
    dec bc                                        ; $40e2: $0b
    dec bc                                        ; $40e3: $0b
    ld b, $06                                     ; $40e4: $06 $06
    rst $38                                       ; $40e6: $ff
    ld hl, sp+$08                                 ; $40e7: $f8 $08
    ldh a, [$90]                                  ; $40e9: $f0 $90
    ld a, b                                       ; $40eb: $78
    add sp, $38                                   ; $40ec: $e8 $38
    ld hl, sp-$01                                 ; $40ee: $f8 $ff
    ldh a, [$d0]                                  ; $40f0: $f0 $d0
    add sp, $68                                   ; $40f2: $e8 $68
    ret c                                         ; $40f4: $d8

    ret c                                         ; $40f5: $d8

    ldh a, [$f0]                                  ; $40f6: $f0 $f0
    sbc $e2                                       ; $40f8: $de $e2
    ldh [rTAC], a                                 ; $40fa: $e0 $07
    rrca                                          ; $40fc: $0f
    ld c, $0f                                     ; $40fd: $0e $0f
    rst $38                                       ; $40ff: $ff
    pop hl                                        ; $4100: $e1
    ld c, $0f                                     ; $4101: $0e $0f
    rst $38                                       ; $4103: $ff
    ld c, $07                                     ; $4104: $0e $07
    rlca                                          ; $4106: $07
    ldh [$e0], a                                  ; $4107: $e0 $e0
    ldh a, [$30]                                  ; $4109: $f0 $30
    ld hl, sp-$01                                 ; $410b: $f8 $ff
    ld a, b                                       ; $410d: $78
    ld hl, sp+$58                                 ; $410e: $f8 $58

jr_02c_4110:
    ld hl, sp-$38                                 ; $4110: $f8 $c8
    ld hl, sp-$68                                 ; $4112: $f8 $98
    ld hl, sp-$01                                 ; $4114: $f8 $ff
    jr jr_02c_4110                                ; $4116: $18 $f8

    ld [$0707], sp                                ; $4118: $08 $07 $07
    ld b, $07                                     ; $411b: $06 $07
    inc c                                         ; $411d: $0c
    rst $38                                       ; $411e: $ff
    rrca                                          ; $411f: $0f
    inc c                                         ; $4120: $0c
    rrca                                          ; $4121: $0f
    rlca                                          ; $4122: $07
    rlca                                          ; $4123: $07
    dec bc                                        ; $4124: $0b
    ld c, $0d                                     ; $4125: $0e $0d
    cp $fa                                        ; $4127: $fe $fa
    ldh [$f8], a                                  ; $4129: $e0 $f8
    adc b                                         ; $412b: $88
    ld [hl], b                                    ; $412c: $70
    ret nc                                        ; $412d: $d0

    ldh a, [$b0]                                  ; $412e: $f0 $b0
    ld a, b                                       ; $4130: $78
    rst $38                                       ; $4131: $ff
    ret z                                         ; $4132: $c8

    ldh a, [$f0]                                  ; $4133: $f0 $f0
    ld hl, sp+$58                                 ; $4135: $f8 $58
    add sp, -$08                                  ; $4137: $e8 $f8
    ld [hl], b                                    ; $4139: $70
    rst $38                                       ; $413a: $ff
    ld [hl], b                                    ; $413b: $70
    rlca                                          ; $413c: $07
    rlca                                          ; $413d: $07
    ld [$1308], sp                                ; $413e: $08 $08 $13
    ld de, $ff11                                  ; $4141: $11 $11 $ff
    ld de, $1717                                  ; $4144: $11 $17 $17
    rra                                           ; $4147: $1f

jr_02c_4148:
    add hl, de                                    ; $4148: $19
    rrca                                          ; $4149: $0f
    ld [$ff0f], sp                                ; $414a: $08 $0f $ff
    inc c                                         ; $414d: $0c
    ret nz                                        ; $414e: $c0

    ret nz                                        ; $414f: $c0

    and b                                         ; $4150: $a0
    and b                                         ; $4151: $a0
    ldh a, [$50]                                  ; $4152: $f0 $50
    ret nc                                        ; $4154: $d0

    ld e, a                                       ; $4155: $5f
    ld d, b                                       ; $4156: $50
    ldh a, [$30]                                  ; $4157: $f0 $30
    ldh a, [$50]                                  ; $4159: $f0 $50
    cp $e0                                        ; $415b: $fe $e0
    db $10                                        ; $415d: $10
    pop bc                                        ; $415e: $c1
    ldh [$bd], a                                  ; $415f: $e0 $bd
    dec b                                         ; $4161: $05
    add h                                         ; $4162: $84
    ldh [$0a], a                                  ; $4163: $e0 $0a
    rra                                           ; $4165: $1f
    inc d                                         ; $4166: $14
    rra                                           ; $4167: $1f
    rst $38                                       ; $4168: $ff
    ldh [$0e], a                                  ; $4169: $e0 $0e
    rst $30                                       ; $416b: $f7
    ld c, $f0                                     ; $416c: $0e $f0
    db $10                                        ; $416e: $10
    and b                                         ; $416f: $a0
    ldh [$e8], a                                  ; $4170: $e0 $e8
    ld hl, sp+$78                                 ; $4172: $f8 $78
    ldh [rIE], a                                  ; $4174: $e0 $ff
    jr nz, jr_02c_4148                            ; $4176: $20 $d0

    ldh a, [$90]                                  ; $4178: $f0 $90
    ldh a, [$e0]                                  ; $417a: $f0 $e0
    ldh [rTAC], a                                 ; $417c: $e0 $07
    rst $38                                       ; $417e: $ff
    rlca                                          ; $417f: $07
    inc c                                         ; $4180: $0c
    dec bc                                        ; $4181: $0b
    inc de                                        ; $4182: $13
    ld e, $17                                     ; $4183: $1e $17

jr_02c_4185:
    dec e                                         ; $4185: $1d
    rra                                           ; $4186: $1f
    ld a, a                                       ; $4187: $7f
    jr jr_02c_41a9                                ; $4188: $18 $1f

    ld a, [de]                                    ; $418a: $1a
    rrca                                          ; $418b: $0f
    ld a, [bc]                                    ; $418c: $0a
    rrca                                          ; $418d: $0f
    ld [$e0c0], sp                                ; $418e: $08 $c0 $e0
    rst $38                                       ; $4191: $ff
    ld h, b                                       ; $4192: $60
    ret nc                                        ; $4193: $d0

    jr nc, @-$6e                                  ; $4194: $30 $90

    ld [hl], b                                    ; $4196: $70
    xor b                                         ; $4197: $a8
    ld hl, sp-$08                                 ; $4198: $f8 $f8
    rst $38                                       ; $419a: $ff
    ret c                                         ; $419b: $d8

    ld hl, sp+$18                                 ; $419c: $f8 $18
    ldh a, [rSVBK]                                ; $419e: $f0 $70
    rlca                                          ; $41a0: $07
    inc b                                         ; $41a1: $04
    rlca                                          ; $41a2: $07
    rst $38                                       ; $41a3: $ff
    rlca                                          ; $41a4: $07
    rlca                                          ; $41a5: $07
    dec b                                         ; $41a6: $05
    rrca                                          ; $41a7: $0f
    dec bc                                        ; $41a8: $0b

jr_02c_41a9:
    rrca                                          ; $41a9: $0f
    rrca                                          ; $41aa: $0f
    rra                                           ; $41ab: $1f
    ei                                            ; $41ac: $fb
    rra                                           ; $41ad: $1f
    rla                                           ; $41ae: $17
    ret nz                                        ; $41af: $c0

    ldh [$e0], a                                  ; $41b0: $e0 $e0
    ldh [rSVBK], a                                ; $41b2: $e0 $70
    ld d, b                                       ; $41b4: $50
    jr nc, jr_02c_4185                            ; $41b5: $30 $ce

    rst $38                                       ; $41b7: $ff
    ldh [$e0], a                                  ; $41b8: $e0 $e0
    ldh [$50], a                                  ; $41ba: $e0 $50
    ret nz                                        ; $41bc: $c0

    ld [c], a                                     ; $41bd: $e2
    ld [hl+], a                                   ; $41be: $22
    ldh [rDIV], a                                 ; $41bf: $e0 $04
    ld c, $e7                                     ; $41c1: $0e $e7
    ld [$080e], sp                                ; $41c3: $08 $0e $08
    ld a, $e2                                     ; $41c6: $3e $e2
    ld d, a                                       ; $41c8: $57
    ldh [$e0], a                                  ; $41c9: $e0 $e0
    ldh [rNR10], a                                ; $41cb: $e0 $10
    rst $38                                       ; $41cd: $ff
    db $10                                        ; $41ce: $10
    jr c, jr_02c_4209                             ; $41cf: $38 $38

    ld h, h                                       ; $41d1: $64
    ld b, h                                       ; $41d2: $44
    db $fc                                        ; $41d3: $fc
    db $fc                                        ; $41d4: $fc
    ld hl, sp-$01                                 ; $41d5: $f8 $ff
    adc b                                         ; $41d7: $88
    ld hl, sp-$58                                 ; $41d8: $f8 $a8
    ld hl, sp+$28                                 ; $41da: $f8 $28
    rlca                                          ; $41dc: $07
    ld b, $03                                     ; $41dd: $06 $03
    rst $38                                       ; $41df: $ff
    inc bc                                        ; $41e0: $03
    ld b, $07                                     ; $41e1: $06 $07
    rrca                                          ; $41e3: $0f
    dec bc                                        ; $41e4: $0b
    rra                                           ; $41e5: $1f
    ld d, $1f                                     ; $41e6: $16 $1f
    ei                                            ; $41e8: $fb
    rra                                           ; $41e9: $1f
    rrca                                          ; $41ea: $0f
    ld b, b                                       ; $41eb: $40
    pop hl                                        ; $41ec: $e1
    ld [$10f0], sp                                ; $41ed: $08 $f0 $10
    add sp, -$08                                  ; $41f0: $e8 $f8
    ei                                            ; $41f2: $fb
    ld hl, sp-$08                                 ; $41f3: $f8 $f8
    add b                                         ; $41f5: $80
    ldh [rSVBK], a                                ; $41f6: $e0 $70
    or b                                          ; $41f8: $b0
    ldh a, [$60]                                  ; $41f9: $f0 $60
    ld h, b                                       ; $41fb: $60
    add c                                         ; $41fc: $81
    nop                                           ; $41fd: $00
    rst $38                                       ; $41fe: $ff
    rst $38                                       ; $41ff: $ff
    rst $38                                       ; $4200: $ff
    rst $38                                       ; $4201: $ff
    rst $38                                       ; $4202: $ff
    rst $38                                       ; $4203: $ff
    rst $38                                       ; $4204: $ff
    rst $38                                       ; $4205: $ff

Jump_02c_4206:
    rst $38                                       ; $4206: $ff
    rst $38                                       ; $4207: $ff
    di                                            ; $4208: $f3

jr_02c_4209:
    ld a, [c]                                     ; $4209: $f2
    push af                                       ; $420a: $f5
    rst $38                                       ; $420b: $ff
    rst $38                                       ; $420c: $ff
    xor d                                         ; $420d: $aa
    rst $38                                       ; $420e: $ff
    ld d, b                                       ; $420f: $50
    rst $38                                       ; $4210: $ff
    add b                                         ; $4211: $80
    rst $38                                       ; $4212: $ff
    ld b, b                                       ; $4213: $40
    rst $38                                       ; $4214: $ff
    rst $38                                       ; $4215: $ff
    nop                                           ; $4216: $00
    db $fd                                        ; $4217: $fd
    rst $38                                       ; $4218: $ff
    rst $38                                       ; $4219: $ff
    cp a                                          ; $421a: $bf
    rst $38                                       ; $421b: $ff
    ld d, d                                       ; $421c: $52
    rst $38                                       ; $421d: $ff
    rst $38                                       ; $421e: $ff
    nop                                           ; $421f: $00
    cp $00                                        ; $4220: $fe $00
    ld [$f600], a                                 ; $4222: $ea $00 $f6
    nop                                           ; $4225: $00
    rst $38                                       ; $4226: $ff
    xor d                                         ; $4227: $aa
    nop                                           ; $4228: $00
    ld d, e                                       ; $4229: $53
    cp $fe                                        ; $422a: $fe $fe
    db $d3                                        ; $422c: $d3
    cp $fe                                        ; $422d: $fe $fe
    rst $28                                       ; $422f: $ef
    cp $fd                                        ; $4230: $fe $fd
    cp $ff                                        ; $4232: $fe $ff
    cp $e0                                        ; $4234: $fe $e0
    xor a                                         ; $4236: $af
    cp $fd                                        ; $4237: $fe $fd
    ei                                            ; $4239: $fb
    db $fc                                        ; $423a: $fc
    ld d, a                                       ; $423b: $57
    call nc, $ebe0                                ; $423c: $d4 $e0 $eb
    cp $f7                                        ; $423f: $fe $f7
    cp $eb                                        ; $4241: $fe $eb
    cp $ee                                        ; $4243: $fe $ee
    ldh [$eb], a                                  ; $4245: $e0 $eb
    cp $7f                                        ; $4247: $fe $7f
    ld a, [hl]                                    ; $4249: $7e
    push de                                       ; $424a: $d5
    cp $ab                                        ; $424b: $fe $ab
    cp $ea                                        ; $424d: $fe $ea
    ldh [$f9], a                                  ; $424f: $e0 $f9
    ei                                            ; $4251: $fb
    rst $38                                       ; $4252: $ff
    rst $38                                       ; $4253: $ff
    rst $38                                       ; $4254: $ff
    cp $ae                                        ; $4255: $fe $ae
    rst $30                                       ; $4257: $f7
    db $fd                                        ; $4258: $fd
    ei                                            ; $4259: $fb
    ld hl, sp-$20                                 ; $425a: $f8 $e0
    ld [c], a                                     ; $425c: $e2
    ld a, [hl]                                    ; $425d: $7e
    ld [hl], a                                    ; $425e: $77
    cp [hl]                                       ; $425f: $be
    ld l, e                                       ; $4260: $6b
    rst $10                                       ; $4261: $d7

Jump_02c_4262:
    cp [hl]                                       ; $4262: $be
    ld a, a                                       ; $4263: $7f
    ld a, [hl]                                    ; $4264: $7e
    call c, Call_000_3ee0                         ; $4265: $dc $e0 $3e
    ldh [$e1], a                                  ; $4268: $e0 $e1
    ld sp, hl                                     ; $426a: $f9
    db $fc                                        ; $426b: $fc
    rst $38                                       ; $426c: $ff
    ei                                            ; $426d: $fb
    ei                                            ; $426e: $fb
    cp $fe                                        ; $426f: $fe $fe
    rst $38                                       ; $4271: $ff
    rst $38                                       ; $4272: $ff
    xor e                                         ; $4273: $ab
    ei                                            ; $4274: $fb
    cp c                                          ; $4275: $b9
    ld sp, hl                                     ; $4276: $f9
    ret nz                                        ; $4277: $c0

    db $e3                                        ; $4278: $e3
    ldh [$e0], a                                  ; $4279: $e0 $e0
    xor e                                         ; $427b: $ab
    ld a, [hl]                                    ; $427c: $7e
    ld a, a                                       ; $427d: $7f
    call c, $ffe0                                 ; $427e: $dc $e0 $ff
    cp h                                          ; $4281: $bc
    ret nz                                        ; $4282: $c0

    ld [c], a                                     ; $4283: $e2
    add b                                         ; $4284: $80
    db $eb                                        ; $4285: $eb
    rst $38                                       ; $4286: $ff
    rst $38                                       ; $4287: $ff
    ld d, b                                       ; $4288: $50
    cp $80                                        ; $4289: $fe $80
    and $52                                       ; $428b: $e6 $52
    cp $87                                        ; $428d: $fe $87
    pop hl                                        ; $428f: $e1
    rst $38                                       ; $4290: $ff
    nop                                           ; $4291: $00
    ld d, b                                       ; $4292: $50
    ld h, a                                       ; $4293: $67
    scf                                           ; $4294: $37
    ld l, a                                       ; $4295: $6f
    ld d, a                                       ; $4296: $57
    rst $38                                       ; $4297: $ff
    ld l, a                                       ; $4298: $6f
    ld [hl], a                                    ; $4299: $77
    ld l, a                                       ; $429a: $6f
    ld [hl], l                                    ; $429b: $75
    ld l, a                                       ; $429c: $6f
    ld [hl], d                                    ; $429d: $72
    ld l, a                                       ; $429e: $6f
    jr @+$01                                      ; $429f: $18 $ff

    ld h, b                                       ; $42a1: $60
    rst $38                                       ; $42a2: $ff
    nop                                           ; $42a3: $00
    add hl, bc                                    ; $42a4: $09
    or $f5                                        ; $42a5: $f6 $f5
    or $f3                                        ; $42a7: $f6 $f3
    cp $fc                                        ; $42a9: $fe $fc
    ldh [$57], a                                  ; $42ab: $e0 $57
    or $a7                                        ; $42ad: $f6 $a7
    or $09                                        ; $42af: $f6 $09
    ld b, $ff                                     ; $42b1: $06 $ff
    rst $38                                       ; $42b3: $ff
    nop                                           ; $42b4: $00
    xor e                                         ; $42b5: $ab
    nop                                           ; $42b6: $00
    ld a, a                                       ; $42b7: $7f
    nop                                           ; $42b8: $00
    ld d, l                                       ; $42b9: $55
    nop                                           ; $42ba: $00
    dec hl                                        ; $42bb: $2b
    rst $38                                       ; $42bc: $ff
    nop                                           ; $42bd: $00
    ld bc, $5500                                  ; $42be: $01 $00 $55
    add b                                         ; $42c1: $80
    ld bc, $0100                                  ; $42c2: $01 $00 $01
    db $fd                                        ; $42c5: $fd
    add b                                         ; $42c6: $80
    cp $e4                                        ; $42c7: $fe $e4
    call nc, $8001                                ; $42c9: $d4 $01 $80
    add c                                         ; $42cc: $81
    xor d                                         ; $42cd: $aa
    nop                                           ; $42ce: $00
    rst $38                                       ; $42cf: $ff
    call nc, $fe81                                ; $42d0: $d4 $81 $fe
    add b                                         ; $42d3: $80
    xor d                                         ; $42d4: $aa
    add b                                         ; $42d5: $80
    cp $80                                        ; $42d6: $fe $80
    or $7d                                        ; $42d8: $f6 $7d
    ldh [rP1], a                                  ; $42da: $e0 $00
    add d                                         ; $42dc: $82
    db $e4                                        ; $42dd: $e4
    pop hl                                        ; $42de: $e1
    add sp, $00                                   ; $42df: $e8 $00
    ret nc                                        ; $42e1: $d0

    nop                                           ; $42e2: $00
    rst $38                                       ; $42e3: $ff
    xor b                                         ; $42e4: $a8
    nop                                           ; $42e5: $00
    ld b, b                                       ; $42e6: $40
    nop                                           ; $42e7: $00
    and b                                         ; $42e8: $a0
    nop                                           ; $42e9: $00
    nop                                           ; $42ea: $00
    ld [bc], a                                    ; $42eb: $02
    rst $38                                       ; $42ec: $ff
    add b                                         ; $42ed: $80
    nop                                           ; $42ee: $00
    nop                                           ; $42ef: $00
    add hl, bc                                    ; $42f0: $09
    ld bc, $000f                                  ; $42f1: $01 $0f $00
    rla                                           ; $42f4: $17
    rst $38                                       ; $42f5: $ff
    ld bc, $022f                                  ; $42f6: $01 $2f $02
    sbc a                                         ; $42f9: $9f
    ld bc, $032f                                  ; $42fa: $01 $2f $03
    ld e, a                                       ; $42fd: $5f
    rst $38                                       ; $42fe: $ff
    dec b                                         ; $42ff: $05
    cp a                                          ; $4300: $bf
    inc bc                                        ; $4301: $03
    ld e, a                                       ; $4302: $5f
    nop                                           ; $4303: $00
    ld [bc], a                                    ; $4304: $02
    nop                                           ; $4305: $00
    dec h                                         ; $4306: $25
    rst $38                                       ; $4307: $ff
    nop                                           ; $4308: $00
    dec bc                                        ; $4309: $0b
    nop                                           ; $430a: $00
    sub l                                         ; $430b: $95

jr_02c_430c:
    nop                                           ; $430c: $00
    cpl                                           ; $430d: $2f
    ld bc, $ff57                                  ; $430e: $01 $57 $ff
    ld [bc], a                                    ; $4311: $02
    cp [hl]                                       ; $4312: $be
    inc b                                         ; $4313: $04
    ld e, h                                       ; $4314: $5c
    rlca                                          ; $4315: $07
    rst $38                                       ; $4316: $ff
    jr jr_02c_4395                                ; $4317: $18 $7c

    rst $38                                       ; $4319: $ff
    jr nz, jr_02c_430c                            ; $431a: $20 $f0

    ld b, b                                       ; $431c: $40
    ret nz                                        ; $431d: $c0

    add e                                         ; $431e: $83
    add b                                         ; $431f: $80
    ld [$ff03], sp                                ; $4320: $08 $03 $ff
    db $10                                        ; $4323: $10
    ld c, $25                                     ; $4324: $0e $25
    dec e                                         ; $4326: $1d
    ld [$10f8], sp                                ; $4327: $08 $f8 $10
    ld [hl], b                                    ; $432a: $70
    rst $38                                       ; $432b: $ff
    ld hl, $42e0                                  ; $432c: $21 $e0 $42

jr_02c_432f:
    pop bc                                        ; $432f: $c1
    add h                                         ; $4330: $84
    add e                                         ; $4331: $83
    add hl, bc                                    ; $4332: $09
    rlca                                          ; $4333: $07
    rst $38                                       ; $4334: $ff
    ld [de], a                                    ; $4335: $12
    rrca                                          ; $4336: $0f
    dec h                                         ; $4337: $25
    rra                                           ; $4338: $1f
    ld c, d                                       ; $4339: $4a
    ld a, [hl-]                                   ; $433a: $3a
    sbc h                                         ; $433b: $9c
    ld [hl], l                                    ; $433c: $75
    rst $38                                       ; $433d: $ff
    jr c, jr_02c_432f                             ; $433e: $38 $ef

    ld e, a                                       ; $4340: $5f
    ldh [$aa], a                                  ; $4341: $e0 $aa
    rst $38                                       ; $4343: $ff
    ld a, a                                       ; $4344: $7f
    rst $38                                       ; $4345: $ff
    rst $38                                       ; $4346: $ff
    rst $20                                       ; $4347: $e7
    ldh a, [$a2]                                  ; $4348: $f0 $a2
    rst $00                                       ; $434a: $c7
    ld a, a                                       ; $434b: $7f
    nop                                           ; $434c: $00
    nop                                           ; $434d: $00
    rst $38                                       ; $434e: $ff
    rst $38                                       ; $434f: $ff
    dec h                                         ; $4350: $25
    rst $38                                       ; $4351: $ff
    ldh [$1f], a                                  ; $4352: $e0 $1f
    sbc d                                         ; $4354: $9a
    rst $20                                       ; $4355: $e7
    ld de, $dffb                                  ; $4356: $11 $fb $df
    and $fd                                       ; $4359: $e6 $fd
    db $db                                        ; $435b: $db
    ld a, $ff                                     ; $435c: $3e $ff
    ldh a, [$e0]                                  ; $435e: $f0 $e0
    ld d, l                                       ; $4360: $55
    rst $38                                       ; $4361: $ff
    push af                                       ; $4362: $f5
    nop                                           ; $4363: $00
    sbc d                                         ; $4364: $9a
    ret nz                                        ; $4365: $c0

    ld d, l                                       ; $4366: $55
    reti                                          ; $4367: $d9


    ret nz                                        ; $4368: $c0

    xor d                                         ; $4369: $aa
    rst $38                                       ; $436a: $ff
    srl a                                         ; $436b: $cb $3f
    rst $38                                       ; $436d: $ff
    rla                                           ; $436e: $17
    cp $2e                                        ; $436f: $fe $2e
    db $fd                                        ; $4371: $fd
    ld e, l                                       ; $4372: $5d
    ei                                            ; $4373: $fb
    cp e                                          ; $4374: $bb
    rst $30                                       ; $4375: $f7
    rst $38                                       ; $4376: $ff
    ld h, a                                       ; $4377: $67
    or $f4                                        ; $4378: $f6 $f4
    xor $ce                                       ; $437a: $ee $ce
    db $ed                                        ; $437c: $ed
    sbc a                                         ; $437d: $9f
    ccf                                           ; $437e: $3f
    rst $38                                       ; $437f: $ff
    ld [hl], a                                    ; $4380: $77
    ld hl, sp-$30                                 ; $4381: $f8 $d0
    and $ce                                       ; $4383: $e6 $ce
    sbc a                                         ; $4385: $9f
    cp e                                          ; $4386: $bb
    ld a, l                                       ; $4387: $7d
    rst $38                                       ; $4388: $ff
    ld h, a                                       ; $4389: $67
    pop af                                        ; $438a: $f1
    db $d3                                        ; $438b: $d3
    push hl                                       ; $438c: $e5
    and e                                         ; $438d: $a3
    db $dd                                        ; $438e: $dd
    ccf                                           ; $438f: $3f
    adc a                                         ; $4390: $8f
    rst $38                                       ; $4391: $ff
    dec c                                         ; $4392: $0d
    rst $20                                       ; $4393: $e7
    dec bc                                        ; $4394: $0b

jr_02c_4395:
    rst $30                                       ; $4395: $f7
    rlca                                          ; $4396: $07
    di                                            ; $4397: $f3
    and a                                         ; $4398: $a7
    ei                                            ; $4399: $fb
    rst $38                                       ; $439a: $ff
    ld d, a                                       ; $439b: $57
    ei                                            ; $439c: $fb
    rst $30                                       ; $439d: $f7
    ei                                            ; $439e: $fb
    rrca                                          ; $439f: $0f
    inc bc                                        ; $43a0: $03
    rst $38                                       ; $43a1: $ff
    ld a, a                                       ; $43a2: $7f
    rst $38                                       ; $43a3: $ff
    cp a                                          ; $43a4: $bf
    ld a, a                                       ; $43a5: $7f
    rst $38                                       ; $43a6: $ff
    cp a                                          ; $43a7: $bf
    rst $28                                       ; $43a8: $ef
    cp a                                          ; $43a9: $bf
    rst $38                                       ; $43aa: $ff
    cp a                                          ; $43ab: $bf
    pop af                                        ; $43ac: $f1
    rst $18                                       ; $43ad: $df
    db $fc                                        ; $43ae: $fc
    db $e3                                        ; $43af: $e3
    rst $38                                       ; $43b0: $ff
    add sp, -$57                                  ; $43b1: $e8 $a9
    ret nz                                        ; $43b3: $c0

    rst $38                                       ; $43b4: $ff
    ret                                           ; $43b5: $c9


    call $f769                                    ; $43b6: $cd $69 $f7
    reti                                          ; $43b9: $d9


    db $ed                                        ; $43ba: $ed
    db $db                                        ; $43bb: $db
    cp $e7                                        ; $43bc: $fe $e7
    adc e                                         ; $43be: $8b
    cp l                                          ; $43bf: $bd
    ld d, c                                       ; $43c0: $51
    cp l                                          ; $43c1: $bd
    rst $38                                       ; $43c2: $ff
    inc bc                                        ; $43c3: $03
    ld a, e                                       ; $43c4: $7b
    add a                                         ; $43c5: $87
    ld [hl], l                                    ; $43c6: $75
    xor l                                         ; $43c7: $ad
    ld [hl], l                                    ; $43c8: $75
    adc l                                         ; $43c9: $8d
    ld [hl], a                                    ; $43ca: $77
    rst $18                                       ; $43cb: $df
    and a                                         ; $43cc: $a7
    ld [hl], e                                    ; $43cd: $73
    sub e                                         ; $43ce: $93
    ld a, c                                       ; $43cf: $79
    or $ba                                        ; $43d0: $f6 $ba
    ldh [$fe], a                                  ; $43d2: $e0 $fe
    inc bc                                        ; $43d4: $03
    sbc a                                         ; $43d5: $9f
    ld b, $fb                                     ; $43d6: $06 $fb
    rlca                                          ; $43d8: $07
    ei                                            ; $43d9: $fb
    and [hl]                                      ; $43da: $a6
    xor [hl]                                      ; $43db: $ae
    ld [c], a                                     ; $43dc: $e2
    cp b                                          ; $43dd: $b8
    pop hl                                        ; $43de: $e1
    rst $30                                       ; $43df: $f7
    jp c, $e0b4                                   ; $43e0: $da $b4 $e0

    rst $28                                       ; $43e3: $ef
    db $fc                                        ; $43e4: $fc
    ld [c], a                                     ; $43e5: $e2
    db $db                                        ; $43e6: $db
    cp a                                          ; $43e7: $bf
    cp h                                          ; $43e8: $bc
    pop hl                                        ; $43e9: $e1
    cp $ff                                        ; $43ea: $fe $ff
    rst $30                                       ; $43ec: $f7
    db $fd                                        ; $43ed: $fd
    rst $38                                       ; $43ee: $ff
    or $fc                                        ; $43ef: $f6 $fc
    ldh [$ea], a                                  ; $43f1: $e0 $ea
    rst $38                                       ; $43f3: $ff
    ld d, a                                       ; $43f4: $57
    rst $38                                       ; $43f5: $ff
    cp $b4                                        ; $43f6: $fe $b4
    jp hl                                         ; $43f8: $e9


    xor $d8                                       ; $43f9: $ee $d8
    ldh [$cb], a                                  ; $43fb: $e0 $cb
    xor e                                         ; $43fd: $ab
    ld a, l                                       ; $43fe: $7d
    or e                                          ; $43ff: $b3
    ld a, a                                       ; $4400: $7f
    ld a, l                                       ; $4401: $7d
    cp e                                          ; $4402: $bb
    ld a, l                                       ; $4403: $7d
    add e                                         ; $4404: $83
    ld a, l                                       ; $4405: $7d
    rst $38                                       ; $4406: $ff
    ld bc, $c075                                  ; $4407: $01 $75 $c0
    cp $24                                        ; $440a: $fe $24
    ldh [rIF], a                                  ; $440c: $e0 $0f
    inc bc                                        ; $440e: $03
    rst $30                                       ; $440f: $f7
    ei                                            ; $4410: $fb
    di                                            ; $4411: $f3
    ei                                            ; $4412: $fb
    ld sp, hl                                     ; $4413: $f9
    rst $38                                       ; $4414: $ff
    ei                                            ; $4415: $fb
    ei                                            ; $4416: $fb
    db $fd                                        ; $4417: $fd
    ld d, h                                       ; $4418: $54
    db $fd                                        ; $4419: $fd
    xor c                                         ; $441a: $a9
    cp $00                                        ; $441b: $fe $00
    rst $38                                       ; $441d: $ff
    rst $38                                       ; $441e: $ff
    xor a                                         ; $441f: $af
    cp a                                          ; $4420: $bf
    sub l                                         ; $4421: $95
    cp a                                          ; $4422: $bf
    jp z, $c0df                                   ; $4423: $ca $df $c0

    rst $38                                       ; $4426: $ff
    rst $18                                       ; $4427: $df
    push hl                                       ; $4428: $e5
    ldh [$bf], a                                  ; $4429: $e0 $bf
    rst $38                                       ; $442b: $ff
    push de                                       ; $442c: $d5
    rst $38                                       ; $442d: $ff
    ld a, [hl+]                                   ; $442e: $2a
    rst $38                                       ; $442f: $ff
    ld a, a                                       ; $4430: $7f
    ldh [rIE], a                                  ; $4431: $e0 $ff
    ld d, e                                       ; $4433: $53
    rst $30                                       ; $4434: $f7
    and [hl]                                      ; $4435: $a6
    ldh a, [rTAC]                                 ; $4436: $f0 $07
    rst $38                                       ; $4438: $ff
    ldh a, [rTAC]                                 ; $4439: $f0 $07
    ld b, b                                       ; $443b: $40
    dec a                                         ; $443c: $3d
    ld a, [hl]                                    ; $443d: $7e
    ld c, a                                       ; $443e: $4f
    rra                                           ; $443f: $1f
    ld a, c                                       ; $4440: $79
    xor a                                         ; $4441: $af
    inc bc                                        ; $4442: $03
    dec b                                         ; $4443: $05
    rst $18                                       ; $4444: $df
    ld [$c1e6], a                                 ; $4445: $ea $e6 $c1
    rrca                                          ; $4448: $0f
    db $fd                                        ; $4449: $fd
    ret nz                                        ; $444a: $c0

    nop                                           ; $444b: $00
    rst $10                                       ; $444c: $d7
    rst $18                                       ; $444d: $df
    ldh [$fe], a                                  ; $444e: $e0 $fe
    db $f4                                        ; $4450: $f4
    ret nz                                        ; $4451: $c0

    xor d                                         ; $4452: $aa
    pop de                                        ; $4453: $d1
    and b                                         ; $4454: $a0
    db $fd                                        ; $4455: $fd
    rst $38                                       ; $4456: $ff
    di                                            ; $4457: $f3
    cpl                                           ; $4458: $2f
    ld a, a                                       ; $4459: $7f
    xor $e1                                       ; $445a: $ee $e1
    ld [$3fe1], a                                 ; $445c: $ea $e1 $3f
    ret nz                                        ; $445f: $c0

    adc a                                         ; $4460: $8f
    ld [hl], b                                    ; $4461: $70
    rst $28                                       ; $4462: $ef
    ld hl, $04de                                  ; $4463: $21 $de $04
    ei                                            ; $4466: $fb
    pop af                                        ; $4467: $f1
    db $e3                                        ; $4468: $e3
    cp a                                          ; $4469: $bf
    ccf                                           ; $446a: $3f
    ld a, [$02fd]                                 ; $446b: $fa $fd $02
    call nc, Call_000_2fe1                        ; $446e: $d4 $e1 $2f
    ret nc                                        ; $4471: $d0

    nop                                           ; $4472: $00
    rst $38                                       ; $4473: $ff
    ld [bc], a                                    ; $4474: $02
    db $fd                                        ; $4475: $fd
    rst $38                                       ; $4476: $ff
    nop                                           ; $4477: $00
    rst $38                                       ; $4478: $ff
    ld a, [$fffa]                                 ; $4479: $fa $fa $ff
    rst $38                                       ; $447c: $ff
    db $eb                                        ; $447d: $eb
    dec bc                                        ; $447e: $0b
    ld a, [hl]                                    ; $447f: $7e
    jp nz, $bfe1                                  ; $4480: $c2 $e1 $bf

    ld b, b                                       ; $4483: $40
    nop                                           ; $4484: $00
    rst $38                                       ; $4485: $ff
    inc b                                         ; $4486: $04
    ei                                            ; $4487: $fb
    ld d, l                                       ; $4488: $55
    ldh [$7f], a                                  ; $4489: $e0 $7f
    rst $38                                       ; $448b: $ff
    rst $38                                       ; $448c: $ff
    db $e3                                        ; $448d: $e3
    rst $38                                       ; $448e: $ff
    ld e, c                                       ; $448f: $59
    rst $38                                       ; $4490: $ff
    rst $30                                       ; $4491: $f7
    adc d                                         ; $4492: $8a
    and b                                         ; $4493: $a0
    add hl, hl                                    ; $4494: $29
    rst $18                                       ; $4495: $df
    db $fd                                        ; $4496: $fd
    jp nz, $e1f6                                  ; $4497: $c2 $f6 $e1

    ld a, a                                       ; $449a: $7f
    ld a, h                                       ; $449b: $7c
    and b                                         ; $449c: $a0
    push hl                                       ; $449d: $e5
    ld a, b                                       ; $449e: $78
    and b                                         ; $449f: $a0
    ldh [$c3], a                                  ; $44a0: $e0 $c3
    push bc                                       ; $44a2: $c5
    cp l                                          ; $44a3: $bd
    dec [hl]                                      ; $44a4: $35
    ldh [$50], a                                  ; $44a5: $e0 $50
    ld sp, $d3e0                                  ; $44a7: $31 $e0 $d3
    jp $e1e4                                      ; $44aa: $c3 $e4 $e1


    xor a                                         ; $44ad: $af
    rst $38                                       ; $44ae: $ff
    ld d, l                                       ; $44af: $55
    dec d                                         ; $44b0: $15
    db $fc                                        ; $44b1: $fc
    ldh [$7b], a                                  ; $44b2: $e0 $7b
    or c                                          ; $44b4: $b1
    and b                                         ; $44b5: $a0
    ld e, l                                       ; $44b6: $5d
    ld [hl], a                                    ; $44b7: $77
    ldh [$2e], a                                  ; $44b8: $e0 $2e
    add sp, -$76                                  ; $44ba: $e8 $8a
    and e                                         ; $44bc: $a3
    ret nz                                        ; $44bd: $c0

    nop                                           ; $44be: $00
    rst $30                                       ; $44bf: $f7
    and b                                         ; $44c0: $a0
    sub $85                                       ; $44c1: $d6 $85
    ld d, l                                       ; $44c3: $55
    jp nz, Jump_000_33d5                          ; $44c4: $c2 $d5 $33

    ret nz                                        ; $44c7: $c0

    db $ed                                        ; $44c8: $ed
    inc bc                                        ; $44c9: $03
    rst $38                                       ; $44ca: $ff
    or a                                          ; $44cb: $b7
    or b                                          ; $44cc: $b0
    ld [c], a                                     ; $44cd: $e2
    ld b, l                                       ; $44ce: $45
    push bc                                       ; $44cf: $c5
    ld b, c                                       ; $44d0: $41
    pop bc                                        ; $44d1: $c1
    rla                                           ; $44d2: $17
    and b                                         ; $44d3: $a0
    xor [hl]                                      ; $44d4: $ae
    adc l                                         ; $44d5: $8d
    ld [hl], b                                    ; $44d6: $70
    ret                                           ; $44d7: $c9


    cp $e0                                        ; $44d8: $fe $e0
    db $e4                                        ; $44da: $e4
    jr nz, jr_02c_44dd                            ; $44db: $20 $00

jr_02c_44dd:
    ld b, $00                                     ; $44dd: $06 $00
    inc bc                                        ; $44df: $03
    nop                                           ; $44e0: $00
    ld [hl], b                                    ; $44e1: $70
    cp e                                          ; $44e2: $bb
    nop                                           ; $44e3: $00
    add hl, sp                                    ; $44e4: $39
    add d                                         ; $44e5: $82
    add b                                         ; $44e6: $80
    stop                                          ; $44e7: $10 $00
    inc b                                         ; $44e9: $04
    ld a, h                                       ; $44ea: $7c
    add b                                         ; $44eb: $80
    ld b, b                                       ; $44ec: $40
    cpl                                           ; $44ed: $2f
    nop                                           ; $44ee: $00
    ld c, $00                                     ; $44ef: $0e $00
    inc e                                         ; $44f1: $1c
    ld [hl], h                                    ; $44f2: $74
    add b                                         ; $44f3: $80
    ld [bc], a                                    ; $44f4: $02
    db $e4                                        ; $44f5: $e4
    ldh [$6d], a                                  ; $44f6: $e0 $6d
    add c                                         ; $44f8: $81
    ld e, a                                       ; $44f9: $5f
    stop                                          ; $44fa: $10 $00
    and l                                         ; $44fc: $a5
    nop                                           ; $44fd: $00
    ld [$8864], sp                                ; $44fe: $08 $64 $88
    ld b, b                                       ; $4501: $40
    adc d                                         ; $4502: $8a
    and b                                         ; $4503: $a0
    cp b                                          ; $4504: $b8
    call nc, $b0e1                                ; $4505: $d4 $e1 $b0
    db $e3                                        ; $4508: $e3
    db $dd                                        ; $4509: $dd
    pop bc                                        ; $450a: $c1
    nop                                           ; $450b: $00
    rst $38                                       ; $450c: $ff
    ld b, h                                       ; $450d: $44
    add $a0                                       ; $450e: $c6 $a0
    ld d, l                                       ; $4510: $55
    db $f4                                        ; $4511: $f4
    or e                                          ; $4512: $b3
    and b                                         ; $4513: $a0
    call Call_000_15c3                            ; $4514: $cd $c3 $15
    ld e, a                                       ; $4517: $5f
    add b                                         ; $4518: $80
    ld [bc], a                                    ; $4519: $02
    rrca                                          ; $451a: $0f
    ld d, b                                       ; $451b: $50
    ld bc, $2ad7                                  ; $451c: $01 $d7 $2a
    rst $38                                       ; $451f: $ff
    and b                                         ; $4520: $a0
    or e                                          ; $4521: $b3
    and b                                         ; $4522: $a0
    xor b                                         ; $4523: $a8
    xor l                                         ; $4524: $ad
    and b                                         ; $4525: $a0
    and d                                         ; $4526: $a2
    rst $38                                       ; $4527: $ff
    push hl                                       ; $4528: $e5
    ld [$a0a9], sp                                ; $4529: $08 $a9 $a0
    ld hl, $c4ba                                  ; $452c: $21 $ba $c4
    ld b, c                                       ; $452f: $41
    add b                                         ; $4530: $80
    rst $38                                       ; $4531: $ff
    adc b                                         ; $4532: $88
    rst $38                                       ; $4533: $ff
    ld a, a                                       ; $4534: $7f
    jr nz, @+$01                                  ; $4535: $20 $ff

    ld d, l                                       ; $4537: $55
    nop                                           ; $4538: $00
    add l                                         ; $4539: $85
    nop                                           ; $453a: $00
    ld [de], a                                    ; $453b: $12
    ld a, [bc]                                    ; $453c: $0a
    add b                                         ; $453d: $80
    db $fd                                        ; $453e: $fd
    ld bc, $8506                                  ; $453f: $01 $06 $85
    ld a, a                                       ; $4542: $7f
    add h                                         ; $4543: $84
    rra                                           ; $4544: $1f
    and b                                         ; $4545: $a0
    inc bc                                        ; $4546: $03
    ld d, h                                       ; $4547: $54
    rst $28                                       ; $4548: $ef
    nop                                           ; $4549: $00
    ld a, [bc]                                    ; $454a: $0a
    nop                                           ; $454b: $00
    ld hl, $e276                                  ; $454c: $21 $76 $e2
    nop                                           ; $454f: $00
    rst $38                                       ; $4550: $ff
    jr z, @+$01                                   ; $4551: $28 $ff

    rst $38                                       ; $4553: $ff
    add l                                         ; $4554: $85
    rst $38                                       ; $4555: $ff
    db $10                                        ; $4556: $10
    ld a, a                                       ; $4557: $7f
    add d                                         ; $4558: $82
    rrca                                          ; $4559: $0f
    ld d, b                                       ; $455a: $50
    ld a, $cd                                     ; $455b: $3e $cd
    add b                                         ; $455d: $80
    add l                                         ; $455e: $85
    nop                                           ; $455f: $00
    db $10                                        ; $4560: $10
    rst $38                                       ; $4561: $ff
    db $10                                        ; $4562: $10
    dec b                                         ; $4563: $05
    add b                                         ; $4564: $80
    and b                                         ; $4565: $a0
    pop hl                                        ; $4566: $e1
    ld a, a                                       ; $4567: $7f
    ld b, d                                       ; $4568: $42
    rst $38                                       ; $4569: $ff
    ld [$601f], sp                                ; $456a: $08 $1f $60
    rlca                                          ; $456d: $07
    cp b                                          ; $456e: $b8
    ld d, l                                       ; $456f: $55
    and b                                         ; $4570: $a0
    ld [hl], l                                    ; $4571: $75
    add b                                         ; $4572: $80
    inc d                                         ; $4573: $14
    ret nz                                        ; $4574: $c0

    ld d, h                                       ; $4575: $54
    jp hl                                         ; $4576: $e9


    ld h, b                                       ; $4577: $60
    ld e, a                                       ; $4578: $5f
    rst $38                                       ; $4579: $ff
    dec bc                                        ; $457a: $0b
    rst $28                                       ; $457b: $ef
    and b                                         ; $457c: $a0
    cp d                                          ; $457d: $ba
    ld e, d                                       ; $457e: $5a
    jp $8c02                                      ; $457f: $c3 $02 $8c


    ld [c], a                                     ; $4582: $e2
    ld a, [$bfff]                                 ; $4583: $fa $ff $bf
    sbc c                                         ; $4586: $99
    add b                                         ; $4587: $80
    ld a, [bc]                                    ; $4588: $0a
    ei                                            ; $4589: $fb
    nop                                           ; $458a: $00
    and c                                         ; $458b: $a1
    or b                                          ; $458c: $b0
    ldh [rTIMA], a                                ; $458d: $e0 $05
    nop                                           ; $458f: $00
    ld a, [hl+]                                   ; $4590: $2a
    nop                                           ; $4591: $00
    add a                                         ; $4592: $87
    rst $38                                       ; $4593: $ff
    nop                                           ; $4594: $00
    dec hl                                        ; $4595: $2b
    rlca                                          ; $4596: $07
    ld l, d                                       ; $4597: $6a
    rlca                                          ; $4598: $07
    cp c                                          ; $4599: $b9
    rrca                                          ; $459a: $0f
    ldh a, [rIE]                                  ; $459b: $f0 $ff
    rra                                           ; $459d: $1f
    pop hl                                        ; $459e: $e1
    rra                                           ; $459f: $1f
    xor d                                         ; $45a0: $aa
    rra                                           ; $45a1: $1f
    push hl                                       ; $45a2: $e5
    ccf                                           ; $45a3: $3f
    ret nz                                        ; $45a4: $c0

    ei                                            ; $45a5: $fb
    ld a, a                                       ; $45a6: $7f
    add l                                         ; $45a7: $85
    sub [hl]                                      ; $45a8: $96
    ret nz                                        ; $45a9: $c0

    ld a, d                                       ; $45aa: $7a
    rst $38                                       ; $45ab: $ff
    cpl                                           ; $45ac: $2f
    rst $38                                       ; $45ad: $ff
    ld d, [hl]                                    ; $45ae: $56
    adc d                                         ; $45af: $8a
    or l                                          ; $45b0: $b5
    ld h, b                                       ; $45b1: $60
    db $eb                                        ; $45b2: $eb
    or c                                          ; $45b3: $b1
    ld h, b                                       ; $45b4: $60
    ld e, e                                       ; $45b5: $5b
    ld e, d                                       ; $45b6: $5a
    jp nz, $c778                                  ; $45b7: $c2 $78 $c7

    ret nz                                        ; $45ba: $c0

    jp $ba0a                                      ; $45bb: $c3 $0a $ba


    ld l, b                                       ; $45be: $68
    ld h, d                                       ; $45bf: $62
    ld [bc], a                                    ; $45c0: $02
    db $fc                                        ; $45c1: $fc
    ret nz                                        ; $45c2: $c0

    ld [bc], a                                    ; $45c3: $02
    nop                                           ; $45c4: $00
    ld d, $3f                                     ; $45c5: $16 $3f
    add b                                         ; $45c7: $80
    rra                                           ; $45c8: $1f
    rst $38                                       ; $45c9: $ff
    ld bc, $01ae                                  ; $45ca: $01 $ae $01
    ld e, d                                       ; $45cd: $5a
    ld bc, $03ae                                  ; $45ce: $01 $ae $03
    ld a, h                                       ; $45d1: $7c
    cp a                                          ; $45d2: $bf
    rlca                                          ; $45d3: $07
    cp b                                          ; $45d4: $b8
    ld a, a                                       ; $45d5: $7f
    xor d                                         ; $45d6: $aa
    ld a, a                                       ; $45d7: $7f
    sub a                                         ; $45d8: $97
    sub d                                         ; $45d9: $92
    ldh [$15], a                                  ; $45da: $e0 $15
    ld c, a                                       ; $45dc: $4f
    rst $38                                       ; $45dd: $ff
    xor e                                         ; $45de: $ab
    rst $38                                       ; $45df: $ff
    ld e, [hl]                                    ; $45e0: $5e
    add b                                         ; $45e1: $80
    ldh [$cb], a                                  ; $45e2: $e0 $cb
    add c                                         ; $45e4: $81
    xor l                                         ; $45e5: $ad
    and b                                         ; $45e6: $a0
    ld h, b                                       ; $45e7: $60
    ld sp, $9c6f                                  ; $45e8: $31 $6f $9c
    ld h, b                                       ; $45eb: $60
    ld [hl], b                                    ; $45ec: $70
    jp nz, Jump_02c_6b2e                          ; $45ed: $c2 $2e $6b

    inc bc                                        ; $45f0: $03
    inc bc                                        ; $45f1: $03
    nop                                           ; $45f2: $00
    nop                                           ; $45f3: $00
    nop                                           ; $45f4: $00
    cp l                                          ; $45f5: $bd
    inc l                                         ; $45f6: $2c
    rst $38                                       ; $45f7: $ff
    push hl                                       ; $45f8: $e5
    cpl                                           ; $45f9: $2f
    jr nc, jr_02c_462c                            ; $45fa: $30 $30

    cpl                                           ; $45fc: $2f
    di                                            ; $45fd: $f3
    db $e4                                        ; $45fe: $e4
    ld d, e                                       ; $45ff: $53
    db $f4                                        ; $4600: $f4
    rst $38                                       ; $4601: $ff
    rst $38                                       ; $4602: $ff
    rst $20                                       ; $4603: $e7
    and $2d                                       ; $4604: $e6 $2d
    rst $38                                       ; $4606: $ff
    push hl                                       ; $4607: $e5
    ld sp, $3232                                  ; $4608: $31 $32 $32
    ld sp, $f3e8                                  ; $460b: $31 $e8 $f3
    db $e4                                        ; $460e: $e4
    jp z, $e8ff                                   ; $460f: $ca $ff $e8

    rst $20                                       ; $4612: $e7
    ld l, $ff                                     ; $4613: $2e $ff
    push hl                                       ; $4615: $e5
    inc sp                                        ; $4616: $33
    inc [hl]                                      ; $4617: $34
    inc [hl]                                      ; $4618: $34
    pop af                                        ; $4619: $f1
    inc sp                                        ; $461a: $33
    di                                            ; $461b: $f3
    db $e4                                        ; $461c: $e4
    jp z, $e8ff                                   ; $461d: $ca $ff $e8

    rst $20                                       ; $4620: $e7
    ld [hl], $35                                  ; $4621: $36 $35
    dec [hl]                                      ; $4623: $35
    ld [hl], $5e                                  ; $4624: $36 $5e
    db $fc                                        ; $4626: $fc
    ld [c], a                                     ; $4627: $e2
    scf                                           ; $4628: $37
    jr c, jr_02c_4663                             ; $4629: $38 $38

    scf                                           ; $462b: $37

jr_02c_462c:
    or $e3                                        ; $462c: $f6 $e3
    dec [hl]                                      ; $462e: $35
    jp z, $deff                                   ; $462f: $ca $ff $de

    add sp, -$19                                  ; $4632: $e8 $e7
    ld a, [hl-]                                   ; $4634: $3a
    add hl, sp                                    ; $4635: $39
    add hl, sp                                    ; $4636: $39
    ld a, [hl-]                                   ; $4637: $3a
    db $fc                                        ; $4638: $fc
    pop hl                                        ; $4639: $e1
    dec sp                                        ; $463a: $3b
    inc a                                         ; $463b: $3c
    adc a                                         ; $463c: $8f
    dec a                                         ; $463d: $3d
    dec a                                         ; $463e: $3d
    inc a                                         ; $463f: $3c
    dec sp                                        ; $4640: $3b
    ld a, [c]                                     ; $4641: $f2
    db $e3                                        ; $4642: $e3
    jp z, $e8ff                                   ; $4643: $ca $ff $e8

    rst $20                                       ; $4646: $e7
    ccf                                           ; $4647: $3f
    rst $30                                       ; $4648: $f7
    ld a, $3e                                     ; $4649: $3e $3e
    ccf                                           ; $464b: $3f
    db $fc                                        ; $464c: $fc
    pop hl                                        ; $464d: $e1
    ld b, b                                       ; $464e: $40
    ld b, c                                       ; $464f: $41
    ld b, d                                       ; $4650: $42
    ld b, d                                       ; $4651: $42
    db $e3                                        ; $4652: $e3
    ld b, c                                       ; $4653: $41
    ld b, b                                       ; $4654: $40
    ld a, [c]                                     ; $4655: $f2
    db $e3                                        ; $4656: $e3
    jp z, $e8ff                                   ; $4657: $ca $ff $e8

    rst $20                                       ; $465a: $e7
    ld b, h                                       ; $465b: $44
    ld b, e                                       ; $465c: $43
    ld b, e                                       ; $465d: $43
    db $fd                                        ; $465e: $fd
    ld b, h                                       ; $465f: $44
    db $fc                                        ; $4660: $fc
    pop hl                                        ; $4661: $e1
    ld b, l                                       ; $4662: $45

jr_02c_4663:
    ld b, [hl]                                    ; $4663: $46
    ld b, a                                       ; $4664: $47
    ld b, a                                       ; $4665: $47
    ld b, [hl]                                    ; $4666: $46
    ld b, l                                       ; $4667: $45
    add sp, -$0e                                  ; $4668: $e8 $f2
    db $e3                                        ; $466a: $e3
    jp z, $e8ff                                   ; $466b: $ca $ff $e8

    rst $20                                       ; $466e: $e7
    ld e, c                                       ; $466f: $59
    rst $38                                       ; $4670: $ff
    pop hl                                        ; $4671: $e1
    ld e, d                                       ; $4672: $5a
    ld e, e                                       ; $4673: $5b
    ld e, h                                       ; $4674: $5c
    rst $38                                       ; $4675: $ff
    ld c, b                                       ; $4676: $48
    ld c, c                                       ; $4677: $49
    ld c, d                                       ; $4678: $4a
    ld c, d                                       ; $4679: $4a
    ld c, c                                       ; $467a: $49
    ld c, b                                       ; $467b: $48
    ld e, h                                       ; $467c: $5c
    ld e, e                                       ; $467d: $5b
    pop af                                        ; $467e: $f1
    ld e, d                                       ; $467f: $5a
    rst $28                                       ; $4680: $ef
    ldh [$ca], a                                  ; $4681: $e0 $ca
    rst $38                                       ; $4683: $ff
    add sp, -$19                                  ; $4684: $e8 $e7
    dec b                                         ; $4686: $05
    db $10                                        ; $4687: $10
    ld de, $ff00                                  ; $4688: $11 $00 $ff
    ld bc, $5e5d                                  ; $468b: $01 $5d $5e
    ld e, a                                       ; $468e: $5f
    ld h, b                                       ; $468f: $60
    ld h, c                                       ; $4690: $61
    ld h, d                                       ; $4691: $62
    ld h, d                                       ; $4692: $62
    rst $38                                       ; $4693: $ff
    ld h, c                                       ; $4694: $61
    ld h, b                                       ; $4695: $60
    ld e, a                                       ; $4696: $5f
    ld e, [hl]                                    ; $4697: $5e
    ld e, l                                       ; $4698: $5d
    inc c                                         ; $4699: $0c
    dec c                                         ; $469a: $0d
    add hl, bc                                    ; $469b: $09
    db $fc                                        ; $469c: $fc
    jp z, $e8ff                                   ; $469d: $ca $ff $e8

    rst $20                                       ; $46a0: $e7
    rlca                                          ; $46a1: $07
    ld [de], a                                    ; $46a2: $12
    inc de                                        ; $46a3: $13
    ld [bc], a                                    ; $46a4: $02
    inc bc                                        ; $46a5: $03
    ld d, l                                       ; $46a6: $55
    rst $38                                       ; $46a7: $ff
    ld d, [hl]                                    ; $46a8: $56
    ld h, e                                       ; $46a9: $63
    ld h, h                                       ; $46aa: $64
    ld h, l                                       ; $46ab: $65
    ld d, h                                       ; $46ac: $54
    ld d, h                                       ; $46ad: $54
    ld h, l                                       ; $46ae: $65
    ld h, h                                       ; $46af: $64
    ccf                                           ; $46b0: $3f
    ld h, e                                       ; $46b1: $63
    ld d, l                                       ; $46b2: $55
    ld d, [hl]                                    ; $46b3: $56
    ld c, $0f                                     ; $46b4: $0e $0f
    dec bc                                        ; $46b6: $0b
    jp z, $e8ff                                   ; $46b7: $ca $ff $e8

    rst $20                                       ; $46ba: $e7
    rst $38                                       ; $46bb: $ff
    inc b                                         ; $46bc: $04
    dec b                                         ; $46bd: $05
    ld c, a                                       ; $46be: $4f
    ld d, b                                       ; $46bf: $50
    ld c, a                                       ; $46c0: $4f
    ld d, b                                       ; $46c1: $50
    ld h, a                                       ; $46c2: $67
    ld l, b                                       ; $46c3: $68
    rst $38                                       ; $46c4: $ff
    ld l, c                                       ; $46c5: $69
    ld l, d                                       ; $46c6: $6a
    jr nz, jr_02c_46ea                            ; $46c7: $20 $21

    ld l, d                                       ; $46c9: $6a
    ld l, c                                       ; $46ca: $69
    ld l, b                                       ; $46cb: $68
    ld h, a                                       ; $46cc: $67
    rst $38                                       ; $46cd: $ff
    ld d, e                                       ; $46ce: $53
    ld e, b                                       ; $46cf: $58
    ld c, a                                       ; $46d0: $4f
    ld d, b                                       ; $46d1: $50
    ld d, e                                       ; $46d2: $53
    ld d, e                                       ; $46d3: $53
    jr nz, jr_02c_46f7                            ; $46d4: $20 $21

    db $fc                                        ; $46d6: $fc
    db $fd                                        ; $46d7: $fd
    pop hl                                        ; $46d8: $e1
    rst $38                                       ; $46d9: $ff
    rst $38                                       ; $46da: $ff
    ld d, e                                       ; $46db: $53
    ld d, e                                       ; $46dc: $53
    ld b, $07                                     ; $46dd: $06 $07
    ld d, [hl]                                    ; $46df: $56
    ld d, l                                       ; $46e0: $55
    ld a, e                                       ; $46e1: $7b
    ld d, e                                       ; $46e2: $53
    ld d, a                                       ; $46e3: $57
    add c                                         ; $46e4: $81
    ldh [$66], a                                  ; $46e5: $e0 $66
    ld [hl+], a                                   ; $46e7: $22
    inc hl                                        ; $46e8: $23
    ld h, [hl]                                    ; $46e9: $66

jr_02c_46ea:
    ld a, a                                       ; $46ea: $7f
    ldh [$fb], a                                  ; $46eb: $e0 $fb
    ld d, a                                       ; $46ed: $57
    ld d, e                                       ; $46ee: $53
    ldh a, [$e0]                                  ; $46ef: $f0 $e0
    ld d, e                                       ; $46f1: $53
    inc h                                         ; $46f2: $24
    dec h                                         ; $46f3: $25
    ld d, e                                       ; $46f4: $53
    ld h, $a9                                     ; $46f5: $26 $a9

jr_02c_46f7:
    daa                                           ; $46f7: $27
    jp $e1ff                                      ; $46f8: $c3 $ff $e1


    ldh [$0c], a                                  ; $46fb: $e0 $0c
    sub c                                         ; $46fd: $91
    ldh [$58], a                                  ; $46fe: $e0 $58
    add c                                         ; $4700: $81
    pop hl                                        ; $4701: $e1
    ld d, h                                       ; $4702: $54
    ld [hl], a                                    ; $4703: $77
    ld d, d                                       ; $4704: $52
    ld d, d                                       ; $4705: $52
    ld d, h                                       ; $4706: $54
    ld a, a                                       ; $4707: $7f
    pop hl                                        ; $4708: $e1
    ld d, l                                       ; $4709: $55
    ld d, [hl]                                    ; $470a: $56
    ld bc, $ffca                                  ; $470b: $01 $ca $ff
    xor $e8                                       ; $470e: $ee $e8
    rst $20                                       ; $4710: $e7
    ld c, $57                                     ; $4711: $0e $57
    ld d, e                                       ; $4713: $53
    ld [bc], a                                    ; $4714: $02
    ld [c], a                                     ; $4715: $e2
    ld h, [hl]                                    ; $4716: $66
    ld c, l                                       ; $4717: $4d
    ld c, [hl]                                    ; $4718: $4e
    dec sp                                        ; $4719: $3b
    ld c, e                                       ; $471a: $4b
    ld c, h                                       ; $471b: $4c
    ld a, a                                       ; $471c: $7f
    pop hl                                        ; $471d: $e1
    ld d, e                                       ; $471e: $53
    ld d, a                                       ; $471f: $57
    inc bc                                        ; $4720: $03
    jp z, $e8ff                                   ; $4721: $ca $ff $e8

    rst $20                                       ; $4724: $e7
    rst $28                                       ; $4725: $ef
    ld [$5809], sp                                ; $4726: $08 $09 $58
    ld d, e                                       ; $4729: $53
    ld [bc], a                                    ; $472a: $02
    pop hl                                        ; $472b: $e1
    jr z, @+$2b                                   ; $472c: $28 $29

    ld d, h                                       ; $472e: $54
    sub a                                         ; $472f: $97
    ld d, h                                       ; $4730: $54
    ld c, l                                       ; $4731: $4d
    ld c, [hl]                                    ; $4732: $4e
    cp $c1                                        ; $4733: $fe $c1
    ld e, b                                       ; $4735: $58
    set 7, a                                      ; $4736: $cb $ff
    jp hl                                         ; $4738: $e9


    add sp, $0a                                   ; $4739: $e8 $0a
    db $fd                                        ; $473b: $fd
    dec bc                                        ; $473c: $0b
    ld [bc], a                                    ; $473d: $02
    db $e3                                        ; $473e: $e3
    ld a, [hl+]                                   ; $473f: $2a
    dec hl                                        ; $4740: $2b
    ld c, e                                       ; $4741: $4b
    ld c, h                                       ; $4742: $4c
    ld d, h                                       ; $4743: $54
    ld d, h                                       ; $4744: $54
    add b                                         ; $4745: $80
    cp $c1                                        ; $4746: $fe $c1
    nop                                           ; $4748: $00
    pop hl                                        ; $4749: $e1
    rst $38                                       ; $474a: $ff
    rst $38                                       ; $474b: $ff

Call_02c_474c:
    nop                                           ; $474c: $00
    add sp, $02                                   ; $474d: $e8 $02
    push hl                                       ; $474f: $e5
    ld a, $e1                                     ; $4750: $3e $e1
    ld a, l                                       ; $4752: $7d
    pop bc                                        ; $4753: $c1
    ld d, a                                       ; $4754: $57
    call z, $ffca                                 ; $4755: $cc $ca $ff
    nop                                           ; $4758: $00
    add sp, $56                                   ; $4759: $e8 $56
    ld d, l                                       ; $475b: $55
    add e                                         ; $475c: $83
    pop bc                                        ; $475d: $c1
    add e                                         ; $475e: $83
    ldh [rKEY1], a                                ; $475f: $e0 $4d
    ld c, [hl]                                    ; $4761: $4e
    ld bc, $7f54                                  ; $4762: $01 $54 $7f
    db $e3                                        ; $4765: $e3
    set 7, a                                      ; $4766: $cb $ff
    rst $38                                       ; $4768: $ff
    rst $38                                       ; $4769: $ff
    rst $38                                       ; $476a: $ff
    rst $38                                       ; $476b: $ff
    rst $38                                       ; $476c: $ff
    rst $38                                       ; $476d: $ff
    rst $38                                       ; $476e: $ff
    rst $38                                       ; $476f: $ff
    rst $38                                       ; $4770: $ff
    rst $38                                       ; $4771: $ff
    nop                                           ; $4772: $00
    rst $38                                       ; $4773: $ff
    rst $38                                       ; $4774: $ff
    rst $38                                       ; $4775: $ff
    rst $38                                       ; $4776: $ff
    rst $38                                       ; $4777: $ff
    rst $38                                       ; $4778: $ff
    rst $38                                       ; $4779: $ff
    rst $38                                       ; $477a: $ff
    rst $38                                       ; $477b: $ff
    rst $38                                       ; $477c: $ff
    rst $38                                       ; $477d: $ff
    rst $38                                       ; $477e: $ff
    rst $38                                       ; $477f: $ff
    rst $38                                       ; $4780: $ff
    rst $38                                       ; $4781: $ff
    rst $38                                       ; $4782: $ff
    nop                                           ; $4783: $00
    rst $38                                       ; $4784: $ff
    rst $38                                       ; $4785: $ff
    rst $38                                       ; $4786: $ff
    rst $38                                       ; $4787: $ff
    rst $38                                       ; $4788: $ff
    rst $38                                       ; $4789: $ff
    rst $38                                       ; $478a: $ff
    rst $38                                       ; $478b: $ff
    rst $38                                       ; $478c: $ff
    rst $38                                       ; $478d: $ff
    rst $38                                       ; $478e: $ff
    rst $38                                       ; $478f: $ff
    rst $38                                       ; $4790: $ff
    rst $38                                       ; $4791: $ff
    rst $38                                       ; $4792: $ff
    rst $38                                       ; $4793: $ff
    nop                                           ; $4794: $00
    rst $38                                       ; $4795: $ff
    rst $38                                       ; $4796: $ff
    rst $38                                       ; $4797: $ff
    rst $38                                       ; $4798: $ff
    rst $38                                       ; $4799: $ff
    rst $38                                       ; $479a: $ff
    rst $38                                       ; $479b: $ff
    rst $38                                       ; $479c: $ff
    rst $38                                       ; $479d: $ff
    rst $38                                       ; $479e: $ff
    rst $38                                       ; $479f: $ff
    rst $38                                       ; $47a0: $ff
    rst $38                                       ; $47a1: $ff
    rst $38                                       ; $47a2: $ff
    rst $38                                       ; $47a3: $ff
    rst $38                                       ; $47a4: $ff
    nop                                           ; $47a5: $00
    rst $38                                       ; $47a6: $ff
    rst $38                                       ; $47a7: $ff
    rst $38                                       ; $47a8: $ff
    rst $38                                       ; $47a9: $ff
    rst $38                                       ; $47aa: $ff
    rst $38                                       ; $47ab: $ff
    rst $38                                       ; $47ac: $ff
    rst $38                                       ; $47ad: $ff
    rst $38                                       ; $47ae: $ff
    rst $38                                       ; $47af: $ff
    rst $38                                       ; $47b0: $ff
    rst $38                                       ; $47b1: $ff
    rst $38                                       ; $47b2: $ff
    rst $38                                       ; $47b3: $ff
    rst $38                                       ; $47b4: $ff
    rst $38                                       ; $47b5: $ff
    nop                                           ; $47b6: $00
    rst $38                                       ; $47b7: $ff
    rst $38                                       ; $47b8: $ff
    rst $38                                       ; $47b9: $ff
    rst $38                                       ; $47ba: $ff
    rst $38                                       ; $47bb: $ff
    rst $38                                       ; $47bc: $ff
    rst $38                                       ; $47bd: $ff
    rst $38                                       ; $47be: $ff
    rst $38                                       ; $47bf: $ff
    rst $38                                       ; $47c0: $ff
    rst $38                                       ; $47c1: $ff
    rst $38                                       ; $47c2: $ff
    rst $38                                       ; $47c3: $ff
    rst $38                                       ; $47c4: $ff
    rst $38                                       ; $47c5: $ff
    rst $38                                       ; $47c6: $ff
    nop                                           ; $47c7: $00
    rst $38                                       ; $47c8: $ff
    rst $38                                       ; $47c9: $ff
    rst $38                                       ; $47ca: $ff
    rst $38                                       ; $47cb: $ff
    rst $38                                       ; $47cc: $ff
    rst $38                                       ; $47cd: $ff
    rst $38                                       ; $47ce: $ff
    rst $38                                       ; $47cf: $ff
    rst $38                                       ; $47d0: $ff
    rst $38                                       ; $47d1: $ff
    rst $38                                       ; $47d2: $ff
    rst $38                                       ; $47d3: $ff
    rst $38                                       ; $47d4: $ff
    rst $38                                       ; $47d5: $ff
    rst $38                                       ; $47d6: $ff
    rst $38                                       ; $47d7: $ff
    nop                                           ; $47d8: $00
    rst $38                                       ; $47d9: $ff
    rst $38                                       ; $47da: $ff
    rst $38                                       ; $47db: $ff
    rst $38                                       ; $47dc: $ff
    rst $38                                       ; $47dd: $ff
    rst $38                                       ; $47de: $ff
    rst $38                                       ; $47df: $ff
    rst $38                                       ; $47e0: $ff
    rst $38                                       ; $47e1: $ff
    rst $38                                       ; $47e2: $ff
    rst $38                                       ; $47e3: $ff
    rst $38                                       ; $47e4: $ff
    rst $38                                       ; $47e5: $ff
    rst $38                                       ; $47e6: $ff
    rst $38                                       ; $47e7: $ff
    rst $38                                       ; $47e8: $ff
    nop                                           ; $47e9: $00
    rst $38                                       ; $47ea: $ff
    rst $38                                       ; $47eb: $ff
    rst $38                                       ; $47ec: $ff
    rst $38                                       ; $47ed: $ff
    rst $38                                       ; $47ee: $ff
    rst $38                                       ; $47ef: $ff
    rst $38                                       ; $47f0: $ff
    rst $38                                       ; $47f1: $ff
    rst $38                                       ; $47f2: $ff
    rst $38                                       ; $47f3: $ff

jr_02c_47f4:
    rst $38                                       ; $47f4: $ff
    rst $38                                       ; $47f5: $ff
    rst $38                                       ; $47f6: $ff
    rst $38                                       ; $47f7: $ff
    rst $38                                       ; $47f8: $ff
    rst $38                                       ; $47f9: $ff
    nop                                           ; $47fa: $00
    rst $38                                       ; $47fb: $ff
    rst $38                                       ; $47fc: $ff
    rst $38                                       ; $47fd: $ff
    rst $38                                       ; $47fe: $ff
    rst $38                                       ; $47ff: $ff
    rst $38                                       ; $4800: $ff
    rst $38                                       ; $4801: $ff
    rst $38                                       ; $4802: $ff
    rst $38                                       ; $4803: $ff
    rst $38                                       ; $4804: $ff
    rst $38                                       ; $4805: $ff
    rst $38                                       ; $4806: $ff
    rst $38                                       ; $4807: $ff
    rst $38                                       ; $4808: $ff
    rst $38                                       ; $4809: $ff
    rst $38                                       ; $480a: $ff
    nop                                           ; $480b: $00
    rst $38                                       ; $480c: $ff
    rst $38                                       ; $480d: $ff
    rst $38                                       ; $480e: $ff
    rst $38                                       ; $480f: $ff
    rst $38                                       ; $4810: $ff
    rst $38                                       ; $4811: $ff
    rst $38                                       ; $4812: $ff
    rst $38                                       ; $4813: $ff
    rst $38                                       ; $4814: $ff
    rst $38                                       ; $4815: $ff
    rst $38                                       ; $4816: $ff
    rst $38                                       ; $4817: $ff
    rst $38                                       ; $4818: $ff
    rst $38                                       ; $4819: $ff
    rst $38                                       ; $481a: $ff
    rst $38                                       ; $481b: $ff
    nop                                           ; $481c: $00
    rst $38                                       ; $481d: $ff
    rst $38                                       ; $481e: $ff
    rst $38                                       ; $481f: $ff
    db $fc                                        ; $4820: $fc
    nop                                           ; $4821: $00
    nop                                           ; $4822: $00
    nop                                           ; $4823: $00
    dec d                                         ; $4824: $15
    ld a, [bc]                                    ; $4825: $0a
    rst $38                                       ; $4826: $ff
    rst $20                                       ; $4827: $e7
    ld a, [hl+]                                   ; $4828: $2a
    rst $38                                       ; $4829: $ff
    push hl                                       ; $482a: $e5
    ld [$ffff], sp                                ; $482b: $08 $ff $ff
    rst $20                                       ; $482e: $e7
    and $c0                                       ; $482f: $e6 $c0
    rst $38                                       ; $4831: $ff
    jr jr_02c_47f4                                ; $4832: $18 $c0

    rst $38                                       ; $4834: $ff
    ret nz                                        ; $4835: $c0

    rst $38                                       ; $4836: $ff
    ld hl, sp-$09                                 ; $4837: $f8 $f7
    ld a, [hl+]                                   ; $4839: $2a
    ld a, [hl+]                                   ; $483a: $2a
    rst $00                                       ; $483b: $c7
    pop hl                                        ; $483c: $e1
    ret nz                                        ; $483d: $c0

    rst $20                                       ; $483e: $e7
    cp c                                          ; $483f: $b9
    pop hl                                        ; $4840: $e1
    add b                                         ; $4841: $80
    jp z, $c0ff                                   ; $4842: $ca $ff $c0

    rst $38                                       ; $4845: $ff
    rst $38                                       ; $4846: $ff
    rst $38                                       ; $4847: $ff
    ret nz                                        ; $4848: $c0

    rst $38                                       ; $4849: $ff
    rst $38                                       ; $484a: $ff
    rst $38                                       ; $484b: $ff
    ret nz                                        ; $484c: $c0

    rst $38                                       ; $484d: $ff
    cp $fd                                        ; $484e: $fe $fd
    dec bc                                        ; $4850: $0b
    cp $ff                                        ; $4851: $fe $ff
    db $e4                                        ; $4853: $e4
    inc c                                         ; $4854: $0c
    inc c                                         ; $4855: $0c
    inc c                                         ; $4856: $0c
    inc l                                         ; $4857: $2c
    inc l                                         ; $4858: $2c
    inc l                                         ; $4859: $2c
    dec hl                                        ; $485a: $2b
    ld hl, sp-$01                                 ; $485b: $f8 $ff
    ld [c], a                                     ; $485d: $e2
    jp z, $e8ff                                   ; $485e: $ca $ff $e8

    rst $20                                       ; $4861: $e7
    dec c                                         ; $4862: $0d
    ld c, $0e                                     ; $4863: $0e $0e
    dec c                                         ; $4865: $0d
    dec c                                         ; $4866: $0d

jr_02c_4867:
    inc e                                         ; $4867: $1c
    cp e                                          ; $4868: $bb
    db $e3                                        ; $4869: $e3
    jp Jump_000_0ee3                              ; $486a: $c3 $e3 $0e


Jump_02c_486d:
    ld c, $2d                                     ; $486d: $0e $2d
    jp z, $c0ff                                   ; $486f: $ca $ff $c0

    ld a, [c]                                     ; $4872: $f2
    cp a                                          ; $4873: $bf
    pop hl                                        ; $4874: $e1
    db $e3                                        ; $4875: $e3
    dec bc                                        ; $4876: $0b
    dec bc                                        ; $4877: $0b
    ret nz                                        ; $4878: $c0

    rst $38                                       ; $4879: $ff
    add b                                         ; $487a: $80
    db $eb                                        ; $487b: $eb
    jp Jump_000_0be5                              ; $487c: $c3 $e5 $0b


    ld a, [bc]                                    ; $487f: $0a
    ld a, [bc]                                    ; $4880: $0a
    nop                                           ; $4881: $00
    ld b, d                                       ; $4882: $42
    pop hl                                        ; $4883: $e1
    jr nc, jr_02c_4867                            ; $4884: $30 $e1

    ld [$fda1], a                                 ; $4886: $ea $a1 $fd
    pop hl                                        ; $4889: $e1
    rst $38                                       ; $488a: $ff
    rst $38                                       ; $488b: $ff
    ret nz                                        ; $488c: $c0

    pop hl                                        ; $488d: $e1
    adc e                                         ; $488e: $8b
    ldh [$ca], a                                  ; $488f: $e0 $ca
    ld [c], a                                     ; $4891: $e2
    db $10                                        ; $4892: $10
    ret nz                                        ; $4893: $c0

    push hl                                       ; $4894: $e5
    nop                                           ; $4895: $00
    pop hl                                        ; $4896: $e1
    ret nz                                        ; $4897: $c0

    rst $38                                       ; $4898: $ff
    and $e5                                       ; $4899: $e6 $e5
    ld l, $bf                                     ; $489b: $2e $bf
    push bc                                       ; $489d: $c5
    ld bc, $fee0                                  ; $489e: $01 $e0 $fe
    jp nz, $0b83                                  ; $48a1: $c2 $83 $0b

    dec bc                                        ; $48a4: $0b
    ld b, b                                       ; $48a5: $40
    rst $38                                       ; $48a6: $ff
    ret nz                                        ; $48a7: $c0

    ld a, [c]                                     ; $48a8: $f2
    cp [hl]                                       ; $48a9: $be
    add $c0                                       ; $48aa: $c6 $c0
    rst $38                                       ; $48ac: $ff
    nop                                           ; $48ad: $00
    ldh a, [$0a]                                  ; $48ae: $f0 $0a
    ld bc, $7d0a                                  ; $48b0: $01 $0a $7d
    push bc                                       ; $48b3: $c5
    nop                                           ; $48b4: $00
    pop hl                                        ; $48b5: $e1
    rst $38                                       ; $48b6: $ff
    rst $38                                       ; $48b7: $ff
    ret nz                                        ; $48b8: $c0

    ret z                                         ; $48b9: $c8

    ld [bc], a                                    ; $48ba: $02
    db $e4                                        ; $48bb: $e4
    dec a                                         ; $48bc: $3d
    rst $00                                       ; $48bd: $c7
    jp z, Jump_000_00ff                           ; $48be: $ca $ff $00

    ld b, b                                       ; $48c1: $40
    db $f4                                        ; $48c2: $f4
    ld a, a                                       ; $48c3: $7f
    db $e4                                        ; $48c4: $e4
    jp z, $c0ff                                   ; $48c5: $ca $ff $c0

    ret z                                         ; $48c8: $c8

    ld c, l                                       ; $48c9: $4d
    jp $ffc0                                      ; $48ca: $c3 $c0 $ff


    rst $38                                       ; $48cd: $ff
    rst $38                                       ; $48ce: $ff
    rst $38                                       ; $48cf: $ff
    rst $38                                       ; $48d0: $ff
    nop                                           ; $48d1: $00
    rst $38                                       ; $48d2: $ff
    rst $38                                       ; $48d3: $ff
    rst $38                                       ; $48d4: $ff
    rst $38                                       ; $48d5: $ff
    rst $38                                       ; $48d6: $ff
    rst $38                                       ; $48d7: $ff
    rst $38                                       ; $48d8: $ff
    rst $38                                       ; $48d9: $ff
    rst $38                                       ; $48da: $ff
    rst $38                                       ; $48db: $ff
    rst $38                                       ; $48dc: $ff
    rst $38                                       ; $48dd: $ff
    rst $38                                       ; $48de: $ff
    rst $38                                       ; $48df: $ff
    rst $38                                       ; $48e0: $ff
    rst $38                                       ; $48e1: $ff
    nop                                           ; $48e2: $00
    rst $38                                       ; $48e3: $ff
    rst $38                                       ; $48e4: $ff
    rst $38                                       ; $48e5: $ff
    rst $38                                       ; $48e6: $ff
    rst $38                                       ; $48e7: $ff
    rst $38                                       ; $48e8: $ff
    rst $38                                       ; $48e9: $ff
    rst $38                                       ; $48ea: $ff
    rst $38                                       ; $48eb: $ff
    rst $38                                       ; $48ec: $ff
    rst $38                                       ; $48ed: $ff
    rst $38                                       ; $48ee: $ff
    rst $38                                       ; $48ef: $ff
    rst $38                                       ; $48f0: $ff
    rst $38                                       ; $48f1: $ff
    rst $38                                       ; $48f2: $ff
    nop                                           ; $48f3: $00
    rst $38                                       ; $48f4: $ff
    rst $38                                       ; $48f5: $ff
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
    nop                                           ; $4904: $00
    rst $38                                       ; $4905: $ff
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
    nop                                           ; $4915: $00
    rst $38                                       ; $4916: $ff
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
    nop                                           ; $4926: $00
    rst $38                                       ; $4927: $ff
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
    nop                                           ; $4937: $00
    rst $38                                       ; $4938: $ff
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
    nop                                           ; $4948: $00
    rst $38                                       ; $4949: $ff
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
    nop                                           ; $4959: $00
    rst $38                                       ; $495a: $ff
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
    nop                                           ; $496a: $00
    rst $38                                       ; $496b: $ff
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
    nop                                           ; $497b: $00
    rst $38                                       ; $497c: $ff
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
    and $00                                       ; $4987: $e6 $00
    nop                                           ; $4989: $00
    nop                                           ; $498a: $00
    dec b                                         ; $498b: $05
    rrca                                          ; $498c: $0f
    rst $38                                       ; $498d: $ff
    and $00                                       ; $498e: $e6 $00
    rst $38                                       ; $4990: $ff
    ld a, [c]                                     ; $4991: $f2
    ldh [rIE], a                                  ; $4992: $e0 $ff
    ldh [$fb], a                                  ; $4994: $e0 $fb
    cp $fd                                        ; $4996: $fe $fd
    and [hl]                                      ; $4998: $a6
    db $e4                                        ; $4999: $e4
    nop                                           ; $499a: $00
    and b                                         ; $499b: $a0
    ld a, [$ffe0]                                 ; $499c: $fa $e0 $ff
    ldh [$fc], a                                  ; $499f: $e0 $fc
    ld b, b                                       ; $49a1: $40
    rst $38                                       ; $49a2: $ff
    ld b, b                                       ; $49a3: $40
    rst $38                                       ; $49a4: $ff
    rst $38                                       ; $49a5: $ff
    rst $38                                       ; $49a6: $ff
    rst $38                                       ; $49a7: $ff
    rst $38                                       ; $49a8: $ff
    rst $38                                       ; $49a9: $ff
    rst $38                                       ; $49aa: $ff
    nop                                           ; $49ab: $00
    rst $38                                       ; $49ac: $ff
    rst $38                                       ; $49ad: $ff
    rst $38                                       ; $49ae: $ff
    rst $38                                       ; $49af: $ff
    rst $38                                       ; $49b0: $ff
    rst $38                                       ; $49b1: $ff
    rst $38                                       ; $49b2: $ff
    rst $38                                       ; $49b3: $ff
    rst $38                                       ; $49b4: $ff
    rst $38                                       ; $49b5: $ff
    rst $38                                       ; $49b6: $ff
    rst $38                                       ; $49b7: $ff
    rst $38                                       ; $49b8: $ff
    rst $38                                       ; $49b9: $ff
    rst $38                                       ; $49ba: $ff
    rst $38                                       ; $49bb: $ff
    nop                                           ; $49bc: $00
    rst $38                                       ; $49bd: $ff
    rst $38                                       ; $49be: $ff
    rst $38                                       ; $49bf: $ff
    rst $38                                       ; $49c0: $ff
    rst $38                                       ; $49c1: $ff
    rst $38                                       ; $49c2: $ff
    rst $38                                       ; $49c3: $ff
    rst $38                                       ; $49c4: $ff
    rst $38                                       ; $49c5: $ff
    rst $38                                       ; $49c6: $ff
    rst $38                                       ; $49c7: $ff
    rst $38                                       ; $49c8: $ff
    rst $38                                       ; $49c9: $ff
    rst $38                                       ; $49ca: $ff
    rst $38                                       ; $49cb: $ff
    rst $38                                       ; $49cc: $ff
    nop                                           ; $49cd: $00
    rst $38                                       ; $49ce: $ff
    rst $38                                       ; $49cf: $ff
    rst $38                                       ; $49d0: $ff
    rst $38                                       ; $49d1: $ff
    rst $38                                       ; $49d2: $ff
    ld [$0000], a                                 ; $49d3: $ea $00 $00
    nop                                           ; $49d6: $00
    ld d, c                                       ; $49d7: $51
    nop                                           ; $49d8: $00
    rst $38                                       ; $49d9: $ff
    rst $38                                       ; $49da: $ff
    rst $38                                       ; $49db: $ff
    rst $38                                       ; $49dc: $ff
    ld sp, hl                                     ; $49dd: $f9
    ld hl, sp+$11                                 ; $49de: $f8 $11
    db $dd                                        ; $49e0: $dd
    push hl                                       ; $49e1: $e5
    ld hl, $ffd4                                  ; $49e2: $21 $d4 $ff
    nop                                           ; $49e5: $00
    rst $38                                       ; $49e6: $ff
    rst $38                                       ; $49e7: $ff
    rst $38                                       ; $49e8: $ff
    rst $38                                       ; $49e9: $ff
    rst $38                                       ; $49ea: $ff
    rst $38                                       ; $49eb: $ff
    rst $38                                       ; $49ec: $ff
    rst $38                                       ; $49ed: $ff
    rst $38                                       ; $49ee: $ff
    rst $38                                       ; $49ef: $ff
    rst $38                                       ; $49f0: $ff
    rst $38                                       ; $49f1: $ff
    rst $38                                       ; $49f2: $ff
    rst $38                                       ; $49f3: $ff
    rst $38                                       ; $49f4: $ff
    rst $38                                       ; $49f5: $ff
    nop                                           ; $49f6: $00
    rst $38                                       ; $49f7: $ff
    rst $38                                       ; $49f8: $ff
    rst $38                                       ; $49f9: $ff
    rst $38                                       ; $49fa: $ff
    rst $38                                       ; $49fb: $ff
    rst $38                                       ; $49fc: $ff
    rst $38                                       ; $49fd: $ff
    rst $38                                       ; $49fe: $ff
    rst $38                                       ; $49ff: $ff
    rst $38                                       ; $4a00: $ff
    rst $38                                       ; $4a01: $ff
    rst $38                                       ; $4a02: $ff
    rst $38                                       ; $4a03: $ff
    rst $38                                       ; $4a04: $ff
    rst $38                                       ; $4a05: $ff
    rst $38                                       ; $4a06: $ff
    nop                                           ; $4a07: $00
    rst $38                                       ; $4a08: $ff
    rst $38                                       ; $4a09: $ff
    rst $38                                       ; $4a0a: $ff
    rst $38                                       ; $4a0b: $ff
    rst $38                                       ; $4a0c: $ff
    rst $38                                       ; $4a0d: $ff
    rst $38                                       ; $4a0e: $ff
    rst $38                                       ; $4a0f: $ff
    rst $38                                       ; $4a10: $ff
    rst $38                                       ; $4a11: $ff
    rst $38                                       ; $4a12: $ff
    rst $38                                       ; $4a13: $ff
    rst $38                                       ; $4a14: $ff
    rst $38                                       ; $4a15: $ff
    rst $38                                       ; $4a16: $ff
    rst $38                                       ; $4a17: $ff
    nop                                           ; $4a18: $00
    rst $38                                       ; $4a19: $ff
    rst $38                                       ; $4a1a: $ff
    rst $38                                       ; $4a1b: $ff
    rst $38                                       ; $4a1c: $ff
    nop                                           ; $4a1d: $00
    nop                                           ; $4a1e: $00
    nop                                           ; $4a1f: $00
    nop                                           ; $4a20: $00
    inc d                                         ; $4a21: $14
    nop                                           ; $4a22: $00
    jr nz, jr_02c_4a39                            ; $4a23: $20 $14

    inc d                                         ; $4a25: $14
    nop                                           ; $4a26: $00
    jr nz, @+$01                                  ; $4a27: $20 $ff

    nop                                           ; $4a29: $00
    cp $ff                                        ; $4a2a: $fe $ff
    jr jr_02c_4a46                                ; $4a2c: $18 $18

    dec [hl]                                      ; $4a2e: $35
    dec l                                         ; $4a2f: $2d
    ld c, [hl]                                    ; $4a30: $4e
    ld a, a                                       ; $4a31: $7f
    ld e, h                                       ; $4a32: $5c
    ld [hl], a                                    ; $4a33: $77
    rst $38                                       ; $4a34: $ff
    jr z, @+$41                                   ; $4a35: $28 $3f

    dec hl                                        ; $4a37: $2b
    ccf                                           ; $4a38: $3f

jr_02c_4a39:
    cpl                                           ; $4a39: $2f
    inc a                                         ; $4a3a: $3c
    scf                                           ; $4a3b: $37
    inc [hl]                                      ; $4a3c: $34
    rst $38                                       ; $4a3d: $ff
    nop                                           ; $4a3e: $00
    nop                                           ; $4a3f: $00
    ldh a, [$f0]                                  ; $4a40: $f0 $f0
    ld l, b                                       ; $4a42: $68
    sbc b                                         ; $4a43: $98
    db $e4                                        ; $4a44: $e4
    inc a                                         ; $4a45: $3c

jr_02c_4a46:
    rst $38                                       ; $4a46: $ff
    ld a, h                                       ; $4a47: $7c
    call nc, $dc74                                ; $4a48: $d4 $74 $dc
    ld hl, sp-$48                                 ; $4a4b: $f8 $b8
    ld hl, sp-$58                                 ; $4a4d: $f8 $a8
    rst $38                                       ; $4a4f: $ff
    inc hl                                        ; $4a50: $23
    ld [hl+], a                                   ; $4a51: $22
    inc bc                                        ; $4a52: $03
    inc bc                                        ; $4a53: $03
    rlca                                          ; $4a54: $07
    dec b                                         ; $4a55: $05
    ld c, $0b                                     ; $4a56: $0e $0b
    rst $38                                       ; $4a58: $ff
    rlca                                          ; $4a59: $07
    rlca                                          ; $4a5a: $07
    rrca                                          ; $4a5b: $0f
    rrca                                          ; $4a5c: $0f
    dec bc                                        ; $4a5d: $0b
    dec bc                                        ; $4a5e: $0b
    ld b, $06                                     ; $4a5f: $06 $06
    rst $38                                       ; $4a61: $ff
    ld hl, sp+$08                                 ; $4a62: $f8 $08
    ldh a, [$90]                                  ; $4a64: $f0 $90
    ld a, b                                       ; $4a66: $78
    add sp, $38                                   ; $4a67: $e8 $38
    ld hl, sp-$01                                 ; $4a69: $f8 $ff
    ldh a, [$d0]                                  ; $4a6b: $f0 $d0
    add sp, $68                                   ; $4a6d: $e8 $68
    ret c                                         ; $4a6f: $d8

    ret c                                         ; $4a70: $d8

    ldh a, [$f0]                                  ; $4a71: $f0 $f0
    sbc $e2                                       ; $4a73: $de $e2
    ldh [rTAC], a                                 ; $4a75: $e0 $07
    rrca                                          ; $4a77: $0f
    ld c, $0f                                     ; $4a78: $0e $0f
    rst $38                                       ; $4a7a: $ff
    pop hl                                        ; $4a7b: $e1
    ld c, $0f                                     ; $4a7c: $0e $0f
    rst $38                                       ; $4a7e: $ff
    ld c, $07                                     ; $4a7f: $0e $07
    rlca                                          ; $4a81: $07
    ldh [$e0], a                                  ; $4a82: $e0 $e0
    ldh a, [$30]                                  ; $4a84: $f0 $30
    ld hl, sp-$01                                 ; $4a86: $f8 $ff
    ld a, b                                       ; $4a88: $78
    ld hl, sp+$58                                 ; $4a89: $f8 $58

jr_02c_4a8b:
    ld hl, sp-$38                                 ; $4a8b: $f8 $c8
    ld hl, sp-$68                                 ; $4a8d: $f8 $98
    ld hl, sp-$01                                 ; $4a8f: $f8 $ff
    jr jr_02c_4a8b                                ; $4a91: $18 $f8

    ld [$0707], sp                                ; $4a93: $08 $07 $07
    ld b, $07                                     ; $4a96: $06 $07
    inc c                                         ; $4a98: $0c
    rst $38                                       ; $4a99: $ff
    rrca                                          ; $4a9a: $0f
    inc c                                         ; $4a9b: $0c
    rrca                                          ; $4a9c: $0f
    rlca                                          ; $4a9d: $07
    rlca                                          ; $4a9e: $07
    dec bc                                        ; $4a9f: $0b
    ld c, $0d                                     ; $4aa0: $0e $0d
    cp $fa                                        ; $4aa2: $fe $fa
    ldh [$f8], a                                  ; $4aa4: $e0 $f8
    adc b                                         ; $4aa6: $88
    ld [hl], b                                    ; $4aa7: $70
    ret nc                                        ; $4aa8: $d0

    ldh a, [$b0]                                  ; $4aa9: $f0 $b0
    ld a, b                                       ; $4aab: $78
    rst $38                                       ; $4aac: $ff
    ret z                                         ; $4aad: $c8

    ldh a, [$f0]                                  ; $4aae: $f0 $f0
    ld hl, sp+$58                                 ; $4ab0: $f8 $58
    add sp, -$08                                  ; $4ab2: $e8 $f8
    ld [hl], b                                    ; $4ab4: $70
    rst $38                                       ; $4ab5: $ff
    ld [hl], b                                    ; $4ab6: $70
    rlca                                          ; $4ab7: $07
    rlca                                          ; $4ab8: $07
    ld [$1308], sp                                ; $4ab9: $08 $08 $13
    ld de, $ff11                                  ; $4abc: $11 $11 $ff
    ld de, $1717                                  ; $4abf: $11 $17 $17
    rra                                           ; $4ac2: $1f

jr_02c_4ac3:
    add hl, de                                    ; $4ac3: $19
    rrca                                          ; $4ac4: $0f
    ld [$ff0f], sp                                ; $4ac5: $08 $0f $ff
    inc c                                         ; $4ac8: $0c
    ret nz                                        ; $4ac9: $c0

    ret nz                                        ; $4aca: $c0

    and b                                         ; $4acb: $a0
    and b                                         ; $4acc: $a0
    ldh a, [$50]                                  ; $4acd: $f0 $50
    ret nc                                        ; $4acf: $d0

    ld e, a                                       ; $4ad0: $5f
    ld d, b                                       ; $4ad1: $50
    ldh a, [$30]                                  ; $4ad2: $f0 $30
    ldh a, [$50]                                  ; $4ad4: $f0 $50
    cp $e0                                        ; $4ad6: $fe $e0
    db $10                                        ; $4ad8: $10
    pop bc                                        ; $4ad9: $c1
    ldh [$bd], a                                  ; $4ada: $e0 $bd
    dec b                                         ; $4adc: $05
    add h                                         ; $4add: $84
    ldh [$0a], a                                  ; $4ade: $e0 $0a
    rra                                           ; $4ae0: $1f
    inc d                                         ; $4ae1: $14
    rra                                           ; $4ae2: $1f
    rst $38                                       ; $4ae3: $ff
    ldh [$0e], a                                  ; $4ae4: $e0 $0e
    rst $30                                       ; $4ae6: $f7
    ld c, $f0                                     ; $4ae7: $0e $f0
    db $10                                        ; $4ae9: $10
    and b                                         ; $4aea: $a0
    ldh [$e8], a                                  ; $4aeb: $e0 $e8
    ld hl, sp+$78                                 ; $4aed: $f8 $78
    ldh [rIE], a                                  ; $4aef: $e0 $ff
    jr nz, jr_02c_4ac3                            ; $4af1: $20 $d0

    ldh a, [$90]                                  ; $4af3: $f0 $90
    ldh a, [$e0]                                  ; $4af5: $f0 $e0
    ldh [rTAC], a                                 ; $4af7: $e0 $07
    rst $38                                       ; $4af9: $ff
    rlca                                          ; $4afa: $07
    inc c                                         ; $4afb: $0c
    dec bc                                        ; $4afc: $0b
    inc de                                        ; $4afd: $13
    ld e, $17                                     ; $4afe: $1e $17

jr_02c_4b00:
    dec e                                         ; $4b00: $1d
    rra                                           ; $4b01: $1f
    ld a, a                                       ; $4b02: $7f
    jr jr_02c_4b24                                ; $4b03: $18 $1f

    ld a, [de]                                    ; $4b05: $1a
    rrca                                          ; $4b06: $0f
    ld a, [bc]                                    ; $4b07: $0a
    rrca                                          ; $4b08: $0f
    ld [$e0c0], sp                                ; $4b09: $08 $c0 $e0
    rst $38                                       ; $4b0c: $ff
    ld h, b                                       ; $4b0d: $60
    ret nc                                        ; $4b0e: $d0

    jr nc, @-$6e                                  ; $4b0f: $30 $90

    ld [hl], b                                    ; $4b11: $70
    xor b                                         ; $4b12: $a8
    ld hl, sp-$08                                 ; $4b13: $f8 $f8
    rst $38                                       ; $4b15: $ff
    ret c                                         ; $4b16: $d8

    ld hl, sp+$18                                 ; $4b17: $f8 $18
    ldh a, [rSVBK]                                ; $4b19: $f0 $70
    rlca                                          ; $4b1b: $07
    inc b                                         ; $4b1c: $04
    rlca                                          ; $4b1d: $07
    rst $38                                       ; $4b1e: $ff
    rlca                                          ; $4b1f: $07
    rlca                                          ; $4b20: $07
    dec b                                         ; $4b21: $05
    rrca                                          ; $4b22: $0f
    dec bc                                        ; $4b23: $0b

jr_02c_4b24:
    rrca                                          ; $4b24: $0f
    rrca                                          ; $4b25: $0f
    rra                                           ; $4b26: $1f
    ei                                            ; $4b27: $fb
    rra                                           ; $4b28: $1f
    rla                                           ; $4b29: $17
    ret nz                                        ; $4b2a: $c0

    ldh [$e0], a                                  ; $4b2b: $e0 $e0
    ldh [rSVBK], a                                ; $4b2d: $e0 $70
    ld d, b                                       ; $4b2f: $50
    jr nc, jr_02c_4b00                            ; $4b30: $30 $ce

    rst $38                                       ; $4b32: $ff
    ldh [$e0], a                                  ; $4b33: $e0 $e0
    ldh [$50], a                                  ; $4b35: $e0 $50
    ret nz                                        ; $4b37: $c0

    ld [c], a                                     ; $4b38: $e2
    ld [hl+], a                                   ; $4b39: $22
    ldh [rDIV], a                                 ; $4b3a: $e0 $04
    ld c, $e7                                     ; $4b3c: $0e $e7
    ld [$080e], sp                                ; $4b3e: $08 $0e $08
    ld a, $e2                                     ; $4b41: $3e $e2
    ld d, a                                       ; $4b43: $57
    ldh [$e0], a                                  ; $4b44: $e0 $e0
    ldh [rNR10], a                                ; $4b46: $e0 $10
    rst $38                                       ; $4b48: $ff
    db $10                                        ; $4b49: $10
    jr c, jr_02c_4b84                             ; $4b4a: $38 $38

    ld h, h                                       ; $4b4c: $64
    ld b, h                                       ; $4b4d: $44
    db $fc                                        ; $4b4e: $fc
    db $fc                                        ; $4b4f: $fc
    ld hl, sp-$01                                 ; $4b50: $f8 $ff
    adc b                                         ; $4b52: $88
    ld hl, sp-$58                                 ; $4b53: $f8 $a8
    ld hl, sp+$28                                 ; $4b55: $f8 $28
    rlca                                          ; $4b57: $07
    ld b, $03                                     ; $4b58: $06 $03
    rst $38                                       ; $4b5a: $ff
    inc bc                                        ; $4b5b: $03
    ld b, $07                                     ; $4b5c: $06 $07
    rrca                                          ; $4b5e: $0f
    dec bc                                        ; $4b5f: $0b
    rra                                           ; $4b60: $1f
    ld d, $1f                                     ; $4b61: $16 $1f
    ei                                            ; $4b63: $fb
    rra                                           ; $4b64: $1f
    rrca                                          ; $4b65: $0f
    ld b, b                                       ; $4b66: $40
    pop hl                                        ; $4b67: $e1
    ld [$10f0], sp                                ; $4b68: $08 $f0 $10
    add sp, -$08                                  ; $4b6b: $e8 $f8
    ei                                            ; $4b6d: $fb
    ld hl, sp-$08                                 ; $4b6e: $f8 $f8
    add b                                         ; $4b70: $80
    ldh [rSVBK], a                                ; $4b71: $e0 $70
    or b                                          ; $4b73: $b0
    ldh a, [$60]                                  ; $4b74: $f0 $60
    ld h, b                                       ; $4b76: $60
    or [hl]                                       ; $4b77: $b6
    ret nz                                        ; $4b78: $c0

    push bc                                       ; $4b79: $c5
    ld c, b                                       ; $4b7a: $48
    ld a, a                                       ; $4b7b: $7f
    ret nz                                        ; $4b7c: $c0

    pop bc                                        ; $4b7d: $c1
    rla                                           ; $4b7e: $17
    inc d                                         ; $4b7f: $14
    ret nz                                        ; $4b80: $c0

    call $df13                                    ; $4b81: $cd $13 $df

jr_02c_4b84:
    ld [de], a                                    ; $4b84: $12
    rlca                                          ; $4b85: $07
    rlca                                          ; $4b86: $07
    ld c, $0b                                     ; $4b87: $0e $0b
    nop                                           ; $4b89: $00
    ld [c], a                                     ; $4b8a: $e2
    ld a, [bc]                                    ; $4b8b: $0a
    add hl, bc                                    ; $4b8c: $09
    db $fd                                        ; $4b8d: $fd
    add hl, bc                                    ; $4b8e: $09
    ret nz                                        ; $4b8f: $c0

    jp $e060                                      ; $4b90: $c3 $60 $e0


    ldh [$a0], a                                  ; $4b93: $e0 $a0
    ldh a, [$d0]                                  ; $4b95: $f0 $d0
    cp a                                          ; $4b97: $bf
    ld hl, sp+$78                                 ; $4b98: $f8 $78
    add sp, -$18                                  ; $4b9a: $e8 $e8
    jr nc, jr_02c_4bce                            ; $4b9c: $30 $30

    ret nz                                        ; $4b9e: $c0

    rst $18                                       ; $4b9f: $df

jr_02c_4ba0:
    dec b                                         ; $4ba0: $05
    db $f4                                        ; $4ba1: $f4
    add d                                         ; $4ba2: $82
    ldh [$80], a                                  ; $4ba3: $e0 $80
    call nz, $800f                                ; $4ba5: $c4 $0f $80
    pop bc                                        ; $4ba8: $c1
    ld hl, sp-$68                                 ; $4ba9: $f8 $98
    ld a, b                                       ; $4bab: $78
    add sp, -$01                                  ; $4bac: $e8 $ff
    jr nc, jr_02c_4ba0                            ; $4bae: $30 $f0

    ldh a, [$f0]                                  ; $4bb0: $f0 $f0
    add sp, $38                                   ; $4bb2: $e8 $38
    ret c                                         ; $4bb4: $d8

    ld hl, sp-$0d                                 ; $4bb5: $f8 $f3
    ldh a, [$f0]                                  ; $4bb7: $f0 $f0
    ret nz                                        ; $4bb9: $c0

    rst $18                                       ; $4bba: $df
    ld [bc], a                                    ; $4bbb: $02
    ld [c], a                                     ; $4bbc: $e2
    ld c, $0f                                     ; $4bbd: $0e $0f
    inc c                                         ; $4bbf: $0c
    rla                                           ; $4bc0: $17
    cp e                                          ; $4bc1: $bb
    rra                                           ; $4bc2: $1f
    inc de                                        ; $4bc3: $13
    ret nz                                        ; $4bc4: $c0

    jp nz, Jump_000_20e0                          ; $4bc5: $c2 $e0 $20

    ldh [$80], a                                  ; $4bc8: $e0 $80
    pop hl                                        ; $4bca: $e1
    ld d, b                                       ; $4bcb: $50
    ld hl, sp-$43                                 ; $4bcc: $f8 $bd

jr_02c_4bce:
    ldh [$c0], a                                  ; $4bce: $e0 $c0
    rst $18                                       ; $4bd0: $df
    ret nz                                        ; $4bd1: $c0

    ret nz                                        ; $4bd2: $c0

    rrca                                          ; $4bd3: $0f
    rrca                                          ; $4bd4: $0f
    ld e, $16                                     ; $4bd5: $1e $16
    inc e                                         ; $4bd7: $1c
    rst $08                                       ; $4bd8: $cf
    inc e                                         ; $4bd9: $1c

jr_02c_4bda:
    rrca                                          ; $4bda: $0f
    rrca                                          ; $4bdb: $0f
    dec d                                         ; $4bdc: $15
    ret nz                                        ; $4bdd: $c0

    ld [c], a                                     ; $4bde: $e2
    call nz, $d0e2                                ; $4bdf: $c4 $e2 $d0
    ld [hl], b                                    ; $4be2: $70
    adc l                                         ; $4be3: $8d
    ld d, b                                       ; $4be4: $50
    jr @-$3e                                      ; $4be5: $18 $c0

    ldh a, [$d0]                                  ; $4be7: $f0 $d0
    ret nz                                        ; $4be9: $c0

    rst $18                                       ; $4bea: $df
    ret nz                                        ; $4beb: $c0

    push bc                                       ; $4bec: $c5
    and h                                         ; $4bed: $a4
    ret nz                                        ; $4bee: $c0

    dec bc                                        ; $4bef: $0b
    db $e3                                        ; $4bf0: $e3
    ld c, $09                                     ; $4bf1: $0e $09
    ld b, b                                       ; $4bf3: $40
    ld [c], a                                     ; $4bf4: $e2
    ld a, $c0                                     ; $4bf5: $3e $c0
    push bc                                       ; $4bf7: $c5
    ldh [$f8], a                                  ; $4bf8: $e0 $f8
    ld l, b                                       ; $4bfa: $68
    ld hl, sp+$0b                                 ; $4bfb: $f8 $0b
    ld hl, sp-$30                                 ; $4bfd: $f8 $d0
    ret nz                                        ; $4bff: $c0

    ret nz                                        ; $4c00: $c0

    nop                                           ; $4c01: $00
    rst $38                                       ; $4c02: $ff
    rst $38                                       ; $4c03: $ff
    rst $38                                       ; $4c04: $ff
    rst $38                                       ; $4c05: $ff
    rst $38                                       ; $4c06: $ff
    rst $38                                       ; $4c07: $ff
    rst $38                                       ; $4c08: $ff
    rst $38                                       ; $4c09: $ff
    nop                                           ; $4c0a: $00
    rst $38                                       ; $4c0b: $ff
    rst $38                                       ; $4c0c: $ff
    rst $38                                       ; $4c0d: $ff
    rst $38                                       ; $4c0e: $ff
    rst $38                                       ; $4c0f: $ff
    rst $38                                       ; $4c10: $ff
    rst $38                                       ; $4c11: $ff
    rst $38                                       ; $4c12: $ff
    rst $38                                       ; $4c13: $ff
    rst $38                                       ; $4c14: $ff
    rst $38                                       ; $4c15: $ff
    rst $38                                       ; $4c16: $ff
    rst $38                                       ; $4c17: $ff
    rst $38                                       ; $4c18: $ff
    rst $20                                       ; $4c19: $e7
    and $00                                       ; $4c1a: $e6 $00
    nop                                           ; $4c1c: $00
    sbc l                                         ; $4c1d: $9d
    ld h, b                                       ; $4c1e: $60
    cp a                                          ; $4c1f: $bf
    add b                                         ; $4c20: $80
    cp h                                          ; $4c21: $bc
    ld h, b                                       ; $4c22: $60
    sbc h                                         ; $4c23: $9c
    ret nz                                        ; $4c24: $c0

    cp l                                          ; $4c25: $bd
    and b                                         ; $4c26: $a0
    sbc l                                         ; $4c27: $9d
    ld h, b                                       ; $4c28: $60
    rst $38                                       ; $4c29: $ff
    ldh [$9b], a                                  ; $4c2a: $e0 $9b
    nop                                           ; $4c2c: $00
    jr nz, jr_02c_4cac                            ; $4c2d: $20 $7d

Call_02c_4c2f:
    ld b, b                                       ; $4c2f: $40
    ld a, [hl]                                    ; $4c30: $7e
    ld h, b                                       ; $4c31: $60
    ld a, l                                       ; $4c32: $7d
    add b                                         ; $4c33: $80
    ld a, h                                       ; $4c34: $7c
    and b                                         ; $4c35: $a0
    ld a, l                                       ; $4c36: $7d
    ret nz                                        ; $4c37: $c0

    ld a, l                                       ; $4c38: $7d
    ldh [$7e], a                                  ; $4c39: $e0 $7e
    nop                                           ; $4c3b: $00
    sbc a                                         ; $4c3c: $9f
    nop                                           ; $4c3d: $00
    ld h, b                                       ; $4c3e: $60
    rst $18                                       ; $4c3f: $df
    jr nz, jr_02c_4bda                            ; $4c40: $20 $98

    sbc [hl]                                      ; $4c42: $9e
    cp a                                          ; $4c43: $bf
    rst $38                                       ; $4c44: $ff
    rst $38                                       ; $4c45: $ff
    rst $38                                       ; $4c46: $ff
    rst $38                                       ; $4c47: $ff
    rst $38                                       ; $4c48: $ff
    rst $38                                       ; $4c49: $ff

Jump_02c_4c4a:
    rst $38                                       ; $4c4a: $ff
    rst $38                                       ; $4c4b: $ff
    db $f4                                        ; $4c4c: $f4
    di                                            ; $4c4d: $f3
    nop                                           ; $4c4e: $00
    jr nz, jr_02c_4cce                            ; $4c4f: $20 $7d

    ld b, b                                       ; $4c51: $40
    ld a, a                                       ; $4c52: $7f
    rst $38                                       ; $4c53: $ff
    rst $38                                       ; $4c54: $ff
    rst $38                                       ; $4c55: $ff
    rst $38                                       ; $4c56: $ff
    rst $38                                       ; $4c57: $ff
    rst $38                                       ; $4c58: $ff

jr_02c_4c59:
    rst $38                                       ; $4c59: $ff
    rst $38                                       ; $4c5a: $ff
    rst $38                                       ; $4c5b: $ff
    rst $38                                       ; $4c5c: $ff
    nop                                           ; $4c5d: $00
    sub c                                         ; $4c5e: $91
    nop                                           ; $4c5f: $00
    nop                                           ; $4c60: $00
    nop                                           ; $4c61: $00
    nop                                           ; $4c62: $00
    nop                                           ; $4c63: $00
    nop                                           ; $4c64: $00
    nop                                           ; $4c65: $00
    ccf                                           ; $4c66: $3f
    ccf                                           ; $4c67: $3f
    nop                                           ; $4c68: $00
    nop                                           ; $4c69: $00
    ld b, a                                       ; $4c6a: $47
    ld c, l                                       ; $4c6b: $4d
    ld d, h                                       ; $4c6c: $54
    nop                                           ; $4c6d: $00
    ld e, [hl]                                    ; $4c6e: $5e
    ld [bc], a                                    ; $4c6f: $02
    nop                                           ; $4c70: $00
    nop                                           ; $4c71: $00
    sbc h                                         ; $4c72: $9c
    add hl, hl                                    ; $4c73: $29
    sbc h                                         ; $4c74: $9c
    add hl, hl                                    ; $4c75: $29
    sbc h                                         ; $4c76: $9c
    add hl, hl                                    ; $4c77: $29
    sbc h                                         ; $4c78: $9c
    add hl, hl                                    ; $4c79: $29
    nop                                           ; $4c7a: $00
    nop                                           ; $4c7b: $00
    add hl, sp                                    ; $4c7c: $39
    ld c, e                                       ; $4c7d: $4b
    db $f4                                        ; $4c7e: $f4
    ld hl, $00a9                                  ; $4c7f: $21 $a9 $00
    ld e, [hl]                                    ; $4c82: $5e
    ld [bc], a                                    ; $4c83: $02
    add hl, sp                                    ; $4c84: $39
    ld c, e                                       ; $4c85: $4b
    db $f4                                        ; $4c86: $f4
    ld hl, $00a9                                  ; $4c87: $21 $a9 $00
    sbc $52                                       ; $4c8a: $de $52
    add hl, sp                                    ; $4c8c: $39
    ld c, e                                       ; $4c8d: $4b
    db $f4                                        ; $4c8e: $f4
    ld hl, $00a9                                  ; $4c8f: $21 $a9 $00
    sbc $52                                       ; $4c92: $de $52
    and b                                         ; $4c94: $a0
    ld b, b                                       ; $4c95: $40
    db $f4                                        ; $4c96: $f4
    ld hl, $00a9                                  ; $4c97: $21 $a9 $00
    nop                                           ; $4c9a: $00
    ld [bc], a                                    ; $4c9b: $02
    nop                                           ; $4c9c: $00
    ld [bc], a                                    ; $4c9d: $02
    nop                                           ; $4c9e: $00
    ld [bc], a                                    ; $4c9f: $02
    nop                                           ; $4ca0: $00
    ld [bc], a                                    ; $4ca1: $02
    sbc h                                         ; $4ca2: $9c
    add hl, hl                                    ; $4ca3: $29
    sbc h                                         ; $4ca4: $9c
    add hl, hl                                    ; $4ca5: $29
    sbc h                                         ; $4ca6: $9c
    add hl, hl                                    ; $4ca7: $29
    sbc h                                         ; $4ca8: $9c
    add hl, hl                                    ; $4ca9: $29
    rst $38                                       ; $4caa: $ff
    nop                                           ; $4cab: $00

jr_02c_4cac:
    rst $38                                       ; $4cac: $ff
    ld [bc], a                                    ; $4cad: $02
    add e                                         ; $4cae: $83
    inc b                                         ; $4caf: $04
    add l                                         ; $4cb0: $85
    ld [$ff89], sp                                ; $4cb1: $08 $89 $ff
    db $10                                        ; $4cb4: $10
    sub c                                         ; $4cb5: $91
    jr nz, jr_02c_4c59                            ; $4cb6: $20 $a1

    ld b, b                                       ; $4cb8: $40
    pop bc                                        ; $4cb9: $c1
    nop                                           ; $4cba: $00
    rst $38                                       ; $4cbb: $ff
    inc bc                                        ; $4cbc: $03
    rst $38                                       ; $4cbd: $ff
    nop                                           ; $4cbe: $00
    cp $ff                                        ; $4cbf: $fe $ff
    cp $ff                                        ; $4cc1: $fe $ff
    cp $ff                                        ; $4cc3: $fe $ff
    cp $ff                                        ; $4cc5: $fe $ff
    cp $ff                                        ; $4cc7: $fe $ff
    cp $ff                                        ; $4cc9: $fe $ff
    nop                                           ; $4ccb: $00
    cp $ff                                        ; $4ccc: $fe $ff

jr_02c_4cce:
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
    rst $38                                       ; $4cd8: $ff
    rst $38                                       ; $4cd9: $ff
    rst $38                                       ; $4cda: $ff
    rst $38                                       ; $4cdb: $ff
    cp $ff                                        ; $4cdc: $fe $ff
    rst $38                                       ; $4cde: $ff
    nop                                           ; $4cdf: $00
    nop                                           ; $4ce0: $00
    ld bc, $0201                                  ; $4ce1: $01 $01 $02
    inc bc                                        ; $4ce4: $03
    inc bc                                        ; $4ce5: $03
    db $fd                                        ; $4ce6: $fd
    ld [bc], a                                    ; $4ce7: $02
    cp $e1                                        ; $4ce8: $fe $e1
    dec b                                         ; $4cea: $05
    ld b, $07                                     ; $4ceb: $06 $07
    inc b                                         ; $4ced: $04
    rst $38                                       ; $4cee: $ff
    rst $38                                       ; $4cef: $ff
    rst $38                                       ; $4cf0: $ff
    ccf                                           ; $4cf1: $3f
    ret nz                                        ; $4cf2: $c0

    rst $38                                       ; $4cf3: $ff
    nop                                           ; $4cf4: $00
    push de                                       ; $4cf5: $d5
    ld a, [hl+]                                   ; $4cf6: $2a
    rst $38                                       ; $4cf7: $ff
    nop                                           ; $4cf8: $00
    rst $38                                       ; $4cf9: $ff
    rst $10                                       ; $4cfa: $d7
    jr z, @+$01                                   ; $4cfb: $28 $ff

    nop                                           ; $4cfd: $00
    ld e, a                                       ; $4cfe: $5f
    and b                                         ; $4cff: $a0
    rst $38                                       ; $4d00: $ff
    rst $38                                       ; $4d01: $ff
    cp a                                          ; $4d02: $bf
    ldh [$1f], a                                  ; $4d03: $e0 $1f
    rst $38                                       ; $4d05: $ff
    nop                                           ; $4d06: $00
    ld a, a                                       ; $4d07: $7f
    add b                                         ; $4d08: $80
    ret nz                                        ; $4d09: $c0

    rst $00                                       ; $4d0a: $c7
    rst $38                                       ; $4d0b: $ff
    ret nz                                        ; $4d0c: $c0

    call z, $f0aa                                 ; $4d0d: $cc $aa $f0
    pop hl                                        ; $4d10: $e1
    sbc $e1                                       ; $4d11: $de $e1
    and b                                         ; $4d13: $a0
    ret                                           ; $4d14: $c9


    sbc $e9                                       ; $4d15: $de $e9
    ldh a, [$e3]                                  ; $4d17: $f0 $e3
    ldh a, [rIF]                                  ; $4d19: $f0 $0f
    nop                                           ; $4d1b: $00
    add b                                         ; $4d1c: $80
    res 7, h                                      ; $4d1d: $cb $bc
    rst $20                                       ; $4d1f: $e7
    ldh a, [$e5]                                  ; $4d20: $f0 $e5
    sbc $e5                                       ; $4d22: $de $e5
    ld d, b                                       ; $4d24: $50
    push hl                                       ; $4d25: $e5
    sbc d                                         ; $4d26: $9a
    push hl                                       ; $4d27: $e5
    ldh a, [$e7]                                  ; $4d28: $f0 $e7
    sbc d                                         ; $4d2a: $9a
    db $e3                                        ; $4d2b: $e3
    ld a, [hl]                                    ; $4d2c: $7e
    jr nc, @-$17                                  ; $4d2d: $30 $e7

    rst $38                                       ; $4d2f: $ff
    rst $38                                       ; $4d30: $ff
    ld hl, sp+$07                                 ; $4d31: $f8 $07
    xor a                                         ; $4d33: $af
    ld d, b                                       ; $4d34: $50
    jr nz, @-$17                                  ; $4d35: $20 $e7

    rst $38                                       ; $4d37: $ff
    add b                                         ; $4d38: $80
    add b                                         ; $4d39: $80
    ld b, b                                       ; $4d3a: $40
    ret nz                                        ; $4d3b: $c0

    ld b, b                                       ; $4d3c: $40
    ret nz                                        ; $4d3d: $c0

    rlca                                          ; $4d3e: $07
    inc b                                         ; $4d3f: $04
    cp a                                          ; $4d40: $bf
    rlca                                          ; $4d41: $07
    inc b                                         ; $4d42: $04
    dec bc                                        ; $4d43: $0b
    inc c                                         ; $4d44: $0c
    rrca                                          ; $4d45: $0f
    ld [$e1fe], sp                                ; $4d46: $08 $fe $e1
    rla                                           ; $4d49: $17
    rst $30                                       ; $4d4a: $f7
    jr @+$21                                      ; $4d4b: $18 $1f

    db $10                                        ; $4d4d: $10
    xor $af                                       ; $4d4e: $ee $af
    db $eb                                        ; $4d50: $eb
    inc d                                         ; $4d51: $14
    rst $38                                       ; $4d52: $ff
    nop                                           ; $4d53: $00
    ld l, a                                       ; $4d54: $6f
    cp $01                                        ; $4d55: $fe $01
    db $fd                                        ; $4d57: $fd
    inc bc                                        ; $4d58: $03
    cp $e3                                        ; $4d59: $fe $e3
    ld b, b                                       ; $4d5b: $40
    ret nz                                        ; $4d5c: $c0

    rst $38                                       ; $4d5d: $ff
    pop hl                                        ; $4d5e: $e1
    db $fd                                        ; $4d5f: $fd
    add b                                         ; $4d60: $80
    rst $38                                       ; $4d61: $ff
    db $e4                                        ; $4d62: $e4
    nop                                           ; $4d63: $00
    nop                                           ; $4d64: $00
    rra                                           ; $4d65: $1f
    db $10                                        ; $4d66: $10
    rra                                           ; $4d67: $1f
    db $10                                        ; $4d68: $10
    rst $28                                       ; $4d69: $ef
    cpl                                           ; $4d6a: $2f
    jr nc, jr_02c_4dac                            ; $4d6b: $30 $3f

jr_02c_4d6d:
    jr nz, jr_02c_4d6d                            ; $4d6d: $20 $fe

    pop hl                                        ; $4d6f: $e1
    ld a, a                                       ; $4d70: $7f
    ld h, b                                       ; $4d71: $60
    ld a, a                                       ; $4d72: $7f
    rst $38                                       ; $4d73: $ff
    ld [hl], b                                    ; $4d74: $70
    rst $38                                       ; $4d75: $ff
    inc bc                                        ; $4d76: $03
    ei                                            ; $4d77: $fb
    rlca                                          ; $4d78: $07
    ei                                            ; $4d79: $fb
    rlca                                          ; $4d7a: $07
    cp $b7                                        ; $4d7b: $fe $b7
    ld b, $f6                                     ; $4d7d: $06 $f6
    ld c, $fe                                     ; $4d7f: $0e $fe
    pop hl                                        ; $4d81: $e1
    db $ec                                        ; $4d82: $ec
    inc e                                         ; $4d83: $1c
    add $cb                                       ; $4d84: $c6 $cb
    ld bc, $01ff                                  ; $4d86: $01 $ff $01
    ld a, a                                       ; $4d89: $7f
    ld a, [hl]                                    ; $4d8a: $7e
    ld a, l                                       ; $4d8b: $7d
    ld b, e                                       ; $4d8c: $43
    cp a                                          ; $4d8d: $bf
    ret nz                                        ; $4d8e: $c0

    rst $38                                       ; $4d8f: $ff
    sbc c                                         ; $4d90: $99
    add b                                         ; $4d91: $80
    cp $e1                                        ; $4d92: $fe $e1
    jp c, $f0c4                                   ; $4d94: $da $c4 $f0

jr_02c_4d97:
    rst $28                                       ; $4d97: $ef
    ldh a, [$c8]                                  ; $4d98: $f0 $c8
    ld l, [hl]                                    ; $4d9a: $6e
    and d                                         ; $4d9b: $a2
    add b                                         ; $4d9c: $80
    rst $08                                       ; $4d9d: $cf
    ld a, a                                       ; $4d9e: $7f
    db $fc                                        ; $4d9f: $fc
    ei                                            ; $4da0: $fb
    rlca                                          ; $4da1: $07
    ld h, h                                       ; $4da2: $64
    xor h                                         ; $4da3: $ac
    jp c, Jump_000_07e5                           ; $4da4: $da $e5 $07

    db $fd                                        ; $4da7: $fd
    rst $38                                       ; $4da8: $ff
    add hl, de                                    ; $4da9: $19
    ldh a, [$27]                                  ; $4daa: $f0 $27

jr_02c_4dac:
    di                                            ; $4dac: $f3
    ld e, b                                       ; $4dad: $58
    jp z, $eb44                                   ; $4dae: $ca $44 $eb

    rst $18                                       ; $4db1: $df
    and b                                         ; $4db2: $a0
    pop bc                                        ; $4db3: $c1

jr_02c_4db4:
    db $e3                                        ; $4db4: $e3
    and a                                         ; $4db5: $a7
    xor [hl]                                      ; $4db6: $ae
    cp d                                          ; $4db7: $ba
    ldh [$60], a                                  ; $4db8: $e0 $60
    ccf                                           ; $4dba: $3f
    rst $38                                       ; $4dbb: $ff
    db $10                                        ; $4dbc: $10
    ccf                                           ; $4dbd: $3f
    ld a, b                                       ; $4dbe: $78
    ld c, a                                       ; $4dbf: $4f
    jr z, @+$21                                   ; $4dc0: $28 $1f

    jr c, jr_02c_4dd3                             ; $4dc2: $38 $0f

    add a                                         ; $4dc4: $87
    jr z, jr_02c_4e46                             ; $4dc5: $28 $7f

    ld a, a                                       ; $4dc7: $7f
    ld l, $ac                                     ; $4dc8: $2e $ac
    ld d, b                                       ; $4dca: $50
    adc e                                         ; $4dcb: $8b
    db $fd                                        ; $4dcc: $fd
    db $e3                                        ; $4dcd: $e3
    ld a, [bc]                                    ; $4dce: $0a
    and l                                         ; $4dcf: $a5
    ld bc, $fefd                                  ; $4dd0: $01 $fd $fe

jr_02c_4dd3:
    db $fd                                        ; $4dd3: $fd
    ldh [$ec], a                                  ; $4dd4: $e0 $ec
    inc e                                         ; $4dd6: $1c
    call c, $dc3c                                 ; $4dd7: $dc $3c $dc
    inc a                                         ; $4dda: $3c
    rst $38                                       ; $4ddb: $ff
    ret c                                         ; $4ddc: $d8

    jr c, jr_02c_4d97                             ; $4ddd: $38 $b8

    ld a, b                                       ; $4ddf: $78
    ld hl, sp-$08                                 ; $4de0: $f8 $f8
    ld [$f3f8], sp                                ; $4de2: $08 $f8 $f3
    ret nc                                        ; $4de5: $d0

    jr nc, jr_02c_4e44                            ; $4de6: $30 $5c

    pop hl                                        ; $4de8: $e1
    jr nz, jr_02c_4db4                            ; $4de9: $20 $c9

jr_02c_4deb:
    sub $50                                       ; $4deb: $d6 $50
    adc $5f                                       ; $4ded: $ce $5f
    rst $18                                       ; $4def: $df
    db $ed                                        ; $4df0: $ed
    dec h                                         ; $4df1: $25
    rst $38                                       ; $4df2: $ff
    rra                                           ; $4df3: $1f
    ld hl, sp+$70                                 ; $4df4: $f8 $70
    db $e4                                        ; $4df6: $e4
    sub a                                         ; $4df7: $97
    sbc b                                         ; $4df8: $98
    rst $08                                       ; $4df9: $cf
    ld l, a                                       ; $4dfa: $6f
    ld [hl], b                                    ; $4dfb: $70
    rst $18                                       ; $4dfc: $df
    ldh [$0c], a                                  ; $4dfd: $e0 $0c
    pop bc                                        ; $4dff: $c1
    call nz, $d083                                ; $4e00: $c4 $83 $d0
    jr nc, jr_02c_4deb                            ; $4e03: $30 $e6

    cp $e1                                        ; $4e05: $fe $e1
    and b                                         ; $4e07: $a0
    ld h, b                                       ; $4e08: $60
    cp $e3                                        ; $4e09: $fe $e3
    or b                                          ; $4e0b: $b0
    ret                                           ; $4e0c: $c9


    ld c, $09                                     ; $4e0d: $0e $09
    rla                                           ; $4e0f: $17
    or a                                          ; $4e10: $b7
    jr jr_02c_4e31                                ; $4e11: $18 $1e

    ld de, $8b9e                                  ; $4e13: $11 $9e $8b
    cp a                                          ; $4e16: $bf
    ld b, b                                       ; $4e17: $40
    adc [hl]                                      ; $4e18: $8e
    add e                                         ; $4e19: $83
    cp $e1                                        ; $4e1a: $fe $e1
    ld bc, $e3fe                                  ; $4e1c: $01 $fe $e3
    or b                                          ; $4e1f: $b0
    pop bc                                        ; $4e20: $c1
    ld a, d                                       ; $4e21: $7a
    pop bc                                        ; $4e22: $c1
    or b                                          ; $4e23: $b0
    ret                                           ; $4e24: $c9


    ld e, $11                                     ; $4e25: $1e $11
    cpl                                           ; $4e27: $2f
    ld [hl], a                                    ; $4e28: $77
    jr nc, jr_02c_4e65                            ; $4e29: $30 $3a

    dec h                                         ; $4e2b: $25
    xor [hl]                                      ; $4e2c: $ae
    pop bc                                        ; $4e2d: $c1
    cpl                                           ; $4e2e: $2f
    jr nc, jr_02c_4e41                            ; $4e2f: $30 $10

jr_02c_4e31:
    or h                                          ; $4e31: $b4
    and b                                         ; $4e32: $a0
    rst $38                                       ; $4e33: $ff
    xor e                                         ; $4e34: $ab
    ld d, h                                       ; $4e35: $54
    rst $38                                       ; $4e36: $ff
    nop                                           ; $4e37: $00
    xor d                                         ; $4e38: $aa
    ld d, l                                       ; $4e39: $55
    rst $38                                       ; $4e3a: $ff
    nop                                           ; $4e3b: $00
    jp $05fa                                      ; $4e3c: $c3 $fa $05


    xor b                                         ; $4e3f: $a8
    and a                                         ; $4e40: $a7

jr_02c_4e41:
    db $ec                                        ; $4e41: $ec
    pop hl                                        ; $4e42: $e1
    or h                                          ; $4e43: $b4

jr_02c_4e44:
    db $e3                                        ; $4e44: $e3
    ld l, b                                       ; $4e45: $68

jr_02c_4e46:
    jp Jump_000_06fa                              ; $4e46: $c3 $fa $06


    ld a, [hl]                                    ; $4e49: $7e
    cp $e1                                        ; $4e4a: $fe $e1
    ld a, d                                       ; $4e4c: $7a
    add [hl]                                      ; $4e4d: $86
    db $f4                                        ; $4e4e: $f4
    inc c                                         ; $4e4f: $0c
    rrca                                          ; $4e50: $0f
    rrca                                          ; $4e51: $0f
    ld a, $ab                                     ; $4e52: $3e $ab
    rst $28                                       ; $4e54: $ef
    add b                                         ; $4e55: $80
    rst $38                                       ; $4e56: $ff
    ld a, a                                       ; $4e57: $7f
    ld a, a                                       ; $4e58: $7f
    inc l                                         ; $4e59: $2c
    xor c                                         ; $4e5a: $a9
    rlca                                          ; $4e5b: $07
    ld hl, sp-$08                                 ; $4e5c: $f8 $f8
    rst $00                                       ; $4e5e: $c7
    rst $38                                       ; $4e5f: $ff
    rlca                                          ; $4e60: $07
    rlca                                          ; $4e61: $07
    ld [$5fa8], a                                 ; $4e62: $ea $a8 $5f

jr_02c_4e65:
    and e                                         ; $4e65: $a3
    ldh a, [$e8]                                  ; $4e66: $f0 $e8
    ccf                                           ; $4e68: $3f
    ret nz                                        ; $4e69: $c0

    rst $28                                       ; $4e6a: $ef
    ret nz                                        ; $4e6b: $c0

    rst $38                                       ; $4e6c: $ff
    ccf                                           ; $4e6d: $3f
    ccf                                           ; $4e6e: $3f
    ldh [$e7], a                                  ; $4e6f: $e0 $e7
    rst $38                                       ; $4e71: $ff
    nop                                           ; $4e72: $00
    ld bc, $fe05                                  ; $4e73: $01 $05 $fe
    sub $c0                                       ; $4e76: $d6 $c0
    ld bc, $e7f0                                  ; $4e78: $01 $f0 $e7
    call z, $bee9                                 ; $4e7b: $cc $e9 $be
    ld h, e                                       ; $4e7e: $63
    xor d                                         ; $4e7f: $aa
    rst $20                                       ; $4e80: $e7
    ret z                                         ; $4e81: $c8

    ld h, [hl]                                    ; $4e82: $66
    db $f4                                        ; $4e83: $f4
    xor d                                         ; $4e84: $aa
    db $e4                                        ; $4e85: $e4
    ld e, h                                       ; $4e86: $5c
    ld [c], a                                     ; $4e87: $e2
    ld [bc], a                                    ; $4e88: $02
    xor d                                         ; $4e89: $aa
    rst $20                                       ; $4e8a: $e7
    push af                                       ; $4e8b: $f5
    ld a, [bc]                                    ; $4e8c: $0a
    rst $38                                       ; $4e8d: $ff
    nop                                           ; $4e8e: $00
    ei                                            ; $4e8f: $fb
    ld d, l                                       ; $4e90: $55
    xor d                                         ; $4e91: $aa
    cp h                                          ; $4e92: $bc
    rst $20                                       ; $4e93: $e7
    ld [hl], h                                    ; $4e94: $74
    adc h                                         ; $4e95: $8c
    db $f4                                        ; $4e96: $f4
    inc c                                         ; $4e97: $0c
    ld [hl], h                                    ; $4e98: $74
    rst $38                                       ; $4e99: $ff
    adc h                                         ; $4e9a: $8c
    add sp, $18                                   ; $4e9b: $e8 $18
    add sp, $18                                   ; $4e9d: $e8 $18
    db $10                                        ; $4e9f: $10
    ldh a, [$e0]                                  ; $4ea0: $f0 $e0
    ld a, l                                       ; $4ea2: $7d
    ldh [$9c], a                                  ; $4ea3: $e0 $9c
    adc c                                         ; $4ea5: $89
    ld [bc], a                                    ; $4ea6: $02
    inc bc                                        ; $4ea7: $03
    rlca                                          ; $4ea8: $07
    rlca                                          ; $4ea9: $07

jr_02c_4eaa:
    db $fc                                        ; $4eaa: $fc
    ld a, a                                       ; $4eab: $7f
    ld h, d                                       ; $4eac: $62
    rst $18                                       ; $4ead: $df
    ld a, b                                       ; $4eae: $78
    ld a, b                                       ; $4eaf: $78
    add [hl]                                      ; $4eb0: $86
    cp $01                                        ; $4eb1: $fe $01
    ld d, l                                       ; $4eb3: $55
    ld h, b                                       ; $4eb4: $60
    db $fc                                        ; $4eb5: $fc
    rst $38                                       ; $4eb6: $ff
    reti                                          ; $4eb7: $d9


    rst $30                                       ; $4eb8: $f7
    ld [hl+], a                                   ; $4eb9: $22
    add sp, $7c                                   ; $4eba: $e8 $7c
    and c                                         ; $4ebc: $a1
    ret nz                                        ; $4ebd: $c0

    ret nz                                        ; $4ebe: $c0

    ld d, b                                       ; $4ebf: $50
    add c                                         ; $4ec0: $81
    inc bc                                        ; $4ec1: $03
    inc bc                                        ; $4ec2: $03
    sub e                                         ; $4ec3: $93
    dec b                                         ; $4ec4: $05
    ld b, $3c                                     ; $4ec5: $06 $3c
    and l                                         ; $4ec7: $a5
    ld a, [c]                                     ; $4ec8: $f2
    pop hl                                        ; $4ec9: $e1
    db $fc                                        ; $4eca: $fc
    or b                                          ; $4ecb: $b0
    adc d                                         ; $4ecc: $8a
    add b                                         ; $4ecd: $80
    adc d                                         ; $4ece: $8a
    rrca                                          ; $4ecf: $0f
    cpl                                           ; $4ed0: $2f
    ccf                                           ; $4ed1: $3f
    ccf                                           ; $4ed2: $3f
    rst $08                                       ; $4ed3: $cf
    ldh a, [$0a]                                  ; $4ed4: $f0 $0a
    ld l, c                                       ; $4ed6: $69
    di                                            ; $4ed7: $f3
    sbc l                                         ; $4ed8: $9d
    ldh [$fa], a                                  ; $4ed9: $e0 $fa
    ld c, c                                       ; $4edb: $49
    cpl                                           ; $4edc: $2f
    sbc [hl]                                      ; $4edd: $9e
    ld a, [hl]                                    ; $4ede: $7e
    db $fd                                        ; $4edf: $fd
    inc bc                                        ; $4ee0: $03
    nop                                           ; $4ee1: $00
    ld l, e                                       ; $4ee2: $6b
    ldh a, [$60]                                  ; $4ee3: $f0 $60
    xor d                                         ; $4ee5: $aa
    ldh [$61], a                                  ; $4ee6: $e0 $61
    rst $08                                       ; $4ee8: $cf
    ret nz                                        ; $4ee9: $c0

    ret nz                                        ; $4eea: $c0

    cp a                                          ; $4eeb: $bf
    ld a, a                                       ; $4eec: $7f
    ld l, a                                       ; $4eed: $6f
    ld [c], a                                     ; $4eee: $e2
    ldh [rOBP0], a                                ; $4eef: $e0 $48
    ld hl, sp-$08                                 ; $4ef1: $f8 $f8
    ld a, c                                       ; $4ef3: $79
    rst $30                                       ; $4ef4: $f7
    ld c, h                                       ; $4ef5: $4c
    add d                                         ; $4ef6: $82
    and b                                         ; $4ef7: $a0
    adc c                                         ; $4ef8: $89
    ld [hl], b                                    ; $4ef9: $70

jr_02c_4efa:
    ldh a, [$e8]                                  ; $4efa: $f0 $e8
    jr jr_02c_4eaa                                ; $4efc: $18 $ac

    add c                                         ; $4efe: $81
    db $fc                                        ; $4eff: $fc
    call c, $8e89                                 ; $4f00: $dc $89 $8e
    ld c, e                                       ; $4f03: $4b
    cp $01                                        ; $4f04: $fe $01
    ldh a, [rNR10]                                ; $4f06: $f0 $10
    ret nc                                        ; $4f08: $d0

    jr nc, @+$01                                  ; $4f09: $30 $ff

    pop hl                                        ; $4f0b: $e1
    inc hl                                        ; $4f0c: $23
    and d                                         ; $4f0d: $a2
    ld h, d                                       ; $4f0e: $62
    jp nz, Jump_02c_4c4a                          ; $4f0f: $c2 $4a $4c

    adc $ff                                       ; $4f12: $ce $ff
    sbc b                                         ; $4f14: $98
    sbc c                                         ; $4f15: $99
    sub b                                         ; $4f16: $90
    sub b                                         ; $4f17: $90
    rst $30                                       ; $4f18: $f7
    ld hl, sp+$0f                                 ; $4f19: $f8 $0f
    rrca                                          ; $4f1b: $0f
    rst $38                                       ; $4f1c: $ff
    add b                                         ; $4f1d: $80
    ret nz                                        ; $4f1e: $c0

    ld b, b                                       ; $4f1f: $40

jr_02c_4f20:
    ld h, h                                       ; $4f20: $64
    jr @+$1a                                      ; $4f21: $18 $18

    inc bc                                        ; $4f23: $03
    inc bc                                        ; $4f24: $03
    ret c                                         ; $4f25: $d8

    adc h                                         ; $4f26: $8c
    pop bc                                        ; $4f27: $c1
    or h                                          ; $4f28: $b4
    ld h, c                                       ; $4f29: $61
    db $ec                                        ; $4f2a: $ec
    pop hl                                        ; $4f2b: $e1
    nop                                           ; $4f2c: $00
    ld b, b                                       ; $4f2d: $40
    ld c, a                                       ; $4f2e: $4f
    add b                                         ; $4f2f: $80
    add c                                         ; $4f30: $81
    sub c                                         ; $4f31: $91
    add hl, sp                                    ; $4f32: $39
    reti                                          ; $4f33: $d9


    ld c, [hl]                                    ; $4f34: $4e
    ld b, e                                       ; $4f35: $43
    db $ec                                        ; $4f36: $ec
    db $e4                                        ; $4f37: $e4
    jr nz, @-$1e                                  ; $4f38: $20 $e0

    ldh [$3e], a                                  ; $4f3a: $e0 $3e
    ld b, a                                       ; $4f3c: $47
    ret c                                         ; $4f3d: $d8

    db $e3                                        ; $4f3e: $e3
    db $e3                                        ; $4f3f: $e3
    db $f4                                        ; $4f40: $f4
    inc c                                         ; $4f41: $0c
    cp $e5                                        ; $4f42: $fe $e5
    ld sp, $fea0                                  ; $4f44: $31 $a0 $fe
    ldh [$5f], a                                  ; $4f47: $e0 $5f
    ld h, b                                       ; $4f49: $60
    ld a, a                                       ; $4f4a: $7f
    db $fd                                        ; $4f4b: $fd
    ld b, b                                       ; $4f4c: $40
    cp $e1                                        ; $4f4d: $fe $e1
    cp a                                          ; $4f4f: $bf
    ret nz                                        ; $4f50: $c0

    cp $81                                        ; $4f51: $fe $81
    push de                                       ; $4f53: $d5
    xor d                                         ; $4f54: $aa
    rst $38                                       ; $4f55: $ff
    ld [$ff95], a                                 ; $4f56: $ea $95 $ff
    ld bc, $17e9                                  ; $4f59: $01 $e9 $17
    or $0a                                        ; $4f5c: $f6 $0a
    rst $38                                       ; $4f5e: $ff
    xor d                                         ; $4f5f: $aa
    ld d, [hl]                                    ; $4f60: $56
    ld d, h                                       ; $4f61: $54
    xor h                                         ; $4f62: $ac
    and h                                         ; $4f63: $a4
    ld e, h                                       ; $4f64: $5c
    ld e, c                                       ; $4f65: $59
    xor c                                         ; $4f66: $a9
    rst $38                                       ; $4f67: $ff
    xor c                                         ; $4f68: $a9
    ld e, c                                       ; $4f69: $59
    db $10                                        ; $4f6a: $10
    jr nc, jr_02c_4f9d                            ; $4f6b: $30 $30

    jr nc, @+$1a                                  ; $4f6d: $30 $18

    jr c, jr_02c_4ff0                             ; $4f6f: $38 $7f

    nop                                           ; $4f71: $00
    ld [$4040], sp                                ; $4f72: $08 $40 $40
    ld b, b                                       ; $4f75: $40
    ret nz                                        ; $4f76: $c0

    nop                                           ; $4f77: $00
    jr nc, jr_02c_4efa                            ; $4f78: $30 $80

    cp $00                                        ; $4f7a: $fe $00
    ld h, e                                       ; $4f7c: $63
    stop                                          ; $4f7d: $10 $00
    jr nz, jr_02c_4f81                            ; $4f7f: $20 $00

jr_02c_4f81:
    ld c, h                                       ; $4f81: $4c
    nop                                           ; $4f82: $00
    ld bc, $fee6                                  ; $4f83: $01 $e6 $fe
    ldh [rSVBK], a                                ; $4f86: $e0 $70
    ld [hl], a                                    ; $4f88: $77
    jp nc, $f264                                  ; $4f89: $d2 $64 $f2

    ldh [$83], a                                  ; $4f8c: $e0 $83
    nop                                           ; $4f8e: $00
    inc [hl]                                      ; $4f8f: $34
    rst $38                                       ; $4f90: $ff
    nop                                           ; $4f91: $00
    jr nc, jr_02c_4fcc                            ; $4f92: $30 $38

    db $10                                        ; $4f94: $10
    inc [hl]                                      ; $4f95: $34
    jr c, jr_02c_4fd0                             ; $4f96: $38 $38

    ld [$5cbf], sp                                ; $4f98: $08 $bf $5c
    jr jr_02c_4fb9                                ; $4f9b: $18 $1c

jr_02c_4f9d:
    db $10                                        ; $4f9d: $10
    jr jr_02c_4f20                                ; $4f9e: $18 $80

    rst $08                                       ; $4fa0: $cf
    db $e3                                        ; $4fa1: $e3
    ld b, b                                       ; $4fa2: $40
    rst $38                                       ; $4fa3: $ff
    add b                                         ; $4fa4: $80
    add b                                         ; $4fa5: $80
    ld e, $bf                                     ; $4fa6: $1e $bf
    di                                            ; $4fa8: $f3
    ei                                            ; $4fa9: $fb
    ret nz                                        ; $4faa: $c0

    ret nz                                        ; $4fab: $c0

    rst $28                                       ; $4fac: $ef
    or b                                          ; $4fad: $b0
    cp b                                          ; $4fae: $b8
    ld b, b                                       ; $4faf: $40
    ret nz                                        ; $4fb0: $c0

    ld d, h                                       ; $4fb1: $54

jr_02c_4fb2:
    ld [c], a                                     ; $4fb2: $e2
    nop                                           ; $4fb3: $00
    nop                                           ; $4fb4: $00
    jr nz, @+$01                                  ; $4fb5: $20 $ff

    ret nz                                        ; $4fb7: $c0

    pop bc                                        ; $4fb8: $c1

jr_02c_4fb9:
    and h                                         ; $4fb9: $a4
    and $32                                       ; $4fba: $e6 $32
    ld [hl-], a                                   ; $4fbc: $32
    ld e, $3e                                     ; $4fbd: $1e $3e
    cp $40                                        ; $4fbf: $fe $40
    and $00                                       ; $4fc1: $e6 $00
    nop                                           ; $4fc3: $00
    inc b                                         ; $4fc4: $04
    ld h, e                                       ; $4fc5: $63
    ld [hl], e                                    ; $4fc6: $73
    db $10                                        ; $4fc7: $10
    sub b                                         ; $4fc8: $90
    sub $40                                       ; $4fc9: $d6 $40
    push hl                                       ; $4fcb: $e5

jr_02c_4fcc:
    ld a, [c]                                     ; $4fcc: $f2
    db $fd                                        ; $4fcd: $fd
    jr jr_02c_4fb2                                ; $4fce: $18 $e2

jr_02c_4fd0:
    ld c, b                                       ; $4fd0: $48
    and $87                                       ; $4fd1: $e6 $87
    ld d, a                                       ; $4fd3: $57
    xor b                                         ; $4fd4: $a8
    rrca                                          ; $4fd5: $0f
    xor e                                         ; $4fd6: $ab
    call nc, Call_02c_6a55                        ; $4fd7: $d4 $55 $6a
    or $a1                                        ; $4fda: $f6 $a1
    ld a, [c]                                     ; $4fdc: $f2
    and c                                         ; $4fdd: $a1
    xor b                                         ; $4fde: $a8
    add e                                         ; $4fdf: $83
    ld [hl], b                                    ; $4fe0: $70
    add e                                         ; $4fe1: $83
    rst $20                                       ; $4fe2: $e7
    ld bc, $0301                                  ; $4fe3: $01 $01 $03
    adc [hl]                                      ; $4fe6: $8e
    ld b, d                                       ; $4fe7: $42
    sub b                                         ; $4fe8: $90
    ld b, c                                       ; $4fe9: $41
    ld d, l                                       ; $4fea: $55
    xor d                                         ; $4feb: $aa
    jr z, jr_02c_4f9d                             ; $4fec: $28 $af

    rst $10                                       ; $4fee: $d7
    nop                                           ; $4fef: $00

jr_02c_4ff0:
    rst $38                                       ; $4ff0: $ff
    cp $89                                        ; $4ff1: $fe $89
    ld b, b                                       ; $4ff3: $40
    db $fc                                        ; $4ff4: $fc
    ld e, b                                       ; $4ff5: $58
    ret nz                                        ; $4ff6: $c0

    cp $ff                                        ; $4ff7: $fe $ff
    ld bc, $b150                                  ; $4ff9: $01 $50 $b1
    ld [de], a                                    ; $4ffc: $12
    ld a, [c]                                     ; $4ffd: $f2
    ld [hl+], a                                   ; $4ffe: $22
    ld [c], a                                     ; $4fff: $e2
    jr nz, @+$01                                  ; $5000: $20 $ff

    ldh [$c8], a                                  ; $5002: $e0 $c8
    call z, $d0d0                                 ; $5004: $cc $d0 $d0
    or b                                          ; $5007: $b0
    or b                                          ; $5008: $b0
    and b                                         ; $5009: $a0
    xor a                                         ; $500a: $af
    and b                                         ; $500b: $a0
    ld [$0700], sp                                ; $500c: $08 $00 $07
    ld c, b                                       ; $500f: $48
    ldh [$a0], a                                  ; $5010: $e0 $a0
    pop de                                        ; $5012: $d1
    ret nz                                        ; $5013: $c0

    ld h, e                                       ; $5014: $63
    cp e                                          ; $5015: $bb
    nop                                           ; $5016: $00
    inc h                                         ; $5017: $24
    inc a                                         ; $5018: $3c
    ldh [$80], a                                  ; $5019: $e0 $80
    nop                                           ; $501b: $00
    jr @+$36                                      ; $501c: $18 $34

    ldh [$37], a                                  ; $501e: $e0 $37
    ld a, [c]                                     ; $5020: $f2
    add hl, hl                                    ; $5021: $29
    ld b, h                                       ; $5022: $44
    ld b, d                                       ; $5023: $42
    ld [c], a                                     ; $5024: $e2
    ldh [rKEY1], a                                ; $5025: $e0 $4d
    ld [c], a                                     ; $5027: $e2
    nop                                           ; $5028: $00
    adc b                                         ; $5029: $88
    nop                                           ; $502a: $00
    ld h, d                                       ; $502b: $62
    ei                                            ; $502c: $fb
    nop                                           ; $502d: $00
    inc de                                        ; $502e: $13
    inc de                                        ; $502f: $13
    ld b, d                                       ; $5030: $42
    inc l                                         ; $5031: $2c
    nop                                           ; $5032: $00
    ret c                                         ; $5033: $d8

    nop                                           ; $5034: $00
    inc bc                                        ; $5035: $03
    db $f4                                        ; $5036: $f4
    inc d                                         ; $5037: $14
    ldh [$0a], a                                  ; $5038: $e0 $0a
    pop hl                                        ; $503a: $e1
    ld a, b                                       ; $503b: $78
    ld bc, $0242                                  ; $503c: $01 $42 $02
    nop                                           ; $503f: $00
    ld b, h                                       ; $5040: $44
    nop                                           ; $5041: $00
    call $c8d4                                    ; $5042: $cd $d4 $c8
    ldh [rSB], a                                  ; $5045: $e0 $01
    nop                                           ; $5047: $00
    and c                                         ; $5048: $a1
    and d                                         ; $5049: $a2
    db $ed                                        ; $504a: $ed
    inc h                                         ; $504b: $24
    adc b                                         ; $504c: $88
    nop                                           ; $504d: $00
    ld a, a                                       ; $504e: $7f
    xor c                                         ; $504f: $a9
    nop                                           ; $5050: $00
    jr nc, jr_02c_5053                            ; $5051: $30 $00

jr_02c_5053:
    db $10                                        ; $5053: $10
    db $10                                        ; $5054: $10
    ld [$682c], sp                                ; $5055: $08 $2c $68
    rst $38                                       ; $5058: $ff
    add b                                         ; $5059: $80
    nop                                           ; $505a: $00
    jr nz, @+$72                                  ; $505b: $20 $70

    jr nc, jr_02c_508f                            ; $505d: $30 $30

    jr nz, @-$5e                                  ; $505f: $20 $a0

    rst $38                                       ; $5061: $ff
    ld b, c                                       ; $5062: $41

jr_02c_5063:
    ld c, c                                       ; $5063: $49
    ld d, c                                       ; $5064: $51
    ld e, c                                       ; $5065: $59
    db $d3                                        ; $5066: $d3
    di                                            ; $5067: $f3
    ld h, e                                       ; $5068: $63
    ld h, e                                       ; $5069: $63
    rst $38                                       ; $506a: $ff
    add $e7                                       ; $506b: $c6 $e7
    ld c, d                                       ; $506d: $4a
    ld [hl], l                                    ; $506e: $75
    push de                                       ; $506f: $d5
    ld [$f5ca], a                                 ; $5070: $ea $ca $f5
    rst $38                                       ; $5073: $ff
    push hl                                       ; $5074: $e5
    ld a, [$fd92]                                 ; $5075: $fa $92 $fd
    dec d                                         ; $5078: $15
    sbc d                                         ; $5079: $9a
    jr nz, @+$41                                  ; $507a: $20 $3f

    cp a                                          ; $507c: $bf
    jr nc, jr_02c_50be                            ; $507d: $30 $3f

    and b                                         ; $507f: $a0
    ld h, b                                       ; $5080: $60
    jr nz, jr_02c_5063                            ; $5081: $20 $e0

    db $fc                                        ; $5083: $fc
    push hl                                       ; $5084: $e5
    jr nz, @-$0f                                  ; $5085: $20 $ef

    ldh [rLCDC], a                                ; $5087: $e0 $40
    ret nz                                        ; $5089: $c0

    rst $38                                       ; $508a: $ff
    or [hl]                                       ; $508b: $b6
    ld b, b                                       ; $508c: $40
    cp $02                                        ; $508d: $fe $02

jr_02c_508f:
    ld a, [$06f7]                                 ; $508f: $fa $f7 $06
    db $fc                                        ; $5092: $fc
    inc b                                         ; $5093: $04
    ld e, [hl]                                    ; $5094: $5e
    pop bc                                        ; $5095: $c1
    jp hl                                         ; $5096: $e9


    add hl, de                                    ; $5097: $19
    db $10                                        ; $5098: $10
    jr @+$01                                      ; $5099: $18 $ff

    jr nz, jr_02c_50fd                            ; $509b: $20 $60

    ld h, b                                       ; $509d: $60
    ld h, b                                       ; $509e: $60
    ld b, c                                       ; $509f: $41
    ld b, b                                       ; $50a0: $40
    add c                                         ; $50a1: $81
    ret nz                                        ; $50a2: $c0

    and a                                         ; $50a3: $a7
    inc bc                                        ; $50a4: $03
    add b                                         ; $50a5: $80

jr_02c_50a6:
    ld [bc], a                                    ; $50a6: $02
    sbc c                                         ; $50a7: $99
    pop bc                                        ; $50a8: $c1
    adc d                                         ; $50a9: $8a
    ret nz                                        ; $50aa: $c0

    add b                                         ; $50ab: $80
    ld h, d                                       ; $50ac: $62
    ldh [$38], a                                  ; $50ad: $e0 $38
    rst $38                                       ; $50af: $ff
    nop                                           ; $50b0: $00
    dec hl                                        ; $50b1: $2b
    nop                                           ; $50b2: $00
    ld sp, $2200                                  ; $50b3: $31 $00 $22
    nop                                           ; $50b6: $00
    call z, Call_000_3092                         ; $50b7: $cc $92 $30
    ldh [$2a], a                                  ; $50ba: $e0 $2a
    ld [hl], b                                    ; $50bc: $70
    ret nz                                        ; $50bd: $c0

jr_02c_50be:
    ld l, b                                       ; $50be: $68
    ld hl, $6a61                                  ; $50bf: $21 $61 $6a
    ret nz                                        ; $50c2: $c0

    cp c                                          ; $50c3: $b9
    ret nz                                        ; $50c4: $c0

    nop                                           ; $50c5: $00
    db $dd                                        ; $50c6: $dd
    sbc b                                         ; $50c7: $98
    db $e4                                        ; $50c8: $e4
    ldh [$2a], a                                  ; $50c9: $e0 $2a
    nop                                           ; $50cb: $00
    ld de, $e2d6                                  ; $50cc: $11 $d6 $e2
    ld hl, $7d00                                  ; $50cf: $21 $00 $7d
    ld b, a                                       ; $50d2: $47
    ld d, b                                       ; $50d3: $50
    ldh [rP1], a                                  ; $50d4: $e0 $00
    nop                                           ; $50d6: $00
    call nz, Call_000_1a00                        ; $50d7: $c4 $00 $1a
    adc $e0                                       ; $50da: $ce $e0
    ld a, l                                       ; $50dc: $7d
    inc d                                         ; $50dd: $14
    ld b, c                                       ; $50de: $41
    jr nz, @+$16                                  ; $50df: $20 $14

    nop                                           ; $50e1: $00
    sub h                                         ; $50e2: $94
    nop                                           ; $50e3: $00
    ld d, $30                                     ; $50e4: $16 $30
    ld [c], a                                     ; $50e6: $e2
    ld d, a                                       ; $50e7: $57
    ld c, b                                       ; $50e8: $48
    nop                                           ; $50e9: $00
    ld d, b                                       ; $50ea: $50
    db $10                                        ; $50eb: $10
    ld [c], a                                     ; $50ec: $e2
    ldh [rNR12], a                                ; $50ed: $e0 $12
    ldh [rNR10], a                                ; $50ef: $e0 $10
    ld b, h                                       ; $50f1: $44
    ldh [$dd], a                                  ; $50f2: $e0 $dd
    ld b, $18                                     ; $50f4: $06 $18
    ldh [rP1], a                                  ; $50f6: $e0 $00
    nop                                           ; $50f8: $00
    ld h, b                                       ; $50f9: $60
    ld [hl], h                                    ; $50fa: $74
    ld b, [hl]                                    ; $50fb: $46
    ld b, b                                       ; $50fc: $40

jr_02c_50fd:
    nop                                           ; $50fd: $00
    rst $38                                       ; $50fe: $ff
    add d                                         ; $50ff: $82
    inc bc                                        ; $5100: $03
    add [hl]                                      ; $5101: $86
    add $0c                                       ; $5102: $c6 $0c
    adc [hl]                                      ; $5104: $8e
    inc c                                         ; $5105: $0c
    adc h                                         ; $5106: $8c
    rst $38                                       ; $5107: $ff
    jr jr_02c_50a6                                ; $5108: $18 $9c

    add hl, de                                    ; $510a: $19
    add hl, de                                    ; $510b: $19
    ld sp, $3239                                  ; $510c: $31 $39 $32
    inc sp                                        ; $510f: $33
    rst $38                                       ; $5110: $ff
    ld h, d                                       ; $5111: $62
    ld [hl], e                                    ; $5112: $73
    ld a, a                                       ; $5113: $7f
    ld a, a                                       ; $5114: $7f
    ld a, e                                       ; $5115: $7b
    ld a, h                                       ; $5116: $7c
    sbc a                                         ; $5117: $9f
    ldh [$df], a                                  ; $5118: $e0 $df
    cp a                                          ; $511a: $bf
    ret nz                                        ; $511b: $c0

    ccf                                           ; $511c: $3f
    ret nz                                        ; $511d: $c0

    ld a, a                                       ; $511e: $7f
    ld h, b                                       ; $511f: $60
    ld b, c                                       ; $5120: $41
    ld bc, $f8c0                                  ; $5121: $01 $c0 $f8
    ld h, b                                       ; $5124: $60
    ld l, [hl]                                    ; $5125: $6e
    db $10                                        ; $5126: $10
    ld b, a                                       ; $5127: $47
    and h                                         ; $5128: $a4
    and c                                         ; $5129: $a1
    pop af                                        ; $512a: $f1
    ld de, $33d3                                  ; $512b: $11 $d3 $33
    db $e4                                        ; $512e: $e4
    rst $38                                       ; $512f: $ff
    ld h, $a4                                     ; $5130: $26 $a4
    ld h, h                                       ; $5132: $64
    call z, Call_02c_474c                         ; $5133: $cc $4c $47

jr_02c_5136:
    rst $10                                       ; $5136: $d7
    add b                                         ; $5137: $80
    ld sp, hl                                     ; $5138: $f9
    add [hl]                                      ; $5139: $86
    xor $20                                       ; $513a: $ee $20
    cp h                                          ; $513c: $bc
    and e                                         ; $513d: $a3
    inc b                                         ; $513e: $04
    ld h, [hl]                                    ; $513f: $66
    ld h, [hl]                                    ; $5140: $66
    and d                                         ; $5141: $a2
    db $e3                                        ; $5142: $e3
    rst $08                                       ; $5143: $cf
    ld [hl-], a                                   ; $5144: $32
    ld [hl-], a                                   ; $5145: $32
    inc e                                         ; $5146: $1c
    inc a                                         ; $5147: $3c
    ld h, h                                       ; $5148: $64
    pop hl                                        ; $5149: $e1
    xor h                                         ; $514a: $ac
    dec bc                                        ; $514b: $0b
    dec bc                                        ; $514c: $0b
    nop                                           ; $514d: $00
    ld d, h                                       ; $514e: $54
    ld e, e                                       ; $514f: $5b
    add b                                         ; $5150: $80
    sbc c                                         ; $5151: $99
    ld b, $c0                                     ; $5152: $06 $c0
    jr c, jr_02c_5136                             ; $5154: $38 $e0

    ld hl, $e018                                  ; $5156: $21 $18 $e0
    ld b, $ac                                     ; $5159: $06 $ac
    ret z                                         ; $515b: $c8

    xor $52                                       ; $515c: $ee $52
    pop hl                                        ; $515e: $e1
    add hl, hl                                    ; $515f: $29
    nop                                           ; $5160: $00
    ld l, h                                       ; $5161: $6c
    ld [hl], l                                    ; $5162: $75
    ld [bc], a                                    ; $5163: $02
    ld de, $2300                                  ; $5164: $11 $00 $23
    ld hl, sp+$20                                 ; $5167: $f8 $20
    ld [c], a                                     ; $5169: $e2
    sub $e1                                       ; $516a: $d6 $e1
    ld [bc], a                                    ; $516c: $02
    pop hl                                        ; $516d: $e1
    add b                                         ; $516e: $80
    nop                                           ; $516f: $00
    inc c                                         ; $5170: $0c
    nop                                           ; $5171: $00
    or h                                          ; $5172: $b4
    db $f4                                        ; $5173: $f4
    inc l                                         ; $5174: $2c
    jp nz, $0356                                  ; $5175: $c2 $56 $03

    inc b                                         ; $5178: $04
    rst $38                                       ; $5179: $ff
    pop hl                                        ; $517a: $e1
    ld b, $11                                     ; $517b: $06 $11
    ld de, $ff01                                  ; $517d: $11 $01 $ff
    ld de, $2303                                  ; $5180: $11 $03 $23
    inc bc                                        ; $5183: $03
    inc bc                                        ; $5184: $03
    ld h, $27                                     ; $5185: $26 $27
    ld h, h                                       ; $5187: $64
    rst $38                                       ; $5188: $ff
    ld h, a                                       ; $5189: $67
    push bc                                       ; $518a: $c5
    and $c9                                       ; $518b: $e6 $c9
    adc $8b                                       ; $518d: $ce $8b
    call z, Call_02c_7f93                         ; $518f: $cc $93 $7f
    sbc h                                         ; $5192: $9c
    rla                                           ; $5193: $17
    sbc b                                         ; $5194: $98
    daa                                           ; $5195: $27
    jr c, @+$31                                   ; $5196: $38 $2f

    jr nc, @+$4a                                  ; $5198: $30 $48

    inc hl                                        ; $519a: $23
    call z, $c18e                                 ; $519b: $cc $8e $c1
    call c, $f441                                 ; $519e: $dc $41 $f4
    inc c                                         ; $51a1: $0c
    db $f4                                        ; $51a2: $f4
    add e                                         ; $51a3: $83
    add b                                         ; $51a4: $80
    daa                                           ; $51a5: $27
    ld [hl], b                                    ; $51a6: $70
    ldh a, [rIE]                                  ; $51a7: $f0 $ff

jr_02c_51a9:
    sbc a                                         ; $51a9: $9f
    ld a, a                                       ; $51aa: $7f
    rst $38                                       ; $51ab: $ff
    ccf                                           ; $51ac: $3f
    ldh [rNR42], a                                ; $51ad: $e0 $21
    ldh [rNR41], a                                ; $51af: $e0 $20
    rst $20                                       ; $51b1: $e7
    call c, $e33c                                 ; $51b2: $dc $3c $e3
    ld a, [de]                                    ; $51b5: $1a
    ld b, b                                       ; $51b6: $40
    and c                                         ; $51b7: $a1
    ret nz                                        ; $51b8: $c0

    inc bc                                        ; $51b9: $03
    ldh a, [$f0]                                  ; $51ba: $f0 $f0
    rst $18                                       ; $51bc: $df
    rst $38                                       ; $51bd: $ff
    rst $38                                       ; $51be: $ff
    rrca                                          ; $51bf: $0f
    rra                                           ; $51c0: $1f
    nop                                           ; $51c1: $00
    inc b                                         ; $51c2: $04
    ldh [$3c], a                                  ; $51c3: $e0 $3c
    db $fc                                        ; $51c5: $fc
    ldh a, [$88]                                  ; $51c6: $f0 $88
    add c                                         ; $51c8: $81
    dec a                                         ; $51c9: $3d
    pop hl                                        ; $51ca: $e1
    db $ec                                        ; $51cb: $ec
    push hl                                       ; $51cc: $e5
    sub c                                         ; $51cd: $91
    ld h, c                                       ; $51ce: $61
    ld a, [bc]                                    ; $51cf: $0a
    adc a                                         ; $51d0: $8f
    rrca                                          ; $51d1: $0f
    ld c, a                                       ; $51d2: $4f
    pop af                                        ; $51d3: $f1
    inc sp                                        ; $51d4: $33
    sbc $40                                       ; $51d5: $de $40
    ret c                                         ; $51d7: $d8

    pop hl                                        ; $51d8: $e1
    pop af                                        ; $51d9: $f1
    ld h, c                                       ; $51da: $61
    add b                                         ; $51db: $80
    ret nz                                        ; $51dc: $c0

    nop                                           ; $51dd: $00
    ret nz                                        ; $51de: $c0

    ld a, a                                       ; $51df: $7f
    ld b, b                                       ; $51e0: $40
    jp nz, $ecc0                                  ; $51e1: $c2 $c0 $ec

    jr nc, jr_02c_5216                            ; $51e4: $30 $30

    nop                                           ; $51e6: $00
    sbc h                                         ; $51e7: $9c
    ret nz                                        ; $51e8: $c0

    rst $30                                       ; $51e9: $f7
    add hl, bc                                    ; $51ea: $09
    nop                                           ; $51eb: $00
    rla                                           ; $51ec: $17
    ld d, b                                       ; $51ed: $50
    jp nz, Jump_000_0301                          ; $51ee: $c2 $01 $03

    ld [bc], a                                    ; $51f1: $02
    ld h, $dd                                     ; $51f2: $26 $dd
    ld [bc], a                                    ; $51f4: $02
    add hl, hl                                    ; $51f5: $29
    ldh [$80], a                                  ; $51f6: $e0 $80
    nop                                           ; $51f8: $00
    ld a, [bc]                                    ; $51f9: $0a
    ld [hl], h                                    ; $51fa: $74
    and b                                         ; $51fb: $a0
    ld d, $00                                     ; $51fc: $16 $00
    ei                                            ; $51fe: $fb
    add hl, bc                                    ; $51ff: $09
    add b                                         ; $5200: $80
    cp l                                          ; $5201: $bd
    ld b, h                                       ; $5202: $44
    nop                                           ; $5203: $00
    ld b, c                                       ; $5204: $41
    inc bc                                        ; $5205: $03
    add d                                         ; $5206: $82
    ld [bc], a                                    ; $5207: $02
    rst $38                                       ; $5208: $ff
    add d                                         ; $5209: $82
    ld [bc], a                                    ; $520a: $02
    ld [hl-], a                                   ; $520b: $32
    ld a, [hl-]                                   ; $520c: $3a
    ld [$0408], sp                                ; $520d: $08 $08 $04
    inc b                                         ; $5210: $04
    rst $38                                       ; $5211: $ff
    ld h, $26                                     ; $5212: $26 $26
    ld c, h                                       ; $5214: $4c
    ld c, [hl]                                    ; $5215: $4e

jr_02c_5216:
    inc c                                         ; $5216: $0c
    inc c                                         ; $5217: $0c
    jr jr_02c_5236                                ; $5218: $18 $1c

    ld e, [hl]                                    ; $521a: $5e
    add b                                         ; $521b: $80
    push bc                                       ; $521c: $c5
    ld c, a                                       ; $521d: $4f
    ld [hl], b                                    ; $521e: $70
    ld e, a                                       ; $521f: $5f
    ld h, b                                       ; $5220: $60
    add b                                         ; $5221: $80
    ret z                                         ; $5222: $c8

    nop                                           ; $5223: $00
    jr nc, jr_02c_51a9                            ; $5224: $30 $83

    ld b, $ea                                     ; $5226: $06 $ea
    add a                                         ; $5228: $87
    add e                                         ; $5229: $83
    ld a, a                                       ; $522a: $7f
    halt                                          ; $522b: $76
    dec h                                         ; $522c: $25
    ld d, [hl]                                    ; $522d: $56
    inc bc                                        ; $522e: $03
    ld e, h                                       ; $522f: $5c
    pop hl                                        ; $5230: $e1
    db $ec                                        ; $5231: $ec
    jp hl                                         ; $5232: $e9


    ld c, b                                       ; $5233: $48
    push hl                                       ; $5234: $e5
    ld a, b                                       ; $5235: $78

jr_02c_5236:
    ret c                                         ; $5236: $d8

jr_02c_5237:
    push hl                                       ; $5237: $e5
    inc [hl]                                      ; $5238: $34
    jp hl                                         ; $5239: $e9


    call nz, $02e1                                ; $523a: $c4 $e1 $02
    ld [bc], a                                    ; $523d: $02
    ld bc, $2001                                  ; $523e: $01 $01 $20
    jp hl                                         ; $5241: $e9


    ld c, a                                       ; $5242: $4f
    ld c, b                                       ; $5243: $48
    ld e, b                                       ; $5244: $58
    add h                                         ; $5245: $84
    add $9f                                       ; $5246: $c6 $9f
    add c                                         ; $5248: $81
    inc c                                         ; $5249: $0c
    pop hl                                        ; $524a: $e1
    rlca                                          ; $524b: $07
    inc c                                         ; $524c: $0c
    ldh [rIE], a                                  ; $524d: $e0 $ff
    inc c                                         ; $524f: $0c
    ld e, $10                                     ; $5250: $1e $10
    db $10                                        ; $5252: $10
    db $10                                        ; $5253: $10
    jr jr_02c_5237                                ; $5254: $18 $e1

    jp hl                                         ; $5256: $e9


    rst $38                                       ; $5257: $ff
    ld bc, $0341                                  ; $5258: $01 $41 $03
    inc bc                                        ; $525b: $03
    db $e3                                        ; $525c: $e3
    db $e3                                        ; $525d: $e3
    cp $ff                                        ; $525e: $fe $ff
    ei                                            ; $5260: $fb
    inc e                                         ; $5261: $1c
    ld a, $10                                     ; $5262: $3e $10
    ld h, c                                       ; $5264: $61
    jr c, @-$06                                   ; $5265: $38 $f8

    add a                                         ; $5267: $87
    ld a, a                                       ; $5268: $7f
    ldh a, [rP1]                                  ; $5269: $f0 $00
    jr nz, jr_02c_52cf                            ; $526b: $20 $62

    ld h, b                                       ; $526d: $60
    jp hl                                         ; $526e: $e9


    inc [hl]                                      ; $526f: $34
    ld h, c                                       ; $5270: $61
    nop                                           ; $5271: $00
    nop                                           ; $5272: $00
    nop                                           ; $5273: $00
    dec b                                         ; $5274: $05
    db $10                                        ; $5275: $10
    rst $38                                       ; $5276: $ff
    ldh a, [rP1]                                  ; $5277: $f0 $00
    db $eb                                        ; $5279: $eb
    pop af                                        ; $527a: $f1
    rst $38                                       ; $527b: $ff
    rst $38                                       ; $527c: $ff
    ret nz                                        ; $527d: $c0

    rst $38                                       ; $527e: $ff
    rst $38                                       ; $527f: $ff
    rst $38                                       ; $5280: $ff
    ret nz                                        ; $5281: $c0

    rst $38                                       ; $5282: $ff
    add b                                         ; $5283: $80
    rst $38                                       ; $5284: $ff
    rst $38                                       ; $5285: $ff
    ret nz                                        ; $5286: $c0

    rst $38                                       ; $5287: $ff
    ret nz                                        ; $5288: $c0

    rst $38                                       ; $5289: $ff
    rst $38                                       ; $528a: $ff
    rst $38                                       ; $528b: $ff
    ret nz                                        ; $528c: $c0

    rst $38                                       ; $528d: $ff
    rst $38                                       ; $528e: $ff
    rst $38                                       ; $528f: $ff
    jp Jump_000_21e4                              ; $5290: $c3 $e4 $21


    rst $38                                       ; $5293: $ff
    ld [hl+], a                                   ; $5294: $22
    inc hl                                        ; $5295: $23
    inc h                                         ; $5296: $24
    dec h                                         ; $5297: $25
    ld h, $27                                     ; $5298: $26 $27
    jr z, jr_02c_52c5                             ; $529a: $28 $29

    rst $08                                       ; $529c: $cf
    ld a, [hl+]                                   ; $529d: $2a
    dec hl                                        ; $529e: $2b
    inc l                                         ; $529f: $2c
    dec l                                         ; $52a0: $2d
    ret nz                                        ; $52a1: $c0

    rst $38                                       ; $52a2: $ff
    adc l                                         ; $52a3: $8d
    xor $2e                                       ; $52a4: $ee $2e
    cpl                                           ; $52a6: $2f
    and [hl]                                      ; $52a7: $a6
    rst $38                                       ; $52a8: $ff
    and $30                                       ; $52a9: $e6 $30
    ld sp, $ffc0                                  ; $52ab: $31 $c0 $ff
    ld c, l                                       ; $52ae: $4d
    xor $32                                       ; $52af: $ee $32
    ret nz                                        ; $52b1: $c0

    rst $20                                       ; $52b2: $e7
    inc sp                                        ; $52b3: $33
    db $fc                                        ; $52b4: $fc
    ld b, b                                       ; $52b5: $40
    rst $38                                       ; $52b6: $ff
    ld c, $ee                                     ; $52b7: $0e $ee
    inc [hl]                                      ; $52b9: $34
    dec [hl]                                      ; $52ba: $35
    ld [hl], $37                                  ; $52bb: $36 $37
    jr c, jr_02c_52f8                             ; $52bd: $38 $39

    ld a, a                                       ; $52bf: $7f
    ld a, [hl-]                                   ; $52c0: $3a
    dec sp                                        ; $52c1: $3b
    dec sp                                        ; $52c2: $3b
    inc a                                         ; $52c3: $3c
    inc a                                         ; $52c4: $3c

jr_02c_52c5:
    dec a                                         ; $52c5: $3d
    ld a, $c0                                     ; $52c6: $3e $c0
    rst $38                                       ; $52c8: $ff
    ld e, d                                       ; $52c9: $5a
    adc $ce                                       ; $52ca: $ce $ce
    ccf                                           ; $52cc: $3f
    ld b, c                                       ; $52cd: $41
    pop hl                                        ; $52ce: $e1

jr_02c_52cf:
    ld b, b                                       ; $52cf: $40
    ld b, c                                       ; $52d0: $41
    dec sp                                        ; $52d1: $3b
    ld [c], a                                     ; $52d2: $e2
    ld b, d                                       ; $52d3: $42
    ret nz                                        ; $52d4: $c0

    rst $38                                       ; $52d5: $ff
    ld [hl], $8e                                  ; $52d6: $36 $8e
    adc $43                                       ; $52d8: $ce $43
    ld b, h                                       ; $52da: $44
    nop                                           ; $52db: $00
    and $45                                       ; $52dc: $e6 $45
    ld b, [hl]                                    ; $52de: $46
    ret nz                                        ; $52df: $c0

    rst $38                                       ; $52e0: $ff
    ld c, [hl]                                    ; $52e1: $4e
    adc $97                                       ; $52e2: $ce $97
    ld b, a                                       ; $52e4: $47
    ld c, b                                       ; $52e5: $48
    ld c, c                                       ; $52e6: $49
    cp a                                          ; $52e7: $bf
    push bc                                       ; $52e8: $c5
    ld c, d                                       ; $52e9: $4a
    ld b, b                                       ; $52ea: $40
    rst $18                                       ; $52eb: $df
    rrca                                          ; $52ec: $0f
    rst $08                                       ; $52ed: $cf
    ld c, e                                       ; $52ee: $4b
    rst $38                                       ; $52ef: $ff
    ld c, h                                       ; $52f0: $4c
    ld c, l                                       ; $52f1: $4d
    ld c, [hl]                                    ; $52f2: $4e
    ld c, a                                       ; $52f3: $4f
    ld d, b                                       ; $52f4: $50
    ld d, c                                       ; $52f5: $51
    ld d, d                                       ; $52f6: $52
    ld d, e                                       ; $52f7: $53

jr_02c_52f8:
    rlca                                          ; $52f8: $07
    ld d, h                                       ; $52f9: $54
    ld d, l                                       ; $52fa: $55
    ld d, [hl]                                    ; $52fb: $56
    ret nz                                        ; $52fc: $c0

    rst $38                                       ; $52fd: $ff
    rst $38                                       ; $52fe: $ff
    rst $38                                       ; $52ff: $ff
    ret nz                                        ; $5300: $c0

    rst $38                                       ; $5301: $ff
    ret nz                                        ; $5302: $c0

    rst $38                                       ; $5303: $ff
    rst $38                                       ; $5304: $ff
    rst $38                                       ; $5305: $ff
    nop                                           ; $5306: $00
    ret nz                                        ; $5307: $c0

    rst $38                                       ; $5308: $ff
    rst $38                                       ; $5309: $ff
    rst $38                                       ; $530a: $ff
    ret nz                                        ; $530b: $c0

    rst $38                                       ; $530c: $ff
    rst $38                                       ; $530d: $ff
    rst $38                                       ; $530e: $ff
    ret nz                                        ; $530f: $c0

    rst $38                                       ; $5310: $ff
    rst $38                                       ; $5311: $ff
    rst $38                                       ; $5312: $ff
    ret nz                                        ; $5313: $c0

    rst $38                                       ; $5314: $ff
    call nc, Call_000_00f7                        ; $5315: $d4 $f7 $00
    rst $38                                       ; $5318: $ff
    pop af                                        ; $5319: $f1
    ret                                           ; $531a: $c9


    rst $38                                       ; $531b: $ff
    ret nz                                        ; $531c: $c0

    rst $38                                       ; $531d: $ff
    rst $38                                       ; $531e: $ff
    rst $38                                       ; $531f: $ff
    ld b, b                                       ; $5320: $40
    rst $38                                       ; $5321: $ff
    rst $38                                       ; $5322: $ff
    rst $38                                       ; $5323: $ff
    ret nz                                        ; $5324: $c0

    rst $38                                       ; $5325: $ff
    rst $38                                       ; $5326: $ff
    rst $38                                       ; $5327: $ff
    ld a, $bd                                     ; $5328: $3e $bd
    ld [c], a                                     ; $532a: $e2
    jr nz, jr_02c_5378                            ; $532b: $20 $4b

    ld d, a                                       ; $532d: $57
    ld e, b                                       ; $532e: $58
    ld e, c                                       ; $532f: $59
    ret nz                                        ; $5330: $c0

    rst $38                                       ; $5331: $ff
    db $f4                                        ; $5332: $f4
    di                                            ; $5333: $f3
    rst $38                                       ; $5334: $ff
    ld e, d                                       ; $5335: $5a
    ld e, e                                       ; $5336: $5b
    ld e, h                                       ; $5337: $5c
    ld e, l                                       ; $5338: $5d
    ld e, [hl]                                    ; $5339: $5e
    cpl                                           ; $533a: $2f
    cpl                                           ; $533b: $2f
    ld e, a                                       ; $533c: $5f
    rst $08                                       ; $533d: $cf
    ld h, b                                       ; $533e: $60
    ld h, c                                       ; $533f: $61
    ld h, d                                       ; $5340: $62
    ld h, e                                       ; $5341: $63
    ret nz                                        ; $5342: $c0

    rst $38                                       ; $5343: $ff
    ld c, l                                       ; $5344: $4d
    rst $28                                       ; $5345: $ef
    ld h, h                                       ; $5346: $64
    ld h, l                                       ; $5347: $65
    cp a                                          ; $5348: $bf
    ld h, [hl]                                    ; $5349: $66
    ld h, a                                       ; $534a: $67
    ld l, b                                       ; $534b: $68
    ld l, c                                       ; $534c: $69
    ld l, d                                       ; $534d: $6a
    ld h, l                                       ; $534e: $65
    jr c, jr_02c_53b1                             ; $534f: $38 $60

    ld l, e                                       ; $5351: $6b
    db $fc                                        ; $5352: $fc
    ret nz                                        ; $5353: $c0

    rst $38                                       ; $5354: $ff
    dec c                                         ; $5355: $0d
    rst $28                                       ; $5356: $ef
    ld l, h                                       ; $5357: $6c
    ld l, l                                       ; $5358: $6d
    ld l, [hl]                                    ; $5359: $6e
    ld l, a                                       ; $535a: $6f
    ld [hl], b                                    ; $535b: $70
    ld [hl], c                                    ; $535c: $71
    ccf                                           ; $535d: $3f
    ld [hl], d                                    ; $535e: $72
    ld [hl], e                                    ; $535f: $73
    ld [hl], h                                    ; $5360: $74
    ld [hl], l                                    ; $5361: $75
    halt                                          ; $5362: $76
    ld [hl], a                                    ; $5363: $77
    ret nz                                        ; $5364: $c0

    rst $38                                       ; $5365: $ff
    call $ffce                                    ; $5366: $cd $ce $ff
    ld a, b                                       ; $5369: $78
    ld a, c                                       ; $536a: $79
    ld a, d                                       ; $536b: $7a
    ld a, e                                       ; $536c: $7b
    ld a, h                                       ; $536d: $7c
    ld a, l                                       ; $536e: $7d
    ld a, [hl]                                    ; $536f: $7e
    ld a, a                                       ; $5370: $7f
    sbc a                                         ; $5371: $9f
    add b                                         ; $5372: $80
    add c                                         ; $5373: $81
    add d                                         ; $5374: $82
    add e                                         ; $5375: $83
    add h                                         ; $5376: $84
    ret nz                                        ; $5377: $c0

jr_02c_5378:
    rst $38                                       ; $5378: $ff
    add b                                         ; $5379: $80
    ld c, a                                       ; $537a: $4f
    add l                                         ; $537b: $85
    rst $38                                       ; $537c: $ff
    add [hl]                                      ; $537d: $86
    add a                                         ; $537e: $87
    adc b                                         ; $537f: $88
    adc c                                         ; $5380: $89
    adc d                                         ; $5381: $8a
    adc e                                         ; $5382: $8b
    adc h                                         ; $5383: $8c
    adc l                                         ; $5384: $8d
    rst $20                                       ; $5385: $e7
    adc [hl]                                      ; $5386: $8e
    adc a                                         ; $5387: $8f
    sub b                                         ; $5388: $90
    ret nz                                        ; $5389: $c0

    rst $38                                       ; $538a: $ff
    ld c, l                                       ; $538b: $4d
    adc $91                                       ; $538c: $ce $91
    sub d                                         ; $538e: $92
    sub e                                         ; $538f: $93
    rst $38                                       ; $5390: $ff
    sub h                                         ; $5391: $94
    sub l                                         ; $5392: $95
    sub [hl]                                      ; $5393: $96
    sub a                                         ; $5394: $97
    sbc b                                         ; $5395: $98
    sbc c                                         ; $5396: $99
    sbc d                                         ; $5397: $9a
    sbc e                                         ; $5398: $9b
    ld sp, hl                                     ; $5399: $f9
    sbc h                                         ; $539a: $9c
    add b                                         ; $539b: $80
    rst $18                                       ; $539c: $df
    add b                                         ; $539d: $80
    ld c, a                                       ; $539e: $4f
    sbc l                                         ; $539f: $9d

Call_02c_53a0:
    sbc [hl]                                      ; $53a0: $9e
    sbc a                                         ; $53a1: $9f
    and b                                         ; $53a2: $a0
    and c                                         ; $53a3: $a1
    ld a, a                                       ; $53a4: $7f
    and d                                         ; $53a5: $a2
    and e                                         ; $53a6: $a3
    and h                                         ; $53a7: $a4
    and l                                         ; $53a8: $a5
    and [hl]                                      ; $53a9: $a6
    and a                                         ; $53aa: $a7
    xor b                                         ; $53ab: $a8
    ret nz                                        ; $53ac: $c0

    rst $38                                       ; $53ad: $ff
    cp $80                                        ; $53ae: $fe $80
    ld d, c                                       ; $53b0: $51

jr_02c_53b1:
    xor c                                         ; $53b1: $a9
    xor d                                         ; $53b2: $aa
    xor e                                         ; $53b3: $ab
    xor h                                         ; $53b4: $ac
    xor l                                         ; $53b5: $ad
    xor [hl]                                      ; $53b6: $ae
    xor a                                         ; $53b7: $af
    ld a, c                                       ; $53b8: $79
    sbc e                                         ; $53b9: $9b
    add b                                         ; $53ba: $80
    ld e, a                                       ; $53bb: $5f
    add b                                         ; $53bc: $80
    ld d, a                                       ; $53bd: $57
    xor c                                         ; $53be: $a9
    xor d                                         ; $53bf: $aa
    or b                                          ; $53c0: $b0
    or c                                          ; $53c1: $b1
    add b                                         ; $53c2: $80
    ld e, a                                       ; $53c3: $5f
    nop                                           ; $53c4: $00
    add b                                         ; $53c5: $80
    ld e, a                                       ; $53c6: $5f
    ret nz                                        ; $53c7: $c0

    rst $38                                       ; $53c8: $ff
    add b                                         ; $53c9: $80
    ld e, a                                       ; $53ca: $5f
    rst $38                                       ; $53cb: $ff
    rst $38                                       ; $53cc: $ff
    ret nz                                        ; $53cd: $c0

    sbc a                                         ; $53ce: $9f
    rst $38                                       ; $53cf: $ff
    rst $38                                       ; $53d0: $ff
    ret nz                                        ; $53d1: $c0

    rst $38                                       ; $53d2: $ff
    rst $38                                       ; $53d3: $ff
    rst $38                                       ; $53d4: $ff
    nop                                           ; $53d5: $00
    ret nz                                        ; $53d6: $c0

    rst $38                                       ; $53d7: $ff
    rst $38                                       ; $53d8: $ff
    rst $38                                       ; $53d9: $ff
    ret nz                                        ; $53da: $c0

    rst $38                                       ; $53db: $ff
    rst $38                                       ; $53dc: $ff
    rst $38                                       ; $53dd: $ff
    ret nz                                        ; $53de: $c0

    rst $38                                       ; $53df: $ff
    rst $38                                       ; $53e0: $ff
    rst $38                                       ; $53e1: $ff
    ret nz                                        ; $53e2: $c0

    rst $38                                       ; $53e3: $ff
    rst $38                                       ; $53e4: $ff
    rst $38                                       ; $53e5: $ff
    nop                                           ; $53e6: $00
    ret nz                                        ; $53e7: $c0

    rst $38                                       ; $53e8: $ff
    rst $38                                       ; $53e9: $ff
    rst $38                                       ; $53ea: $ff
    ret nz                                        ; $53eb: $c0

    rst $38                                       ; $53ec: $ff
    ld b, b                                       ; $53ed: $40
    ld e, a                                       ; $53ee: $5f
    rst $38                                       ; $53ef: $ff
    rst $38                                       ; $53f0: $ff
    rst $38                                       ; $53f1: $ff
    rst $38                                       ; $53f2: $ff
    rst $38                                       ; $53f3: $ff
    rst $38                                       ; $53f4: $ff
    rst $38                                       ; $53f5: $ff
    rst $38                                       ; $53f6: $ff
    nop                                           ; $53f7: $00
    rst $38                                       ; $53f8: $ff
    rst $38                                       ; $53f9: $ff
    rst $38                                       ; $53fa: $ff
    rst $38                                       ; $53fb: $ff
    rst $38                                       ; $53fc: $ff
    rst $38                                       ; $53fd: $ff
    rst $38                                       ; $53fe: $ff
    rst $38                                       ; $53ff: $ff
    rst $38                                       ; $5400: $ff
    rst $38                                       ; $5401: $ff
    rst $38                                       ; $5402: $ff
    rst $38                                       ; $5403: $ff
    rst $38                                       ; $5404: $ff
    rst $38                                       ; $5405: $ff
    rst $38                                       ; $5406: $ff
    rst $38                                       ; $5407: $ff
    nop                                           ; $5408: $00
    rst $38                                       ; $5409: $ff
    rst $38                                       ; $540a: $ff
    rst $38                                       ; $540b: $ff
    rst $38                                       ; $540c: $ff
    rst $38                                       ; $540d: $ff
    rst $38                                       ; $540e: $ff
    rst $38                                       ; $540f: $ff
    rst $38                                       ; $5410: $ff
    rst $38                                       ; $5411: $ff
    rst $38                                       ; $5412: $ff
    rst $38                                       ; $5413: $ff
    rst $38                                       ; $5414: $ff
    rst $38                                       ; $5415: $ff
    rst $38                                       ; $5416: $ff
    rst $38                                       ; $5417: $ff
    rst $38                                       ; $5418: $ff
    nop                                           ; $5419: $00
    rst $38                                       ; $541a: $ff

Call_02c_541b:
    rst $38                                       ; $541b: $ff
    rst $38                                       ; $541c: $ff
    rst $38                                       ; $541d: $ff
    rst $38                                       ; $541e: $ff
    rst $38                                       ; $541f: $ff
    rst $38                                       ; $5420: $ff
    rst $38                                       ; $5421: $ff
    rst $38                                       ; $5422: $ff
    rst $38                                       ; $5423: $ff
    rst $38                                       ; $5424: $ff
    rst $38                                       ; $5425: $ff
    rst $38                                       ; $5426: $ff
    rst $38                                       ; $5427: $ff
    rst $38                                       ; $5428: $ff
    rst $38                                       ; $5429: $ff
    nop                                           ; $542a: $00
    rst $38                                       ; $542b: $ff
    rst $38                                       ; $542c: $ff
    rst $38                                       ; $542d: $ff
    rst $38                                       ; $542e: $ff
    rst $38                                       ; $542f: $ff
    rst $38                                       ; $5430: $ff
    rst $38                                       ; $5431: $ff
    rst $38                                       ; $5432: $ff
    rst $38                                       ; $5433: $ff
    rst $38                                       ; $5434: $ff
    rst $38                                       ; $5435: $ff
    rst $38                                       ; $5436: $ff
    rst $38                                       ; $5437: $ff
    rst $38                                       ; $5438: $ff
    rst $38                                       ; $5439: $ff
    rst $38                                       ; $543a: $ff

jr_02c_543b:
    nop                                           ; $543b: $00
    rst $38                                       ; $543c: $ff
    db $fd                                        ; $543d: $fd
    nop                                           ; $543e: $00
    nop                                           ; $543f: $00
    nop                                           ; $5440: $00
    and l                                         ; $5441: $a5
    ld a, [bc]                                    ; $5442: $0a
    rst $38                                       ; $5443: $ff
    ldh a, [$08]                                  ; $5444: $f0 $08
    db $eb                                        ; $5446: $eb
    pop af                                        ; $5447: $f1
    push af                                       ; $5448: $f5
    db $f4                                        ; $5449: $f4
    ld c, d                                       ; $544a: $4a
    rst $38                                       ; $544b: $ff
    ldh a, [$08]                                  ; $544c: $f0 $08
    jr nz, jr_02c_543b                            ; $544e: $20 $eb

    pop af                                        ; $5450: $f1
    push af                                       ; $5451: $f5
    db $f4                                        ; $5452: $f4
    add b                                         ; $5453: $80
    rst $38                                       ; $5454: $ff
    add b                                         ; $5455: $80
    cp $7c                                        ; $5456: $fe $7c
    db $ed                                        ; $5458: $ed
    ld a, [bc]                                    ; $5459: $0a
    add b                                         ; $545a: $80
    pop hl                                        ; $545b: $e1
    rst $20                                       ; $545c: $e7
    push hl                                       ; $545d: $e5
    nop                                           ; $545e: $00
    rst $18                                       ; $545f: $df
    add sp, -$13                                  ; $5460: $e8 $ed
    db $ed                                        ; $5462: $ed
    call nz, $40f1                                ; $5463: $c4 $f1 $40
    db $e3                                        ; $5466: $e3
    adc c                                         ; $5467: $89
    rst $38                                       ; $5468: $ff
    ei                                            ; $5469: $fb
    ld a, [$ff00]                                 ; $546a: $fa $00 $ff
    rst $38                                       ; $546d: $ff
    jp z, $fc00                                   ; $546e: $ca $00 $fc

    call z, $e040                                 ; $5471: $cc $40 $e0
    sbc l                                         ; $5474: $9d
    rst $38                                       ; $5475: $ff
    rst $38                                       ; $5476: $ff
    set 0, c                                      ; $5477: $cb $c1
    db $eb                                        ; $5479: $eb
    add b                                         ; $547a: $80
    jp nz, $ff00                                  ; $547b: $c2 $00 $ff

    db $dd                                        ; $547e: $dd
    db $e4                                        ; $547f: $e4
    jr nc, jr_02c_54b0                            ; $5480: $30 $2e

    rst $08                                       ; $5482: $cf
    add b                                         ; $5483: $80
    rst $38                                       ; $5484: $ff
    rst $38                                       ; $5485: $ff
    xor e                                         ; $5486: $ab
    dec a                                         ; $5487: $3d
    jp nz, Jump_000_0b0b                          ; $5488: $c2 $0b $0b

    pop af                                        ; $548b: $f1
    and $00                                       ; $548c: $e6 $00
    rst $18                                       ; $548e: $df
    nop                                           ; $548f: $00
    db $fd                                        ; $5490: $fd
    or b                                          ; $5491: $b0
    ret nz                                        ; $5492: $c0

    push hl                                       ; $5493: $e5
    xor a                                         ; $5494: $af
    and c                                         ; $5495: $a1
    add b                                         ; $5496: $80
    rst $38                                       ; $5497: $ff
    ld [hl], b                                    ; $5498: $70
    cp b                                          ; $5499: $b8
    add b                                         ; $549a: $80
    call nz, $ff00                                ; $549b: $c4 $00 $ff
    nop                                           ; $549e: $00
    rst $38                                       ; $549f: $ff
    nop                                           ; $54a0: $00
    rst $38                                       ; $54a1: $ff
    rst $38                                       ; $54a2: $ff
    nop                                           ; $54a3: $00
    rst $20                                       ; $54a4: $e7
    ld [hl], c                                    ; $54a5: $71
    xor c                                         ; $54a6: $a9
    nop                                           ; $54a7: $00
    rst $38                                       ; $54a8: $ff
    rst $38                                       ; $54a9: $ff
    adc l                                         ; $54aa: $8d
    ld sp, hl                                     ; $54ab: $f9
    add c                                         ; $54ac: $81
    ld [hl], h                                    ; $54ad: $74
    ld [c], a                                     ; $54ae: $e2
    pop af                                        ; $54af: $f1

jr_02c_54b0:
    and d                                         ; $54b0: $a2
    nop                                           ; $54b1: $00
    add b                                         ; $54b2: $80
    rst $38                                       ; $54b3: $ff
    ld a, a                                       ; $54b4: $7f
    adc l                                         ; $54b5: $8d
    dec [hl]                                      ; $54b6: $35
    db $e4                                        ; $54b7: $e4
    db $f4                                        ; $54b8: $f4
    add d                                         ; $54b9: $82
    nop                                           ; $54ba: $00
    rst $18                                       ; $54bb: $df
    pop hl                                        ; $54bc: $e1
    jp hl                                         ; $54bd: $e9


    add b                                         ; $54be: $80
    sbc a                                         ; $54bf: $9f
    add c                                         ; $54c0: $81
    rst $38                                       ; $54c1: $ff
    add b                                         ; $54c2: $80
    nop                                           ; $54c3: $00
    sbc a                                         ; $54c4: $9f
    nop                                           ; $54c5: $00
    sbc a                                         ; $54c6: $9f
    add b                                         ; $54c7: $80
    rst $38                                       ; $54c8: $ff
    nop                                           ; $54c9: $00
    sbc d                                         ; $54ca: $9a
    dec d                                         ; $54cb: $15
    ld [$ff00], a                                 ; $54cc: $ea $00 $ff
    pop hl                                        ; $54cf: $e1
    rst $20                                       ; $54d0: $e7
    ld [$ff00], sp                                ; $54d1: $08 $00 $ff
    pop af                                        ; $54d4: $f1
    adc c                                         ; $54d5: $89
    rst $38                                       ; $54d6: $ff
    ld d, h                                       ; $54d7: $54
    rst $20                                       ; $54d8: $e7
    cp a                                          ; $54d9: $bf
    pop af                                        ; $54da: $f1
    add hl, bc                                    ; $54db: $09
    rst $38                                       ; $54dc: $ff
    nop                                           ; $54dd: $00
    db $ed                                        ; $54de: $ed
    ld hl, sp-$3e                                 ; $54df: $f8 $c2
    di                                            ; $54e1: $f3
    call nz, $0000                                ; $54e2: $c4 $00 $00
    cp a                                          ; $54e5: $bf
    add b                                         ; $54e6: $80
    rst $08                                       ; $54e7: $cf
    ld a, b                                       ; $54e8: $78
    jp nz, $c471                                  ; $54e9: $c2 $71 $c4

    nop                                           ; $54ec: $00
    cp a                                          ; $54ed: $bf
    nop                                           ; $54ee: $00
    ld [hl], b                                    ; $54ef: $70
    ld a, l                                       ; $54f0: $7d
    and e                                         ; $54f1: $a3
    ret nz                                        ; $54f2: $c0

    ld b, h                                       ; $54f3: $44
    ld b, b                                       ; $54f4: $40
    adc c                                         ; $54f5: $89
    rst $38                                       ; $54f6: $ff
    adc h                                         ; $54f7: $8c
    adc [hl]                                      ; $54f8: $8e
    db $ed                                        ; $54f9: $ed
    xor c                                         ; $54fa: $a9
    nop                                           ; $54fb: $00
    rst $38                                       ; $54fc: $ff
    nop                                           ; $54fd: $00
    ld l, e                                       ; $54fe: $6b
    ei                                            ; $54ff: $fb
    and b                                         ; $5500: $a0
    inc c                                         ; $5501: $0c
    rst $38                                       ; $5502: $ff
    pop hl                                        ; $5503: $e1
    ld sp, $b02c                                  ; $5504: $31 $2c $b0
    ld h, h                                       ; $5507: $64
    add b                                         ; $5508: $80
    rst $38                                       ; $5509: $ff
    jp z, Jump_000_0cad                           ; $550a: $ca $ad $0c

    dec c                                         ; $550d: $0d
    rst $38                                       ; $550e: $ff
    pop hl                                        ; $550f: $e1
    cp e                                          ; $5510: $bb
    pop hl                                        ; $5511: $e1
    nop                                           ; $5512: $00
    nop                                           ; $5513: $00
    ld a, a                                       ; $5514: $7f
    db $fc                                        ; $5515: $fc
    sub c                                         ; $5516: $91
    ret nz                                        ; $5517: $c0

    db $e3                                        ; $5518: $e3
    cp [hl]                                       ; $5519: $be
    pop hl                                        ; $551a: $e1
    add b                                         ; $551b: $80
    sbc a                                         ; $551c: $9f
    nop                                           ; $551d: $00
    ld [hl], b                                    ; $551e: $70
    pop bc                                        ; $551f: $c1
    push hl                                       ; $5520: $e5
    ret nz                                        ; $5521: $c0

    pop hl                                        ; $5522: $e1
    nop                                           ; $5523: $00
    nop                                           ; $5524: $00
    sbc a                                         ; $5525: $9f
    db $fd                                        ; $5526: $fd
    adc a                                         ; $5527: $8f
    ret nz                                        ; $5528: $c0

    rst $20                                       ; $5529: $e7
    nop                                           ; $552a: $00
    rst $38                                       ; $552b: $ff
    rrca                                          ; $552c: $0f
    ld [hl], c                                    ; $552d: $71
    jp nz, $81c0                                  ; $552e: $c2 $c0 $81

    rst $20                                       ; $5531: $e7
    nop                                           ; $5532: $00
    rst $38                                       ; $5533: $ff
    nop                                           ; $5534: $00
    nop                                           ; $5535: $00
    ld l, e                                       ; $5536: $6b
    add d                                         ; $5537: $82
    push bc                                       ; $5538: $c5
    ld a, l                                       ; $5539: $7d
    jp nz, $83ec                                  ; $553a: $c2 $ec $83

    adc d                                         ; $553d: $8a
    rst $38                                       ; $553e: $ff
    ld [bc], a                                    ; $553f: $02
    rst $08                                       ; $5540: $cf
    pop bc                                        ; $5541: $c1
    db $e3                                        ; $5542: $e3
    ld b, b                                       ; $5543: $40
    db $e3                                        ; $5544: $e3
    nop                                           ; $5545: $00
    inc c                                         ; $5546: $0c
    rst $38                                       ; $5547: $ff
    cp $76                                        ; $5548: $fe $76
    ld b, b                                       ; $554a: $40
    ld [c], a                                     ; $554b: $e2
    adc e                                         ; $554c: $8b
    rst $38                                       ; $554d: $ff
    add e                                         ; $554e: $83
    or l                                          ; $554f: $b5
    ret nz                                        ; $5550: $c0

    ld b, e                                       ; $5551: $43
    nop                                           ; $5552: $00
    rst $38                                       ; $5553: $ff
    nop                                           ; $5554: $00
    ld [$fa00], a                                 ; $5555: $ea $00 $fa
    add sp, -$44                                  ; $5558: $e8 $bc
    ld b, d                                       ; $555a: $42
    add b                                         ; $555b: $80
    rst $38                                       ; $555c: $ff
    adc a                                         ; $555d: $8f
    inc c                                         ; $555e: $0c
    cp d                                          ; $555f: $ba
    ld [$df00], a                                 ; $5560: $ea $00 $df
    cp $4c                                        ; $5563: $fe $4c
    ld a, a                                       ; $5565: $7f
    db $ed                                        ; $5566: $ed
    nop                                           ; $5567: $00
    add b                                         ; $5568: $80
    rst $38                                       ; $5569: $ff
    add c                                         ; $556a: $81
    xor e                                         ; $556b: $ab
    dec a                                         ; $556c: $3d
    xor $00                                       ; $556d: $ee $00
    rst $38                                       ; $556f: $ff
    nop                                           ; $5570: $00
    ld e, h                                       ; $5571: $5c
    rst $10                                       ; $5572: $d7
    rst $38                                       ; $5573: $ff
    nop                                           ; $5574: $00
    ld e, e                                       ; $5575: $5b
    db $d3                                        ; $5576: $d3
    rst $38                                       ; $5577: $ff
    nop                                           ; $5578: $00
    nop                                           ; $5579: $00
    ld e, e                                       ; $557a: $5b
    push de                                       ; $557b: $d5
    cp a                                          ; $557c: $bf
    nop                                           ; $557d: $00
    ld e, e                                       ; $557e: $5b
    db $d3                                        ; $557f: $d3
    reti                                          ; $5580: $d9


    nop                                           ; $5581: $00
    ld e, a                                       ; $5582: $5f
    ld b, b                                       ; $5583: $40
    ld d, a                                       ; $5584: $57
    dec l                                         ; $5585: $2d
    rst $38                                       ; $5586: $ff
    db $d3                                        ; $5587: $d3
    rst $38                                       ; $5588: $ff
    nop                                           ; $5589: $00
    jp c, $ffff                                   ; $558a: $da $ff $ff

    rst $38                                       ; $558d: $ff
    rst $38                                       ; $558e: $ff
    ld [de], a                                    ; $558f: $12
    add hl, hl                                    ; $5590: $29
    ld d, d                                       ; $5591: $52
    add d                                         ; $5592: $82
    cp a                                          ; $5593: $bf
    rst $38                                       ; $5594: $ff
    rst $38                                       ; $5595: $ff
    add b                                         ; $5596: $80
    ccf                                           ; $5597: $3f
    ld h, $b6                                     ; $5598: $26 $b6
    nop                                           ; $559a: $00
    ld a, b                                       ; $559b: $78
    xor [hl]                                      ; $559c: $ae
    ret nc                                        ; $559d: $d0

    xor [hl]                                      ; $559e: $ae
    and [hl]                                      ; $559f: $a6
    rst $38                                       ; $55a0: $ff
    ret nc                                        ; $55a1: $d0

    db $fc                                        ; $55a2: $fc
    nop                                           ; $55a3: $00
    or $d0                                        ; $55a4: $f6 $d0
    db $dd                                        ; $55a6: $dd
    rst $30                                       ; $55a7: $f7
    ld c, a                                       ; $55a8: $4f
    db $dd                                        ; $55a9: $dd
    jr c, jr_02c_55ac                             ; $55aa: $38 $00

jr_02c_55ac:
    pop de                                        ; $55ac: $d1
    ld h, a                                       ; $55ad: $67
    rst $38                                       ; $55ae: $ff
    rst $38                                       ; $55af: $ff
    ret nc                                        ; $55b0: $d0

    rst $18                                       ; $55b1: $df
    rst $38                                       ; $55b2: $ff
    rst $38                                       ; $55b3: $ff
    ld d, b                                       ; $55b4: $50
    rst $18                                       ; $55b5: $df
    or b                                          ; $55b6: $b0
    rst $38                                       ; $55b7: $ff
    ld l, h                                       ; $55b8: $6c
    rst $18                                       ; $55b9: $df
    nop                                           ; $55ba: $00
    rst $18                                       ; $55bb: $df
    nop                                           ; $55bc: $00
    ret nz                                        ; $55bd: $c0

    rst $18                                       ; $55be: $df
    sbc b                                         ; $55bf: $98
    ld l, [hl]                                    ; $55c0: $6e
    ld a, [c]                                     ; $55c1: $f2
    rst $30                                       ; $55c2: $f7
    sub b                                         ; $55c3: $90
    rst $38                                       ; $55c4: $ff
    rst $38                                       ; $55c5: $ff
    rst $38                                       ; $55c6: $ff
    nop                                           ; $55c7: $00
    rst $38                                       ; $55c8: $ff
    rst $38                                       ; $55c9: $ff
    rst $38                                       ; $55ca: $ff
    add b                                         ; $55cb: $80
    cp a                                          ; $55cc: $bf
    nop                                           ; $55cd: $00
    rst $38                                       ; $55ce: $ff
    rst $38                                       ; $55cf: $ff
    ld a, a                                       ; $55d0: $7f
    ld [hl], l                                    ; $55d1: $75
    nop                                           ; $55d2: $00
    cp $c0                                        ; $55d3: $fe $c0
    rst $18                                       ; $55d5: $df
    ret nz                                        ; $55d6: $c0

    rst $38                                       ; $55d7: $ff
    or b                                          ; $55d8: $b0
    rst $18                                       ; $55d9: $df
    rst $38                                       ; $55da: $ff
    rst $38                                       ; $55db: $ff
    ld b, d                                       ; $55dc: $42
    inc h                                         ; $55dd: $24
    nop                                           ; $55de: $00
    nop                                           ; $55df: $00
    nop                                           ; $55e0: $00
    ld bc, $ff00                                  ; $55e1: $01 $00 $ff
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
    nop                                           ; $55f1: $00
    rst $38                                       ; $55f2: $ff
    rst $38                                       ; $55f3: $ff
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
    nop                                           ; $5602: $00
    rst $38                                       ; $5603: $ff
    rst $38                                       ; $5604: $ff
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
    nop                                           ; $5613: $00
    rst $38                                       ; $5614: $ff
    rst $38                                       ; $5615: $ff
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
    ldh [rP1], a                                  ; $5623: $e0 $00
    nop                                           ; $5625: $00
    nop                                           ; $5626: $00
    ld bc, $ff00                                  ; $5627: $01 $00 $ff
    rst $38                                       ; $562a: $ff
    rst $38                                       ; $562b: $ff
    rst $38                                       ; $562c: $ff
    rst $38                                       ; $562d: $ff
    rst $38                                       ; $562e: $ff
    rst $38                                       ; $562f: $ff
    rst $38                                       ; $5630: $ff
    rst $38                                       ; $5631: $ff
    rst $38                                       ; $5632: $ff
    rst $38                                       ; $5633: $ff
    rst $38                                       ; $5634: $ff
    rst $38                                       ; $5635: $ff
    rst $38                                       ; $5636: $ff
    nop                                           ; $5637: $00
    rst $38                                       ; $5638: $ff
    rst $38                                       ; $5639: $ff
    rst $38                                       ; $563a: $ff
    rst $38                                       ; $563b: $ff
    rst $38                                       ; $563c: $ff
    rst $38                                       ; $563d: $ff
    rst $38                                       ; $563e: $ff
    rst $38                                       ; $563f: $ff
    rst $38                                       ; $5640: $ff
    rst $38                                       ; $5641: $ff
    rst $38                                       ; $5642: $ff
    rst $38                                       ; $5643: $ff
    rst $38                                       ; $5644: $ff
    rst $38                                       ; $5645: $ff
    rst $38                                       ; $5646: $ff
    rst $38                                       ; $5647: $ff
    nop                                           ; $5648: $00
    rst $38                                       ; $5649: $ff
    rst $38                                       ; $564a: $ff
    rst $38                                       ; $564b: $ff
    rst $38                                       ; $564c: $ff
    rst $38                                       ; $564d: $ff
    rst $38                                       ; $564e: $ff
    rst $38                                       ; $564f: $ff
    rst $38                                       ; $5650: $ff
    rst $38                                       ; $5651: $ff
    rst $38                                       ; $5652: $ff
    rst $38                                       ; $5653: $ff
    rst $38                                       ; $5654: $ff
    rst $38                                       ; $5655: $ff
    rst $38                                       ; $5656: $ff
    rst $38                                       ; $5657: $ff
    rst $38                                       ; $5658: $ff
    nop                                           ; $5659: $00
    rst $38                                       ; $565a: $ff
    rst $38                                       ; $565b: $ff
    rst $38                                       ; $565c: $ff
    rst $38                                       ; $565d: $ff
    rst $38                                       ; $565e: $ff
    rst $38                                       ; $565f: $ff
    rst $38                                       ; $5660: $ff
    rst $38                                       ; $5661: $ff
    rst $38                                       ; $5662: $ff
    rst $38                                       ; $5663: $ff
    rst $38                                       ; $5664: $ff
    rst $38                                       ; $5665: $ff
    rst $38                                       ; $5666: $ff
    rst $38                                       ; $5667: $ff
    rst $38                                       ; $5668: $ff
    ldh [rP1], a                                  ; $5669: $e0 $00
    nop                                           ; $566b: $00
    nop                                           ; $566c: $00
    cp $01                                        ; $566d: $fe $01
    nop                                           ; $566f: $00
    rst $38                                       ; $5670: $ff
    rst $38                                       ; $5671: $ff
    rst $38                                       ; $5672: $ff
    rst $38                                       ; $5673: $ff
    rst $38                                       ; $5674: $ff
    rst $38                                       ; $5675: $ff
    rst $38                                       ; $5676: $ff
    rst $38                                       ; $5677: $ff
    rst $38                                       ; $5678: $ff
    rst $38                                       ; $5679: $ff
    rst $38                                       ; $567a: $ff
    rst $38                                       ; $567b: $ff
    rst $38                                       ; $567c: $ff
    rst $38                                       ; $567d: $ff
    nop                                           ; $567e: $00
    rst $38                                       ; $567f: $ff
    rst $38                                       ; $5680: $ff
    rst $38                                       ; $5681: $ff
    rst $38                                       ; $5682: $ff
    rst $38                                       ; $5683: $ff
    rst $38                                       ; $5684: $ff
    rst $38                                       ; $5685: $ff
    rst $38                                       ; $5686: $ff
    rst $38                                       ; $5687: $ff
    rst $38                                       ; $5688: $ff
    rst $38                                       ; $5689: $ff
    rst $38                                       ; $568a: $ff
    rst $38                                       ; $568b: $ff
    rst $38                                       ; $568c: $ff
    rst $38                                       ; $568d: $ff
    rst $38                                       ; $568e: $ff
    nop                                           ; $568f: $00
    rst $38                                       ; $5690: $ff
    rst $38                                       ; $5691: $ff
    rst $38                                       ; $5692: $ff
    rst $38                                       ; $5693: $ff
    rst $38                                       ; $5694: $ff
    rst $38                                       ; $5695: $ff
    rst $38                                       ; $5696: $ff
    rst $38                                       ; $5697: $ff
    rst $38                                       ; $5698: $ff
    rst $38                                       ; $5699: $ff
    rst $38                                       ; $569a: $ff
    rst $38                                       ; $569b: $ff
    rst $38                                       ; $569c: $ff
    rst $38                                       ; $569d: $ff
    rst $38                                       ; $569e: $ff
    rst $38                                       ; $569f: $ff
    nop                                           ; $56a0: $00
    rst $38                                       ; $56a1: $ff
    rst $38                                       ; $56a2: $ff
    rst $38                                       ; $56a3: $ff
    rst $38                                       ; $56a4: $ff
    rst $38                                       ; $56a5: $ff
    rst $38                                       ; $56a6: $ff
    rst $38                                       ; $56a7: $ff
    rst $38                                       ; $56a8: $ff
    rst $38                                       ; $56a9: $ff
    rst $38                                       ; $56aa: $ff
    rst $38                                       ; $56ab: $ff
    rst $38                                       ; $56ac: $ff
    rst $38                                       ; $56ad: $ff
    rst $38                                       ; $56ae: $ff
    rst $38                                       ; $56af: $ff
    rst $38                                       ; $56b0: $ff
    nop                                           ; $56b1: $00
    rst $38                                       ; $56b2: $ff
    rst $38                                       ; $56b3: $ff
    rst $38                                       ; $56b4: $ff
    rst $38                                       ; $56b5: $ff
    rst $38                                       ; $56b6: $ff
    rst $38                                       ; $56b7: $ff
    rst $38                                       ; $56b8: $ff
    rst $38                                       ; $56b9: $ff
    rst $38                                       ; $56ba: $ff
    rst $38                                       ; $56bb: $ff
    rst $38                                       ; $56bc: $ff
    rst $38                                       ; $56bd: $ff
    rst $38                                       ; $56be: $ff
    rst $38                                       ; $56bf: $ff
    rst $38                                       ; $56c0: $ff
    rst $38                                       ; $56c1: $ff
    nop                                           ; $56c2: $00
    rst $38                                       ; $56c3: $ff
    rst $38                                       ; $56c4: $ff
    rst $38                                       ; $56c5: $ff
    rst $38                                       ; $56c6: $ff
    rst $38                                       ; $56c7: $ff
    rst $38                                       ; $56c8: $ff
    rst $38                                       ; $56c9: $ff
    rst $38                                       ; $56ca: $ff
    rst $38                                       ; $56cb: $ff
    rst $38                                       ; $56cc: $ff
    rst $38                                       ; $56cd: $ff
    rst $38                                       ; $56ce: $ff
    rst $38                                       ; $56cf: $ff
    rst $38                                       ; $56d0: $ff
    rst $38                                       ; $56d1: $ff
    rst $38                                       ; $56d2: $ff
    nop                                           ; $56d3: $00
    rst $38                                       ; $56d4: $ff
    rst $38                                       ; $56d5: $ff
    rst $38                                       ; $56d6: $ff
    rst $38                                       ; $56d7: $ff
    rst $38                                       ; $56d8: $ff
    rst $38                                       ; $56d9: $ff
    rst $38                                       ; $56da: $ff
    rst $38                                       ; $56db: $ff
    rst $38                                       ; $56dc: $ff
    rst $38                                       ; $56dd: $ff
    rst $38                                       ; $56de: $ff
    rst $38                                       ; $56df: $ff
    rst $38                                       ; $56e0: $ff
    rst $38                                       ; $56e1: $ff
    rst $38                                       ; $56e2: $ff
    rst $38                                       ; $56e3: $ff
    nop                                           ; $56e4: $00
    rst $38                                       ; $56e5: $ff
    rst $38                                       ; $56e6: $ff
    rst $38                                       ; $56e7: $ff
    rst $38                                       ; $56e8: $ff
    rst $38                                       ; $56e9: $ff
    rst $38                                       ; $56ea: $ff
    rst $38                                       ; $56eb: $ff
    rst $38                                       ; $56ec: $ff
    rst $38                                       ; $56ed: $ff
    rst $38                                       ; $56ee: $ff
    rst $38                                       ; $56ef: $ff
    db $e4                                        ; $56f0: $e4
    nop                                           ; $56f1: $00
    nop                                           ; $56f2: $00
    nop                                           ; $56f3: $00
    nop                                           ; $56f4: $00
    nop                                           ; $56f5: $00
    nop                                           ; $56f6: $00
    nop                                           ; $56f7: $00
    ccf                                           ; $56f8: $3f
    ccf                                           ; $56f9: $3f
    nop                                           ; $56fa: $00
    nop                                           ; $56fb: $00
    ld hl, sp+$46                                 ; $56fc: $f8 $46
    ld hl, sp+$46                                 ; $56fe: $f8 $46
    rst $08                                       ; $5700: $cf
    add hl, hl                                    ; $5701: $29
    nop                                           ; $5702: $00
    nop                                           ; $5703: $00
    ld [$0825], sp                                ; $5704: $08 $25 $08
    dec h                                         ; $5707: $25
    ld [$0825], sp                                ; $5708: $08 $25 $08
    dec h                                         ; $570b: $25
    and $43                                       ; $570c: $e6 $43
    nop                                           ; $570e: $00
    ld c, e                                       ; $570f: $4b
    ld h, b                                       ; $5710: $60
    ld b, l                                       ; $5711: $45
    ld a, [bc]                                    ; $5712: $0a
    db $10                                        ; $5713: $10
    rst $28                                       ; $5714: $ef
    ld e, a                                       ; $5715: $5f
    and $43                                       ; $5716: $e6 $43
    nop                                           ; $5718: $00
    ld c, e                                       ; $5719: $4b
    ld h, b                                       ; $571a: $60
    ld b, l                                       ; $571b: $45
    ld c, b                                       ; $571c: $48
    ld a, a                                       ; $571d: $7f
    ld c, b                                       ; $571e: $48
    ld a, a                                       ; $571f: $7f
    ld c, b                                       ; $5720: $48
    ld a, a                                       ; $5721: $7f
    ld c, b                                       ; $5722: $48
    ld a, a                                       ; $5723: $7f
    rst $38                                       ; $5724: $ff
    ld a, a                                       ; $5725: $7f
    ld h, b                                       ; $5726: $60
    dec sp                                        ; $5727: $3b
    ld b, b                                       ; $5728: $40
    ld a, $0e                                     ; $5729: $3e $0e
    inc l                                         ; $572b: $2c
    rst $38                                       ; $572c: $ff
    ld a, a                                       ; $572d: $7f
    sbc a                                         ; $572e: $9f
    ld a, l                                       ; $572f: $7d
    inc de                                        ; $5730: $13
    ld h, c                                       ; $5731: $61
    ld c, $2c                                     ; $5732: $0e $2c
    ld [$0825], sp                                ; $5734: $08 $25 $08
    dec h                                         ; $5737: $25
    ld [$0825], sp                                ; $5738: $08 $25 $08
    dec h                                         ; $573b: $25
    ei                                            ; $573c: $fb
    rst $38                                       ; $573d: $ff
    nop                                           ; $573e: $00
    cp $eb                                        ; $573f: $fe $eb
    ld [hl+], a                                   ; $5741: $22
    rst $18                                       ; $5742: $df
    nop                                           ; $5743: $00
    xor a                                         ; $5744: $af
    ld d, b                                       ; $5745: $50
    rst $38                                       ; $5746: $ff
    jp c, $fd25                                   ; $5747: $da $25 $fd

    ld b, d                                       ; $574a: $42
    cp a                                          ; $574b: $bf
    ld [hl+], a                                   ; $574c: $22
    db $fd                                        ; $574d: $fd
    adc b                                         ; $574e: $88
    rst $38                                       ; $574f: $ff
    db $eb                                        ; $5750: $eb
    dec d                                         ; $5751: $15
    rst $30                                       ; $5752: $f7
    push af                                       ; $5753: $f5
    inc bc                                        ; $5754: $03
    and $0e                                       ; $5755: $e6 $0e
    ret c                                         ; $5757: $d8

    rst $38                                       ; $5758: $ff
    add hl, de                                    ; $5759: $19
    pop hl                                        ; $575a: $e1
    daa                                           ; $575b: $27
    and [hl]                                      ; $575c: $a6
    ld l, a                                       ; $575d: $6f
    ret z                                         ; $575e: $c8

    ld e, l                                       ; $575f: $5d
    ld c, h                                       ; $5760: $4c
    rst $38                                       ; $5761: $ff
    db $db                                        ; $5762: $db
    sub b                                         ; $5763: $90
    cp a                                          ; $5764: $bf

jr_02c_5765:
    db $fd                                        ; $5765: $fd
    inc bc                                        ; $5766: $03
    ld a, [$fa02]                                 ; $5767: $fa $02 $fa
    rst $38                                       ; $576a: $ff
    ld b, $f4                                     ; $576b: $06 $f4
    dec b                                         ; $576d: $05
    db $e4                                        ; $576e: $e4
    dec c                                         ; $576f: $0d
    reti                                          ; $5770: $d9


    dec sp                                        ; $5771: $3b
    ld h, d                                       ; $5772: $62
    rst $28                                       ; $5773: $ef
    rst $20                                       ; $5774: $e7
    add h                                         ; $5775: $84
    sbc a                                         ; $5776: $9f
    jr z, @-$2e                                   ; $5777: $28 $d0

    ldh [rP1], a                                  ; $5779: $e0 $00
    jp c, $ff00                                   ; $577b: $da $00 $ff

jr_02c_577e:
    db $fd                                        ; $577e: $fd
    inc b                                         ; $577f: $04
    ei                                            ; $5780: $fb
    ld hl, $46ff                                  ; $5781: $21 $ff $46
    and a                                         ; $5784: $a7
    jr c, jr_02c_577e                             ; $5785: $38 $f7

    cp $4f                                        ; $5787: $fe $4f
    add sp, -$02                                  ; $5789: $e8 $fe
    pop hl                                        ; $578b: $e1
    sub a                                         ; $578c: $97
    ret c                                         ; $578d: $d8

    sub a                                         ; $578e: $97
    ret nc                                        ; $578f: $d0

    cp a                                          ; $5790: $bf
    cpl                                           ; $5791: $2f
    or b                                          ; $5792: $b0
    ld e, a                                       ; $5793: $5f
    ld h, b                                       ; $5794: $60
    sbc a                                         ; $5795: $9f
    ret nz                                        ; $5796: $c0

    and b                                         ; $5797: $a0
    push hl                                       ; $5798: $e5
    cp $ff                                        ; $5799: $fe $ff
    ld bc, $03f1                                  ; $579b: $01 $f1 $03
    and $0f                                       ; $579e: $e6 $0f
    cp b                                          ; $57a0: $b8
    ld a, [hl]                                    ; $57a1: $7e
    ret z                                         ; $57a2: $c8

    rst $38                                       ; $57a3: $ff
    ld l, a                                       ; $57a4: $6f
    jp z, Jump_02c_486d                           ; $57a5: $ca $6d $48

    ld [$dd90], a                                 ; $57a8: $ea $90 $dd
    sub b                                         ; $57ab: $90
    rst $38                                       ; $57ac: $ff
    rst $18                                       ; $57ad: $df
    jr z, jr_02c_5765                             ; $57ae: $28 $b5

    ld b, b                                       ; $57b0: $40
    ld l, e                                       ; $57b1: $6b
    add b                                         ; $57b2: $80
    rst $30                                       ; $57b3: $f7
    rst $38                                       ; $57b4: $ff
    push af                                       ; $57b5: $f5
    nop                                           ; $57b6: $00
    xor [hl]                                      ; $57b7: $ae
    ldh [$03], a                                  ; $57b8: $e0 $03
    xor [hl]                                      ; $57ba: $ae
    ldh [$0d], a                                  ; $57bb: $e0 $0d
    ret                                           ; $57bd: $c9


    dec de                                        ; $57be: $1b
    or d                                          ; $57bf: $b2
    rst $38                                       ; $57c0: $ff
    ld [hl], a                                    ; $57c1: $77
    call nz, $c96f                                ; $57c2: $c4 $6f $c9
    dec c                                         ; $57c5: $0d
    jp nc, $d21b                                  ; $57c6: $d2 $1b $d2

    rst $38                                       ; $57c9: $ff
    dec sp                                        ; $57ca: $3b
    db $e4                                        ; $57cb: $e4
    scf                                           ; $57cc: $37
    db $e4                                        ; $57cd: $e4
    scf                                           ; $57ce: $37
    and [hl]                                      ; $57cf: $a6
    ld [hl], l                                    ; $57d0: $75
    ret z                                         ; $57d1: $c8

    rst $28                                       ; $57d2: $ef
    ld l, a                                       ; $57d3: $6f
    ret z                                         ; $57d4: $c8

    ld l, a                                       ; $57d5: $6f
    ld sp, hl                                     ; $57d6: $f9
    add b                                         ; $57d7: $80
    pop hl                                        ; $57d8: $e1
    add hl, sp                                    ; $57d9: $39
    pop hl                                        ; $57da: $e1
    rst $20                                       ; $57db: $e7
    rst $38                                       ; $57dc: $ff
    ld b, $1f                                     ; $57dd: $06 $1f
    add hl, de                                    ; $57df: $19
    rst $38                                       ; $57e0: $ff
    ld [c], a                                     ; $57e1: $e2
    db $fd                                        ; $57e2: $fd
    db $10                                        ; $57e3: $10
    ld a, [$fbff]                                 ; $57e4: $fa $ff $fb
    nop                                           ; $57e7: $00
    rst $30                                       ; $57e8: $f7
    rlca                                          ; $57e9: $07
    ret c                                         ; $57ea: $d8

    rra                                           ; $57eb: $1f

jr_02c_57ec:
    ldh [$78], a                                  ; $57ec: $e0 $78
    rst $38                                       ; $57ee: $ff
    add a                                         ; $57ef: $87
    rst $20                                       ; $57f0: $e7
    ld a, [de]                                    ; $57f1: $1a
    sbc l                                         ; $57f2: $9d
    ld h, b                                       ; $57f3: $60
    ld a, d                                       ; $57f4: $7a
    add b                                         ; $57f5: $80
    db $fd                                        ; $57f6: $fd
    db $fc                                        ; $57f7: $fc
    jp nc, $d0e0                                  ; $57f8: $d2 $e0 $d0

    pop hl                                        ; $57fb: $e1
    rst $30                                       ; $57fc: $f7
    inc b                                         ; $57fd: $04
    rst $28                                       ; $57fe: $ef
    jr jr_02c_581e                                ; $57ff: $18 $1d

    ldh [$f7], a                                  ; $5801: $e0 $f7
    rst $28                                       ; $5803: $ef
    nop                                           ; $5804: $00
    rst $10                                       ; $5805: $d7
    ldh [$e0], a                                  ; $5806: $e0 $e0
    rrca                                          ; $5808: $0f
    ret c                                         ; $5809: $d8

    jr c, jr_02c_57ec                             ; $580a: $38 $e0

    rst $38                                       ; $580c: $ff
    scf                                           ; $580d: $37
    and a                                         ; $580e: $a7
    ld l, a                                       ; $580f: $6f
    ret z                                         ; $5810: $c8

    ld e, a                                       ; $5811: $5f
    ret z                                         ; $5812: $c8

    ld e, d                                       ; $5813: $5a
    ret z                                         ; $5814: $c8

    rst $38                                       ; $5815: $ff
    ld e, l                                       ; $5816: $5d
    nop                                           ; $5817: $00
    rst $38                                       ; $5818: $ff
    db $10                                        ; $5819: $10
    ld a, [$ad00]                                 ; $581a: $fa $00 $ad
    nop                                           ; $581d: $00

jr_02c_581e:
    rst $38                                       ; $581e: $ff
    rst $18                                       ; $581f: $df
    db $e4                                        ; $5820: $e4

jr_02c_5821:
    rst $38                                       ; $5821: $ff
    jr jr_02c_5821                                ; $5822: $18 $fd

    inc b                                         ; $5824: $04

jr_02c_5825:
    rra                                           ; $5825: $1f
    ld [c], a                                     ; $5826: $e2
    db $fd                                        ; $5827: $fd
    rst $20                                       ; $5828: $e7
    db $10                                        ; $5829: $10
    push hl                                       ; $582a: $e5
    rst $28                                       ; $582b: $ef
    ldh a, [rNR31]                                ; $582c: $f0 $1b
    db $fc                                        ; $582e: $fc
    dec b                                         ; $582f: $05
    ld e, $ff                                     ; $5830: $1e $ff
    db $e3                                        ; $5832: $e3

jr_02c_5833:
    and $4f                                       ; $5833: $e6 $4f
    add sp, -$71                                  ; $5835: $e8 $8f
    ret z                                         ; $5837: $c8

    cpl                                           ; $5838: $2f
    sbc b                                         ; $5839: $98
    rst $28                                       ; $583a: $ef
    rla                                           ; $583b: $17
    jr c, jr_02c_5825                             ; $583c: $38 $e7

    ldh a, [$f6]                                  ; $583e: $f0 $f6
    jp Jump_02c_6fc8                              ; $5840: $c3 $c8 $6f


jr_02c_5843:
    ld [$cdff], a                                 ; $5843: $ea $ff $cd
    ld c, b                                       ; $5846: $48
    sbc d                                         ; $5847: $9a
    db $10                                        ; $5848: $10
    dec a                                         ; $5849: $3d
    ldh [rIE], a                                  ; $584a: $e0 $ff
    jr nz, @+$01                                  ; $584c: $20 $ff

    db $fd                                        ; $584e: $fd
    ld [de], a                                    ; $584f: $12
    db $eb                                        ; $5850: $eb
    nop                                           ; $5851: $00
    rst $30                                       ; $5852: $f7
    sub e                                         ; $5853: $93
    cp b                                          ; $5854: $b8
    cpl                                           ; $5855: $2f
    rst $30                                       ; $5856: $f7
    ld h, b                                       ; $5857: $60
    ld e, a                                       ; $5858: $5f
    ret nz                                        ; $5859: $c0

    jr c, jr_02c_5843                             ; $585a: $38 $e7

    ld [$309f], sp                                ; $585c: $08 $9f $30
    ld a, a                                       ; $585f: $7f
    rst $38                                       ; $5860: $ff
    ld d, b                                       ; $5861: $50
    ld l, d                                       ; $5862: $6a
    ld b, h                                       ; $5863: $44
    db $fd                                        ; $5864: $fd
    add b                                         ; $5865: $80
    rst $38                                       ; $5866: $ff
    jr z, @-$09                                   ; $5867: $28 $f5

    ld sp, hl                                     ; $5869: $f9
    nop                                           ; $586a: $00
    ldh [$e0], a                                  ; $586b: $e0 $e0
    ret nz                                        ; $586d: $c0

    jp Jump_000_01fc                              ; $586e: $c3 $fc $01


    db $e3                                        ; $5871: $e3
    rlca                                          ; $5872: $07
    sbc h                                         ; $5873: $9c
    ld e, a                                       ; $5874: $5f
    inc a                                         ; $5875: $3c
    ld h, b                                       ; $5876: $60
    db $e3                                        ; $5877: $e3
    add e                                         ; $5878: $83
    sbc a                                         ; $5879: $9f
    ld d, b                                       ; $587a: $50

jr_02c_587b:
    pop hl                                        ; $587b: $e1
    sbc b                                         ; $587c: $98

jr_02c_587d:
    ld d, b                                       ; $587d: $50
    ld [c], a                                     ; $587e: $e2
    rst $38                                       ; $587f: $ff
    jr jr_02c_587d                                ; $5880: $18 $fb

    ld [c], a                                     ; $5882: $e2
    push af                                       ; $5883: $f5
    nop                                           ; $5884: $00
    rst $38                                       ; $5885: $ff
    cp $01                                        ; $5886: $fe $01
    rst $38                                       ; $5888: $ff
    rst $20                                       ; $5889: $e7
    rrca                                          ; $588a: $0f
    ret c                                         ; $588b: $d8

    ccf                                           ; $588c: $3f
    ld h, b                                       ; $588d: $60
    ld hl, sp-$79                                 ; $588e: $f8 $87
    rst $20                                       ; $5890: $e7
    ei                                            ; $5891: $fb
    jr jr_02c_5833                                ; $5892: $18 $9f

    ld d, b                                       ; $5894: $50
    pop hl                                        ; $5895: $e1
    pop bc                                        ; $5896: $c1
    ld sp, hl                                     ; $5897: $f9
    ld b, $c7                                     ; $5898: $06 $c7
    jr c, jr_02c_591b                             ; $589a: $38 $7f

    ld a, [hl-]                                   ; $589c: $3a
    ret nz                                        ; $589d: $c0

    db $dd                                        ; $589e: $dd
    inc b                                         ; $589f: $04

jr_02c_58a0:
    ei                                            ; $58a0: $fb
    jr nz, jr_02c_58a0                            ; $58a1: $20 $fd

    ret nz                                        ; $58a3: $c0

    push hl                                       ; $58a4: $e5
    rst $18                                       ; $58a5: $df
    cp $01                                        ; $58a6: $fe $01
    rst $38                                       ; $58a8: $ff
    ld bc, $faf9                                  ; $58a9: $01 $f9 $fa

jr_02c_58ac:
    pop bc                                        ; $58ac: $c1
    rlca                                          ; $58ad: $07
    db $f4                                        ; $58ae: $f4
    rst $38                                       ; $58af: $ff
    ld b, $48                                     ; $58b0: $06 $48
    rst $28                                       ; $58b2: $ef
    sub b                                         ; $58b3: $90
    jp c, $dd90                                   ; $58b4: $da $90 $dd

    inc h                                         ; $58b7: $24
    sbc a                                         ; $58b8: $9f
    xor e                                         ; $58b9: $ab
    jr nz, jr_02c_587b                            ; $58ba: $20 $bf

    ld d, b                                       ; $58bc: $50
    ld a, l                                       ; $58bd: $7d
    ldh [$c3], a                                  ; $58be: $e0 $c3
    ld e, [hl]                                    ; $58c0: $5e
    jp $ffe7                                      ; $58c1: $c3 $e7 $ff


    rrca                                          ; $58c4: $0f
    sbc b                                         ; $58c5: $98
    jr c, jr_02c_5928                             ; $58c6: $38 $60

    rst $20                                       ; $58c8: $e7
    add a                                         ; $58c9: $87
    sbc a                                         ; $58ca: $9f
    ld [$ffff], sp                                ; $58cb: $08 $ff $ff
    nop                                           ; $58ce: $00
    xor a                                         ; $58cf: $af
    jr nz, jr_02c_58ac                            ; $58d0: $20 $da

    ld b, b                                       ; $58d2: $40
    db $ed                                        ; $58d3: $ed
    rlca                                          ; $58d4: $07
    rst $30                                       ; $58d5: $f7
    rst $38                                       ; $58d6: $ff
    jr @-$06                                      ; $58d7: $18 $f8

    ldh a, [$e1]                                  ; $58d9: $f0 $e1
    dec bc                                        ; $58db: $0b
    sbc h                                         ; $58dc: $9c
    inc sp                                        ; $58dd: $33
    ld a, b                                       ; $58de: $78
    cp l                                          ; $58df: $bd
    ld b, a                                       ; $58e0: $47
    ld e, [hl]                                    ; $58e1: $5e
    ldh [$bf], a                                  ; $58e2: $e0 $bf
    ret nz                                        ; $58e4: $c0

    ld a, a                                       ; $58e5: $7f
    add b                                         ; $58e6: $80
    inc [hl]                                      ; $58e7: $34
    pop bc                                        ; $58e8: $c1
    sub b                                         ; $58e9: $90
    rst $38                                       ; $58ea: $ff
    or a                                          ; $58eb: $b7
    inc h                                         ; $58ec: $24
    ld l, a                                       ; $58ed: $6f
    ld b, h                                       ; $58ee: $44
    ei                                            ; $58ef: $fb
    add b                                         ; $58f0: $80
    rst $38                                       ; $58f1: $ff
    ld b, b                                       ; $58f2: $40
    rst $28                                       ; $58f3: $ef
    cp a                                          ; $58f4: $bf
    ld [bc], a                                    ; $58f5: $02
    ld e, e                                       ; $58f6: $5b
    ld [hl+], a                                   ; $58f7: $22
    add b                                         ; $58f8: $80
    ldh [rOBP0], a                                ; $58f9: $e0 $48
    rst $08                                       ; $58fb: $cf
    ld c, b                                       ; $58fc: $48
    rst $38                                       ; $58fd: $ff
    rst $18                                       ; $58fe: $df
    sub h                                         ; $58ff: $94
    cp c                                          ; $5900: $b9
    sub b                                         ; $5901: $90
    cp e                                          ; $5902: $bb
    sub b                                         ; $5903: $90
    cp a                                          ; $5904: $bf
    ld d, b                                       ; $5905: $50
    rst $38                                       ; $5906: $ff
    db $fd                                        ; $5907: $fd
    ld c, b                                       ; $5908: $48
    rst $18                                       ; $5909: $df
    ld c, d                                       ; $590a: $4a
    rst $08                                       ; $590b: $cf
    sub b                                         ; $590c: $90
    sbc a                                         ; $590d: $9f
    sub b                                         ; $590e: $90
    rst $38                                       ; $590f: $ff
    rst $18                                       ; $5910: $df
    ld c, b                                       ; $5911: $48
    ld [$6d4a], a                                 ; $5912: $ea $4a $6d
    ld c, b                                       ; $5915: $48
    ld l, a                                       ; $5916: $6f
    ld d, b                                       ; $5917: $50
    rst $38                                       ; $5918: $ff
    push af                                       ; $5919: $f5
    sub b                                         ; $591a: $90

jr_02c_591b:
    rst $10                                       ; $591b: $d7
    sub d                                         ; $591c: $92
    sub a                                         ; $591d: $97
    ld c, e                                       ; $591e: $4b
    ret z                                         ; $591f: $c8

    ld c, e                                       ; $5920: $4b
    rst $38                                       ; $5921: $ff
    ret c                                         ; $5922: $d8

    sub a                                         ; $5923: $97
    cp b                                          ; $5924: $b8
    sub a                                         ; $5925: $97
    or b                                          ; $5926: $b0
    sub a                                         ; $5927: $97

jr_02c_5928:
    or b                                          ; $5928: $b0
    ld d, a                                       ; $5929: $57
    rst $38                                       ; $592a: $ff
    ret c                                         ; $592b: $d8

    ld c, e                                       ; $592c: $4b
    ret c                                         ; $592d: $d8

    ld c, e                                       ; $592e: $4b
    ret z                                         ; $592f: $c8

    sub a                                         ; $5930: $97
    sub b                                         ; $5931: $90
    sub a                                         ; $5932: $97
    db $fd                                        ; $5933: $fd
    ret c                                         ; $5934: $d8

    inc a                                         ; $5935: $3c
    ret nz                                        ; $5936: $c0

    ld l, b                                       ; $5937: $68
    ld c, a                                       ; $5938: $4f
    ld l, b                                       ; $5939: $68
    ld d, a                                       ; $593a: $57
    ld hl, sp-$61                                 ; $593b: $f8 $9f
    rst $30                                       ; $593d: $f7
    ret nc                                        ; $593e: $d0

    sbc a                                         ; $593f: $9f
    sub b                                         ; $5940: $90
    ldh [$a3], a                                  ; $5941: $e0 $a3
    cp l                                          ; $5943: $bd
    ld a, [hl]                                    ; $5944: $7e
    jp $9fff                                      ; $5945: $c3 $ff $9f


    nop                                           ; $5948: $00
    jp Jump_000_3c3c                              ; $5949: $c3 $3c $3c


    jp $e0f9                                      ; $594c: $c3 $f9 $e0


    ld [hl], d                                    ; $594f: $72
    ld [c], a                                     ; $5950: $e2
    halt                                          ; $5951: $76
    ld a, a                                       ; $5952: $7f
    sbc c                                         ; $5953: $99
    rst $38                                       ; $5954: $ff
    nop                                           ; $5955: $00
    sbc c                                         ; $5956: $99
    ld h, [hl]                                    ; $5957: $66
    ld h, [hl]                                    ; $5958: $66
    sbc c                                         ; $5959: $99
    ld [hl], b                                    ; $595a: $70
    ldh [$bf], a                                  ; $595b: $e0 $bf
    ld [bc], a                                    ; $595d: $02
    xor l                                         ; $595e: $ad
    ld [bc], a                                    ; $595f: $02
    jp c, $fd3c                                   ; $5960: $da $3c $fd

    ldh [$e4], a                                  ; $5963: $e0 $e4
    ei                                            ; $5965: $fb
    cp [hl]                                       ; $5966: $be
    ldh a, [$e0]                                  ; $5967: $f0 $e0
    xor a                                         ; $5969: $af
    nop                                           ; $596a: $00
    reti                                          ; $596b: $d9


    halt                                          ; $596c: $76
    rst $28                                       ; $596d: $ef
    ldh [$e4], a                                  ; $596e: $e0 $e4
    rst $18                                       ; $5970: $df
    rst $18                                       ; $5971: $df
    ld bc, $0603                                  ; $5972: $01 $03 $06
    ld c, $18                                     ; $5975: $0e $18
    ldh a, [$c8]                                  ; $5977: $f0 $c8
    dec de                                        ; $5979: $1b
    ld a, b                                       ; $597a: $78
    rst $20                                       ; $597b: $e7
    ld h, a                                       ; $597c: $67
    ldh [$df], a                                  ; $597d: $e0 $df
    ld d, [hl]                                    ; $597f: $56
    ld [c], a                                     ; $5980: $e2
    add [hl]                                      ; $5981: $86
    and e                                         ; $5982: $a3
    ld d, b                                       ; $5983: $50
    xor a                                         ; $5984: $af
    dec h                                         ; $5985: $25
    rst $38                                       ; $5986: $ff
    jp c, $b807                                   ; $5987: $da $07 $b8

    rlca                                          ; $598a: $07
    db $fd                                        ; $598b: $fd
    and d                                         ; $598c: $a2
    ld e, a                                       ; $598d: $5f
    ldh [rIE], a                                  ; $598e: $e0 $ff
    rla                                           ; $5990: $17
    push hl                                       ; $5991: $e5
    cp d                                          ; $5992: $ba
    ld b, d                                       ; $5993: $42
    db $fd                                        ; $5994: $fd
    db $fd                                        ; $5995: $fd
    db $fd                                        ; $5996: $fd
    rst $18                                       ; $5997: $df
    rst $38                                       ; $5998: $ff
    rst $38                                       ; $5999: $ff
    ei                                            ; $599a: $fb
    rst $38                                       ; $599b: $ff
    rst $38                                       ; $599c: $ff
    rst $38                                       ; $599d: $ff
    ld a, l                                       ; $599e: $7d
    rst $38                                       ; $599f: $ff
    rst $28                                       ; $59a0: $ef
    ei                                            ; $59a1: $fb
    rst $28                                       ; $59a2: $ef
    rst $38                                       ; $59a3: $ff
    or $e0                                        ; $59a4: $f6 $e0
    xor l                                         ; $59a6: $ad
    rst $28                                       ; $59a7: $ef
    halt                                          ; $59a8: $76
    rst $38                                       ; $59a9: $ff
    and $fe                                       ; $59aa: $e6 $fe
    xor $e0                                       ; $59ac: $ee $e0
    db $e4                                        ; $59ae: $e4
    db $eb                                        ; $59af: $eb
    ld [hl], h                                    ; $59b0: $74
    rst $30                                       ; $59b1: $f7
    ld c, b                                       ; $59b2: $48
    rst $38                                       ; $59b3: $ff
    add b                                         ; $59b4: $80
    rst $38                                       ; $59b5: $ff
    cp e                                          ; $59b6: $bb
    db $eb                                        ; $59b7: $eb
    rst $38                                       ; $59b8: $ff
    ld a, h                                       ; $59b9: $7c
    rst $38                                       ; $59ba: $ff
    ld d, b                                       ; $59bb: $50
    rst $10                                       ; $59bc: $d7
    xor h                                         ; $59bd: $ac
    db $fd                                        ; $59be: $fd
    db $eb                                        ; $59bf: $eb
    ld h, a                                       ; $59c0: $67
    pop hl                                        ; $59c1: $e1
    ld b, b                                       ; $59c2: $40
    or l                                          ; $59c3: $b5
    nop                                           ; $59c4: $00
    ei                                            ; $59c5: $fb
    ld bc, $ffff                                  ; $59c6: $01 $ff $ff
    ld [bc], a                                    ; $59c9: $02
    rst $10                                       ; $59ca: $d7
    db $10                                        ; $59cb: $10
    db $ed                                        ; $59cc: $ed
    dec b                                         ; $59cd: $05
    rst $38                                       ; $59ce: $ff
    inc bc                                        ; $59cf: $03
    rst $38                                       ; $59d0: $ff
    rst $38                                       ; $59d1: $ff
    ld a, [hl+]                                   ; $59d2: $2a
    jp c, $bd08                                   ; $59d3: $da $08 $bd

    dec d                                         ; $59d6: $15
    rst $38                                       ; $59d7: $ff
    ld c, $ff                                     ; $59d8: $0e $ff
    rst $38                                       ; $59da: $ff
    ld b, l                                       ; $59db: $45
    rst $30                                       ; $59dc: $f7
    ld a, [bc]                                    ; $59dd: $0a
    cp $25                                        ; $59de: $fe $25
    rst $28                                       ; $59e0: $ef
    sbc e                                         ; $59e1: $9b
    rst $30                                       ; $59e2: $f7
    rst $38                                       ; $59e3: $ff
    ld e, $ff                                     ; $59e4: $1e $ff
    halt                                          ; $59e6: $76
    cp [hl]                                       ; $59e7: $be
    db $db                                        ; $59e8: $db
    rst $38                                       ; $59e9: $ff
    cp $ff                                        ; $59ea: $fe $ff
    rst $38                                       ; $59ec: $ff
    push af                                       ; $59ed: $f5
    push af                                       ; $59ee: $f5
    ld l, b                                       ; $59ef: $68
    rst $28                                       ; $59f0: $ef
    call nc, $b8ff                                ; $59f1: $d4 $ff $b8
    xor a                                         ; $59f4: $af
    rst $38                                       ; $59f5: $ff
    ret nc                                        ; $59f6: $d0

    jp c, $fda5                                   ; $59f7: $da $a5 $fd

    ld d, d                                       ; $59fa: $52
    rst $38                                       ; $59fb: $ff
    ld [bc], a                                    ; $59fc: $02
    ei                                            ; $59fd: $fb
    rst $38                                       ; $59fe: $ff
    ld b, l                                       ; $59ff: $45
    xor a                                         ; $5a00: $af
    ld d, [hl]                                    ; $5a01: $56
    jp c, $fe22                                   ; $5a02: $da $22 $fe

    dec b                                         ; $5a05: $05
    rst $38                                       ; $5a06: $ff
    rst $38                                       ; $5a07: $ff
    ld h, $fd                                     ; $5a08: $26 $fd

jr_02c_5a0a:
    inc bc                                        ; $5a0a: $03
    cp e                                          ; $5a0b: $bb
    ld bc, $b9fd                                  ; $5a0c: $01 $fd $b9
    ei                                            ; $5a0f: $fb
    rst $38                                       ; $5a10: $ff
    ld [hl], h                                    ; $5a11: $74
    rst $10                                       ; $5a12: $d7
    ld a, [hl+]                                   ; $5a13: $2a
    db $ed                                        ; $5a14: $ed
    ld [bc], a                                    ; $5a15: $02
    rst $38                                       ; $5a16: $ff
    jr nz, @-$24                                  ; $5a17: $20 $da

    cp $da                                        ; $5a19: $fe $da
    and c                                         ; $5a1b: $a1

jr_02c_5a1c:
    nop                                           ; $5a1c: $00
    ei                                            ; $5a1d: $fb
    call c, $faff                                 ; $5a1e: $dc $ff $fa
    ei                                            ; $5a21: $fb
    db $f4                                        ; $5a22: $f4
    rst $38                                       ; $5a23: $ff
    rst $38                                       ; $5a24: $ff
    and $eb                                       ; $5a25: $e6 $eb
    db $f4                                        ; $5a27: $f4
    rst $30                                       ; $5a28: $f7
    ld l, b                                       ; $5a29: $68
    rst $38                                       ; $5a2a: $ff
    jp nc, $fffb                                  ; $5a2b: $d2 $fb $ff

    add sp, $76                                   ; $5a2e: $e8 $76
    ldh [$fa], a                                  ; $5a30: $e0 $fa
    cp $ad                                        ; $5a32: $fe $ad
    db $fd                                        ; $5a34: $fd
    ld e, e                                       ; $5a35: $5b
    rst $08                                       ; $5a36: $cf
    rst $18                                       ; $5a37: $df

jr_02c_5a38:
    adc b                                         ; $5a38: $88
    push af                                       ; $5a39: $f5
    db $10                                        ; $5a3a: $10
    push de                                       ; $5a3b: $d5
    add d                                         ; $5a3c: $82
    halt                                          ; $5a3d: $76
    ret nz                                        ; $5a3e: $c0

    jr jr_02c_5a1c                                ; $5a3f: $18 $db

    rst $38                                       ; $5a41: $ff
    inc a                                         ; $5a42: $3c
    and l                                         ; $5a43: $a5
    ld a, [hl]                                    ; $5a44: $7e
    jp $c366                                      ; $5a45: $c3 $66 $c3


    ld h, [hl]                                    ; $5a48: $66
    sbc c                                         ; $5a49: $99

jr_02c_5a4a:
    db $fd                                        ; $5a4a: $fd
    ld b, d                                       ; $5a4b: $42
    jp nz, $b781                                  ; $5a4c: $c2 $81 $b7

    ld a, b                                       ; $5a4f: $78
    adc e                                         ; $5a50: $8b
    inc a                                         ; $5a51: $3c
    push bc                                       ; $5a52: $c5
    ld c, $bf                                     ; $5a53: $0e $bf
    push bc                                       ; $5a55: $c5
    ld c, $8b                                     ; $5a56: $0e $8b
    inc a                                         ; $5a58: $3c
    or a                                          ; $5a59: $b7
    ld a, b                                       ; $5a5a: $78
    or d                                          ; $5a5b: $b2
    add c                                         ; $5a5c: $81
    rst $18                                       ; $5a5d: $df
    rst $38                                       ; $5a5e: $ff
    ld a, $e7                                     ; $5a5f: $3e $e7
    ld a, [hl]                                    ; $5a61: $7e
    inc bc                                        ; $5a62: $03
    adc $33                                       ; $5a63: $ce $33
    add [hl]                                      ; $5a65: $86
    push af                                       ; $5a66: $f5
    rst $18                                       ; $5a67: $df
    ld b, $e7                                     ; $5a68: $06 $e7
    inc c                                         ; $5a6a: $0c
    rst $20                                       ; $5a6b: $e7
    jr @-$68                                      ; $5a6c: $18 $96

    and b                                         ; $5a6e: $a0
    db $10                                        ; $5a6f: $10
    rst $10                                       ; $5a70: $d7
    ld a, a                                       ; $5a71: $7f
    jr c, @-$53                                   ; $5a72: $38 $ab

    ld a, h                                       ; $5a74: $7c
    rst $00                                       ; $5a75: $c7
    ld l, h                                       ; $5a76: $6c
    sub e                                         ; $5a77: $93
    ld b, h                                       ; $5a78: $44
    sub h                                         ; $5a79: $94
    add l                                         ; $5a7a: $85
    rst $38                                       ; $5a7b: $ff
    rst $10                                       ; $5a7c: $d7
    jr c, jr_02c_5a4a                             ; $5a7d: $38 $cb

    inc e                                         ; $5a7f: $1c
    push hl                                       ; $5a80: $e5
    ld c, $cb                                     ; $5a81: $0e $cb
    inc e                                         ; $5a83: $1c
    ei                                            ; $5a84: $fb
    rst $10                                       ; $5a85: $d7
    jr c, jr_02c_5a0a                             ; $5a86: $38 $82

    add h                                         ; $5a88: $84
    inc a                                         ; $5a89: $3c
    add a                                         ; $5a8a: $87
    ld a, h                                       ; $5a8b: $7c
    rst $30                                       ; $5a8c: $f7

jr_02c_5a8d:
    inc c                                         ; $5a8d: $0c
    ld hl, sp-$02                                 ; $5a8e: $f8 $fe

jr_02c_5a90:
    ldh [rNR44], a                                ; $5a90: $e0 $23
    ret nz                                        ; $5a92: $c0

    ld h, h                                       ; $5a93: $64
    and d                                         ; $5a94: $a2
    db $10                                        ; $5a95: $10
    rst $28                                       ; $5a96: $ef
    jr jr_02c_5a90                                ; $5a97: $18 $f7

    inc c                                         ; $5a99: $0c
    rst $20                                       ; $5a9a: $e7
    rst $28                                       ; $5a9b: $ef
    jr jr_02c_5a8d                                ; $5a9c: $18 $ef

    adc l                                         ; $5a9e: $8d
    db $e3                                        ; $5a9f: $e3
    dec a                                         ; $5aa0: $3d
    and b                                         ; $5aa1: $a0
    rst $28                                       ; $5aa2: $ef
    jr c, jr_02c_5a38                             ; $5aa3: $38 $93

    ld a, l                                       ; $5aa5: $7d
    ld l, h                                       ; $5aa6: $6c
    ld d, [hl]                                    ; $5aa7: $56
    add a                                         ; $5aa8: $87
    rst $08                                       ; $5aa9: $cf
    inc a                                         ; $5aaa: $3c
    rst $38                                       ; $5aab: $ff
    inc b                                         ; $5aac: $04
    ei                                            ; $5aad: $fb
    cp $e0                                        ; $5aae: $fe $e0
    db $fc                                        ; $5ab0: $fc
    ld b, h                                       ; $5ab1: $44
    add c                                         ; $5ab2: $81
    ld b, c                                       ; $5ab3: $41
    adc h                                         ; $5ab4: $8c
    rst $38                                       ; $5ab5: $ff
    add b                                         ; $5ab6: $80
    cp a                                          ; $5ab7: $bf
    ld b, b                                       ; $5ab8: $40
    rst $38                                       ; $5ab9: $ff
    ld h, b                                       ; $5aba: $60
    rst $38                                       ; $5abb: $ff
    rst $18                                       ; $5abc: $df
    jr nz, @+$01                                  ; $5abd: $20 $ff

    and b                                         ; $5abf: $a0
    cp a                                          ; $5ac0: $bf
    jr nz, @+$71                                  ; $5ac1: $20 $6f

    db $10                                        ; $5ac3: $10
    rst $30                                       ; $5ac4: $f7
    rst $30                                       ; $5ac5: $f7
    ld d, b                                       ; $5ac6: $50
    rst $30                                       ; $5ac7: $f7
    ldh a, [$e3]                                  ; $5ac8: $f0 $e3
    and b                                         ; $5aca: $a0
    ld a, a                                       ; $5acb: $7f
    and b                                         ; $5acc: $a0
    ld l, a                                       ; $5acd: $6f
    ei                                            ; $5ace: $fb
    ret nc                                        ; $5acf: $d0

    scf                                           ; $5ad0: $37
    cp $e1                                        ; $5ad1: $fe $e1
    db $10                                        ; $5ad3: $10
    rst $30                                       ; $5ad4: $f7
    ld [$08db], sp                                ; $5ad5: $08 $db $08
    rst $38                                       ; $5ad8: $ff
    ei                                            ; $5ad9: $fb
    ld b, h                                       ; $5ada: $44
    rst $38                                       ; $5adb: $ff
    and h                                         ; $5adc: $a4
    cp l                                          ; $5add: $bd
    ld c, $5b                                     ; $5ade: $0e $5b
    ld [bc], a                                    ; $5ae0: $02
    rst $38                                       ; $5ae1: $ff
    or $41                                        ; $5ae2: $f6 $41
    rst $38                                       ; $5ae4: $ff
    cp a                                          ; $5ae5: $bf
    ret nz                                        ; $5ae6: $c0

    ld e, a                                       ; $5ae7: $5f
    ld h, b                                       ; $5ae8: $60
    ld e, a                                       ; $5ae9: $5f
    ld a, a                                       ; $5aea: $7f
    ld h, b                                       ; $5aeb: $60
    cpl                                           ; $5aec: $2f
    or b                                          ; $5aed: $b0
    cpl                                           ; $5aee: $2f
    or b                                          ; $5aef: $b0
    rla                                           ; $5af0: $17
    ret c                                         ; $5af1: $d8

    cp $e1                                        ; $5af2: $fe $e1
    cp $c0                                        ; $5af4: $fe $c0
    ldh [$df], a                                  ; $5af6: $e0 $df
    or b                                          ; $5af8: $b0
    ld l, a                                       ; $5af9: $6f
    ldh [$2f], a                                  ; $5afa: $e0 $2f
    call nc, $ff33                                ; $5afc: $d4 $33 $ff
    db $ec                                        ; $5aff: $ec
    dec e                                         ; $5b00: $1d
    ld a, [c]                                     ; $5b01: $f2
    ld c, $fd                                     ; $5b02: $0e $fd
    inc bc                                        ; $5b04: $03
    add b                                         ; $5b05: $80
    cp a                                          ; $5b06: $bf
    cp $b2                                        ; $5b07: $fe $b2
    pop hl                                        ; $5b09: $e1
    jr nz, @-$0f                                  ; $5b0a: $20 $ef

    db $10                                        ; $5b0c: $10
    or e                                          ; $5b0d: $b3
    inc c                                         ; $5b0e: $0c
    db $ed                                        ; $5b0f: $ed
    ld [hl+], a                                   ; $5b10: $22
    ld a, h                                       ; $5b11: $7c
    ld d, a                                       ; $5b12: $57
    and b                                         ; $5b13: $a0
    inc sp                                        ; $5b14: $33
    add l                                         ; $5b15: $85
    ld c, $ce                                     ; $5b16: $0e $ce
    ld [hl-], a                                   ; $5b18: $32
    cp a                                          ; $5b19: $bf
    ld d, b                                       ; $5b1a: $50
    ld b, b                                       ; $5b1b: $40
    add b                                         ; $5b1c: $80
    ld a, l                                       ; $5b1d: $7d
    ld bc, $a030                                  ; $5b1e: $01 $30 $a0
    inc a                                         ; $5b21: $3c
    ld a, [hl-]                                   ; $5b22: $3a
    push hl                                       ; $5b23: $e5
    db $dd                                        ; $5b24: $dd
    ld [bc], a                                    ; $5b25: $02
    ld l, b                                       ; $5b26: $68
    and b                                         ; $5b27: $a0
    ld sp, hl                                     ; $5b28: $f9
    ld d, b                                       ; $5b29: $50
    adc b                                         ; $5b2a: $88
    ldh [rNR13], a                                ; $5b2b: $e0 $13
    add h                                         ; $5b2d: $84
    ld sp, hl                                     ; $5b2e: $f9
    ld c, $ef                                     ; $5b2f: $0e $ef
    ld sp, $ffbe                                  ; $5b31: $31 $be $ff
    ld c, a                                       ; $5b34: $4f
    ld [hl], b                                    ; $5b35: $70
    cp a                                          ; $5b36: $bf
    ret nz                                        ; $5b37: $c0

    ld bc, $06fd                                  ; $5b38: $01 $fd $06
    rst $20                                       ; $5b3b: $e7
    sbc a                                         ; $5b3c: $9f
    add hl, sp                                    ; $5b3d: $39
    ld a, $c7                                     ; $5b3e: $3e $c7
    ld hl, sp+$3f                                 ; $5b40: $f8 $3f
    or $64                                        ; $5b42: $f6 $64
    sub c                                         ; $5b44: $91
    ld h, b                                       ; $5b45: $60
    rst $00                                       ; $5b46: $c7
    rst $00                                       ; $5b47: $c7
    jr c, jr_02c_5b82                             ; $5b48: $38 $38

    rst $00                                       ; $5b4a: $c7
    or d                                          ; $5b4b: $b2
    and b                                         ; $5b4c: $a0
    add [hl]                                      ; $5b4d: $86
    ld h, e                                       ; $5b4e: $63
    ld l, d                                       ; $5b4f: $6a
    pop hl                                        ; $5b50: $e1
    add sp, $1b                                   ; $5b51: $e8 $1b
    ld a, [c]                                     ; $5b53: $f2
    cp $e2                                        ; $5b54: $fe $e2
    rra                                           ; $5b56: $1f
    ld e, [hl]                                    ; $5b57: $5e
    pop hl                                        ; $5b58: $e1
    ld [hl], c                                    ; $5b59: $71
    ld h, a                                       ; $5b5a: $67
    jr nz, @-$3b                                  ; $5b5b: $20 $c3

    inc e                                         ; $5b5d: $1c
    inc e                                         ; $5b5e: $1c
    rst $28                                       ; $5b5f: $ef
    db $e3                                        ; $5b60: $e3
    db $e3                                        ; $5b61: $e3
    add b                                         ; $5b62: $80
    cp a                                          ; $5b63: $bf
    dec h                                         ; $5b64: $25
    and b                                         ; $5b65: $a0
    rst $38                                       ; $5b66: $ff
    ld b, b                                       ; $5b67: $40
    ld e, a                                       ; $5b68: $5f
    rst $28                                       ; $5b69: $ef
    ld b, b                                       ; $5b6a: $40
    ld e, a                                       ; $5b6b: $5f
    add b                                         ; $5b6c: $80
    cp a                                          ; $5b6d: $bf
    cp $e1                                        ; $5b6e: $fe $e1
    db $e3                                        ; $5b70: $e3
    jp $f33e                                      ; $5b71: $c3 $3e $f3


    cp a                                          ; $5b74: $bf
    ld [hl], b                                    ; $5b75: $70
    ld h, b                                       ; $5b76: $60
    ld h, b                                       ; $5b77: $60
    sub b                                         ; $5b78: $90
    ldh [rIE], a                                  ; $5b79: $e0 $ff
    ld [$14eb], sp                                ; $5b7b: $08 $eb $14
    rst $38                                       ; $5b7e: $ff
    rst $30                                       ; $5b7f: $f7
    add b                                         ; $5b80: $80
    rst $38                                       ; $5b81: $ff

jr_02c_5b82:
    sub b                                         ; $5b82: $90
    xor a                                         ; $5b83: $af
    ld d, b                                       ; $5b84: $50
    ld e, d                                       ; $5b85: $5a
    ld h, l                                       ; $5b86: $65
    rst $38                                       ; $5b87: $ff
    db $fd                                        ; $5b88: $fd
    ld b, d                                       ; $5b89: $42
    rst $38                                       ; $5b8a: $ff
    ld b, b                                       ; $5b8b: $40
    rst $38                                       ; $5b8c: $ff
    ret z                                         ; $5b8d: $c8

    xor e                                         ; $5b8e: $ab
    sub h                                         ; $5b8f: $94
    rst $38                                       ; $5b90: $ff
    rst $30                                       ; $5b91: $f7
    inc bc                                        ; $5b92: $03
    rst $38                                       ; $5b93: $ff
    dec b                                         ; $5b94: $05
    cp $2b                                        ; $5b95: $fe $2b
    db $fc                                        ; $5b97: $fc
    dec c                                         ; $5b98: $0d
    rst $38                                       ; $5b99: $ff
    ld a, [$fd32]                                 ; $5b9a: $fa $32 $fd
    ld d, l                                       ; $5b9d: $55
    ld [$d7a8], a                                 ; $5b9e: $ea $a8 $d7
    db $f4                                        ; $5ba1: $f4
    rst $38                                       ; $5ba2: $ff
    adc e                                         ; $5ba3: $8b
    rst $20                                       ; $5ba4: $e7
    rst $38                                       ; $5ba5: $ff
    jp c, $f53d                                   ; $5ba6: $da $3d $f5

    ld a, [bc]                                    ; $5ba9: $0a
    xor d                                         ; $5baa: $aa
    rst $38                                       ; $5bab: $ff
    ld d, l                                       ; $5bac: $55
    ld b, c                                       ; $5bad: $41
    cp [hl]                                       ; $5bae: $be
    inc d                                         ; $5baf: $14
    rst $38                                       ; $5bb0: $ff
    xor b                                         ; $5bb1: $a8
    rst $38                                       ; $5bb2: $ff
    ld [hl], l                                    ; $5bb3: $75
    rst $38                                       ; $5bb4: $ff
    rst $38                                       ; $5bb5: $ff
    sub l                                         ; $5bb6: $95
    db $eb                                        ; $5bb7: $eb
    dec bc                                        ; $5bb8: $0b
    push af                                       ; $5bb9: $f5
    and l                                         ; $5bba: $a5
    ei                                            ; $5bbb: $fb
    ld c, d                                       ; $5bbc: $4a
    rst $38                                       ; $5bbd: $ff
    rst $30                                       ; $5bbe: $f7
    and [hl]                                      ; $5bbf: $a6
    ei                                            ; $5bc0: $fb
    call $97f3                                    ; $5bc1: $cd $f3 $97
    jp hl                                         ; $5bc4: $e9


    ld c, a                                       ; $5bc5: $4f
    ei                                            ; $5bc6: $fb
    pop af                                        ; $5bc7: $f1
    push af                                       ; $5bc8: $f5
    inc e                                         ; $5bc9: $1c
    ret nz                                        ; $5bca: $c0

    ld a, [c]                                     ; $5bcb: $f2
    db $fd                                        ; $5bcc: $fd
    xor c                                         ; $5bcd: $a9
    cp $52                                        ; $5bce: $fe $52
    ld a, a                                       ; $5bd0: $7f
    db $fd                                        ; $5bd1: $fd
    add c                                         ; $5bd2: $81
    cp $2a                                        ; $5bd3: $fe $2a
    push de                                       ; $5bd5: $d5
    sub l                                         ; $5bd6: $95
    db $eb                                        ; $5bd7: $eb
    add l                                         ; $5bd8: $85
    and b                                         ; $5bd9: $a0
    cp $fd                                        ; $5bda: $fe $fd
    ld [$99df], a                                 ; $5bdc: $ea $df $99
    sbc a                                         ; $5bdf: $9f
    ld c, l                                       ; $5be0: $4d
    daa                                           ; $5be1: $27
    rla                                           ; $5be2: $17
    and e                                         ; $5be3: $a3
    rst $38                                       ; $5be4: $ff
    di                                            ; $5be5: $f3
    db $db                                        ; $5be6: $db
    pop hl                                        ; $5be7: $e1
    xor $f1                                       ; $5be8: $ee $f1
    or h                                          ; $5bea: $b4
    ei                                            ; $5beb: $fb
    ld b, c                                       ; $5bec: $41
    rst $38                                       ; $5bed: $ff
    rst $38                                       ; $5bee: $ff
    rst $18                                       ; $5bef: $df
    sbc a                                         ; $5bf0: $9f
    sbc h                                         ; $5bf1: $9c
    ld c, a                                       ; $5bf2: $4f
    ld h, $17                                     ; $5bf3: $26 $17
    and d                                         ; $5bf5: $a2
    rst $38                                       ; $5bf6: $ff
    di                                            ; $5bf7: $f3
    jp c, $eee1                                   ; $5bf8: $da $e1 $ee

    ld [hl], c                                    ; $5bfb: $71
    db $f4                                        ; $5bfc: $f4
    dec sp                                        ; $5bfd: $3b
    ld sp, hl                                     ; $5bfe: $f9
    db $fc                                        ; $5bff: $fc
    and b                                         ; $5c00: $a0
    and b                                         ; $5c01: $a0
    sbc l                                         ; $5c02: $9d
    and b                                         ; $5c03: $a0
    cp $fc                                        ; $5c04: $fe $fc
    rst $38                                       ; $5c06: $ff
    ld a, [$fbfd]                                 ; $5c07: $fa $fd $fb
    cp a                                          ; $5c0a: $bf
    ldh a, [$fd]                                  ; $5c0b: $f0 $fd
    cp $f9                                        ; $5c0d: $fe $f9
    rst $38                                       ; $5c0f: $ff
    ld a, a                                       ; $5c10: $7f
    cp $e0                                        ; $5c11: $fe $e0
    rst $38                                       ; $5c13: $ff
    rst $38                                       ; $5c14: $ff
    ld a, a                                       ; $5c15: $7f
    cp a                                          ; $5c16: $bf
    rst $38                                       ; $5c17: $ff
    ld e, a                                       ; $5c18: $5f
    rst $38                                       ; $5c19: $ff
    rra                                           ; $5c1a: $1f
    rst $28                                       ; $5c1b: $ef
    ld a, a                                       ; $5c1c: $7f
    rst $38                                       ; $5c1d: $ff
    rst $38                                       ; $5c1e: $ff
    rst $18                                       ; $5c1f: $df
    rst $38                                       ; $5c20: $ff
    db $f4                                        ; $5c21: $f4
    ei                                            ; $5c22: $fb
    jp hl                                         ; $5c23: $e9


    or $ef                                        ; $5c24: $f6 $ef
    rst $38                                       ; $5c26: $ff
    ret nz                                        ; $5c27: $c0

    ld a, [c]                                     ; $5c28: $f2
    ld sp, hl                                     ; $5c29: $f9
    db $e3                                        ; $5c2a: $e3
    rst $38                                       ; $5c2b: $ff
    ret nc                                        ; $5c2c: $d0

    rst $28                                       ; $5c2d: $ef
    add l                                         ; $5c2e: $85
    rst $38                                       ; $5c2f: $ff
    jp c, Jump_000_04bb                           ; $5c30: $da $bb $04

    xor a                                         ; $5c33: $af
    rst $38                                       ; $5c34: $ff
    ld d, a                                       ; $5c35: $57
    rst $38                                       ; $5c36: $ff
    add a                                         ; $5c37: $87
    rst $28                                       ; $5c38: $ef
    ld a, e                                       ; $5c39: $7b
    rst $18                                       ; $5c3a: $df
    cp a                                          ; $5c3b: $bf
    rst $30                                       ; $5c3c: $f7
    ld a, [de]                                    ; $5c3d: $1a
    and b                                         ; $5c3e: $a0
    ld d, a                                       ; $5c3f: $57
    db $fd                                        ; $5c40: $fd
    xor c                                         ; $5c41: $a9
    cp a                                          ; $5c42: $bf
    ld a, [hl]                                    ; $5c43: $7e
    call $f3e3                                    ; $5c44: $cd $e3 $f3
    rst $30                                       ; $5c47: $f7
    or $ba                                        ; $5c48: $f6 $ba
    ld [c], a                                     ; $5c4a: $e2
    push af                                       ; $5c4b: $f5
    rst $38                                       ; $5c4c: $ff
    cp $bf                                        ; $5c4d: $fe $bf
    ld [$fff4], a                                 ; $5c4f: $ea $f4 $ff
    jp $efbf                                      ; $5c52: $c3 $bf $ef


    dec hl                                        ; $5c55: $2b
    rst $18                                       ; $5c56: $df
    rst $28                                       ; $5c57: $ef
    cp d                                          ; $5c58: $ba
    ld [c], a                                     ; $5c59: $e2
    ld e, a                                       ; $5c5a: $5f
    ld d, d                                       ; $5c5b: $52
    ldh [$bf], a                                  ; $5c5c: $e0 $bf
    or $80                                        ; $5c5e: $f6 $80
    and c                                         ; $5c60: $a1
    ldh [$7b], a                                  ; $5c61: $e0 $7b
    rst $38                                       ; $5c63: $ff
    db $fd                                        ; $5c64: $fd
    and b                                         ; $5c65: $a0
    ldh [$f4], a                                  ; $5c66: $e0 $f4
    ei                                            ; $5c68: $fb
    rst $38                                       ; $5c69: $ff
    cp $e6                                        ; $5c6a: $fe $e6
    add c                                         ; $5c6c: $81
    ld a, [$e55e]                                 ; $5c6d: $fa $5e $e5
    ld e, a                                       ; $5c70: $5f
    ld d, l                                       ; $5c71: $55
    ld [c], a                                     ; $5c72: $e2
    di                                            ; $5c73: $f3
    rst $38                                       ; $5c74: $ff
    ld [$d8f7], a                                 ; $5c75: $ea $f7 $d8
    rst $38                                       ; $5c78: $ff
    rst $20                                       ; $5c79: $e7
    db $fd                                        ; $5c7a: $fd
    ei                                            ; $5c7b: $fb
    rst $28                                       ; $5c7c: $ef
    rst $38                                       ; $5c7d: $ff
    set 7, a                                      ; $5c7e: $cb $ff
    and d                                         ; $5c80: $a2
    rst $38                                       ; $5c81: $ff
    rst $18                                       ; $5c82: $df
    ld l, b                                       ; $5c83: $68
    sub a                                         ; $5c84: $97
    rst $38                                       ; $5c85: $ff
    rst $38                                       ; $5c86: $ff
    rst $28                                       ; $5c87: $ef
    rst $38                                       ; $5c88: $ff
    ld [hl], a                                    ; $5c89: $77
    inc a                                         ; $5c8a: $3c
    ret z                                         ; $5c8b: $c8

    ld [c], a                                     ; $5c8c: $e2
    sbc [hl]                                      ; $5c8d: $9e
    pop hl                                        ; $5c8e: $e1
    ld l, c                                       ; $5c8f: $69
    rst $38                                       ; $5c90: $ff
    db $d3                                        ; $5c91: $d3
    rst $28                                       ; $5c92: $ef
    rst $30                                       ; $5c93: $f7
    ldh [$ba], a                                  ; $5c94: $e0 $ba
    ld [c], a                                     ; $5c96: $e2
    ld a, a                                       ; $5c97: $7f
    or $ff                                        ; $5c98: $f6 $ff
    xor [hl]                                      ; $5c9a: $ae
    ei                                            ; $5c9b: $fb
    push af                                       ; $5c9c: $f5
    rst $38                                       ; $5c9d: $ff
    or a                                          ; $5c9e: $b7
    ld l, h                                       ; $5c9f: $6c
    ldh [$c8], a                                  ; $5ca0: $e0 $c8
    ld h, $e4                                     ; $5ca2: $26 $e4
    xor d                                         ; $5ca4: $aa
    ldh [rNR12], a                                ; $5ca5: $e0 $12
    db $eb                                        ; $5ca7: $eb
    ei                                            ; $5ca8: $fb
    inc sp                                        ; $5ca9: $33
    ldh [rP1], a                                  ; $5caa: $e0 $00
    add sp, -$49                                  ; $5cac: $e8 $b7
    ld [c], a                                     ; $5cae: $e2
    ei                                            ; $5caf: $fb
    rra                                           ; $5cb0: $1f
    add c                                         ; $5cb1: $81
    inc sp                                        ; $5cb2: $33
    ldh [$fe], a                                  ; $5cb3: $e0 $fe
    rst $38                                       ; $5cb5: $ff
    rst $28                                       ; $5cb6: $ef
    ei                                            ; $5cb7: $fb
    ld d, b                                       ; $5cb8: $50
    ld h, h                                       ; $5cb9: $64
    cp b                                          ; $5cba: $b8
    add b                                         ; $5cbb: $80
    add h                                         ; $5cbc: $84
    jp hl                                         ; $5cbd: $e9


    ld d, a                                       ; $5cbe: $57
    ld h, [hl]                                    ; $5cbf: $66
    ld [c], a                                     ; $5cc0: $e2
    db $fd                                        ; $5cc1: $fd
    rst $28                                       ; $5cc2: $ef
    db $eb                                        ; $5cc3: $eb
    db $fc                                        ; $5cc4: $fc
    or d                                          ; $5cc5: $b2
    add sp, -$21                                  ; $5cc6: $e8 $df
    rst $30                                       ; $5cc8: $f7
    cp l                                          ; $5cc9: $bd
    ld h, d                                       ; $5cca: $62
    ld [$b415], a                                 ; $5ccb: $ea $15 $b4
    jp z, Jump_000_26bf                           ; $5cce: $ca $bf $26

    add hl, sp                                    ; $5cd1: $39
    db $dd                                        ; $5cd2: $dd
    or b                                          ; $5cd3: $b0
    add b                                         ; $5cd4: $80
    sbc l                                         ; $5cd5: $9d
    jp z, $ff7f                                   ; $5cd6: $ca $7f $ff

    xor e                                         ; $5cd9: $ab
    ld l, [hl]                                    ; $5cda: $6e
    and $84                                       ; $5cdb: $e6 $84
    pop bc                                        ; $5cdd: $c1
    ld a, l                                       ; $5cde: $7d
    ld [$ec6a], a                                 ; $5cdf: $ea $6a $ec
    adc d                                         ; $5ce2: $8a
    rst $38                                       ; $5ce3: $ff
    ld d, l                                       ; $5ce4: $55
    rst $38                                       ; $5ce5: $ff
    xor a                                         ; $5ce6: $af

Jump_02c_5ce7:
    ld l, e                                       ; $5ce7: $6b
    ret z                                         ; $5ce8: $c8

    pop af                                        ; $5ce9: $f1
    xor a                                         ; $5cea: $af
    and b                                         ; $5ceb: $a0
    pop bc                                        ; $5cec: $c1
    ld e, e                                       ; $5ced: $5b
    call z, $e9cc                                 ; $5cee: $cc $cc $e9
    db $fd                                        ; $5cf1: $fd
    cp $54                                        ; $5cf2: $fe $54
    ei                                            ; $5cf4: $fb
    ld h, a                                       ; $5cf5: $67
    add c                                         ; $5cf6: $81
    rst $38                                       ; $5cf7: $ff
    ld d, h                                       ; $5cf8: $54
    cp b                                          ; $5cf9: $b8
    ldh [$36], a                                  ; $5cfa: $e0 $36
    jp $bf40                                      ; $5cfc: $c3 $40 $bf


    ld e, [hl]                                    ; $5cff: $5e
    ld h, b                                       ; $5d00: $60
    xor $bc                                       ; $5d01: $ee $bc
    ldh [$ab], a                                  ; $5d03: $e0 $ab
    rst $38                                       ; $5d05: $ff
    ld a, [hl]                                    ; $5d06: $7e
    dec h                                         ; $5d07: $25
    jp nz, $ff00                                  ; $5d08: $c2 $00 $ff

    add h                                         ; $5d0b: $84
    dec bc                                        ; $5d0c: $0b
    rst $38                                       ; $5d0d: $ff
    ld a, [hl+]                                   ; $5d0e: $2a
    ld a, h                                       ; $5d0f: $7c
    ret nz                                        ; $5d10: $c0

    cp l                                          ; $5d11: $bd
    ld a, [$7ec6]                                 ; $5d12: $fa $c6 $7e
    pop hl                                        ; $5d15: $e1
    or h                                          ; $5d16: $b4
    jp $cd04                                      ; $5d17: $c3 $04 $cd


    and a                                         ; $5d1a: $a7
    push af                                       ; $5d1b: $f5
    rst $38                                       ; $5d1c: $ff
    cp a                                          ; $5d1d: $bf
    cp c                                          ; $5d1e: $b9
    push hl                                       ; $5d1f: $e5
    ld l, [hl]                                    ; $5d20: $6e
    ld h, b                                       ; $5d21: $60
    xor d                                         ; $5d22: $aa
    add hl, bc                                    ; $5d23: $09
    ldh [$ca], a                                  ; $5d24: $e0 $ca
    ld a, $09                                     ; $5d26: $3e $09
    db $ec                                        ; $5d28: $ec
    xor a                                         ; $5d29: $af
    rst $38                                       ; $5d2a: $ff
    ld d, d                                       ; $5d2b: $52
    db $fd                                        ; $5d2c: $fd
    xor d                                         ; $5d2d: $aa
    ret c                                         ; $5d2e: $d8

    ldh [$fb], a                                  ; $5d2f: $e0 $fb
    and c                                         ; $5d31: $a1
    ld a, $c6                                     ; $5d32: $3e $c6
    and e                                         ; $5d34: $a3
    dec hl                                        ; $5d35: $2b
    push de                                       ; $5d36: $d5
    dec b                                         ; $5d37: $05
    ld a, [$d454]                                 ; $5d38: $fa $54 $d4
    pop hl                                        ; $5d3b: $e1
    ld [$2ee2], a                                 ; $5d3c: $ea $e2 $2e
    ld e, d                                       ; $5d3f: $5a
    pop bc                                        ; $5d40: $c1
    ld l, [hl]                                    ; $5d41: $6e
    cp e                                          ; $5d42: $bb
    ld bc, $e0c4                                  ; $5d43: $01 $c4 $e0
    ld d, a                                       ; $5d46: $57
    inc h                                         ; $5d47: $24
    ld [c], a                                     ; $5d48: $e2
    cp b                                          ; $5d49: $b8
    db $e3                                        ; $5d4a: $e3
    adc c                                         ; $5d4b: $89
    dec d                                         ; $5d4c: $15
    ld l, $e2                                     ; $5d4d: $2e $e2
    ldh [$e3], a                                  ; $5d4f: $e0 $e3
    push af                                       ; $5d51: $f5
    ld l, $e4                                     ; $5d52: $2e $e4
    inc de                                        ; $5d54: $13
    ld h, b                                       ; $5d55: $60
    adc d                                         ; $5d56: $8a
    and $a9                                       ; $5d57: $e6 $a9
    rst $20                                       ; $5d59: $e7
    cp $48                                        ; $5d5a: $fe $48
    rst $30                                       ; $5d5c: $f7
    xor d                                         ; $5d5d: $aa
    db $e3                                        ; $5d5e: $e3
    ld c, $e3                                     ; $5d5f: $0e $e3
    ld d, l                                       ; $5d61: $55
    rst $38                                       ; $5d62: $ff
    ld [de], a                                    ; $5d63: $12
    ld bc, $ccef                                  ; $5d64: $01 $ef $cc
    db $e3                                        ; $5d67: $e3
    add c                                         ; $5d68: $81
    ld h, b                                       ; $5d69: $60
    rst $38                                       ; $5d6a: $ff
    db $ec                                        ; $5d6b: $ec
    nop                                           ; $5d6c: $00
    nop                                           ; $5d6d: $00
    nop                                           ; $5d6e: $00
    rst $38                                       ; $5d6f: $ff
    ld h, b                                       ; $5d70: $60
    ld h, c                                       ; $5d71: $61
    ld d, c                                       ; $5d72: $51
    ld h, d                                       ; $5d73: $62
    ld h, e                                       ; $5d74: $63
    ld h, h                                       ; $5d75: $64
    ld h, l                                       ; $5d76: $65
    ld h, [hl]                                    ; $5d77: $66
    di                                            ; $5d78: $f3
    ld h, a                                       ; $5d79: $67
    ld l, b                                       ; $5d7a: $68
    or $ff                                        ; $5d7b: $f6 $ff
    db $ec                                        ; $5d7d: $ec
    pop af                                        ; $5d7e: $f1
    ld l, c                                       ; $5d7f: $69
    ld l, d                                       ; $5d80: $6a
    ld l, e                                       ; $5d81: $6b
    ld d, c                                       ; $5d82: $51
    ccf                                           ; $5d83: $3f
    ld l, h                                       ; $5d84: $6c
    ld l, l                                       ; $5d85: $6d
    ld l, [hl]                                    ; $5d86: $6e
    ld l, a                                       ; $5d87: $6f
    ld [hl], b                                    ; $5d88: $70
    ld d, c                                       ; $5d89: $51
    or $ff                                        ; $5d8a: $f6 $ff
    db $ec                                        ; $5d8c: $ec
    pop af                                        ; $5d8d: $f1
    nop                                           ; $5d8e: $00
    sbc c                                         ; $5d8f: $99
    rst $38                                       ; $5d90: $ff
    or $fb                                        ; $5d91: $f6 $fb
    sbc c                                         ; $5d93: $99
    rst $38                                       ; $5d94: $ff
    or $fb                                        ; $5d95: $f6 $fb
    sbc c                                         ; $5d97: $99
    rst $38                                       ; $5d98: $ff
    nop                                           ; $5d99: $00
    rst $38                                       ; $5d9a: $ff
    sbc c                                         ; $5d9b: $99
    rst $38                                       ; $5d9c: $ff
    nop                                           ; $5d9d: $00
    rst $38                                       ; $5d9e: $ff
    nop                                           ; $5d9f: $00
    adc a                                         ; $5da0: $8f
    rst $38                                       ; $5da1: $ff
    nop                                           ; $5da2: $00
    rst $38                                       ; $5da3: $ff
    or $ff                                        ; $5da4: $f6 $ff
    nop                                           ; $5da6: $00
    rst $38                                       ; $5da7: $ff
    or $ff                                        ; $5da8: $f6 $ff
    nop                                           ; $5daa: $00
    rst $38                                       ; $5dab: $ff
    or $ff                                        ; $5dac: $f6 $ff
    nop                                           ; $5dae: $00
    rst $38                                       ; $5daf: $ff
    cp $ec                                        ; $5db0: $fe $ec
    db $ed                                        ; $5db2: $ed
    ld d, c                                       ; $5db3: $51
    ld d, c                                       ; $5db4: $51
    ld d, c                                       ; $5db5: $51
    ld h, a                                       ; $5db6: $67
    ld l, b                                       ; $5db7: $68
    ld d, c                                       ; $5db8: $51
    ld e, d                                       ; $5db9: $5a
    pop bc                                        ; $5dba: $c1
    ld e, e                                       ; $5dbb: $5b
    or $e4                                        ; $5dbc: $f6 $e4
    nop                                           ; $5dbe: $00
    rst $38                                       ; $5dbf: $ff
    db $ec                                        ; $5dc0: $ec
    db $eb                                        ; $5dc1: $eb
    pop bc                                        ; $5dc2: $c1
    ldh [$bc], a                                  ; $5dc3: $e0 $bc
    pop hl                                        ; $5dc5: $e1
    ld e, h                                       ; $5dc6: $5c
    ld e, l                                       ; $5dc7: $5d
    adc [hl]                                      ; $5dc8: $8e
    cp d                                          ; $5dc9: $ba
    ldh [rHDMA4], a                               ; $5dca: $e0 $54
    ld d, l                                       ; $5dcc: $55
    ld d, c                                       ; $5dcd: $51
    nop                                           ; $5dce: $00
    ei                                            ; $5dcf: $fb
    sub c                                         ; $5dd0: $91
    db $e3                                        ; $5dd1: $e3
    adc h                                         ; $5dd2: $8c
    ld [c], a                                     ; $5dd3: $e2
    ld d, c                                       ; $5dd4: $51
    call z, $e0d3                                 ; $5dd5: $cc $d3 $e0
    add e                                         ; $5dd8: $83
    ldh [$5a], a                                  ; $5dd9: $e0 $5a
    ld e, e                                       ; $5ddb: $5b
    add e                                         ; $5ddc: $83
    ldh [$7d], a                                  ; $5ddd: $e0 $7d
    ldh [$5e], a                                  ; $5ddf: $e0 $5e
    ld e, a                                       ; $5de1: $5f
    adc [hl]                                      ; $5de2: $8e
    ld a, b                                       ; $5de3: $78
    ldh [rRP], a                                  ; $5de4: $e0 $56
    ld d, a                                       ; $5de6: $57
    ld d, c                                       ; $5de7: $51
    ld c, c                                       ; $5de8: $49
    rst $20                                       ; $5de9: $e7
    add l                                         ; $5dea: $85
    pop af                                        ; $5deb: $f1
    ld d, h                                       ; $5dec: $54
    ldh [$5a], a                                  ; $5ded: $e0 $5a
    pop bc                                        ; $5def: $c1
    ld e, e                                       ; $5df0: $5b
    adc l                                         ; $5df1: $8d
    pop hl                                        ; $5df2: $e1
    ld c, [hl]                                    ; $5df3: $4e
    ldh [$d3], a                                  ; $5df4: $e0 $d3
    pop hl                                        ; $5df6: $e1
    adc b                                         ; $5df7: $88
    ld [c], a                                     ; $5df8: $e2
    ccf                                           ; $5df9: $3f
    ldh [$79], a                                  ; $5dfa: $e0 $79
    ld a, d                                       ; $5dfc: $7a
    ld a, $3a                                     ; $5dfd: $3e $3a
    ldh [$71], a                                  ; $5dff: $e0 $71
    ld [hl], d                                    ; $5e01: $72
    ld e, b                                       ; $5e02: $58
    ld e, c                                       ; $5e03: $59
    ld [hl], e                                    ; $5e04: $73
    nop                                           ; $5e05: $00
    or $8e                                        ; $5e06: $f6 $8e
    db $e3                                        ; $5e08: $e3
    and e                                         ; $5e09: $a3
    ld h, a                                       ; $5e0a: $67
    ld l, b                                       ; $5e0b: $68
    rst $08                                       ; $5e0c: $cf
    pop hl                                        ; $5e0d: $e1
    pop de                                        ; $5e0e: $d1
    ldh [$d3], a                                  ; $5e0f: $e0 $d3
    ld [c], a                                     ; $5e11: $e2
    ld [hl], e                                    ; $5e12: $73
    adc b                                         ; $5e13: $88
    ld [c], a                                     ; $5e14: $e2
    ld d, b                                       ; $5e15: $50
    db $fd                                        ; $5e16: $fd
    ld c, [hl]                                    ; $5e17: $4e
    rst $38                                       ; $5e18: $ff
    ldh [rHDMA3], a                               ; $5e19: $e0 $53
    ld c, [hl]                                    ; $5e1b: $4e
    ld d, b                                       ; $5e1c: $50
    ld [hl], h                                    ; $5e1d: $74
    ld [hl], l                                    ; $5e1e: $75
    halt                                          ; $5e1f: $76
    rst $00                                       ; $5e20: $c7
    ld [hl], a                                    ; $5e21: $77
    ld a, b                                       ; $5e22: $78
    ld d, c                                       ; $5e23: $51
    nop                                           ; $5e24: $00
    push af                                       ; $5e25: $f5
    adc [hl]                                      ; $5e26: $8e
    push hl                                       ; $5e27: $e5
    ld d, a                                       ; $5e28: $57
    ld [c], a                                     ; $5e29: $e2
    ld d, c                                       ; $5e2a: $51
    ld d, c                                       ; $5e2b: $51
    ld a, h                                       ; $5e2c: $7c
    db $d3                                        ; $5e2d: $d3
    db $e3                                        ; $5e2e: $e3
    add a                                         ; $5e2f: $87
    pop hl                                        ; $5e30: $e1

jr_02c_5e31:
    ld d, b                                       ; $5e31: $50
    ld c, l                                       ; $5e32: $4d
    add hl, hl                                    ; $5e33: $29
    add hl, hl                                    ; $5e34: $29

jr_02c_5e35:
    jr z, jr_02c_5e35                             ; $5e35: $28 $fe

    ldh [$03], a                                  ; $5e37: $e0 $03
    ld c, l                                       ; $5e39: $4d
    ld d, b                                       ; $5e3a: $50
    ld a, b                                       ; $5e3b: $78
    ld [c], a                                     ; $5e3c: $e2
    nop                                           ; $5e3d: $00
    ret nc                                        ; $5e3e: $d0

    sbc $c3                                       ; $5e3f: $de $c3
    ld h, c                                       ; $5e41: $61
    ld [c], a                                     ; $5e42: $e2
    rst $08                                       ; $5e43: $cf
    ld [c], a                                     ; $5e44: $e2
    sub c                                         ; $5e45: $91
    pop hl                                        ; $5e46: $e1
    ld a, [de]                                    ; $5e47: $1a
    db $d3                                        ; $5e48: $d3
    ldh [rHDMA1], a                               ; $5e49: $e0 $51
    add [hl]                                      ; $5e4b: $86
    pop hl                                        ; $5e4c: $e1
    ld d, e                                       ; $5e4d: $53
    ld c, [hl]                                    ; $5e4e: $4e
    pop bc                                        ; $5e4f: $c1
    db $e4                                        ; $5e50: $e4
    cp a                                          ; $5e51: $bf
    db $e3                                        ; $5e52: $e3
    nop                                           ; $5e53: $00
    ld a, [c]                                     ; $5e54: $f2
    add b                                         ; $5e55: $80
    rst $38                                       ; $5e56: $ff
    db $e3                                        ; $5e57: $e3
    adc [hl]                                      ; $5e58: $8e
    db $e4                                        ; $5e59: $e4
    sub b                                         ; $5e5a: $90
    pop hl                                        ; $5e5b: $e1
    sub c                                         ; $5e5c: $91
    ldh [$92], a                                  ; $5e5d: $e0 $92
    pop hl                                        ; $5e5f: $e1
    or $e3                                        ; $5e60: $f6 $e3
    pop bc                                        ; $5e62: $c1
    push hl                                       ; $5e63: $e5
    jr z, jr_02c_5ea9                             ; $5e64: $28 $43

    add hl, hl                                    ; $5e66: $29
    ld c, a                                       ; $5e67: $4f
    and e                                         ; $5e68: $a3
    and b                                         ; $5e69: $a0
    nop                                           ; $5e6a: $00
    pop de                                        ; $5e6b: $d1
    jr nz, jr_02c_5e31                            ; $5e6c: $20 $c3

    sub b                                         ; $5e6e: $90
    pop hl                                        ; $5e6f: $e1
    ld d, e                                       ; $5e70: $53
    dec d                                         ; $5e71: $15
    ldh [$32], a                                  ; $5e72: $e0 $32
    set 4, h                                      ; $5e74: $cb $e4
    ld c, l                                       ; $5e76: $4d
    or $e6                                        ; $5e77: $f6 $e6
    pop bc                                        ; $5e79: $c1
    push hl                                       ; $5e7a: $e5
    jr z, jr_02c_5ecc                             ; $5e7b: $28 $4f

    inc sp                                        ; $5e7d: $33
    pop bc                                        ; $5e7e: $c1
    nop                                           ; $5e7f: $00
    rst $08                                       ; $5e80: $cf
    ld h, b                                       ; $5e81: $60
    db $10                                        ; $5e82: $10
    ld [c], a                                     ; $5e83: $e2
    sbc b                                         ; $5e84: $98
    pop bc                                        ; $5e85: $c1
    sub b                                         ; $5e86: $90
    db $e4                                        ; $5e87: $e4
    db $fc                                        ; $5e88: $fc
    db $eb                                        ; $5e89: $eb
    pop bc                                        ; $5e8a: $c1
    rst $20                                       ; $5e8b: $e7
    ld c, l                                       ; $5e8c: $4d
    ld d, b                                       ; $5e8d: $50
    inc sp                                        ; $5e8e: $33
    pop bc                                        ; $5e8f: $c1
    add b                                         ; $5e90: $80
    nop                                           ; $5e91: $00
    pop af                                        ; $5e92: $f1
    ld h, c                                       ; $5e93: $61
    ret nz                                        ; $5e94: $c0

    sbc b                                         ; $5e95: $98
    pop bc                                        ; $5e96: $c1
    pop bc                                        ; $5e97: $c1
    db $fd                                        ; $5e98: $fd
    inc sp                                        ; $5e99: $33
    jp nz, $f600                                  ; $5e9a: $c2 $00 $f6

    add d                                         ; $5e9d: $82
    db $fc                                        ; $5e9e: $fc
    add hl, hl                                    ; $5e9f: $29
    ld [hl], c                                    ; $5ea0: $71
    ld d, d                                       ; $5ea1: $52
    cp e                                          ; $5ea2: $bb

jr_02c_5ea3:
    and d                                         ; $5ea3: $a2
    nop                                           ; $5ea4: $00
    push af                                       ; $5ea5: $f5
    add d                                         ; $5ea6: $82
    db $ec                                        ; $5ea7: $ec
    ld a, [hl+]                                   ; $5ea8: $2a

jr_02c_5ea9:
    dec hl                                        ; $5ea9: $2b
    jr nc, @+$01                                  ; $5eaa: $30 $ff

    ldh [rSCX], a                                 ; $5eac: $e0 $43
    dec hl                                        ; $5eae: $2b
    ld a, [hl+]                                   ; $5eaf: $2a
    ld [bc], a                                    ; $5eb0: $02
    db $ec                                        ; $5eb1: $ec
    cp b                                          ; $5eb2: $b8
    and b                                         ; $5eb3: $a0
    nop                                           ; $5eb4: $00
    ld a, [c]                                     ; $5eb5: $f2
    adc e                                         ; $5eb6: $8b
    and b                                         ; $5eb7: $a0
    ld d, d                                       ; $5eb8: $52
    inc b                                         ; $5eb9: $04
    add sp, $07                                   ; $5eba: $e8 $07
    ld a, [hl+]                                   ; $5ebc: $2a
    dec hl                                        ; $5ebd: $2b
    ld bc, $e4ff                                  ; $5ebe: $01 $ff $e4
    cp [hl]                                       ; $5ec1: $be
    ldh [rSTAT], a                                ; $5ec2: $e0 $41
    rst $20                                       ; $5ec4: $e7
    ld bc, $00a1                                  ; $5ec5: $01 $a1 $00
    db $d3                                        ; $5ec8: $d3

jr_02c_5ec9:
    ld a, [$80e2]                                 ; $5ec9: $fa $e2 $80

jr_02c_5ecc:
    ld c, a                                       ; $5ecc: $4f
    push bc                                       ; $5ecd: $c5
    rst $00                                       ; $5ece: $c7
    ld l, $01                                     ; $5ecf: $2e $01
    ld bc, $1617                                  ; $5ed1: $01 $17 $16
    rrca                                          ; $5ed4: $0f
    ld [hl+], a                                   ; $5ed5: $22
    inc hl                                        ; $5ed6: $23
    ld d, $17                                     ; $5ed7: $16 $17
    cp d                                          ; $5ed9: $ba
    pop hl                                        ; $5eda: $e1
    ld a, e                                       ; $5edb: $7b
    pop hl                                        ; $5edc: $e1
    jr nc, jr_02c_5ea3                            ; $5edd: $30 $c4

    ld l, $a2                                     ; $5edf: $2e $a2
    cp b                                          ; $5ee1: $b8
    nop                                           ; $5ee2: $00
    jp nc, $c2c2                                  ; $5ee3: $d2 $c2 $c2

    pop bc                                        ; $5ee6: $c1
    add sp, $0c                                   ; $5ee7: $e8 $0c
    ld b, $00                                     ; $5ee9: $06 $00
    rst $38                                       ; $5eeb: $ff
    ldh [rTMA], a                                 ; $5eec: $e0 $06
    dec bc                                        ; $5eee: $0b
    inc hl                                        ; $5eef: $23
    ld [hl+], a                                   ; $5ef0: $22
    cp h                                          ; $5ef1: $bc
    ld [c], a                                     ; $5ef2: $e2
    ld l, $04                                     ; $5ef3: $2e $04
    jp nz, $a3a0                                  ; $5ef5: $c2 $a0 $a3

    ld h, a                                       ; $5ef8: $67
    adc d                                         ; $5ef9: $8a
    ret nc                                        ; $5efa: $d0

    add l                                         ; $5efb: $85
    or b                                          ; $5efc: $b0
    pop hl                                        ; $5efd: $e1
    add d                                         ; $5efe: $82
    cp a                                          ; $5eff: $bf
    pop hl                                        ; $5f00: $e1
    ld d, [hl]                                    ; $5f01: $56
    and b                                         ; $5f02: $a0
    ld b, h                                       ; $5f03: $44
    pop hl                                        ; $5f04: $e1
    add hl, de                                    ; $5f05: $19
    jr jr_02c_5ec9                                ; $5f06: $18 $c1

    pop hl                                        ; $5f08: $e1
    dec sp                                        ; $5f09: $3b
    ld a, a                                       ; $5f0a: $7f
    inc [hl]                                      ; $5f0b: $34
    nop                                           ; $5f0c: $00
    jr c, jr_02c_5f4a                             ; $5f0d: $38 $3b

    ld b, c                                       ; $5f0f: $41
    ld b, e                                       ; $5f10: $43
    ld b, h                                       ; $5f11: $44
    cp a                                          ; $5f12: $bf
    ld [c], a                                     ; $5f13: $e2
    ld b, c                                       ; $5f14: $41
    ld d, d                                       ; $5f15: $52
    ld l, $a5                                     ; $5f16: $2e $a5
    adc $66                                       ; $5f18: $ce $66
    ld e, c                                       ; $5f1a: $59
    add h                                         ; $5f1b: $84
    sbc a                                         ; $5f1c: $9f
    add e                                         ; $5f1d: $83
    ld h, $81                                     ; $5f1e: $26 $81
    ld c, a                                       ; $5f20: $4f
    jp nz, $97e4                                  ; $5f21: $c2 $e4 $97

    ld bc, $0217                                  ; $5f24: $01 $17 $02
    jp nz, Jump_000_3be1                          ; $5f27: $c2 $e1 $3b

    ret nz                                        ; $5f2a: $c0

    ldh [$bf], a                                  ; $5f2b: $e0 $bf
    pop hl                                        ; $5f2d: $e1
    inc a                                         ; $5f2e: $3c
    rlca                                          ; $5f2f: $07
    ld b, d                                       ; $5f30: $42
    ld bc, $432f                                  ; $5f31: $01 $2f $43
    and l                                         ; $5f34: $a5
    or d                                          ; $5f35: $b2
    ld h, b                                       ; $5f36: $60
    ld d, e                                       ; $5f37: $53
    adc d                                         ; $5f38: $8a
    rlca                                          ; $5f39: $07
    jp $8426                                      ; $5f3a: $c3 $26 $84


    ld l, a                                       ; $5f3d: $6f
    ld c, a                                       ; $5f3e: $4f
    add hl, hl                                    ; $5f3f: $29
    jr z, jr_02c_5f73                             ; $5f40: $28 $31

    jp nz, $16e1                                  ; $5f42: $c2 $e1 $16

    ld b, $c7                                     ; $5f45: $06 $c7
    ldh [$fc], a                                  ; $5f47: $e0 $fc
    pop bc                                        ; $5f49: $c1

jr_02c_5f4a:
    ldh [$c0], a                                  ; $5f4a: $e0 $c0
    pop hl                                        ; $5f4c: $e1
    scf                                           ; $5f4d: $37
    dec sp                                        ; $5f4e: $3b
    dec sp                                        ; $5f4f: $3b
    ld a, $4a                                     ; $5f50: $3e $4a
    ld bc, $2f81                                  ; $5f52: $01 $81 $2f
    pop bc                                        ; $5f55: $c1
    add e                                         ; $5f56: $83
    dec h                                         ; $5f57: $25
    add d                                         ; $5f58: $82
    ld c, c                                       ; $5f59: $49
    ld h, [hl]                                    ; $5f5a: $66
    ccf                                           ; $5f5b: $3f
    push hl                                       ; $5f5c: $e5
    ld h, $85                                     ; $5f5d: $26 $85
    cp [hl]                                       ; $5f5f: $be
    pop bc                                        ; $5f60: $c1
    inc l                                         ; $5f61: $2c
    ld [hl], $05                                  ; $5f62: $36 $05
    pop hl                                        ; $5f64: $e1
    scf                                           ; $5f65: $37
    nop                                           ; $5f66: $00
    ret nz                                        ; $5f67: $c0

    ld [$3d48], a                                 ; $5f68: $ea $48 $3d
    add b                                         ; $5f6b: $80
    pop hl                                        ; $5f6c: $e1
    ld [bc], a                                    ; $5f6d: $02
    and c                                         ; $5f6e: $a1
    call nz, Call_02c_61f4                        ; $5f6f: $c4 $f4 $61
    nop                                           ; $5f72: $00

jr_02c_5f73:
    db $ec                                        ; $5f73: $ec
    ld d, b                                       ; $5f74: $50
    daa                                           ; $5f75: $27
    add b                                         ; $5f76: $80
    ld h, $85                                     ; $5f77: $26 $85
    add b                                         ; $5f79: $80
    ldh [$2f], a                                  ; $5f7a: $e0 $2f
    ld bc, $3f7f                                  ; $5f7c: $01 $7f $3f
    ld c, b                                       ; $5f7f: $48
    nop                                           ; $5f80: $00
    scf                                           ; $5f81: $37
    nop                                           ; $5f82: $00
    nop                                           ; $5f83: $00
    dec [hl]                                      ; $5f84: $35
    add c                                         ; $5f85: $81
    pop hl                                        ; $5f86: $e1
    ei                                            ; $5f87: $fb
    dec sp                                        ; $5f88: $3b
    dec [hl]                                      ; $5f89: $35
    ld b, b                                       ; $5f8a: $40
    pop hl                                        ; $5f8b: $e1
    dec sp                                        ; $5f8c: $3b
    ld c, b                                       ; $5f8d: $48
    ccf                                           ; $5f8e: $3f
    ld bc, $102c                                  ; $5f8f: $01 $2c $10
    ld [bc], a                                    ; $5f92: $02
    and e                                         ; $5f93: $a3
    ld a, h                                       ; $5f94: $7c
    ld h, d                                       ; $5f95: $62
    adc $46                                       ; $5f96: $ce $46
    ld [$4e61], a                                 ; $5f98: $ea $61 $4e
    adc e                                         ; $5f9b: $8b
    jp nz, $8367                                  ; $5f9c: $c2 $67 $83

    ld a, a                                       ; $5f9f: $7f
    pop bc                                        ; $5fa0: $c1
    adc a                                         ; $5fa1: $8f
    cpl                                           ; $5fa2: $2f
    ld bc, $483d                                  ; $5fa3: $01 $3d $48
    dec bc                                        ; $5fa6: $0b
    ldh [$bf], a                                  ; $5fa7: $e0 $bf
    db $e3                                        ; $5fa9: $e3
    pop bc                                        ; $5faa: $c1
    db $e3                                        ; $5fab: $e3
    nop                                           ; $5fac: $00
    rrca                                          ; $5fad: $0f
    add hl, bc                                    ; $5fae: $09
    ld bc, $3101                                  ; $5faf: $01 $01 $31
    add d                                         ; $5fb2: $82
    add e                                         ; $5fb3: $83
    rst $20                                       ; $5fb4: $e7
    ld h, d                                       ; $5fb5: $62
    adc $46                                       ; $5fb6: $ce $46
    ld h, [hl]                                    ; $5fb8: $66
    add c                                         ; $5fb9: $81
    cp b                                          ; $5fba: $b8
    ld h, $85                                     ; $5fbb: $26 $85
    sbc a                                         ; $5fbd: $9f
    ld h, c                                       ; $5fbe: $61
    ld b, b                                       ; $5fbf: $40
    pop bc                                        ; $5fc0: $c1
    inc l                                         ; $5fc1: $2c
    ld bc, $c04a                                  ; $5fc2: $01 $4a $c0
    ldh [$3b], a                                  ; $5fc5: $e0 $3b
    xor $bf                                       ; $5fc7: $ee $bf
    ldh [$33], a                                  ; $5fc9: $e0 $33
    inc sp                                        ; $5fcb: $33
    inc sp                                        ; $5fcc: $33
    pop bc                                        ; $5fcd: $c1
    db $e3                                        ; $5fce: $e3
    jr @+$1b                                      ; $5fcf: $18 $19

    ld bc, $2c41                                  ; $5fd1: $01 $41 $2c
    nop                                           ; $5fd4: $00
    add d                                         ; $5fd5: $82
    ld b, b                                       ; $5fd6: $40
    and b                                         ; $5fd7: $a0
    add hl, sp                                    ; $5fd8: $39
    ld h, c                                       ; $5fd9: $61
    ld c, c                                       ; $5fda: $49
    ld b, [hl]                                    ; $5fdb: $46
    xor h                                         ; $5fdc: $ac
    ld h, b                                       ; $5fdd: $60
    jr z, @-$6d                                   ; $5fde: $28 $91

    adc l                                         ; $5fe0: $8d
    rrca                                          ; $5fe1: $0f
    ld sp, $4201                                  ; $5fe2: $31 $01 $42
    ld a, $c6                                     ; $5fe5: $3e $c6
    pop bc                                        ; $5fe7: $c1
    ld a, [hl]                                    ; $5fe8: $7e
    ldh [rIE], a                                  ; $5fe9: $e0 $ff
    and b                                         ; $5feb: $a0
    jp Jump_000_07c0                              ; $5fec: $c3 $c0 $07


    nop                                           ; $5fef: $00
    ld b, $0c                                     ; $5ff0: $06 $0c
    add c                                         ; $5ff2: $81
    ldh [$82], a                                  ; $5ff3: $e0 $82
    add l                                         ; $5ff5: $85
    dec [hl]                                      ; $5ff6: $35
    ld b, b                                       ; $5ff7: $40
    ld [c], a                                     ; $5ff8: $e2
    daa                                           ; $5ff9: $27
    dec d                                         ; $5ffa: $15
    add [hl]                                      ; $5ffb: $86
    ld e, $4c                                     ; $5ffc: $1e $4c
    adc c                                         ; $5ffe: $89
    inc l                                         ; $5fff: $2c
    ld bc, $403d                                  ; $6000: $01 $3d $40
    ld b, [hl]                                    ; $6003: $46
    ret nz                                        ; $6004: $c0

    db $fd                                        ; $6005: $fd
    ret nz                                        ; $6006: $c0

    ret nz                                        ; $6007: $c0

    pop hl                                        ; $6008: $e1
    inc bc                                        ; $6009: $03
    nop                                           ; $600a: $00
    ld b, $7c                                     ; $600b: $06 $7c
    and c                                         ; $600d: $a1
    pop bc                                        ; $600e: $c1
    and c                                         ; $600f: $a1
    add d                                         ; $6010: $82
    add h                                         ; $6011: $84
    ld a, [c]                                     ; $6012: $f2
    jr nz, jr_02c_6015                            ; $6013: $20 $00

jr_02c_6015:
    rst $00                                       ; $6015: $c7

jr_02c_6016:
    ld h, b                                       ; $6016: $60
    ld h, d                                       ; $6017: $62
    ld h, h                                       ; $6018: $64
    cp e                                          ; $6019: $bb
    db $eb                                        ; $601a: $eb
    ld a, a                                       ; $601b: $7f
    ldh [$3f], a                                  ; $601c: $e0 $3f
    ld a, a                                       ; $601e: $7f
    pop hl                                        ; $601f: $e1
    ret nz                                        ; $6020: $c0

    ld [c], a                                     ; $6021: $e2
    ld b, [hl]                                    ; $6022: $46
    ld b, a                                       ; $6023: $47
    add d                                         ; $6024: $82
    and [hl]                                      ; $6025: $a6
    ldh [rSC], a                                  ; $6026: $e0 $02
    ld [c], a                                     ; $6028: $e2
    and $43                                       ; $6029: $e6 $43
    ld c, c                                       ; $602b: $49
    ld l, l                                       ; $602c: $6d
    add hl, bc                                    ; $602d: $09
    adc e                                         ; $602e: $8b
    ld a, $c0                                     ; $602f: $3e $c0
    ld b, d                                       ; $6031: $42
    ld b, l                                       ; $6032: $45
    ld b, [hl]                                    ; $6033: $46
    ld b, $80                                     ; $6034: $06 $80
    pop hl                                        ; $6036: $e1
    ld b, [hl]                                    ; $6037: $46
    ld b, l                                       ; $6038: $45
    add [hl]                                      ; $6039: $86
    and c                                         ; $603a: $a1
    pop bc                                        ; $603b: $c1
    push hl                                       ; $603c: $e5
    add h                                         ; $603d: $84
    ld h, b                                       ; $603e: $60
    inc a                                         ; $603f: $3c
    ld b, d                                       ; $6040: $42
    nop                                           ; $6041: $00
    call $ae70                                    ; $6042: $cd $70 $ae
    ld hl, $4260                                  ; $6045: $21 $60 $42
    ld c, b                                       ; $6048: $48
    ld h, l                                       ; $6049: $65
    cp [hl]                                       ; $604a: $be
    and b                                         ; $604b: $a0
    ld b, h                                       ; $604c: $44
    ld b, e                                       ; $604d: $43
    ld c, c                                       ; $604e: $49
    rst $38                                       ; $604f: $ff
    ldh [rP1], a                                  ; $6050: $e0 $00
    adc c                                         ; $6052: $89
    and b                                         ; $6053: $a0
    add b                                         ; $6054: $80
    adc c                                         ; $6055: $89
    add d                                         ; $6056: $82
    call nz, Call_000_2a67                        ; $6057: $c4 $67 $2a
    ld [$db20], a                                 ; $605a: $ea $20 $db
    inc hl                                        ; $605d: $23
    ret nz                                        ; $605e: $c0

    ld l, c                                       ; $605f: $69
    add e                                         ; $6060: $83
    add b                                         ; $6061: $80
    inc l                                         ; $6062: $2c

jr_02c_6063:
    cp [hl]                                       ; $6063: $be
    pop hl                                        ; $6064: $e1
    add e                                         ; $6065: $83
    ld [c], a                                     ; $6066: $e2
    dec hl                                        ; $6067: $2b
    ld a, [hl+]                                   ; $6068: $2a
    inc b                                         ; $6069: $04
    ld h, [hl]                                    ; $606a: $66
    ld d, d                                       ; $606b: $52
    ld [c], a                                     ; $606c: $e2
    inc hl                                        ; $606d: $23
    nop                                           ; $606e: $00
    xor c                                         ; $606f: $a9
    nop                                           ; $6070: $00
    ld c, l                                       ; $6071: $4d
    ld b, l                                       ; $6072: $45
    adc [hl]                                      ; $6073: $8e
    jr nz, jr_02c_6016                            ; $6074: $20 $a0

    ld [hl+], a                                   ; $6076: $22
    ld a, $84                                     ; $6077: $3e $84
    inc bc                                        ; $6079: $03

jr_02c_607a:
    add [hl]                                      ; $607a: $86
    inc b                                         ; $607b: $04
    add a                                         ; $607c: $87
    ld [hl], c                                    ; $607d: $71
    ld b, d                                       ; $607e: $42
    sub l                                         ; $607f: $95
    db $e4                                        ; $6080: $e4
    jr jr_02c_60d6                                ; $6081: $18 $53

    add hl, hl                                    ; $6083: $29
    xor [hl]                                      ; $6084: $ae
    inc hl                                        ; $6085: $23
    ld e, l                                       ; $6086: $5d
    inc hl                                        ; $6087: $23
    ld e, d                                       ; $6088: $5a
    ld e, e                                       ; $6089: $5b
    cp [hl]                                       ; $608a: $be
    ld h, l                                       ; $608b: $65
    pop bc                                        ; $608c: $c1
    ld h, b                                       ; $608d: $60
    add h                                         ; $608e: $84
    ld h, d                                       ; $608f: $62
    add [hl]                                      ; $6090: $86
    or h                                          ; $6091: $b4
    ld c, b                                       ; $6092: $48
    ld c, l                                       ; $6093: $4d
    ld d, b                                       ; $6094: $50
    ld [c], a                                     ; $6095: $e2
    inc hl                                        ; $6096: $23
    ld d, e                                       ; $6097: $53
    add hl, bc                                    ; $6098: $09
    nop                                           ; $6099: $00
    and [hl]                                      ; $609a: $a6
    adc [hl]                                      ; $609b: $8e
    inc hl                                        ; $609c: $23
    ld e, h                                       ; $609d: $5c
    ld bc, $815d                                  ; $609e: $01 $5d $81
    ld d, d                                       ; $60a1: $52
    push bc                                       ; $60a2: $c5
    ld b, l                                       ; $60a3: $45
    ld [c], a                                     ; $60a4: $e2
    dec h                                         ; $60a5: $25
    ld h, a                                       ; $60a6: $67
    ld [$2587], sp                                ; $60a7: $08 $87 $25
    cp d                                          ; $60aa: $ba
    and $bf                                       ; $60ab: $e6 $bf
    push af                                       ; $60ad: $f5
    ret nz                                        ; $60ae: $c0

    add l                                         ; $60af: $85
    add l                                         ; $60b0: $85

Jump_02c_60b1:
    cp d                                          ; $60b1: $ba
    ld [bc], a                                    ; $60b2: $02
    nop                                           ; $60b3: $00
    ret                                           ; $60b4: $c9


    cp h                                          ; $60b5: $bc
    ld h, l                                       ; $60b6: $65
    ld c, d                                       ; $60b7: $4a
    nop                                           ; $60b8: $00
    sbc [hl]                                      ; $60b9: $9e
    nop                                           ; $60ba: $00
    ld d, h                                       ; $60bb: $54
    ld d, l                                       ; $60bc: $55
    nop                                           ; $60bd: $00
    rst $38                                       ; $60be: $ff
    dec l                                         ; $60bf: $2d
    jr z, jr_02c_6063                             ; $60c0: $28 $a1

    jp $0700                                      ; $60c2: $c3 $00 $07


    jr nz, jr_02c_6140                            ; $60c5: $20 $79

    inc bc                                        ; $60c7: $03

jr_02c_60c8:
    nop                                           ; $60c8: $00
    xor d                                         ; $60c9: $aa
    nop                                           ; $60ca: $00
    ld b, a                                       ; $60cb: $47
    or $20                                        ; $60cc: $f6 $20
    nop                                           ; $60ce: $00
    ld a, [hl]                                    ; $60cf: $7e
    ld b, c                                       ; $60d0: $41
    ld [hl+], a                                   ; $60d1: $22
    nop                                           ; $60d2: $00
    cp [hl]                                       ; $60d3: $be
    dec hl                                        ; $60d4: $2b
    rrca                                          ; $60d5: $0f

jr_02c_60d6:
    inc hl                                        ; $60d6: $23
    ld l, $02                                     ; $60d7: $2e $02
    call nz, Call_02c_53a0                        ; $60d9: $c4 $a0 $53
    add hl, bc                                    ; $60dc: $09
    nop                                           ; $60dd: $00
    ld l, e                                       ; $60de: $6b
    ret nz                                        ; $60df: $c0

jr_02c_60e0:
    ld a, e                                       ; $60e0: $7b
    ld b, d                                       ; $60e1: $42
    pop bc                                        ; $60e2: $c1
    inc bc                                        ; $60e3: $03
    ld d, h                                       ; $60e4: $54
    nop                                           ; $60e5: $00
    ld a, e                                       ; $60e6: $7b
    inc h                                         ; $60e7: $24
    ld b, b                                       ; $60e8: $40
    jr nz, jr_02c_607a                            ; $60e9: $20 $8f

    nop                                           ; $60eb: $00
    ld d, h                                       ; $60ec: $54
    ld d, l                                       ; $60ed: $55
    inc bc                                        ; $60ee: $03
    ld a, c                                       ; $60ef: $79
    ld a, d                                       ; $60f0: $7a
    and b                                         ; $60f1: $a0
    ret nz                                        ; $60f2: $c0

    call nz, $cea3                                ; $60f3: $c4 $a3 $ce
    db $eb                                        ; $60f6: $eb
    nop                                           ; $60f7: $00
    daa                                           ; $60f8: $27
    or $00                                        ; $60f9: $f6 $00
    pop bc                                        ; $60fb: $c1
    rlca                                          ; $60fc: $07
    nop                                           ; $60fd: $00
    ret nz                                        ; $60fe: $c0

    ld [$6468], sp                                ; $60ff: $08 $68 $64
    ld c, b                                       ; $6102: $48
    and c                                         ; $6103: $a1
    add l                                         ; $6104: $85
    db $eb                                        ; $6105: $eb
    nop                                           ; $6106: $00
    ld c, e                                       ; $6107: $4b
    ld a, e                                       ; $6108: $7b
    ld [$43b7], sp                                ; $6109: $08 $b7 $43
    inc c                                         ; $610c: $0c
    db $e3                                        ; $610d: $e3
    nop                                           ; $610e: $00
    xor [hl]                                      ; $610f: $ae
    nop                                           ; $6110: $00
    ld c, e                                       ; $6111: $4b
    call nz, $ee85                                ; $6112: $c4 $85 $ee
    nop                                           ; $6115: $00
    rst $28                                       ; $6116: $ef
    jr z, jr_02c_60e0                             ; $6117: $28 $c7

    ld l, [hl]                                    ; $6119: $6e
    ld b, e                                       ; $611a: $43
    and a                                         ; $611b: $a7
    ld b, e                                       ; $611c: $43
    adc l                                         ; $611d: $8d
    ld b, d                                       ; $611e: $42
    nop                                           ; $611f: $00
    ret c                                         ; $6120: $d8

    db $f4                                        ; $6121: $f4
    nop                                           ; $6122: $00
    db $ec                                        ; $6123: $ec
    jr z, jr_02c_616e                             ; $6124: $28 $48

    or b                                          ; $6126: $b0
    and c                                         ; $6127: $a1
    and a                                         ; $6128: $a7
    ld b, [hl]                                    ; $6129: $46
    add l                                         ; $612a: $85
    ld a, [c]                                     ; $612b: $f2
    nop                                           ; $612c: $00
    rst $28                                       ; $612d: $ef
    or $c9                                        ; $612e: $f6 $c9
    nop                                           ; $6130: $00
    ld e, b                                       ; $6131: $58
    add b                                         ; $6132: $80
    jp hl                                         ; $6133: $e9


    and h                                         ; $6134: $a4
    add l                                         ; $6135: $85
    push af                                       ; $6136: $f5
    nop                                           ; $6137: $00
    pop af                                        ; $6138: $f1
    jr z, jr_02c_60c8                             ; $6139: $28 $8d

    and d                                         ; $613b: $a2
    and c                                         ; $613c: $a1
    ld e, l                                       ; $613d: $5d
    push af                                       ; $613e: $f5
    nop                                           ; $613f: $00

jr_02c_6140:
    ld sp, hl                                     ; $6140: $f9
    nop                                           ; $6141: $00
    or $ff                                        ; $6142: $f6 $ff
    nop                                           ; $6144: $00
    db $fc                                        ; $6145: $fc
    or $ff                                        ; $6146: $f6 $ff
    nop                                           ; $6148: $00
    ld a, [$fff6]                                 ; $6149: $fa $f6 $ff
    nop                                           ; $614c: $00
    db $fd                                        ; $614d: $fd
    or $ff                                        ; $614e: $f6 $ff
    nop                                           ; $6150: $00
    rst $38                                       ; $6151: $ff
    nop                                           ; $6152: $00
    or $ff                                        ; $6153: $f6 $ff
    nop                                           ; $6155: $00
    rst $38                                       ; $6156: $ff
    nop                                           ; $6157: $00
    rst $38                                       ; $6158: $ff
    sbc c                                         ; $6159: $99
    rst $38                                       ; $615a: $ff
    nop                                           ; $615b: $00
    rst $38                                       ; $615c: $ff
    adc a                                         ; $615d: $8f
    rst $38                                       ; $615e: $ff
    nop                                           ; $615f: $00
    rst $38                                       ; $6160: $ff
    or $ff                                        ; $6161: $f6 $ff
    nop                                           ; $6163: $00
    nop                                           ; $6164: $00
    rst $38                                       ; $6165: $ff
    or $ff                                        ; $6166: $f6 $ff
    nop                                           ; $6168: $00
    rst $38                                       ; $6169: $ff
    or $ff                                        ; $616a: $f6 $ff
    nop                                           ; $616c: $00
    rst $38                                       ; $616d: $ff

jr_02c_616e:
    or $ff                                        ; $616e: $f6 $ff
    nop                                           ; $6170: $00
    ld b, h                                       ; $6171: $44
    nop                                           ; $6172: $00
    nop                                           ; $6173: $00
    nop                                           ; $6174: $00
    ccf                                           ; $6175: $3f
    ld c, $0e                                     ; $6176: $0e $0e
    dec c                                         ; $6178: $0d
    dec c                                         ; $6179: $0d
    dec c                                         ; $617a: $0d
    ld c, $ff                                     ; $617b: $0e $ff
    db $e3                                        ; $617d: $e3
    or $ff                                        ; $617e: $f6 $ff
    nop                                           ; $6180: $00
    db $ec                                        ; $6181: $ec
    rst $28                                       ; $6182: $ef
    db $dd                                        ; $6183: $dd
    pop hl                                        ; $6184: $e1
    rst $10                                       ; $6185: $d7
    db $e3                                        ; $6186: $e3
    or $ff                                        ; $6187: $f6 $ff
    or $f6                                        ; $6189: $f6 $f6
    sbc c                                         ; $618b: $99
    rst $38                                       ; $618c: $ff
    or $f9                                        ; $618d: $f6 $f9
    sbc c                                         ; $618f: $99
    rst $38                                       ; $6190: $ff
    nop                                           ; $6191: $00
    add l                                         ; $6192: $85
    rst $38                                       ; $6193: $ff
    or $ff                                        ; $6194: $f6 $ff
    nop                                           ; $6196: $00
    rst $38                                       ; $6197: $ff
    or $ff                                        ; $6198: $f6 $ff
    ld a, e                                       ; $619a: $7b
    rst $38                                       ; $619b: $ff
    or $ff                                        ; $619c: $f6 $ff
    nop                                           ; $619e: $00
    rst $38                                       ; $619f: $ff
    or $ff                                        ; $61a0: $f6 $ff
    nop                                           ; $61a2: $00
    add l                                         ; $61a3: $85
    rst $38                                       ; $61a4: $ff
    or $ff                                        ; $61a5: $f6 $ff
    nop                                           ; $61a7: $00
    rst $38                                       ; $61a8: $ff
    or $ff                                        ; $61a9: $f6 $ff
    ld a, e                                       ; $61ab: $7b
    rst $38                                       ; $61ac: $ff
    ld [c], a                                     ; $61ad: $e2
    and $6e                                       ; $61ae: $e6 $6e
    ld [c], a                                     ; $61b0: $e2
    db $fd                                        ; $61b1: $fd
    pop hl                                        ; $61b2: $e1
    nop                                           ; $61b3: $00
    or $e3                                        ; $61b4: $f6 $e3
    nop                                           ; $61b6: $00
    rst $38                                       ; $61b7: $ff
    db $ec                                        ; $61b8: $ec
    db $eb                                        ; $61b9: $eb
    rst $38                                       ; $61ba: $ff
    db $e4                                        ; $61bb: $e4
    ld [hl], c                                    ; $61bc: $71
    db $e4                                        ; $61bd: $e4
    ld c, c                                       ; $61be: $49
    add sp, -$7b                                  ; $61bf: $e8 $85
    pop af                                        ; $61c1: $f1
    jp nc, Jump_000_00e5                          ; $61c2: $d2 $e5 $00

    adc e                                         ; $61c5: $8b
    db $e4                                        ; $61c6: $e4
    adc a                                         ; $61c7: $8f
    rst $20                                       ; $61c8: $e7
    add b                                         ; $61c9: $80
    db $e3                                        ; $61ca: $e3
    add hl, bc                                    ; $61cb: $09
    db $e4                                        ; $61cc: $e4
    nop                                           ; $61cd: $00
    rst $30                                       ; $61ce: $f7
    ret                                           ; $61cf: $c9


    add sp, -$09                                  ; $61d0: $e8 $f7
    rst $20                                       ; $61d2: $e7
    xor l                                         ; $61d3: $ad
    ld [$00b8], a                                 ; $61d4: $ea $b8 $00
    or $5c                                        ; $61d7: $f6 $5c
    jp hl                                         ; $61d9: $e9


    add b                                         ; $61da: $80
    ld [$0d4d], a                                 ; $61db: $ea $4d $0d
    ld c, l                                       ; $61de: $4d
    rst $38                                       ; $61df: $ff
    ldh [$2d], a                                  ; $61e0: $e0 $2d
    jp $2d4d                                      ; $61e2: $c3 $4d $2d


    ld l, c                                       ; $61e5: $69
    add sp, $00                                   ; $61e6: $e8 $00
    ld a, [c]                                     ; $61e8: $f2
    ld e, h                                       ; $61e9: $5c
    rst $20                                       ; $61ea: $e7
    cp $eb                                        ; $61eb: $fe $eb
    ld l, l                                       ; $61ed: $6d
    dec hl                                        ; $61ee: $2b
    ld b, e                                       ; $61ef: $43
    dec hl                                        ; $61f0: $2b
    ld a, [bc]                                    ; $61f1: $0a
    cp $e0                                        ; $61f2: $fe $e0

Call_02c_61f4:
    cp a                                          ; $61f4: $bf
    db $e4                                        ; $61f5: $e4
    add l                                         ; $61f6: $85
    di                                            ; $61f7: $f3
    ld c, $e8                                     ; $61f8: $0e $e8
    dec c                                         ; $61fa: $0d
    sub b                                         ; $61fb: $90
    pop hl                                        ; $61fc: $e1

jr_02c_61fd:
    ld bc, $920d                                  ; $61fd: $01 $0d $92
    db $e3                                        ; $6200: $e3
    adc b                                         ; $6201: $88
    pop hl                                        ; $6202: $e1
    pop bc                                        ; $6203: $c1
    db $e4                                        ; $6204: $e4
    cp a                                          ; $6205: $bf
    push hl                                       ; $6206: $e5
    nop                                           ; $6207: $00
    ret nc                                        ; $6208: $d0

    sub b                                         ; $6209: $90
    xor $91                                       ; $620a: $ee $91
    ldh [$6c], a                                  ; $620c: $e0 $6c
    ld d, c                                       ; $620e: $51
    ld [c], a                                     ; $620f: $e2
    or $e0                                        ; $6210: $f6 $e0
    dec bc                                        ; $6212: $0b
    ld a, [bc]                                    ; $6213: $0a
    pop bc                                        ; $6214: $c1
    push hl                                       ; $6215: $e5
    ld a, [bc]                                    ; $6216: $0a
    ld l, e                                       ; $6217: $6b
    ld a, $e1                                     ; $6218: $3e $e1
    or b                                          ; $621a: $b0
    nop                                           ; $621b: $00
    pop de                                        ; $621c: $d1
    jr nz, @-$36                                  ; $621d: $20 $c8

    dec d                                         ; $621f: $15
    ldh [$c1], a                                  ; $6220: $e0 $c1
    ld [c], a                                     ; $6222: $e2
    dec hl                                        ; $6223: $2b
    dec hl                                        ; $6224: $2b
    or $e5                                        ; $6225: $f6 $e5
    dec bc                                        ; $6227: $0b
    ld [bc], a                                    ; $6228: $02
    pop bc                                        ; $6229: $c1
    and $4a                                       ; $622a: $e6 $4a
    add b                                         ; $622c: $80
    db $e4                                        ; $622d: $e4
    nop                                           ; $622e: $00
    call $c752                                    ; $622f: $cd $52 $c7
    push bc                                       ; $6232: $c5
    db $e3                                        ; $6233: $e3
    db $fc                                        ; $6234: $fc
    db $eb                                        ; $6235: $eb
    ld a, a                                       ; $6236: $7f
    ldh [rTMA], a                                 ; $6237: $e0 $06
    pop bc                                        ; $6239: $c1
    db $e4                                        ; $623a: $e4
    dec c                                         ; $623b: $0d
    ld l, l                                       ; $623c: $6d
    jp z, $0aa8                                   ; $623d: $ca $a8 $0a

    call $a177                                    ; $6240: $cd $77 $a1
    pop bc                                        ; $6243: $c1
    and $cc                                       ; $6244: $e6 $cc
    push hl                                       ; $6246: $e5
    nop                                           ; $6247: $00
    ld a, b                                       ; $6248: $78
    pop hl                                        ; $6249: $e1
    xor [hl]                                      ; $624a: $ae
    push hl                                       ; $624b: $e5
    pop bc                                        ; $624c: $c1
    ldh [rP1], a                                  ; $624d: $e0 $00
    push de                                       ; $624f: $d5
    ld [$c1e9], sp                                ; $6250: $08 $e9 $c1
    db $e3                                        ; $6253: $e3
    cp a                                          ; $6254: $bf
    and $6f                                       ; $6255: $e6 $6f
    add sp, $28                                   ; $6257: $e8 $28
    ld b, b                                       ; $6259: $40
    ret nz                                        ; $625a: $c0

    nop                                           ; $625b: $00
    or h                                          ; $625c: $b4
    ld b, e                                       ; $625d: $43
    ldh a, [$0b]                                  ; $625e: $f0 $0b
    rst $38                                       ; $6260: $ff
    ld [c], a                                     ; $6261: $e2
    dec hl                                        ; $6262: $2b

jr_02c_6263:
    rst $38                                       ; $6263: $ff
    ldh [$2e], a                                  ; $6264: $e0 $2e
    and $03                                       ; $6266: $e6 $03
    dec l                                         ; $6268: $2d
    ld c, l                                       ; $6269: $4d
    nop                                           ; $626a: $00
    call nc, $a454                                ; $626b: $d4 $54 $a4
    inc c                                         ; $626e: $0c
    jp hl                                         ; $626f: $e9


    rst $38                                       ; $6270: $ff
    and $bf                                       ; $6271: $e6 $bf
    rst $20                                       ; $6273: $e7
    ld b, c                                       ; $6274: $41
    db $e4                                        ; $6275: $e4
    jr c, jr_02c_61fd                             ; $6276: $38 $85

    or e                                          ; $6278: $b3
    ld a, c                                       ; $6279: $79
    add c                                         ; $627a: $81
    pop bc                                        ; $627b: $c1
    ld [$6b6b], a                                 ; $627c: $ea $6b $6b
    ld c, e                                       ; $627f: $4b
    rst $38                                       ; $6280: $ff
    ldh [$bd], a                                  ; $6281: $e0 $bd
    add sp, -$50                                  ; $6283: $e8 $b0
    ld [bc], a                                    ; $6285: $02
    ldh [$85], a                                  ; $6286: $e0 $85
    xor d                                         ; $6288: $aa
    nop                                           ; $6289: $00
    srl c                                         ; $628a: $cb $39
    add b                                         ; $628c: $80
    ld c, l                                       ; $628d: $4d
    dec l                                         ; $628e: $2d
    pop bc                                        ; $628f: $c1
    ld [$102b], a                                 ; $6290: $ea $2b $10
    ld a, e                                       ; $6293: $7b
    ldh [$bd], a                                  ; $6294: $e0 $bd
    pop hl                                        ; $6296: $e1
    cp h                                          ; $6297: $bc
    pop hl                                        ; $6298: $e1
    add b                                         ; $6299: $80
    and b                                         ; $629a: $a0
    dec bc                                        ; $629b: $0b
    inc b                                         ; $629c: $04
    jp $c900                                      ; $629d: $c3 $00 $c9


    adc e                                         ; $62a0: $8b
    xor h                                         ; $62a1: $ac
    jr nc, jr_02c_6263                            ; $62a2: $30 $bf

    ld [c], a                                     ; $62a4: $e2
    sub $e1                                       ; $62a5: $d6 $e1
    pop bc                                        ; $62a7: $c1
    db $e3                                        ; $62a8: $e3
    rst $38                                       ; $62a9: $ff
    ret nz                                        ; $62aa: $c0

    ld c, e                                       ; $62ab: $4b
    dec hl                                        ; $62ac: $2b
    ld a, c                                       ; $62ad: $79
    ldh [$bb], a                                  ; $62ae: $e0 $bb
    ldh [rTMA], a                                 ; $62b0: $e0 $06
    ld hl, sp-$40                                 ; $62b2: $f8 $c0
    dec bc                                        ; $62b4: $0b
    ld a, [bc]                                    ; $62b5: $0a
    ld [bc], a                                    ; $62b6: $02
    and h                                         ; $62b7: $a4
    nop                                           ; $62b8: $00
    xor b                                         ; $62b9: $a8
    ld e, c                                       ; $62ba: $59
    adc h                                         ; $62bb: $8c
    ld b, a                                       ; $62bc: $47
    ld h, b                                       ; $62bd: $60
    jp nz, $eee4                                  ; $62be: $c2 $e4 $ee

    ld b, e                                       ; $62c1: $43
    ldh [rOCPD], a                                ; $62c2: $e0 $6b
    dec bc                                        ; $62c4: $0b
    dec hl                                        ; $62c5: $2b
    ld b, b                                       ; $62c6: $40
    ldh [$2b], a                                  ; $62c7: $e0 $2b
    dec bc                                        ; $62c9: $0b
    dec hl                                        ; $62ca: $2b
    ld b, b                                       ; $62cb: $40
    cp a                                          ; $62cc: $bf
    ldh [$bc], a                                  ; $62cd: $e0 $bc
    pop hl                                        ; $62cf: $e1
    ld [bc], a                                    ; $62d0: $02
    and [hl]                                      ; $62d1: $a6
    ld c, c                                       ; $62d2: $49
    xor a                                         ; $62d3: $af
    ret nz                                        ; $62d4: $c0

    jp hl                                         ; $62d5: $e9


    add e                                         ; $62d6: $83
    db $e4                                        ; $62d7: $e4
    ld l, e                                       ; $62d8: $6b
    add [hl]                                      ; $62d9: $86
    ret nz                                        ; $62da: $c0

    add b                                         ; $62db: $80
    ld bc, $3ce1                                  ; $62dc: $01 $e1 $3c
    ldh [$b5], a                                  ; $62df: $e0 $b5
    ld [c], a                                     ; $62e1: $e2
    halt                                          ; $62e2: $76
    ldh [$c1], a                                  ; $62e3: $e0 $c1
    add d                                         ; $62e5: $82
    ld h, a                                       ; $62e6: $67

jr_02c_62e7:
    ld l, a                                       ; $62e7: $6f
    db $d3                                        ; $62e8: $d3
    ld l, e                                       ; $62e9: $6b
    ld a, [bc]                                    ; $62ea: $0a
    ld bc, $c62b                                  ; $62eb: $01 $2b $c6
    ldh [rLY], a                                  ; $62ee: $e0 $44
    ld [c], a                                     ; $62f0: $e2
    call $c0e0                                    ; $62f1: $cd $e0 $c0
    ld [$c300], a                                 ; $62f4: $ea $00 $c3
    nop                                           ; $62f7: $00
    pop af                                        ; $62f8: $f1
    ld [hl+], a                                   ; $62f9: $22
    add c                                         ; $62fa: $81
    nop                                           ; $62fb: $00
    inc h                                         ; $62fc: $24
    push hl                                       ; $62fd: $e5

jr_02c_62fe:
    db $dd                                        ; $62fe: $dd
    add b                                         ; $62ff: $80
    dec bc                                        ; $6300: $0b
    pop hl                                        ; $6301: $e1
    inc b                                         ; $6302: $04
    ld [c], a                                     ; $6303: $e2
    add b                                         ; $6304: $80
    db $e4                                        ; $6305: $e4
    ccf                                           ; $6306: $3f
    pop hl                                        ; $6307: $e1
    or b                                          ; $6308: $b0
    pop hl                                        ; $6309: $e1
    nop                                           ; $630a: $00
    pop bc                                        ; $630b: $c1
    jr jr_02c_632e                                ; $630c: $18 $20

    adc b                                         ; $630e: $88
    call nz, $ea41                                ; $630f: $c4 $41 $ea
    ld h, c                                       ; $6312: $61
    ld c, l                                       ; $6313: $4d
    ld l, l                                       ; $6314: $6d
    ld h, $88                                     ; $6315: $26 $88
    db $f4                                        ; $6317: $f4
    ldh [$c0], a                                  ; $6318: $e0 $c0
    ld [c], a                                     ; $631a: $e2
    ld bc, $400b                                  ; $631b: $01 $0b $40
    ldh [$84], a                                  ; $631e: $e0 $84
    pop bc                                        ; $6320: $c1
    pop bc                                        ; $6321: $c1
    db $e4                                        ; $6322: $e4
    ld [hl-], a                                   ; $6323: $32
    pop bc                                        ; $6324: $c1
    add b                                         ; $6325: $80
    and h                                         ; $6326: $a4
    nop                                           ; $6327: $00
    adc d                                         ; $6328: $8a
    sbc e                                         ; $6329: $9b
    add c                                         ; $632a: $81
    ld [bc], a                                    ; $632b: $02
    ld h, $83                                     ; $632c: $26 $83

jr_02c_632e:
    ld c, e                                       ; $632e: $4b
    sbc a                                         ; $632f: $9f
    ld h, c                                       ; $6330: $61
    pop bc                                        ; $6331: $c1
    pop hl                                        ; $6332: $e1
    add $a1                                       ; $6333: $c6 $a1

jr_02c_6335:
    ld b, d                                       ; $6335: $42
    pop hl                                        ; $6336: $e1
    set 4, d                                      ; $6337: $cb $e2
    add b                                         ; $6339: $80
    and c                                         ; $633a: $a1
    jr nz, jr_02c_62fe                            ; $633b: $20 $c1

    db $e3                                        ; $633d: $e3
    cp l                                          ; $633e: $bd
    add e                                         ; $633f: $83
    ret nz                                        ; $6340: $c0

    rst $20                                       ; $6341: $e7
    ld c, c                                       ; $6342: $49
    ld b, e                                       ; $6343: $43
    xor h                                         ; $6344: $ac
    ld h, b                                       ; $6345: $60
    ld a, [bc]                                    ; $6346: $0a
    ld h, $85                                     ; $6347: $26 $85
    cp $e2                                        ; $6349: $fe $e2
    jr jr_02c_62e7                                ; $634b: $18 $9a

    ld h, b                                       ; $634d: $60
    adc $a0                                       ; $634e: $ce $a0
    ld b, $c0                                     ; $6350: $06 $c0
    dec hl                                        ; $6352: $2b
    dec hl                                        ; $6353: $2b
    ld bc, $f9c2                                  ; $6354: $01 $c2 $f9
    ldh [$38], a                                  ; $6357: $e0 $38
    jp nz, $b310                                  ; $6359: $c2 $10 $b3

    and b                                         ; $635c: $a0
    add b                                         ; $635d: $80
    and d                                         ; $635e: $a2
    sbc c                                         ; $635f: $99
    ld c, b                                       ; $6360: $48
    ld h, $44                                     ; $6361: $26 $44
    dec l                                         ; $6363: $2d
    ld d, b                                       ; $6364: $50
    adc [hl]                                      ; $6365: $8e
    ld b, l                                       ; $6366: $45
    and c                                         ; $6367: $a1
    ld a, [bc]                                    ; $6368: $0a
    and c                                         ; $6369: $a1
    ld b, b                                       ; $636a: $40
    jp $c1e7                                      ; $636b: $c3 $e7 $c1


    and $af                                       ; $636e: $e6 $af
    ld c, c                                       ; $6370: $49
    rst $00                                       ; $6371: $c7
    inc h                                         ; $6372: $24
    xor $82                                       ; $6373: $ee $82

jr_02c_6375:
    cp e                                          ; $6375: $bb
    add sp, $6b                                   ; $6376: $e8 $6b
    ld a, a                                       ; $6378: $7f
    and $02                                       ; $6379: $e6 $02
    call z, Call_02c_6ba1                         ; $637b: $cc $a1 $6b
    ld b, b                                       ; $637e: $40
    and e                                         ; $637f: $a3
    add d                                         ; $6380: $82
    ld [c], a                                     ; $6381: $e2
    add d                                         ; $6382: $82
    add h                                         ; $6383: $84
    nop                                           ; $6384: $00
    ret nc                                        ; $6385: $d0

    ld b, a                                       ; $6386: $47
    and b                                         ; $6387: $a0

jr_02c_6388:
    ld e, a                                       ; $6388: $5f
    ld h, l                                       ; $6389: $65
    nop                                           ; $638a: $00
    reti                                          ; $638b: $d9


    and b                                         ; $638c: $a0
    ld c, c                                       ; $638d: $49
    and e                                         ; $638e: $a3
    ld b, e                                       ; $638f: $43
    and c                                         ; $6390: $a1
    dec b                                         ; $6391: $05
    db $e4                                        ; $6392: $e4
    jr nc, jr_02c_6375                            ; $6393: $30 $e0

    ld [bc], a                                    ; $6395: $02
    jp hl                                         ; $6396: $e9


    nop                                           ; $6397: $00
    call $2140                                    ; $6398: $cd $40 $21
    nop                                           ; $639b: $00
    ld l, b                                       ; $639c: $68
    add e                                         ; $639d: $83
    inc sp                                        ; $639e: $33
    pop hl                                        ; $639f: $e1
    sbc b                                         ; $63a0: $98
    ret nz                                        ; $63a1: $c0

    ld d, d                                       ; $63a2: $52
    and c                                         ; $63a3: $a1
    jp Jump_000_05a2                              ; $63a4: $c3 $a2 $05


    push hl                                       ; $63a7: $e5
    add h                                         ; $63a8: $84
    jp nz, $8002                                  ; $63a9: $c2 $02 $80

    jr nz, jr_02c_6388                            ; $63ac: $20 $da

    db $e4                                        ; $63ae: $e4
    ld c, c                                       ; $63af: $49
    ld [hl], b                                    ; $63b0: $70
    jr z, jr_02c_6335                             ; $63b1: $28 $82

    rra                                           ; $63b3: $1f
    ld b, c                                       ; $63b4: $41
    or a                                          ; $63b5: $b7
    pop bc                                        ; $63b6: $c1
    dec bc                                        ; $63b7: $0b
    rst $08                                       ; $63b8: $cf
    add e                                         ; $63b9: $83
    ld b, $e6                                     ; $63ba: $06 $e6
    ldh [$a7], a                                  ; $63bc: $e0 $a7
    call nz, $c302                                ; $63be: $c4 $02 $c3
    ld d, l                                       ; $63c1: $55
    add l                                         ; $63c2: $85
    reti                                          ; $63c3: $d9


    daa                                           ; $63c4: $27
    xor $e6                                       ; $63c5: $ee $e6
    dec c                                         ; $63c7: $0d
    dec l                                         ; $63c8: $2d
    dec l                                         ; $63c9: $2d
    dec b                                         ; $63ca: $05
    dec c                                         ; $63cb: $0d
    pop bc                                        ; $63cc: $c1
    pop hl                                        ; $63cd: $e1
    ld a, [bc]                                    ; $63ce: $0a
    ld b, a                                       ; $63cf: $47
    add b                                         ; $63d0: $80
    ld bc, $8484                                  ; $63d1: $01 $84 $84
    pop hl                                        ; $63d4: $e1
    pop bc                                        ; $63d5: $c1
    push hl                                       ; $63d6: $e5
    pop bc                                        ; $63d7: $c1
    add $10                                       ; $63d8: $c6 $10
    ld c, c                                       ; $63da: $49
    ld d, b                                       ; $63db: $50
    rra                                           ; $63dc: $1f
    ld h, $37                                     ; $63dd: $26 $37
    call nz, $8205                                ; $63df: $c4 $05 $82
    ld c, e                                       ; $63e2: $4b
    add h                                         ; $63e3: $84
    db $e4                                        ; $63e4: $e4
    daa                                           ; $63e5: $27
    jp $8602                                      ; $63e6: $c3 $02 $86


    nop                                           ; $63e9: $00
    nop                                           ; $63ea: $00
    or c                                          ; $63eb: $b1
    ld d, a                                       ; $63ec: $57
    ld h, $fe                                     ; $63ed: $26 $fe
    jp $a6f2                                      ; $63ef: $c3 $f2 $a6


    ld [hl], h                                    ; $63f2: $74
    ldh [$c1], a                                  ; $63f3: $e0 $c1
    and $c2                                       ; $63f5: $e6 $c2
    ld h, b                                       ; $63f7: $60
    nop                                           ; $63f8: $00
    xor $00                                       ; $63f9: $ee $00
    sub c                                         ; $63fb: $91
    ld c, $76                                     ; $63fc: $0e $76
    rst $00                                       ; $63fe: $c7
    rst $30                                       ; $63ff: $f7
    ld c, b                                       ; $6400: $48
    pop bc                                        ; $6401: $c1
    db $e3                                        ; $6402: $e3
    ld e, e                                       ; $6403: $5b
    inc l                                         ; $6404: $2c
    adc c                                         ; $6405: $89
    ld sp, $e47e                                  ; $6406: $31 $7e $e4
    db $fd                                        ; $6409: $fd
    add hl, hl                                    ; $640a: $29
    inc b                                         ; $640b: $04
    db $eb                                        ; $640c: $eb
    ret nz                                        ; $640d: $c0

    cp $e1                                        ; $640e: $fe $e1
    ld l, l                                       ; $6410: $6d
    ret nz                                        ; $6411: $c0

    db $eb                                        ; $6412: $eb
    nop                                           ; $6413: $00
    ld l, [hl]                                    ; $6414: $6e
    and [hl]                                      ; $6415: $a6
    rst $00                                       ; $6416: $c7
    ld a, [hl]                                    ; $6417: $7e
    db $eb                                        ; $6418: $eb
    inc c                                         ; $6419: $0c
    ld h, c                                       ; $641a: $61
    jr nz, @+$10                                  ; $641b: $20 $0e

    jp nz, Jump_02c_4206                          ; $641d: $c2 $06 $42

    adc $ec                                       ; $6420: $ce $ec
    add l                                         ; $6422: $85
    ld a, [bc]                                    ; $6423: $0a
    cp l                                          ; $6424: $bd
    ld h, $4d                                     ; $6425: $26 $4d
    adc [hl]                                      ; $6427: $8e
    ldh [$84], a                                  ; $6428: $e0 $84
    and $00                                       ; $642a: $e6 $00
    call Call_000_2e44                            ; $642c: $cd $44 $2e
    ld [$5300], sp                                ; $642f: $08 $00 $53
    or c                                          ; $6432: $b1
    ld l, c                                       ; $6433: $69
    ldh a, [$60]                                  ; $6434: $f0 $60
    ld [$8482], a                                 ; $6436: $ea $82 $84
    and $1c                                       ; $6439: $e6 $1c
    ret z                                         ; $643b: $c8

    jr nc, jr_02c_6487                            ; $643c: $30 $49

    xor $b7                                       ; $643e: $ee $b7
    ld [$e7c0], sp                                ; $6440: $08 $c0 $e7
    ld [$6d83], a                                 ; $6443: $ea $83 $6d
    dec l                                         ; $6446: $2d
    jp nc, $8567                                  ; $6447: $d2 $67 $85

    ei                                            ; $644a: $fb
    nop                                           ; $644b: $00
    or $f0                                        ; $644c: $f6 $f0
    ld h, a                                       ; $644e: $67
    ld c, d                                       ; $644f: $4a
    ret c                                         ; $6450: $d8

    push af                                       ; $6451: $f5
    ld [hl-], a                                   ; $6452: $32
    ldh a, [$28]                                  ; $6453: $f0 $28
    jp z, $f885                                   ; $6455: $ca $85 $f8

    ld a, e                                       ; $6458: $7b
    ld sp, hl                                     ; $6459: $f9
    add sp, -$57                                  ; $645a: $e8 $a9
    nop                                           ; $645c: $00
    ld e, l                                       ; $645d: $5d
    ld hl, sp+$00                                 ; $645e: $f8 $00
    xor $28                                       ; $6460: $ee $28
    ld d, c                                       ; $6462: $51
    add l                                         ; $6463: $85
    rst $38                                       ; $6464: $ff
    or $ff                                        ; $6465: $f6 $ff
    ret c                                         ; $6467: $d8

    sub $a3                                       ; $6468: $d6 $a3
    ld a, [$fff6]                                 ; $646a: $fa $f6 $ff
    nop                                           ; $646d: $00
    sbc c                                         ; $646e: $99
    rst $38                                       ; $646f: $ff
    or $ff                                        ; $6470: $f6 $ff
    sbc c                                         ; $6472: $99
    rst $38                                       ; $6473: $ff
    add l                                         ; $6474: $85
    rst $38                                       ; $6475: $ff
    or $ff                                        ; $6476: $f6 $ff
    nop                                           ; $6478: $00
    rst $38                                       ; $6479: $ff
    or $ff                                        ; $647a: $f6 $ff
    ld a, e                                       ; $647c: $7b
    rst $38                                       ; $647d: $ff
    nop                                           ; $647e: $00
    or $ff                                        ; $647f: $f6 $ff
    nop                                           ; $6481: $00
    rst $38                                       ; $6482: $ff
    or $ff                                        ; $6483: $f6 $ff
    add l                                         ; $6485: $85
    rst $38                                       ; $6486: $ff

jr_02c_6487:
    or $ff                                        ; $6487: $f6 $ff
    nop                                           ; $6489: $00
    rst $38                                       ; $648a: $ff
    or $ff                                        ; $648b: $f6 $ff
    ld a, e                                       ; $648d: $7b
    rst $38                                       ; $648e: $ff
    nop                                           ; $648f: $00
    or $ff                                        ; $6490: $f6 $ff
    sbc c                                         ; $6492: $99
    rst $38                                       ; $6493: $ff
    add l                                         ; $6494: $85
    ld a, [$0000]                                 ; $6495: $fa $00 $00
    nop                                           ; $6498: $00
    ld b, c                                       ; $6499: $41
    nop                                           ; $649a: $00
    rst $38                                       ; $649b: $ff
    rst $38                                       ; $649c: $ff
    rst $38                                       ; $649d: $ff
    rst $38                                       ; $649e: $ff
    rst $38                                       ; $649f: $ff
    rst $38                                       ; $64a0: $ff
    rst $38                                       ; $64a1: $ff
    rst $38                                       ; $64a2: $ff
    push af                                       ; $64a3: $f5
    db $f4                                        ; $64a4: $f4
    rrca                                          ; $64a5: $0f
    rst $38                                       ; $64a6: $ff
    rst $30                                       ; $64a7: $f7
    nop                                           ; $64a8: $00
    ldh [rIE], a                                  ; $64a9: $e0 $ff
    ldh [$f5], a                                  ; $64ab: $e0 $f5
    ret z                                         ; $64ad: $c8

    db $e3                                        ; $64ae: $e3
    ret nz                                        ; $64af: $c0

    rst $28                                       ; $64b0: $ef
    jp hl                                         ; $64b1: $e9


    rst $20                                       ; $64b2: $e7
    and a                                         ; $64b3: $a7
    pop hl                                        ; $64b4: $e1

jr_02c_64b5:
    and b                                         ; $64b5: $a0
    db $ec                                        ; $64b6: $ec
    ld h, a                                       ; $64b7: $67

jr_02c_64b8:
    xor $00                                       ; $64b8: $ee $00
    add b                                         ; $64ba: $80
    db $eb                                        ; $64bb: $eb
    ld c, b                                       ; $64bc: $48
    rst $28                                       ; $64bd: $ef
    ld h, b                                       ; $64be: $60
    ld [$f028], a                                 ; $64bf: $ea $28 $f0
    ldh [$f9], a                                  ; $64c2: $e0 $f9
    jr nz, jr_02c_64b5                            ; $64c4: $20 $ef

    ldh [rIE], a                                  ; $64c6: $e0 $ff
    and b                                         ; $64c8: $a0
    rst $38                                       ; $64c9: $ff
    nop                                           ; $64ca: $00
    ldh [$f0], a                                  ; $64cb: $e0 $f0
    adc b                                         ; $64cd: $88
    ret c                                         ; $64ce: $d8

    ldh [rIE], a                                  ; $64cf: $e0 $ff
    add b                                         ; $64d1: $80
    push bc                                       ; $64d2: $c5
    ld c, c                                       ; $64d3: $49
    db $d3                                        ; $64d4: $d3
    jr nz, @+$01                                  ; $64d5: $20 $ff

    ld b, b                                       ; $64d7: $40
    or $20                                        ; $64d8: $f6 $20
    pop de                                        ; $64da: $d1
    nop                                           ; $64db: $00
    db $ec                                        ; $64dc: $ec
    xor [hl]                                      ; $64dd: $ae
    nop                                           ; $64de: $00
    call $adcf                                    ; $64df: $cd $cf $ad
    jr nz, jr_02c_64b8                            ; $64e2: $20 $d4

    ret nc                                        ; $64e4: $d0

    or $c0                                        ; $64e5: $f6 $c0
    or d                                          ; $64e7: $b2
    ldh [rIE], a                                  ; $64e8: $e0 $ff
    ldh [$fc], a                                  ; $64ea: $e0 $fc
    nop                                           ; $64ec: $00
    rst $38                                       ; $64ed: $ff
    rst $38                                       ; $64ee: $ff
    rst $38                                       ; $64ef: $ff
    rst $38                                       ; $64f0: $ff
    rst $38                                       ; $64f1: $ff
    rst $38                                       ; $64f2: $ff
    rst $38                                       ; $64f3: $ff
    rst $38                                       ; $64f4: $ff
    rst $38                                       ; $64f5: $ff
    db $f4                                        ; $64f6: $f4
    nop                                           ; $64f7: $00
    nop                                           ; $64f8: $00
    nop                                           ; $64f9: $00
    ld bc, $ff00                                  ; $64fa: $01 $00 $ff
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
    rst $38                                       ; $6508: $ff
    rst $38                                       ; $6509: $ff
    ld h, b                                       ; $650a: $60
    rst $38                                       ; $650b: $ff
    rst $38                                       ; $650c: $ff
    rst $38                                       ; $650d: $ff
    rst $38                                       ; $650e: $ff
    rst $38                                       ; $650f: $ff
    rst $38                                       ; $6510: $ff
    rst $38                                       ; $6511: $ff
    rst $38                                       ; $6512: $ff
    or $f5                                        ; $6513: $f6 $f5
    pop af                                        ; $6515: $f1
    pop af                                        ; $6516: $f1
    pop hl                                        ; $6517: $e1
    db $fc                                        ; $6518: $fc

jr_02c_6519:
    jr jr_02c_6519                                ; $6519: $18 $fe

    pop hl                                        ; $651b: $e1
    ld [c], a                                     ; $651c: $e2
    ei                                            ; $651d: $fb
    cp l                                          ; $651e: $bd
    db $ec                                        ; $651f: $ec
    inc de                                        ; $6520: $13
    inc de                                        ; $6521: $13
    ldh [rIE], a                                  ; $6522: $e0 $ff
    ldh [rIE], a                                  ; $6524: $e0 $ff
    ldh [$e9], a                                  ; $6526: $e0 $e9
    nop                                           ; $6528: $00
    ld h, c                                       ; $6529: $61
    ld a, [$ee1d]                                 ; $652a: $fa $1d $ee
    and b                                         ; $652d: $a0
    add sp, $01                                   ; $652e: $e8 $01
    ld a, [c]                                     ; $6530: $f2
    ldh [rIE], a                                  ; $6531: $e0 $ff
    jp z, $ffdf                                   ; $6533: $ca $df $ff

    rst $38                                       ; $6536: $ff
    rst $38                                       ; $6537: $ff
    rst $38                                       ; $6538: $ff
    nop                                           ; $6539: $00
    rst $38                                       ; $653a: $ff
    rst $38                                       ; $653b: $ff
    rst $38                                       ; $653c: $ff
    rst $38                                       ; $653d: $ff
    rst $38                                       ; $653e: $ff
    rst $38                                       ; $653f: $ff
    rst $38                                       ; $6540: $ff
    rst $38                                       ; $6541: $ff
    rst $38                                       ; $6542: $ff
    rst $38                                       ; $6543: $ff
    rst $38                                       ; $6544: $ff
    rst $38                                       ; $6545: $ff
    rst $38                                       ; $6546: $ff
    rst $38                                       ; $6547: $ff
    rst $38                                       ; $6548: $ff
    and $00                                       ; $6549: $e6 $00
    nop                                           ; $654b: $00
    nop                                           ; $654c: $00
    cp $01                                        ; $654d: $fe $01
    nop                                           ; $654f: $00
    rst $38                                       ; $6550: $ff
    rst $38                                       ; $6551: $ff
    rst $38                                       ; $6552: $ff
    rst $38                                       ; $6553: $ff
    rst $38                                       ; $6554: $ff
    rst $38                                       ; $6555: $ff
    rst $38                                       ; $6556: $ff
    rst $38                                       ; $6557: $ff
    rst $38                                       ; $6558: $ff
    rst $38                                       ; $6559: $ff
    rst $38                                       ; $655a: $ff
    rst $38                                       ; $655b: $ff
    rst $38                                       ; $655c: $ff
    rst $38                                       ; $655d: $ff
    nop                                           ; $655e: $00
    rst $38                                       ; $655f: $ff
    rst $38                                       ; $6560: $ff
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
    rst $38                                       ; $656d: $ff
    rst $38                                       ; $656e: $ff
    nop                                           ; $656f: $00
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
    rst $38                                       ; $657a: $ff
    rst $38                                       ; $657b: $ff
    rst $38                                       ; $657c: $ff
    rst $38                                       ; $657d: $ff
    rst $38                                       ; $657e: $ff
    rst $38                                       ; $657f: $ff
    nop                                           ; $6580: $00
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
    rst $38                                       ; $658f: $ff
    rst $38                                       ; $6590: $ff
    nop                                           ; $6591: $00
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
    rst $38                                       ; $65a0: $ff
    rst $38                                       ; $65a1: $ff
    nop                                           ; $65a2: $00
    rst $38                                       ; $65a3: $ff
    rst $38                                       ; $65a4: $ff
    rst $38                                       ; $65a5: $ff
    rst $38                                       ; $65a6: $ff
    rst $38                                       ; $65a7: $ff
    rst $38                                       ; $65a8: $ff
    rst $38                                       ; $65a9: $ff
    rst $38                                       ; $65aa: $ff
    rst $38                                       ; $65ab: $ff
    rst $38                                       ; $65ac: $ff
    rst $38                                       ; $65ad: $ff
    rst $38                                       ; $65ae: $ff
    rst $38                                       ; $65af: $ff
    rst $38                                       ; $65b0: $ff
    rst $38                                       ; $65b1: $ff
    rst $38                                       ; $65b2: $ff
    nop                                           ; $65b3: $00
    rst $38                                       ; $65b4: $ff
    rst $38                                       ; $65b5: $ff
    rst $38                                       ; $65b6: $ff
    rst $38                                       ; $65b7: $ff
    rst $38                                       ; $65b8: $ff
    rst $38                                       ; $65b9: $ff
    rst $38                                       ; $65ba: $ff
    rst $38                                       ; $65bb: $ff
    rst $38                                       ; $65bc: $ff
    rst $38                                       ; $65bd: $ff
    rst $38                                       ; $65be: $ff
    rst $38                                       ; $65bf: $ff
    rst $38                                       ; $65c0: $ff
    rst $38                                       ; $65c1: $ff
    rst $38                                       ; $65c2: $ff
    rst $38                                       ; $65c3: $ff
    nop                                           ; $65c4: $00
    rst $38                                       ; $65c5: $ff
    rst $38                                       ; $65c6: $ff
    rst $38                                       ; $65c7: $ff
    rst $38                                       ; $65c8: $ff
    rst $38                                       ; $65c9: $ff
    rst $38                                       ; $65ca: $ff
    rst $38                                       ; $65cb: $ff
    rst $38                                       ; $65cc: $ff
    rst $38                                       ; $65cd: $ff
    rst $38                                       ; $65ce: $ff
    rst $38                                       ; $65cf: $ff
    db $e4                                        ; $65d0: $e4
    nop                                           ; $65d1: $00
    nop                                           ; $65d2: $00
    nop                                           ; $65d3: $00
    nop                                           ; $65d4: $00
    nop                                           ; $65d5: $00
    ld bc, $1500                                  ; $65d6: $01 $00 $15
    ld [de], a                                    ; $65d9: $12
    nop                                           ; $65da: $00
    nop                                           ; $65db: $00
    xor b                                         ; $65dc: $a8
    stop                                          ; $65dd: $10 $00
    nop                                           ; $65df: $00
    xor l                                         ; $65e0: $ad
    dec [hl]                                      ; $65e1: $35
    sub h                                         ; $65e2: $94
    ld c, [hl]                                    ; $65e3: $4e
    ld [$0825], sp                                ; $65e4: $08 $25 $08
    dec h                                         ; $65e7: $25
    ld [$0825], sp                                ; $65e8: $08 $25 $08
    dec h                                         ; $65eb: $25
    rra                                           ; $65ec: $1f
    inc bc                                        ; $65ed: $03
    ld a, l                                       ; $65ee: $7d
    ld e, h                                       ; $65ef: $5c
    ld e, b                                       ; $65f0: $58
    ld b, b                                       ; $65f1: $40
    inc d                                         ; $65f2: $14
    inc l                                         ; $65f3: $2c
    cp c                                          ; $65f4: $b9
    ld a, [hl]                                    ; $65f5: $7e
    jp nc, Jump_000_0c69                          ; $65f6: $d2 $69 $0c

    ld c, l                                       ; $65f9: $4d
    dec h                                         ; $65fa: $25
    inc h                                         ; $65fb: $24
    rra                                           ; $65fc: $1f
    ld c, b                                       ; $65fd: $48
    ld c, l                                       ; $65fe: $4d
    ld c, c                                       ; $65ff: $49
    ret                                           ; $6600: $c9


    jr c, jr_02c_6626                             ; $6601: $38 $23

    inc e                                         ; $6603: $1c
    cp b                                          ; $6604: $b8
    ld a, h                                       ; $6605: $7c
    ld [hl], d                                    ; $6606: $72
    ld a, h                                       ; $6607: $7c
    ccf                                           ; $6608: $3f
    inc bc                                        ; $6609: $03
    cpl                                           ; $660a: $2f
    ld d, b                                       ; $660b: $50
    sbc a                                         ; $660c: $9f
    ld bc, $4235                                  ; $660d: $01 $35 $42
    ld c, l                                       ; $6610: $4d
    ld hl, $7fff                                  ; $6611: $21 $ff $7f
    ld [$0825], sp                                ; $6614: $08 $25 $08
    dec h                                         ; $6617: $25
    ld [$0825], sp                                ; $6618: $08 $25 $08
    dec h                                         ; $661b: $25
    db $fd                                        ; $661c: $fd
    rst $38                                       ; $661d: $ff
    rst $38                                       ; $661e: $ff
    xor $c5                                       ; $661f: $ee $c5
    ld a, [$eadf]                                 ; $6621: $fa $df $ea
    rst $18                                       ; $6624: $df
    push af                                       ; $6625: $f5

jr_02c_6626:
    rst $38                                       ; $6626: $ff
    rst $38                                       ; $6627: $ff
    rst $08                                       ; $6628: $cf
    rst $18                                       ; $6629: $df
    ei                                            ; $662a: $fb
    rst $38                                       ; $662b: $ff
    rst $08                                       ; $662c: $cf
    rst $38                                       ; $662d: $ff
    rst $18                                       ; $662e: $df
    or $fc                                        ; $662f: $f6 $fc
    pop hl                                        ; $6631: $e1
    rst $18                                       ; $6632: $df
    ldh [$da], a                                  ; $6633: $e0 $da
    pop hl                                        ; $6635: $e1
    nop                                           ; $6636: $00
    rst $38                                       ; $6637: $ff
    ccf                                           ; $6638: $3f
    rst $38                                       ; $6639: $ff
    rst $38                                       ; $663a: $ff
    nop                                           ; $663b: $00
    ldh [$80], a                                  ; $663c: $e0 $80
    ld [hl], b                                    ; $663e: $70
    add b                                         ; $663f: $80
    rst $38                                       ; $6640: $ff
    ret nz                                        ; $6641: $c0

    ccf                                           ; $6642: $3f
    rst $38                                       ; $6643: $ff
    ret nz                                        ; $6644: $c0

    cp a                                          ; $6645: $bf
    rst $38                                       ; $6646: $ff
    xor b                                         ; $6647: $a8
    rst $38                                       ; $6648: $ff
    push af                                       ; $6649: $f5
    ld b, b                                       ; $664a: $40
    cp a                                          ; $664b: $bf
    sub a                                         ; $664c: $97
    nop                                           ; $664d: $00
    rst $38                                       ; $664e: $ff
    xor d                                         ; $664f: $aa
    cp a                                          ; $6650: $bf
    ldh [rHDMA5], a                               ; $6651: $e0 $55
    ld a, [$f6e0]                                 ; $6653: $fa $e0 $f6
    ldh [rHDMA5], a                               ; $6656: $e0 $55
    cp [hl]                                       ; $6658: $be
    db $dd                                        ; $6659: $dd
    ldh [rIE], a                                  ; $665a: $e0 $ff
    sub $f9                                       ; $665c: $d6 $f9
    ld h, d                                       ; $665e: $62
    db $fd                                        ; $665f: $fd
    db $fc                                        ; $6660: $fc
    db $eb                                        ; $6661: $eb
    ld [c], a                                     ; $6662: $e2
    rst $38                                       ; $6663: $ff
    db $fd                                        ; $6664: $fd
    ld d, [hl]                                    ; $6665: $56
    ld sp, hl                                     ; $6666: $f9
    and d                                         ; $6667: $a2
    db $fd                                        ; $6668: $fd
    ld b, $f9                                     ; $6669: $06 $f9
    xor d                                         ; $666b: $aa
    rst $38                                       ; $666c: $ff
    ld d, l                                       ; $666d: $55
    cp $01                                        ; $666e: $fe $01
    db $fc                                        ; $6670: $fc
    rst $38                                       ; $6671: $ff
    ld a, [$efff]                                 ; $6672: $fa $ff $ef
    rst $38                                       ; $6675: $ff
    rst $38                                       ; $6676: $ff
    db $dd                                        ; $6677: $dd
    rst $38                                       ; $6678: $ff
    or [hl]                                       ; $6679: $b6
    rst $38                                       ; $667a: $ff
    add sp, -$01                                  ; $667b: $e8 $ff
    ld [hl], d                                    ; $667d: $72
    ld e, a                                       ; $667e: $5f
    db $fd                                        ; $667f: $fd
    rst $10                                       ; $6680: $d7
    ld hl, sp+$62                                 ; $6681: $f8 $62
    db $fd                                        ; $6683: $fd
    add b                                         ; $6684: $80
    pop hl                                        ; $6685: $e1
    ld d, l                                       ; $6686: $55
    ld a, e                                       ; $6687: $7b
    ldh [$e9], a                                  ; $6688: $e0 $e9
    xor d                                         ; $668a: $aa
    cp d                                          ; $668b: $ba
    ldh [$b2], a                                  ; $668c: $e0 $b2
    pop hl                                        ; $668e: $e1
    nop                                           ; $668f: $00
    cp $ec                                        ; $6690: $fe $ec
    xor d                                         ; $6692: $aa
    ld d, l                                       ; $6693: $55
    nop                                           ; $6694: $00
    sub a                                         ; $6695: $97
    rst $38                                       ; $6696: $ff
    ld d, l                                       ; $6697: $55
    xor d                                         ; $6698: $aa
    and h                                         ; $6699: $a4
    pop hl                                        ; $669a: $e1
    ld d, l                                       ; $669b: $55
    db $e3                                        ; $669c: $e3
    db $e3                                        ; $669d: $e3
    ld c, a                                       ; $669e: $4f
    ldh [$d5], a                                  ; $669f: $e0 $d5
    xor d                                         ; $66a1: $aa
    ld c, e                                       ; $66a2: $4b
    ldh [$ea], a                                  ; $66a3: $e0 $ea
    ld a, [$c0e0]                                 ; $66a5: $fa $e0 $c0
    ld a, [$e0e0]                                 ; $66a8: $fa $e0 $e0
    cp $e0                                        ; $66ab: $fe $e0
    ldh a, [$fa]                                  ; $66ad: $f0 $fa
    cp $e2                                        ; $66af: $fe $e2
    ld hl, sp-$02                                 ; $66b1: $f8 $fe
    ld [c], a                                     ; $66b3: $e2
    ld d, h                                       ; $66b4: $54
    rst $38                                       ; $66b5: $ff
    db $fc                                        ; $66b6: $fc
    rst $38                                       ; $66b7: $ff
    xor e                                         ; $66b8: $ab
    ei                                            ; $66b9: $fb
    cp $54                                        ; $66ba: $fe $54
    or h                                          ; $66bc: $b4
    and $11                                       ; $66bd: $e6 $11
    rst $38                                       ; $66bf: $ff
    ld h, d                                       ; $66c0: $62
    cp a                                          ; $66c1: $bf
    call nz, Call_02c_7fff                        ; $66c2: $c4 $ff $7f
    adc b                                         ; $66c5: $88
    rst $38                                       ; $66c6: $ff
    inc sp                                        ; $66c7: $33
    db $dd                                        ; $66c8: $dd
    ld h, [hl]                                    ; $66c9: $66
    cp e                                          ; $66ca: $bb
    call z, $77ff                                 ; $66cb: $cc $ff $77
    adc b                                         ; $66ce: $88
    rst $38                                       ; $66cf: $ff
    db $10                                        ; $66d0: $10
    rst $38                                       ; $66d1: $ff
    adc b                                         ; $66d2: $88
    rst $38                                       ; $66d3: $ff
    ld b, [hl]                                    ; $66d4: $46
    rst $28                                       ; $66d5: $ef
    db $fd                                        ; $66d6: $fd
    inc hl                                        ; $66d7: $23
    cp $11                                        ; $66d8: $fe $11
    ld hl, sp-$1c                                 ; $66da: $f8 $e4
    ccf                                           ; $66dc: $3f
    pop de                                        ; $66dd: $d1
    ccf                                           ; $66de: $3f
    rst $38                                       ; $66df: $ff
    and d                                         ; $66e0: $a2
    ld a, a                                       ; $66e1: $7f
    ld b, h                                       ; $66e2: $44
    rst $38                                       ; $66e3: $ff
    adc b                                         ; $66e4: $88
    db $dd                                        ; $66e5: $dd
    ld de, $ffbb                                  ; $66e6: $11 $bb $ff
    ld [hl+], a                                   ; $66e9: $22
    halt                                          ; $66ea: $76
    ld b, l                                       ; $66eb: $45
    db $fc                                        ; $66ec: $fc
    adc e                                         ; $66ed: $8b
    ld hl, sp+$17                                 ; $66ee: $f8 $17
    db $fc                                        ; $66f0: $fc
    rst $18                                       ; $66f1: $df
    adc e                                         ; $66f2: $8b
    db $fc                                        ; $66f3: $fc
    ld b, l                                       ; $66f4: $45
    cp $22                                        ; $66f5: $fe $22
    rst $00                                       ; $66f7: $c7
    ldh [$88], a                                  ; $66f8: $e0 $88
    db $fd                                        ; $66fa: $fd
    rst $38                                       ; $66fb: $ff
    ld b, h                                       ; $66fc: $44
    ld a, [hl]                                    ; $66fd: $7e
    and d                                         ; $66fe: $a2
    db $e4                                        ; $66ff: $e4
    ld de, $2288                                  ; $6700: $11 $88 $22
    db $10                                        ; $6703: $10
    rst $38                                       ; $6704: $ff
    ld b, h                                       ; $6705: $44
    nop                                           ; $6706: $00
    adc b                                         ; $6707: $88
    nop                                           ; $6708: $00
    ld de, $2200                                  ; $6709: $11 $00 $22
    ld bc, $44ff                                  ; $670c: $01 $ff $44
    ld [bc], a                                    ; $670f: $02
    adc b                                         ; $6710: $88
    ld c, a                                       ; $6711: $4f
    db $10                                        ; $6712: $10
    inc hl                                        ; $6713: $23
    adc b                                         ; $6714: $88
    ld de, $44f7                                  ; $6715: $11 $f7 $44
    nop                                           ; $6718: $00
    ld [hl+], a                                   ; $6719: $22
    ldh a, [$e0]                                  ; $671a: $f0 $e0
    adc b                                         ; $671c: $88
    nop                                           ; $671d: $00
    ld b, h                                       ; $671e: $44
    add b                                         ; $671f: $80
    inc bc                                        ; $6720: $03
    ld [hl+], a                                   ; $6721: $22
    db $10                                        ; $6722: $10
    ld sp, hl                                     ; $6723: $f9
    pop hl                                        ; $6724: $e1
    pop af                                        ; $6725: $f1
    ldh [$f8], a                                  ; $6726: $e0 $f8
    pop hl                                        ; $6728: $e1
    rst $38                                       ; $6729: $ff
    pop hl                                        ; $672a: $e1
    reti                                          ; $672b: $d9


    ldh [$f0], a                                  ; $672c: $e0 $f0
    ldh [$fc], a                                  ; $672e: $e0 $fc
    pop de                                        ; $6730: $d1
    ld [c], a                                     ; $6731: $e2
    ldh a, [$e2]                                  ; $6732: $f0 $e2
    pop bc                                        ; $6734: $c1
    adc b                                         ; $6735: $88
    inc bc                                        ; $6736: $03
    db $10                                        ; $6737: $10
    add e                                         ; $6738: $83
    db $10                                        ; $6739: $10
    cp e                                          ; $673a: $bb
    pop bc                                        ; $673b: $c1
    ret z                                         ; $673c: $c8

    ld hl, sp-$1b                                 ; $673d: $f8 $e5
    rst $38                                       ; $673f: $ff
    nop                                           ; $6740: $00
    ld h, [hl]                                    ; $6741: $66
    ret c                                         ; $6742: $d8

    pop hl                                        ; $6743: $e1
    sbc c                                         ; $6744: $99
    cp $f9                                        ; $6745: $fe $f9
    pop hl                                        ; $6747: $e1
    sbc c                                         ; $6748: $99
    ld de, $99bb                                  ; $6749: $11 $bb $99
    ret nz                                        ; $674c: $c0

    ret z                                         ; $674d: $c8

    nop                                           ; $674e: $00
    cp a                                          ; $674f: $bf
    nop                                           ; $6750: $00
    add b                                         ; $6751: $80
    ld [$ddc0], sp                                ; $6752: $08 $c0 $dd
    ret nz                                        ; $6755: $c0

    pop bc                                        ; $6756: $c1
    ldh [$d9], a                                  ; $6757: $e0 $d9
    rst $38                                       ; $6759: $ff
    pop de                                        ; $675a: $d1
    db $db                                        ; $675b: $db
    sbc c                                         ; $675c: $99
    ld [hl], e                                    ; $675d: $73
    ret nz                                        ; $675e: $c0

jr_02c_675f:
    and $01                                       ; $675f: $e6 $01
    ld h, [hl]                                    ; $6761: $66
    or a                                          ; $6762: $b7
    add c                                         ; $6763: $81
    di                                            ; $6764: $f3
    ret nz                                        ; $6765: $c0

    ld hl, sp-$1b                                 ; $6766: $f8 $e5
    sbc c                                         ; $6768: $99
    ld h, [hl]                                    ; $6769: $66
    adc $e3                                       ; $676a: $ce $e3
    sbc c                                         ; $676c: $99
    cp $e7                                        ; $676d: $fe $e7
    pop bc                                        ; $676f: $c1
    sbc c                                         ; $6770: $99
    ld d, l                                       ; $6771: $55
    cp e                                          ; $6772: $bb
    ld [hl], e                                    ; $6773: $73
    ret nz                                        ; $6774: $c0

    rst $38                                       ; $6775: $ff
    nop                                           ; $6776: $00
    rst $18                                       ; $6777: $df
    ld [hl], d                                    ; $6778: $72
    add b                                         ; $6779: $80
    ld [c], a                                     ; $677a: $e2
    ret nz                                        ; $677b: $c0

    ld h, a                                       ; $677c: $67
    ld hl, sp-$20                                 ; $677d: $f8 $e0
    rst $38                                       ; $677f: $ff
    reti                                          ; $6780: $d9


    ld e, a                                       ; $6781: $5f
    or l                                          ; $6782: $b5
    db $db                                        ; $6783: $db
    rst $38                                       ; $6784: $ff
    rst $38                                       ; $6785: $ff
    sbc c                                         ; $6786: $99
    ld h, [hl]                                    ; $6787: $66
    ret nz                                        ; $6788: $c0

    ld h, [hl]                                    ; $6789: $66
    ei                                            ; $678a: $fb
    ldh [$fb], a                                  ; $678b: $e0 $fb
    sbc c                                         ; $678d: $99
    ld h, [hl]                                    ; $678e: $66
    ld hl, sp-$20                                 ; $678f: $f8 $e0
    rst $38                                       ; $6791: $ff
    add e                                         ; $6792: $83
    ld a, a                                       ; $6793: $7f
    rrca                                          ; $6794: $0f
    rst $38                                       ; $6795: $ff
    sub c                                         ; $6796: $91
    rrca                                          ; $6797: $0f
    ld a, [$f8e0]                                 ; $6798: $fa $e0 $f8
    push hl                                       ; $679b: $e5
    jr nz, jr_02c_675f                            ; $679c: $20 $c1

    ld h, [hl]                                    ; $679e: $66
    add sp, -$20                                  ; $679f: $e8 $e0
    xor b                                         ; $67a1: $a8
    jp $ff99                                      ; $67a2: $c3 $99 $ff


    ld h, [hl]                                    ; $67a5: $66
    pop bc                                        ; $67a6: $c1
    cp $f0                                        ; $67a7: $fe $f0
    rst $38                                       ; $67a9: $ff
    ld b, b                                       ; $67aa: $40
    rst $38                                       ; $67ab: $ff
    ld b, c                                       ; $67ac: $41
    rst $20                                       ; $67ad: $e7
    cp $01                                        ; $67ae: $fe $01
    cp $f0                                        ; $67b0: $fe $f0
    db $e3                                        ; $67b2: $e3
    ld [hl], b                                    ; $67b3: $70
    db $e4                                        ; $67b4: $e4
    dec de                                        ; $67b5: $1b
    nop                                           ; $67b6: $00
    ld a, e                                       ; $67b7: $7b
    di                                            ; $67b8: $f3
    nop                                           ; $67b9: $00
    ei                                            ; $67ba: $fb

jr_02c_67bb:
    cp $e1                                        ; $67bb: $fe $e1
    ld h, b                                       ; $67bd: $60
    db $e4                                        ; $67be: $e4
    add sp, $00                                   ; $67bf: $e8 $00
    ld [hl], $00                                  ; $67c1: $36 $00
    ld e, a                                       ; $67c3: $5f
    scf                                           ; $67c4: $37
    nop                                           ; $67c5: $00
    rst $20                                       ; $67c6: $e7
    nop                                           ; $67c7: $00
    rrca                                          ; $67c8: $0f
    add sp, -$20                                  ; $67c9: $e8 $e0
    dec de                                        ; $67cb: $1b
    ld d, b                                       ; $67cc: $50
    jp hl                                         ; $67cd: $e9


    ld c, a                                       ; $67ce: $4f
    nop                                           ; $67cf: $00
    ld a, [hl]                                    ; $67d0: $7e
    nop                                           ; $67d1: $00
    ld a, b                                       ; $67d2: $78
    ld b, b                                       ; $67d3: $40
    jp hl                                         ; $67d4: $e9


    jr nc, jr_02c_67bb                            ; $67d5: $30 $e4

    ld a, b                                       ; $67d7: $78
    add sp, -$20                                  ; $67d8: $e8 $e0
    ld a, l                                       ; $67da: $7d
    ld a, a                                       ; $67db: $7f
    cp $e0                                        ; $67dc: $fe $e0
    ld b, a                                       ; $67de: $47
    nop                                           ; $67df: $00
    ld d, $00                                     ; $67e0: $16 $00
    ldh a, [$e0]                                  ; $67e2: $f0 $e0
    ldh a, [$5f]                                  ; $67e4: $f0 $5f
    dec d                                         ; $67e6: $15
    nop                                           ; $67e7: $00
    halt                                          ; $67e8: $76
    nop                                           ; $67e9: $00
    rst $30                                       ; $67ea: $f7
    cp $e0                                        ; $67eb: $fe $e0
    or $00                                        ; $67ed: $f6 $00
    db $e4                                        ; $67ef: $e4
    ld e, a                                       ; $67f0: $5f
    ret nc                                        ; $67f1: $d0

    nop                                           ; $67f2: $00
    or [hl]                                       ; $67f3: $b6
    nop                                           ; $67f4: $00
    ld [hl], a                                    ; $67f5: $77
    xor $e0                                       ; $67f6: $ee $e0
    or a                                          ; $67f8: $b7
    add sp, -$20                                  ; $67f9: $e8 $e0
    ld e, l                                       ; $67fb: $5d
    ld d, $a0                                     ; $67fc: $16 $a0
    ld [$0036], a                                 ; $67fe: $ea $36 $00
    or b                                          ; $6801: $b0
    and b                                         ; $6802: $a0
    ldh a, [rNR22]                                ; $6803: $f0 $17
    ret nz                                        ; $6805: $c0

    ldh [$f9], a                                  ; $6806: $e0 $f9
    or $fe                                        ; $6808: $f6 $fe
    pop hl                                        ; $680a: $e1
    ret nz                                        ; $680b: $c0

    call nz, Call_000_00d8                        ; $680c: $c4 $d8 $00
    ld l, [hl]                                    ; $680f: $6e
    nop                                           ; $6810: $00
    cpl                                           ; $6811: $2f
    sub d                                         ; $6812: $92
    cp $e2                                        ; $6813: $fe $e2
    halt                                          ; $6815: $76
    db $e4                                        ; $6816: $e4
    ldh [$60], a                                  ; $6817: $e0 $60
    jp hl                                         ; $6819: $e9


    ld l, [hl]                                    ; $681a: $6e
    db $e4                                        ; $681b: $e4
    ldh [$a0], a                                  ; $681c: $e0 $a0
    ret                                           ; $681e: $c9


    adc b                                         ; $681f: $88
    ccf                                           ; $6820: $3f
    nop                                           ; $6821: $00
    db $10                                        ; $6822: $10
    add b                                         ; $6823: $80
    db $10                                        ; $6824: $10
    ret nz                                        ; $6825: $c0

    ret z                                         ; $6826: $c8

    ld hl, sp-$1b                                 ; $6827: $f8 $e5
    sub h                                         ; $6829: $94
    xor l                                         ; $682a: $ad
    ccf                                           ; $682b: $3f
    ld [hl], e                                    ; $682c: $73
    ret nz                                        ; $682d: $c0

    rst $20                                       ; $682e: $e7
    nop                                           ; $682f: $00
    ld h, a                                       ; $6830: $67
    add b                                         ; $6831: $80
    sub b                                         ; $6832: $90
    pop bc                                        ; $6833: $c1
    ld hl, sp-$1d                                 ; $6834: $f8 $e3
    ld hl, sp+$7f                                 ; $6836: $f8 $7f
    and c                                         ; $6838: $a1
    sub b                                         ; $6839: $90
    ret                                           ; $683a: $c9


    or b                                          ; $683b: $b0
    pop bc                                        ; $683c: $c1
    inc bc                                        ; $683d: $03
    rst $38                                       ; $683e: $ff
    add b                                         ; $683f: $80
    ld a, a                                       ; $6840: $7f
    add d                                         ; $6841: $82
    cp a                                          ; $6842: $bf
    ld a, h                                       ; $6843: $7c
    db $10                                        ; $6844: $10
    ldh [rSTAT], a                                ; $6845: $e0 $41
    add b                                         ; $6847: $80
    add c                                         ; $6848: $81
    ld e, $a0                                     ; $6849: $1e $a0
    ld sp, hl                                     ; $684b: $f9
    rst $38                                       ; $684c: $ff
    cp $02                                        ; $684d: $fe $02
    db $fc                                        ; $684f: $fc
    ld h, h                                       ; $6850: $64
    add b                                         ; $6851: $80
    inc b                                         ; $6852: $04
    nop                                           ; $6853: $00
    ld [$00eb], sp                                ; $6854: $08 $eb $00
    ld hl, sp+$0e                                 ; $6857: $f8 $0e
    ret nz                                        ; $6859: $c0

    rst $38                                       ; $685a: $ff
    ld [$8180], a                                 ; $685b: $ea $80 $81
    ld a, a                                       ; $685e: $7f
    ld c, h                                       ; $685f: $4c
    rst $38                                       ; $6860: $ff
    inc bc                                        ; $6861: $03
    ld b, b                                       ; $6862: $40
    nop                                           ; $6863: $00
    jr nz, jr_02c_6866                            ; $6864: $20 $00

jr_02c_6866:
    ccf                                           ; $6866: $3f
    nop                                           ; $6867: $00
    ld bc, $00fd                                  ; $6868: $01 $fd $00
    and b                                         ; $686b: $a0
    jp $fe01                                      ; $686c: $c3 $01 $fe


    add c                                         ; $686f: $81
    ld a, [hl]                                    ; $6870: $7e
    db $10                                        ; $6871: $10
    rrca                                          ; $6872: $0f
    ld h, a                                       ; $6873: $67
    inc b                                         ; $6874: $04
    inc bc                                        ; $6875: $03
    inc bc                                        ; $6876: $03
    db $ec                                        ; $6877: $ec
    and d                                         ; $6878: $a2
    ld e, $c0                                     ; $6879: $1e $c0
    nop                                           ; $687b: $00
    ret nz                                        ; $687c: $c0

    jp hl                                         ; $687d: $e9


    ret nz                                        ; $687e: $c0

    sub $8d                                       ; $687f: $d6 $8d
    pop bc                                        ; $6881: $c1

jr_02c_6882:
    add b                                         ; $6882: $80
    nop                                           ; $6883: $00
    sub $e1                                       ; $6884: $d6 $e1
    jr nz, jr_02c_6882                            ; $6886: $20 $fa

jr_02c_6888:
    ldh [rSTAT], a                                ; $6888: $e0 $41
    nop                                           ; $688a: $00
    cp a                                          ; $688b: $bf
    add [hl]                                      ; $688c: $86
    nop                                           ; $688d: $00
    sbc b                                         ; $688e: $98
    nop                                           ; $688f: $00
    ld [bc], a                                    ; $6890: $02
    nop                                           ; $6891: $00
    or [hl]                                       ; $6892: $b6
    pop hl                                        ; $6893: $e1
    ld [$fa3e], sp                                ; $6894: $08 $3e $fa
    ldh [rDIV], a                                 ; $6897: $e0 $04
    nop                                           ; $6899: $00
    jp nz, Jump_000_3300                          ; $689a: $c2 $00 $33

    cp [hl]                                       ; $689d: $be
    ldh [$fe], a                                  ; $689e: $e0 $fe
    pop hl                                        ; $68a0: $e1
    rra                                           ; $68a1: $1f
    inc bc                                        ; $68a2: $03
    nop                                           ; $68a3: $00
    rlca                                          ; $68a4: $07
    nop                                           ; $68a5: $00
    rra                                           ; $68a6: $1f
    push af                                       ; $68a7: $f5
    add d                                         ; $68a8: $82
    rst $38                                       ; $68a9: $ff
    db $ed                                        ; $68aa: $ed
    nop                                           ; $68ab: $00
    nop                                           ; $68ac: $00
    nop                                           ; $68ad: $00
    rst $30                                       ; $68ae: $f7
    nop                                           ; $68af: $00
    rlca                                          ; $68b0: $07
    inc b                                         ; $68b1: $04
    rst $38                                       ; $68b2: $ff
    xor $07                                       ; $68b3: $ee $07
    nop                                           ; $68b5: $00
    nop                                           ; $68b6: $00
    nop                                           ; $68b7: $00
    di                                            ; $68b8: $f3
    ld a, [hl-]                                   ; $68b9: $3a
    ld a, [hl-]                                   ; $68ba: $3a
    ei                                            ; $68bb: $fb
    ldh [rIE], a                                  ; $68bc: $e0 $ff
    rst $38                                       ; $68be: $ff
    nop                                           ; $68bf: $00
    nop                                           ; $68c0: $00
    dec b                                         ; $68c1: $05
    dec bc                                        ; $68c2: $0b
    call $ff08                                    ; $68c3: $cd $08 $ff
    db $ec                                        ; $68c6: $ec
    dec bc                                        ; $68c7: $0b
    dec b                                         ; $68c8: $05
    ret nz                                        ; $68c9: $c0

    rst $38                                       ; $68ca: $ff
    ret nz                                        ; $68cb: $c0

    add sp, $0c                                   ; $68cc: $e8 $0c
    add hl, bc                                    ; $68ce: $09
    ld a, [c]                                     ; $68cf: $f2
    rst $38                                       ; $68d0: $ff
    db $ec                                        ; $68d1: $ec
    inc c                                         ; $68d2: $0c
    ret nz                                        ; $68d3: $c0

    rst $38                                       ; $68d4: $ff
    add b                                         ; $68d5: $80
    jp hl                                         ; $68d6: $e9


    dec c                                         ; $68d7: $0d
    ld a, [bc]                                    ; $68d8: $0a
    cpl                                           ; $68d9: $2f
    cpl                                           ; $68da: $2f
    ret                                           ; $68db: $c9


    ld a, [bc]                                    ; $68dc: $0a
    rst $38                                       ; $68dd: $ff
    and $f4                                       ; $68de: $e6 $f4
    ldh [$0d], a                                  ; $68e0: $e0 $0d
    ret nz                                        ; $68e2: $c0

    rst $38                                       ; $68e3: $ff
    ld b, b                                       ; $68e4: $40
    jp hl                                         ; $68e5: $e9


    rrca                                          ; $68e6: $0f
    jr jr_02c_6888                                ; $68e7: $18 $9f

    ld bc, $1801                                  ; $68e9: $01 $01 $18
    db $10                                        ; $68ec: $10
    ld de, $e3fe                                  ; $68ed: $11 $fe $e3
    db $f4                                        ; $68f0: $f4
    pop hl                                        ; $68f1: $e1
    ld c, $fc                                     ; $68f2: $0e $fc
    ret nz                                        ; $68f4: $c0

    rst $38                                       ; $68f5: $ff
    nop                                           ; $68f6: $00
    jp hl                                         ; $68f7: $e9


    ld c, $16                                     ; $68f8: $0e $16
    ld [bc], a                                    ; $68fa: $02
    ld [bc], a                                    ; $68fb: $02
    ld d, $11                                     ; $68fc: $16 $11
    ld a, a                                       ; $68fe: $7f
    dec de                                        ; $68ff: $1b
    ld a, [de]                                    ; $6900: $1a
    inc e                                         ; $6901: $1c
    inc e                                         ; $6902: $1c
    ld a, [de]                                    ; $6903: $1a
    dec de                                        ; $6904: $1b
    db $10                                        ; $6905: $10
    db $f4                                        ; $6906: $f4
    pop hl                                        ; $6907: $e1
    ld sp, hl                                     ; $6908: $f9
    rrca                                          ; $6909: $0f
    ret nz                                        ; $690a: $c0

    rst $38                                       ; $690b: $ff
    add b                                         ; $690c: $80
    ld [$0316], a                                 ; $690d: $ea $16 $03
    inc bc                                        ; $6910: $03
    ld d, $10                                     ; $6911: $16 $10
    ld a, a                                       ; $6913: $7f
    add hl, de                                    ; $6914: $19
    rra                                           ; $6915: $1f
    ld bc, $1f01                                  ; $6916: $01 $01 $1f
    add hl, de                                    ; $6919: $19
    ld de, $e1f4                                  ; $691a: $11 $f4 $e1
    db $fc                                        ; $691d: $fc
    add b                                         ; $691e: $80
    rst $38                                       ; $691f: $ff
    add b                                         ; $6920: $80
    db $eb                                        ; $6921: $eb
    ld l, $20                                     ; $6922: $2e $20
    ld hl, $112e                                  ; $6924: $21 $2e $11
    add hl, de                                    ; $6927: $19
    rst $38                                       ; $6928: $ff
    dec e                                         ; $6929: $1d
    ld [bc], a                                    ; $692a: $02
    ld [bc], a                                    ; $692b: $02
    dec e                                         ; $692c: $1d
    add hl, de                                    ; $692d: $19
    db $10                                        ; $692e: $10
    ld l, $20                                     ; $692f: $2e $20
    di                                            ; $6931: $f3
    inc h                                         ; $6932: $24
    ld l, $80                                     ; $6933: $2e $80
    rst $38                                       ; $6935: $ff
    nop                                           ; $6936: $00
    db $ec                                        ; $6937: $ec
    ld [hl+], a                                   ; $6938: $22
    inc hl                                        ; $6939: $23
    jr jr_02c_694c                                ; $693a: $18 $10

    rst $38                                       ; $693c: $ff
    add hl, de                                    ; $693d: $19
    dec e                                         ; $693e: $1d
    inc bc                                        ; $693f: $03
    inc bc                                        ; $6940: $03
    dec e                                         ; $6941: $1d
    add hl, de                                    ; $6942: $19
    ld de, $f318                                  ; $6943: $11 $18 $f3
    ld [hl+], a                                   ; $6946: $22
    dec h                                         ; $6947: $25
    nop                                           ; $6948: $00
    rst $38                                       ; $6949: $ff
    nop                                           ; $694a: $00
    db $ec                                        ; $694b: $ec

jr_02c_694c:
    ld de, $0f0e                                  ; $694c: $11 $0e $0f
    db $10                                        ; $694f: $10
    rst $38                                       ; $6950: $ff
    ld de, $3219                                  ; $6951: $11 $19 $32
    inc sp                                        ; $6954: $33
    inc [hl]                                      ; $6955: $34
    dec [hl]                                      ; $6956: $35
    add hl, de                                    ; $6957: $19
    db $10                                        ; $6958: $10
    ld hl, sp-$0c                                 ; $6959: $f8 $f4
    pop hl                                        ; $695b: $e1
    add b                                         ; $695c: $80
    rst $38                                       ; $695d: $ff
    add b                                         ; $695e: $80
    ret nc                                        ; $695f: $d0

    jr nc, jr_02c_6998                            ; $6960: $30 $36

    scf                                           ; $6962: $37
    jr c, @+$3b                                   ; $6963: $38 $39

    add hl, bc                                    ; $6965: $09
    jr nc, @-$7e                                  ; $6966: $30 $80

    rst $18                                       ; $6968: $df
    add b                                         ; $6969: $80
    sub $31                                       ; $696a: $d6 $31
    rst $38                                       ; $696c: $ff
    ldh [$80], a                                  ; $696d: $e0 $80
    rst $18                                       ; $696f: $df
    add b                                         ; $6970: $80
    sub $00                                       ; $6971: $d6 $00
    call nz, $80dc                                ; $6973: $c4 $dc $80
    rst $18                                       ; $6976: $df
    add b                                         ; $6977: $80
    ret nc                                        ; $6978: $d0

    ld h, $27                                     ; $6979: $26 $27
    ld l, $c1                                     ; $697b: $2e $c1
    and h                                         ; $697d: $a4
    db $10                                        ; $697e: $10
    ld l, $b3                                     ; $697f: $2e $b3
    ld a, [hl+]                                   ; $6981: $2a
    dec hl                                        ; $6982: $2b
    add b                                         ; $6983: $80
    rst $18                                       ; $6984: $df
    add b                                         ; $6985: $80
    xor l                                         ; $6986: $ad
    jr z, jr_02c_69b2                             ; $6987: $28 $29

    add b                                         ; $6989: $80
    and a                                         ; $698a: $a7
    inc l                                         ; $698b: $2c
    add hl, bc                                    ; $698c: $09
    dec l                                         ; $698d: $2d
    nop                                           ; $698e: $00
    rst $38                                       ; $698f: $ff
    add b                                         ; $6990: $80
    xor h                                         ; $6991: $ac
    rrca                                          ; $6992: $0f
    cp $e3                                        ; $6993: $fe $e3
    add h                                         ; $6995: $84
    pop bc                                        ; $6996: $c1
    db $f4                                        ; $6997: $f4

jr_02c_6998:
    db $e3                                        ; $6998: $e3
    ret nz                                        ; $6999: $c0

    rst $38                                       ; $699a: $ff
    inc a                                         ; $699b: $3c
    jp hl                                         ; $699c: $e9


    add sp, $00                                   ; $699d: $e8 $00
    add l                                         ; $699f: $85
    ld b, $13                                     ; $69a0: $06 $13
    ld [de], a                                    ; $69a2: $12
    ld b, $00                                     ; $69a3: $06 $00
    sbc a                                         ; $69a5: $9f
    ld hl, sp+$78                                 ; $69a6: $f8 $78
    inc bc                                        ; $69a8: $03
    dec d                                         ; $69a9: $15
    inc d                                         ; $69aa: $14
    adc b                                         ; $69ab: $88
    pop hl                                        ; $69ac: $e1
    rst $10                                       ; $69ad: $d7
    push hl                                       ; $69ae: $e5
    ret nz                                        ; $69af: $c0

    rst $38                                       ; $69b0: $ff
    ret c                                         ; $69b1: $d8

jr_02c_69b2:
    push hl                                       ; $69b2: $e5
    cp $f3                                        ; $69b3: $fe $f3
    add $ff                                       ; $69b5: $c6 $ff
    nop                                           ; $69b7: $00
    ret nz                                        ; $69b8: $c0

    rst $38                                       ; $69b9: $ff
    rst $38                                       ; $69ba: $ff
    rst $38                                       ; $69bb: $ff
    rst $38                                       ; $69bc: $ff
    rst $38                                       ; $69bd: $ff
    rst $38                                       ; $69be: $ff
    rst $38                                       ; $69bf: $ff
    rst $38                                       ; $69c0: $ff
    rst $38                                       ; $69c1: $ff
    rst $38                                       ; $69c2: $ff
    rst $38                                       ; $69c3: $ff
    rst $38                                       ; $69c4: $ff
    rst $38                                       ; $69c5: $ff
    rst $38                                       ; $69c6: $ff
    rst $38                                       ; $69c7: $ff
    nop                                           ; $69c8: $00
    rst $38                                       ; $69c9: $ff
    rst $38                                       ; $69ca: $ff
    rst $38                                       ; $69cb: $ff
    rst $38                                       ; $69cc: $ff
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
    nop                                           ; $69d9: $00
    rst $38                                       ; $69da: $ff
    rst $38                                       ; $69db: $ff
    rst $38                                       ; $69dc: $ff
    rst $38                                       ; $69dd: $ff
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
    nop                                           ; $69ea: $00
    rst $38                                       ; $69eb: $ff
    rst $38                                       ; $69ec: $ff
    rst $38                                       ; $69ed: $ff
    rst $38                                       ; $69ee: $ff
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
    nop                                           ; $69fb: $00
    rst $38                                       ; $69fc: $ff
    rst $38                                       ; $69fd: $ff
    rst $38                                       ; $69fe: $ff
    rst $38                                       ; $69ff: $ff
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
    nop                                           ; $6a0c: $00
    rst $38                                       ; $6a0d: $ff
    rst $38                                       ; $6a0e: $ff
    rst $38                                       ; $6a0f: $ff
    rst $38                                       ; $6a10: $ff
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
    nop                                           ; $6a1d: $00
    rst $38                                       ; $6a1e: $ff
    rst $38                                       ; $6a1f: $ff
    rst $38                                       ; $6a20: $ff
    rst $38                                       ; $6a21: $ff
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
    nop                                           ; $6a2e: $00
    rst $38                                       ; $6a2f: $ff
    rst $38                                       ; $6a30: $ff
    rst $38                                       ; $6a31: $ff
    rst $38                                       ; $6a32: $ff
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
    nop                                           ; $6a3f: $00
    rst $38                                       ; $6a40: $ff
    rst $38                                       ; $6a41: $ff
    rst $38                                       ; $6a42: $ff
    rst $38                                       ; $6a43: $ff
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
    nop                                           ; $6a50: $00
    rst $38                                       ; $6a51: $ff
    rst $38                                       ; $6a52: $ff
    rst $38                                       ; $6a53: $ff
    rst $38                                       ; $6a54: $ff

Call_02c_6a55:
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
    nop                                           ; $6a61: $00
    rst $38                                       ; $6a62: $ff
    rst $38                                       ; $6a63: $ff
    rst $38                                       ; $6a64: $ff
    rst $38                                       ; $6a65: $ff
    rst $38                                       ; $6a66: $ff
    rst $38                                       ; $6a67: $ff
    rst $38                                       ; $6a68: $ff
    rst $38                                       ; $6a69: $ff
    rst $38                                       ; $6a6a: $ff
    ei                                            ; $6a6b: $fb
    nop                                           ; $6a6c: $00
    nop                                           ; $6a6d: $00
    nop                                           ; $6a6e: $00
    ld l, e                                       ; $6a6f: $6b
    inc l                                         ; $6a70: $2c
    inc c                                         ; $6a71: $0c
    rst $38                                       ; $6a72: $ff
    rst $28                                       ; $6a73: $ef
    inc l                                         ; $6a74: $2c
    rst $38                                       ; $6a75: $ff
    ldh [$08], a                                  ; $6a76: $e0 $08
    ld [$e0e6], sp                                ; $6a78: $08 $e6 $e0
    inc bc                                        ; $6a7b: $03
    inc l                                         ; $6a7c: $2c
    inc l                                         ; $6a7d: $2c
    db $fd                                        ; $6a7e: $fd
    and $fe                                       ; $6a7f: $e6 $fe
    or $c9                                        ; $6a81: $f6 $c9
    db $eb                                        ; $6a83: $eb
    rst $10                                       ; $6a84: $d7
    and $c0                                       ; $6a85: $e6 $c0
    ldh [rIE], a                                  ; $6a87: $e0 $ff
    rst $38                                       ; $6a89: $ff
    nop                                           ; $6a8a: $00
    ret nz                                        ; $6a8b: $c0

    db $eb                                        ; $6a8c: $eb
    cp b                                          ; $6a8d: $b8
    ld [$ffc0], a                                 ; $6a8e: $ea $c0 $ff
    add c                                         ; $6a91: $81
    rst $20                                       ; $6a92: $e7
    ld a, e                                       ; $6a93: $7b
    db $e4                                        ; $6a94: $e4
    ld [hl], c                                    ; $6a95: $71
    db $e4                                        ; $6a96: $e4
    add b                                         ; $6a97: $80
    rst $38                                       ; $6a98: $ff
    ld b, c                                       ; $6a99: $41
    db $eb                                        ; $6a9a: $eb
    ccf                                           ; $6a9b: $3f
    dec bc                                        ; $6a9c: $0b
    ld c, l                                       ; $6a9d: $4d
    ld c, $2e                                     ; $6a9e: $0e $2e
    ld l, l                                       ; $6aa0: $6d
    dec bc                                        ; $6aa1: $0b
    rst $38                                       ; $6aa2: $ff
    db $e4                                        ; $6aa3: $e4
    db $f4                                        ; $6aa4: $f4
    ld [c], a                                     ; $6aa5: $e2
    db $fc                                        ; $6aa6: $fc
    ret nz                                        ; $6aa7: $c0

    rst $38                                       ; $6aa8: $ff
    ret nz                                        ; $6aa9: $c0

    ld [$0e0d], a                                 ; $6aaa: $ea $0d $0e
    ld l, $2d                                     ; $6aad: $2e $2d
    dec bc                                        ; $6aaf: $0b
    ld c, d                                       ; $6ab0: $4a
    rra                                           ; $6ab1: $1f
    ld c, d                                       ; $6ab2: $4a
    ld a, [bc]                                    ; $6ab3: $0a
    ld a, [bc]                                    ; $6ab4: $0a
    ld c, d                                       ; $6ab5: $4a
    ld l, d                                       ; $6ab6: $6a
    db $f4                                        ; $6ab7: $f4
    db $e3                                        ; $6ab8: $e3
    ret nz                                        ; $6ab9: $c0

    rst $38                                       ; $6aba: $ff
    ret nz                                        ; $6abb: $c0

    rst $28                                       ; $6abc: $ef
    ccf                                           ; $6abd: $3f
    ld a, [bc]                                    ; $6abe: $0a
    ld l, d                                       ; $6abf: $6a
    ld c, $2e                                     ; $6ac0: $0e $2e
    ld c, d                                       ; $6ac2: $4a
    ld a, [hl+]                                   ; $6ac3: $2a
    ret nz                                        ; $6ac4: $c0

    xor $80                                       ; $6ac5: $ee $80
    sbc $f6                                       ; $6ac7: $de $f6
    add b                                         ; $6ac9: $80
    pop hl                                        ; $6aca: $e1
    dec c                                         ; $6acb: $0d
    dec c                                         ; $6acc: $0d
    ret nz                                        ; $6acd: $c0

    ldh [$0a], a                                  ; $6ace: $e0 $0a
    ld c, $2e                                     ; $6ad0: $0e $2e
    ld a, [hl+]                                   ; $6ad2: $2a
    add b                                         ; $6ad3: $80
    ret nz                                        ; $6ad4: $c0

    ldh [$f4], a                                  ; $6ad5: $e0 $f4
    pop hl                                        ; $6ad7: $e1
    add b                                         ; $6ad8: $80
    rst $38                                       ; $6ad9: $ff
    ret nz                                        ; $6ada: $c0

    rst $38                                       ; $6adb: $ff
    ret nz                                        ; $6adc: $c0

    rst $38                                       ; $6add: $ff
    ret nz                                        ; $6ade: $c0

    add $c4                                       ; $6adf: $c6 $c4
    jp nz, Jump_000_020a                          ; $6ae1: $c2 $0a $02

    rst $38                                       ; $6ae4: $ff
    pop hl                                        ; $6ae5: $e1
    ld a, [hl+]                                   ; $6ae6: $2a
    cp c                                          ; $6ae7: $b9
    jp $ffc0                                      ; $6ae8: $c3 $c0 $ff


    add b                                         ; $6aeb: $80
    rst $08                                       ; $6aec: $cf
    ret nz                                        ; $6aed: $c0

    db $e4                                        ; $6aee: $e4
    add b                                         ; $6aef: $80
    rst $18                                       ; $6af0: $df
    ret nz                                        ; $6af1: $c0

    push de                                       ; $6af2: $d5
    nop                                           ; $6af3: $00
    add b                                         ; $6af4: $80
    db $e3                                        ; $6af5: $e3
    add b                                         ; $6af6: $80
    rst $18                                       ; $6af7: $df
    ld b, b                                       ; $6af8: $40
    call nc, $a4ff                                ; $6af9: $d4 $ff $a4
    ret nz                                        ; $6afc: $c0

    ldh a, [$80]                                  ; $6afd: $f0 $80
    rst $18                                       ; $6aff: $df
    ret nz                                        ; $6b00: $c0

    pop bc                                        ; $6b01: $c1
    ret nz                                        ; $6b02: $c0

    push hl                                       ; $6b03: $e5
    add b                                         ; $6b04: $80
    ret nz                                        ; $6b05: $c0

    rst $18                                       ; $6b06: $df
    ret nz                                        ; $6b07: $c0

    adc l                                         ; $6b08: $8d
    ret nz                                        ; $6b09: $c0

    rst $38                                       ; $6b0a: $ff
    add b                                         ; $6b0b: $80
    rst $18                                       ; $6b0c: $df
    db $fc                                        ; $6b0d: $fc
    db $eb                                        ; $6b0e: $eb
    ret nz                                        ; $6b0f: $c0

    rst $38                                       ; $6b10: $ff
    ld b, c                                       ; $6b11: $41
    adc b                                         ; $6b12: $88
    call z, $ff8e                                 ; $6b13: $cc $8e $ff
    push hl                                       ; $6b16: $e5
    dec bc                                        ; $6b17: $0b
    dec bc                                        ; $6b18: $0b
    db $ec                                        ; $6b19: $ec
    rst $38                                       ; $6b1a: $ff
    push hl                                       ; $6b1b: $e5
    ret nz                                        ; $6b1c: $c0

    rst $38                                       ; $6b1d: $ff
    ld bc, $8c87                                  ; $6b1e: $01 $87 $8c
    inc e                                         ; $6b21: $1c
    rst $38                                       ; $6b22: $ff
    db $e4                                        ; $6b23: $e4
    ret nz                                        ; $6b24: $c0

    pop hl                                        ; $6b25: $e1
    adc h                                         ; $6b26: $8c
    adc h                                         ; $6b27: $8c
    xor h                                         ; $6b28: $ac
    rst $38                                       ; $6b29: $ff
    ld [c], a                                     ; $6b2a: $e2
    ld b, b                                       ; $6b2b: $40
    xor d                                         ; $6b2c: $aa
    cp h                                          ; $6b2d: $bc

Jump_02c_6b2e:
    ei                                            ; $6b2e: $fb
    ld bc, $ff08                                  ; $6b2f: $01 $08 $ff
    db $f4                                        ; $6b32: $f4
    sbc e                                         ; $6b33: $9b
    ld l, h                                       ; $6b34: $6c
    ret nz                                        ; $6b35: $c0

    rst $38                                       ; $6b36: $ff
    ret nz                                        ; $6b37: $c0

    ld a, [$7f81]                                 ; $6b38: $fa $81 $7f
    ld a, a                                       ; $6b3b: $7f
    ld l, [hl]                                    ; $6b3c: $6e
    rst $38                                       ; $6b3d: $ff
    rst $38                                       ; $6b3e: $ff
    nop                                           ; $6b3f: $00
    ret nz                                        ; $6b40: $c0

    rst $38                                       ; $6b41: $ff
    rst $38                                       ; $6b42: $ff
    rst $38                                       ; $6b43: $ff
    ret nz                                        ; $6b44: $c0

    rst $38                                       ; $6b45: $ff
    ret nz                                        ; $6b46: $c0

    rst $38                                       ; $6b47: $ff
    ret nz                                        ; $6b48: $c0

    rst $38                                       ; $6b49: $ff
    ret nz                                        ; $6b4a: $c0

    rst $38                                       ; $6b4b: $ff
    ret nz                                        ; $6b4c: $c0

    rst $38                                       ; $6b4d: $ff
    cp h                                          ; $6b4e: $bc
    ld [c], a                                     ; $6b4f: $e2
    ld bc, $ff6c                                  ; $6b50: $01 $6c $ff
    jp hl                                         ; $6b53: $e9


    ret nz                                        ; $6b54: $c0

    rst $38                                       ; $6b55: $ff
    db $fc                                        ; $6b56: $fc
    ei                                            ; $6b57: $fb
    or e                                          ; $6b58: $b3
    ld [c], a                                     ; $6b59: $e2
    ret nz                                        ; $6b5a: $c0

    rst $38                                       ; $6b5b: $ff
    ld b, b                                       ; $6b5c: $40
    rst $38                                       ; $6b5d: $ff
    ret nz                                        ; $6b5e: $c0

    rst $38                                       ; $6b5f: $ff
    nop                                           ; $6b60: $00
    ret nz                                        ; $6b61: $c0

    rst $38                                       ; $6b62: $ff
    ret nz                                        ; $6b63: $c0

    rst $38                                       ; $6b64: $ff
    ret nz                                        ; $6b65: $c0

    rst $38                                       ; $6b66: $ff
    ret nz                                        ; $6b67: $c0

    rst $38                                       ; $6b68: $ff
    ret nz                                        ; $6b69: $c0

    rst $38                                       ; $6b6a: $ff
    ret nz                                        ; $6b6b: $c0

    rst $38                                       ; $6b6c: $ff
    ret nz                                        ; $6b6d: $c0

    rst $38                                       ; $6b6e: $ff
    cp c                                          ; $6b6f: $b9
    rst $38                                       ; $6b70: $ff
    nop                                           ; $6b71: $00
    ret nz                                        ; $6b72: $c0

    rst $38                                       ; $6b73: $ff
    ret nz                                        ; $6b74: $c0

    rst $38                                       ; $6b75: $ff
    ret nz                                        ; $6b76: $c0

    rst $38                                       ; $6b77: $ff
    rst $38                                       ; $6b78: $ff
    rst $38                                       ; $6b79: $ff
    ret nz                                        ; $6b7a: $c0

    rst $38                                       ; $6b7b: $ff
    ret nz                                        ; $6b7c: $c0

    rst $38                                       ; $6b7d: $ff
    ret nz                                        ; $6b7e: $c0

    rst $38                                       ; $6b7f: $ff

Call_02c_6b80:
    ret nz                                        ; $6b80: $c0

    rst $38                                       ; $6b81: $ff
    nop                                           ; $6b82: $00
    ret nz                                        ; $6b83: $c0

    rst $38                                       ; $6b84: $ff
    ret nz                                        ; $6b85: $c0

    rst $38                                       ; $6b86: $ff
    ret nz                                        ; $6b87: $c0

    rst $38                                       ; $6b88: $ff
    ret nz                                        ; $6b89: $c0

    rst $38                                       ; $6b8a: $ff
    ret nz                                        ; $6b8b: $c0

    rst $38                                       ; $6b8c: $ff
    ret nz                                        ; $6b8d: $c0

    rst $38                                       ; $6b8e: $ff
    ret nz                                        ; $6b8f: $c0

    rst $38                                       ; $6b90: $ff
    ret nz                                        ; $6b91: $c0

    rst $38                                       ; $6b92: $ff
    nop                                           ; $6b93: $00
    ret nz                                        ; $6b94: $c0

    rst $38                                       ; $6b95: $ff
    ret nz                                        ; $6b96: $c0

    rst $38                                       ; $6b97: $ff
    ret nz                                        ; $6b98: $c0

    rst $38                                       ; $6b99: $ff
    nop                                           ; $6b9a: $00
    or e                                          ; $6b9b: $b3
    call z, $c0ff                                 ; $6b9c: $cc $ff $c0
    rst $38                                       ; $6b9f: $ff
    rst $38                                       ; $6ba0: $ff

Call_02c_6ba1:
    rst $38                                       ; $6ba1: $ff
    ret nz                                        ; $6ba2: $c0

    rst $38                                       ; $6ba3: $ff
    nop                                           ; $6ba4: $00
    rst $38                                       ; $6ba5: $ff
    rst $38                                       ; $6ba6: $ff
    ret nz                                        ; $6ba7: $c0

    rst $38                                       ; $6ba8: $ff
    rst $38                                       ; $6ba9: $ff
    rst $38                                       ; $6baa: $ff
    ret nz                                        ; $6bab: $c0

    rst $38                                       ; $6bac: $ff
    ret nz                                        ; $6bad: $c0

    rst $38                                       ; $6bae: $ff
    ret nz                                        ; $6baf: $c0

    rst $38                                       ; $6bb0: $ff
    ret nz                                        ; $6bb1: $c0

    rst $38                                       ; $6bb2: $ff
    ret nz                                        ; $6bb3: $c0

    rst $38                                       ; $6bb4: $ff
    nop                                           ; $6bb5: $00
    ret nz                                        ; $6bb6: $c0

    rst $38                                       ; $6bb7: $ff
    ret nz                                        ; $6bb8: $c0

    rst $38                                       ; $6bb9: $ff
    ret nz                                        ; $6bba: $c0

    rst $38                                       ; $6bbb: $ff
    ret nz                                        ; $6bbc: $c0

    rst $38                                       ; $6bbd: $ff
    ret nz                                        ; $6bbe: $c0

    rst $38                                       ; $6bbf: $ff
    rst $38                                       ; $6bc0: $ff
    rst $38                                       ; $6bc1: $ff
    ret nz                                        ; $6bc2: $c0

    rst $38                                       ; $6bc3: $ff
    rst $38                                       ; $6bc4: $ff
    rst $38                                       ; $6bc5: $ff
    nop                                           ; $6bc6: $00
    ret nz                                        ; $6bc7: $c0

    rst $38                                       ; $6bc8: $ff
    rst $38                                       ; $6bc9: $ff
    rst $38                                       ; $6bca: $ff
    ret nz                                        ; $6bcb: $c0

    rst $38                                       ; $6bcc: $ff
    ret nz                                        ; $6bcd: $c0

    rst $38                                       ; $6bce: $ff
    ret nz                                        ; $6bcf: $c0

    rst $38                                       ; $6bd0: $ff
    ret nz                                        ; $6bd1: $c0

    rst $38                                       ; $6bd2: $ff
    ret nz                                        ; $6bd3: $c0

    rst $38                                       ; $6bd4: $ff
    ret nz                                        ; $6bd5: $c0

    rst $38                                       ; $6bd6: $ff
    nop                                           ; $6bd7: $00
    ret nz                                        ; $6bd8: $c0

    rst $38                                       ; $6bd9: $ff
    ret nz                                        ; $6bda: $c0

    rst $38                                       ; $6bdb: $ff
    ret nz                                        ; $6bdc: $c0

    rst $38                                       ; $6bdd: $ff
    ret nz                                        ; $6bde: $c0

    rst $38                                       ; $6bdf: $ff
    call z, $c0ff                                 ; $6be0: $cc $ff $c0
    rst $38                                       ; $6be3: $ff
    rst $38                                       ; $6be4: $ff
    rst $38                                       ; $6be5: $ff
    ret nz                                        ; $6be6: $c0

    rst $38                                       ; $6be7: $ff
    nop                                           ; $6be8: $00
    rst $38                                       ; $6be9: $ff
    rst $38                                       ; $6bea: $ff
    ret nz                                        ; $6beb: $c0

    rst $38                                       ; $6bec: $ff
    rst $38                                       ; $6bed: $ff
    rst $38                                       ; $6bee: $ff
    ret nz                                        ; $6bef: $c0

    rst $38                                       ; $6bf0: $ff
    ret nz                                        ; $6bf1: $c0

    ei                                            ; $6bf2: $fb
    nop                                           ; $6bf3: $00
    nop                                           ; $6bf4: $00
    nop                                           ; $6bf5: $00
    dec b                                         ; $6bf6: $05
    rrca                                          ; $6bf7: $0f
    rst $38                                       ; $6bf8: $ff
    rst $20                                       ; $6bf9: $e7
    nop                                           ; $6bfa: $00
    rst $38                                       ; $6bfb: $ff
    pop af                                        ; $6bfc: $f1
    ldh [$fe], a                                  ; $6bfd: $e0 $fe
    cp $e0                                        ; $6bff: $fe $e0
    ld hl, sp-$17                                 ; $6c01: $f8 $e9
    ldh [$ef], a                                  ; $6c03: $e0 $ef
    nop                                           ; $6c05: $00
    ei                                            ; $6c06: $fb
    ld [$f3e0], a                                 ; $6c07: $ea $e0 $f3
    or $ec                                        ; $6c0a: $f6 $ec
    and b                                         ; $6c0c: $a0
    rst $38                                       ; $6c0d: $ff
    ret nz                                        ; $6c0e: $c0

    rst $38                                       ; $6c0f: $ff
    ldh [rIE], a                                  ; $6c10: $e0 $ff
    ldh [rIE], a                                  ; $6c12: $e0 $ff
    nop                                           ; $6c14: $00
    and $00                                       ; $6c15: $e6 $00
    ld a, [$dfc4]                                 ; $6c17: $fa $c4 $df
    jp nc, $f7a5                                  ; $6c1a: $d2 $a5 $f7

    rst $38                                       ; $6c1d: $ff
    rst $38                                       ; $6c1e: $ff
    rst $38                                       ; $6c1f: $ff
    rst $38                                       ; $6c20: $ff
    rst $38                                       ; $6c21: $ff
    rst $38                                       ; $6c22: $ff
    rst $38                                       ; $6c23: $ff
    rst $38                                       ; $6c24: $ff
    rst $38                                       ; $6c25: $ff
    rst $38                                       ; $6c26: $ff
    nop                                           ; $6c27: $00
    rst $38                                       ; $6c28: $ff
    rst $38                                       ; $6c29: $ff
    rst $38                                       ; $6c2a: $ff
    rst $38                                       ; $6c2b: $ff
    rst $38                                       ; $6c2c: $ff
    rst $38                                       ; $6c2d: $ff
    rst $38                                       ; $6c2e: $ff

jr_02c_6c2f:
    rst $38                                       ; $6c2f: $ff
    rst $38                                       ; $6c30: $ff
    rst $38                                       ; $6c31: $ff
    rst $38                                       ; $6c32: $ff
    rst $38                                       ; $6c33: $ff
    rst $38                                       ; $6c34: $ff
    rst $38                                       ; $6c35: $ff
    rst $38                                       ; $6c36: $ff
    rst $38                                       ; $6c37: $ff

jr_02c_6c38:
    nop                                           ; $6c38: $00
    rst $38                                       ; $6c39: $ff
    rst $38                                       ; $6c3a: $ff

jr_02c_6c3b:
    rst $38                                       ; $6c3b: $ff
    rst $38                                       ; $6c3c: $ff
    rst $38                                       ; $6c3d: $ff
    rst $38                                       ; $6c3e: $ff
    rst $38                                       ; $6c3f: $ff
    rst $38                                       ; $6c40: $ff
    rst $38                                       ; $6c41: $ff
    rst $38                                       ; $6c42: $ff
    rst $38                                       ; $6c43: $ff
    rst $38                                       ; $6c44: $ff
    rst $38                                       ; $6c45: $ff
    db $fc                                        ; $6c46: $fc
    nop                                           ; $6c47: $00
    nop                                           ; $6c48: $00
    nop                                           ; $6c49: $00
    xor c                                         ; $6c4a: $a9
    nop                                           ; $6c4b: $00
    rst $38                                       ; $6c4c: $ff
    rst $38                                       ; $6c4d: $ff
    db $fd                                        ; $6c4e: $fd
    db $fc                                        ; $6c4f: $fc
    jr z, jr_02c_6c2f                             ; $6c50: $28 $dd

    ld [c], a                                     ; $6c52: $e2
    ld c, b                                       ; $6c53: $48
    rst $10                                       ; $6c54: $d7
    ld sp, hl                                     ; $6c55: $f9
    ld e, b                                       ; $6c56: $58
    inc d                                         ; $6c57: $14
    cp d                                          ; $6c58: $ba
    rst $38                                       ; $6c59: $ff
    ld hl, sp-$09                                 ; $6c5a: $f8 $f7
    jr jr_02c_6c3b                                ; $6c5c: $18 $dd

    ld [c], a                                     ; $6c5e: $e2
    jr c, jr_02c_6c38                             ; $6c5f: $38 $d7

    rst $38                                       ; $6c61: $ff
    rst $38                                       ; $6c62: $ff
    rst $38                                       ; $6c63: $ff
    rst $38                                       ; $6c64: $ff
    rst $38                                       ; $6c65: $ff
    ld [bc], a                                    ; $6c66: $02
    db $f4                                        ; $6c67: $f4
    di                                            ; $6c68: $f3
    inc de                                        ; $6c69: $13
    db $dd                                        ; $6c6a: $dd
    rst $38                                       ; $6c6b: $ff
    rst $38                                       ; $6c6c: $ff
    rst $38                                       ; $6c6d: $ff
    rst $38                                       ; $6c6e: $ff
    rst $38                                       ; $6c6f: $ff
    rst $38                                       ; $6c70: $ff
    rst $38                                       ; $6c71: $ff
    rst $38                                       ; $6c72: $ff
    rst $38                                       ; $6c73: $ff
    rst $38                                       ; $6c74: $ff
    rst $38                                       ; $6c75: $ff
    nop                                           ; $6c76: $00
    rst $38                                       ; $6c77: $ff
    rst $38                                       ; $6c78: $ff
    rst $38                                       ; $6c79: $ff
    rst $38                                       ; $6c7a: $ff
    rst $38                                       ; $6c7b: $ff
    rst $38                                       ; $6c7c: $ff
    rst $38                                       ; $6c7d: $ff
    rst $38                                       ; $6c7e: $ff
    rst $38                                       ; $6c7f: $ff
    rst $38                                       ; $6c80: $ff
    rst $38                                       ; $6c81: $ff
    rst $38                                       ; $6c82: $ff
    rst $38                                       ; $6c83: $ff
    rst $38                                       ; $6c84: $ff
    rst $38                                       ; $6c85: $ff
    rst $38                                       ; $6c86: $ff
    nop                                           ; $6c87: $00
    rst $38                                       ; $6c88: $ff
    rst $38                                       ; $6c89: $ff
    rst $38                                       ; $6c8a: $ff
    rst $38                                       ; $6c8b: $ff
    rst $38                                       ; $6c8c: $ff
    rst $38                                       ; $6c8d: $ff
    rst $38                                       ; $6c8e: $ff
    rst $38                                       ; $6c8f: $ff
    rst $38                                       ; $6c90: $ff
    rst $38                                       ; $6c91: $ff
    rst $38                                       ; $6c92: $ff
    rst $38                                       ; $6c93: $ff
    rst $38                                       ; $6c94: $ff
    rst $38                                       ; $6c95: $ff
    rst $38                                       ; $6c96: $ff
    db $ed                                        ; $6c97: $ed
    nop                                           ; $6c98: $00
    nop                                           ; $6c99: $00
    nop                                           ; $6c9a: $00
    cp $01                                        ; $6c9b: $fe $01
    nop                                           ; $6c9d: $00
    rst $38                                       ; $6c9e: $ff
    rst $38                                       ; $6c9f: $ff
    rst $38                                       ; $6ca0: $ff
    rst $38                                       ; $6ca1: $ff
    rst $38                                       ; $6ca2: $ff
    rst $38                                       ; $6ca3: $ff
    rst $38                                       ; $6ca4: $ff
    rst $38                                       ; $6ca5: $ff
    rst $38                                       ; $6ca6: $ff
    rst $38                                       ; $6ca7: $ff
    rst $38                                       ; $6ca8: $ff
    rst $38                                       ; $6ca9: $ff
    rst $38                                       ; $6caa: $ff
    rst $38                                       ; $6cab: $ff
    nop                                           ; $6cac: $00
    rst $38                                       ; $6cad: $ff
    rst $38                                       ; $6cae: $ff
    rst $38                                       ; $6caf: $ff
    rst $38                                       ; $6cb0: $ff
    rst $38                                       ; $6cb1: $ff
    rst $38                                       ; $6cb2: $ff
    rst $38                                       ; $6cb3: $ff
    rst $38                                       ; $6cb4: $ff
    rst $38                                       ; $6cb5: $ff
    rst $38                                       ; $6cb6: $ff
    rst $38                                       ; $6cb7: $ff
    rst $38                                       ; $6cb8: $ff
    rst $38                                       ; $6cb9: $ff
    rst $38                                       ; $6cba: $ff
    rst $38                                       ; $6cbb: $ff
    rst $38                                       ; $6cbc: $ff
    nop                                           ; $6cbd: $00
    rst $38                                       ; $6cbe: $ff
    rst $38                                       ; $6cbf: $ff
    rst $38                                       ; $6cc0: $ff
    rst $38                                       ; $6cc1: $ff
    rst $38                                       ; $6cc2: $ff
    rst $38                                       ; $6cc3: $ff
    rst $38                                       ; $6cc4: $ff
    rst $38                                       ; $6cc5: $ff
    rst $38                                       ; $6cc6: $ff
    rst $38                                       ; $6cc7: $ff
    rst $38                                       ; $6cc8: $ff
    rst $38                                       ; $6cc9: $ff
    rst $38                                       ; $6cca: $ff
    rst $38                                       ; $6ccb: $ff
    rst $38                                       ; $6ccc: $ff
    rst $38                                       ; $6ccd: $ff
    nop                                           ; $6cce: $00
    rst $38                                       ; $6ccf: $ff
    rst $38                                       ; $6cd0: $ff
    rst $38                                       ; $6cd1: $ff
    rst $38                                       ; $6cd2: $ff
    rst $38                                       ; $6cd3: $ff
    rst $38                                       ; $6cd4: $ff
    rst $38                                       ; $6cd5: $ff
    rst $38                                       ; $6cd6: $ff
    rst $38                                       ; $6cd7: $ff
    rst $38                                       ; $6cd8: $ff
    rst $38                                       ; $6cd9: $ff
    rst $38                                       ; $6cda: $ff
    rst $38                                       ; $6cdb: $ff
    rst $38                                       ; $6cdc: $ff
    rst $38                                       ; $6cdd: $ff
    rst $38                                       ; $6cde: $ff
    nop                                           ; $6cdf: $00
    rst $38                                       ; $6ce0: $ff
    rst $38                                       ; $6ce1: $ff
    rst $38                                       ; $6ce2: $ff
    rst $38                                       ; $6ce3: $ff
    rst $38                                       ; $6ce4: $ff
    rst $38                                       ; $6ce5: $ff
    rst $38                                       ; $6ce6: $ff
    rst $38                                       ; $6ce7: $ff
    rst $38                                       ; $6ce8: $ff
    rst $38                                       ; $6ce9: $ff
    rst $38                                       ; $6cea: $ff
    rst $38                                       ; $6ceb: $ff
    rst $38                                       ; $6cec: $ff
    rst $38                                       ; $6ced: $ff
    rst $38                                       ; $6cee: $ff
    rst $38                                       ; $6cef: $ff
    nop                                           ; $6cf0: $00
    rst $38                                       ; $6cf1: $ff
    rst $38                                       ; $6cf2: $ff
    rst $38                                       ; $6cf3: $ff
    rst $38                                       ; $6cf4: $ff
    rst $38                                       ; $6cf5: $ff
    rst $38                                       ; $6cf6: $ff
    rst $38                                       ; $6cf7: $ff
    rst $38                                       ; $6cf8: $ff
    rst $38                                       ; $6cf9: $ff
    rst $38                                       ; $6cfa: $ff
    rst $38                                       ; $6cfb: $ff
    rst $38                                       ; $6cfc: $ff
    rst $38                                       ; $6cfd: $ff
    rst $38                                       ; $6cfe: $ff
    rst $38                                       ; $6cff: $ff
    rst $38                                       ; $6d00: $ff
    nop                                           ; $6d01: $00
    rst $38                                       ; $6d02: $ff
    rst $38                                       ; $6d03: $ff
    rst $38                                       ; $6d04: $ff
    rst $38                                       ; $6d05: $ff
    rst $38                                       ; $6d06: $ff
    rst $38                                       ; $6d07: $ff
    rst $38                                       ; $6d08: $ff
    rst $38                                       ; $6d09: $ff
    rst $38                                       ; $6d0a: $ff
    rst $38                                       ; $6d0b: $ff
    rst $38                                       ; $6d0c: $ff
    rst $38                                       ; $6d0d: $ff
    rst $38                                       ; $6d0e: $ff
    rst $38                                       ; $6d0f: $ff
    rst $38                                       ; $6d10: $ff
    rst $38                                       ; $6d11: $ff
    nop                                           ; $6d12: $00
    rst $38                                       ; $6d13: $ff
    rst $38                                       ; $6d14: $ff
    rst $38                                       ; $6d15: $ff
    rst $38                                       ; $6d16: $ff
    rst $38                                       ; $6d17: $ff
    rst $38                                       ; $6d18: $ff
    rst $38                                       ; $6d19: $ff
    rst $38                                       ; $6d1a: $ff
    rst $38                                       ; $6d1b: $ff
    rst $38                                       ; $6d1c: $ff
    rst $38                                       ; $6d1d: $ff
    db $e4                                        ; $6d1e: $e4
    nop                                           ; $6d1f: $00
    nop                                           ; $6d20: $00
    nop                                           ; $6d21: $00
    nop                                           ; $6d22: $00
    nop                                           ; $6d23: $00
    ld [bc], a                                    ; $6d24: $02
    nop                                           ; $6d25: $00
    ccf                                           ; $6d26: $3f
    ccf                                           ; $6d27: $3f
    nop                                           ; $6d28: $00
    nop                                           ; $6d29: $00
    ld hl, sp+$46                                 ; $6d2a: $f8 $46
    ld hl, sp+$46                                 ; $6d2c: $f8 $46
    rst $08                                       ; $6d2e: $cf
    add hl, hl                                    ; $6d2f: $29
    nop                                           ; $6d30: $00
    nop                                           ; $6d31: $00
    ld [$0825], sp                                ; $6d32: $08 $25 $08
    dec h                                         ; $6d35: $25
    ld [$0825], sp                                ; $6d36: $08 $25 $08
    dec h                                         ; $6d39: $25
    ret z                                         ; $6d3a: $c8

    inc bc                                        ; $6d3b: $03
    call nz, $0306                                ; $6d3c: $c4 $06 $03
    ld [bc], a                                    ; $6d3f: $02
    ld [bc], a                                    ; $6d40: $02
    ld bc, $03c8                                  ; $6d41: $01 $c8 $03
    ldh a, [$03]                                  ; $6d44: $f0 $03
    call nz, $0306                                ; $6d46: $c4 $06 $03
    ld [bc], a                                    ; $6d49: $02
    ld c, b                                       ; $6d4a: $48
    ld a, a                                       ; $6d4b: $7f
    ld c, b                                       ; $6d4c: $48
    ld a, a                                       ; $6d4d: $7f
    ld c, b                                       ; $6d4e: $48
    ld a, a                                       ; $6d4f: $7f
    ld c, b                                       ; $6d50: $48
    ld a, a                                       ; $6d51: $7f
    rst $38                                       ; $6d52: $ff
    ld a, a                                       ; $6d53: $7f
    ld [$4403], a                                 ; $6d54: $ea $03 $44
    ld [bc], a                                    ; $6d57: $02
    ld b, b                                       ; $6d58: $40
    dec d                                         ; $6d59: $15
    cp a                                          ; $6d5a: $bf
    nop                                           ; $6d5b: $00
    add [hl]                                      ; $6d5c: $86
    ccf                                           ; $6d5d: $3f
    inc h                                         ; $6d5e: $24
    ld l, $40                                     ; $6d5f: $2e $40
    dec d                                         ; $6d61: $15
    ld [$0825], sp                                ; $6d62: $08 $25 $08
    dec h                                         ; $6d65: $25
    ld [$0825], sp                                ; $6d66: $08 $25 $08
    dec h                                         ; $6d69: $25
    ei                                            ; $6d6a: $fb
    rst $38                                       ; $6d6b: $ff
    nop                                           ; $6d6c: $00
    cp $eb                                        ; $6d6d: $fe $eb
    ld [hl+], a                                   ; $6d6f: $22
    rst $18                                       ; $6d70: $df
    nop                                           ; $6d71: $00
    xor a                                         ; $6d72: $af
    ld d, b                                       ; $6d73: $50
    rst $38                                       ; $6d74: $ff
    jp c, $fd25                                   ; $6d75: $da $25 $fd

    ld b, d                                       ; $6d78: $42
    cp a                                          ; $6d79: $bf
    ld [hl+], a                                   ; $6d7a: $22
    db $fd                                        ; $6d7b: $fd
    adc b                                         ; $6d7c: $88
    rst $38                                       ; $6d7d: $ff
    db $eb                                        ; $6d7e: $eb
    dec d                                         ; $6d7f: $15
    rst $30                                       ; $6d80: $f7
    push af                                       ; $6d81: $f5
    inc bc                                        ; $6d82: $03
    and $0e                                       ; $6d83: $e6 $0e
    ret c                                         ; $6d85: $d8

    rst $38                                       ; $6d86: $ff
    add hl, de                                    ; $6d87: $19
    pop hl                                        ; $6d88: $e1
    daa                                           ; $6d89: $27
    and [hl]                                      ; $6d8a: $a6
    ld l, a                                       ; $6d8b: $6f
    ret z                                         ; $6d8c: $c8

    ld e, l                                       ; $6d8d: $5d
    ld c, h                                       ; $6d8e: $4c
    rst $38                                       ; $6d8f: $ff
    db $db                                        ; $6d90: $db
    sub b                                         ; $6d91: $90
    cp a                                          ; $6d92: $bf

jr_02c_6d93:
    db $fd                                        ; $6d93: $fd
    inc bc                                        ; $6d94: $03
    ld a, [$fa02]                                 ; $6d95: $fa $02 $fa
    rst $38                                       ; $6d98: $ff
    ld b, $f4                                     ; $6d99: $06 $f4
    dec b                                         ; $6d9b: $05
    db $e4                                        ; $6d9c: $e4
    dec c                                         ; $6d9d: $0d
    reti                                          ; $6d9e: $d9


    dec sp                                        ; $6d9f: $3b
    ld h, d                                       ; $6da0: $62
    rst $28                                       ; $6da1: $ef
    rst $20                                       ; $6da2: $e7
    add h                                         ; $6da3: $84
    sbc a                                         ; $6da4: $9f
    jr z, @-$2e                                   ; $6da5: $28 $d0

    ldh [rP1], a                                  ; $6da7: $e0 $00
    jp c, $ff00                                   ; $6da9: $da $00 $ff

jr_02c_6dac:
    db $fd                                        ; $6dac: $fd
    inc b                                         ; $6dad: $04
    ei                                            ; $6dae: $fb
    ld hl, $46ff                                  ; $6daf: $21 $ff $46
    and a                                         ; $6db2: $a7
    jr c, jr_02c_6dac                             ; $6db3: $38 $f7

    cp $4f                                        ; $6db5: $fe $4f
    add sp, -$02                                  ; $6db7: $e8 $fe
    pop hl                                        ; $6db9: $e1
    sub a                                         ; $6dba: $97
    ret c                                         ; $6dbb: $d8

    sub a                                         ; $6dbc: $97
    ret nc                                        ; $6dbd: $d0

    cp a                                          ; $6dbe: $bf
    cpl                                           ; $6dbf: $2f
    or b                                          ; $6dc0: $b0
    ld e, a                                       ; $6dc1: $5f
    ld h, b                                       ; $6dc2: $60
    sbc a                                         ; $6dc3: $9f
    ret nz                                        ; $6dc4: $c0

    and b                                         ; $6dc5: $a0
    push hl                                       ; $6dc6: $e5
    cp $ff                                        ; $6dc7: $fe $ff
    ld bc, $03f1                                  ; $6dc9: $01 $f1 $03
    and $0f                                       ; $6dcc: $e6 $0f
    cp b                                          ; $6dce: $b8
    ld a, [hl]                                    ; $6dcf: $7e
    ret z                                         ; $6dd0: $c8

    rst $38                                       ; $6dd1: $ff
    ld l, a                                       ; $6dd2: $6f
    jp z, Jump_02c_486d                           ; $6dd3: $ca $6d $48

    ld [$dd90], a                                 ; $6dd6: $ea $90 $dd
    sub b                                         ; $6dd9: $90
    rst $38                                       ; $6dda: $ff
    rst $18                                       ; $6ddb: $df
    jr z, jr_02c_6d93                             ; $6ddc: $28 $b5

    ld b, b                                       ; $6dde: $40
    ld l, e                                       ; $6ddf: $6b
    add b                                         ; $6de0: $80
    rst $30                                       ; $6de1: $f7
    rst $38                                       ; $6de2: $ff
    push af                                       ; $6de3: $f5
    nop                                           ; $6de4: $00
    xor [hl]                                      ; $6de5: $ae
    ldh [$03], a                                  ; $6de6: $e0 $03
    xor [hl]                                      ; $6de8: $ae
    ldh [$0d], a                                  ; $6de9: $e0 $0d
    ret                                           ; $6deb: $c9


    dec de                                        ; $6dec: $1b
    or d                                          ; $6ded: $b2
    rst $38                                       ; $6dee: $ff
    ld [hl], a                                    ; $6def: $77
    call nz, $c96f                                ; $6df0: $c4 $6f $c9
    dec c                                         ; $6df3: $0d
    jp nc, $d21b                                  ; $6df4: $d2 $1b $d2

    rst $38                                       ; $6df7: $ff
    dec sp                                        ; $6df8: $3b
    db $e4                                        ; $6df9: $e4
    scf                                           ; $6dfa: $37
    db $e4                                        ; $6dfb: $e4
    scf                                           ; $6dfc: $37
    and [hl]                                      ; $6dfd: $a6
    ld [hl], l                                    ; $6dfe: $75
    ret z                                         ; $6dff: $c8

    rst $28                                       ; $6e00: $ef
    ld l, a                                       ; $6e01: $6f
    ret z                                         ; $6e02: $c8

    ld l, a                                       ; $6e03: $6f
    ld sp, hl                                     ; $6e04: $f9
    add b                                         ; $6e05: $80
    pop hl                                        ; $6e06: $e1
    add hl, sp                                    ; $6e07: $39
    pop hl                                        ; $6e08: $e1
    rst $20                                       ; $6e09: $e7
    rst $38                                       ; $6e0a: $ff
    ld b, $1f                                     ; $6e0b: $06 $1f
    add hl, de                                    ; $6e0d: $19
    rst $38                                       ; $6e0e: $ff
    ld [c], a                                     ; $6e0f: $e2
    db $fd                                        ; $6e10: $fd
    db $10                                        ; $6e11: $10
    ld a, [$fbff]                                 ; $6e12: $fa $ff $fb
    nop                                           ; $6e15: $00
    rst $30                                       ; $6e16: $f7
    rlca                                          ; $6e17: $07
    ret c                                         ; $6e18: $d8

    rra                                           ; $6e19: $1f

jr_02c_6e1a:
    ldh [$78], a                                  ; $6e1a: $e0 $78
    rst $38                                       ; $6e1c: $ff
    add a                                         ; $6e1d: $87
    rst $20                                       ; $6e1e: $e7
    ld a, [de]                                    ; $6e1f: $1a
    sbc l                                         ; $6e20: $9d
    ld h, b                                       ; $6e21: $60
    ld a, d                                       ; $6e22: $7a
    add b                                         ; $6e23: $80
    db $fd                                        ; $6e24: $fd
    db $fc                                        ; $6e25: $fc
    jp nc, $d0e0                                  ; $6e26: $d2 $e0 $d0

    pop hl                                        ; $6e29: $e1
    rst $30                                       ; $6e2a: $f7
    inc b                                         ; $6e2b: $04
    rst $28                                       ; $6e2c: $ef
    jr jr_02c_6e4c                                ; $6e2d: $18 $1d

    ldh [$f7], a                                  ; $6e2f: $e0 $f7
    rst $28                                       ; $6e31: $ef
    nop                                           ; $6e32: $00
    rst $10                                       ; $6e33: $d7
    ldh [$e0], a                                  ; $6e34: $e0 $e0
    rrca                                          ; $6e36: $0f
    ret c                                         ; $6e37: $d8

    jr c, jr_02c_6e1a                             ; $6e38: $38 $e0

    rst $38                                       ; $6e3a: $ff
    scf                                           ; $6e3b: $37
    and a                                         ; $6e3c: $a7
    ld l, a                                       ; $6e3d: $6f
    ret z                                         ; $6e3e: $c8

    ld e, a                                       ; $6e3f: $5f
    ret z                                         ; $6e40: $c8

    ld e, d                                       ; $6e41: $5a
    ret z                                         ; $6e42: $c8

    rst $38                                       ; $6e43: $ff
    ld e, l                                       ; $6e44: $5d
    nop                                           ; $6e45: $00
    rst $38                                       ; $6e46: $ff
    db $10                                        ; $6e47: $10
    ld a, [$ad00]                                 ; $6e48: $fa $00 $ad
    nop                                           ; $6e4b: $00

jr_02c_6e4c:
    rst $38                                       ; $6e4c: $ff
    rst $18                                       ; $6e4d: $df
    db $e4                                        ; $6e4e: $e4

jr_02c_6e4f:
    rst $38                                       ; $6e4f: $ff
    jr jr_02c_6e4f                                ; $6e50: $18 $fd

    inc b                                         ; $6e52: $04

jr_02c_6e53:
    rra                                           ; $6e53: $1f
    ld [c], a                                     ; $6e54: $e2
    db $fd                                        ; $6e55: $fd
    rst $20                                       ; $6e56: $e7
    db $10                                        ; $6e57: $10
    push hl                                       ; $6e58: $e5
    rst $28                                       ; $6e59: $ef
    ldh a, [rNR31]                                ; $6e5a: $f0 $1b
    db $fc                                        ; $6e5c: $fc
    dec b                                         ; $6e5d: $05
    ld e, $ff                                     ; $6e5e: $1e $ff
    db $e3                                        ; $6e60: $e3

jr_02c_6e61:
    and $4f                                       ; $6e61: $e6 $4f
    add sp, -$71                                  ; $6e63: $e8 $8f
    ret z                                         ; $6e65: $c8

    cpl                                           ; $6e66: $2f
    sbc b                                         ; $6e67: $98
    rst $28                                       ; $6e68: $ef
    rla                                           ; $6e69: $17
    jr c, jr_02c_6e53                             ; $6e6a: $38 $e7

    ldh a, [$f6]                                  ; $6e6c: $f0 $f6
    jp Jump_02c_6fc8                              ; $6e6e: $c3 $c8 $6f


jr_02c_6e71:
    ld [$cdff], a                                 ; $6e71: $ea $ff $cd
    ld c, b                                       ; $6e74: $48
    sbc d                                         ; $6e75: $9a
    db $10                                        ; $6e76: $10
    dec a                                         ; $6e77: $3d
    ldh [rIE], a                                  ; $6e78: $e0 $ff
    jr nz, @+$01                                  ; $6e7a: $20 $ff

    db $fd                                        ; $6e7c: $fd
    ld [de], a                                    ; $6e7d: $12
    db $eb                                        ; $6e7e: $eb
    nop                                           ; $6e7f: $00
    rst $30                                       ; $6e80: $f7
    sub e                                         ; $6e81: $93
    cp b                                          ; $6e82: $b8
    cpl                                           ; $6e83: $2f
    rst $30                                       ; $6e84: $f7
    ld h, b                                       ; $6e85: $60
    ld e, a                                       ; $6e86: $5f
    ret nz                                        ; $6e87: $c0

    jr c, jr_02c_6e71                             ; $6e88: $38 $e7

    ld [$309f], sp                                ; $6e8a: $08 $9f $30
    ld a, a                                       ; $6e8d: $7f
    rst $38                                       ; $6e8e: $ff
    ld d, b                                       ; $6e8f: $50
    ld l, d                                       ; $6e90: $6a
    ld b, h                                       ; $6e91: $44
    db $fd                                        ; $6e92: $fd
    add b                                         ; $6e93: $80
    rst $38                                       ; $6e94: $ff
    jr z, @-$09                                   ; $6e95: $28 $f5

    ld sp, hl                                     ; $6e97: $f9
    nop                                           ; $6e98: $00
    ldh [$e0], a                                  ; $6e99: $e0 $e0
    ret nz                                        ; $6e9b: $c0

    jp Jump_000_01fc                              ; $6e9c: $c3 $fc $01


    db $e3                                        ; $6e9f: $e3
    rlca                                          ; $6ea0: $07
    sbc h                                         ; $6ea1: $9c
    ld e, a                                       ; $6ea2: $5f
    inc a                                         ; $6ea3: $3c
    ld h, b                                       ; $6ea4: $60
    db $e3                                        ; $6ea5: $e3
    add e                                         ; $6ea6: $83
    sbc a                                         ; $6ea7: $9f
    ld d, b                                       ; $6ea8: $50

jr_02c_6ea9:
    pop hl                                        ; $6ea9: $e1
    sbc b                                         ; $6eaa: $98

jr_02c_6eab:
    ld d, b                                       ; $6eab: $50
    ld [c], a                                     ; $6eac: $e2
    rst $38                                       ; $6ead: $ff
    jr jr_02c_6eab                                ; $6eae: $18 $fb

    ld [c], a                                     ; $6eb0: $e2
    push af                                       ; $6eb1: $f5
    nop                                           ; $6eb2: $00
    rst $38                                       ; $6eb3: $ff
    cp $01                                        ; $6eb4: $fe $01
    rst $38                                       ; $6eb6: $ff
    rst $20                                       ; $6eb7: $e7
    rrca                                          ; $6eb8: $0f
    ret c                                         ; $6eb9: $d8

    ccf                                           ; $6eba: $3f
    ld h, b                                       ; $6ebb: $60
    ld hl, sp-$79                                 ; $6ebc: $f8 $87
    rst $20                                       ; $6ebe: $e7
    ei                                            ; $6ebf: $fb
    jr jr_02c_6e61                                ; $6ec0: $18 $9f

    ld d, b                                       ; $6ec2: $50
    pop hl                                        ; $6ec3: $e1
    pop bc                                        ; $6ec4: $c1
    ld sp, hl                                     ; $6ec5: $f9
    ld b, $c7                                     ; $6ec6: $06 $c7
    jr c, jr_02c_6f49                             ; $6ec8: $38 $7f

    ld a, [hl-]                                   ; $6eca: $3a
    ret nz                                        ; $6ecb: $c0

    db $dd                                        ; $6ecc: $dd
    inc b                                         ; $6ecd: $04

jr_02c_6ece:
    ei                                            ; $6ece: $fb
    jr nz, jr_02c_6ece                            ; $6ecf: $20 $fd

    ret nz                                        ; $6ed1: $c0

    push hl                                       ; $6ed2: $e5
    rst $18                                       ; $6ed3: $df
    cp $01                                        ; $6ed4: $fe $01
    rst $38                                       ; $6ed6: $ff
    ld bc, $faf9                                  ; $6ed7: $01 $f9 $fa

jr_02c_6eda:
    pop bc                                        ; $6eda: $c1
    rlca                                          ; $6edb: $07
    db $f4                                        ; $6edc: $f4
    rst $38                                       ; $6edd: $ff
    ld b, $48                                     ; $6ede: $06 $48
    rst $28                                       ; $6ee0: $ef
    sub b                                         ; $6ee1: $90
    jp c, $dd90                                   ; $6ee2: $da $90 $dd

    inc h                                         ; $6ee5: $24
    sbc a                                         ; $6ee6: $9f
    xor e                                         ; $6ee7: $ab
    jr nz, jr_02c_6ea9                            ; $6ee8: $20 $bf

    ld d, b                                       ; $6eea: $50
    ld a, l                                       ; $6eeb: $7d
    ldh [$c3], a                                  ; $6eec: $e0 $c3
    ld e, [hl]                                    ; $6eee: $5e
    jp $ffe7                                      ; $6eef: $c3 $e7 $ff


    rrca                                          ; $6ef2: $0f
    sbc b                                         ; $6ef3: $98
    jr c, jr_02c_6f56                             ; $6ef4: $38 $60

    rst $20                                       ; $6ef6: $e7
    add a                                         ; $6ef7: $87
    sbc a                                         ; $6ef8: $9f
    ld [$ffff], sp                                ; $6ef9: $08 $ff $ff
    nop                                           ; $6efc: $00
    xor a                                         ; $6efd: $af
    jr nz, jr_02c_6eda                            ; $6efe: $20 $da

    ld b, b                                       ; $6f00: $40
    db $ed                                        ; $6f01: $ed
    rlca                                          ; $6f02: $07
    rst $30                                       ; $6f03: $f7
    rst $38                                       ; $6f04: $ff
    jr @-$06                                      ; $6f05: $18 $f8

    ldh a, [$e1]                                  ; $6f07: $f0 $e1
    dec bc                                        ; $6f09: $0b
    sbc h                                         ; $6f0a: $9c
    inc sp                                        ; $6f0b: $33
    ld a, b                                       ; $6f0c: $78
    cp l                                          ; $6f0d: $bd
    ld b, a                                       ; $6f0e: $47
    ld e, [hl]                                    ; $6f0f: $5e
    ldh [$bf], a                                  ; $6f10: $e0 $bf
    ret nz                                        ; $6f12: $c0

    ld a, a                                       ; $6f13: $7f
    add b                                         ; $6f14: $80
    inc [hl]                                      ; $6f15: $34
    pop bc                                        ; $6f16: $c1
    sub b                                         ; $6f17: $90
    rst $38                                       ; $6f18: $ff
    or a                                          ; $6f19: $b7
    inc h                                         ; $6f1a: $24
    ld l, a                                       ; $6f1b: $6f
    ld b, h                                       ; $6f1c: $44
    ei                                            ; $6f1d: $fb
    add b                                         ; $6f1e: $80
    rst $38                                       ; $6f1f: $ff
    ld b, b                                       ; $6f20: $40
    rst $28                                       ; $6f21: $ef
    cp a                                          ; $6f22: $bf
    ld [bc], a                                    ; $6f23: $02
    ld e, e                                       ; $6f24: $5b
    ld [hl+], a                                   ; $6f25: $22
    add b                                         ; $6f26: $80
    ldh [rOBP0], a                                ; $6f27: $e0 $48
    rst $08                                       ; $6f29: $cf
    ld c, b                                       ; $6f2a: $48
    rst $38                                       ; $6f2b: $ff
    rst $18                                       ; $6f2c: $df
    sub h                                         ; $6f2d: $94
    cp c                                          ; $6f2e: $b9
    sub b                                         ; $6f2f: $90
    cp e                                          ; $6f30: $bb
    sub b                                         ; $6f31: $90
    cp a                                          ; $6f32: $bf
    ld d, b                                       ; $6f33: $50
    rst $38                                       ; $6f34: $ff
    db $fd                                        ; $6f35: $fd
    ld c, b                                       ; $6f36: $48
    rst $18                                       ; $6f37: $df
    ld c, d                                       ; $6f38: $4a
    rst $08                                       ; $6f39: $cf
    sub b                                         ; $6f3a: $90
    sbc a                                         ; $6f3b: $9f
    sub b                                         ; $6f3c: $90
    rst $38                                       ; $6f3d: $ff
    rst $18                                       ; $6f3e: $df
    ld c, b                                       ; $6f3f: $48

Call_02c_6f40:
    ld [$6d4a], a                                 ; $6f40: $ea $4a $6d
    ld c, b                                       ; $6f43: $48
    ld l, a                                       ; $6f44: $6f
    ld d, b                                       ; $6f45: $50
    rst $38                                       ; $6f46: $ff
    push af                                       ; $6f47: $f5
    sub b                                         ; $6f48: $90

jr_02c_6f49:
    rst $10                                       ; $6f49: $d7
    sub d                                         ; $6f4a: $92
    sub a                                         ; $6f4b: $97
    ld c, e                                       ; $6f4c: $4b
    ret z                                         ; $6f4d: $c8

    ld c, e                                       ; $6f4e: $4b
    rst $38                                       ; $6f4f: $ff
    ret c                                         ; $6f50: $d8

    sub a                                         ; $6f51: $97
    cp b                                          ; $6f52: $b8
    sub a                                         ; $6f53: $97
    or b                                          ; $6f54: $b0
    sub a                                         ; $6f55: $97

jr_02c_6f56:
    or b                                          ; $6f56: $b0
    ld d, a                                       ; $6f57: $57
    rst $38                                       ; $6f58: $ff
    ret c                                         ; $6f59: $d8

    ld c, e                                       ; $6f5a: $4b
    ret c                                         ; $6f5b: $d8

    ld c, e                                       ; $6f5c: $4b
    ret z                                         ; $6f5d: $c8

    sub a                                         ; $6f5e: $97
    sub b                                         ; $6f5f: $90
    sub a                                         ; $6f60: $97
    db $fd                                        ; $6f61: $fd
    ret c                                         ; $6f62: $d8

    inc a                                         ; $6f63: $3c
    ret nz                                        ; $6f64: $c0

    ld l, b                                       ; $6f65: $68
    ld c, a                                       ; $6f66: $4f
    ld l, b                                       ; $6f67: $68
    ld d, a                                       ; $6f68: $57
    ld hl, sp-$61                                 ; $6f69: $f8 $9f
    rst $30                                       ; $6f6b: $f7
    ret nc                                        ; $6f6c: $d0

    sbc a                                         ; $6f6d: $9f
    sub b                                         ; $6f6e: $90
    ldh [$a3], a                                  ; $6f6f: $e0 $a3
    cp l                                          ; $6f71: $bd
    ld a, [hl]                                    ; $6f72: $7e
    jp $9fff                                      ; $6f73: $c3 $ff $9f


    nop                                           ; $6f76: $00
    jp Jump_000_3c3c                              ; $6f77: $c3 $3c $3c


    jp $e0f9                                      ; $6f7a: $c3 $f9 $e0


    ld [hl], d                                    ; $6f7d: $72
    ld [c], a                                     ; $6f7e: $e2
    halt                                          ; $6f7f: $76
    ld a, a                                       ; $6f80: $7f
    sbc c                                         ; $6f81: $99
    rst $38                                       ; $6f82: $ff
    nop                                           ; $6f83: $00
    sbc c                                         ; $6f84: $99
    ld h, [hl]                                    ; $6f85: $66
    ld h, [hl]                                    ; $6f86: $66
    sbc c                                         ; $6f87: $99
    ld [hl], b                                    ; $6f88: $70
    ldh [$bf], a                                  ; $6f89: $e0 $bf
    ld [bc], a                                    ; $6f8b: $02
    xor l                                         ; $6f8c: $ad
    ld [bc], a                                    ; $6f8d: $02
    jp c, $fd3c                                   ; $6f8e: $da $3c $fd

    ldh [$e4], a                                  ; $6f91: $e0 $e4
    ei                                            ; $6f93: $fb
    cp [hl]                                       ; $6f94: $be
    ldh a, [$e0]                                  ; $6f95: $f0 $e0
    xor a                                         ; $6f97: $af
    nop                                           ; $6f98: $00
    reti                                          ; $6f99: $d9


    halt                                          ; $6f9a: $76
    rst $28                                       ; $6f9b: $ef
    ldh [$e4], a                                  ; $6f9c: $e0 $e4
    rst $18                                       ; $6f9e: $df
    rst $18                                       ; $6f9f: $df
    ld bc, $0603                                  ; $6fa0: $01 $03 $06
    ld c, $18                                     ; $6fa3: $0e $18
    ldh a, [$c8]                                  ; $6fa5: $f0 $c8
    dec de                                        ; $6fa7: $1b
    ld a, b                                       ; $6fa8: $78
    rst $20                                       ; $6fa9: $e7
    ld h, a                                       ; $6faa: $67
    ldh [$df], a                                  ; $6fab: $e0 $df
    ld d, [hl]                                    ; $6fad: $56
    ld [c], a                                     ; $6fae: $e2
    add [hl]                                      ; $6faf: $86
    and e                                         ; $6fb0: $a3
    ld d, b                                       ; $6fb1: $50
    xor a                                         ; $6fb2: $af
    dec h                                         ; $6fb3: $25
    rst $38                                       ; $6fb4: $ff
    jp c, $b807                                   ; $6fb5: $da $07 $b8

    rlca                                          ; $6fb8: $07
    db $fd                                        ; $6fb9: $fd
    and d                                         ; $6fba: $a2
    ld e, a                                       ; $6fbb: $5f
    ldh [rIE], a                                  ; $6fbc: $e0 $ff
    rla                                           ; $6fbe: $17
    push hl                                       ; $6fbf: $e5
    cp d                                          ; $6fc0: $ba
    ld b, d                                       ; $6fc1: $42
    db $fd                                        ; $6fc2: $fd
    db $fd                                        ; $6fc3: $fd
    db $fd                                        ; $6fc4: $fd
    rst $18                                       ; $6fc5: $df
    rst $38                                       ; $6fc6: $ff
    rst $38                                       ; $6fc7: $ff

Jump_02c_6fc8:
    ei                                            ; $6fc8: $fb
    rst $38                                       ; $6fc9: $ff
    rst $38                                       ; $6fca: $ff
    rst $38                                       ; $6fcb: $ff
    ld a, l                                       ; $6fcc: $7d
    rst $38                                       ; $6fcd: $ff
    rst $28                                       ; $6fce: $ef
    ei                                            ; $6fcf: $fb
    rst $28                                       ; $6fd0: $ef
    rst $38                                       ; $6fd1: $ff
    or $e0                                        ; $6fd2: $f6 $e0
    xor l                                         ; $6fd4: $ad
    rst $28                                       ; $6fd5: $ef
    halt                                          ; $6fd6: $76
    rst $38                                       ; $6fd7: $ff
    and $fe                                       ; $6fd8: $e6 $fe
    xor $e0                                       ; $6fda: $ee $e0
    db $e4                                        ; $6fdc: $e4
    db $eb                                        ; $6fdd: $eb
    ld [hl], h                                    ; $6fde: $74
    rst $30                                       ; $6fdf: $f7
    ld c, b                                       ; $6fe0: $48
    rst $38                                       ; $6fe1: $ff
    add b                                         ; $6fe2: $80
    rst $38                                       ; $6fe3: $ff
    cp e                                          ; $6fe4: $bb
    db $eb                                        ; $6fe5: $eb
    rst $38                                       ; $6fe6: $ff
    ld a, h                                       ; $6fe7: $7c
    rst $38                                       ; $6fe8: $ff
    ld d, b                                       ; $6fe9: $50
    rst $10                                       ; $6fea: $d7
    xor h                                         ; $6feb: $ac
    db $fd                                        ; $6fec: $fd
    db $eb                                        ; $6fed: $eb
    ld h, a                                       ; $6fee: $67
    pop hl                                        ; $6fef: $e1
    ld b, b                                       ; $6ff0: $40
    or l                                          ; $6ff1: $b5
    nop                                           ; $6ff2: $00
    ei                                            ; $6ff3: $fb
    ld bc, $ffff                                  ; $6ff4: $01 $ff $ff
    ld [bc], a                                    ; $6ff7: $02
    rst $10                                       ; $6ff8: $d7
    db $10                                        ; $6ff9: $10
    db $ed                                        ; $6ffa: $ed
    dec b                                         ; $6ffb: $05
    rst $38                                       ; $6ffc: $ff
    inc bc                                        ; $6ffd: $03
    rst $38                                       ; $6ffe: $ff
    rst $38                                       ; $6fff: $ff
    ld a, [hl+]                                   ; $7000: $2a
    jp c, $bd08                                   ; $7001: $da $08 $bd

    dec d                                         ; $7004: $15
    rst $38                                       ; $7005: $ff
    ld c, $ff                                     ; $7006: $0e $ff
    rst $38                                       ; $7008: $ff
    ld b, l                                       ; $7009: $45
    rst $30                                       ; $700a: $f7
    ld a, [bc]                                    ; $700b: $0a
    cp $25                                        ; $700c: $fe $25
    rst $28                                       ; $700e: $ef
    sbc e                                         ; $700f: $9b
    rst $30                                       ; $7010: $f7
    rst $38                                       ; $7011: $ff
    ld e, $ff                                     ; $7012: $1e $ff
    halt                                          ; $7014: $76
    cp [hl]                                       ; $7015: $be
    db $db                                        ; $7016: $db
    rst $38                                       ; $7017: $ff
    cp $ff                                        ; $7018: $fe $ff
    rst $38                                       ; $701a: $ff
    push af                                       ; $701b: $f5
    push af                                       ; $701c: $f5
    ld l, b                                       ; $701d: $68
    rst $28                                       ; $701e: $ef
    call nc, $b8ff                                ; $701f: $d4 $ff $b8
    xor a                                         ; $7022: $af
    rst $38                                       ; $7023: $ff
    ret nc                                        ; $7024: $d0

    jp c, $fda5                                   ; $7025: $da $a5 $fd

    ld d, d                                       ; $7028: $52
    rst $38                                       ; $7029: $ff
    ld [bc], a                                    ; $702a: $02
    ei                                            ; $702b: $fb
    rst $38                                       ; $702c: $ff
    ld b, l                                       ; $702d: $45
    xor a                                         ; $702e: $af
    ld d, [hl]                                    ; $702f: $56
    jp c, $fe22                                   ; $7030: $da $22 $fe

    dec b                                         ; $7033: $05
    rst $38                                       ; $7034: $ff
    rst $38                                       ; $7035: $ff
    ld h, $fd                                     ; $7036: $26 $fd

jr_02c_7038:
    inc bc                                        ; $7038: $03
    cp e                                          ; $7039: $bb
    ld bc, $b9fd                                  ; $703a: $01 $fd $b9
    ei                                            ; $703d: $fb
    rst $38                                       ; $703e: $ff
    ld [hl], h                                    ; $703f: $74
    rst $10                                       ; $7040: $d7
    ld a, [hl+]                                   ; $7041: $2a
    db $ed                                        ; $7042: $ed
    ld [bc], a                                    ; $7043: $02
    rst $38                                       ; $7044: $ff
    jr nz, @-$24                                  ; $7045: $20 $da

    cp $da                                        ; $7047: $fe $da
    and c                                         ; $7049: $a1

jr_02c_704a:
    nop                                           ; $704a: $00
    ei                                            ; $704b: $fb
    call c, $faff                                 ; $704c: $dc $ff $fa
    ei                                            ; $704f: $fb
    db $f4                                        ; $7050: $f4
    rst $38                                       ; $7051: $ff
    rst $38                                       ; $7052: $ff
    and $eb                                       ; $7053: $e6 $eb
    db $f4                                        ; $7055: $f4
    rst $30                                       ; $7056: $f7
    ld l, b                                       ; $7057: $68
    rst $38                                       ; $7058: $ff
    jp nc, $fffb                                  ; $7059: $d2 $fb $ff

    add sp, $76                                   ; $705c: $e8 $76
    ldh [$fa], a                                  ; $705e: $e0 $fa
    cp $ad                                        ; $7060: $fe $ad
    db $fd                                        ; $7062: $fd
    ld e, e                                       ; $7063: $5b
    rst $08                                       ; $7064: $cf
    rst $18                                       ; $7065: $df

jr_02c_7066:
    adc b                                         ; $7066: $88
    push af                                       ; $7067: $f5
    db $10                                        ; $7068: $10
    push de                                       ; $7069: $d5
    add d                                         ; $706a: $82
    halt                                          ; $706b: $76
    ret nz                                        ; $706c: $c0

    jr jr_02c_704a                                ; $706d: $18 $db

    rst $38                                       ; $706f: $ff
    inc a                                         ; $7070: $3c
    and l                                         ; $7071: $a5
    ld a, [hl]                                    ; $7072: $7e
    jp $c366                                      ; $7073: $c3 $66 $c3


    ld h, [hl]                                    ; $7076: $66
    sbc c                                         ; $7077: $99

jr_02c_7078:
    db $fd                                        ; $7078: $fd
    ld b, d                                       ; $7079: $42
    jp nz, $b781                                  ; $707a: $c2 $81 $b7

    ld a, b                                       ; $707d: $78
    adc e                                         ; $707e: $8b
    inc a                                         ; $707f: $3c
    push bc                                       ; $7080: $c5
    ld c, $bf                                     ; $7081: $0e $bf
    push bc                                       ; $7083: $c5
    ld c, $8b                                     ; $7084: $0e $8b
    inc a                                         ; $7086: $3c
    or a                                          ; $7087: $b7
    ld a, b                                       ; $7088: $78
    or d                                          ; $7089: $b2
    add c                                         ; $708a: $81
    rst $18                                       ; $708b: $df
    rst $38                                       ; $708c: $ff
    ld a, $e7                                     ; $708d: $3e $e7
    ld a, [hl]                                    ; $708f: $7e
    inc bc                                        ; $7090: $03
    adc $33                                       ; $7091: $ce $33
    add [hl]                                      ; $7093: $86
    push af                                       ; $7094: $f5
    rst $18                                       ; $7095: $df
    ld b, $e7                                     ; $7096: $06 $e7
    inc c                                         ; $7098: $0c
    rst $20                                       ; $7099: $e7
    jr @-$68                                      ; $709a: $18 $96

    and b                                         ; $709c: $a0
    db $10                                        ; $709d: $10
    rst $10                                       ; $709e: $d7
    ld a, a                                       ; $709f: $7f
    jr c, @-$53                                   ; $70a0: $38 $ab

    ld a, h                                       ; $70a2: $7c
    rst $00                                       ; $70a3: $c7
    ld l, h                                       ; $70a4: $6c
    sub e                                         ; $70a5: $93
    ld b, h                                       ; $70a6: $44
    sub h                                         ; $70a7: $94
    add l                                         ; $70a8: $85
    rst $38                                       ; $70a9: $ff
    rst $10                                       ; $70aa: $d7
    jr c, jr_02c_7078                             ; $70ab: $38 $cb

    inc e                                         ; $70ad: $1c
    push hl                                       ; $70ae: $e5
    ld c, $cb                                     ; $70af: $0e $cb
    inc e                                         ; $70b1: $1c
    ei                                            ; $70b2: $fb
    rst $10                                       ; $70b3: $d7
    jr c, jr_02c_7038                             ; $70b4: $38 $82

    add h                                         ; $70b6: $84
    inc a                                         ; $70b7: $3c
    add a                                         ; $70b8: $87
    ld a, h                                       ; $70b9: $7c
    rst $30                                       ; $70ba: $f7

jr_02c_70bb:
    inc c                                         ; $70bb: $0c
    ld hl, sp-$02                                 ; $70bc: $f8 $fe

jr_02c_70be:
    ldh [rNR44], a                                ; $70be: $e0 $23
    ret nz                                        ; $70c0: $c0

    ld h, h                                       ; $70c1: $64
    and d                                         ; $70c2: $a2
    db $10                                        ; $70c3: $10
    rst $28                                       ; $70c4: $ef
    jr jr_02c_70be                                ; $70c5: $18 $f7

    inc c                                         ; $70c7: $0c
    rst $20                                       ; $70c8: $e7
    rst $28                                       ; $70c9: $ef
    jr jr_02c_70bb                                ; $70ca: $18 $ef

    adc l                                         ; $70cc: $8d
    db $e3                                        ; $70cd: $e3
    dec a                                         ; $70ce: $3d
    and b                                         ; $70cf: $a0
    rst $28                                       ; $70d0: $ef
    jr c, jr_02c_7066                             ; $70d1: $38 $93

    ld a, l                                       ; $70d3: $7d
    ld l, h                                       ; $70d4: $6c
    ld d, [hl]                                    ; $70d5: $56
    add a                                         ; $70d6: $87
    rst $08                                       ; $70d7: $cf
    inc a                                         ; $70d8: $3c
    rst $38                                       ; $70d9: $ff
    inc b                                         ; $70da: $04
    ei                                            ; $70db: $fb
    cp $e0                                        ; $70dc: $fe $e0
    db $fc                                        ; $70de: $fc
    ld b, h                                       ; $70df: $44
    add c                                         ; $70e0: $81
    ld b, c                                       ; $70e1: $41
    adc h                                         ; $70e2: $8c
    rst $38                                       ; $70e3: $ff
    add b                                         ; $70e4: $80
    cp a                                          ; $70e5: $bf
    ld b, b                                       ; $70e6: $40
    rst $38                                       ; $70e7: $ff
    ld h, b                                       ; $70e8: $60
    rst $38                                       ; $70e9: $ff
    rst $18                                       ; $70ea: $df
    jr nz, @+$01                                  ; $70eb: $20 $ff

    and b                                         ; $70ed: $a0
    cp a                                          ; $70ee: $bf
    jr nz, @+$71                                  ; $70ef: $20 $6f

    db $10                                        ; $70f1: $10
    rst $30                                       ; $70f2: $f7
    rst $30                                       ; $70f3: $f7
    ld d, b                                       ; $70f4: $50
    rst $30                                       ; $70f5: $f7
    ldh a, [$e3]                                  ; $70f6: $f0 $e3
    and b                                         ; $70f8: $a0
    ld a, a                                       ; $70f9: $7f
    and b                                         ; $70fa: $a0
    ld l, a                                       ; $70fb: $6f
    ei                                            ; $70fc: $fb
    ret nc                                        ; $70fd: $d0

    scf                                           ; $70fe: $37
    cp $e1                                        ; $70ff: $fe $e1
    db $10                                        ; $7101: $10
    rst $30                                       ; $7102: $f7
    ld [$08db], sp                                ; $7103: $08 $db $08
    rst $38                                       ; $7106: $ff
    ei                                            ; $7107: $fb
    ld b, h                                       ; $7108: $44
    rst $38                                       ; $7109: $ff
    and h                                         ; $710a: $a4
    cp l                                          ; $710b: $bd
    ld c, $5b                                     ; $710c: $0e $5b
    ld [bc], a                                    ; $710e: $02
    rst $38                                       ; $710f: $ff
    or $41                                        ; $7110: $f6 $41
    rst $38                                       ; $7112: $ff
    cp a                                          ; $7113: $bf
    ret nz                                        ; $7114: $c0

    ld e, a                                       ; $7115: $5f
    ld h, b                                       ; $7116: $60
    ld e, a                                       ; $7117: $5f
    ld a, a                                       ; $7118: $7f
    ld h, b                                       ; $7119: $60
    cpl                                           ; $711a: $2f
    or b                                          ; $711b: $b0
    cpl                                           ; $711c: $2f
    or b                                          ; $711d: $b0
    rla                                           ; $711e: $17
    ret c                                         ; $711f: $d8

    cp $e1                                        ; $7120: $fe $e1
    cp $c0                                        ; $7122: $fe $c0
    ldh [$df], a                                  ; $7124: $e0 $df
    or b                                          ; $7126: $b0
    ld l, a                                       ; $7127: $6f
    ldh [$2f], a                                  ; $7128: $e0 $2f
    call nc, $ff33                                ; $712a: $d4 $33 $ff
    db $ec                                        ; $712d: $ec
    dec e                                         ; $712e: $1d
    ld a, [c]                                     ; $712f: $f2
    ld c, $fd                                     ; $7130: $0e $fd
    inc bc                                        ; $7132: $03
    add b                                         ; $7133: $80
    cp a                                          ; $7134: $bf
    cp $b2                                        ; $7135: $fe $b2
    pop hl                                        ; $7137: $e1
    jr nz, @-$0f                                  ; $7138: $20 $ef

    db $10                                        ; $713a: $10
    or e                                          ; $713b: $b3
    inc c                                         ; $713c: $0c
    db $ed                                        ; $713d: $ed
    ld [hl+], a                                   ; $713e: $22
    ld a, h                                       ; $713f: $7c
    ld d, a                                       ; $7140: $57
    and b                                         ; $7141: $a0
    inc sp                                        ; $7142: $33
    add l                                         ; $7143: $85
    ld c, $ce                                     ; $7144: $0e $ce
    ld [hl-], a                                   ; $7146: $32
    cp a                                          ; $7147: $bf
    ld d, b                                       ; $7148: $50
    ld b, b                                       ; $7149: $40
    add b                                         ; $714a: $80
    ld a, l                                       ; $714b: $7d
    ld bc, $a030                                  ; $714c: $01 $30 $a0
    inc a                                         ; $714f: $3c
    ld a, [hl-]                                   ; $7150: $3a
    push hl                                       ; $7151: $e5
    db $dd                                        ; $7152: $dd
    ld [bc], a                                    ; $7153: $02
    ld l, b                                       ; $7154: $68
    and b                                         ; $7155: $a0
    ld sp, hl                                     ; $7156: $f9
    ld d, b                                       ; $7157: $50
    adc b                                         ; $7158: $88
    ldh [rNR13], a                                ; $7159: $e0 $13
    add h                                         ; $715b: $84
    ld sp, hl                                     ; $715c: $f9
    ld c, $ef                                     ; $715d: $0e $ef
    ld sp, $ffbe                                  ; $715f: $31 $be $ff
    ld c, a                                       ; $7162: $4f
    ld [hl], b                                    ; $7163: $70
    cp a                                          ; $7164: $bf
    ret nz                                        ; $7165: $c0

    ld bc, $06fd                                  ; $7166: $01 $fd $06
    rst $20                                       ; $7169: $e7
    sbc a                                         ; $716a: $9f
    add hl, sp                                    ; $716b: $39
    ld a, $c7                                     ; $716c: $3e $c7
    ld hl, sp+$3f                                 ; $716e: $f8 $3f
    or $64                                        ; $7170: $f6 $64
    sub c                                         ; $7172: $91
    ld h, b                                       ; $7173: $60
    rst $00                                       ; $7174: $c7
    rst $00                                       ; $7175: $c7
    jr c, jr_02c_71b0                             ; $7176: $38 $38

    rst $00                                       ; $7178: $c7
    or d                                          ; $7179: $b2
    and b                                         ; $717a: $a0
    add [hl]                                      ; $717b: $86
    ld h, e                                       ; $717c: $63
    ld l, d                                       ; $717d: $6a
    pop hl                                        ; $717e: $e1
    add sp, $1b                                   ; $717f: $e8 $1b
    ld a, [c]                                     ; $7181: $f2
    cp $e2                                        ; $7182: $fe $e2
    rra                                           ; $7184: $1f
    ld e, [hl]                                    ; $7185: $5e
    pop hl                                        ; $7186: $e1
    ld [hl], c                                    ; $7187: $71
    ld h, a                                       ; $7188: $67
    jr nz, @-$3b                                  ; $7189: $20 $c3

    inc e                                         ; $718b: $1c
    inc e                                         ; $718c: $1c
    rst $28                                       ; $718d: $ef
    db $e3                                        ; $718e: $e3
    db $e3                                        ; $718f: $e3
    add b                                         ; $7190: $80
    cp a                                          ; $7191: $bf
    dec h                                         ; $7192: $25
    and b                                         ; $7193: $a0
    rst $38                                       ; $7194: $ff
    ld b, b                                       ; $7195: $40
    ld e, a                                       ; $7196: $5f
    rst $28                                       ; $7197: $ef
    ld b, b                                       ; $7198: $40
    ld e, a                                       ; $7199: $5f
    add b                                         ; $719a: $80
    cp a                                          ; $719b: $bf
    cp $e1                                        ; $719c: $fe $e1
    db $e3                                        ; $719e: $e3
    jp $f33e                                      ; $719f: $c3 $3e $f3


    cp a                                          ; $71a2: $bf
    ld [hl], b                                    ; $71a3: $70
    ld h, b                                       ; $71a4: $60
    ld h, b                                       ; $71a5: $60
    sub b                                         ; $71a6: $90
    ldh [rIE], a                                  ; $71a7: $e0 $ff
    ld [$14eb], sp                                ; $71a9: $08 $eb $14
    rst $38                                       ; $71ac: $ff
    rst $30                                       ; $71ad: $f7
    add b                                         ; $71ae: $80
    rst $38                                       ; $71af: $ff

jr_02c_71b0:
    sub b                                         ; $71b0: $90
    xor a                                         ; $71b1: $af
    ld d, b                                       ; $71b2: $50
    ld e, d                                       ; $71b3: $5a
    ld h, l                                       ; $71b4: $65
    rst $38                                       ; $71b5: $ff
    db $fd                                        ; $71b6: $fd
    ld b, d                                       ; $71b7: $42
    rst $38                                       ; $71b8: $ff
    ld b, b                                       ; $71b9: $40
    rst $38                                       ; $71ba: $ff
    ret z                                         ; $71bb: $c8

    xor e                                         ; $71bc: $ab
    sub h                                         ; $71bd: $94
    rst $38                                       ; $71be: $ff
    rst $30                                       ; $71bf: $f7
    inc bc                                        ; $71c0: $03
    rst $38                                       ; $71c1: $ff
    dec b                                         ; $71c2: $05
    cp $2b                                        ; $71c3: $fe $2b
    db $fc                                        ; $71c5: $fc
    dec c                                         ; $71c6: $0d
    rst $38                                       ; $71c7: $ff
    ld a, [$fd32]                                 ; $71c8: $fa $32 $fd
    ld d, l                                       ; $71cb: $55
    ld [$d7a8], a                                 ; $71cc: $ea $a8 $d7
    db $f4                                        ; $71cf: $f4
    rst $38                                       ; $71d0: $ff
    adc e                                         ; $71d1: $8b
    rst $20                                       ; $71d2: $e7
    rst $38                                       ; $71d3: $ff
    jp c, $f53d                                   ; $71d4: $da $3d $f5

    ld a, [bc]                                    ; $71d7: $0a
    xor d                                         ; $71d8: $aa
    rst $38                                       ; $71d9: $ff
    ld d, l                                       ; $71da: $55
    ld b, c                                       ; $71db: $41
    cp [hl]                                       ; $71dc: $be
    inc d                                         ; $71dd: $14
    rst $38                                       ; $71de: $ff
    xor b                                         ; $71df: $a8
    rst $38                                       ; $71e0: $ff
    ld [hl], l                                    ; $71e1: $75
    rst $38                                       ; $71e2: $ff
    rst $38                                       ; $71e3: $ff
    sub l                                         ; $71e4: $95
    db $eb                                        ; $71e5: $eb
    dec bc                                        ; $71e6: $0b
    push af                                       ; $71e7: $f5
    and l                                         ; $71e8: $a5
    ei                                            ; $71e9: $fb
    ld c, d                                       ; $71ea: $4a
    rst $38                                       ; $71eb: $ff
    rst $30                                       ; $71ec: $f7
    and [hl]                                      ; $71ed: $a6
    ei                                            ; $71ee: $fb
    call $97f3                                    ; $71ef: $cd $f3 $97
    jp hl                                         ; $71f2: $e9


    ld c, a                                       ; $71f3: $4f
    ei                                            ; $71f4: $fb
    pop af                                        ; $71f5: $f1
    push af                                       ; $71f6: $f5
    inc e                                         ; $71f7: $1c
    ret nz                                        ; $71f8: $c0

    ld a, [c]                                     ; $71f9: $f2
    db $fd                                        ; $71fa: $fd
    xor c                                         ; $71fb: $a9
    cp $52                                        ; $71fc: $fe $52
    ld a, a                                       ; $71fe: $7f
    db $fd                                        ; $71ff: $fd
    add c                                         ; $7200: $81
    cp $2a                                        ; $7201: $fe $2a
    push de                                       ; $7203: $d5
    sub l                                         ; $7204: $95
    db $eb                                        ; $7205: $eb
    add l                                         ; $7206: $85
    and b                                         ; $7207: $a0
    cp $fd                                        ; $7208: $fe $fd
    ld [$99df], a                                 ; $720a: $ea $df $99
    sbc a                                         ; $720d: $9f
    ld c, l                                       ; $720e: $4d
    daa                                           ; $720f: $27
    rla                                           ; $7210: $17
    and e                                         ; $7211: $a3
    rst $38                                       ; $7212: $ff
    di                                            ; $7213: $f3
    db $db                                        ; $7214: $db
    pop hl                                        ; $7215: $e1
    xor $f1                                       ; $7216: $ee $f1
    or h                                          ; $7218: $b4
    ei                                            ; $7219: $fb
    ld b, c                                       ; $721a: $41
    rst $38                                       ; $721b: $ff
    rst $38                                       ; $721c: $ff
    rst $18                                       ; $721d: $df
    sbc a                                         ; $721e: $9f
    sbc h                                         ; $721f: $9c
    ld c, a                                       ; $7220: $4f
    ld h, $17                                     ; $7221: $26 $17
    and d                                         ; $7223: $a2
    rst $38                                       ; $7224: $ff
    di                                            ; $7225: $f3
    jp c, $eee1                                   ; $7226: $da $e1 $ee

    ld [hl], c                                    ; $7229: $71
    db $f4                                        ; $722a: $f4
    dec sp                                        ; $722b: $3b
    ld sp, hl                                     ; $722c: $f9
    rst $38                                       ; $722d: $ff
    rst $38                                       ; $722e: $ff
    rst $38                                       ; $722f: $ff
    db $fc                                        ; $7230: $fc
    cp $f9                                        ; $7231: $fe $f9
    db $fc                                        ; $7233: $fc
    ei                                            ; $7234: $fb
    cp $df                                        ; $7235: $fe $df
    pop hl                                        ; $7237: $e1
    db $f4                                        ; $7238: $f4
    set 4, b                                      ; $7239: $cb $e0
    rst $18                                       ; $723b: $df
    cp $e1                                        ; $723c: $fe $e1
    cp a                                          ; $723e: $bf
    ld a, a                                       ; $723f: $7f
    rst $38                                       ; $7240: $ff
    ld e, a                                       ; $7241: $5f
    cp a                                          ; $7242: $bf
    rra                                           ; $7243: $1f
    rst $38                                       ; $7244: $ff
    scf                                           ; $7245: $37
    rst $08                                       ; $7246: $cf
    dec bc                                        ; $7247: $0b
    rst $30                                       ; $7248: $f7
    rst $38                                       ; $7249: $ff
    ld h, e                                       ; $724a: $63
    rst $38                                       ; $724b: $ff
    db $d3                                        ; $724c: $d3
    sbc a                                         ; $724d: $9f
    sub e                                         ; $724e: $93
    sbc a                                         ; $724f: $9f
    ld hl, sp-$79                                 ; $7250: $f8 $87
    rst $38                                       ; $7252: $ff
    ret nc                                        ; $7253: $d0

    cpl                                           ; $7254: $2f
    add b                                         ; $7255: $80
    ld a, a                                       ; $7256: $7f
    adc h                                         ; $7257: $8c
    ld a, a                                       ; $7258: $7f
    sbc d                                         ; $7259: $9a
    ld [hl], e                                    ; $725a: $73
    rst $38                                       ; $725b: $ff
    ld d, d                                       ; $725c: $52
    or e                                          ; $725d: $b3
    adc h                                         ; $725e: $8c
    rst $38                                       ; $725f: $ff
    ldh a, [$ef]                                  ; $7260: $f0 $ef
    ld l, l                                       ; $7262: $6d
    di                                            ; $7263: $f3
    rst $38                                       ; $7264: $ff
    ld [bc], a                                    ; $7265: $02
    db $fd                                        ; $7266: $fd
    ret nz                                        ; $7267: $c0

    ccf                                           ; $7268: $3f
    add b                                         ; $7269: $80
    ld a, a                                       ; $726a: $7f
    ld [bc], a                                    ; $726b: $02
    rst $38                                       ; $726c: $ff
    rst $38                                       ; $726d: $ff
    ld d, $ff                                     ; $726e: $16 $ff
    ld bc, $17ff                                  ; $7270: $01 $ff $17
    rst $38                                       ; $7273: $ff
    add sp, -$09                                  ; $7274: $e8 $f7
    rst $38                                       ; $7276: $ff
    pop af                                        ; $7277: $f1
    rst $38                                       ; $7278: $ff
    cp $fe                                        ; $7279: $fe $fe
    rst $38                                       ; $727b: $ff
    cp $f7                                        ; $727c: $fe $f7
    cp $ff                                        ; $727e: $fe $ff
    xor l                                         ; $7280: $ad
    db $fc                                        ; $7281: $fc
    ld b, [hl]                                    ; $7282: $46
    cp $eb                                        ; $7283: $fe $eb
    rst $38                                       ; $7285: $ff
    scf                                           ; $7286: $37
    rst $38                                       ; $7287: $ff
    db $fd                                        ; $7288: $fd
    adc a                                         ; $7289: $8f
    ld [bc], a                                    ; $728a: $02
    and b                                         ; $728b: $a0
    ld a, a                                       ; $728c: $7f
    ld a, a                                       ; $728d: $7f
    ld l, a                                       ; $728e: $6f
    ld a, a                                       ; $728f: $7f
    ld a, $3f                                     ; $7290: $3e $3f
    ei                                            ; $7292: $fb
    ld a, e                                       ; $7293: $7b
    ld a, a                                       ; $7294: $7f
    and c                                         ; $7295: $a1
    ldh [rIE], a                                  ; $7296: $e0 $ff
    ld a, [$fcfd]                                 ; $7298: $fa $fd $fc
    ei                                            ; $729b: $fb
    rst $38                                       ; $729c: $ff
    pop hl                                        ; $729d: $e1
    rst $38                                       ; $729e: $ff
    ret nc                                        ; $729f: $d0

    rst $28                                       ; $72a0: $ef
    push hl                                       ; $72a1: $e5
    rst $18                                       ; $72a2: $df
    jp z, $ffff                                   ; $72a3: $ca $ff $ff

    rst $20                                       ; $72a6: $e7
    rst $18                                       ; $72a7: $df
    ccf                                           ; $72a8: $3f
    rst $38                                       ; $72a9: $ff
    rra                                           ; $72aa: $1f
    rst $38                                       ; $72ab: $ff
    cp a                                          ; $72ac: $bf
    rst $38                                       ; $72ad: $ff
    ld a, a                                       ; $72ae: $7f
    ld d, a                                       ; $72af: $57
    rst $38                                       ; $72b0: $ff
    db $eb                                        ; $72b1: $eb
    rst $38                                       ; $72b2: $ff
    ld a, a                                       ; $72b3: $7f
    rst $38                                       ; $72b4: $ff
    db $db                                        ; $72b5: $db
    ret c                                         ; $72b6: $d8

    add b                                         ; $72b7: $80
    rst $38                                       ; $72b8: $ff
    adc e                                         ; $72b9: $8b
    rst $38                                       ; $72ba: $ff
    ld b, l                                       ; $72bb: $45
    cp a                                          ; $72bc: $bf
    sub a                                         ; $72bd: $97
    ld a, a                                       ; $72be: $7f
    dec hl                                        ; $72bf: $2b
    rst $38                                       ; $72c0: $ff
    rst $18                                       ; $72c1: $df
    sbc a                                         ; $72c2: $9f
    ld a, a                                       ; $72c3: $7f
    dec l                                         ; $72c4: $2d
    rst $38                                       ; $72c5: $ff
    sbc a                                         ; $72c6: $9f
    ld [$75e0], a                                 ; $72c7: $ea $e0 $75
    rst $38                                       ; $72ca: $ff
    or l                                          ; $72cb: $b5
    ld a, [$80c2]                                 ; $72cc: $fa $c2 $80
    ld a, [hl]                                    ; $72cf: $7e
    cp [hl]                                       ; $72d0: $be
    add b                                         ; $72d1: $80
    cp $ff                                        ; $72d2: $fe $ff
    ld h, d                                       ; $72d4: $62
    ldh [rIE], a                                  ; $72d5: $e0 $ff
    rst $20                                       ; $72d7: $e7
    push hl                                       ; $72d8: $e5
    rst $38                                       ; $72d9: $ff
    di                                            ; $72da: $f3
    and b                                         ; $72db: $a0
    pop hl                                        ; $72dc: $e1
    sbc h                                         ; $72dd: $9c
    ldh [$ee], a                                  ; $72de: $e0 $ee
    cp $5e                                        ; $72e0: $fe $5e
    ccf                                           ; $72e2: $3f
    cp $fb                                        ; $72e3: $fe $fb
    rst $38                                       ; $72e5: $ff
    rst $30                                       ; $72e6: $f7
    rst $38                                       ; $72e7: $ff
    rst $08                                       ; $72e8: $cf
    and b                                         ; $72e9: $a0
    ld [c], a                                     ; $72ea: $e2
    db $fc                                        ; $72eb: $fc
    db $e3                                        ; $72ec: $e3
    nop                                           ; $72ed: $00
    ld sp, $ffa0                                  ; $72ee: $31 $a0 $ff
    db $ec                                        ; $72f1: $ec
    nop                                           ; $72f2: $00
    nop                                           ; $72f3: $00
    nop                                           ; $72f4: $00
    pop bc                                        ; $72f5: $c1
    ld d, c                                       ; $72f6: $51
    rst $38                                       ; $72f7: $ff
    rst $38                                       ; $72f8: $ff
    rst $38                                       ; $72f9: $ff
    rst $38                                       ; $72fa: $ff
    rst $38                                       ; $72fb: $ff
    rst $38                                       ; $72fc: $ff
    rst $38                                       ; $72fd: $ff
    rst $38                                       ; $72fe: $ff
    db $eb                                        ; $72ff: $eb
    ld [$5b5a], a                                 ; $7300: $ea $5a $5b
    jr c, @-$02                                   ; $7303: $38 $fc

    rst $28                                       ; $7305: $ef
    rst $38                                       ; $7306: $ff
    rst $38                                       ; $7307: $ff
    jp Jump_02c_5ce7                              ; $7308: $c3 $e7 $5c


    ld e, l                                       ; $730b: $5d
    ld d, c                                       ; $730c: $51
    db $fc                                        ; $730d: $fc
    xor $ff                                       ; $730e: $ee $ff
    rst $38                                       ; $7310: $ff
    ld e, $c3                                     ; $7311: $1e $c3
    rst $20                                       ; $7313: $e7
    ld e, [hl]                                    ; $7314: $5e
    ld e, a                                       ; $7315: $5f
    ld e, d                                       ; $7316: $5a
    ld e, e                                       ; $7317: $5b
    db $fc                                        ; $7318: $fc
    db $ed                                        ; $7319: $ed
    call nz, $e2ff                                ; $731a: $c4 $ff $e2
    pop hl                                        ; $731d: $e1
    nop                                           ; $731e: $00
    jp Jump_02c_7ee4                              ; $731f: $c3 $e4 $7e


    rst $38                                       ; $7322: $ff
    ld [$c3f4], sp                                ; $7323: $08 $f4 $c3
    push hl                                       ; $7326: $e5
    ld a, [hl]                                    ; $7327: $7e
    di                                            ; $7328: $f3
    ld a, d                                       ; $7329: $7a
    db $fd                                        ; $732a: $fd
    adc d                                         ; $732b: $8a
    db $e4                                        ; $732c: $e4
    ld a, [hl]                                    ; $732d: $7e
    or $18                                        ; $732e: $f6 $18
    ld a, d                                       ; $7330: $7a
    db $fd                                        ; $7331: $fd
    inc d                                         ; $7332: $14
    and $fc                                       ; $7333: $e6 $fc
    add $54                                       ; $7335: $c6 $54
    ld d, l                                       ; $7337: $55
    db $f4                                        ; $7338: $f4
    set 0, e                                      ; $7339: $cb $c3
    rst $18                                       ; $733b: $df
    db $fc                                        ; $733c: $fc
    call nz, Call_02c_541b                        ; $733d: $c4 $1b $54
    ld d, l                                       ; $7340: $55
    add d                                         ; $7341: $82
    ld [c], a                                     ; $7342: $e2
    ld d, [hl]                                    ; $7343: $56
    ld d, a                                       ; $7344: $57
    ld a, [hl]                                    ; $7345: $7e
    ld [$f83b], a                                 ; $7346: $ea $3b $f8
    adc d                                         ; $7349: $8a
    db $eb                                        ; $734a: $eb
    inc c                                         ; $734b: $0c
    rst $00                                       ; $734c: $c7
    pop hl                                        ; $734d: $e1
    add d                                         ; $734e: $82
    pop hl                                        ; $734f: $e1
    ld e, b                                       ; $7350: $58
    ld e, c                                       ; $7351: $59
    ld a, [hl]                                    ; $7352: $7e
    jp hl                                         ; $7353: $e9


    dec sp                                        ; $7354: $3b
    ld sp, hl                                     ; $7355: $f9
    add [hl]                                      ; $7356: $86
    ret                                           ; $7357: $c9


    adc d                                         ; $7358: $8a
    ldh [rP1], a                                  ; $7359: $e0 $00
    rst $00                                       ; $735b: $c7
    pop hl                                        ; $735c: $e1
    add d                                         ; $735d: $82
    ld [c], a                                     ; $735e: $e2
    ld a, [hl]                                    ; $735f: $7e
    add sp, $3b                                   ; $7360: $e8 $3b
    db $f4                                        ; $7362: $f4
    sub d                                         ; $7363: $92
    and e                                         ; $7364: $a3
    add [hl]                                      ; $7365: $86
    rst $00                                       ; $7366: $c7
    adc d                                         ; $7367: $8a
    db $e3                                        ; $7368: $e3
    cp e                                          ; $7369: $bb
    db $e3                                        ; $736a: $e3
    add c                                         ; $736b: $81
    ld d, c                                       ; $736c: $51
    or a                                          ; $736d: $b7
    ld [c], a                                     ; $736e: $e2
    ld hl, sp-$3d                                 ; $736f: $f8 $c3
    dec sp                                        ; $7371: $3b
    jp hl                                         ; $7372: $e9


    adc d                                         ; $7373: $8a
    ret nc                                        ; $7374: $d0

    ld [$8ae6], sp                                ; $7375: $08 $e6 $8a
    db $e4                                        ; $7378: $e4
    ld e, b                                       ; $7379: $58
    rla                                           ; $737a: $17
    ld e, c                                       ; $737b: $59
    ld d, b                                       ; $737c: $50
    ld c, [hl]                                    ; $737d: $4e
    rst $38                                       ; $737e: $ff
    ldh [$50], a                                  ; $737f: $e0 $50
    ld a, d                                       ; $7381: $7a
    push hl                                       ; $7382: $e5
    dec sp                                        ; $7383: $3b
    ld [$d18a], a                                 ; $7384: $ea $8a $d1
    db $fc                                        ; $7387: $fc
    sbc d                                         ; $7388: $9a
    and d                                         ; $7389: $a2
    adc d                                         ; $738a: $8a
    and $51                                       ; $738b: $e6 $51
    ld d, c                                       ; $738d: $51
    ld d, b                                       ; $738e: $50
    ld c, l                                       ; $738f: $4d
    jr z, jr_02c_73bb                             ; $7390: $28 $29

    rrca                                          ; $7392: $0f
    jr z, jr_02c_73be                             ; $7393: $28 $29

    ld c, l                                       ; $7395: $4d
    ld d, b                                       ; $7396: $50
    db $fc                                        ; $7397: $fc
    pop bc                                        ; $7398: $c1
    halt                                          ; $7399: $76
    ldh [$3b], a                                  ; $739a: $e0 $3b
    ld [$f67e], a                                 ; $739c: $ea $7e $f6
    ld a, [de]                                    ; $739f: $1a
    ld [$51e2], sp                                ; $73a0: $08 $e2 $51
    add [hl]                                      ; $73a3: $86
    ldh [rHDMA3], a                               ; $73a4: $e0 $53
    ld c, [hl]                                    ; $73a6: $4e
    pop bc                                        ; $73a7: $c1
    ld [c], a                                     ; $73a8: $e2
    cp a                                          ; $73a9: $bf
    pop hl                                        ; $73aa: $e1
    ld a, d                                       ; $73ab: $7a
    pop bc                                        ; $73ac: $c1
    nop                                           ; $73ad: $00
    dec sp                                        ; $73ae: $3b

jr_02c_73af:
    db $ed                                        ; $73af: $ed
    adc d                                         ; $73b0: $8a
    xor [hl]                                      ; $73b1: $ae
    add [hl]                                      ; $73b2: $86
    ret                                           ; $73b3: $c9


    add [hl]                                      ; $73b4: $86
    db $e3                                        ; $73b5: $e3
    db $fc                                        ; $73b6: $fc
    push hl                                       ; $73b7: $e5
    ld a, [hl]                                    ; $73b8: $7e
    pop hl                                        ; $73b9: $e1
    dec sp                                        ; $73ba: $3b

jr_02c_73bb:
    xor $00                                       ; $73bb: $ee $00
    di                                            ; $73bd: $f3

jr_02c_73be:
    jr jr_02c_73c8                                ; $73be: $18 $08

    db $e4                                        ; $73c0: $e4
    pop bc                                        ; $73c1: $c1
    ld [$e03d], a                                 ; $73c2: $ea $3d $e0
    ld c, [hl]                                    ; $73c5: $4e
    ld d, e                                       ; $73c6: $53
    dec sp                                        ; $73c7: $3b

jr_02c_73c8:
    db $ec                                        ; $73c8: $ec
    nop                                           ; $73c9: $00
    db $f4                                        ; $73ca: $f4
    jr jr_02c_73af                                ; $73cb: $18 $e2

    nop                                           ; $73cd: $00
    add d                                         ; $73ce: $82
    db $ec                                        ; $73cf: $ec
    dec sp                                        ; $73d0: $3b
    db $ed                                        ; $73d1: $ed
    ld a, d                                       ; $73d2: $7a
    or c                                          ; $73d3: $b1
    add d                                         ; $73d4: $82
    add sp, -$3f                                  ; $73d5: $e8 $c1
    di                                            ; $73d7: $f3
    dec sp                                        ; $73d8: $3b
    add sp, $3f                                   ; $73d9: $e8 $3f
    rlc h                                         ; $73db: $cb $04
    rst $00                                       ; $73dd: $c7
    inc b                                         ; $73de: $04
    inc c                                         ; $73df: $0c
    add c                                         ; $73e0: $81
    res 4, d                                      ; $73e1: $cb $a2
    ld d, d                                       ; $73e3: $52
    pop bc                                        ; $73e4: $c1
    pop af                                        ; $73e5: $f1
    cp c                                          ; $73e6: $b9
    jp nz, $a4f4                                  ; $73e7: $c2 $f4 $a4

    db $fc                                        ; $73ea: $fc
    xor c                                         ; $73eb: $a9
    sbc [hl]                                      ; $73ec: $9e
    adc l                                         ; $73ed: $8d
    cp d                                          ; $73ee: $ba
    db $10                                        ; $73ef: $10
    and b                                         ; $73f0: $a0
    ld c, a                                       ; $73f1: $4f
    push bc                                       ; $73f2: $c5
    jp Jump_000_2b2a                              ; $73f3: $c3 $2a $2b


    jr nc, @+$01                                  ; $73f6: $30 $ff

    pop hl                                        ; $73f8: $e1
    dec hl                                        ; $73f9: $2b
    add c                                         ; $73fa: $81

jr_02c_73fb:
    ld a, [hl+]                                   ; $73fb: $2a
    cp a                                          ; $73fc: $bf
    jp hl                                         ; $73fd: $e9


    ld hl, sp-$5b                                 ; $73fe: $f8 $a5
    ldh a, [$66]                                  ; $7400: $f0 $66
    sbc d                                         ; $7402: $9a
    add a                                         ; $7403: $87
    sbc d                                         ; $7404: $9a
    and e                                         ; $7405: $a3
    jp $2ec5                                      ; $7406: $c3 $c5 $2e


    dec l                                         ; $7409: $2d
    ld bc, $e6ff                                  ; $740a: $01 $ff $e6
    dec hl                                        ; $740d: $2b
    ld a, [hl+]                                   ; $740e: $2a
    ld [hl], h                                    ; $740f: $74
    call nz, Call_000_3b4f                        ; $7410: $c4 $4f $3b
    ret nz                                        ; $7413: $c0

    ld hl, sp-$5d                                 ; $7414: $f8 $a3
    ldh a, [rPCM12]                               ; $7416: $f0 $76
    adc c                                         ; $7418: $89
    sbc d                                         ; $7419: $9a
    add l                                         ; $741a: $85
    inc d                                         ; $741b: $14
    and h                                         ; $741c: $a4
    pop bc                                        ; $741d: $c1
    rst $20                                       ; $741e: $e7
    ld b, h                                       ; $741f: $44

jr_02c_7420:
    ld d, $23                                     ; $7420: $16 $23
    ld [hl+], a                                   ; $7422: $22
    daa                                           ; $7423: $27
    inc hl                                        ; $7424: $23
    ld d, $17                                     ; $7425: $16 $17
    or a                                          ; $7427: $b7
    ldh [$7a], a                                  ; $7428: $e0 $7a
    db $e4                                        ; $742a: $e4
    ld d, d                                       ; $742b: $52
    ld hl, sp-$5b                                 ; $742c: $f8 $a5
    ld [hl], d                                    ; $742e: $72
    ld l, d                                       ; $742f: $6a
    add sp, $2c                                   ; $7430: $e8 $2c
    add c                                         ; $7432: $81
    jr @-$59                                      ; $7433: $18 $a5

    db $10                                        ; $7435: $10
    and b                                         ; $7436: $a0
    ld c, a                                       ; $7437: $4f
    add d                                         ; $7438: $82
    db $e4                                        ; $7439: $e4
    ld b, h                                       ; $743a: $44
    ld b, e                                       ; $743b: $43
    ld b, c                                       ; $743c: $41
    db $ed                                        ; $743d: $ed
    nop                                           ; $743e: $00
    rst $38                                       ; $743f: $ff
    ldh [$3b], a                                  ; $7440: $e0 $3b
    ld b, $bb                                     ; $7442: $06 $bb
    ldh [$15], a                                  ; $7444: $e0 $15
    inc b                                         ; $7446: $04
    ld bc, $0123                                  ; $7447: $01 $23 $01
    ld l, $80                                     ; $744a: $2e $80
    pop hl                                        ; $744c: $e1
    ld hl, sp-$5d                                 ; $744d: $f8 $a3
    ldh a, [rKEY1]                                ; $744f: $f0 $4d
    ld d, b                                       ; $7451: $50
    sub h                                         ; $7452: $94
    and b                                         ; $7453: $a0
    jr jr_02c_73fb                                ; $7454: $18 $a5

    ld l, h                                       ; $7456: $6c
    ld [bc], a                                    ; $7457: $02
    ld [c], a                                     ; $7458: $e2
    ld b, e                                       ; $7459: $43
    ldh [rSCY], a                                 ; $745a: $e0 $42
    inc a                                         ; $745c: $3c
    pop bc                                        ; $745d: $c1
    ld [c], a                                     ; $745e: $e2
    nop                                           ; $745f: $00
    dec sp                                        ; $7460: $3b
    rst $38                                       ; $7461: $ff
    ldh [$6f], a                                  ; $7462: $e0 $6f
    jr c, jr_02c_7466                             ; $7464: $38 $00

jr_02c_7466:
    inc d                                         ; $7466: $14
    inc c                                         ; $7467: $0c
    cp a                                          ; $7468: $bf
    pop hl                                        ; $7469: $e1
    ld c, a                                       ; $746a: $4f
    ld d, c                                       ; $746b: $51
    ccf                                           ; $746c: $3f
    and $a4                                       ; $746d: $e6 $a4
    ldh a, [rDMA]                                 ; $746f: $f0 $46
    sbc $81                                       ; $7471: $de $81
    ld c, l                                       ; $7473: $4d
    sbc d                                         ; $7474: $9a
    and a                                         ; $7475: $a7
    inc c                                         ; $7476: $0c
    and d                                         ; $7477: $a2
    dec l                                         ; $7478: $2d
    pop bc                                        ; $7479: $c1
    pop hl                                        ; $747a: $e1
    ld c, d                                       ; $747b: $4a
    db $eb                                        ; $747c: $eb
    nop                                           ; $747d: $00
    jr c, @-$3d                                   ; $747e: $38 $c1

    ld [c], a                                     ; $7480: $e2
    jr c, @+$01                                   ; $7481: $38 $ff

    ldh [rP1], a                                  ; $7483: $e0 $00
    jr c, jr_02c_748c                             ; $7485: $38 $05

    add a                                         ; $7487: $87
    dec e                                         ; $7488: $1d
    ld bc, $fc2f                                  ; $7489: $01 $2f $fc

jr_02c_748c:
    xor h                                         ; $748c: $ac
    ld l, [hl]                                    ; $748d: $6e
    ld b, e                                       ; $748e: $43
    sbc d                                         ; $748f: $9a
    xor d                                         ; $7490: $aa
    inc c                                         ; $7491: $0c
    and h                                         ; $7492: $a4
    inc l                                         ; $7493: $2c
    scf                                           ; $7494: $37
    ld bc, $3c3f                                  ; $7495: $01 $3f $3c
    ret nz                                        ; $7498: $c0

    ldh [rP1], a                                  ; $7499: $e0 $00
    jr c, jr_02c_7420                             ; $749b: $38 $83

    db $e3                                        ; $749d: $e3
    add hl, sp                                    ; $749e: $39
    ldh [$1f], a                                  ; $749f: $e0 $1f
    jr c, jr_02c_74a3                             ; $74a1: $38 $00

jr_02c_74a3:
    add hl, bc                                    ; $74a3: $09
    ld bc, $fc2f                                  ; $74a4: $01 $2f $fc
    xor e                                         ; $74a7: $ab
    ld l, [hl]                                    ; $74a8: $6e
    ld b, h                                       ; $74a9: $44
    push de                                       ; $74aa: $d5
    or c                                          ; $74ab: $b1
    ccf                                           ; $74ac: $3f
    cpl                                           ; $74ad: $2f
    ld bc, $3c3d                                  ; $74ae: $01 $3d $3c
    inc a                                         ; $74b1: $3c
    ld a, $c9                                     ; $74b2: $3e $c9
    pop hl                                        ; $74b4: $e1
    ld b, e                                       ; $74b5: $43
    ld [c], a                                     ; $74b6: $e2
    ld b, $7e                                     ; $74b7: $06 $7e
    ld [c], a                                     ; $74b9: $e2
    jr jr_02c_74d5                                ; $74ba: $18 $19

    cp $c1                                        ; $74bc: $fe $c1
    db $fc                                        ; $74be: $fc
    and e                                         ; $74bf: $a3
    db $f4                                        ; $74c0: $f4
    ld c, c                                       ; $74c1: $49
    ld b, c                                       ; $74c2: $41
    and $cf                                       ; $74c3: $e6 $cf
    adc b                                         ; $74c5: $88
    cp a                                          ; $74c6: $bf
    cpl                                           ; $74c7: $2f
    ld bc, $3c4a                                  ; $74c8: $01 $4a $3c
    inc a                                         ; $74cb: $3c
    ld b, b                                       ; $74cc: $40
    adc b                                         ; $74cd: $88
    ld [c], a                                     ; $74ce: $e2
    ld [hl], $09                                  ; $74cf: $36 $09
    ld [hl], $43                                  ; $74d1: $36 $43
    ldh [$f7], a                                  ; $74d3: $e0 $f7

jr_02c_74d5:
    jp nz, Jump_000_3f1f                          ; $74d5: $c2 $1f $3f

    ldh [$fc], a                                  ; $74d8: $e0 $fc
    and h                                         ; $74da: $a4
    halt                                          ; $74db: $76
    ld c, h                                       ; $74dc: $4c
    jp c, Jump_02c_4262                           ; $74dd: $da $62 $42

    cp e                                          ; $74e0: $bb
    jp hl                                         ; $74e1: $e9


    inc l                                         ; $74e2: $2c
    add b                                         ; $74e3: $80
    ldh [rSTAT], a                                ; $74e4: $e0 $41
    ldh [$fe], a                                  ; $74e6: $e0 $fe
    push hl                                       ; $74e8: $e5
    ret nz                                        ; $74e9: $c0

    push hl                                       ; $74ea: $e5
    ld bc, $a5fc                                  ; $74eb: $01 $fc $a5
    call nc, Call_000_296e                        ; $74ee: $d4 $6e $29
    ld l, b                                       ; $74f1: $68
    dec h                                         ; $74f2: $25
    ld d, b                                       ; $74f3: $50
    ld a, d                                       ; $74f4: $7a
    add sp, $2d                                   ; $74f5: $e8 $2d
    nop                                           ; $74f7: $00
    ldh [$3e], a                                  ; $74f8: $e0 $3e
    ld a, [hl-]                                   ; $74fa: $3a
    add e                                         ; $74fb: $83
    ld a, [hl-]                                   ; $74fc: $3a
    ld a, [hl-]                                   ; $74fd: $3a
    ld b, $e2                                     ; $74fe: $06 $e2
    pop bc                                        ; $7500: $c1
    pop bc                                        ; $7501: $c1
    scf                                           ; $7502: $37
    ret nz                                        ; $7503: $c0

    cp a                                          ; $7504: $bf
    jp nz, Jump_02c_60b1                          ; $7505: $c2 $b1 $60

    ld c, a                                       ; $7508: $4f
    ldh [rP1], a                                  ; $7509: $e0 $00
    db $ec                                        ; $750b: $ec
    sbc $21                                       ; $750c: $de $21
    rst $08                                       ; $750e: $cf
    ld h, c                                       ; $750f: $61
    ld a, d                                       ; $7510: $7a
    db $e3                                        ; $7511: $e3
    ld [hl], h                                    ; $7512: $74
    call nz, Call_02c_4c2f                        ; $7513: $c4 $2f $4c
    inc a                                         ; $7516: $3c
    rra                                           ; $7517: $1f
    ld b, b                                       ; $7518: $40
    inc sp                                        ; $7519: $33
    inc sp                                        ; $751a: $33
    dec [hl]                                      ; $751b: $35
    dec sp                                        ; $751c: $3b
    cp l                                          ; $751d: $bd
    ret nz                                        ; $751e: $c0

    cp c                                          ; $751f: $b9
    ldh [$b7], a                                  ; $7520: $e0 $b7
    ld [c], a                                     ; $7522: $e2
    ld bc, $fe21                                  ; $7523: $01 $21 $fe
    and d                                         ; $7526: $a2
    db $fc                                        ; $7527: $fc
    and e                                         ; $7528: $a3
    ld a, d                                       ; $7529: $7a
    adc c                                         ; $752a: $89
    xor $21                                       ; $752b: $ee $21
    and d                                         ; $752d: $a2
    ld h, d                                       ; $752e: $62
    db $f4                                        ; $752f: $f4
    and l                                         ; $7530: $a5
    inc sp                                        ; $7531: $33
    pop bc                                        ; $7532: $c1
    and a                                         ; $7533: $a7
    cpl                                           ; $7534: $2f
    ld c, h                                       ; $7535: $4c
    ld a, $08                                     ; $7536: $3e $08
    pop bc                                        ; $7538: $c1
    cp a                                          ; $7539: $bf
    ldh [$37], a                                  ; $753a: $e0 $37
    ret nz                                        ; $753c: $c0

    ld [c], a                                     ; $753d: $e2
    ld a, [hl-]                                   ; $753e: $3a
    inc sp                                        ; $753f: $33
    nop                                           ; $7540: $00
    ld b, $ff                                     ; $7541: $06 $ff
    and b                                         ; $7543: $a0
    inc sp                                        ; $7544: $33
    ld h, c                                       ; $7545: $61
    add hl, hl                                    ; $7546: $29
    ld d, d                                       ; $7547: $52
    db $fc                                        ; $7548: $fc
    add e                                         ; $7549: $83
    ldh a, [$08]                                  ; $754a: $f0 $08
    ld [hl], b                                    ; $754c: $70
    adc d                                         ; $754d: $8a
    add c                                         ; $754e: $81
    cp l                                          ; $754f: $bd
    push hl                                       ; $7550: $e5
    sla b                                         ; $7551: $cb $20
    add b                                         ; $7553: $80
    and c                                         ; $7554: $a1
    inc l                                         ; $7555: $2c
    ld bc, $c820                                  ; $7556: $01 $20 $c8
    and c                                         ; $7559: $a1
    or a                                          ; $755a: $b7
    dec sp                                        ; $755b: $3b
    dec [hl]                                      ; $755c: $35
    add hl, sp                                    ; $755d: $39
    ret nz                                        ; $755e: $c0

    db $e3                                        ; $755f: $e3
    ld [de], a                                    ; $7560: $12
    dec d                                         ; $7561: $15
    ld a, [hl-]                                   ; $7562: $3a
    and b                                         ; $7563: $a0
    ld l, $40                                     ; $7564: $2e $40
    pop bc                                        ; $7566: $c1
    pop hl                                        ; $7567: $e1
    cp h                                          ; $7568: $bc
    and b                                         ; $7569: $a0
    db $ec                                        ; $756a: $ec
    ld hl, $096e                                  ; $756b: $21 $6e $09
    xor d                                         ; $756e: $aa

jr_02c_756f:
    ld [hl+], a                                   ; $756f: $22
    ld e, a                                       ; $7570: $5f
    ld h, a                                       ; $7571: $67
    ld d, d                                       ; $7572: $52
    call Call_02c_6f40                            ; $7573: $cd $40 $6f
    dec l                                         ; $7576: $2d
    ld bc, $020e                                  ; $7577: $01 $0e $02
    add a                                         ; $757a: $87
    and c                                         ; $757b: $a1
    inc [hl]                                      ; $757c: $34
    add hl, sp                                    ; $757d: $39
    ccf                                           ; $757e: $3f
    pop hl                                        ; $757f: $e1
    inc bc                                        ; $7580: $03
    ld b, $22                                     ; $7581: $06 $22
    add d                                         ; $7583: $82
    and b                                         ; $7584: $a0
    pop bc                                        ; $7585: $c1
    db $e4                                        ; $7586: $e4
    cp h                                          ; $7587: $bc
    add b                                         ; $7588: $80
    nop                                           ; $7589: $00
    res 5, d                                      ; $758a: $cb $aa
    dec h                                         ; $758c: $25
    inc b                                         ; $758d: $04
    add e                                         ; $758e: $83
    ld [$a300], a                                 ; $758f: $ea $00 $a3
    add hl, hl                                    ; $7592: $29
    cp $a0                                        ; $7593: $fe $a0
    dec e                                         ; $7595: $1d
    cp a                                          ; $7596: $bf
    pop hl                                        ; $7597: $e1
    inc [hl]                                      ; $7598: $34
    add hl, sp                                    ; $7599: $39
    ld b, $00                                     ; $759a: $06 $00
    inc bc                                        ; $759c: $03
    and b                                         ; $759d: $a0
    cp [hl]                                       ; $759e: $be
    add c                                         ; $759f: $81
    ld a, [hl-]                                   ; $75a0: $3a
    add l                                         ; $75a1: $85
    or h                                          ; $75a2: $b4
    ld b, b                                       ; $75a3: $40
    nop                                           ; $75a4: $00
    db $eb                                        ; $75a5: $eb
    ld [hl], e                                    ; $75a6: $73
    add l                                         ; $75a7: $85
    add d                                         ; $75a8: $82
    ld h, [hl]                                    ; $75a9: $66
    ret nz                                        ; $75aa: $c0

    add l                                         ; $75ab: $85
    inc bc                                        ; $75ac: $03
    dec e                                         ; $75ad: $1d
    dec d                                         ; $75ae: $15
    rst $00                                       ; $75af: $c7
    add c                                         ; $75b0: $81
    add d                                         ; $75b1: $82
    add c                                         ; $75b2: $81
    add e                                         ; $75b3: $83
    db $e4                                        ; $75b4: $e4
    ld [hl], l                                    ; $75b5: $75
    ld b, h                                       ; $75b6: $44
    ld l, d                                       ; $75b7: $6a
    inc h                                         ; $75b8: $24
    nop                                           ; $75b9: $00
    add a                                         ; $75ba: $87
    jr jr_02c_7624                                ; $75bb: $18 $67

    daa                                           ; $75bd: $27
    ld c, l                                       ; $75be: $4d
    ld [hl+], a                                   ; $75bf: $22
    dec bc                                        ; $75c0: $0b
    ld b, c                                       ; $75c1: $41
    add hl, hl                                    ; $75c2: $29
    add hl, hl                                    ; $75c3: $29
    ld [bc], a                                    ; $75c4: $02
    add a                                         ; $75c5: $87
    cp l                                          ; $75c6: $bd
    ld h, d                                       ; $75c7: $62
    jr nz, jr_02c_756f                            ; $75c8: $20 $a5

    nop                                           ; $75ca: $00
    ld a, l                                       ; $75cb: $7d
    ld h, b                                       ; $75cc: $60
    dec h                                         ; $75cd: $25
    ld [hl+], a                                   ; $75ce: $22
    ld a, [hl]                                    ; $75cf: $7e
    adc d                                         ; $75d0: $8a
    jp hl                                         ; $75d1: $e9


    ld [$0192], sp                                ; $75d2: $08 $92 $01
    jp z, $8223                                   ; $75d5: $ca $23 $82

    ld h, [hl]                                    ; $75d8: $66
    ld b, b                                       ; $75d9: $40
    ld l, d                                       ; $75da: $6a
    nop                                           ; $75db: $00
    jp Jump_02c_7ec4                              ; $75dc: $c3 $c4 $7e


    xor h                                         ; $75df: $ac
    nop                                           ; $75e0: $00
    ld l, h                                       ; $75e1: $6c
    ld c, d                                       ; $75e2: $4a
    jr nz, jr_02c_7664                            ; $75e3: $20 $7f

    ld d, e                                       ; $75e5: $53
    ld b, l                                       ; $75e6: $45
    rst $20                                       ; $75e7: $e7
    cp c                                          ; $75e8: $b9
    dec bc                                        ; $75e9: $0b
    nop                                           ; $75ea: $00
    ld c, h                                       ; $75eb: $4c
    nop                                           ; $75ec: $00
    ld a, l                                       ; $75ed: $7d
    ld d, d                                       ; $75ee: $52
    jp nz, $4541                                  ; $75ef: $c2 $41 $45

    jp hl                                         ; $75f2: $e9


    ld a, [hl]                                    ; $75f3: $7e
    ld l, e                                       ; $75f4: $6b
    nop                                           ; $75f5: $00
    ld c, c                                       ; $75f6: $49
    ld [hl], d                                    ; $75f7: $72
    xor d                                         ; $75f8: $aa
    ld a, c                                       ; $75f9: $79
    ld h, $08                                     ; $75fa: $26 $08
    push bc                                       ; $75fc: $c5
    nop                                           ; $75fd: $00
    sub a                                         ; $75fe: $97
    rlca                                          ; $75ff: $07
    nop                                           ; $7600: $00
    ld d, l                                       ; $7601: $55
    ld [hl], d                                    ; $7602: $72
    xor e                                         ; $7603: $ab
    jr c, jr_02c_762b                             ; $7604: $38 $25

    inc b                                         ; $7606: $04
    ld h, d                                       ; $7607: $62
    ld b, l                                       ; $7608: $45
    rst $20                                       ; $7609: $e7
    dec a                                         ; $760a: $3d
    ld a, [bc]                                    ; $760b: $0a
    nop                                           ; $760c: $00
    ld c, e                                       ; $760d: $4b
    nop                                           ; $760e: $00
    ld [hl], d                                    ; $760f: $72
    xor d                                         ; $7610: $aa
    rst $30                                       ; $7611: $f7
    dec b                                         ; $7612: $05
    ld [$bfc8], sp                                ; $7613: $08 $c8 $bf
    rrca                                          ; $7616: $0f
    nop                                           ; $7617: $00
    inc l                                         ; $7618: $2c
    ld [hl], d                                    ; $7619: $72
    xor c                                         ; $761a: $a9
    inc a                                         ; $761b: $3c
    ld b, $d2                                     ; $761c: $06 $d2
    ld b, c                                       ; $761e: $41
    nop                                           ; $761f: $00
    jp Jump_02c_7ed2                              ; $7620: $c3 $d2 $7e


    ld b, h                                       ; $7623: $44

jr_02c_7624:
    ld a, [hl]                                    ; $7624: $7e
    daa                                           ; $7625: $27
    xor l                                         ; $7626: $ad
    ld hl, $c3f8                                  ; $7627: $21 $f8 $c3
    ld [hl], d                                    ; $762a: $72

jr_02c_762b:
    push bc                                       ; $762b: $c5
    ld [$08c2], sp                                ; $762c: $08 $c2 $08
    xor c                                         ; $762f: $a9
    nop                                           ; $7630: $00
    cp a                                          ; $7631: $bf
    dec c                                         ; $7632: $0d
    ld a, d                                       ; $7633: $7a
    add hl, bc                                    ; $7634: $09
    ld h, a                                       ; $7635: $67
    ld h, d                                       ; $7636: $62
    ldh a, [$28]                                  ; $7637: $f0 $28
    ld h, [hl]                                    ; $7639: $66
    add e                                         ; $763a: $83
    adc d                                         ; $763b: $8a
    xor b                                         ; $763c: $a8
    jp Jump_02c_7ace                              ; $763d: $c3 $ce $7a


    jp z, $b100                                   ; $7640: $ca $00 $b1

    add l                                         ; $7643: $85
    db $fc                                        ; $7644: $fc
    push hl                                       ; $7645: $e5
    inc hl                                        ; $7646: $23
    add h                                         ; $7647: $84
    adc d                                         ; $7648: $8a
    xor b                                         ; $7649: $a8
    jp Jump_02c_76f2                              ; $764a: $c3 $f2 $76


    add a                                         ; $764d: $87
    ld [hl], d                                    ; $764e: $72
    xor b                                         ; $764f: $a8
    scf                                           ; $7650: $37
    db $e4                                        ; $7651: $e4
    nop                                           ; $7652: $00
    ld c, l                                       ; $7653: $4d
    and e                                         ; $7654: $a3
    jp $c7a0                                      ; $7655: $c3 $a0 $c7


    adc $7e                                       ; $7658: $ce $7e
    xor $f4                                       ; $765a: $ee $f4
    add a                                         ; $765c: $87
    sbc [hl]                                      ; $765d: $9e
    ld b, h                                       ; $765e: $44
    or c                                          ; $765f: $b1
    call nz, $a386                                ; $7660: $c4 $86 $a3
    nop                                           ; $7663: $00

jr_02c_7664:
    ld b, l                                       ; $7664: $45
    ret nc                                        ; $7665: $d0

    cp l                                          ; $7666: $bd
    di                                            ; $7667: $f3
    db $f4                                        ; $7668: $f4
    rst $00                                       ; $7669: $c7
    sub d                                         ; $766a: $92
    inc h                                         ; $766b: $24
    res 0, h                                      ; $766c: $cb $84
    ld a, [hl]                                    ; $766e: $7e
    cp $f4                                        ; $766f: $fe $f4
    xor c                                         ; $7671: $a9
    ld h, [hl]                                    ; $7672: $66
    adc e                                         ; $7673: $8b
    nop                                           ; $7674: $00
    ld c, l                                       ; $7675: $4d
    and e                                         ; $7676: $a3
    nop                                           ; $7677: $00
    ei                                            ; $7678: $fb
    db $f4                                        ; $7679: $f4
    xor h                                         ; $767a: $ac
    db $f4                                        ; $767b: $f4
    call $d745                                    ; $767c: $cd $45 $d7
    db $f4                                        ; $767f: $f4
    or d                                          ; $7680: $b2
    db $f4                                        ; $7681: $f4
    call $e57e                                    ; $7682: $cd $7e $e5
    nop                                           ; $7685: $00
    ret nz                                        ; $7686: $c0

    ei                                            ; $7687: $fb
    ld l, [hl]                                    ; $7688: $6e
    add a                                         ; $7689: $87
    db $f4                                        ; $768a: $f4
    call z, $ffc3                                 ; $768b: $cc $c3 $ff
    ld l, [hl]                                    ; $768e: $6e
    xor h                                         ; $768f: $ac
    db $f4                                        ; $7690: $f4
    rrc b                                         ; $7691: $cb $08
    db $fd                                        ; $7693: $fd
    db $f4                                        ; $7694: $f4
    call c, Call_000_0800                         ; $7695: $dc $00 $08
    cp $f4                                        ; $7698: $fe $f4
    rst $10                                       ; $769a: $d7
    ld hl, sp-$19                                 ; $769b: $f8 $e7
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
    nop                                           ; $76a7: $00
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
    nop                                           ; $76b2: $00
    nop                                           ; $76b3: $00
    nop                                           ; $76b4: $00
    pop bc                                        ; $76b5: $c1
    dec c                                         ; $76b6: $0d
    rst $38                                       ; $76b7: $ff
    rst $38                                       ; $76b8: $ff
    rst $38                                       ; $76b9: $ff
    rst $38                                       ; $76ba: $ff
    rst $38                                       ; $76bb: $ff
    rst $38                                       ; $76bc: $ff
    rst $38                                       ; $76bd: $ff
    rst $38                                       ; $76be: $ff
    db $eb                                        ; $76bf: $eb
    ld [$0e0e], a                                 ; $76c0: $ea $0e $0e
    jr nz, @-$02                                  ; $76c3: $20 $fc

    rst $28                                       ; $76c5: $ef
    rst $38                                       ; $76c6: $ff
    rst $38                                       ; $76c7: $ff
    jp $c0e7                                      ; $76c8: $c3 $e7 $c0


    rst $38                                       ; $76cb: $ff
    jp Jump_000_0efb                              ; $76cc: $c3 $fb $0e


    rst $38                                       ; $76cf: $ff
    ldh a, [$c4]                                  ; $76d0: $f0 $c4
    rst $38                                       ; $76d2: $ff
    nop                                           ; $76d3: $00
    add e                                         ; $76d4: $83
    and $7e                                       ; $76d5: $e6 $7e
    rst $38                                       ; $76d7: $ff
    ld [$c3f6], sp                                ; $76d8: $08 $f6 $c3
    push hl                                       ; $76db: $e5
    ld a, [hl]                                    ; $76dc: $7e
    di                                            ; $76dd: $f3
    cp d                                          ; $76de: $ba
    db $fd                                        ; $76df: $fd
    adc d                                         ; $76e0: $8a
    db $e4                                        ; $76e1: $e4
    ld a, [hl]                                    ; $76e2: $7e
    or $00                                        ; $76e3: $f6 $00
    ret nz                                        ; $76e5: $c0

    rst $38                                       ; $76e6: $ff
    ld a, [hl]                                    ; $76e7: $7e
    ei                                            ; $76e8: $fb
    ld a, [hl-]                                   ; $76e9: $3a
    db $fc                                        ; $76ea: $fc
    ld [$fce7], sp                                ; $76eb: $08 $e7 $fc
    push de                                       ; $76ee: $d5
    ld a, e                                       ; $76ef: $7b
    ld hl, sp-$7a                                 ; $76f0: $f8 $86

Jump_02c_76f2:
    bit 7, d                                      ; $76f2: $cb $7a
    db $d3                                        ; $76f4: $d3
    nop                                           ; $76f5: $00
    ret nz                                        ; $76f6: $c0

    cp $7e                                        ; $76f7: $fe $7e
    ei                                            ; $76f9: $fb
    dec sp                                        ; $76fa: $3b
    db $f4                                        ; $76fb: $f4
    jp c, $86c3                                   ; $76fc: $da $c3 $86

    call $a7b8                                    ; $76ff: $cd $b8 $a7
    add d                                         ; $7702: $82
    db $ed                                        ; $7703: $ed
    inc [hl]                                      ; $7704: $34
    call $9e14                                    ; $7705: $cd $14 $9e
    db $ec                                        ; $7708: $ec
    inc d                                         ; $7709: $14
    add sp, $4d                                   ; $770a: $e8 $4d
    rst $38                                       ; $770c: $ff
    ldh [$2d], a                                  ; $770d: $e0 $2d
    add d                                         ; $770f: $82
    xor $c0                                       ; $7710: $ee $c0
    rst $28                                       ; $7712: $ef
    ld e, $eb                                     ; $7713: $1e $eb
    cp $56                                        ; $7715: $fe $56
    add $6d                                       ; $7717: $c6 $6d
    ld a, [bc]                                    ; $7719: $0a
    dec bc                                        ; $771a: $0b
    ld a, [bc]                                    ; $771b: $0a
    dec bc                                        ; $771c: $0b
    ld c, l                                       ; $771d: $4d
    dec l                                         ; $771e: $2d
    ld l, b                                       ; $771f: $68
    add d                                         ; $7720: $82
    db $ed                                        ; $7721: $ed
    ld [hl], d                                    ; $7722: $72
    xor a                                         ; $7723: $af
    ld a, [hl]                                    ; $7724: $7e
    db $ed                                        ; $7725: $ed
    dec c                                         ; $7726: $0d
    add [hl]                                      ; $7727: $86
    ldh [$0d], a                                  ; $7728: $e0 $0d
    ld c, l                                       ; $772a: $4d
    pop bc                                        ; $772b: $c1
    ld [c], a                                     ; $772c: $e2
    nop                                           ; $772d: $00
    cp a                                          ; $772e: $bf
    pop hl                                        ; $772f: $e1
    add d                                         ; $7730: $82
    xor $72                                       ; $7731: $ee $72
    xor e                                         ; $7733: $ab
    sbc h                                         ; $7734: $9c
    ret nc                                        ; $7735: $d0

    push bc                                       ; $7736: $c5
    db $e4                                        ; $7737: $e4
    cp a                                          ; $7738: $bf
    push hl                                       ; $7739: $e5
    add d                                         ; $773a: $82
    db $ed                                        ; $773b: $ed
    ret nz                                        ; $773c: $c0

    db $ed                                        ; $773d: $ed
    jr jr_02c_775c                                ; $773e: $18 $1c

    call $eac1                                    ; $7740: $cd $c1 $ea
    dec a                                         ; $7743: $3d
    ldh [rKEY1], a                                ; $7744: $e0 $4d
    dec l                                         ; $7746: $2d
    dec sp                                        ; $7747: $3b
    db $ec                                        ; $7748: $ec
    nop                                           ; $7749: $00
    or $08                                        ; $774a: $f6 $08
    rst $20                                       ; $774c: $e7
    nop                                           ; $774d: $00
    cp l                                          ; $774e: $bd
    db $ec                                        ; $774f: $ec

jr_02c_7750:
    dec sp                                        ; $7750: $3b
    db $eb                                        ; $7751: $eb
    ret nc                                        ; $7752: $d0

    ld a, b                                       ; $7753: $78
    pop bc                                        ; $7754: $c1
    ld a, [c]                                     ; $7755: $f2
    dec sp                                        ; $7756: $3b
    db $ed                                        ; $7757: $ed
    inc b                                         ; $7758: $04
    ret nc                                        ; $7759: $d0

    ld e, $a7                                     ; $775a: $1e $a7

jr_02c_775c:
    pop bc                                        ; $775c: $c1
    pop af                                        ; $775d: $f1
    ld h, b                                       ; $775e: $60
    cp c                                          ; $775f: $b9
    jp nz, $8a60                                  ; $7760: $c2 $60 $8a

    ld d, [hl]                                    ; $7763: $56
    ld [hl], a                                    ; $7764: $77
    push bc                                       ; $7765: $c5
    call nz, $e3ff                                ; $7766: $c4 $ff $e3
    dec hl                                        ; $7769: $2b
    dec hl                                        ; $776a: $2b
    cp a                                          ; $776b: $bf
    jp hl                                         ; $776c: $e9


    ld h, b                                       ; $776d: $60
    ldh [rOCPS], a                                ; $776e: $e0 $6a
    add h                                         ; $7770: $84
    rst $08                                       ; $7771: $cf
    sbc b                                         ; $7772: $98
    ld h, d                                       ; $7773: $62
    ld a, [bc]                                    ; $7774: $0a
    jp nz, $e8ff                                  ; $7775: $c2 $ff $e8

    dec hl                                        ; $7778: $2b
    dec hl                                        ; $7779: $2b
    ld [hl], h                                    ; $777a: $74
    call nz, $b670                                ; $777b: $c4 $70 $b6
    and c                                         ; $777e: $a1
    ld h, b                                       ; $777f: $60
    ld h, a                                       ; $7780: $67

jr_02c_7781:
    call nc, $c155                                ; $7781: $d4 $55 $c1
    and $6b                                       ; $7784: $e6 $6b
    ld l, e                                       ; $7786: $6b
    ld c, e                                       ; $7787: $4b
    rst $38                                       ; $7788: $ff
    pop hl                                        ; $7789: $e1
    ret nz                                        ; $778a: $c0

    ld a, d                                       ; $778b: $7a
    rst $20                                       ; $778c: $e7
    ld hl, sp-$5a                                 ; $778d: $f8 $a6
    ld [hl], d                                    ; $778f: $72
    ld l, d                                       ; $7790: $6a
    call c, Call_000_0267                         ; $7791: $dc $67 $02
    rst $20                                       ; $7794: $e7
    jp nz, Jump_000_2be2                          ; $7795: $c2 $e2 $2b

    dec hl                                        ; $7798: $2b
    adc l                                         ; $7799: $8d
    ld l, e                                       ; $779a: $6b
    cp l                                          ; $779b: $bd
    db $e4                                        ; $779c: $e4
    ld c, e                                       ; $779d: $4b
    dec hl                                        ; $779e: $2b
    jr c, jr_02c_7781                             ; $779f: $38 $e0

    add b                                         ; $77a1: $80
    db $e3                                        ; $77a2: $e3
    ld a, [hl]                                    ; $77a3: $7e
    or d                                          ; $77a4: $b2
    ld l, l                                       ; $77a5: $6d
    adc a                                         ; $77a6: $8f
    dec c                                         ; $77a7: $0d
    ld l, l                                       ; $77a8: $6d
    ld l, l                                       ; $77a9: $6d
    ld l, l                                       ; $77aa: $6d
    jr jr_02c_7750                                ; $77ab: $18 $a3

    ld [bc], a                                    ; $77ad: $02
    ld [c], a                                     ; $77ae: $e2
    dec b                                         ; $77af: $05
    ldh [rWX], a                                  ; $77b0: $e0 $4b
    ld de, $c20b                                  ; $77b2: $11 $0b $c2
    pop hl                                        ; $77b5: $e1
    ld a, l                                       ; $77b6: $7d
    push hl                                       ; $77b7: $e5
    ld a, d                                       ; $77b8: $7a
    pop hl                                        ; $77b9: $e1
    dec hl                                        ; $77ba: $2b
    add b                                         ; $77bb: $80
    ldh [$e4], a                                  ; $77bc: $e0 $e4
    ld c, e                                       ; $77be: $4b
    ld d, h                                       ; $77bf: $54
    jp nz, $ffa8                                  ; $77c0: $c2 $a8 $ff

    pop hl                                        ; $77c3: $e1
    sbc d                                         ; $77c4: $9a
    and a                                         ; $77c5: $a7
    inc c                                         ; $77c6: $0c
    and d                                         ; $77c7: $a2
    ld l, e                                       ; $77c8: $6b
    pop bc                                        ; $77c9: $c1
    ldh [rWX], a                                  ; $77ca: $e0 $4b
    add d                                         ; $77cc: $82
    ldh [$2b], a                                  ; $77cd: $e0 $2b
    inc bc                                        ; $77cf: $03
    dec hl                                        ; $77d0: $2b
    dec hl                                        ; $77d1: $2b
    add c                                         ; $77d2: $81
    db $e3                                        ; $77d3: $e3
    ld [hl], l                                    ; $77d4: $75
    ldh [$39], a                                  ; $77d5: $e0 $39
    pop hl                                        ; $77d7: $e1
    scf                                           ; $77d8: $37
    xor e                                         ; $77d9: $ab
    sub d                                         ; $77da: $92
    and $59                                       ; $77db: $e6 $59
    and [hl]                                      ; $77dd: $a6
    ld c, c                                       ; $77de: $49
    ld l, l                                       ; $77df: $6d
    ld a, b                                       ; $77e0: $78
    pop hl                                        ; $77e1: $e1
    call Call_02c_6b80                            ; $77e2: $cd $80 $6b
    add d                                         ; $77e5: $82
    ldh [$88], a                                  ; $77e6: $e0 $88
    ret nz                                        ; $77e8: $c0

    dec hl                                        ; $77e9: $2b
    nop                                           ; $77ea: $00
    db $e3                                        ; $77eb: $e3
    jr nz, jr_02c_7867                            ; $77ec: $20 $79

    pop hl                                        ; $77ee: $e1
    ret nz                                        ; $77ef: $c0

    ld [c], a                                     ; $77f0: $e2
    scf                                           ; $77f1: $37
    xor e                                         ; $77f2: $ab
    ld l, [hl]                                    ; $77f3: $6e
    ld b, h                                       ; $77f4: $44
    push de                                       ; $77f5: $d5
    or c                                          ; $77f6: $b1
    dec hl                                        ; $77f7: $2b
    ret nz                                        ; $77f8: $c0

    db $e3                                        ; $77f9: $e3
    ld [bc], a                                    ; $77fa: $02
    db $e4                                        ; $77fb: $e4
    jr nz, jr_02c_7878                            ; $77fc: $20 $7a

    ldh [$b5], a                                  ; $77fe: $e0 $b5
    ld [c], a                                     ; $7800: $e2
    cp $c1                                        ; $7801: $fe $c1
    db $fc                                        ; $7803: $fc
    and a                                         ; $7804: $a7
    xor $25                                       ; $7805: $ee $25
    dec l                                         ; $7807: $2d
    rst $38                                       ; $7808: $ff
    ldh [rHDMA3], a                               ; $7809: $e0 $53
    xor l                                         ; $780b: $ad
    nop                                           ; $780c: $00
    jp nc, $ffc0                                  ; $780d: $d2 $c0 $ff

    ret nz                                        ; $7810: $c0

    nop                                           ; $7811: $00
    ld [c], a                                     ; $7812: $e2
    ret nz                                        ; $7813: $c0

    ld [c], a                                     ; $7814: $e2
    ld hl, sp-$3d                                 ; $7815: $f8 $c3
    ldh a, [$a0]                                  ; $7817: $f0 $a0
    db $fc                                        ; $7819: $fc
    and a                                         ; $781a: $a7
    ldh a, [$29]                                  ; $781b: $f0 $29
    nop                                           ; $781d: $00
    db $e3                                        ; $781e: $e3
    add b                                         ; $781f: $80
    cp e                                          ; $7820: $bb
    db $eb                                        ; $7821: $eb
    ret nz                                        ; $7822: $c0

    pop hl                                        ; $7823: $e1
    inc bc                                        ; $7824: $03
    pop hl                                        ; $7825: $e1
    cp [hl]                                       ; $7826: $be
    jp $e3c0                                      ; $7827: $c3 $c0 $e3


    dec l                                         ; $782a: $2d
    pop hl                                        ; $782b: $e1
    db $fc                                        ; $782c: $fc
    and a                                         ; $782d: $a7
    inc b                                         ; $782e: $04
    ld [hl], h                                    ; $782f: $74

jr_02c_7830:
    ld b, a                                       ; $7830: $47
    xor b                                         ; $7831: $a8
    dec h                                         ; $7832: $25
    ld c, l                                       ; $7833: $4d
    ld a, d                                       ; $7834: $7a
    add sp, -$80                                  ; $7835: $e8 $80
    pop hl                                        ; $7837: $e1
    add $c1                                       ; $7838: $c6 $c1
    rlca                                          ; $783a: $07
    ld [c], a                                     ; $783b: $e2
    cp c                                          ; $783c: $b9
    push hl                                       ; $783d: $e5
    nop                                           ; $783e: $00
    ld [hl], c                                    ; $783f: $71
    and c                                         ; $7840: $a1
    db $fc                                        ; $7841: $fc
    and l                                         ; $7842: $a5
    db $f4                                        ; $7843: $f4
    jr z, jr_02c_7830                             ; $7844: $28 $ea

    ld h, $7a                                     ; $7846: $26 $7a
    db $e3                                        ; $7848: $e3
    inc sp                                        ; $7849: $33
    db $e3                                        ; $784a: $e3
    adc [hl]                                      ; $784b: $8e
    and b                                         ; $784c: $a0
    rst $00                                       ; $784d: $c7
    push bc                                       ; $784e: $c5
    inc b                                         ; $784f: $04
    cp l                                          ; $7850: $bd
    push bc                                       ; $7851: $c5
    cp $a0                                        ; $7852: $fe $a0
    ld l, e                                       ; $7854: $6b
    add b                                         ; $7855: $80
    push af                                       ; $7856: $f5
    db $ed                                        ; $7857: $ed
    ld c, c                                       ; $7858: $49
    ld a, b                                       ; $7859: $78
    ld [c], a                                     ; $785a: $e2
    call $c1c2                                    ; $785b: $cd $c2 $c1
    and d                                         ; $785e: $a2
    inc b                                         ; $785f: $04
    ccf                                           ; $7860: $3f
    push bc                                       ; $7861: $c5
    add d                                         ; $7862: $82
    db $e4                                        ; $7863: $e4
    dec bc                                        ; $7864: $0b
    inc a                                         ; $7865: $3c
    and b                                         ; $7866: $a0

jr_02c_7867:
    halt                                          ; $7867: $76
    dec l                                         ; $7868: $2d
    ld a, [bc]                                    ; $7869: $0a
    ld l, l                                       ; $786a: $6d
    cp a                                          ; $786b: $bf
    jp $c38a                                      ; $786c: $c3 $8a $c3


    inc b                                         ; $786f: $04
    rst $38                                       ; $7870: $ff
    and h                                         ; $7871: $a4
    ld b, e                                       ; $7872: $43
    ld [c], a                                     ; $7873: $e2
    ld l, e                                       ; $7874: $6b
    xor l                                         ; $7875: $ad
    add c                                         ; $7876: $81
    inc a                                         ; $7877: $3c

jr_02c_7878:
    and d                                         ; $7878: $a2
    ld [hl], h                                    ; $7879: $74
    dec hl                                        ; $787a: $2b
    adc [hl]                                      ; $787b: $8e
    dec c                                         ; $787c: $0d
    ccf                                           ; $787d: $3f
    jp nz, $0700                                  ; $787e: $c2 $00 $07

    db $e3                                        ; $7881: $e3
    ld a, $a1                                     ; $7882: $3e $a1
    rst $38                                       ; $7884: $ff
    add h                                         ; $7885: $84
    pop bc                                        ; $7886: $c1
    db $e4                                        ; $7887: $e4
    inc a                                         ; $7888: $3c
    and e                                         ; $7889: $a3
    nop                                           ; $788a: $00
    ld [$2c88], a                                 ; $788b: $ea $88 $2c
    ld [bc], a                                    ; $788e: $02
    add b                                         ; $788f: $80
    ld l, b                                       ; $7890: $68
    ld c, e                                       ; $7891: $4b
    add b                                         ; $7892: $80
    dec a                                         ; $7893: $3d
    push hl                                       ; $7894: $e5
    ld a, b                                       ; $7895: $78
    add l                                         ; $7896: $85
    ld l, e                                       ; $7897: $6b
    inc bc                                        ; $7898: $03
    ld [c], a                                     ; $7899: $e2
    ld a, [bc]                                    ; $789a: $0a
    dec bc                                        ; $789b: $0b
    dec d                                         ; $789c: $15
    and b                                         ; $789d: $a0
    ldh [$80], a                                  ; $789e: $e0 $80
    adc $2c                                       ; $78a0: $ce $2c
    xor h                                         ; $78a2: $ac
    ld c, h                                       ; $78a3: $4c
    ld b, c                                       ; $78a4: $41
    add b                                         ; $78a5: $80
    and d                                         ; $78a6: $a2
    inc a                                         ; $78a7: $3c
    adc b                                         ; $78a8: $88
    ld l, e                                       ; $78a9: $6b
    ld c, e                                       ; $78aa: $4b
    ld a, [bc]                                    ; $78ab: $0a
    dec sp                                        ; $78ac: $3b
    dec bc                                        ; $78ad: $0b
    ld a, [hl+]                                   ; $78ae: $2a
    pop bc                                        ; $78af: $c1
    ld [c], a                                     ; $78b0: $e2
    ld c, l                                       ; $78b1: $4d
    ld c, $0e                                     ; $78b2: $0e $0e
    db $fd                                        ; $78b4: $fd
    ldh [rPCM12], a                               ; $78b5: $e0 $76
    rlca                                          ; $78b7: $07
    ldh [rNR21], a                                ; $78b8: $e0 $16
    dec l                                         ; $78ba: $2d
    ld a, [c]                                     ; $78bb: $f2
    and b                                         ; $78bc: $a0
    inc bc                                        ; $78bd: $03
    adc d                                         ; $78be: $8a
    ld [hl], a                                    ; $78bf: $77
    jp $e384                                      ; $78c0: $c3 $84 $e3


    dec l                                         ; $78c3: $2d
    dec l                                         ; $78c4: $2d
    ld l, l                                       ; $78c5: $6d
    ld bc, $394d                                  ; $78c6: $01 $4d $39
    jr nc, @+$2e                                  ; $78c9: $30 $2c

    xor h                                         ; $78cb: $ac
    cp a                                          ; $78cc: $bf
    pop hl                                        ; $78cd: $e1
    ld a, [hl]                                    ; $78ce: $7e
    ldh [$c6], a                                  ; $78cf: $e0 $c6
    add h                                         ; $78d1: $84
    push bc                                       ; $78d2: $c5
    db $e3                                        ; $78d3: $e3
    ld b, l                                       ; $78d4: $45
    db $e4                                        ; $78d5: $e4
    ld bc, $820d                                  ; $78d6: $01 $0d $82
    ldh [$b9], a                                  ; $78d9: $e0 $b9
    db $10                                        ; $78db: $10
    add b                                         ; $78dc: $80
    ld l, h                                       ; $78dd: $6c
    ld [hl], b                                    ; $78de: $70
    and c                                         ; $78df: $a1
    ld a, a                                       ; $78e0: $7f
    ld c, a                                       ; $78e1: $4f
    ld b, $e2                                     ; $78e2: $06 $e2
    ld a, h                                       ; $78e4: $7c
    inc sp                                        ; $78e5: $33
    nop                                           ; $78e6: $00
    db $fc                                        ; $78e7: $fc
    ld c, l                                       ; $78e8: $4d
    ld a, h                                       ; $78e9: $7c
    push hl                                       ; $78ea: $e5
    pop bc                                        ; $78eb: $c1
    db $eb                                        ; $78ec: $eb
    ld b, l                                       ; $78ed: $45
    db $eb                                        ; $78ee: $eb
    ld a, [hl]                                    ; $78ef: $7e
    ld l, e                                       ; $78f0: $6b
    cp $2e                                        ; $78f1: $fe $2e
    ld [hl], d                                    ; $78f3: $72
    and l                                         ; $78f4: $a5
    ld a, c                                       ; $78f5: $79
    ld h, $00                                     ; $78f6: $26 $00
    ld [$7ca5], sp                                ; $78f8: $08 $a5 $7c
    inc de                                        ; $78fb: $13
    ld a, [hl]                                    ; $78fc: $7e
    cpl                                           ; $78fd: $2f
    and [hl]                                      ; $78fe: $a6
    add e                                         ; $78ff: $83
    ld a, b                                       ; $7900: $78
    rst $20                                       ; $7901: $e7
    ld a, d                                       ; $7902: $7a
    rrca                                          ; $7903: $0f
    add b                                         ; $7904: $80
    ld hl, sp-$26                                 ; $7905: $f8 $da
    ld h, [hl]                                    ; $7907: $66
    nop                                           ; $7908: $00
    cp a                                          ; $7909: $bf
    and $08                                       ; $790a: $e6 $08
    ret z                                         ; $790c: $c8

    cp a                                          ; $790d: $bf
    rrca                                          ; $790e: $0f
    nop                                           ; $790f: $00
    ld l, $c0                                     ; $7910: $2e $c0
    add sp, $72                                   ; $7912: $e8 $72
    jp $e102                                      ; $7914: $c3 $02 $e1


    ld e, [hl]                                    ; $7917: $5e
    ld a, [bc]                                    ; $7918: $0a
    nop                                           ; $7919: $00
    ret nz                                        ; $791a: $c0

    ldh a, [$82]                                  ; $791b: $f0 $82
    db $eb                                        ; $791d: $eb
    add sp, $25                                   ; $791e: $e8 $25
    push bc                                       ; $7920: $c5
    ld bc, $c208                                  ; $7921: $01 $08 $c2
    sbc $ec                                       ; $7924: $de $ec
    rst $38                                       ; $7926: $ff
    rst $28                                       ; $7927: $ef
    add d                                         ; $7928: $82
    rst $28                                       ; $7929: $ef
    nop                                           ; $792a: $00
    ld a, $e2                                     ; $792b: $3e $e2
    ld a, e                                       ; $792d: $7b
    ld [c], a                                     ; $792e: $e2
    adc l                                         ; $792f: $8d
    and c                                         ; $7930: $a1
    ldh [$d0], a                                  ; $7931: $e0 $d0
    ld a, d                                       ; $7933: $7a
    db $10                                        ; $7934: $10
    ld [hl], d                                    ; $7935: $72
    xor e                                         ; $7936: $ab
    ld h, [hl]                                    ; $7937: $66
    add [hl]                                      ; $7938: $86
    adc b                                         ; $7939: $88
    ld c, [hl]                                    ; $793a: $4e
    nop                                           ; $793b: $00
    db $fc                                        ; $793c: $fc
    pop af                                        ; $793d: $f1
    add d                                         ; $793e: $82
    rst $28                                       ; $793f: $ef
    ld c, a                                       ; $7940: $4f
    dec hl                                        ; $7941: $2b
    rst $00                                       ; $7942: $c7
    adc $c0                                       ; $7943: $ce $c0
    pop af                                        ; $7945: $f1
    add d                                         ; $7946: $82
    ldh a, [$5c]                                  ; $7947: $f0 $5c
    adc a                                         ; $7949: $8f
    cp l                                          ; $794a: $bd
    db $fc                                        ; $794b: $fc
    nop                                           ; $794c: $00
    db $f4                                        ; $794d: $f4
    pop de                                        ; $794e: $d1
    ld a, [hl]                                    ; $794f: $7e
    rst $38                                       ; $7950: $ff
    ld [hl], b                                    ; $7951: $70
    ld c, $66                                     ; $7952: $0e $66
    adc h                                         ; $7954: $8c
    ld b, $31                                     ; $7955: $06 $31
    ld a, d                                       ; $7957: $7a
    push de                                       ; $7958: $d5
    db $f4                                        ; $7959: $f4
    reti                                          ; $795a: $d9


    rst $38                                       ; $795b: $ff
    ld a, [$7600]                                 ; $795c: $fa $00 $76
    ld [$cc76], sp                                ; $795f: $08 $76 $cc
    jp c, $ff47                                   ; $7962: $da $47 $ff

    rst $38                                       ; $7965: $ff
    halt                                          ; $7966: $76
    ld [bc], a                                    ; $7967: $02
    inc d                                         ; $7968: $14
    inc l                                         ; $7969: $2c
    jp $c0ff                                      ; $796a: $c3 $ff $c0


    db $ec                                        ; $796d: $ec
    nop                                           ; $796e: $00
    ld l, b                                       ; $796f: $68
    sub c                                         ; $7970: $91
    rst $38                                       ; $7971: $ff
    rst $38                                       ; $7972: $ff
    add sp, -$69                                  ; $7973: $e8 $97
    rst $38                                       ; $7975: $ff
    rst $38                                       ; $7976: $ff
    ret nz                                        ; $7977: $c0

    rst $38                                       ; $7978: $ff
    rst $38                                       ; $7979: $ff
    rst $38                                       ; $797a: $ff
    rst $38                                       ; $797b: $ff
    rst $38                                       ; $797c: $ff
    rst $38                                       ; $797d: $ff
    rst $38                                       ; $797e: $ff
    nop                                           ; $797f: $00
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
    sbc h                                         ; $798c: $9c
    call c, $0000                                 ; $798d: $dc $00 $00
    nop                                           ; $7990: $00
    add c                                         ; $7991: $81
    nop                                           ; $7992: $00
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
    pop hl                                        ; $799d: $e1
    ldh [rIF], a                                  ; $799e: $e0 $0f
    nop                                           ; $79a0: $00
    rst $38                                       ; $79a1: $ff
    ldh [$e3], a                                  ; $79a2: $e0 $e3
    ld a, [$f8df]                                 ; $79a4: $fa $df $f8
    call nz, $bde5                                ; $79a7: $c4 $e5 $bd
    db $f4                                        ; $79aa: $f4
    and a                                         ; $79ab: $a7
    rst $20                                       ; $79ac: $e7
    sbc h                                         ; $79ad: $9c
    ld a, [c]                                     ; $79ae: $f2
    adc b                                         ; $79af: $88
    ld [$7b00], a                                 ; $79b0: $ea $00 $7b
    rst $28                                       ; $79b3: $ef
    ld l, b                                       ; $79b4: $68
    db $ec                                        ; $79b5: $ec
    or e                                          ; $79b6: $b3
    ld [$e14c], a                                 ; $79b7: $ea $4c $e1
    ld c, c                                       ; $79ba: $49
    db $ec                                        ; $79bb: $ec
    ldh [$ed], a                                  ; $79bc: $e0 $ed
    add hl, hl                                    ; $79be: $29
    db $ed                                        ; $79bf: $ed
    ld [hl], e                                    ; $79c0: $73
    jp hl                                         ; $79c1: $e9


    nop                                           ; $79c2: $00
    adc a                                         ; $79c3: $8f
    ld a, [c]                                     ; $79c4: $f2
    ld sp, hl                                     ; $79c5: $f9
    add $f0                                       ; $79c6: $c6 $f0
    push de                                       ; $79c8: $d5
    ret c                                         ; $79c9: $d8

    push bc                                       ; $79ca: $c5
    adc $d5                                       ; $79cb: $ce $d5
    ldh [$e9], a                                  ; $79cd: $e0 $e9
    xor d                                         ; $79cf: $aa
    pop de                                        ; $79d0: $d1
    sbc b                                         ; $79d1: $98
    ret                                           ; $79d2: $c9


    nop                                           ; $79d3: $00
    xor d                                         ; $79d4: $aa
    pop de                                        ; $79d5: $d1
    cpl                                           ; $79d6: $2f
    or $e0                                        ; $79d7: $f6 $e0
    push af                                       ; $79d9: $f5
    ldh [$cc], a                                  ; $79da: $e0 $cc
    cpl                                           ; $79dc: $2f
    rst $28                                       ; $79dd: $ef
    ld h, $c8                                     ; $79de: $26 $c8
    ld a, [de]                                    ; $79e0: $1a
    pop de                                        ; $79e1: $d1
    inc h                                         ; $79e2: $24
    ret z                                         ; $79e3: $c8

    nop                                           ; $79e4: $00
    db $fc                                        ; $79e5: $fc
    or h                                          ; $79e6: $b4
    inc bc                                        ; $79e7: $03
    add $dc                                       ; $79e8: $c6 $dc
    cp [hl]                                       ; $79ea: $be
    sbc [hl]                                      ; $79eb: $9e
    cp a                                          ; $79ec: $bf
    rst $38                                       ; $79ed: $ff
    rst $38                                       ; $79ee: $ff
    rst $38                                       ; $79ef: $ff
    rst $38                                       ; $79f0: $ff
    rst $38                                       ; $79f1: $ff
    rst $38                                       ; $79f2: $ff
    rst $38                                       ; $79f3: $ff
    rst $38                                       ; $79f4: $ff
    nop                                           ; $79f5: $00
    rst $38                                       ; $79f6: $ff
    rst $38                                       ; $79f7: $ff
    rst $38                                       ; $79f8: $ff
    rst $38                                       ; $79f9: $ff
    rst $38                                       ; $79fa: $ff
    ld a, [$0000]                                 ; $79fb: $fa $00 $00
    nop                                           ; $79fe: $00
    ld bc, $ff00                                  ; $79ff: $01 $00 $ff
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
    db $10                                        ; $7a0f: $10
    rst $38                                       ; $7a10: $ff
    rst $38                                       ; $7a11: $ff
    rst $38                                       ; $7a12: $ff
    rst $38                                       ; $7a13: $ff
    rst $38                                       ; $7a14: $ff
    rst $38                                       ; $7a15: $ff
    db $f4                                        ; $7a16: $f4
    di                                            ; $7a17: $f3
    pop af                                        ; $7a18: $f1
    rst $38                                       ; $7a19: $ff
    and $e0                                       ; $7a1a: $e6 $e0
    rst $38                                       ; $7a1c: $ff
    or d                                          ; $7a1d: $b2
    db $eb                                        ; $7a1e: $eb
    ld bc, $e013                                  ; $7a1f: $01 $13 $e0
    rst $38                                       ; $7a22: $ff
    ldh [rIE], a                                  ; $7a23: $e0 $ff
    add b                                         ; $7a25: $80
    rst $38                                       ; $7a26: $ff
    ldh [rIE], a                                  ; $7a27: $e0 $ff
    ldh [rIE], a                                  ; $7a29: $e0 $ff
    ldh [$f8], a                                  ; $7a2b: $e0 $f8
    rst $38                                       ; $7a2d: $ff
    rst $38                                       ; $7a2e: $ff
    nop                                           ; $7a2f: $00
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
    nop                                           ; $7a40: $00
    rst $38                                       ; $7a41: $ff
    rst $38                                       ; $7a42: $ff
    rst $38                                       ; $7a43: $ff
    rst $38                                       ; $7a44: $ff
    rst $38                                       ; $7a45: $ff
    db $fc                                        ; $7a46: $fc
    nop                                           ; $7a47: $00
    nop                                           ; $7a48: $00
    nop                                           ; $7a49: $00
    cp $01                                        ; $7a4a: $fe $01
    nop                                           ; $7a4c: $00
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
    nop                                           ; $7a5b: $00
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
    nop                                           ; $7a6c: $00
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
    nop                                           ; $7a7d: $00
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
    nop                                           ; $7a8e: $00
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
    nop                                           ; $7a9f: $00
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
    nop                                           ; $7ab0: $00
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
    nop                                           ; $7ac1: $00
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
    db $e4                                        ; $7acd: $e4

Jump_02c_7ace:
    nop                                           ; $7ace: $00
    nop                                           ; $7acf: $00
    nop                                           ; $7ad0: $00
    push af                                       ; $7ad1: $f5
    push bc                                       ; $7ad2: $c5
    push de                                       ; $7ad3: $d5
    push hl                                       ; $7ad4: $e5
    ld [$c32f], a                                 ; $7ad5: $ea $2f $c3
    ld c, a                                       ; $7ad8: $4f
    ld a, $ff                                     ; $7ad9: $3e $ff
    ld b, $01                                     ; $7adb: $06 $01
    ld hl, $c330                                  ; $7add: $21 $30 $c3
    ld [hl+], a                                   ; $7ae0: $22
    ld [hl], b                                    ; $7ae1: $70
    inc hl                                        ; $7ae2: $23
    ld [hl+], a                                   ; $7ae3: $22
    ld [hl], b                                    ; $7ae4: $70
    inc hl                                        ; $7ae5: $23
    ld [hl+], a                                   ; $7ae6: $22
    ld [hl], b                                    ; $7ae7: $70
    inc hl                                        ; $7ae8: $23
    ld [hl+], a                                   ; $7ae9: $22
    ld [hl], b                                    ; $7aea: $70
    inc hl                                        ; $7aeb: $23
    ld [hl+], a                                   ; $7aec: $22
    ld [hl+], a                                   ; $7aed: $22
    ld [hl+], a                                   ; $7aee: $22
    ld [hl+], a                                   ; $7aef: $22
    ld a, c                                       ; $7af0: $79
    ld h, $00                                     ; $7af1: $26 $00
    ld l, a                                       ; $7af3: $6f
    add hl, hl                                    ; $7af4: $29
    ld bc, $405e                                  ; $7af5: $01 $5e $40
    add hl, bc                                    ; $7af8: $09
    ld a, [hl+]                                   ; $7af9: $2a
    ld h, [hl]                                    ; $7afa: $66
    ld l, a                                       ; $7afb: $6f
    ld a, [hl]                                    ; $7afc: $7e
    cp $fe                                        ; $7afd: $fe $fe
    jr nz, jr_02c_7b03                            ; $7aff: $20 $02

    jr jr_02c_7b73                                ; $7b01: $18 $70

jr_02c_7b03:
    add sp, -$02                                  ; $7b03: $e8 $fe
    ld de, $c332                                  ; $7b05: $11 $32 $c3
    push hl                                       ; $7b08: $e5
    ld hl, sp+$02                                 ; $7b09: $f8 $02
    ld [hl], e                                    ; $7b0b: $73
    inc hl                                        ; $7b0c: $23
    ld [hl], d                                    ; $7b0d: $72
    pop hl                                        ; $7b0e: $e1
    ld d, h                                       ; $7b0f: $54
    ld e, l                                       ; $7b10: $5d
    ld b, $ff                                     ; $7b11: $06 $ff
    ld c, $03                                     ; $7b13: $0e $03
    xor a                                         ; $7b15: $af
    ld hl, $c330                                  ; $7b16: $21 $30 $c3
    ld [hl], a                                    ; $7b19: $77
    ld hl, $c338                                  ; $7b1a: $21 $38 $c3
    ld [hl], a                                    ; $7b1d: $77
    inc hl                                        ; $7b1e: $23

jr_02c_7b1f:
    inc b                                         ; $7b1f: $04
    ld a, [de]                                    ; $7b20: $1a
    inc de                                        ; $7b21: $13
    cp $fe                                        ; $7b22: $fe $fe
    jr z, jr_02c_7b5b                             ; $7b24: $28 $35

    cp $ff                                        ; $7b26: $fe $ff
    jr nz, jr_02c_7b1f                            ; $7b28: $20 $f5

    inc b                                         ; $7b2a: $04
    ld a, b                                       ; $7b2b: $78
    inc a                                         ; $7b2c: $3c
    ld [hl], a                                    ; $7b2d: $77
    push de                                       ; $7b2e: $d5
    push hl                                       ; $7b2f: $e5
    ld hl, sp+$04                                 ; $7b30: $f8 $04
    ld e, [hl]                                    ; $7b32: $5e
    inc hl                                        ; $7b33: $23
    ld d, [hl]                                    ; $7b34: $56
    pop hl                                        ; $7b35: $e1
    ld [de], a                                    ; $7b36: $12
    inc de                                        ; $7b37: $13
    inc de                                        ; $7b38: $13
    push hl                                       ; $7b39: $e5
    ld hl, sp+$04                                 ; $7b3a: $f8 $04
    ld [hl], e                                    ; $7b3c: $73
    inc hl                                        ; $7b3d: $23
    ld [hl], d                                    ; $7b3e: $72
    pop hl                                        ; $7b3f: $e1
    pop de                                        ; $7b40: $d1
    ld a, [de]                                    ; $7b41: $1a
    inc a                                         ; $7b42: $3c
    inc de                                        ; $7b43: $13
    push hl                                       ; $7b44: $e5
    push de                                       ; $7b45: $d5
    ld d, a                                       ; $7b46: $57
    ld a, $04                                     ; $7b47: $3e $04
    sub c                                         ; $7b49: $91
    ld hl, $c330                                  ; $7b4a: $21 $30 $c3
    ld e, a                                       ; $7b4d: $5f
    ld a, d                                       ; $7b4e: $7a
    ld d, $00                                     ; $7b4f: $16 $00
    add hl, de                                    ; $7b51: $19
    add hl, de                                    ; $7b52: $19
    inc hl                                        ; $7b53: $23
    ld [hl], a                                    ; $7b54: $77
    pop de                                        ; $7b55: $d1
    pop hl                                        ; $7b56: $e1
    inc hl                                        ; $7b57: $23
    dec c                                         ; $7b58: $0d
    jr nz, jr_02c_7b1f                            ; $7b59: $20 $c4

jr_02c_7b5b:
    ld a, $ff                                     ; $7b5b: $3e $ff
    dec hl                                        ; $7b5d: $2b
    ld [hl], a                                    ; $7b5e: $77
    push hl                                       ; $7b5f: $e5
    ld hl, sp+$02                                 ; $7b60: $f8 $02
    ld e, [hl]                                    ; $7b62: $5e
    inc hl                                        ; $7b63: $23
    ld d, [hl]                                    ; $7b64: $56
    pop hl                                        ; $7b65: $e1
    dec de                                        ; $7b66: $1b
    dec de                                        ; $7b67: $1b
    ld [de], a                                    ; $7b68: $12
    ld a, $01                                     ; $7b69: $3e $01
    ld hl, $7b87                                  ; $7b6b: $21 $87 $7b
    call Call_000_23e8                            ; $7b6e: $cd $e8 $23
    add sp, $02                                   ; $7b71: $e8 $02

jr_02c_7b73:
    pop hl                                        ; $7b73: $e1
    pop de                                        ; $7b74: $d1
    pop bc                                        ; $7b75: $c1
    pop af                                        ; $7b76: $f1
    ret                                           ; $7b77: $c9


    push af                                       ; $7b78: $f5
    push bc                                       ; $7b79: $c5
    push de                                       ; $7b7a: $d5
    push hl                                       ; $7b7b: $e5
    ld hl, $7b87                                  ; $7b7c: $21 $87 $7b
    call Call_000_2449                            ; $7b7f: $cd $49 $24
    pop hl                                        ; $7b82: $e1
    pop de                                        ; $7b83: $d1
    pop bc                                        ; $7b84: $c1
    pop af                                        ; $7b85: $f1
    ret                                           ; $7b86: $c9


    rst $30                                       ; $7b87: $f7
    add b                                         ; $7b88: $80
    inc bc                                        ; $7b89: $03
    jr nz, jr_02c_7b90                            ; $7b8a: $20 $04

    rst $30                                       ; $7b8c: $f7
    nop                                           ; $7b8d: $00
    inc bc                                        ; $7b8e: $03
    ret nz                                        ; $7b8f: $c0

jr_02c_7b90:
    push af                                       ; $7b90: $f5
    push bc                                       ; $7b91: $c5
    push de                                       ; $7b92: $d5
    push hl                                       ; $7b93: $e5
    ldh a, [$96]                                  ; $7b94: $f0 $96
    push af                                       ; $7b96: $f5
    ld a, $06                                     ; $7b97: $3e $06
    ldh [$96], a                                  ; $7b99: $e0 $96
    ldh [rSVBK], a                                ; $7b9b: $e0 $70
    ld c, $00                                     ; $7b9d: $0e $00
    ld hl, $c338                                  ; $7b9f: $21 $38 $c3

jr_02c_7ba2:
    ld a, [hl]                                    ; $7ba2: $7e
    cp $ff                                        ; $7ba3: $fe $ff
    jr z, jr_02c_7bc4                             ; $7ba5: $28 $1d

    push hl                                       ; $7ba7: $e5
    ld l, c                                       ; $7ba8: $69
    ld h, $00                                     ; $7ba9: $26 $00
    add hl, hl                                    ; $7bab: $29
    ld de, $c330                                  ; $7bac: $11 $30 $c3
    add hl, de                                    ; $7baf: $19
    inc hl                                        ; $7bb0: $23
    ld a, [hl]                                    ; $7bb1: $7e
    dec a                                         ; $7bb2: $3d
    ld [hl], a                                    ; $7bb3: $77
    pop hl                                        ; $7bb4: $e1
    inc hl                                        ; $7bb5: $23
    ld b, c                                       ; $7bb6: $41
    inc c                                         ; $7bb7: $0c
    or a                                          ; $7bb8: $b7
    jr nz, jr_02c_7ba2                            ; $7bb9: $20 $e7

    ld a, b                                       ; $7bbb: $78
    call Call_02c_7bce                            ; $7bbc: $cd $ce $7b
    ld a, c                                       ; $7bbf: $79
    cp $04                                        ; $7bc0: $fe $04
    jr nz, jr_02c_7ba2                            ; $7bc2: $20 $de

jr_02c_7bc4:
    pop af                                        ; $7bc4: $f1
    ldh [$96], a                                  ; $7bc5: $e0 $96
    ldh [rSVBK], a                                ; $7bc7: $e0 $70
    pop hl                                        ; $7bc9: $e1
    pop de                                        ; $7bca: $d1
    pop bc                                        ; $7bcb: $c1
    pop af                                        ; $7bcc: $f1
    ret                                           ; $7bcd: $c9


Call_02c_7bce:
    push af                                       ; $7bce: $f5
    push bc                                       ; $7bcf: $c5
    push de                                       ; $7bd0: $d5
    push hl                                       ; $7bd1: $e5
    push af                                       ; $7bd2: $f5
    add sp, -$01                                  ; $7bd3: $e8 $ff
    ld hl, sp+$00                                 ; $7bd5: $f8 $00
    ld [hl], a                                    ; $7bd7: $77
    ld h, $00                                     ; $7bd8: $26 $00
    ld l, a                                       ; $7bda: $6f
    add hl, hl                                    ; $7bdb: $29
    ld bc, $c330                                  ; $7bdc: $01 $30 $c3
    add hl, bc                                    ; $7bdf: $09
    ld a, [hl]                                    ; $7be0: $7e
    ld [$c33c], a                                 ; $7be1: $ea $3c $c3

jr_02c_7be4:
    ld a, [$c32f]                                 ; $7be4: $fa $2f $c3
    ld l, a                                       ; $7be7: $6f
    ld h, $00                                     ; $7be8: $26 $00
    add hl, hl                                    ; $7bea: $29
    ld bc, $405e                                  ; $7beb: $01 $5e $40
    add hl, bc                                    ; $7bee: $09
    ld a, [hl+]                                   ; $7bef: $2a
    ld h, [hl]                                    ; $7bf0: $66
    ld l, a                                       ; $7bf1: $6f
    ld a, [$c33c]                                 ; $7bf2: $fa $3c $c3
    ld c, a                                       ; $7bf5: $4f
    ld b, $00                                     ; $7bf6: $06 $00
    add hl, bc                                    ; $7bf8: $09
    ld a, [hl]                                    ; $7bf9: $7e
    cp $ff                                        ; $7bfa: $fe $ff
    jr nz, jr_02c_7c0d                            ; $7bfc: $20 $0f

    ld hl, sp+$00                                 ; $7bfe: $f8 $00
    ld c, [hl]                                    ; $7c00: $4e
    ld b, $00                                     ; $7c01: $06 $00
    ld hl, $c338                                  ; $7c03: $21 $38 $c3
    add hl, bc                                    ; $7c06: $09
    ld a, [hl]                                    ; $7c07: $7e
    ld [$c33c], a                                 ; $7c08: $ea $3c $c3
    jr jr_02c_7be4                                ; $7c0b: $18 $d7

jr_02c_7c0d:
    ld b, a                                       ; $7c0d: $47
    inc hl                                        ; $7c0e: $23
    ld c, [hl]                                    ; $7c0f: $4e
    inc hl                                        ; $7c10: $23
    ld e, [hl]                                    ; $7c11: $5e
    inc hl                                        ; $7c12: $23
    ld a, [hl]                                    ; $7c13: $7e
    push af                                       ; $7c14: $f5
    push bc                                       ; $7c15: $c5
    ld l, e                                       ; $7c16: $6b
    ld h, $00                                     ; $7c17: $26 $00
    add hl, hl                                    ; $7c19: $29
    add hl, hl                                    ; $7c1a: $29
    add hl, hl                                    ; $7c1b: $29
    add hl, hl                                    ; $7c1c: $29
    ld de, $b000                                  ; $7c1d: $11 $00 $b0
    add hl, de                                    ; $7c20: $19
    push hl                                       ; $7c21: $e5
    ld l, b                                       ; $7c22: $68
    ld h, $00                                     ; $7c23: $26 $00
    add hl, hl                                    ; $7c25: $29
    add hl, hl                                    ; $7c26: $29
    add hl, hl                                    ; $7c27: $29
    add hl, hl                                    ; $7c28: $29
    ld bc, $d800                                  ; $7c29: $01 $00 $d8
    add hl, bc                                    ; $7c2c: $09
    pop de                                        ; $7c2d: $d1
    pop bc                                        ; $7c2e: $c1
    call Call_000_0468                            ; $7c2f: $cd $68 $04
    ld a, [$c33c]                                 ; $7c32: $fa $3c $c3
    add $04                                       ; $7c35: $c6 $04
    ld [$c33c], a                                 ; $7c37: $ea $3c $c3
    pop af                                        ; $7c3a: $f1
    ld d, a                                       ; $7c3b: $57
    add sp, $01                                   ; $7c3c: $e8 $01
    pop af                                        ; $7c3e: $f1
    ld h, $00                                     ; $7c3f: $26 $00
    ld l, a                                       ; $7c41: $6f
    add hl, hl                                    ; $7c42: $29
    ld bc, $c330                                  ; $7c43: $01 $30 $c3
    add hl, bc                                    ; $7c46: $09
    ld a, [$c33c]                                 ; $7c47: $fa $3c $c3
    ld [hl+], a                                   ; $7c4a: $22
    ld [hl], d                                    ; $7c4b: $72
    pop hl                                        ; $7c4c: $e1
    pop de                                        ; $7c4d: $d1
    pop bc                                        ; $7c4e: $c1
    pop af                                        ; $7c4f: $f1
    ret                                           ; $7c50: $c9


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

Jump_02c_7ec4:
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

Jump_02c_7ed2:
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

Jump_02c_7ee4:
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

Call_02c_7f93:
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

Call_02c_7fff:
    rst $38                                       ; $7fff: $ff
