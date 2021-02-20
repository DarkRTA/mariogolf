; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $06d", ROMX[$4000], BANK[$6d]

    inc c                                         ; $4000: $0c
    ld b, b                                       ; $4001: $40
    and e                                         ; $4002: $a3
    ld c, d                                       ; $4003: $4a
    adc c                                         ; $4004: $89
    ld d, h                                       ; $4005: $54
    adc b                                         ; $4006: $88
    ld h, b                                       ; $4007: $60
    ld b, [hl]                                    ; $4008: $46
    ld l, d                                       ; $4009: $6a
    rrca                                          ; $400a: $0f
    ld [hl], l                                    ; $400b: $75
    inc d                                         ; $400c: $14
    ld b, b                                       ; $400d: $40
    inc b                                         ; $400e: $04
    ld b, h                                       ; $400f: $44
    push bc                                       ; $4010: $c5
    ld c, b                                       ; $4011: $48
    db $e4                                        ; $4012: $e4
    ld c, b                                       ; $4013: $48
    dec e                                         ; $4014: $1d
    ld c, $ff                                     ; $4015: $0e $ff
    ld [c], a                                     ; $4017: $e2
    dec c                                         ; $4018: $0d
    dec c                                         ; $4019: $0d
    dec c                                         ; $401a: $0d
    rst $30                                       ; $401b: $f7
    db $e3                                        ; $401c: $e3
    or $ff                                        ; $401d: $f6 $ff
    db $ec                                        ; $401f: $ec
    xor $01                                       ; $4020: $ee $01
    ld c, $d9                                     ; $4022: $0e $d9
    pop hl                                        ; $4024: $e1
    push de                                       ; $4025: $d5
    db $e3                                        ; $4026: $e3
    or $ff                                        ; $4027: $f6 $ff
    db $ec                                        ; $4029: $ec
    rst $28                                       ; $402a: $ef
    sbc c                                         ; $402b: $99
    rst $38                                       ; $402c: $ff
    ld [c], a                                     ; $402d: $e2
    add sp, -$03                                  ; $402e: $e8 $fd
    pop hl                                        ; $4030: $e1
    inc hl                                        ; $4031: $23
    dec c                                         ; $4032: $0d
    ld c, l                                       ; $4033: $4d
    db $ec                                        ; $4034: $ec
    xor $99                                       ; $4035: $ee $99
    rst $38                                       ; $4037: $ff
    sbc [hl]                                      ; $4038: $9e
    ldh [rKEY1], a                                ; $4039: $e0 $4d
    jp $93e2                                      ; $403b: $c3 $e2 $93


    ldh [rP1], a                                  ; $403e: $e0 $00
    rst $30                                       ; $4040: $f7
    pop hl                                        ; $4041: $e1
    adc $ea                                       ; $4042: $ce $ea
    add l                                         ; $4044: $85
    rst $38                                       ; $4045: $ff
    ret                                           ; $4046: $c9


    push hl                                       ; $4047: $e5
    ret nz                                        ; $4048: $c0

    db $e3                                        ; $4049: $e3
    nop                                           ; $404a: $00
    rst $38                                       ; $404b: $ff
    db $ec                                        ; $404c: $ec
    db $ed                                        ; $404d: $ed
    add h                                         ; $404e: $84
    pop hl                                        ; $404f: $e1
    nop                                           ; $4050: $00
    ld c, c                                       ; $4051: $49
    ldh [rLY], a                                  ; $4052: $e0 $44
    pop hl                                        ; $4054: $e1
    ld c, a                                       ; $4055: $4f
    push hl                                       ; $4056: $e5
    cp d                                          ; $4057: $ba
    ld [c], a                                     ; $4058: $e2
    nop                                           ; $4059: $00
    rst $38                                       ; $405a: $ff
    ld [c], a                                     ; $405b: $e2
    db $e4                                        ; $405c: $e4
    adc h                                         ; $405d: $8c
    ldh [$09], a                                  ; $405e: $e0 $09
    ldh [rIF], a                                  ; $4060: $e0 $0f
    ld c, l                                       ; $4062: $4d
    ld c, l                                       ; $4063: $4d
    ld c, l                                       ; $4064: $4d
    dec l                                         ; $4065: $2d
    ld [bc], a                                    ; $4066: $02
    ld [c], a                                     ; $4067: $e2
    or $e0                                        ; $4068: $f6 $e0
    nop                                           ; $406a: $00
    rst $38                                       ; $406b: $ff
    ld e, $eb                                     ; $406c: $1e $eb
    rst $38                                       ; $406e: $ff
    ld c, l                                       ; $406f: $4d
    dec c                                         ; $4070: $0d
    ld l, l                                       ; $4071: $6d
    dec c                                         ; $4072: $0d
    ld c, e                                       ; $4073: $4b
    ld c, e                                       ; $4074: $4b
    dec c                                         ; $4075: $0d
    ld c, l                                       ; $4076: $4d
    add c                                         ; $4077: $81
    dec l                                         ; $4078: $2d
    ld [hl-], a                                   ; $4079: $32
    pop hl                                        ; $407a: $e1
    ld a, [$85c5]                                 ; $407b: $fa $c5 $85
    rst $38                                       ; $407e: $ff
    ld b, e                                       ; $407f: $43
    ld [c], a                                     ; $4080: $e2
    adc c                                         ; $4081: $89
    jp nz, $e0c1                                  ; $4082: $c2 $c1 $e0

    dec bc                                        ; $4085: $0b
    rlca                                          ; $4086: $07
    ld c, e                                       ; $4087: $4b
    ld c, e                                       ; $4088: $4b
    ld c, e                                       ; $4089: $4b
    ld a, h                                       ; $408a: $7c
    pop hl                                        ; $408b: $e1
    rst $28                                       ; $408c: $ef
    db $e3                                        ; $408d: $e3
    nop                                           ; $408e: $00
    rst $38                                       ; $408f: $ff
    and l                                         ; $4090: $a5
    jp $e4c0                                      ; $4091: $c3 $c0 $e4


    inc hl                                        ; $4094: $23
    ld c, e                                       ; $4095: $4b
    ld l, e                                       ; $4096: $6b
    add c                                         ; $4097: $81
    ldh [$f9], a                                  ; $4098: $e0 $f9
    ldh [$bd], a                                  ; $409a: $e0 $bd
    ldh [$2d], a                                  ; $409c: $e0 $2d
    ld sp, $00e1                                  ; $409e: $31 $e1 $00
    rst $38                                       ; $40a1: $ff
    nop                                           ; $40a2: $00
    add l                                         ; $40a3: $85
    call nz, $c2c7                                ; $40a4: $c4 $c7 $c2
    rst $00                                       ; $40a7: $c7
    pop hl                                        ; $40a8: $e1
    ld hl, sp-$1d                                 ; $40a9: $f8 $e3
    or [hl]                                       ; $40ab: $b6
    ldh [$fa], a                                  ; $40ac: $e0 $fa

jr_06d_40ae:
    ret nz                                        ; $40ae: $c0

    nop                                           ; $40af: $00
    rst $38                                       ; $40b0: $ff
    add l                                         ; $40b1: $85
    add $18                                       ; $40b2: $c6 $18

Jump_06d_40b4:
    ld d, b                                       ; $40b4: $50
    ret nz                                        ; $40b5: $c0

    res 4, c                                      ; $40b6: $cb $a1
    pop bc                                        ; $40b8: $c1
    db $e4                                        ; $40b9: $e4
    ld a, [bc]                                    ; $40ba: $0a
    ld a, [hl+]                                   ; $40bb: $2a
    ld [hl], l                                    ; $40bc: $75
    ldh [$c0], a                                  ; $40bd: $e0 $c0
    ldh [$89], a                                  ; $40bf: $e0 $89
    jp nz, Jump_000_00e0                          ; $40c1: $c2 $e0 $00

    rst $38                                       ; $40c4: $ff
    ld b, e                                       ; $40c5: $43
    pop bc                                        ; $40c6: $c1
    call nz, $c2a0                                ; $40c7: $c4 $a0 $c2
    ret nz                                        ; $40ca: $c0

    ld b, e                                       ; $40cb: $43
    ldh [$0b], a                                  ; $40cc: $e0 $0b
    dec bc                                        ; $40ce: $0b
    dec hl                                        ; $40cf: $2b
    rrca                                          ; $40d0: $0f
    ld a, [bc]                                    ; $40d1: $0a
    ld a, [bc]                                    ; $40d2: $0a
    ld a, [bc]                                    ; $40d3: $0a
    ld c, e                                       ; $40d4: $4b
    ret nz                                        ; $40d5: $c0

    pop hl                                        ; $40d6: $e1
    call nz, Call_000_00e7                        ; $40d7: $c4 $e7 $00
    db $dd                                        ; $40da: $dd
    ld d, l                                       ; $40db: $55
    pop hl                                        ; $40dc: $e1
    sbc $c1                                       ; $40dd: $de $c1
    pop hl                                        ; $40df: $e1
    ld c, e                                       ; $40e0: $4b
    dec c                                         ; $40e1: $0d
    dec hl                                        ; $40e2: $2b
    dec hl                                        ; $40e3: $2b
    cp a                                          ; $40e4: $bf
    pop hl                                        ; $40e5: $e1
    ld c, d                                       ; $40e6: $4a
    dec bc                                        ; $40e7: $0b
    ldh [$80], a                                  ; $40e8: $e0 $80
    ldh [$87], a                                  ; $40ea: $e0 $87
    and $00                                       ; $40ec: $e6 $00
    rst $38                                       ; $40ee: $ff
    ld [$44c1], sp                                ; $40ef: $08 $c1 $44
    pop bc                                        ; $40f2: $c1
    dec c                                         ; $40f3: $0d
    dec c                                         ; $40f4: $0d
    dec hl                                        ; $40f5: $2b
    ld a, a                                       ; $40f6: $7f
    ld c, e                                       ; $40f7: $4b
    ld c, e                                       ; $40f8: $4b
    dec bc                                        ; $40f9: $0b
    dec bc                                        ; $40fa: $0b
    dec bc                                        ; $40fb: $0b
    ld a, [bc]                                    ; $40fc: $0a
    dec l                                         ; $40fd: $2d
    ret nz                                        ; $40fe: $c0

    db $e3                                        ; $40ff: $e3
    or b                                          ; $4100: $b0
    ld sp, $0aa5                                  ; $4101: $31 $a5 $0a
    cp h                                          ; $4104: $bc
    ld b, d                                       ; $4105: $42
    db $e3                                        ; $4106: $e3
    add l                                         ; $4107: $85
    jp nz, Jump_000_0b2b                          ; $4108: $c2 $2b $0b

    ld a, l                                       ; $410b: $7d
    ret nz                                        ; $410c: $c0

    ld l, e                                       ; $410d: $6b
    rlca                                          ; $410e: $07
    dec l                                         ; $410f: $2d
    dec l                                         ; $4110: $2d
    dec l                                         ; $4111: $2d
    ld a, [hl]                                    ; $4112: $7e
    pop bc                                        ; $4113: $c1
    nop                                           ; $4114: $00
    rst $38                                       ; $4115: $ff
    ld h, a                                       ; $4116: $67
    and [hl]                                      ; $4117: $a6
    inc bc                                        ; $4118: $03
    db $e3                                        ; $4119: $e3
    ret nz                                        ; $411a: $c0

    pop hl                                        ; $411b: $e1
    add hl, de                                    ; $411c: $19
    dec bc                                        ; $411d: $0b
    ld d, d                                       ; $411e: $52
    and b                                         ; $411f: $a0
    pop bc                                        ; $4120: $c1
    ldh [rWX], a                                  ; $4121: $e0 $4b
    dec c                                         ; $4123: $0d
    rst $38                                       ; $4124: $ff
    jp nz, $c37b                                  ; $4125: $c2 $7b $c3

    nop                                           ; $4128: $00
    cp h                                          ; $4129: $bc
    jr c, jr_06d_40ae                             ; $412a: $38 $82

    pop bc                                        ; $412c: $c1
    call nz, Call_000_04c1                        ; $412d: $c4 $c1 $04
    ldh [$0b], a                                  ; $4130: $e0 $0b
    dec hl                                        ; $4132: $2b
    ld l, e                                       ; $4133: $6b
    rst $38                                       ; $4134: $ff
    and e                                         ; $4135: $a3
    or e                                          ; $4136: $b3
    and c                                         ; $4137: $a1
    ld a, b                                       ; $4138: $78
    dec sp                                        ; $4139: $3b
    and e                                         ; $413a: $a3
    nop                                           ; $413b: $00
    cp $80                                        ; $413c: $fe $80
    and e                                         ; $413e: $a3
    ld c, e                                       ; $413f: $4b
    dec c                                         ; $4140: $0d
    dec bc                                        ; $4141: $0b
    dec hl                                        ; $4142: $2b
    cp $e0                                        ; $4143: $fe $e0
    add d                                         ; $4145: $82
    pop bc                                        ; $4146: $c1
    db $e4                                        ; $4147: $e4
    ld c, e                                       ; $4148: $4b
    dec [hl]                                      ; $4149: $35
    and b                                         ; $414a: $a0
    rst $20                                       ; $414b: $e7
    db $e4                                        ; $414c: $e4
    nop                                           ; $414d: $00
    sbc $c0                                       ; $414e: $de $c0
    push hl                                       ; $4150: $e5
    add e                                         ; $4151: $83

Jump_06d_4152:
    ret nz                                        ; $4152: $c0

    dec hl                                        ; $4153: $2b
    nop                                           ; $4154: $00
    add c                                         ; $4155: $81
    ldh [$c2], a                                  ; $4156: $e0 $c2
    pop hl                                        ; $4158: $e1
    pop bc                                        ; $4159: $c1
    ldh [$ad], a                                  ; $415a: $e0 $ad
    and e                                         ; $415c: $a3
    add c                                         ; $415d: $81
    pop hl                                        ; $415e: $e1
    ld a, [bc]                                    ; $415f: $0a
    sbc e                                         ; $4160: $9b
    sbc c                                         ; $4161: $99
    push hl                                       ; $4162: $e5
    inc b                                         ; $4163: $04
    pop bc                                        ; $4164: $c1
    ld bc, $812b                                  ; $4165: $01 $2b $81
    ret nz                                        ; $4168: $c0

    ld b, h                                       ; $4169: $44
    ld [c], a                                     ; $416a: $e2
    pop bc                                        ; $416b: $c1
    ldh [$74], a                                  ; $416c: $e0 $74
    add d                                         ; $416e: $82
    nop                                           ; $416f: $00
    db $dd                                        ; $4170: $dd
    add [hl]                                      ; $4171: $86
    and b                                         ; $4172: $a0
    ld b, [hl]                                    ; $4173: $46
    and e                                         ; $4174: $a3
    ld [bc], a                                    ; $4175: $02
    inc b                                         ; $4176: $04
    ret nz                                        ; $4177: $c0

    ld c, e                                       ; $4178: $4b
    ld bc, $c3e1                                  ; $4179: $01 $e1 $c3
    db $e3                                        ; $417c: $e3
    adc b                                         ; $417d: $88
    pop hl                                        ; $417e: $e1
    call nz, Call_000_0ac8                        ; $417f: $c4 $c8 $0a
    sbc d                                         ; $4182: $9a
    inc de                                        ; $4183: $13
    ld h, c                                       ; $4184: $61
    add hl, de                                    ; $4185: $19
    ld c, l                                       ; $4186: $4d
    pop bc                                        ; $4187: $c1
    ld [c], a                                     ; $4188: $e2
    push bc                                       ; $4189: $c5
    and b                                         ; $418a: $a0
    ld l, e                                       ; $418b: $6b
    dec bc                                        ; $418c: $0b
    ld c, b                                       ; $418d: $48
    and c                                         ; $418e: $a1
    ld l, a                                       ; $418f: $6f
    and e                                         ; $4190: $a3
    dec hl                                        ; $4191: $2b
    and c                                         ; $4192: $a1
    jr nz, jr_06d_4195                            ; $4193: $20 $00

jr_06d_4195:
    sbc $48                                       ; $4195: $de $48
    and e                                         ; $4197: $a3
    ld a, [bc]                                    ; $4198: $0a
    add b                                         ; $4199: $80
    add h                                         ; $419a: $84
    pop bc                                        ; $419b: $c1
    ret nz                                        ; $419c: $c0

    ldh [rWX], a                                  ; $419d: $e0 $4b
    adc b                                         ; $419f: $88
    and b                                         ; $41a0: $a0
    jp Jump_000_0062                              ; $41a1: $c3 $62 $00


    cpl                                           ; $41a4: $2f
    and c                                         ; $41a5: $a1
    nop                                           ; $41a6: $00
    sbc h                                         ; $41a7: $9c
    sub l                                         ; $41a8: $95
    ld h, b                                       ; $41a9: $60
    ld c, b                                       ; $41aa: $48
    and e                                         ; $41ab: $a3
    pop bc                                        ; $41ac: $c1
    ld [c], a                                     ; $41ad: $e2
    ld c, d                                       ; $41ae: $4a
    add c                                         ; $41af: $81
    ld b, c                                       ; $41b0: $41
    add c                                         ; $41b1: $81
    ret nz                                        ; $41b2: $c0

    db $e4                                        ; $41b3: $e4
    ld [hl], b                                    ; $41b4: $70
    xor [hl]                                      ; $41b5: $ae
    add d                                         ; $41b6: $82
    nop                                           ; $41b7: $00
    cp e                                          ; $41b8: $bb
    ret nz                                        ; $41b9: $c0

    push hl                                       ; $41ba: $e5
    ld d, c                                       ; $41bb: $51
    pop bc                                        ; $41bc: $c1
    dec hl                                        ; $41bd: $2b
    ld c, e                                       ; $41be: $4b
    dec c                                         ; $41bf: $0d
    rlca                                          ; $41c0: $07
    ret nz                                        ; $41c1: $c0

    ret nz                                        ; $41c2: $c0

    ld [$83c1], sp                                ; $41c3: $08 $c1 $83
    ld h, e                                       ; $41c6: $63
    ld b, e                                       ; $41c7: $43
    add d                                         ; $41c8: $82
    nop                                           ; $41c9: $00
    ld e, h                                       ; $41ca: $5c
    ld c, e                                       ; $41cb: $4b
    add h                                         ; $41cc: $84
    push bc                                       ; $41cd: $c5
    pop bc                                        ; $41ce: $c1
    ld c, e                                       ; $41cf: $4b
    ld l, e                                       ; $41d0: $6b
    inc bc                                        ; $41d1: $03
    dec bc                                        ; $41d2: $0b
    dec hl                                        ; $41d3: $2b
    ret z                                         ; $41d4: $c8

    and h                                         ; $41d5: $a4
    ret                                           ; $41d6: $c9


    and c                                         ; $41d7: $a1
    ld b, l                                       ; $41d8: $45
    add h                                         ; $41d9: $84
    nop                                           ; $41da: $00
    ei                                            ; $41db: $fb
    jr jr_06d_4220                                ; $41dc: $18 $42

    pop bc                                        ; $41de: $c1
    db $e4                                        ; $41df: $e4
    nop                                           ; $41e0: $00
    ld b, h                                       ; $41e1: $44
    jp nz, $e4c1                                  ; $41e2: $c2 $c1 $e4

    ret nz                                        ; $41e5: $c0

    ld [c], a                                     ; $41e6: $e2
    ld c, c                                       ; $41e7: $49
    xor l                                         ; $41e8: $ad

jr_06d_41e9:
    adc a                                         ; $41e9: $8f
    ld d, [hl]                                    ; $41ea: $56
    pop bc                                        ; $41eb: $c1
    db $e4                                        ; $41ec: $e4
    ld [$4881], sp                                ; $41ed: $08 $81 $48
    ld h, c                                       ; $41f0: $61
    ld b, b                                       ; $41f1: $40
    ld c, c                                       ; $41f2: $49
    ld h, c                                       ; $41f3: $61
    xor [hl]                                      ; $41f4: $ae
    add e                                         ; $41f5: $83
    nop                                           ; $41f6: $00
    cp $a0                                        ; $41f7: $fe $a0
    pop bc                                        ; $41f9: $c1
    dec d                                         ; $41fa: $15
    and h                                         ; $41fb: $a4
    ret                                           ; $41fc: $c9


    ld h, c                                       ; $41fd: $61
    ld a, [bc]                                    ; $41fe: $0a
    add [hl]                                      ; $41ff: $86

Jump_06d_4200:
    and d                                         ; $4200: $a2
    nop                                           ; $4201: $00
    ld c, d                                       ; $4202: $4a
    add d                                         ; $4203: $82
    and a                                         ; $4204: $a7
    pop bc                                        ; $4205: $c1
    nop                                           ; $4206: $00
    rst $38                                       ; $4207: $ff
    ld d, h                                       ; $4208: $54
    inc hl                                        ; $4209: $23
    ld d, b                                       ; $420a: $50
    ld b, b                                       ; $420b: $40
    jp z, Jump_06d_4b81                           ; $420c: $ca $81 $4b

    add b                                         ; $420f: $80
    ld b, [hl]                                    ; $4210: $46
    and c                                         ; $4211: $a1
    jr nz, jr_06d_4216                            ; $4212: $20 $02

    db $e3                                        ; $4214: $e3
    db $ec                                        ; $4215: $ec

jr_06d_4216:
    ld de, $f000                                  ; $4216: $11 $00 $f0
    ret nz                                        ; $4219: $c0

    db $e3                                        ; $421a: $e3
    ld c, l                                       ; $421b: $4d
    ld h, b                                       ; $421c: $60
    ld a, [bc]                                    ; $421d: $0a
    dec bc                                        ; $421e: $0b
    add b                                         ; $421f: $80

jr_06d_4220:
    adc c                                         ; $4220: $89
    ld b, e                                       ; $4221: $43
    jr nz, jr_06d_41e9                            ; $4222: $20 $c5

    ld hl, $42c8                                  ; $4224: $21 $c8 $42
    nop                                           ; $4227: $00
    db $fc                                        ; $4228: $fc
    inc hl                                        ; $4229: $23
    ld b, h                                       ; $422a: $44
    ret nz                                        ; $422b: $c0

    db $e4                                        ; $422c: $e4
    dec bc                                        ; $422d: $0b
    add h                                         ; $422e: $84
    ldh [$c9], a                                  ; $422f: $e0 $c9
    add e                                         ; $4231: $83
    nop                                           ; $4232: $00
    dec bc                                        ; $4233: $0b
    ld h, d                                       ; $4234: $62
    adc $6f                                       ; $4235: $ce $6f
    sbc c                                         ; $4237: $99
    ld c, $98                                     ; $4238: $0e $98
    inc bc                                        ; $423a: $03

jr_06d_423b:
    ld [$cea2], sp                                ; $423b: $08 $a2 $ce
    ld b, c                                       ; $423e: $41
    pop bc                                        ; $423f: $c1
    push hl                                       ; $4240: $e5
    inc c                                         ; $4241: $0c
    add e                                         ; $4242: $83
    nop                                           ; $4243: $00
    adc $6e                                       ; $4244: $ce $6e
    adc a                                         ; $4246: $8f
    jr nc, @-$39                                  ; $4247: $30 $c5

    add e                                         ; $4249: $83
    ld [$86a0], sp                                ; $424a: $08 $a0 $86
    jp $830d                                      ; $424d: $c3 $0d $83


    inc c                                         ; $4250: $0c
    add l                                         ; $4251: $85
    nop                                           ; $4252: $00
    rst $38                                       ; $4253: $ff
    ld [bc], a                                    ; $4254: $02
    ret z                                         ; $4255: $c8

    and l                                         ; $4256: $a5
    dec bc                                        ; $4257: $0b
    jp $c0c1                                      ; $4258: $c3 $c1 $c0


    db $e4                                        ; $425b: $e4
    adc b                                         ; $425c: $88
    add d                                         ; $425d: $82
    inc c                                         ; $425e: $0c
    add e                                         ; $425f: $83
    ld [c], a                                     ; $4260: $e2
    ld [de], a                                    ; $4261: $12
    adc a                                         ; $4262: $8f
    ld l, c                                       ; $4263: $69
    nop                                           ; $4264: $00
    and b                                         ; $4265: $a0
    and b                                         ; $4266: $a0
    and b                                         ; $4267: $a0
    ld h, b                                       ; $4268: $60
    ld c, l                                       ; $4269: $4d
    add c                                         ; $426a: $81
    add e                                         ; $426b: $83
    and d                                         ; $426c: $a2
    ld c, a                                       ; $426d: $4f
    ld h, a                                       ; $426e: $67
    ret c                                         ; $426f: $d8

    inc sp                                        ; $4270: $33
    adc a                                         ; $4271: $8f
    ld l, [hl]                                    ; $4272: $6e
    sub [hl]                                      ; $4273: $96
    inc bc                                        ; $4274: $03
    nop                                           ; $4275: $00
    ld c, h                                       ; $4276: $4c
    ret nz                                        ; $4277: $c0

    rrca                                          ; $4278: $0f
    jr nz, jr_06d_423b                            ; $4279: $20 $c0

    db $e3                                        ; $427b: $e3
    add e                                         ; $427c: $83
    ld [c], a                                     ; $427d: $e2
    ld a, [c]                                     ; $427e: $f2
    ld b, l                                       ; $427f: $45
    nop                                           ; $4280: $00
    ld sp, hl                                     ; $4281: $f9
    add e                                         ; $4282: $83
    call nz, $82cb                                ; $4283: $c4 $cb $82
    ld [bc], a                                    ; $4286: $02
    sub [hl]                                      ; $4287: $96
    jr nz, jr_06d_42b4                            ; $4288: $20 $2a

    cp [hl]                                       ; $428a: $be
    ld [c], a                                     ; $428b: $e2
    ld d, b                                       ; $428c: $50
    ld h, c                                       ; $428d: $61
    cp b                                          ; $428e: $b8
    ld b, e                                       ; $428f: $43
    add l                                         ; $4290: $85
    xor l                                         ; $4291: $ad
    nop                                           ; $4292: $00
    ld l, l                                       ; $4293: $6d
    daa                                           ; $4294: $27
    inc b                                         ; $4295: $04
    inc l                                         ; $4296: $2c
    sub b                                         ; $4297: $90
    ld h, d                                       ; $4298: $62
    jp nz, Jump_000_0ae0                          ; $4299: $c2 $e0 $0a

    ld a, [hl+]                                   ; $429c: $2a
    ld c, l                                       ; $429d: $4d
    ld h, c                                       ; $429e: $61
    ld l, e                                       ; $429f: $6b
    rlca                                          ; $42a0: $07
    pop bc                                        ; $42a1: $c1
    ld a, b                                       ; $42a2: $78
    inc bc                                        ; $42a3: $03
    jr nc, jr_06d_42b0                            ; $42a4: $30 $0a

    adc d                                         ; $42a6: $8a
    nop                                           ; $42a7: $00
    ld d, c                                       ; $42a8: $51
    call nc, Call_06d_4303                        ; $42a9: $d4 $03 $43
    ld [c], a                                     ; $42ac: $e2
    ld a, [bc]                                    ; $42ad: $0a
    ld a, [hl+]                                   ; $42ae: $2a
    adc l                                         ; $42af: $8d

jr_06d_42b0:
    ld b, b                                       ; $42b0: $40
    ld a, [bc]                                    ; $42b1: $0a

Jump_06d_42b2:
    add d                                         ; $42b2: $82
    nop                                           ; $42b3: $00

jr_06d_42b4:
    jp z, $8563                                   ; $42b4: $ca $63 $85

    pop af                                        ; $42b7: $f1
    nop                                           ; $42b8: $00
    dec l                                         ; $42b9: $2d
    and $84                                       ; $42ba: $e6 $84
    ld d, c                                       ; $42bc: $51
    and b                                         ; $42bd: $a0
    ld d, d                                       ; $42be: $52
    ld b, c                                       ; $42bf: $41
    jp nz, $cbe1                                  ; $42c0: $c2 $e1 $cb

    ld h, c                                       ; $42c3: $61
    nop                                           ; $42c4: $00
    rst $00                                       ; $42c5: $c7
    and h                                         ; $42c6: $a4
    ld a, [bc]                                    ; $42c7: $0a
    xor d                                         ; $42c8: $aa
    nop                                           ; $42c9: $00
    or [hl]                                       ; $42ca: $b6
    inc c                                         ; $42cb: $0c
    add d                                         ; $42cc: $82
    db $d3                                        ; $42cd: $d3
    ld [hl+], a                                   ; $42ce: $22
    add [hl]                                      ; $42cf: $86
    and d                                         ; $42d0: $a2
    rst $00                                       ; $42d1: $c7
    and a                                         ; $42d2: $a7
    ret c                                         ; $42d3: $d8

    sub a                                         ; $42d4: $97
    nop                                           ; $42d5: $00
    rst $10                                       ; $42d6: $d7
    ld h, $c3                                     ; $42d7: $26 $c3
    jp Jump_06d_4592                              ; $42d9: $c3 $92 $45


    jp nc, Jump_06d_4b26                          ; $42dc: $d2 $26 $4b

    ld h, a                                       ; $42df: $67
    ret c                                         ; $42e0: $d8

    ld d, [hl]                                    ; $42e1: $56
    inc d                                         ; $42e2: $14
    ld b, e                                       ; $42e3: $43
    ld a, [$01e4]                                 ; $42e4: $fa $e4 $01
    ld l, e                                       ; $42e7: $6b
    sub d                                         ; $42e8: $92
    ld b, d                                       ; $42e9: $42
    sub e                                         ; $42ea: $93
    ld h, $cb                                     ; $42eb: $26 $cb
    ld b, c                                       ; $42ed: $41
    rst $00                                       ; $42ee: $c7
    and h                                         ; $42ef: $a4
    nop                                           ; $42f0: $00
    ret c                                         ; $42f1: $d8

    ret z                                         ; $42f2: $c8

    add l                                         ; $42f3: $85
    push bc                                       ; $42f4: $c5
    and d                                         ; $42f5: $a2
    nop                                           ; $42f6: $00
    inc de                                        ; $42f7: $13
    ld b, d                                       ; $42f8: $42
    jp z, $8b84                                   ; $42f9: $ca $84 $8b

    ld b, b                                       ; $42fc: $40
    add hl, sp                                    ; $42fd: $39
    inc bc                                        ; $42fe: $03
    nop                                           ; $42ff: $00
    rst $38                                       ; $4300: $ff
    sub b                                         ; $4301: $90
    ld b, e                                       ; $4302: $43

Call_06d_4303:
    ld d, l                                       ; $4303: $55
    ld hl, $22d3                                  ; $4304: $21 $d3 $22
    ld b, $c1                                     ; $4307: $06 $c1
    db $e4                                        ; $4309: $e4
    dec c                                         ; $430a: $0d
    ld l, l                                       ; $430b: $6d
    ld [hl+], a                                   ; $430c: $22
    rst $20                                       ; $430d: $e7
    nop                                           ; $430e: $00
    ld a, [$2138]                                 ; $430f: $fa $38 $21
    ld a, [de]                                    ; $4312: $1a
    and c                                         ; $4313: $a1
    sub h                                         ; $4314: $94
    ld hl, $8400                                  ; $4315: $21 $00 $84
    and b                                         ; $4318: $a0
    call nz, $c3a3                                ; $4319: $c4 $a3 $c3
    and e                                         ; $431c: $a3
    ld h, a                                       ; $431d: $67
    add d                                         ; $431e: $82
    nop                                           ; $431f: $00
    ld a, [$2293]                                 ; $4320: $fa $93 $22
    dec c                                         ; $4323: $0d
    inc hl                                        ; $4324: $23
    ld b, [hl]                                    ; $4325: $46
    and d                                         ; $4326: $a2
    nop                                           ; $4327: $00
    adc [hl]                                      ; $4328: $8e
    ld h, b                                       ; $4329: $60
    ld b, c                                       ; $432a: $41
    and c                                         ; $432b: $a1
    ret z                                         ; $432c: $c8

    add l                                         ; $432d: $85
    ret c                                         ; $432e: $d8

    jr @-$79                                      ; $432f: $18 $85

    ld h, l                                       ; $4331: $65
    xor a                                         ; $4332: $af
    ld bc, $2193                                  ; $4333: $01 $93 $21
    cp a                                          ; $4336: $bf
    pop bc                                        ; $4337: $c1
    nop                                           ; $4338: $00
    ld bc, $c8a5                                  ; $4339: $01 $a5 $c8
    add b                                         ; $433c: $80
    add l                                         ; $433d: $85
    db $db                                        ; $433e: $db
    nop                                           ; $433f: $00
    ld l, b                                       ; $4340: $68
    ret c                                         ; $4341: $d8

    inc bc                                        ; $4342: $03
    dec d                                         ; $4343: $15
    add d                                         ; $4344: $82
    rst $00                                       ; $4345: $c7
    jp Jump_06d_6148                              ; $4346: $c3 $48 $61


    ld [$430f], sp                                ; $4349: $08 $0f $43
    ld e, l                                       ; $434c: $5d
    jr jr_06d_4359                                ; $434d: $18 $0a

    adc b                                         ; $434f: $88
    ld l, l                                       ; $4350: $6d
    adc h                                         ; $4351: $8c
    and c                                         ; $4352: $a1
    ld c, h                                       ; $4353: $4c
    add c                                         ; $4354: $81
    ld a, a                                       ; $4355: $7f
    and b                                         ; $4356: $a0
    adc [hl]                                      ; $4357: $8e
    ld h, l                                       ; $4358: $65

jr_06d_4359:
    nop                                           ; $4359: $00
    ld d, b                                       ; $435a: $50
    inc h                                         ; $435b: $24
    add l                                         ; $435c: $85
    or e                                          ; $435d: $b3
    adc $68                                       ; $435e: $ce $68
    ld a, [hl+]                                   ; $4360: $2a
    ld bc, $a04b                                  ; $4361: $01 $4b $a0
    dec c                                         ; $4364: $0d
    and d                                         ; $4365: $a2
    inc d                                         ; $4366: $14
    inc h                                         ; $4367: $24
    inc c                                         ; $4368: $0c
    add b                                         ; $4369: $80
    nop                                           ; $436a: $00
    ld e, h                                       ; $436b: $5c
    inc bc                                        ; $436c: $03
    ld e, l                                       ; $436d: $5d
    ld a, [de]                                    ; $436e: $1a
    ld [hl], b                                    ; $436f: $70
    jp nz, $82ca                                  ; $4370: $c2 $ca $82

    pop bc                                        ; $4373: $c1
    pop hl                                        ; $4374: $e1
    cp a                                          ; $4375: $bf
    push hl                                       ; $4376: $e5
    ld b, l                                       ; $4377: $45
    db $e3                                        ; $4378: $e3
    or [hl]                                       ; $4379: $b6
    ld b, l                                       ; $437a: $45
    nop                                           ; $437b: $00
    add l                                         ; $437c: $85
    ld sp, hl                                     ; $437d: $f9
    adc a                                         ; $437e: $8f
    ld b, d                                       ; $437f: $42
    adc d                                         ; $4380: $8a
    add d                                         ; $4381: $82
    adc h                                         ; $4382: $8c
    and c                                         ; $4383: $a1
    sub [hl]                                      ; $4384: $96
    ld hl, $e23e                                  ; $4385: $21 $3e $e2
    add e                                         ; $4388: $83
    pop hl                                        ; $4389: $e1
    ret nz                                        ; $438a: $c0

    rst $20                                       ; $438b: $e7
    add b                                         ; $438c: $80
    nop                                           ; $438d: $00
    ei                                            ; $438e: $fb
    ret nz                                        ; $438f: $c0

    add sp, $7e                                   ; $4390: $e8 $7e
    push hl                                       ; $4392: $e5
    sbc b                                         ; $4393: $98
    inc bc                                        ; $4394: $03
    ld b, [hl]                                    ; $4395: $46
    rst $00                                       ; $4396: $c7
    ld a, e                                       ; $4397: $7b
    ei                                            ; $4398: $fb
    ld a, [bc]                                    ; $4399: $0a
    ld b, e                                       ; $439a: $43
    ld l, e                                       ; $439b: $6b
    add c                                         ; $439c: $81
    ld c, e                                       ; $439d: $4b
    res 0, c                                      ; $439e: $cb $81

Jump_06d_43a0:
    ld a, [hl]                                    ; $43a0: $7e
    db $e3                                        ; $43a1: $e3
    ld c, [hl]                                    ; $43a2: $4e
    add e                                         ; $43a3: $83
    add l                                         ; $43a4: $85
    cp $00                                        ; $43a5: $fe $00
    rst $00                                       ; $43a7: $c7
    ld [$2d40], sp                                ; $43a8: $08 $40 $2d
    ld c, $bf                                     ; $43ab: $0e $bf
    ld [c], a                                     ; $43ad: $e2
    dec hl                                        ; $43ae: $2b
    dec hl                                        ; $43af: $2b
    dec hl                                        ; $43b0: $2b
    sub b                                         ; $43b1: $90
    jr nz, jr_06d_43ca                            ; $43b2: $20 $16

    ld hl, $6295                                  ; $43b4: $21 $95 $62
    add l                                         ; $43b7: $85
    db $fd                                        ; $43b8: $fd
    nop                                           ; $43b9: $00
    nop                                           ; $43ba: $00
    db $e3                                        ; $43bb: $e3
    ld h, $43                                     ; $43bc: $26 $43
    cp a                                          ; $43be: $bf
    ld [c], a                                     ; $43bf: $e2
    pop bc                                        ; $43c0: $c1
    pop hl                                        ; $43c1: $e1
    ld d, $26                                     ; $43c2: $16 $26
    ld a, e                                       ; $43c4: $7b
    rst $38                                       ; $43c5: $ff

Jump_06d_43c6:
    sub h                                         ; $43c6: $94
    dec h                                         ; $43c7: $25
    jr nz, jr_06d_442c                            ; $43c8: $20 $62

jr_06d_43ca:
    ld bc, $0c2d                                  ; $43ca: $01 $2d $0c
    ld b, b                                       ; $43cd: $40
    add d                                         ; $43ce: $82
    pop hl                                        ; $43cf: $e1
    ld a, [$c182]                                 ; $43d0: $fa $82 $c1
    jp $da85                                      ; $43d3: $c3 $85 $da


    nop                                           ; $43d6: $00
    res 7, a                                      ; $43d7: $cb $bf
    pop hl                                        ; $43d9: $e1
    nop                                           ; $43da: $00
    jp z, Jump_06d_4c81                           ; $43db: $ca $81 $4c

    and e                                         ; $43de: $a3
    add l                                         ; $43df: $85
    rst $38                                       ; $43e0: $ff
    nop                                           ; $43e1: $00
    ret z                                         ; $43e2: $c8

    sub e                                         ; $43e3: $93
    db $e4                                        ; $43e4: $e4
    adc h                                         ; $43e5: $8c
    ld [c], a                                     ; $43e6: $e2
    ld e, b                                       ; $43e7: $58
    inc h                                         ; $43e8: $24
    add l                                         ; $43e9: $85
    rst $38                                       ; $43ea: $ff
    nop                                           ; $43eb: $00
    nop                                           ; $43ec: $00
    inc l                                         ; $43ed: $2c
    ld [hl], $05                                  ; $43ee: $36 $05
    ld b, a                                       ; $43f0: $47
    pop hl                                        ; $43f1: $e1
    ld c, h                                       ; $43f2: $4c
    and [hl]                                      ; $43f3: $a6
    ld a, e                                       ; $43f4: $7b
    rst $38                                       ; $43f5: $ff
    ld a, [bc]                                    ; $43f6: $0a
    daa                                           ; $43f7: $27
    rst $20                                       ; $43f8: $e7
    ld h, l                                       ; $43f9: $65
    jr @+$26                                      ; $43fa: $18 $24

    nop                                           ; $43fc: $00
    inc d                                         ; $43fd: $14
    ld d, h                                       ; $43fe: $54
    nop                                           ; $43ff: $00
    ld c, l                                       ; $4400: $4d
    nop                                           ; $4401: $00
    nop                                           ; $4402: $00
    nop                                           ; $4403: $00
    rst $38                                       ; $4404: $ff
    pop hl                                        ; $4405: $e1
    ld [c], a                                     ; $4406: $e2
    db $e3                                        ; $4407: $e3
    db $e4                                        ; $4408: $e4
    call c, $a0dd                                 ; $4409: $dc $dd $a0
    sbc $f3                                       ; $440c: $de $f3
    rst $18                                       ; $440e: $df
    ldh [$f6], a                                  ; $440f: $e0 $f6
    rst $38                                       ; $4411: $ff
    db $ec                                        ; $4412: $ec
    pop af                                        ; $4413: $f1
    ld [$eceb], a                                 ; $4414: $ea $eb $ec
    and b                                         ; $4417: $a0
    ccf                                           ; $4418: $3f
    push hl                                       ; $4419: $e5
    and $e7                                       ; $441a: $e6 $e7
    and b                                         ; $441c: $a0
    add sp, -$17                                  ; $441d: $e8 $e9
    or $ff                                        ; $441f: $f6 $ff
    db $ec                                        ; $4421: $ec
    pop af                                        ; $4422: $f1
    db $fc                                        ; $4423: $fc
    sbc c                                         ; $4424: $99
    rst $38                                       ; $4425: $ff
    ld [c], a                                     ; $4426: $e2
    rst $20                                       ; $4427: $e7
    sub $d7                                       ; $4428: $d6 $d7
    and b                                         ; $442a: $a0
    db $e3                                        ; $442b: $e3

jr_06d_442c:
    db $e4                                        ; $442c: $e4
    and b                                         ; $442d: $a0
    ld [hl], c                                    ; $442e: $71
    and b                                         ; $442f: $a0
    adc $ea                                       ; $4430: $ce $ea
    sbc c                                         ; $4432: $99
    rst $38                                       ; $4433: $ff
    ld [c], a                                     ; $4434: $e2
    and $a0                                       ; $4435: $e6 $a0
    ret c                                         ; $4437: $d8

    reti                                          ; $4438: $d9


    jp Jump_06d_60e0                              ; $4439: $c3 $e0 $60


    cp e                                          ; $443c: $bb
    ldh [$ce], a                                  ; $443d: $e0 $ce
    jp hl                                         ; $443f: $e9


    add l                                         ; $4440: $85
    rst $38                                       ; $4441: $ff
    ld [c], a                                     ; $4442: $e2
    ld [c], a                                     ; $4443: $e2
    ret                                           ; $4444: $c9


    ld [c], a                                     ; $4445: $e2
    jp c, $53db                                   ; $4446: $da $db $53

    ldh [$c6], a                                  ; $4449: $e0 $c6
    cp e                                          ; $444b: $bb
    ldh [$d0], a                                  ; $444c: $e0 $d0
    pop de                                        ; $444e: $d1
    nop                                           ; $444f: $00
    rst $38                                       ; $4450: $ff
    add l                                         ; $4451: $85
    db $ec                                        ; $4452: $ec
    add h                                         ; $4453: $84
    pop hl                                        ; $4454: $e1
    push af                                       ; $4455: $f5
    or $8c                                        ; $4456: $f6 $8c
    ld b, h                                       ; $4458: $44
    ldh [$bb], a                                  ; $4459: $e0 $bb
    pop hl                                        ; $445b: $e1
    jp nc, Jump_000_00d3                          ; $445c: $d2 $d3 $00

    rst $38                                       ; $445f: $ff
    db $ec                                        ; $4460: $ec
    db $ec                                        ; $4461: $ec
    add h                                         ; $4462: $84
    pop hl                                        ; $4463: $e1
    sbc a                                         ; $4464: $9f
    rst $38                                       ; $4465: $ff
    and d                                         ; $4466: $a2
    sbc l                                         ; $4467: $9d
    sbc l                                         ; $4468: $9d
    sbc l                                         ; $4469: $9d
    sbc a                                         ; $446a: $9f
    and b                                         ; $446b: $a0
    db $ed                                        ; $446c: $ed
    xor $8f                                       ; $446d: $ee $8f
    call nc, $efd5                                ; $446f: $d4 $d5 $ef
    and b                                         ; $4472: $a0
    or $c0                                        ; $4473: $f6 $c0
    nop                                           ; $4475: $00
    rst $38                                       ; $4476: $ff
    ld h, a                                       ; $4477: $67
    and $d0                                       ; $4478: $e6 $d0
    rst $38                                       ; $447a: $ff
    pop de                                        ; $447b: $d1
    and b                                         ; $447c: $a0
    and b                                         ; $447d: $a0
    sbc a                                         ; $447e: $9f
    sbc h                                         ; $447f: $9c
    or d                                          ; $4480: $b2
    ld b, [hl]                                    ; $4481: $46
    ld b, [hl]                                    ; $4482: $46
    rst $38                                       ; $4483: $ff
    or d                                          ; $4484: $b2
    sbc h                                         ; $4485: $9c
    sbc a                                         ; $4486: $9f
    ldh a, [$f1]                                  ; $4487: $f0 $f1
    ld a, [c]                                     ; $4489: $f2
    di                                            ; $448a: $f3
    db $f4                                        ; $448b: $f4
    jr nc, @-$04                                  ; $448c: $30 $fa

    pop bc                                        ; $448e: $c1
    nop                                           ; $448f: $00
    rst $38                                       ; $4490: $ff
    add l                                         ; $4491: $85
    db $e3                                        ; $4492: $e3
    adc [hl]                                      ; $4493: $8e
    ret nz                                        ; $4494: $c0

    jp nc, $c1d3                                  ; $4495: $d2 $d3 $c1

    db $e3                                        ; $4498: $e3
    cp $e0                                        ; $4499: $fe $e0
    dec a                                         ; $449b: $3d
    sbc h                                         ; $449c: $9c
    ld a, h                                       ; $449d: $7c
    ldh [$f5], a                                  ; $449e: $e0 $f5
    or $d8                                        ; $44a0: $f6 $d8

Jump_06d_44a2:
    reti                                          ; $44a2: $d9


    nop                                           ; $44a3: $00
    rst $38                                       ; $44a4: $ff
    ld h, a                                       ; $44a5: $67
    db $e4                                        ; $44a6: $e4
    or l                                          ; $44a7: $b5
    and b                                         ; $44a8: $a0
    ld c, [hl]                                    ; $44a9: $4e
    db $e3                                        ; $44aa: $e3
    sbc [hl]                                      ; $44ab: $9e
    jp nz, $b2e1                                  ; $44ac: $c2 $e1 $b2

    or d                                          ; $44af: $b2

Call_06d_44b0:
    cp e                                          ; $44b0: $bb
    pop hl                                        ; $44b1: $e1
    sbc h                                         ; $44b2: $9c
    ld de, $b59f                                  ; $44b3: $11 $9f $b5
    pop bc                                        ; $44b6: $c1
    nop                                           ; $44b7: $00
    rst $38                                       ; $44b8: $ff
    add l                                         ; $44b9: $85
    call nz, Call_06d_4ea0                        ; $44ba: $c4 $a0 $4e
    ld [c], a                                     ; $44bd: $e2
    ret nz                                        ; $44be: $c0

    ldh [$c2], a                                  ; $44bf: $e0 $c2
    ldh [$1f], a                                  ; $44c1: $e0 $1f
    or d                                          ; $44c3: $b2
    ld a, c                                       ; $44c4: $79
    ld a, d                                       ; $44c5: $7a
    ld a, h                                       ; $44c6: $7c
    ld a, l                                       ; $44c7: $7d
    cp a                                          ; $44c8: $bf
    pop hl                                        ; $44c9: $e1
    nop                                           ; $44ca: $00
    rst $38                                       ; $44cb: $ff
    add l                                         ; $44cc: $85
    add $ec                                       ; $44cd: $c6 $ec
    dec c                                         ; $44cf: $0d
    ret nz                                        ; $44d0: $c0

    add l                                         ; $44d1: $85
    ret nz                                        ; $44d2: $c0

    sbc [hl]                                      ; $44d3: $9e
    ld b, [hl]                                    ; $44d4: $46
    call nz, $7be0                                ; $44d5: $c4 $e0 $7b
    ld a, e                                       ; $44d8: $7b
    adc a                                         ; $44d9: $8f
    ccf                                           ; $44da: $3f
    ld c, b                                       ; $44db: $48
    ld c, b                                       ; $44dc: $48
    ld a, a                                       ; $44dd: $7f
    ld a, l                                       ; $44de: $7d
    ld b, [hl]                                    ; $44df: $46
    sbc [hl]                                      ; $44e0: $9e
    halt                                          ; $44e1: $76
    pop bc                                        ; $44e2: $c1
    nop                                           ; $44e3: $00
    rst $38                                       ; $44e4: $ff
    db $fc                                        ; $44e5: $fc
    nop                                           ; $44e6: $00
    db $e4                                        ; $44e7: $e4
    ret z                                         ; $44e8: $c8

    and c                                         ; $44e9: $a1
    sbc a                                         ; $44ea: $9f
    sbc h                                         ; $44eb: $9c
    ld b, [hl]                                    ; $44ec: $46
    ld a, c                                       ; $44ed: $79
    ld a, [hl]                                    ; $44ee: $7e
    cp l                                          ; $44ef: $bd
    rst $38                                       ; $44f0: $ff
    ld sp, $512b                                  ; $44f1: $31 $2b $51
    ld e, [hl]                                    ; $44f4: $5e
    ld d, [hl]                                    ; $44f5: $56
    ld b, l                                       ; $44f6: $45
    add c                                         ; $44f7: $81
    ld b, [hl]                                    ; $44f8: $46
    pop hl                                        ; $44f9: $e1
    and c                                         ; $44fa: $a1
    cp c                                          ; $44fb: $b9
    and b                                         ; $44fc: $a0
    nop                                           ; $44fd: $00
    rst $38                                       ; $44fe: $ff
    nop                                           ; $44ff: $00
    push hl                                       ; $4500: $e5
    ld b, h                                       ; $4501: $44
    pop bc                                        ; $4502: $c1
    sbc h                                         ; $4503: $9c
    ld b, [hl]                                    ; $4504: $46
    ld b, [hl]                                    ; $4505: $46
    ld a, a                                       ; $4506: $7f
    add b                                         ; $4507: $80
    ld b, l                                       ; $4508: $45
    ld l, $20                                     ; $4509: $2e $20
    jr nz, jr_06d_4537                            ; $450b: $20 $2a

    ld d, d                                       ; $450d: $52
    ret nz                                        ; $450e: $c0

    pop hl                                        ; $450f: $e1
    pop bc                                        ; $4510: $c1
    sbc [hl]                                      ; $4511: $9e
    ld [hl], h                                    ; $4512: $74
    and b                                         ; $4513: $a0
    nop                                           ; $4514: $00
    rst $38                                       ; $4515: $ff
    add l                                         ; $4516: $85
    and h                                         ; $4517: $a4
    ret z                                         ; $4518: $c8

    and b                                         ; $4519: $a0
    ld b, h                                       ; $451a: $44
    pop bc                                        ; $451b: $c1
    ld a, c                                       ; $451c: $79
    adc l                                         ; $451d: $8d
    rst $38                                       ; $451e: $ff
    add hl, sp                                    ; $451f: $39
    ld hl, $2026                                  ; $4520: $21 $26 $20
    jr nz, jr_06d_4552                            ; $4523: $20 $2d

    ld d, [hl]                                    ; $4525: $56
    add e                                         ; $4526: $83
    pop bc                                        ; $4527: $c1
    add h                                         ; $4528: $84
    ld b, b                                       ; $4529: $40
    ldh [$74], a                                  ; $452a: $e0 $74
    and b                                         ; $452c: $a0
    nop                                           ; $452d: $00
    rst $38                                       ; $452e: $ff
    ld a, [bc]                                    ; $452f: $0a
    and d                                         ; $4530: $a2
    rrca                                          ; $4531: $0f
    and c                                         ; $4532: $a1
    and c                                         ; $4533: $a1
    ld b, [hl]                                    ; $4534: $46
    cp $42                                        ; $4535: $fe $42

jr_06d_4537:
    ldh [$ae], a                                  ; $4537: $e0 $ae
    ld a, [hl-]                                   ; $4539: $3a
    dec [hl]                                      ; $453a: $35
    inc a                                         ; $453b: $3c
    dec hl                                        ; $453c: $2b
    ld sp, $37bd                                  ; $453d: $31 $bd $37
    add e                                         ; $4540: $83
    add [hl]                                      ; $4541: $86
    add l                                         ; $4542: $85
    ld a, [hl]                                    ; $4543: $7e
    pop bc                                        ; $4544: $c1
    push af                                       ; $4545: $f5
    or $00                                        ; $4546: $f6 $00
    rst $38                                       ; $4548: $ff
    ld h, a                                       ; $4549: $67
    and d                                         ; $454a: $a2
    db $fc                                        ; $454b: $fc
    jp z, $0380                                   ; $454c: $ca $80 $03

    ld [c], a                                     ; $454f: $e2
    or d                                          ; $4550: $b2
    xor a                                         ; $4551: $af

jr_06d_4552:
    ld l, h                                       ; $4552: $6c
    ld [hl], d                                    ; $4553: $72
    ld [hl], c                                    ; $4554: $71
    adc b                                         ; $4555: $88
    cpl                                           ; $4556: $2f
    adc b                                         ; $4557: $88
    adc b                                         ; $4558: $88
    add a                                         ; $4559: $87
    add l                                         ; $455a: $85
    cp c                                          ; $455b: $b9
    and b                                         ; $455c: $a0
    sbc [hl]                                      ; $455d: $9e
    ei                                            ; $455e: $fb
    add b                                         ; $455f: $80
    halt                                          ; $4560: $76
    add b                                         ; $4561: $80
    ld a, [c]                                     ; $4562: $f2
    nop                                           ; $4563: $00
    rst $38                                       ; $4564: $ff
    db $ec                                        ; $4565: $ec
    jp z, $c480                                   ; $4566: $ca $80 $c4

    jp nz, Jump_000_3745                          ; $4569: $c2 $45 $37

    jr c, jr_06d_45e1                             ; $456c: $38 $73

    ld h, e                                       ; $456e: $63
    ld l, [hl]                                    ; $456f: $6e
    ld [hl], $ff                                  ; $4570: $36 $ff
    and e                                         ; $4572: $a3
    ld a, d                                       ; $4573: $7a
    and b                                         ; $4574: $a0
    xor l                                         ; $4575: $ad
    and c                                         ; $4576: $a1
    and b                                         ; $4577: $a0
    and b                                         ; $4578: $a0
    nop                                           ; $4579: $00
    rst $38                                       ; $457a: $ff
    cp $46                                        ; $457b: $fe $46
    and c                                         ; $457d: $a1
    sbc [hl]                                      ; $457e: $9e
    or d                                          ; $457f: $b2
    ld b, [hl]                                    ; $4580: $46
    add b                                         ; $4581: $80
    ld b, [hl]                                    ; $4582: $46
    add hl, sp                                    ; $4583: $39
    dec [hl]                                      ; $4584: $35
    rlca                                          ; $4585: $07

Jump_06d_4586:
    ld l, h                                       ; $4586: $6c
    ld l, l                                       ; $4587: $6d
    inc a                                         ; $4588: $3c
    ret nz                                        ; $4589: $c0

    and e                                         ; $458a: $a3

jr_06d_458b:
    cp a                                          ; $458b: $bf
    and b                                         ; $458c: $a0
    ei                                            ; $458d: $fb
    add h                                         ; $458e: $84
    nop                                           ; $458f: $00
    rst $38                                       ; $4590: $ff
    sbc c                                         ; $4591: $99

Jump_06d_4592:
    pop hl                                        ; $4592: $e1
    ld a, $c0                                     ; $4593: $3e $c0
    ldh [$82], a                                  ; $4595: $e0 $82
    add e                                         ; $4597: $83
    ld a, [hl-]                                   ; $4598: $3a
    ld l, h                                       ; $4599: $6c
    ld l, a                                       ; $459a: $6f
    add c                                         ; $459b: $81
    ldh [$3d], a                                  ; $459c: $e0 $3d
    and e                                         ; $459e: $a3
    push bc                                       ; $459f: $c5
    sbc a                                         ; $45a0: $9f
    xor l                                         ; $45a1: $ad
    and e                                         ; $45a2: $a3
    and b                                         ; $45a3: $a0
    nop                                           ; $45a4: $00
    db $fd                                        ; $45a5: $fd
    sub h                                         ; $45a6: $94
    add h                                         ; $45a7: $84
    add b                                         ; $45a8: $80
    ldh [$85], a                                  ; $45a9: $e0 $85
    add a                                         ; $45ab: $87
    ld e, a                                       ; $45ac: $5f
    ld [hl], c                                    ; $45ad: $71
    ld [hl], b                                    ; $45ae: $70
    ld l, [hl]                                    ; $45af: $6e
    ld a, [hl-]                                   ; $45b0: $3a
    ld b, l                                       ; $45b1: $45
    nop                                           ; $45b2: $00
    and h                                         ; $45b3: $a4
    and b                                         ; $45b4: $a0
    inc [hl]                                      ; $45b5: $34
    add d                                         ; $45b6: $82
    ld [hl], b                                    ; $45b7: $70
    nop                                           ; $45b8: $00
    sbc $46                                       ; $45b9: $de $46
    and h                                         ; $45bb: $a4
    inc b                                         ; $45bc: $04
    pop bc                                        ; $45bd: $c1
    ld b, c                                       ; $45be: $41
    ldh [$35], a                                  ; $45bf: $e0 $35
    dec [hl]                                      ; $45c1: $35
    add hl, sp                                    ; $45c2: $39
    jp $d0e4                                      ; $45c3: $c3 $e4 $d0


    ld a, h                                       ; $45c6: $7c
    ld h, d                                       ; $45c7: $62
    nop                                           ; $45c8: $00
    cp a                                          ; $45c9: $bf
    inc d                                         ; $45ca: $14
    ld h, b                                       ; $45cb: $60
    dec b                                         ; $45cc: $05
    pop bc                                        ; $45cd: $c1
    sbc l                                         ; $45ce: $9d
    pop bc                                        ; $45cf: $c1
    pop hl                                        ; $45d0: $e1
    ld b, l                                       ; $45d1: $45
    ld a, [hl-]                                   ; $45d2: $3a
    rrca                                          ; $45d3: $0f
    dec [hl]                                      ; $45d4: $35
    dec [hl]                                      ; $45d5: $35
    inc a                                         ; $45d6: $3c
    ld b, h                                       ; $45d7: $44
    adc b                                         ; $45d8: $88
    and b                                         ; $45d9: $a0
    adc b                                         ; $45da: $88
    jp nz, Jump_06d_6137                          ; $45db: $c2 $37 $61

    nop                                           ; $45de: $00
    cp a                                          ; $45df: $bf
    pop hl                                        ; $45e0: $e1

jr_06d_45e1:
    db $ec                                        ; $45e1: $ec
    dec d                                         ; $45e2: $15
    ld h, c                                       ; $45e3: $61
    ld a, [bc]                                    ; $45e4: $0a
    add d                                         ; $45e5: $82
    add h                                         ; $45e6: $84
    ret nz                                        ; $45e7: $c0

    add c                                         ; $45e8: $81
    ldh [$36], a                                  ; $45e9: $e0 $36
    ld b, l                                       ; $45eb: $45
    ld b, [hl]                                    ; $45ec: $46
    rlca                                          ; $45ed: $07
    sbc [hl]                                      ; $45ee: $9e
    push af                                       ; $45ef: $f5
    or $88                                        ; $45f0: $f6 $88
    pop bc                                        ; $45f2: $c1
    scf                                           ; $45f3: $37
    ld h, b                                       ; $45f4: $60
    nop                                           ; $45f5: $00
    cp l                                          ; $45f6: $bd
    ld d, l                                       ; $45f7: $55
    ld h, c                                       ; $45f8: $61
    ld b, $c2                                     ; $45f9: $06 $c2
    sbc $c1                                       ; $45fb: $de $c1
    pop hl                                        ; $45fd: $e1
    ld [hl], $ac                                  ; $45fe: $36 $ac
    dec [hl]                                      ; $4600: $35
    dec sp                                        ; $4601: $3b
    pop bc                                        ; $4602: $c1
    pop hl                                        ; $4603: $e1
    or d                                          ; $4604: $b2
    sbc [hl]                                      ; $4605: $9e
    jr nz, jr_06d_458b                            ; $4606: $20 $83

    ld h, h                                       ; $4608: $64
    nop                                           ; $4609: $00
    ld a, a                                       ; $460a: $7f
    dec d                                         ; $460b: $15
    ld h, h                                       ; $460c: $64
    add a                                         ; $460d: $87
    and b                                         ; $460e: $a0
    inc b                                         ; $460f: $04
    pop hl                                        ; $4610: $e1
    xor l                                         ; $4611: $ad
    rlca                                          ; $4612: $07
    ret nz                                        ; $4613: $c0

    jp $83c0                                      ; $4614: $c3 $c0 $83


    or d                                          ; $4617: $b2
    sbc [hl]                                      ; $4618: $9e
    adc b                                         ; $4619: $88
    jp Jump_06d_5f00                              ; $461a: $c3 $00 $5f


    adc a                                         ; $461d: $8f
    ld b, c                                       ; $461e: $41
    ld [$c0a2], sp                                ; $461f: $08 $a2 $c0
    ld [c], a                                     ; $4622: $e2
    rst $08                                       ; $4623: $cf
    pop bc                                        ; $4624: $c1
    rst $08                                       ; $4625: $cf
    rst $00                                       ; $4626: $c7
    ld h, [hl]                                    ; $4627: $66
    ld b, c                                       ; $4628: $41
    ld b, c                                       ; $4629: $41
    nop                                           ; $462a: $00
    ld e, a                                       ; $462b: $5f
    adc a                                         ; $462c: $8f
    ld b, e                                       ; $462d: $43
    pop bc                                        ; $462e: $c1
    db $e4                                        ; $462f: $e4
    xor [hl]                                      ; $4630: $ae
    or d                                          ; $4631: $b2
    inc bc                                        ; $4632: $03
    adc $ce                                       ; $4633: $ce $ce
    ld b, $c2                                     ; $4635: $06 $c2
    ret                                           ; $4637: $c9


    ld h, c                                       ; $4638: $61
    db $fc                                        ; $4639: $fc
    ld [hl+], a                                   ; $463a: $22
    nop                                           ; $463b: $00
    ld e, a                                       ; $463c: $5f
    adc a                                         ; $463d: $8f
    ld b, e                                       ; $463e: $43
    add d                                         ; $463f: $82
    ld [c], a                                     ; $4640: $e2
    cp a                                          ; $4641: $bf
    or d                                          ; $4642: $b2
    xor a                                         ; $4643: $af
    or d                                          ; $4644: $b2
    adc $cc                                       ; $4645: $ce $cc
    rst $08                                       ; $4647: $cf
    inc bc                                        ; $4648: $03
    ld h, c                                       ; $4649: $61
    sbc [hl]                                      ; $464a: $9e
    ret nz                                        ; $464b: $c0

    jp $c520                                      ; $464c: $c3 $20 $c5


    pop bc                                        ; $464f: $c1
    nop                                           ; $4650: $00
    ccf                                           ; $4651: $3f
    nop                                           ; $4652: $00
    db $e3                                        ; $4653: $e3
    dec c                                         ; $4654: $0d
    ld h, c                                       ; $4655: $61
    ld c, h                                       ; $4656: $4c
    ld h, c                                       ; $4657: $61
    scf                                           ; $4658: $37
    adc $e1                                       ; $4659: $ce $e1
    set 0, b                                      ; $465b: $cb $c0
    db $e4                                        ; $465d: $e4
    ld a, [hl]                                    ; $465e: $7e
    ld [hl+], a                                   ; $465f: $22
    add l                                         ; $4660: $85
    ld h, l                                       ; $4661: $65
    nop                                           ; $4662: $00
    jp c, $d1d0                                   ; $4663: $da $d0 $d1

    push af                                       ; $4666: $f5
    db $fd                                        ; $4667: $fd
    or $0d                                        ; $4668: $f6 $0d
    ld h, c                                       ; $466a: $61

jr_06d_466b:
    ld [hl], $cf                                  ; $466b: $36 $cf
    call Call_000_35ce                            ; $466d: $cd $ce $35
    rst $08                                       ; $4670: $cf
    add c                                         ; $4671: $81
    rst $08                                       ; $4672: $cf
    ld b, [hl]                                    ; $4673: $46
    and c                                         ; $4674: $a1
    ret                                           ; $4675: $c9


    ld b, e                                       ; $4676: $43
    ld d, e                                       ; $4677: $53

jr_06d_4678:
    inc l                                         ; $4678: $2c
    inc d                                         ; $4679: $14
    dec [hl]                                      ; $467a: $35
    ld [$90a2], sp                                ; $467b: $08 $a2 $90
    ld b, b                                       ; $467e: $40
    rst $08                                       ; $467f: $cf
    cpl                                           ; $4680: $2f
    set 1, h                                      ; $4681: $cb $cc
    rst $08                                       ; $4683: $cf
    add hl, sp                                    ; $4684: $39
    adc c                                         ; $4685: $89
    ld b, e                                       ; $4686: $43
    sbc [hl]                                      ; $4687: $9e
    ld a, [hl]                                    ; $4688: $7e
    ld [hl+], a                                   ; $4689: $22
    ld d, e                                       ; $468a: $53
    inc l                                         ; $468b: $2c
    ld b, b                                       ; $468c: $40
    inc d                                         ; $468d: $14
    inc sp                                        ; $468e: $33
    ld [$50a4], sp                                ; $468f: $08 $a4 $50
    ld b, b                                       ; $4692: $40
    dec b                                         ; $4693: $05
    ldh [rWX], a                                  ; $4694: $e0 $4b
    add b                                         ; $4696: $80

jr_06d_4697:
    ld b, $42                                     ; $4697: $06 $42
    and c                                         ; $4699: $a1
    rlca                                          ; $469a: $07
    jr nz, @-$06                                  ; $469b: $20 $f8

    ld d, e                                       ; $469d: $53

Jump_06d_469e:
    ld l, $14                                     ; $469e: $2e $14
    inc sp                                        ; $46a0: $33
    ld [$b2a5], sp                                ; $46a1: $08 $a5 $b2
    ld [hl], $cc                                  ; $46a4: $36 $cc
    adc $37                                       ; $46a6: $ce $37
    jr nc, jr_06d_466b                            ; $46a8: $30 $c1

    db $e4                                        ; $46aa: $e4
    inc c                                         ; $46ab: $0c
    add e                                         ; $46ac: $83
    ld d, e                                       ; $46ad: $53
    dec l                                         ; $46ae: $2d
    inc d                                         ; $46af: $14
    dec [hl]                                      ; $46b0: $35
    sbc l                                         ; $46b1: $9d
    and d                                         ; $46b2: $a2
    ld [$41a0], sp                                ; $46b3: $08 $a0 $41
    ldh [$83], a                                  ; $46b6: $e0 $83
    call z, Call_000_0dce                         ; $46b8: $cc $ce $0d
    add e                                         ; $46bb: $83
    ld b, a                                       ; $46bc: $47
    jr nz, jr_06d_46c6                            ; $46bd: $20 $07

    inc hl                                        ; $46bf: $23
    nop                                           ; $46c0: $00

Call_06d_46c1:
    rst $38                                       ; $46c1: $ff
    ret z                                         ; $46c2: $c8

    and [hl]                                      ; $46c3: $a6
    or d                                          ; $46c4: $b2
    rlca                                          ; $46c5: $07

jr_06d_46c6:
    scf                                           ; $46c6: $37
    jr c, jr_06d_4697                             ; $46c7: $38 $ce

    ret nz                                        ; $46c9: $c0

    db $e4                                        ; $46ca: $e4
    adc [hl]                                      ; $46cb: $8e
    ld h, c                                       ; $46cc: $61
    inc c                                         ; $46cd: $0c
    add e                                         ; $46ce: $83
    nop                                           ; $46cf: $00
    db $fd                                        ; $46d0: $fd
    res 0, h                                      ; $46d1: $cb $84
    ld e, [hl]                                    ; $46d3: $5e
    add hl, bc                                    ; $46d4: $09
    and d                                         ; $46d5: $a2
    dec [hl]                                      ; $46d6: $35
    dec [hl]                                      ; $46d7: $35
    rst $08                                       ; $46d8: $cf
    call $c206                                    ; $46d9: $cd $06 $c2
    sbc h                                         ; $46dc: $9c
    adc b                                         ; $46dd: $88
    nop                                           ; $46de: $00
    db $e3                                        ; $46df: $e3
    sub $d7                                       ; $46e0: $d6 $d7
    ret c                                         ; $46e2: $d8

    ld d, c                                       ; $46e3: $51
    nop                                           ; $46e4: $00
    ld l, [hl]                                    ; $46e5: $6e
    res 0, l                                      ; $46e6: $cb $85
    ld b, [hl]                                    ; $46e8: $46
    ld b, [hl]                                    ; $46e9: $46
    ld b, b                                       ; $46ea: $40
    dec b                                         ; $46eb: $05
    jr c, jr_06d_4678                             ; $46ec: $38 $8a

    add c                                         ; $46ee: $81
    inc a                                         ; $46ef: $3c
    ld b, [hl]                                    ; $46f0: $46
    jp Jump_000_01cd                              ; $46f1: $c3 $cd $01


    ret c                                         ; $46f4: $d8

    ld d, c                                       ; $46f5: $51
    inc d                                         ; $46f6: $14
    dec l                                         ; $46f7: $2d
    daa                                           ; $46f8: $27
    ld b, c                                       ; $46f9: $41
    ld a, $d5                                     ; $46fa: $3e $d5
    ld [bc], a                                    ; $46fc: $02
    ld b, l                                       ; $46fd: $45
    ld d, b                                       ; $46fe: $50
    ld c, b                                       ; $46ff: $48
    ld c, c                                       ; $4700: $49
    ld c, c                                       ; $4701: $49
    ld a, [bc]                                    ; $4702: $0a
    add b                                         ; $4703: $80
    adc e                                         ; $4704: $8b
    ld h, b                                       ; $4705: $60
    jr nc, @+$0b                                  ; $4706: $30 $09

    and e                                         ; $4708: $a3
    ld c, e                                       ; $4709: $4b
    add d                                         ; $470a: $82
    ld d, e                                       ; $470b: $53
    ld c, [hl]                                    ; $470c: $4e
    inc d                                         ; $470d: $14
    ld c, e                                       ; $470e: $4b
    push af                                       ; $470f: $f5

jr_06d_4710:
    or $27                                        ; $4710: $f6 $27
    nop                                           ; $4712: $00
    sub b                                         ; $4713: $90
    ld h, d                                       ; $4714: $62
    cp a                                          ; $4715: $bf
    ld b, l                                       ; $4716: $45
    ld b, a                                       ; $4717: $47
    ld e, l                                       ; $4718: $5d
    ld d, h                                       ; $4719: $54
    ld d, h                                       ; $471a: $54
    ld d, h                                       ; $471b: $54
    jp z, Jump_000_3960                           ; $471c: $ca $60 $39

    ldh [rOBP0], a                                ; $471f: $e0 $48
    and c                                         ; $4721: $a1
    add a                                         ; $4722: $87
    and [hl]                                      ; $4723: $a6
    nop                                           ; $4724: $00
    call c, Call_000_2214                         ; $4725: $dc $14 $22
    ld d, [hl]                                    ; $4728: $56
    ld [bc], a                                    ; $4729: $02
    ld b, h                                       ; $472a: $44
    ld d, h                                       ; $472b: $54
    ld d, d                                       ; $472c: $52
    add c                                         ; $472d: $81
    ld [hl], $40                                  ; $472e: $36 $40
    pop hl                                        ; $4730: $e1
    bit 4, b                                      ; $4731: $cb $60
    jp nc, $9101                                  ; $4733: $d2 $01 $91

    jr nz, jr_06d_4710                            ; $4736: $20 $d8

    inc sp                                        ; $4738: $33
    nop                                           ; $4739: $00
    ld c, e                                       ; $473a: $4b
    ret nc                                        ; $473b: $d0

    ld [hl], l                                    ; $473c: $75
    pop de                                        ; $473d: $d1
    ld b, c                                       ; $473e: $41
    db $e4                                        ; $473f: $e4
    ld b, l                                       ; $4740: $45
    jp Jump_000_35e2                              ; $4741: $c3 $e2 $35


    jr c, jr_06d_477d                             ; $4744: $38 $37

    bit 4, b                                      ; $4746: $cb $60
    nop                                           ; $4748: $00
    rst $00                                       ; $4749: $c7
    and d                                         ; $474a: $a2
    add l                                         ; $474b: $85
    or b                                          ; $474c: $b0
    nop                                           ; $474d: $00
    ld [hl], b                                    ; $474e: $70
    db $eb                                        ; $474f: $eb
    ld hl, $a1c9                                  ; $4750: $21 $c9 $a1
    add l                                         ; $4753: $85
    pop bc                                        ; $4754: $c1
    jp nz, $12e1                                  ; $4755: $c2 $e1 $12

    ld b, h                                       ; $4758: $44
    and b                                         ; $4759: $a0

jr_06d_475a:
    db $d3                                        ; $475a: $d3
    ld [hl+], a                                   ; $475b: $22
    ret c                                         ; $475c: $d8

    inc de                                        ; $475d: $13
    nop                                           ; $475e: $00
    jr z, jr_06d_47b3                             ; $475f: $28 $52

    ld b, e                                       ; $4761: $43
    sub d                                         ; $4762: $92
    ld b, [hl]                                    ; $4763: $46
    dec [hl]                                      ; $4764: $35
    sub e                                         ; $4765: $93
    inc h                                         ; $4766: $24
    ld b, [hl]                                    ; $4767: $46
    db $10                                        ; $4768: $10
    ld c, e                                       ; $4769: $4b
    ld h, l                                       ; $476a: $65
    ret c                                         ; $476b: $d8

    ld [de], a                                    ; $476c: $12
    add l                                         ; $476d: $85
    ret                                           ; $476e: $c9


    db $eb                                        ; $476f: $eb
    ld [hl+], a                                   ; $4770: $22
    and c                                         ; $4771: $a1
    ret nc                                        ; $4772: $d0

    ld b, c                                       ; $4773: $41
    sub d                                         ; $4774: $92
    ld b, b                                       ; $4775: $40
    pop bc                                        ; $4776: $c1
    and $81                                       ; $4777: $e6 $81
    ld b, [hl]                                    ; $4779: $46
    ld c, e                                       ; $477a: $4b
    ld h, h                                       ; $477b: $64
    nop                                           ; $477c: $00

jr_06d_477d:
    ei                                            ; $477d: $fb
    db $10                                        ; $477e: $10
    ld h, c                                       ; $477f: $61
    ld c, l                                       ; $4780: $4d
    ld h, c                                       ; $4781: $61
    push bc                                       ; $4782: $c5
    and d                                         ; $4783: $a2
    inc de                                        ; $4784: $13
    ld b, c                                       ; $4785: $41
    ld a, [hl-]                                   ; $4786: $3a
    nop                                           ; $4787: $00
    jp z, $c984                                   ; $4788: $ca $84 $c9

    ld h, b                                       ; $478b: $60
    ld c, h                                       ; $478c: $4c
    ld h, b                                       ; $478d: $60
    ret nc                                        ; $478e: $d0

    ld hl, $fe00                                  ; $478f: $21 $00 $fe
    sub b                                         ; $4792: $90

jr_06d_4793:
    ld b, e                                       ; $4793: $43
    sub $40                                       ; $4794: $d6 $40
    add c                                         ; $4796: $81
    pop hl                                        ; $4797: $e1
    inc c                                         ; $4798: $0c
    ld c, b                                       ; $4799: $48
    ret nz                                        ; $479a: $c0

    ret nz                                        ; $479b: $c0

    db $e3                                        ; $479c: $e3
    sbc h                                         ; $479d: $9c
    sbc a                                         ; $479e: $9f
    jp z, Jump_06d_5d60                           ; $479f: $ca $60 $5d

    ld d, $85                                     ; $47a2: $16 $85
    add hl, bc                                    ; $47a4: $09
    sub [hl]                                      ; $47a5: $96
    ld bc, $d700                                  ; $47a6: $01 $00 $d7
    ld b, c                                       ; $47a9: $41
    sub h                                         ; $47aa: $94
    jr nz, @-$77                                  ; $47ab: $20 $87

    pop bc                                        ; $47ad: $c1
    pop bc                                        ; $47ae: $c1
    push hl                                       ; $47af: $e5
    jp z, Jump_06d_5d61                           ; $47b0: $ca $61 $5d

jr_06d_47b3:
    ld d, $00                                     ; $47b3: $16 $00
    inc h                                         ; $47b5: $24
    xor b                                         ; $47b6: $a8
    ld b, c                                       ; $47b7: $41
    ld a, [de]                                    ; $47b8: $1a
    sub e                                         ; $47b9: $93
    jr nz, jr_06d_475a                            ; $47ba: $20 $9e

    ld d, c                                       ; $47bc: $51
    ld h, c                                       ; $47bd: $61

jr_06d_47be:
    ld b, [hl]                                    ; $47be: $46
    add hl, sp                                    ; $47bf: $39
    jp nz, $89e2                                  ; $47c0: $c2 $e2 $89

    add l                                         ; $47c3: $85
    ld a, e                                       ; $47c4: $7b
    jr nz, jr_06d_47cf                            ; $47c5: $20 $08

    ld e, l                                       ; $47c7: $5d
    jr jr_06d_47ca                                ; $47c8: $18 $00

jr_06d_47ca:
    dec h                                         ; $47ca: $25
    sub c                                         ; $47cb: $91
    ld b, d                                       ; $47cc: $42
    sbc l                                         ; $47cd: $9d
    rlca                                          ; $47ce: $07

jr_06d_47cf:
    and c                                         ; $47cf: $a1
    ld d, $40                                     ; $47d0: $16 $40
    add h                                         ; $47d2: $84
    push hl                                       ; $47d3: $e5
    ld c, d                                       ; $47d4: $4a

jr_06d_47d5:
    add c                                         ; $47d5: $81
    db $10                                        ; $47d6: $10
    inc d                                         ; $47d7: $14
    jr z, jr_06d_47da                             ; $47d8: $28 $00

jr_06d_47da:
    reti                                          ; $47da: $d9


    sub c                                         ; $47db: $91
    ld b, [hl]                                    ; $47dc: $46
    dec d                                         ; $47dd: $15
    add b                                         ; $47de: $80
    xor [hl]                                      ; $47df: $ae
    dec b                                         ; $47e0: $05
    and $89                                       ; $47e1: $e6 $89
    add b                                         ; $47e3: $80
    inc d                                         ; $47e4: $14
    jr z, jr_06d_4793                             ; $47e5: $28 $ac

    nop                                           ; $47e7: $00
    jp c, Jump_06d_4152                           ; $47e8: $da $52 $41

    ld b, l                                       ; $47eb: $45
    ld b, c                                       ; $47ec: $41
    ld a, [bc]                                    ; $47ed: $0a
    ld [c], a                                     ; $47ee: $e2
    xor a                                         ; $47ef: $af
    dec b                                         ; $47f0: $05
    rst $20                                       ; $47f1: $e7
    push af                                       ; $47f2: $f5
    ld h, c                                       ; $47f3: $61
    or $14                                        ; $47f4: $f6 $14
    jr z, jr_06d_47f8                             ; $47f6: $28 $00

jr_06d_47f8:
    push de                                       ; $47f8: $d5
    xor [hl]                                      ; $47f9: $ae
    ld hl, $e2c1                                  ; $47fa: $21 $c1 $e2
    ld [hl], $a6                                  ; $47fd: $36 $a6
    ld de, $8ca1                                  ; $47ff: $11 $a1 $8c
    ld b, l                                       ; $4802: $45
    push hl                                       ; $4803: $e5
    inc c                                         ; $4804: $0c
    add b                                         ; $4805: $80
    ret nc                                        ; $4806: $d0

    pop de                                        ; $4807: $d1
    add l                                         ; $4808: $85
    ld hl, sp+$00                                 ; $4809: $f8 $00
    ld h, $2f                                     ; $480b: $26 $2f
    ld [bc], a                                    ; $480d: $02
    and c                                         ; $480e: $a1
    ld c, $d9                                     ; $480f: $0e $d9
    nop                                           ; $4811: $00
    ld h, d                                       ; $4812: $62
    and a                                         ; $4813: $a7
    ld h, [hl]                                    ; $4814: $66
    cp a                                          ; $4815: $bf
    push hl                                       ; $4816: $e5
    ld d, b                                       ; $4817: $50
    ld h, b                                       ; $4818: $60
    ld b, e                                       ; $4819: $43
    nop                                           ; $481a: $00
    jr nc, jr_06d_47be                            ; $481b: $30 $a1

    ld [hl], b                                    ; $481d: $70
    add l                                         ; $481e: $85
    sub $00                                       ; $481f: $d6 $00
    ld b, [hl]                                    ; $4821: $46
    adc d                                         ; $4822: $8a
    add e                                         ; $4823: $83
    pop bc                                        ; $4824: $c1
    ldh [$67], a                                  ; $4825: $e0 $67
    and e                                         ; $4827: $a3
    ld l, b                                       ; $4828: $68
    cp a                                          ; $4829: $bf
    db $e3                                        ; $482a: $e3
    inc de                                        ; $482b: $13
    sbc h                                         ; $482c: $9c
    sbc l                                         ; $482d: $9d
    adc a                                         ; $482e: $8f
    ld h, b                                       ; $482f: $60
    jr nc, jr_06d_47d5                            ; $4830: $30 $a3

    and b                                         ; $4832: $a0
    add l                                         ; $4833: $85
    sub $00                                       ; $4834: $d6 $00
    ld b, l                                       ; $4836: $45
    bit 4, h                                      ; $4837: $cb $64
    cp a                                          ; $4839: $bf
    ld b, d                                       ; $483a: $42
    xor b                                         ; $483b: $a8
    xor c                                         ; $483c: $a9

jr_06d_483d:
    ld l, h                                       ; $483d: $6c
    dec [hl]                                      ; $483e: $35
    dec [hl]                                      ; $483f: $35
    cp a                                          ; $4840: $bf
    db $e3                                        ; $4841: $e3
    and c                                         ; $4842: $a1
    ldh [$15], a                                  ; $4843: $e0 $15
    add d                                         ; $4845: $82
    rrca                                          ; $4846: $0f
    ld h, d                                       ; $4847: $62
    add l                                         ; $4848: $85
    rst $10                                       ; $4849: $d7
    nop                                           ; $484a: $00
    add hl, hl                                    ; $484b: $29
    sub e                                         ; $484c: $93
    jr nz, jr_06d_4894                            ; $484d: $20 $45

    ld [hl], $6e                                  ; $484f: $36 $6e
    ccf                                           ; $4851: $3f
    ld l, a                                       ; $4852: $6f
    ld l, h                                       ; $4853: $6c
    dec [hl]                                      ; $4854: $35
    and e                                         ; $4855: $a3
    xor d                                         ; $4856: $aa
    xor e                                         ; $4857: $ab
    dec c                                         ; $4858: $0d
    add b                                         ; $4859: $80
    ld d, $21                                     ; $485a: $16 $21
    cp h                                          ; $485c: $bc
    ld a, [bc]                                    ; $485d: $0a
    ld sp, hl                                     ; $485e: $f9
    nop                                           ; $485f: $00
    ld l, $d0                                     ; $4860: $2e $d0
    pop de                                        ; $4862: $d1
    sbc a                                         ; $4863: $9f
    sbc h                                         ; $4864: $9c
    cp a                                          ; $4865: $bf
    ld [c], a                                     ; $4866: $e2
    ld l, h                                       ; $4867: $6c
    rra                                           ; $4868: $1f
    ld l, a                                       ; $4869: $6f
    ld l, [hl]                                    ; $486a: $6e
    ld [hl], $45                                  ; $486b: $36 $45
    or d                                          ; $486d: $b2
    ld d, $23                                     ; $486e: $16 $23
    add l                                         ; $4870: $85
    db $fc                                        ; $4871: $fc
    nop                                           ; $4872: $00
    add sp, $00                                   ; $4873: $e8 $00
    and $21                                       ; $4875: $e6 $21
    cp a                                          ; $4877: $bf
    db $e3                                        ; $4878: $e3
    pop bc                                        ; $4879: $c1
    pop hl                                        ; $487a: $e1
    ld d, $24                                     ; $487b: $16 $24
    add l                                         ; $487d: $85
    db $fd                                        ; $487e: $fd
    nop                                           ; $487f: $00
    rst $20                                       ; $4880: $e7
    ld d, c                                       ; $4881: $51
    inc hl                                        ; $4882: $23
    ld d, c                                       ; $4883: $51
    nop                                           ; $4884: $00
    inc bc                                        ; $4885: $03
    ld [hl], $6e                                  ; $4886: $36 $6e
    add d                                         ; $4888: $82
    pop hl                                        ; $4889: $e1
    sub c                                         ; $488a: $91
    ld b, d                                       ; $488b: $42
    ld a, [bc]                                    ; $488c: $0a
    jp c, $cc00                                   ; $488d: $da $00 $cc

    and $23                                       ; $4890: $e6 $23
    ld a, [hl]                                    ; $4892: $7e
    ld [c], a                                     ; $4893: $e2

jr_06d_4894:
    dec de                                        ; $4894: $1b
    ld [hl], $45                                  ; $4895: $36 $45
    adc e                                         ; $4897: $8b
    and b                                         ; $4898: $a0
    ret nc                                        ; $4899: $d0

    pop de                                        ; $489a: $d1
    adc a                                         ; $489b: $8f
    sub a                                         ; $489c: $97
    nop                                           ; $489d: $00
    jp nc, Jump_06d_4586                          ; $489e: $d2 $86 $45

    ld bc, $ff9d                                  ; $48a1: $01 $9d $ff
    ldh [$08], a                                  ; $48a4: $e0 $08
    ret nz                                        ; $48a6: $c0

    add hl, sp                                    ; $48a7: $39
    ld h, b                                       ; $48a8: $60
    add l                                         ; $48a9: $85
    rst $38                                       ; $48aa: $ff
    nop                                           ; $48ab: $00
    inc l                                         ; $48ac: $2c
    ld e, l                                       ; $48ad: $5d
    ld b, c                                       ; $48ae: $41
    ld [hl], l                                    ; $48af: $75
    add e                                         ; $48b0: $83
    nop                                           ; $48b1: $00
    ld d, c                                       ; $48b2: $51
    ld h, h                                       ; $48b3: $64
    nop                                           ; $48b4: $00
    rst $38                                       ; $48b5: $ff
    nop                                           ; $48b6: $00
    xor e                                         ; $48b7: $ab
    ldh [rNR43], a                                ; $48b8: $e0 $22
    jr jr_06d_483d                                ; $48ba: $18 $81

    ld [hl-], a                                   ; $48bc: $32
    db $e4                                        ; $48bd: $e4
    nop                                           ; $48be: $00
    rst $38                                       ; $48bf: $ff
    nop                                           ; $48c0: $00
    ld hl, $0000                                  ; $48c1: $21 $00 $00
    nop                                           ; $48c4: $00
    pop bc                                        ; $48c5: $c1
    nop                                           ; $48c6: $00
    rst $38                                       ; $48c7: $ff
    rst $38                                       ; $48c8: $ff
    rst $38                                       ; $48c9: $ff
    rst $38                                       ; $48ca: $ff
    rst $38                                       ; $48cb: $ff
    rst $38                                       ; $48cc: $ff
    rst $38                                       ; $48cd: $ff
    rst $38                                       ; $48ce: $ff
    rst $38                                       ; $48cf: $ff
    rst $38                                       ; $48d0: $ff
    nop                                           ; $48d1: $00
    nop                                           ; $48d2: $00
    dec c                                         ; $48d3: $0d
    add b                                         ; $48d4: $80
    cp $e0                                        ; $48d5: $fe $e0
    nop                                           ; $48d7: $00
    ld b, b                                       ; $48d8: $40
    ret c                                         ; $48d9: $d8

    push hl                                       ; $48da: $e5
    rst $30                                       ; $48db: $f7
    and $ff                                       ; $48dc: $e6 $ff
    rst $38                                       ; $48de: $ff
    rst $38                                       ; $48df: $ff
    rst $30                                       ; $48e0: $f7
    nop                                           ; $48e1: $00
    nop                                           ; $48e2: $00
    nop                                           ; $48e3: $00
    ld bc, $2c00                                  ; $48e4: $01 $00 $2c
    rlca                                          ; $48e7: $07
    ld bc, $2f01                                  ; $48e8: $01 $01 $2f
    rlca                                          ; $48eb: $07
    ld bc, $2b02                                  ; $48ec: $01 $02 $2b
    ld [$0301], sp                                ; $48ef: $08 $01 $03
    ld l, $09                                     ; $48f2: $2e $09
    ld bc, $2f04                                  ; $48f4: $01 $04 $2f
    add hl, bc                                    ; $48f7: $09
    ld bc, $3005                                  ; $48f8: $01 $05 $30
    add hl, bc                                    ; $48fb: $09
    ld bc, $2c06                                  ; $48fc: $01 $06 $2c
    ld a, [bc]                                    ; $48ff: $0a
    ld bc, $2d07                                  ; $4900: $01 $07 $2d
    ld a, [bc]                                    ; $4903: $0a
    ld bc, $2e08                                  ; $4904: $01 $08 $2e
    ld a, [bc]                                    ; $4907: $0a
    ld bc, $2f09                                  ; $4908: $01 $09 $2f
    ld a, [bc]                                    ; $490b: $0a
    ld bc, $2b0a                                  ; $490c: $01 $0a $2b
    dec bc                                        ; $490f: $0b
    ld bc, $280b                                  ; $4910: $01 $0b $28
    ld c, $01                                     ; $4913: $0e $01
    inc c                                         ; $4915: $0c
    ld a, [hl+]                                   ; $4916: $2a
    db $10                                        ; $4917: $10
    ld [bc], a                                    ; $4918: $02
    dec c                                         ; $4919: $0d
    dec hl                                        ; $491a: $2b
    db $10                                        ; $491b: $10
    ld bc, $360e                                  ; $491c: $01 $0e $36
    db $10                                        ; $491f: $10
    ld bc, $2f0f                                  ; $4920: $01 $0f $2f
    ld de, $1001                                  ; $4923: $11 $01 $10
    jr nc, @+$13                                  ; $4926: $30 $11

    ld bc, $3111                                  ; $4928: $01 $11 $31
    ld de, $1201                                  ; $492b: $11 $01 $12
    dec [hl]                                      ; $492e: $35
    ld de, $1301                                  ; $492f: $11 $01 $13
    dec h                                         ; $4932: $25
    ld [de], a                                    ; $4933: $12
    ld bc, $2e14                                  ; $4934: $01 $14 $2e
    ld [de], a                                    ; $4937: $12
    ld bc, $2f15                                  ; $4938: $01 $15 $2f
    ld [de], a                                    ; $493b: $12
    ld bc, $3016                                  ; $493c: $01 $16 $30
    ld [de], a                                    ; $493f: $12
    ld bc, $2517                                  ; $4940: $01 $17 $25
    inc de                                        ; $4943: $13
    ld bc, $2e18                                  ; $4944: $01 $18 $2e
    inc de                                        ; $4947: $13
    ld bc, $2519                                  ; $4948: $01 $19 $25
    inc d                                         ; $494b: $14
    ld bc, $221a                                  ; $494c: $01 $1a $22
    rla                                           ; $494f: $17
    ld bc, $211b                                  ; $4950: $01 $1b $21
    jr jr_06d_4956                                ; $4953: $18 $01

    inc e                                         ; $4955: $1c

jr_06d_4956:
    dec l                                         ; $4956: $2d
    jr @+$04                                      ; $4957: $18 $02

    dec e                                         ; $4959: $1d
    ld h, $19                                     ; $495a: $26 $19
    ld bc, $281e                                  ; $495c: $01 $1e $28
    add hl, de                                    ; $495f: $19
    ld bc, $291f                                  ; $4960: $01 $1f $29
    add hl, de                                    ; $4963: $19
    ld bc, $2d20                                  ; $4964: $01 $20 $2d
    add hl, de                                    ; $4967: $19
    ld bc, $2721                                  ; $4968: $01 $21 $27
    ld a, [de]                                    ; $496b: $1a
    ld bc, $2822                                  ; $496c: $01 $22 $28
    ld a, [de]                                    ; $496f: $1a

Jump_06d_4970:
    ld bc, $2923                                  ; $4970: $01 $23 $29
    ld a, [de]                                    ; $4973: $1a
    ld bc, $2424                                  ; $4974: $01 $24 $24
    dec de                                        ; $4977: $1b
    ld bc, $2825                                  ; $4978: $01 $25 $28
    dec de                                        ; $497b: $1b
    ld bc, $2226                                  ; $497c: $01 $26 $22
    inc e                                         ; $497f: $1c
    ld [bc], a                                    ; $4980: $02
    daa                                           ; $4981: $27
    inc hl                                        ; $4982: $23
    inc e                                         ; $4983: $1c
    ld bc, $2428                                  ; $4984: $01 $28 $24
    inc e                                         ; $4987: $1c
    ld bc, $2829                                  ; $4988: $01 $29 $28
    inc e                                         ; $498b: $1c
    ld bc, $202a                                  ; $498c: $01 $2a $20
    dec e                                         ; $498f: $1d
    ld bc, $212b                                  ; $4990: $01 $2b $21
    dec e                                         ; $4993: $1d
    ld bc, $222c                                  ; $4994: $01 $2c $22
    dec e                                         ; $4997: $1d
    ld bc, $232d                                  ; $4998: $01 $2d $23
    dec e                                         ; $499b: $1d
    ld bc, $282e                                  ; $499c: $01 $2e $28
    dec e                                         ; $499f: $1d
    ld bc, $1f2f                                  ; $49a0: $01 $2f $1f
    ld e, $01                                     ; $49a3: $1e $01
    jr nc, @+$2a                                  ; $49a5: $30 $28

    ld e, $01                                     ; $49a7: $1e $01
    ld sp, $1f1e                                  ; $49a9: $31 $1e $1f
    ld bc, $1f32                                  ; $49ac: $01 $32 $1f
    rra                                           ; $49af: $1f
    ld bc, $2533                                  ; $49b0: $01 $33 $25
    rra                                           ; $49b3: $1f
    ld bc, $2634                                  ; $49b4: $01 $34 $26
    rra                                           ; $49b7: $1f
    ld bc, $2735                                  ; $49b8: $01 $35 $27
    rra                                           ; $49bb: $1f
    ld bc, $1e36                                  ; $49bc: $01 $36 $1e
    jr nz, jr_06d_49c2                            ; $49bf: $20 $01

    scf                                           ; $49c1: $37

jr_06d_49c2:
    rra                                           ; $49c2: $1f
    jr nz, @+$03                                  ; $49c3: $20 $01

    jr c, jr_06d_49eb                             ; $49c5: $38 $24

    jr nz, jr_06d_49ca                            ; $49c7: $20 $01

    add hl, sp                                    ; $49c9: $39

jr_06d_49ca:
    dec h                                         ; $49ca: $25
    jr nz, jr_06d_49ce                            ; $49cb: $20 $01

    ld a, [hl-]                                   ; $49cd: $3a

jr_06d_49ce:
    ld e, $21                                     ; $49ce: $1e $21
    ld bc, $233b                                  ; $49d0: $01 $3b $23
    ld hl, $3c01                                  ; $49d3: $21 $01 $3c
    inc h                                         ; $49d6: $24
    ld hl, $3d01                                  ; $49d7: $21 $01 $3d
    dec e                                         ; $49da: $1d
    ld [hl+], a                                   ; $49db: $22
    ld bc, $1e3e                                  ; $49dc: $01 $3e $1e
    ld [hl+], a                                   ; $49df: $22
    ld bc, $223f                                  ; $49e0: $01 $3f $22
    ld [hl+], a                                   ; $49e3: $22
    ld bc, $2340                                  ; $49e4: $01 $40 $23
    ld [hl+], a                                   ; $49e7: $22
    ld bc, $2841                                  ; $49e8: $01 $41 $28

jr_06d_49eb:
    ld [hl+], a                                   ; $49eb: $22
    ld bc, $1c42                                  ; $49ec: $01 $42 $1c
    inc hl                                        ; $49ef: $23
    ld bc, $2243                                  ; $49f0: $01 $43 $22
    inc hl                                        ; $49f3: $23
    ld bc, $2344                                  ; $49f4: $01 $44 $23
    inc hl                                        ; $49f7: $23
    ld bc, $2745                                  ; $49f8: $01 $45 $27
    inc hl                                        ; $49fb: $23
    ld bc, $1746                                  ; $49fc: $01 $46 $17
    inc h                                         ; $49ff: $24
    ld bc, $1847                                  ; $4a00: $01 $47 $18
    inc h                                         ; $4a03: $24
    ld bc, $2248                                  ; $4a04: $01 $48 $22
    inc h                                         ; $4a07: $24
    ld bc, $1649                                  ; $4a08: $01 $49 $16
    dec h                                         ; $4a0b: $25
    ld bc, $224a                                  ; $4a0c: $01 $4a $22
    dec h                                         ; $4a0f: $25
    ld bc, $224b                                  ; $4a10: $01 $4b $22
    add hl, hl                                    ; $4a13: $29
    ld bc, $154c                                  ; $4a14: $01 $4c $15
    ld a, [hl+]                                   ; $4a17: $2a
    ld bc, $1e4d                                  ; $4a18: $01 $4d $1e
    ld a, [hl+]                                   ; $4a1b: $2a
    ld bc, $1c4e                                  ; $4a1c: $01 $4e $1c
    dec hl                                        ; $4a1f: $2b
    ld bc, $1d4f                                  ; $4a20: $01 $4f $1d
    dec hl                                        ; $4a23: $2b
    ld bc, $1e50                                  ; $4a24: $01 $50 $1e
    dec hl                                        ; $4a27: $2b
    ld bc, $1251                                  ; $4a28: $01 $51 $12
    inc l                                         ; $4a2b: $2c
    ld bc, $1b52                                  ; $4a2c: $01 $52 $1b
    inc l                                         ; $4a2f: $2c
    ld bc, $1c53                                  ; $4a30: $01 $53 $1c
    inc l                                         ; $4a33: $2c
    ld bc, $1d54                                  ; $4a34: $01 $54 $1d
    inc l                                         ; $4a37: $2c
    ld bc, $1255                                  ; $4a38: $01 $55 $12
    dec l                                         ; $4a3b: $2d
    ld bc, $1356                                  ; $4a3c: $01 $56 $13
    dec l                                         ; $4a3f: $2d

Jump_06d_4a40:
    ld bc, $1a57                                  ; $4a40: $01 $57 $1a
    dec l                                         ; $4a43: $2d
    ld bc, $1b58                                  ; $4a44: $01 $58 $1b
    dec l                                         ; $4a47: $2d
    ld bc, $1159                                  ; $4a48: $01 $59 $11
    ld l, $01                                     ; $4a4b: $2e $01
    ld e, d                                       ; $4a4d: $5a
    ld [de], a                                    ; $4a4e: $12
    ld l, $01                                     ; $4a4f: $2e $01
    ld e, e                                       ; $4a51: $5b
    inc de                                        ; $4a52: $13
    ld l, $01                                     ; $4a53: $2e $01
    ld e, h                                       ; $4a55: $5c
    db $10                                        ; $4a56: $10
    cpl                                           ; $4a57: $2f
    ld bc, $115d                                  ; $4a58: $01 $5d $11
    cpl                                           ; $4a5b: $2f
    ld bc, $125e                                  ; $4a5c: $01 $5e $12
    cpl                                           ; $4a5f: $2f
    ld bc, $0f5f                                  ; $4a60: $01 $5f $0f
    jr nc, jr_06d_4a66                            ; $4a63: $30 $01

    ld h, b                                       ; $4a65: $60

jr_06d_4a66:
    db $10                                        ; $4a66: $10
    jr nc, jr_06d_4a6a                            ; $4a67: $30 $01

    ld h, c                                       ; $4a69: $61

jr_06d_4a6a:
    ld de, $0130                                  ; $4a6a: $11 $30 $01
    ld h, d                                       ; $4a6d: $62
    ld [de], a                                    ; $4a6e: $12
    jr nc, jr_06d_4a72                            ; $4a6f: $30 $01

    ld h, e                                       ; $4a71: $63

jr_06d_4a72:
    ld a, [de]                                    ; $4a72: $1a
    jr nc, jr_06d_4a76                            ; $4a73: $30 $01

    ld h, h                                       ; $4a75: $64

jr_06d_4a76:
    rra                                           ; $4a76: $1f
    jr nc, jr_06d_4a7a                            ; $4a77: $30 $01

    ld h, l                                       ; $4a79: $65

jr_06d_4a7a:
    rrca                                          ; $4a7a: $0f
    ld sp, $6601                                  ; $4a7b: $31 $01 $66
    ld [de], a                                    ; $4a7e: $12
    ld sp, $6701                                  ; $4a7f: $31 $01 $67
    inc de                                        ; $4a82: $13
    ld sp, $6801                                  ; $4a83: $31 $01 $68
    ld e, $31                                     ; $4a86: $1e $31
    ld bc, $1369                                  ; $4a88: $01 $69 $13
    ld [hl-], a                                   ; $4a8b: $32
    ld [bc], a                                    ; $4a8c: $02
    ld l, d                                       ; $4a8d: $6a
    inc d                                         ; $4a8e: $14
    inc sp                                        ; $4a8f: $33
    ld bc, $196b                                  ; $4a90: $01 $6b $19
    inc [hl]                                      ; $4a93: $34
    ld bc, $186c                                  ; $4a94: $01 $6c $18
    dec [hl]                                      ; $4a97: $35
    ld bc, $156d                                  ; $4a98: $01 $6d $15
    add hl, sp                                    ; $4a9b: $39
    ld bc, $136e                                  ; $4a9c: $01 $6e $13
    dec sp                                        ; $4a9f: $3b
    rst $38                                       ; $4aa0: $ff
    rst $38                                       ; $4aa1: $ff
    rst $38                                       ; $4aa2: $ff
    xor e                                         ; $4aa3: $ab
    ld c, d                                       ; $4aa4: $4a
    ld a, [de]                                    ; $4aa5: $1a
    ld c, [hl]                                    ; $4aa6: $4e
    ld a, e                                       ; $4aa7: $7b
    ld d, d                                       ; $4aa8: $52
    sbc d                                         ; $4aa9: $9a
    ld d, d                                       ; $4aaa: $52
    sbc l                                         ; $4aab: $9d
    ld c, $ff                                     ; $4aac: $0e $ff
    ld [c], a                                     ; $4aae: $e2
    dec c                                         ; $4aaf: $0d
    dec c                                         ; $4ab0: $0d
    dec c                                         ; $4ab1: $0d
    rst $30                                       ; $4ab2: $f7
    db $e3                                        ; $4ab3: $e3
    or $eb                                        ; $4ab4: $f6 $eb
    dec l                                         ; $4ab6: $2d
    db $10                                        ; $4ab7: $10
    add sp, -$20                                  ; $4ab8: $e8 $e0
    db $fd                                        ; $4aba: $fd
    db $e3                                        ; $4abb: $e3
    ld [c], a                                     ; $4abc: $e2
    pop af                                        ; $4abd: $f1
    adc $e4                                       ; $4abe: $ce $e4
    ld c, $c5                                     ; $4ac0: $0e $c5
    pop hl                                        ; $4ac2: $e1
    pop bc                                        ; $4ac3: $c1
    db $e3                                        ; $4ac4: $e3
    or $ec                                        ; $4ac5: $f6 $ec
    ld bc, $c02d                                  ; $4ac7: $01 $2d $c0
    and $d8                                       ; $4aca: $e6 $d8
    ld hl, sp-$5d                                 ; $4acc: $f8 $a3
    ld sp, hl                                     ; $4ace: $f9
    add b                                         ; $4acf: $80
    db $e4                                        ; $4ad0: $e4
    sbc l                                         ; $4ad1: $9d
    ld [c], a                                     ; $4ad2: $e2
    ld a, e                                       ; $4ad3: $7b
    or $a3                                        ; $4ad4: $f6 $a3
    ld hl, sp+$01                                 ; $4ad6: $f8 $01
    dec l                                         ; $4ad8: $2d

jr_06d_4ad9:
    ret z                                         ; $4ad9: $c8

    push hl                                       ; $4ada: $e5
    ld e, l                                       ; $4adb: $5d
    or $28                                        ; $4adc: $f6 $28
    ld hl, sp+$00                                 ; $4ade: $f8 $00
    ld [c], a                                     ; $4ae0: $e2
    sbc h                                         ; $4ae1: $9c
    ld [$ff00], a                                 ; $4ae2: $ea $00 $ff
    nop                                           ; $4ae5: $00
    db $ec                                        ; $4ae6: $ec
    ret nz                                        ; $4ae7: $c0

    ld b, l                                       ; $4ae8: $45
    ld [c], a                                     ; $4ae9: $e2
    nop                                           ; $4aea: $00
    rst $38                                       ; $4aeb: $ff
    and e                                         ; $4aec: $a3
    or $82                                        ; $4aed: $f6 $82
    ret                                           ; $4aef: $c9


    nop                                           ; $4af0: $00
    rst $38                                       ; $4af1: $ff
    ld a, e                                       ; $4af2: $7b
    adc $4d                                       ; $4af3: $ce $4d
    ld c, l                                       ; $4af5: $4d
    nop                                           ; $4af6: $00
    inc h                                         ; $4af7: $24
    jp $e0f6                                      ; $4af8: $c3 $f6 $e0


    nop                                           ; $4afb: $00
    rst $38                                       ; $4afc: $ff
    nop                                           ; $4afd: $00
    pop de                                        ; $4afe: $d1
    ld b, c                                       ; $4aff: $41
    db $e4                                        ; $4b00: $e4
    nop                                           ; $4b01: $00
    rst $38                                       ; $4b02: $ff
    nop                                           ; $4b03: $00
    db $d3                                        ; $4b04: $d3
    ret nz                                        ; $4b05: $c0

    rst $20                                       ; $4b06: $e7
    ld [$ff00], sp                                ; $4b07: $08 $00 $ff
    ld a, e                                       ; $4b0a: $7b
    or b                                          ; $4b0b: $b0

Jump_06d_4b0c:
    add d                                         ; $4b0c: $82
    and h                                         ; $4b0d: $a4
    inc c                                         ; $4b0e: $0c
    ld a, d                                       ; $4b0f: $7a
    and c                                         ; $4b10: $a1
    nop                                           ; $4b11: $00
    rst $38                                       ; $4b12: $ff
    ld a, e                                       ; $4b13: $7b
    or c                                          ; $4b14: $b1
    ret                                           ; $4b15: $c9


    ld [c], a                                     ; $4b16: $e2
    jr nz, jr_06d_4ad9                            ; $4b17: $20 $c0

    ldh [$59], a                                  ; $4b19: $e0 $59
    and [hl]                                      ; $4b1b: $a6
    nop                                           ; $4b1c: $00
    rst $38                                       ; $4b1d: $ff
    or $8a                                        ; $4b1e: $f6 $8a
    ret nz                                        ; $4b20: $c0

    ret nz                                        ; $4b21: $c0

    ld c, l                                       ; $4b22: $4d
    ret nz                                        ; $4b23: $c0

    db $e3                                        ; $4b24: $e3
    ld a, e                                       ; $4b25: $7b

Jump_06d_4b26:
    ret c                                         ; $4b26: $d8

    ld [bc], a                                    ; $4b27: $02
    nop                                           ; $4b28: $00
    or a                                          ; $4b29: $b7
    ld c, l                                       ; $4b2a: $4d
    add b                                         ; $4b2b: $80
    db $e4                                        ; $4b2c: $e4
    ld a, c                                       ; $4b2d: $79
    call nz, $ff00                                ; $4b2e: $c4 $00 $ff
    add l                                         ; $4b31: $85
    jp hl                                         ; $4b32: $e9


    ld b, e                                       ; $4b33: $43
    pop bc                                        ; $4b34: $c1

jr_06d_4b35:
    cp [hl]                                       ; $4b35: $be
    ldh [rP1], a                                  ; $4b36: $e0 $00
    nop                                           ; $4b38: $00
    jp hl                                         ; $4b39: $e9


    or $b3                                        ; $4b3a: $f6 $b3
    add l                                         ; $4b3c: $85
    db $f4                                        ; $4b3d: $f4
    ld b, l                                       ; $4b3e: $45
    add c                                         ; $4b3f: $81
    pop bc                                        ; $4b40: $c1
    ldh [rLCDC], a                                ; $4b41: $e0 $40
    ld [c], a                                     ; $4b43: $e2
    cp l                                          ; $4b44: $bd
    add a                                         ; $4b45: $87
    ld a, e                                       ; $4b46: $7b
    ld a, [c]                                     ; $4b47: $f2
    nop                                           ; $4b48: $00
    ld a, [bc]                                    ; $4b49: $0a
    db $ed                                        ; $4b4a: $ed

Call_06d_4b4b:
    adc d                                         ; $4b4b: $8a
    add [hl]                                      ; $4b4c: $86
    ret nz                                        ; $4b4d: $c0

    push bc                                       ; $4b4e: $c5
    ld a, e                                       ; $4b4f: $7b
    cp d                                          ; $4b50: $ba
    nop                                           ; $4b51: $00
    adc h                                         ; $4b52: $8c
    ld b, a                                       ; $4b53: $47
    ldh [rLYC], a                                 ; $4b54: $e0 $45
    ld [c], a                                     ; $4b56: $e2
    ret nz                                        ; $4b57: $c0

    db $e4                                        ; $4b58: $e4
    ld b, l                                       ; $4b59: $45
    dec l                                         ; $4b5a: $2d
    ld b, b                                       ; $4b5b: $40
    jp $7b4d                                      ; $4b5c: $c3 $4d $7b


    sub $85                                       ; $4b5f: $d6 $85
    ld [hl], d                                    ; $4b61: $72
    ret nz                                        ; $4b62: $c0

    db $ed                                        ; $4b63: $ed
    ld l, l                                       ; $4b64: $6d
    cp a                                          ; $4b65: $bf
    pop hl                                        ; $4b66: $e1
    ld hl, sp+$00                                 ; $4b67: $f8 $00
    rst $38                                       ; $4b69: $ff
    jr jr_06d_4b35                                ; $4b6a: $18 $c9

    nop                                           ; $4b6c: $00

Jump_06d_4b6d:
    db $e4                                        ; $4b6d: $e4
    dec c                                         ; $4b6e: $0d
    ld l, l                                       ; $4b6f: $6d
    inc c                                         ; $4b70: $0c
    ld c, l                                       ; $4b71: $4d
    dec l                                         ; $4b72: $2d
    and e                                         ; $4b73: $a3
    ld l, l                                       ; $4b74: $6d
    ld l, e                                       ; $4b75: $6b
    ld a, [hl]                                    ; $4b76: $7e
    db $e4                                        ; $4b77: $e4
    nop                                           ; $4b78: $00
    rst $38                                       ; $4b79: $ff
    sub h                                         ; $4b7a: $94
    rst $00                                       ; $4b7b: $c7
    ld c, l                                       ; $4b7c: $4d
    adc l                                         ; $4b7d: $8d
    ld [c], a                                     ; $4b7e: $e2
    ld l, l                                       ; $4b7f: $6d
    rst $38                                       ; $4b80: $ff

Jump_06d_4b81:
    ld l, e                                       ; $4b81: $6b
    inc c                                         ; $4b82: $0c

jr_06d_4b83:
    ld l, e                                       ; $4b83: $6b
    dec c                                         ; $4b84: $0d
    ld l, e                                       ; $4b85: $6b
    ld l, e                                       ; $4b86: $6b
    ld l, e                                       ; $4b87: $6b
    ld c, e                                       ; $4b88: $4b
    ret nz                                        ; $4b89: $c0

    or e                                          ; $4b8a: $b3
    ld h, l                                       ; $4b8b: $65
    ld [hl], c                                    ; $4b8c: $71
    adc [hl]                                      ; $4b8d: $8e
    ld a, [bc]                                    ; $4b8e: $0a
    xor [hl]                                      ; $4b8f: $ae
    res 4, c                                      ; $4b90: $cb $a1
    ld c, [hl]                                    ; $4b92: $4e
    ldh [$3c], a                                  ; $4b93: $e0 $3c
    jp nz, Jump_06d_6b6d                          ; $4b95: $c2 $6d $6b

    add b                                         ; $4b98: $80
    ret nz                                        ; $4b99: $c0

    ldh [rIE], a                                  ; $4b9a: $e0 $ff
    db $e3                                        ; $4b9c: $e3
    ld sp, hl                                     ; $4b9d: $f9
    and e                                         ; $4b9e: $a3
    xor $86                                       ; $4b9f: $ee $86
    nop                                           ; $4ba1: $00
    or d                                          ; $4ba2: $b2
    adc e                                         ; $4ba3: $8b
    add $c1                                       ; $4ba4: $c6 $c1
    ldh [$2b], a                                  ; $4ba6: $e0 $2b
    inc c                                         ; $4ba8: $0c
    adc d                                         ; $4ba9: $8a
    ldh [$86], a                                  ; $4baa: $e0 $86
    ldh [$4c], a                                  ; $4bac: $e0 $4c
    inc l                                         ; $4bae: $2c
    ret nz                                        ; $4baf: $c0

    push hl                                       ; $4bb0: $e5
    ld l, h                                       ; $4bb1: $6c
    ret z                                         ; $4bb2: $c8

    cp $e7                                        ; $4bb3: $fe $e7
    adc a                                         ; $4bb5: $8f
    adc h                                         ; $4bb6: $8c
    jr c, jr_06d_4b83                             ; $4bb7: $38 $ca

    and h                                         ; $4bb9: $a4
    adc c                                         ; $4bba: $89
    ldh [$c2], a                                  ; $4bbb: $e0 $c2
    ld [c], a                                     ; $4bbd: $e2
    ld c, h                                       ; $4bbe: $4c
    inc c                                         ; $4bbf: $0c
    inc c                                         ; $4bc0: $0c
    pop bc                                        ; $4bc1: $c1
    ld [c], a                                     ; $4bc2: $e2
    ld a, $e1                                     ; $4bc3: $3e $e1
    nop                                           ; $4bc5: $00
    ret nz                                        ; $4bc6: $c0

    jp hl                                         ; $4bc7: $e9


    pop af                                        ; $4bc8: $f1

Jump_06d_4bc9:
    xor d                                         ; $4bc9: $aa
    adc a                                         ; $4bca: $8f
    ld l, e                                       ; $4bcb: $6b
    ld c, [hl]                                    ; $4bcc: $4e
    ld h, e                                       ; $4bcd: $63
    pop bc                                        ; $4bce: $c1
    ld [c], a                                     ; $4bcf: $e2
    add h                                         ; $4bd0: $84
    add b                                         ; $4bd1: $80
    dec b                                         ; $4bd2: $05
    pop hl                                        ; $4bd3: $e1
    di                                            ; $4bd4: $f3
    ld [c], a                                     ; $4bd5: $e2
    nop                                           ; $4bd6: $00
    ld b, b                                       ; $4bd7: $40
    pop hl                                        ; $4bd8: $e1
    xor h                                         ; $4bd9: $ac
    and e                                         ; $4bda: $a3
    db $ec                                        ; $4bdb: $ec
    add c                                         ; $4bdc: $81
    ld h, l                                       ; $4bdd: $65
    ld l, d                                       ; $4bde: $6a
    adc a                                         ; $4bdf: $8f
    adc c                                         ; $4be0: $89

Call_06d_4be1:
    ld d, e                                       ; $4be1: $53
    ld b, d                                       ; $4be2: $42
    ld c, d                                       ; $4be3: $4a
    and c                                         ; $4be4: $a1
    cp a                                          ; $4be5: $bf
    db $e3                                        ; $4be6: $e3
    inc c                                         ; $4be7: $0c
    inc b                                         ; $4be8: $04
    push hl                                       ; $4be9: $e5
    db $fd                                        ; $4bea: $fd
    pop bc                                        ; $4beb: $c1
    ld c, l                                       ; $4bec: $4d
    dec l                                         ; $4bed: $2d
    push hl                                       ; $4bee: $e5
    and c                                         ; $4bef: $a1
    ld h, $a1                                     ; $4bf0: $26 $a1
    xor b                                         ; $4bf2: $a8
    add c                                         ; $4bf3: $81
    daa                                           ; $4bf4: $27
    ld b, [hl]                                    ; $4bf5: $46
    db $f4                                        ; $4bf6: $f4
    adc a                                         ; $4bf7: $8f
    ld l, e                                       ; $4bf8: $6b
    adc a                                         ; $4bf9: $8f
    inc hl                                        ; $4bfa: $23
    ld l, l                                       ; $4bfb: $6d
    adc c                                         ; $4bfc: $89
    ld [c], a                                     ; $4bfd: $e2
    dec c                                         ; $4bfe: $0d
    dec c                                         ; $4bff: $0d
    ld c, h                                       ; $4c00: $4c
    inc l                                         ; $4c01: $2c
    dec a                                         ; $4c02: $3d
    dec hl                                        ; $4c03: $2b
    add d                                         ; $4c04: $82
    db $e4                                        ; $4c05: $e4
    ld c, h                                       ; $4c06: $4c
    inc c                                         ; $4c07: $0c
    ld l, h                                       ; $4c08: $6c
    ld l, e                                       ; $4c09: $6b
    and [hl]                                      ; $4c0a: $a6
    and d                                         ; $4c0b: $a2
    add sp, -$80                                  ; $4c0c: $e8 $80
    ret nz                                        ; $4c0e: $c0

    ld l, d                                       ; $4c0f: $6a
    daa                                           ; $4c10: $27
    nop                                           ; $4c11: $00
    rst $28                                       ; $4c12: $ef
    pop bc                                        ; $4c13: $c1
    db $e3                                        ; $4c14: $e3
    ld b, d                                       ; $4c15: $42
    db $e4                                        ; $4c16: $e4
    add l                                         ; $4c17: $85
    pop bc                                        ; $4c18: $c1
    inc sp                                        ; $4c19: $33
    db $e4                                        ; $4c1a: $e4
    inc c                                         ; $4c1b: $0c
    ld l, e                                       ; $4c1c: $6b
    add c                                         ; $4c1d: $81
    inc c                                         ; $4c1e: $0c
    rst $38                                       ; $4c1f: $ff
    rst $20                                       ; $4c20: $e7
    ret nz                                        ; $4c21: $c0

    res 1, a                                      ; $4c22: $cb $8f
    ld c, e                                       ; $4c24: $4b
    db $f4                                        ; $4c25: $f4
    ld [bc], a                                    ; $4c26: $02
    ret                                           ; $4c27: $c9


    db $e3                                        ; $4c28: $e3
    add l                                         ; $4c29: $85
    ld h, b                                       ; $4c2a: $60
    ld l, h                                       ; $4c2b: $6c
    nop                                           ; $4c2c: $00
    cp c                                          ; $4c2d: $b9
    ld [c], a                                     ; $4c2e: $e2
    cp c                                          ; $4c2f: $b9
    ret nz                                        ; $4c30: $c0

    ld a, e                                       ; $4c31: $7b
    pop bc                                        ; $4c32: $c1
    ld h, d                                       ; $4c33: $62
    rst $20                                       ; $4c34: $e7
    ld [hl], a                                    ; $4c35: $77
    ret z                                         ; $4c36: $c8

    nop                                           ; $4c37: $00
    db $ed                                        ; $4c38: $ed
    inc bc                                        ; $4c39: $03
    jp nz, $c1c5                                  ; $4c3a: $c2 $c5 $c1

    ld h, a                                       ; $4c3d: $67
    dec hl                                        ; $4c3e: $2b
    dec bc                                        ; $4c3f: $0b
    dec hl                                        ; $4c40: $2b
    nop                                           ; $4c41: $00
    ld [c], a                                     ; $4c42: $e2
    dec a                                         ; $4c43: $3d
    call nz, Call_06d_4b4b                        ; $4c44: $c4 $4b $4b
    db $ed                                        ; $4c47: $ed
    and l                                         ; $4c48: $a5
    ld h, b                                       ; $4c49: $60
    ld sp, hl                                     ; $4c4a: $f9
    and [hl]                                      ; $4c4b: $a6
    adc c                                         ; $4c4c: $89
    inc bc                                        ; $4c4d: $03
    nop                                           ; $4c4e: $00
    db $ec                                        ; $4c4f: $ec
    add b                                         ; $4c50: $80
    db $e3                                        ; $4c51: $e3
    ret nz                                        ; $4c52: $c0

    ld [c], a                                     ; $4c53: $e2
    ld l, e                                       ; $4c54: $6b
    ld a, [bc]                                    ; $4c55: $0a
    ld a, a                                       ; $4c56: $7f
    pop hl                                        ; $4c57: $e1
    ld [bc], a                                    ; $4c58: $02
    add e                                         ; $4c59: $83
    pop hl                                        ; $4c5a: $e1
    ld c, e                                       ; $4c5b: $4b
    add b                                         ; $4c5c: $80
    and c                                         ; $4c5d: $a1
    xor [hl]                                      ; $4c5e: $ae
    and b                                         ; $4c5f: $a0
    and [hl]                                      ; $4c60: $a6
    and d                                         ; $4c61: $a2
    dec sp                                        ; $4c62: $3b
    ret                                           ; $4c63: $c9


    nop                                           ; $4c64: $00
    rst $08                                       ; $4c65: $cf
    ld b, e                                       ; $4c66: $43
    jp $301e                                      ; $4c67: $c3 $1e $30


    nop                                           ; $4c6a: $00
    ld c, e                                       ; $4c6b: $4b
    ld l, e                                       ; $4c6c: $6b
    ld a, [bc]                                    ; $4c6d: $0a
    ld a, [bc]                                    ; $4c6e: $0a
    jp $ff40                                      ; $4c6f: $c3 $40 $ff


    and d                                         ; $4c72: $a2
    xor h                                         ; $4c73: $ac
    jp nz, Jump_06d_57c0                          ; $4c74: $c2 $c0 $57

    ld [bc], a                                    ; $4c77: $02
    ld a, a                                       ; $4c78: $7f
    pop bc                                        ; $4c79: $c1
    cp a                                          ; $4c7a: $bf
    xor d                                         ; $4c7b: $aa
    nop                                           ; $4c7c: $00
    ld c, e                                       ; $4c7d: $4b
    rrca                                          ; $4c7e: $0f
    ld h, d                                       ; $4c7f: $62
    add e                                         ; $4c80: $83

Jump_06d_4c81:
    call nz, Call_000_2a0a                        ; $4c81: $c4 $0a $2a
    ld bc, $f72a                                  ; $4c84: $01 $2a $f7
    and l                                         ; $4c87: $a5
    adc [hl]                                      ; $4c88: $8e
    jp nz, $67bd                                  ; $4c89: $c2 $bd $67

    ld [hl], c                                    ; $4c8c: $71
    ld c, e                                       ; $4c8d: $4b
    adc a                                         ; $4c8e: $8f
    ld c, [hl]                                    ; $4c8f: $4e
    ld b, d                                       ; $4c90: $42
    ret nz                                        ; $4c91: $c0

    and c                                         ; $4c92: $a1
    ld [c], a                                     ; $4c93: $e2
    ld h, c                                       ; $4c94: $61
    dec l                                         ; $4c95: $2d
    ld hl, sp-$3e                                 ; $4c96: $f8 $c2
    cp b                                          ; $4c98: $b8
    and c                                         ; $4c99: $a1
    push bc                                       ; $4c9a: $c5
    and d                                         ; $4c9b: $a2
    halt                                          ; $4c9c: $76
    ld [hl+], a                                   ; $4c9d: $22
    dec c                                         ; $4c9e: $0d
    dec l                                         ; $4c9f: $2d
    rst $38                                       ; $4ca0: $ff
    pop hl                                        ; $4ca1: $e1
    nop                                           ; $4ca2: $00
    nop                                           ; $4ca3: $00
    cp c                                          ; $4ca4: $b9
    ld b, [hl]                                    ; $4ca5: $46
    ld h, e                                       ; $4ca6: $63
    sub e                                         ; $4ca7: $93
    push bc                                       ; $4ca8: $c5
    cp h                                          ; $4ca9: $bc
    ldh [rLY], a                                  ; $4caa: $e0 $44
    add e                                         ; $4cac: $83
    pop af                                        ; $4cad: $f1
    db $e4                                        ; $4cae: $e4
    nop                                           ; $4caf: $00
    sbc e                                         ; $4cb0: $9b
    and e                                         ; $4cb1: $a3
    and d                                         ; $4cb2: $a2
    inc c                                         ; $4cb3: $0c
    ld b, c                                       ; $4cb4: $41
    and h                                         ; $4cb5: $a4
    dec sp                                        ; $4cb6: $3b
    jp Jump_000_2d2d                              ; $4cb7: $c3 $2d $2d


    scf                                           ; $4cba: $37
    and d                                         ; $4cbb: $a2
    add h                                         ; $4cbc: $84
    and b                                         ; $4cbd: $a0
    ld a, [c]                                     ; $4cbe: $f2
    ld b, d                                       ; $4cbf: $42
    add l                                         ; $4cc0: $85
    db $eb                                        ; $4cc1: $eb
    nop                                           ; $4cc2: $00
    nop                                           ; $4cc3: $00
    cpl                                           ; $4cc4: $2f
    adc $01                                       ; $4cc5: $ce $01
    ld d, l                                       ; $4cc7: $55
    ld h, b                                       ; $4cc8: $60
    ld c, d                                       ; $4cc9: $4a
    and [hl]                                      ; $4cca: $a6
    rst $30                                       ; $4ccb: $f7
    add e                                         ; $4ccc: $83
    ld a, b                                       ; $4ccd: $78
    add b                                         ; $4cce: $80
    ld b, b                                       ; $4ccf: $40
    ld h, h                                       ; $4cd0: $64
    xor [hl]                                      ; $4cd1: $ae
    ld [c], a                                     ; $4cd2: $e2
    nop                                           ; $4cd3: $00
    ld a, e                                       ; $4cd4: $7b
    db $ec                                        ; $4cd5: $ec
    nop                                           ; $4cd6: $00
    call Call_06d_6014                            ; $4cd7: $cd $14 $60
    pop bc                                        ; $4cda: $c1
    rst $20                                       ; $4cdb: $e7
    cp a                                          ; $4cdc: $bf
    push hl                                       ; $4cdd: $e5
    ld [bc], a                                    ; $4cde: $02

jr_06d_4cdf:
    add d                                         ; $4cdf: $82
    add hl, sp                                    ; $4ce0: $39
    ld b, h                                       ; $4ce1: $44
    nop                                           ; $4ce2: $00
    ld sp, hl                                     ; $4ce3: $f9
    nop                                           ; $4ce4: $00
    rla                                           ; $4ce5: $17
    ld [hl+], a                                   ; $4ce6: $22
    ld b, e                                       ; $4ce7: $43
    ld b, e                                       ; $4ce8: $43
    dec b                                         ; $4ce9: $05
    db $e3                                        ; $4cea: $e3
    cp a                                          ; $4ceb: $bf
    add l                                         ; $4cec: $85
    add d                                         ; $4ced: $82
    ld h, e                                       ; $4cee: $63
    ld [hl], $02                                  ; $4cef: $36 $02
    nop                                           ; $4cf1: $00
    ld sp, hl                                     ; $4cf2: $f9
    jr z, @-$3a                                   ; $4cf3: $28 $c4

    nop                                           ; $4cf5: $00
    sbc b                                         ; $4cf6: $98
    add d                                         ; $4cf7: $82
    jr c, jr_06d_4cdf                             ; $4cf8: $38 $e5

    ld sp, $82a1                                  ; $4cfa: $31 $a1 $82
    add c                                         ; $4cfd: $81
    ld sp, hl                                     ; $4cfe: $f9
    daa                                           ; $4cff: $27
    nop                                           ; $4d00: $00
    dec sp                                        ; $4d01: $3b
    ccf                                           ; $4d02: $3f
    ld h, e                                       ; $4d03: $63
    sub h                                         ; $4d04: $94
    and e                                         ; $4d05: $a3
    inc b                                         ; $4d06: $04

Call_06d_4d07:
    pop bc                                        ; $4d07: $c1
    ret nz                                        ; $4d08: $c0

    push de                                       ; $4d09: $d5
    and e                                         ; $4d0a: $a3
    ld c, e                                       ; $4d0b: $4b
    add [hl]                                      ; $4d0c: $86
    add d                                         ; $4d0d: $82
    jp nz, Jump_000_00a3                          ; $4d0e: $c2 $a3 $00

    ld a, h                                       ; $4d11: $7c
    ret nz                                        ; $4d12: $c0

    push hl                                       ; $4d13: $e5
    sbc h                                         ; $4d14: $9c
    and e                                         ; $4d15: $a3
    ld b, $b4                                     ; $4d16: $06 $b4
    add h                                         ; $4d18: $84
    dec hl                                        ; $4d19: $2b
    dec hl                                        ; $4d1a: $2b
    rst $28                                       ; $4d1b: $ef
    add b                                         ; $4d1c: $80
    ld b, l                                       ; $4d1d: $45
    add [hl]                                      ; $4d1e: $86
    nop                                           ; $4d1f: $00
    ld a, [hl-]                                   ; $4d20: $3a
    ret nz                                        ; $4d21: $c0

    and $73                                       ; $4d22: $e6 $73
    and l                                         ; $4d24: $a5
    ld [bc], a                                    ; $4d25: $02
    or c                                          ; $4d26: $b1
    add e                                         ; $4d27: $83
    dec bc                                        ; $4d28: $0b
    xor $80                                       ; $4d29: $ee $80
    inc b                                         ; $4d2b: $04
    add l                                         ; $4d2c: $85
    nop                                           ; $4d2d: $00
    ld e, d                                       ; $4d2e: $5a
    inc h                                         ; $4d2f: $24
    xor b                                         ; $4d30: $a8
    inc a                                         ; $4d31: $3c
    ld b, c                                       ; $4d32: $41
    ld a, [hl-]                                   ; $4d33: $3a
    jp nz, $c180                                  ; $4d34: $c2 $80 $c1

    ldh [$bf], a                                  ; $4d37: $e0 $bf
    pop hl                                        ; $4d39: $e1
    ld [hl], $a1                                  ; $4d3a: $36 $a1
    nop                                           ; $4d3c: $00
    ld e, a                                       ; $4d3d: $5f
    dec [hl]                                      ; $4d3e: $35
    ld l, c                                       ; $4d3f: $69
    inc sp                                        ; $4d40: $33
    pop bc                                        ; $4d41: $c1
    ld b, h                                       ; $4d42: $44
    pop hl                                        ; $4d43: $e1
    dec bc                                        ; $4d44: $0b
    inc bc                                        ; $4d45: $03
    dec bc                                        ; $4d46: $0b
    dec l                                         ; $4d47: $2d
    ld a, [hl]                                    ; $4d48: $7e
    pop hl                                        ; $4d49: $e1
    add hl, sp                                    ; $4d4a: $39
    jp $b600                                      ; $4d4b: $c3 $00 $b6


    ld a, e                                       ; $4d4e: $7b
    db $ed                                        ; $4d4f: $ed
    ld a, [c]                                     ; $4d50: $f2
    ld h, e                                       ; $4d51: $63
    pop bc                                        ; $4d52: $c1
    ld [c], a                                     ; $4d53: $e2
    add b                                         ; $4d54: $80
    cp e                                          ; $4d55: $bb
    db $e4                                        ; $4d56: $e4
    ld a, e                                       ; $4d57: $7b
    ld l, $00                                     ; $4d58: $2e $00

jr_06d_4d5a:
    ld [hl-], a                                   ; $4d5a: $32
    sbc $c3                                       ; $4d5b: $de $c3
    rrca                                          ; $4d5d: $0f
    add l                                         ; $4d5e: $85
    add d                                         ; $4d5f: $82
    ld [c], a                                     ; $4d60: $e2
    cp a                                          ; $4d61: $bf
    ret nz                                        ; $4d62: $c0

    dec hl                                        ; $4d63: $2b
    ld b, e                                       ; $4d64: $43
    ld l, e                                       ; $4d65: $6b
    ld c, e                                       ; $4d66: $4b
    add b                                         ; $4d67: $80
    and $00                                       ; $4d68: $e6 $00
    dec sp                                        ; $4d6a: $3b
    ld [hl-], a                                   ; $4d6b: $32
    ld h, a                                       ; $4d6c: $67
    or h                                          ; $4d6d: $b4
    and d                                         ; $4d6e: $a2
    ld c, e                                       ; $4d6f: $4b
    add b                                         ; $4d70: $80
    db $e3                                        ; $4d71: $e3
    nop                                           ; $4d72: $00
    cp e                                          ; $4d73: $bb
    ld h, e                                       ; $4d74: $63
    sbc c                                         ; $4d75: $99
    ret z                                         ; $4d76: $c8

    nop                                           ; $4d77: $00
    ld hl, sp-$66                                 ; $4d78: $f8 $9a
    add hl, hl                                    ; $4d7a: $29
    adc b                                         ; $4d7b: $88
    ldh [rLCDC], a                                ; $4d7c: $e0 $40
    pop hl                                        ; $4d7e: $e1
    ld a, h                                       ; $4d7f: $7c

Call_06d_4d80:
    ld h, l                                       ; $4d80: $65
    nop                                           ; $4d81: $00
    inc a                                         ; $4d82: $3c
    db $10                                        ; $4d83: $10
    db $ec                                        ; $4d84: $ec
    ld b, $17                                     ; $4d85: $06 $17
    ld h, d                                       ; $4d87: $62
    or h                                          ; $4d88: $b4
    ld hl, $e147                                  ; $4d89: $21 $47 $e1
    dec bc                                        ; $4d8c: $0b
    add d                                         ; $4d8d: $82
    ld [c], a                                     ; $4d8e: $e2
    inc b                                         ; $4d8f: $04
    ld h, e                                       ; $4d90: $63
    ret nz                                        ; $4d91: $c0

    ld hl, $0008                                  ; $4d92: $21 $08 $00
    rst $38                                       ; $4d95: $ff
    ld [hl], e                                    ; $4d96: $73
    dec h                                         ; $4d97: $25
    pop bc                                        ; $4d98: $c1
    inc bc                                        ; $4d99: $03
    ld c, e                                       ; $4d9a: $4b
    ld a, [hl]                                    ; $4d9b: $7e
    ld [bc], a                                    ; $4d9c: $02
    ld c, d                                       ; $4d9d: $4a
    dec hl                                        ; $4d9e: $2b
    nop                                           ; $4d9f: $00
    rst $38                                       ; $4da0: $ff
    ret nz                                        ; $4da1: $c0

    db $e4                                        ; $4da2: $e4
    ld c, $00                                     ; $4da3: $0e $00
    ret nz                                        ; $4da5: $c0

    ld l, e                                       ; $4da6: $6b
    ld c, e                                       ; $4da7: $4b
    dec hl                                        ; $4da8: $2b
    inc bc                                        ; $4da9: $03
    call nz, $207c                                ; $4daa: $c4 $7c $20
    nop                                           ; $4dad: $00
    rst $38                                       ; $4dae: $ff
    ld [hl], c                                    ; $4daf: $71
    jr z, jr_06d_4db2                             ; $4db0: $28 $00

jr_06d_4db2:
    or l                                          ; $4db2: $b5
    inc hl                                        ; $4db3: $23
    add hl, sp                                    ; $4db4: $39
    ld h, d                                       ; $4db5: $62
    and h                                         ; $4db6: $a4
    add h                                         ; $4db7: $84
    nop                                           ; $4db8: $00
    rst $38                                       ; $4db9: $ff
    ld [hl], c                                    ; $4dba: $71
    ld h, $b1                                     ; $4dbb: $26 $b1
    ld h, d                                       ; $4dbd: $62
    rst $28                                       ; $4dbe: $ef
    ld hl, $01b1                                  ; $4dbf: $21 $b1 $01
    nop                                           ; $4dc2: $00
    ld a, l                                       ; $4dc3: $7d
    ld b, c                                       ; $4dc4: $41
    db $fd                                        ; $4dc5: $fd
    ld [hl+], a                                   ; $4dc6: $22
    nop                                           ; $4dc7: $00
    rst $38                                       ; $4dc8: $ff
    ccf                                           ; $4dc9: $3f
    ret z                                         ; $4dca: $c8

    inc c                                         ; $4dcb: $0c
    and e                                         ; $4dcc: $a3
    ret nz                                        ; $4dcd: $c0

    ld [hl+], a                                   ; $4dce: $22
    adc d                                         ; $4dcf: $8a
    add hl, hl                                    ; $4dd0: $29
    nop                                           ; $4dd1: $00
    rst $38                                       ; $4dd2: $ff
    nop                                           ; $4dd3: $00
    ld [hl-], a                                   ; $4dd4: $32
    dec b                                         ; $4dd5: $05
    jr c, jr_06d_4d5a                             ; $4dd6: $38 $82

    ld c, c                                       ; $4dd8: $49
    ld [hl+], a                                   ; $4dd9: $22
    inc b                                         ; $4dda: $04
    add h                                         ; $4ddb: $84
    nop                                           ; $4ddc: $00
    rst $38                                       ; $4ddd: $ff
    ld [hl], c                                    ; $4dde: $71
    add hl, bc                                    ; $4ddf: $09
    xor b                                         ; $4de0: $a8
    inc h                                         ; $4de1: $24
    ld b, e                                       ; $4de2: $43
    db $e3                                        ; $4de3: $e3
    nop                                           ; $4de4: $00
    ld d, e                                       ; $4de5: $53
    or b                                          ; $4de6: $b0
    nop                                           ; $4de7: $00
    rst $30                                       ; $4de8: $f7
    jr c, jr_06d_4e4e                             ; $4de9: $38 $63

    ld c, h                                       ; $4deb: $4c
    ld h, a                                       ; $4dec: $67
    add l                                         ; $4ded: $85
    or b                                          ; $4dee: $b0
    nop                                           ; $4def: $00
    ei                                            ; $4df0: $fb
    ld e, $47                                     ; $4df1: $1e $47
    adc h                                         ; $4df3: $8c
    add hl, hl                                    ; $4df4: $29
    nop                                           ; $4df5: $00
    nop                                           ; $4df6: $00
    rst $38                                       ; $4df7: $ff
    ld a, e                                       ; $4df8: $7b
    db $ed                                        ; $4df9: $ed
    ld [hl], h                                    ; $4dfa: $74
    and $85                                       ; $4dfb: $e6 $85
    rlc b                                         ; $4dfd: $cb $00
    cp $52                                        ; $4dff: $fe $52
    and h                                         ; $4e01: $a4
    ld a, [bc]                                    ; $4e02: $0a
    pop de                                        ; $4e03: $d1
    nop                                           ; $4e04: $00
    rst $38                                       ; $4e05: $ff
    nop                                           ; $4e06: $00
    ld [hl], c                                    ; $4e07: $71
    add l                                         ; $4e08: $85
    db $10                                        ; $4e09: $10
    pop bc                                        ; $4e0a: $c1
    jp $8541                                      ; $4e0b: $c3 $41 $85


    ld a, [c]                                     ; $4e0e: $f2
    nop                                           ; $4e0f: $00
    rst $38                                       ; $4e10: $ff
    ld [c], a                                     ; $4e11: $e2
    rst $18                                       ; $4e12: $df
    ld a, e                                       ; $4e13: $7b
    rst $38                                       ; $4e14: $ff
    ld e, l                                       ; $4e15: $5d
    ld hl, sp+$00                                 ; $4e16: $f8 $00
    nop                                           ; $4e18: $00
    nop                                           ; $4e19: $00
    rst $38                                       ; $4e1a: $ff
    pop hl                                        ; $4e1b: $e1
    ld [c], a                                     ; $4e1c: $e2
    db $e3                                        ; $4e1d: $e3
    db $e4                                        ; $4e1e: $e4
    call c, $a0dd                                 ; $4e1f: $dc $dd $a0
    sbc $8b                                       ; $4e22: $de $8b
    rst $18                                       ; $4e24: $df
    ldh [$f6], a                                  ; $4e25: $e0 $f6
    ldh a, [$a0]                                  ; $4e27: $f0 $a0
    rst $38                                       ; $4e29: $ff
    and $e2                                       ; $4e2a: $e6 $e2
    pop af                                        ; $4e2c: $f1
    adc $e2                                       ; $4e2d: $ce $e2
    ld [$ebff], a                                 ; $4e2f: $ea $ff $eb
    db $ec                                        ; $4e32: $ec
    and b                                         ; $4e33: $a0
    push hl                                       ; $4e34: $e5
    and $e7                                       ; $4e35: $e6 $e7
    and b                                         ; $4e37: $a0
    add sp, -$7f                                  ; $4e38: $e8 $81
    jp hl                                         ; $4e3a: $e9


    or $ef                                        ; $4e3b: $f6 $ef
    pop bc                                        ; $4e3d: $c1
    rst $20                                       ; $4e3e: $e7
    ld [c], a                                     ; $4e3f: $e2

jr_06d_4e40:
    pop af                                        ; $4e40: $f1
    adc $e3                                       ; $4e41: $ce $e3
    add l                                         ; $4e43: $85
    push af                                       ; $4e44: $f5
    ld [hl], c                                    ; $4e45: $71
    ld [c], a                                     ; $4e46: $e2
    and b                                         ; $4e47: $a0
    ld c, $7c                                     ; $4e48: $0e $7c
    db $e3                                        ; $4e4a: $e3
    sub $d7                                       ; $4e4b: $d6 $d7
    and b                                         ; $4e4d: $a0

jr_06d_4e4e:
    ld e, l                                       ; $4e4e: $5d
    or $85                                        ; $4e4f: $f6 $85
    db $f4                                        ; $4e51: $f4
    ld [hl], c                                    ; $4e52: $71
    db $e3                                        ; $4e53: $e3
    push bc                                       ; $4e54: $c5
    ld [c], a                                     ; $4e55: $e2
    cpl                                           ; $4e56: $2f
    and b                                         ; $4e57: $a0
    and b                                         ; $4e58: $a0
    ret c                                         ; $4e59: $d8

    reti                                          ; $4e5a: $d9


    ld e, l                                       ; $4e5b: $5d
    or $e8                                        ; $4e5c: $f6 $e8
    nop                                           ; $4e5e: $00
    db $fc                                        ; $4e5f: $fc
    push bc                                       ; $4e60: $c5

Call_06d_4e61:
    ldh [rIF], a                                  ; $4e61: $e0 $0f
    and b                                         ; $4e63: $a0
    and b                                         ; $4e64: $a0
    jp c, Jump_000_00db                           ; $4e65: $da $db $00

    rst $38                                       ; $4e68: $ff
    nop                                           ; $4e69: $00
    db $f4                                        ; $4e6a: $f4
    push bc                                       ; $4e6b: $c5
    ldh [$b8], a                                  ; $4e6c: $e0 $b8
    pop bc                                        ; $4e6e: $c1
    ld h, b                                       ; $4e6f: $60
    nop                                           ; $4e70: $00
    rst $38                                       ; $4e71: $ff
    nop                                           ; $4e72: $00
    db $f4                                        ; $4e73: $f4
    ld a, [hl]                                    ; $4e74: $7e
    jp $d85d                                      ; $4e75: $c3 $5d $d8


    nop                                           ; $4e78: $00
    ei                                            ; $4e79: $fb
    ret nc                                        ; $4e7a: $d0

    pop de                                        ; $4e7b: $d1
    cp e                                          ; $4e7c: $bb
    pop bc                                        ; $4e7d: $c1
    jr jr_06d_4e40                                ; $4e7e: $18 $c0

    ret nz                                        ; $4e80: $c0

    nop                                           ; $4e81: $00
    rst $38                                       ; $4e82: $ff
    nop                                           ; $4e83: $00
    jp nc, $d3d2                                  ; $4e84: $d2 $d2 $d3

    db $fd                                        ; $4e87: $fd
    and c                                         ; $4e88: $a1
    ret nz                                        ; $4e89: $c0

    ret nz                                        ; $4e8a: $c0

    nop                                           ; $4e8b: $00
    rst $38                                       ; $4e8c: $ff
    ld a, $00                                     ; $4e8d: $3e $00
    ret nc                                        ; $4e8f: $d0

    db $ed                                        ; $4e90: $ed
    xor $d4                                       ; $4e91: $ee $d4
    push de                                       ; $4e93: $d5
    rst $28                                       ; $4e94: $ef
    ret nz                                        ; $4e95: $c0

    jp nz, $ff00                                  ; $4e96: $c2 $00 $ff

    cp $7b                                        ; $4e99: $fe $7b
    or b                                          ; $4e9b: $b0
    and b                                         ; $4e9c: $a0
    ldh a, [$f1]                                  ; $4e9d: $f0 $f1
    ld a, [c]                                     ; $4e9f: $f2

Call_06d_4ea0:
    di                                            ; $4ea0: $f3
    db $f4                                        ; $4ea1: $f4
    sbc a                                         ; $4ea2: $9f
    rra                                           ; $4ea3: $1f
    ld de, $a09f                                  ; $4ea4: $11 $9f $a0
    push af                                       ; $4ea7: $f5
    or $00                                        ; $4ea8: $f6 $00
    rst $38                                       ; $4eaa: $ff
    nop                                           ; $4eab: $00
    jp nc, $a0c6                                  ; $4eac: $d2 $c6 $a0

    rlca                                          ; $4eaf: $07
    sbc [hl]                                      ; $4eb0: $9e
    ld de, $bf9e                                  ; $4eb1: $11 $9e $bf
    and b                                         ; $4eb4: $a0
    nop                                           ; $4eb5: $00
    rst $38                                       ; $4eb6: $ff
    nop                                           ; $4eb7: $00
    or d                                          ; $4eb8: $b2
    add $a0                                       ; $4eb9: $c6 $a0
    ret nz                                        ; $4ebb: $c0

    pop hl                                        ; $4ebc: $e1
    ldh [$fa], a                                  ; $4ebd: $e0 $fa
    and d                                         ; $4ebf: $a2
    nop                                           ; $4ec0: $00
    rst $38                                       ; $4ec1: $ff
    nop                                           ; $4ec2: $00
    xor a                                         ; $4ec3: $af
    add $a0                                       ; $4ec4: $c6 $a0
    add b                                         ; $4ec6: $80
    pop hl                                        ; $4ec7: $e1
    jp c, $d0db                                   ; $4ec8: $da $db $d0

    ld h, c                                       ; $4ecb: $61
    pop de                                        ; $4ecc: $d1
    or h                                          ; $4ecd: $b4
    add b                                         ; $4ece: $80
    nop                                           ; $4ecf: $00
    rst $38                                       ; $4ed0: $ff
    add l                                         ; $4ed1: $85
    adc d                                         ; $4ed2: $8a
    nop                                           ; $4ed3: $00
    and c                                         ; $4ed4: $a1
    push af                                       ; $4ed5: $f5
    or $40                                        ; $4ed6: $f6 $40
    ldh [$03], a                                  ; $4ed8: $e0 $03
    push af                                       ; $4eda: $f5
    or $77                                        ; $4edb: $f6 $77
    pop bc                                        ; $4edd: $c1
    db $ec                                        ; $4ede: $ec
    db $e4                                        ; $4edf: $e4
    nop                                           ; $4ee0: $00
    rst $38                                       ; $4ee1: $ff
    add l                                         ; $4ee2: $85
    adc e                                         ; $4ee3: $8b
    nop                                           ; $4ee4: $00
    pop hl                                        ; $4ee5: $e1
    ld [hl], a                                    ; $4ee6: $77
    jp nz, $f518                                  ; $4ee7: $c2 $18 $f5

    add d                                         ; $4eea: $82
    ld a, e                                       ; $4eeb: $7b
    xor $0a                                       ; $4eec: $ee $0a
    sub l                                         ; $4eee: $95
    sbc $df                                       ; $4eef: $de $df
    ld c, l                                       ; $4ef1: $4d
    pop hl                                        ; $4ef2: $e1
    ret nz                                        ; $4ef3: $c0

    call nz, $c277                                ; $4ef4: $c4 $77 $c2
    db $e3                                        ; $4ef7: $e3
    ret c                                         ; $4ef8: $d8

    reti                                          ; $4ef9: $d9


    nop                                           ; $4efa: $00
    rst $38                                       ; $4efb: $ff
    ld a, [bc]                                    ; $4efc: $0a
    add l                                         ; $4efd: $85
    adc c                                         ; $4efe: $89
    add c                                         ; $4eff: $81
    jp nc, $f5d3                                  ; $4f00: $d2 $d3 $f5

    dec a                                         ; $4f03: $3d
    or $c0                                        ; $4f04: $f6 $c0
    call nz, $9fa0                                ; $4f06: $c4 $a0 $9f
    sbc l                                         ; $4f09: $9d
    sbc a                                         ; $4f0a: $9f
    cp d                                          ; $4f0b: $ba
    add b                                         ; $4f0c: $80
    nop                                           ; $4f0d: $00
    rst $38                                       ; $4f0e: $ff
    and $7b                                       ; $4f0f: $e6 $7b
    ld h, l                                       ; $4f11: $65
    ret c                                         ; $4f12: $d8

    reti                                          ; $4f13: $d9


    call nz, $c0a3                                ; $4f14: $c4 $a3 $c0
    call nz, $9c9f                                ; $4f17: $c4 $9f $9c
    or d                                          ; $4f1a: $b2
    ld sp, $fa9c                                  ; $4f1b: $31 $9c $fa
    and c                                         ; $4f1e: $a1
    nop                                           ; $4f1f: $00
    rst $38                                       ; $4f20: $ff
    ld [hl], c                                    ; $4f21: $71
    ld h, h                                       ; $4f22: $64
    jp c, $c4db                                   ; $4f23: $da $db $c4

Jump_06d_4f26:
    and d                                         ; $4f26: $a2
    ld b, b                                       ; $4f27: $40
    ld h, b                                       ; $4f28: $60
    rst $38                                       ; $4f29: $ff
    sbc a                                         ; $4f2a: $9f
    sbc h                                         ; $4f2b: $9c
    ld de, $a29c                                  ; $4f2c: $11 $9c $a2
    sbc h                                         ; $4f2f: $9c
    ld b, [hl]                                    ; $4f30: $46
    or d                                          ; $4f31: $b2
    ret c                                         ; $4f32: $d8

    cp a                                          ; $4f33: $bf
    pop hl                                        ; $4f34: $e1
    di                                            ; $4f35: $f3
    ld h, d                                       ; $4f36: $62
    nop                                           ; $4f37: $00
    rst $38                                       ; $4f38: $ff
    sub $d7                                       ; $4f39: $d6 $d7
    adc a                                         ; $4f3b: $8f
    ret nz                                        ; $4f3c: $c0

    sbc a                                         ; $4f3d: $9f
    and d                                         ; $4f3e: $a2
    ld sp, hl                                     ; $4f3f: $f9
    sbc l                                         ; $4f40: $9d
    ld c, h                                       ; $4f41: $4c
    ldh [$86], a                                  ; $4f42: $e0 $86
    ldh [rDMA], a                                 ; $4f44: $e0 $46
    ld de, $b246                                  ; $4f46: $11 $46 $b2
    ld b, [hl]                                    ; $4f49: $46
    ld [bc], a                                    ; $4f4a: $02
    rst $38                                       ; $4f4b: $ff
    ldh [$b2], a                                  ; $4f4c: $e0 $b2
    ld sp, hl                                     ; $4f4e: $f9
    and d                                         ; $4f4f: $a2
    ld a, e                                       ; $4f50: $7b
    adc $0a                                       ; $4f51: $ce $0a
    ld [hl], b                                    ; $4f53: $70
    call z, Call_06d_4e61                         ; $4f54: $cc $61 $4e
    ldh [$8d], a                                  ; $4f57: $e0 $8d
    ldh [rIF], a                                  ; $4f59: $e0 $0f
    sbc l                                         ; $4f5b: $9d
    sbc l                                         ; $4f5c: $9d
    sbc h                                         ; $4f5d: $9c
    ld b, [hl]                                    ; $4f5e: $46
    ret nz                                        ; $4f5f: $c0

    ldh [rIE], a                                  ; $4f60: $e0 $ff
    db $e3                                        ; $4f62: $e3
    ld sp, hl                                     ; $4f63: $f9
    and e                                         ; $4f64: $a3
    dec hl                                        ; $4f65: $2b
    add e                                         ; $4f66: $83
    ldh [rP1], a                                  ; $4f67: $e0 $00
    push de                                       ; $4f69: $d5
    inc c                                         ; $4f6a: $0c
    jp nz, Jump_06d_6091                          ; $4f6b: $c2 $91 $60

    pop bc                                        ; $4f6e: $c1
    pop hl                                        ; $4f6f: $e1
    adc e                                         ; $4f70: $8b
    ld [c], a                                     ; $4f71: $e2
    ld b, [hl]                                    ; $4f72: $46
    ld b, [hl]                                    ; $4f73: $46
    ld [de], a                                    ; $4f74: $12
    ld bc, $c012                                  ; $4f75: $01 $12 $c0
    push hl                                       ; $4f78: $e5
    ld sp, hl                                     ; $4f79: $f9
    and e                                         ; $4f7a: $a3
    ld a, [c]                                     ; $4f7b: $f2
    ld b, b                                       ; $4f7c: $40
    ld h, a                                       ; $4f7d: $67
    ld c, c                                       ; $4f7e: $49
    adc a                                         ; $4f7f: $8f
    ld c, [hl]                                    ; $4f80: $4e
    sub [hl]                                      ; $4f81: $96
    and c                                         ; $4f82: $a1
    ld c, d                                       ; $4f83: $4a
    ldh [$3e], a                                  ; $4f84: $e0 $3e
    ld c, l                                       ; $4f86: $4d
    pop hl                                        ; $4f87: $e1
    xor [hl]                                      ; $4f88: $ae
    ld b, [hl]                                    ; $4f89: $46
    ld [de], a                                    ; $4f8a: $12
    inc de                                        ; $4f8b: $13
    inc de                                        ; $4f8c: $13
    pop bc                                        ; $4f8d: $c1
    ld [c], a                                     ; $4f8e: $e2
    ld a, $e1                                     ; $4f8f: $3e $e1
    ret nz                                        ; $4f91: $c0

    ld sp, hl                                     ; $4f92: $f9
    and h                                         ; $4f93: $a4
    dec l                                         ; $4f94: $2d
    ld h, d                                       ; $4f95: $62
    xor [hl]                                      ; $4f96: $ae
    ld b, b                                       ; $4f97: $40
    and d                                         ; $4f98: $a2
    ld b, h                                       ; $4f99: $44
    adc a                                         ; $4f9a: $8f
    ld l, [hl]                                    ; $4f9b: $6e
    dec c                                         ; $4f9c: $0d
    add c                                         ; $4f9d: $81
    sbc [hl]                                      ; $4f9e: $9e
    xor [hl]                                      ; $4f9f: $ae
    adc $0e                                       ; $4fa0: $ce $0e
    ld [c], a                                     ; $4fa2: $e2
    xor a                                         ; $4fa3: $af

jr_06d_4fa4:
    or d                                          ; $4fa4: $b2
    ld de, $e105                                  ; $4fa5: $11 $05 $e1
    ld bc, $46e2                                  ; $4fa8: $01 $e2 $46
    ld b, [hl]                                    ; $4fab: $46
    add c                                         ; $4fac: $81
    and c                                         ; $4fad: $a1
    ld [hl], b                                    ; $4fae: $70
    add e                                         ; $4faf: $83
    dec l                                         ; $4fb0: $2d
    ld h, d                                       ; $4fb1: $62
    jp hl                                         ; $4fb2: $e9


    ld b, d                                       ; $4fb3: $42
    ld [c], a                                     ; $4fb4: $e2
    ld [hl+], a                                   ; $4fb5: $22
    adc a                                         ; $4fb6: $8f
    ld c, h                                       ; $4fb7: $4c
    dec c                                         ; $4fb8: $0d
    add e                                         ; $4fb9: $83
    sbc [hl]                                      ; $4fba: $9e
    dec b                                         ; $4fbb: $05
    xor a                                         ; $4fbc: $af
    call $b2c3                                    ; $4fbd: $cd $c3 $b2
    inc b                                         ; $4fc0: $04
    push hl                                       ; $4fc1: $e5
    cp a                                          ; $4fc2: $bf
    pop bc                                        ; $4fc3: $c1
    ld a, $c0                                     ; $4fc4: $3e $c0
    or b                                          ; $4fc6: $b0
    jr nz, jr_06d_5004                            ; $4fc7: $20 $3b

    pop bc                                        ; $4fc9: $c1
    ret nc                                        ; $4fca: $d0

    xor [hl]                                      ; $4fcb: $ae
    ld b, d                                       ; $4fcc: $42
    ld [hl-], a                                   ; $4fcd: $32
    jp $ed00                                      ; $4fce: $c3 $00 $ed


    dec c                                         ; $4fd1: $0d
    add e                                         ; $4fd2: $83
    sbc h                                         ; $4fd3: $9c
    adc c                                         ; $4fd4: $89
    ld [c], a                                     ; $4fd5: $e2
    or d                                          ; $4fd6: $b2
    or d                                          ; $4fd7: $b2
    jr jr_06d_4fde                                ; $4fd8: $18 $04

    pop hl                                        ; $4fda: $e1
    ld [hl], l                                    ; $4fdb: $75
    ld [c], a                                     ; $4fdc: $e2
    scf                                           ; $4fdd: $37

jr_06d_4fde:
    ldh [rNR12], a                                ; $4fde: $e0 $12
    ld b, [hl]                                    ; $4fe0: $46
    or c                                          ; $4fe1: $b1
    ret nz                                        ; $4fe2: $c0

    cp $e2                                        ; $4fe3: $fe $e2
    cp b                                          ; $4fe5: $b8
    ld [c], a                                     ; $4fe6: $e2
    add b                                         ; $4fe7: $80
    nop                                           ; $4fe8: $00
    db $f4                                        ; $4fe9: $f4
    call c, $02a1                                 ; $4fea: $dc $a1 $02
    db $e3                                        ; $4fed: $e3
    add b                                         ; $4fee: $80
    ret nz                                        ; $4fef: $c0

    add l                                         ; $4ff0: $85
    pop bc                                        ; $4ff1: $c1
    dec sp                                        ; $4ff2: $3b
    ldh [rSTAT], a                                ; $4ff3: $e0 $41
    pop bc                                        ; $4ff5: $c1
    ld de, $f5a0                                  ; $4ff6: $11 $a0 $f5
    pop bc                                        ; $4ff9: $c1
    cp $e5                                        ; $4ffa: $fe $e5
    ret nz                                        ; $4ffc: $c0

    jp hl                                         ; $4ffd: $e9


    adc a                                         ; $4ffe: $8f
    dec l                                         ; $4fff: $2d
    sub h                                         ; $5000: $94
    jr nz, jr_06d_4fa4                            ; $5001: $20 $a1

    db $10                                        ; $5003: $10

jr_06d_5004:
    ret nz                                        ; $5004: $c0

    or d                                          ; $5005: $b2
    rra                                           ; $5006: $1f
    ld a, c                                       ; $5007: $79
    ld a, d                                       ; $5008: $7a
    ld a, e                                       ; $5009: $7b
    ld a, h                                       ; $500a: $7c
    ld a, l                                       ; $500b: $7d
    add h                                         ; $500c: $84
    ret nz                                        ; $500d: $c0

    cp c                                          ; $500e: $b9
    pop hl                                        ; $500f: $e1
    add d                                         ; $5010: $82
    ld [c], a                                     ; $5011: $e2
    ld b, b                                       ; $5012: $40
    ccf                                           ; $5013: $3f
    ldh [$80], a                                  ; $5014: $e0 $80
    add sp, -$58                                  ; $5016: $e8 $a8
    ld hl, $22a4                                  ; $5018: $21 $a4 $22
    adc a                                         ; $501b: $8f
    dec l                                         ; $501c: $2d
    adc $61                                       ; $501d: $ce $61
    or d                                          ; $501f: $b2
    sub c                                         ; $5020: $91
    and b                                         ; $5021: $a0
    ccf                                           ; $5022: $3f
    add b                                         ; $5023: $80
    ld b, l                                       ; $5024: $45
    inc l                                         ; $5025: $2c
    ld a, [hl+]                                   ; $5026: $2a
    ld a, a                                       ; $5027: $7f
    ld a, l                                       ; $5028: $7d
    ld a, a                                       ; $5029: $7f
    pop hl                                        ; $502a: $e1
    dec a                                         ; $502b: $3d
    push bc                                       ; $502c: $c5
    ld l, h                                       ; $502d: $6c
    nop                                           ; $502e: $00
    db $e3                                        ; $502f: $e3
    ld e, [hl]                                    ; $5030: $5e
    jp nz, $e4e3                                  ; $5031: $c2 $e3 $e4

    xor b                                         ; $5034: $a8
    ld hl, $d9d8                                  ; $5035: $21 $d8 $d9
    sbc [hl]                                      ; $5038: $9e
    nop                                           ; $5039: $00
    ld hl, sp-$71                                 ; $503a: $f8 $8f
    dec c                                         ; $503c: $0d
    adc $61                                       ; $503d: $ce $61
    ret nz                                        ; $503f: $c0

    ld [c], a                                     ; $5040: $e2
    ld l, $20                                     ; $5041: $2e $20

jr_06d_5043:
    ld a, [hl+]                                   ; $5043: $2a
    ld c, e                                       ; $5044: $4b
    add c                                         ; $5045: $81
    nop                                           ; $5046: $00
    inc bc                                        ; $5047: $03
    pop bc                                        ; $5048: $c1
    add e                                         ; $5049: $83
    db $e3                                        ; $504a: $e3
    pop bc                                        ; $504b: $c1
    jp nz, Jump_000_00f7                          ; $504c: $c2 $f7 $00

    ei                                            ; $504f: $fb
    and h                                         ; $5050: $a4
    xor b                                         ; $5051: $a8
    ld hl, $21a4                                  ; $5052: $21 $a4 $21
    nop                                           ; $5055: $00
    rst $08                                       ; $5056: $cf
    db $fc                                        ; $5057: $fc
    adc $60                                       ; $5058: $ce $60
    add [hl]                                      ; $505a: $86
    pop bc                                        ; $505b: $c1
    add b                                         ; $505c: $80
    ld a, [hl+]                                   ; $505d: $2a
    ld a, [hl+]                                   ; $505e: $2a
    ld c, e                                       ; $505f: $4b
    ld h, b                                       ; $5060: $60
    adc h                                         ; $5061: $8c
    add hl, bc                                    ; $5062: $09
    ld a, l                                       ; $5063: $7d
    rst $38                                       ; $5064: $ff
    and e                                         ; $5065: $a3
    add $c1                                       ; $5066: $c6 $c1
    sbc a                                         ; $5068: $9f
    ld a, l                                       ; $5069: $7d
    ld h, b                                       ; $506a: $60
    ld [hl-], a                                   ; $506b: $32
    ld hl, $456b                                  ; $506c: $21 $6b $45
    nop                                           ; $506f: $00
    di                                            ; $5070: $f3
    db $fc                                        ; $5071: $fc
    ret nc                                        ; $5072: $d0

    ld bc, $e0c0                                  ; $5073: $01 $c0 $e0
    ld b, [hl]                                    ; $5076: $46
    or d                                          ; $5077: $b2
    add d                                         ; $5078: $82
    add e                                         ; $5079: $83
    ld d, h                                       ; $507a: $54
    ld d, h                                       ; $507b: $54
    xor a                                         ; $507c: $af
    ld d, e                                       ; $507d: $53
    or d                                          ; $507e: $b2
    ld a, a                                       ; $507f: $7f
    ld a, l                                       ; $5080: $7d
    cp b                                          ; $5081: $b8
    and d                                         ; $5082: $a2
    and c                                         ; $5083: $a1
    adc c                                         ; $5084: $89
    db $e4                                        ; $5085: $e4
    jp c, $dbc7                                   ; $5086: $da $c7 $db

    sbc $df                                       ; $5089: $de $df
    ld l, e                                       ; $508b: $6b
    ld b, d                                       ; $508c: $42
    nop                                           ; $508d: $00
    ld [hl], l                                    ; $508e: $75
    sub l                                         ; $508f: $95
    ld bc, $9c9f                                  ; $5090: $01 $9f $9c
    db $fd                                        ; $5093: $fd
    xor [hl]                                      ; $5094: $ae
    sub c                                         ; $5095: $91
    add b                                         ; $5096: $80
    add l                                         ; $5097: $85
    add a                                         ; $5098: $87
    adc b                                         ; $5099: $88
    adc c                                         ; $509a: $89
    add e                                         ; $509b: $83
    ld b, [hl]                                    ; $509c: $46
    dec c                                         ; $509d: $0d
    xor [hl]                                      ; $509e: $ae
    cp a                                          ; $509f: $bf
    pop hl                                        ; $50a0: $e1
    or d                                          ; $50a1: $b2
    xor a                                         ; $50a2: $af
    cp $60                                        ; $50a3: $fe $60
    db $f4                                        ; $50a5: $f4
    inc hl                                        ; $50a6: $23
    ld h, a                                       ; $50a7: $67
    ld h, l                                       ; $50a8: $65
    nop                                           ; $50a9: $00
    or [hl]                                       ; $50aa: $b6
    ld hl, sp+$01                                 ; $50ab: $f8 $01
    ld [c], a                                     ; $50ad: $e2
    ld c, l                                       ; $50ae: $4d
    pop bc                                        ; $50af: $c1
    pop bc                                        ; $50b0: $c1
    add b                                         ; $50b1: $80
    add l                                         ; $50b2: $85
    add [hl]                                      ; $50b3: $86
    add e                                         ; $50b4: $83
    xor a                                         ; $50b5: $af
    add e                                         ; $50b6: $83
    ld b, c                                       ; $50b7: $41
    add h                                         ; $50b8: $84
    cp c                                          ; $50b9: $b9
    and c                                         ; $50ba: $a1
    inc bc                                        ; $50bb: $03
    add b                                         ; $50bc: $80
    jr nc, jr_06d_5043                            ; $50bd: $30 $84

    nop                                           ; $50bf: $00
    sbc e                                         ; $50c0: $9b
    add sp, -$5e                                  ; $50c1: $e8 $a2
    and c                                         ; $50c3: $a1
    ld c, l                                       ; $50c4: $4d
    jp nz, Jump_06d_4b0c                          ; $50c5: $c2 $0c $4b

    add c                                         ; $50c8: $81
    ld a, h                                       ; $50c9: $7c
    ldh [$87], a                                  ; $50ca: $e0 $87
    add l                                         ; $50cc: $85

Call_06d_50cd:
    ld a, b                                       ; $50cd: $78
    and d                                         ; $50ce: $a2
    add h                                         ; $50cf: $84
    add $00                                       ; $50d0: $c6 $00
    sbc h                                         ; $50d2: $9c
    adc $01                                       ; $50d3: $ce $01
    nop                                           ; $50d5: $00
    add d                                         ; $50d6: $82
    and e                                         ; $50d7: $a3
    ld c, e                                       ; $50d8: $4b
    add e                                         ; $50d9: $83
    ld a, d                                       ; $50da: $7a
    add e                                         ; $50db: $83
    inc bc                                        ; $50dc: $03

jr_06d_50dd:
    add b                                         ; $50dd: $80
    jp nz, Jump_06d_6362                          ; $50de: $c2 $62 $63

    add b                                         ; $50e1: $80
    nop                                           ; $50e2: $00
    sbc h                                         ; $50e3: $9c
    pop bc                                        ; $50e4: $c1
    add d                                         ; $50e5: $82
    add b                                         ; $50e6: $80
    add d                                         ; $50e7: $82
    add h                                         ; $50e8: $84
    dec a                                         ; $50e9: $3d
    and e                                         ; $50ea: $a3
    or h                                          ; $50eb: $b4
    push hl                                       ; $50ec: $e5
    cp e                                          ; $50ed: $bb
    inc hl                                        ; $50ee: $23
    ld a, h                                       ; $50ef: $7c
    ld b, h                                       ; $50f0: $44
    nop                                           ; $50f1: $00

jr_06d_50f2:
    ld d, [hl]                                    ; $50f2: $56
    adc $03                                       ; $50f3: $ce $03
    sbc a                                         ; $50f5: $9f
    nop                                           ; $50f6: $00
    rla                                           ; $50f7: $17
    and d                                         ; $50f8: $a2
    ei                                            ; $50f9: $fb
    add c                                         ; $50fa: $81
    pop bc                                        ; $50fb: $c1
    and $82                                       ; $50fc: $e6 $82
    add b                                         ; $50fe: $80
    adc b                                         ; $50ff: $88
    add h                                         ; $5100: $84
    or [hl]                                       ; $5101: $b6
    jr nz, jr_06d_5104                            ; $5102: $20 $00

jr_06d_5104:
    rst $30                                       ; $5104: $f7
    ld a, [bc]                                    ; $5105: $0a
    ld h, l                                       ; $5106: $65
    ld [$81df], sp                                ; $5107: $08 $df $81
    jr c, jr_06d_50f2                             ; $510a: $38 $e6

    inc sp                                        ; $510c: $33
    add b                                         ; $510d: $80
    or d                                          ; $510e: $b2
    add d                                         ; $510f: $82
    add c                                         ; $5110: $81
    cp c                                          ; $5111: $b9
    jr nz, jr_06d_50dd                            ; $5112: $20 $c9

    and b                                         ; $5114: $a0
    dec l                                         ; $5115: $2d
    ld bc, $0000                                  ; $5116: $01 $00 $00
    add hl, sp                                    ; $5119: $39
    sub e                                         ; $511a: $93
    nop                                           ; $511b: $00
    sbc c                                         ; $511c: $99
    and d                                         ; $511d: $a2
    rst $30                                       ; $511e: $f7
    ret nz                                        ; $511f: $c0

    ld a, e                                       ; $5120: $7b
    pop hl                                        ; $5121: $e1
    cp [hl]                                       ; $5122: $be
    add e                                         ; $5123: $83
    ld [hl], d                                    ; $5124: $72
    ld h, b                                       ; $5125: $60
    cp h                                          ; $5126: $bc
    and d                                         ; $5127: $a2
    ret nz                                        ; $5128: $c0

    dec l                                         ; $5129: $2d
    inc bc                                        ; $512a: $03
    nop                                           ; $512b: $00
    ld e, l                                       ; $512c: $5d
    ld [c], a                                     ; $512d: $e2
    ld h, d                                       ; $512e: $62
    cp b                                          ; $512f: $b8
    ld h, c                                       ; $5130: $61
    ld [hl], e                                    ; $5131: $73
    pop bc                                        ; $5132: $c1
    ld a, [$aec3]                                 ; $5133: $fa $c3 $ae
    ld b, [hl]                                    ; $5136: $46
    rlca                                          ; $5137: $07
    ld b, l                                       ; $5138: $45
    ld b, c                                       ; $5139: $41
    ld b, l                                       ; $513a: $45
    db $fd                                        ; $513b: $fd
    ld h, b                                       ; $513c: $60
    ld l, c                                       ; $513d: $69
    ld b, h                                       ; $513e: $44
    nop                                           ; $513f: $00
    ld a, [hl-]                                   ; $5140: $3a
    inc hl                                        ; $5141: $23
    and c                                         ; $5142: $a1
    ld c, [hl]                                    ; $5143: $4e
    dec h                                         ; $5144: $25
    ld a, h                                       ; $5145: $7c
    or h                                          ; $5146: $b4
    add b                                         ; $5147: $80
    or a                                          ; $5148: $b7
    ld h, d                                       ; $5149: $62
    xor a                                         ; $514a: $af
    ld b, l                                       ; $514b: $45
    ld [hl], $a6                                  ; $514c: $36 $a6
    ld [hl], $bf                                  ; $514e: $36 $bf
    pop hl                                        ; $5150: $e1
    ret nz                                        ; $5151: $c0

    ei                                            ; $5152: $fb
    ld hl, $5c00                                  ; $5153: $21 $00 $5c
    ld [c], a                                     ; $5156: $e2
    ld h, c                                       ; $5157: $61
    ld c, [hl]                                    ; $5158: $4e
    inc h                                         ; $5159: $24
    ei                                            ; $515a: $fb
    jp Jump_06d_40b4                              ; $515b: $c3 $b4 $40


    ld b, l                                       ; $515e: $45
    ld [hl], $7f                                  ; $515f: $36 $7f
    ld h, d                                       ; $5161: $62
    and a                                         ; $5162: $a7
    ld h, [hl]                                    ; $5163: $66
    ld [hl], $45                                  ; $5164: $36 $45
    or d                                          ; $5166: $b2
    and c                                         ; $5167: $a1
    adc e                                         ; $5168: $8b
    ld h, d                                       ; $5169: $62
    ldh [rP1], a                                  ; $516a: $e0 $00
    ld e, e                                       ; $516c: $5b
    or $45                                        ; $516d: $f6 $45
    sbc e                                         ; $516f: $9b
    add d                                         ; $5170: $82
    or l                                          ; $5171: $b5
    ld b, e                                       ; $5172: $43
    pop bc                                        ; $5173: $c1
    ldh [$67], a                                  ; $5174: $e0 $67
    and e                                         ; $5176: $a3
    ld l, b                                       ; $5177: $68
    ld [bc], a                                    ; $5178: $02
    cp a                                          ; $5179: $bf
    ldh [$9e], a                                  ; $517a: $e0 $9e
    cp e                                          ; $517c: $bb
    inc hl                                        ; $517d: $23
    nop                                           ; $517e: $00
    ld e, c                                       ; $517f: $59
    ld a, e                                       ; $5180: $7b
    and $49                                       ; $5181: $e6 $49
    nop                                           ; $5183: $00
    ret nz                                        ; $5184: $c0

    ld bc, $40b4                                  ; $5185: $01 $b4 $40
    ld a, [hl]                                    ; $5188: $7e
    pop bc                                        ; $5189: $c1
    pop hl                                        ; $518a: $e1
    dec [hl]                                      ; $518b: $35
    dec [hl]                                      ; $518c: $35
    ld l, h                                       ; $518d: $6c
    or a                                          ; $518e: $b7
    cp b                                          ; $518f: $b8
    ld b, d                                       ; $5190: $42
    ld sp, hl                                     ; $5191: $f9
    and e                                         ; $5192: $a3
    ld hl, sp+$00                                 ; $5193: $f8 $00
    ld a, $ec                                     ; $5195: $3e $ec
    ld [bc], a                                    ; $5197: $02
    or d                                          ; $5198: $b2
    ld h, h                                       ; $5199: $64
    xor a                                         ; $519a: $af
    or d                                          ; $519b: $b2
    ld b, l                                       ; $519c: $45
    ld [hl], $b9                                  ; $519d: $36 $b9
    ccf                                           ; $519f: $3f
    cp d                                          ; $51a0: $ba
    and e                                         ; $51a1: $a3
    dec [hl]                                      ; $51a2: $35
    ld l, h                                       ; $51a3: $6c
    ld l, a                                       ; $51a4: $6f
    ld l, [hl]                                    ; $51a5: $6e
    add b                                         ; $51a6: $80
    pop hl                                        ; $51a7: $e1
    ld b, $80                                     ; $51a8: $06 $80
    ld hl, sp+$00                                 ; $51aa: $f8 $00
    ccf                                           ; $51ac: $3f
    ld [hl], c                                    ; $51ad: $71
    ld h, l                                       ; $51ae: $65
    or d                                          ; $51af: $b2
    ld h, d                                       ; $51b0: $62
    or d                                          ; $51b1: $b2
    or d                                          ; $51b2: $b2
    ld [hl], $6e                                  ; $51b3: $36 $6e
    ld l, a                                       ; $51b5: $6f
    add c                                         ; $51b6: $81
    ld l, h                                       ; $51b7: $6c
    pop bc                                        ; $51b8: $c1
    ld [c], a                                     ; $51b9: $e2
    ret nz                                        ; $51ba: $c0

    jp $ff00                                      ; $51bb: $c3 $00 $ff


    ld [hl], c                                    ; $51be: $71
    ld h, [hl]                                    ; $51bf: $66
    or d                                          ; $51c0: $b2
    ld h, b                                       ; $51c1: $60
    jp nz, Jump_06d_6ec2                          ; $51c2: $c2 $c2 $6e

    ld h, c                                       ; $51c5: $61
    ld l, a                                       ; $51c6: $6f
    pop bc                                        ; $51c7: $c1
    db $e3                                        ; $51c8: $e3
    dec b                                         ; $51c9: $05
    ld [c], a                                     ; $51ca: $e2
    nop                                           ; $51cb: $00
    dec sp                                        ; $51cc: $3b
    ld a, e                                       ; $51cd: $7b
    rst $20                                       ; $51ce: $e7
    db $e3                                        ; $51cf: $e3
    db $e4                                        ; $51d0: $e4
    ld [hl], e                                    ; $51d1: $73
    jr nz, jr_06d_51ec                            ; $51d2: $20 $18

    ld a, $c2                                     ; $51d4: $3e $c2
    cp a                                          ; $51d6: $bf
    ldh [$c1], a                                  ; $51d7: $e0 $c1
    db $e3                                        ; $51d9: $e3
    ret nc                                        ; $51da: $d0

    pop de                                        ; $51db: $d1
    ld e, b                                       ; $51dc: $58
    ld h, d                                       ; $51dd: $62
    nop                                           ; $51de: $00
    rst $38                                       ; $51df: $ff
    nop                                           ; $51e0: $00
    db $e3                                        ; $51e1: $e3
    ld a, [de]                                    ; $51e2: $1a
    ld [hl], e                                    ; $51e3: $73
    jr nz, @-$5d                                  ; $51e4: $20 $a1

    pop bc                                        ; $51e6: $c1
    ld [bc], a                                    ; $51e7: $02
    ld b, l                                       ; $51e8: $45
    ld [hl], $43                                  ; $51e9: $36 $43
    ret nz                                        ; $51eb: $c0

jr_06d_51ec:
    cp c                                          ; $51ec: $b9
    ld h, b                                       ; $51ed: $60
    xor d                                         ; $51ee: $aa
    and d                                         ; $51ef: $a2
    jr nz, jr_06d_51f2                            ; $51f0: $20 $00

jr_06d_51f2:
    rst $38                                       ; $51f2: $ff
    or $c3                                        ; $51f3: $f6 $c3
    dec d                                         ; $51f5: $15
    ld h, d                                       ; $51f6: $62
    ld [hl-], a                                   ; $51f7: $32
    ld h, c                                       ; $51f8: $61
    ld a, l                                       ; $51f9: $7d
    pop bc                                        ; $51fa: $c1
    ld b, l                                       ; $51fb: $45
    ld a, $00                                     ; $51fc: $3e $00
    inc b                                         ; $51fe: $04
    ld h, l                                       ; $51ff: $65
    ret nc                                        ; $5200: $d0

    nop                                           ; $5201: $00
    rst $38                                       ; $5202: $ff
    or $82                                        ; $5203: $f6 $82
    cp e                                          ; $5205: $bb
    and d                                         ; $5206: $a2
    or d                                          ; $5207: $b2
    ld b, b                                       ; $5208: $40
    xor [hl]                                      ; $5209: $ae
    ld sp, $b222                                  ; $520a: $31 $22 $b2
    or d                                          ; $520d: $b2
    add c                                         ; $520e: $81
    sbc [hl]                                      ; $520f: $9e
    ld a, e                                       ; $5210: $7b
    ld [hl], b                                    ; $5211: $70
    nop                                           ; $5212: $00
    ld sp, hl                                     ; $5213: $f9
    or l                                          ; $5214: $b5
    add d                                         ; $5215: $82
    ld a, [hl]                                    ; $5216: $7e
    and b                                         ; $5217: $a0
    ld a, [c]                                     ; $5218: $f2
    nop                                           ; $5219: $00
    ld a, h                                       ; $521a: $7c
    add c                                         ; $521b: $81
    sbc h                                         ; $521c: $9c
    ld bc, $409f                                  ; $521d: $01 $9f $40
    ld b, e                                       ; $5220: $43
    nop                                           ; $5221: $00
    rst $18                                       ; $5222: $df
    ld [hl], c                                    ; $5223: $71
    daa                                           ; $5224: $27
    dec a                                         ; $5225: $3d
    and e                                         ; $5226: $a3
    nop                                           ; $5227: $00
    and b                                         ; $5228: $a0
    ret nz                                        ; $5229: $c0

    ld [bc], a                                    ; $522a: $02
    adc c                                         ; $522b: $89
    ld bc, $0000                                  ; $522c: $01 $00 $00
    ld a, c                                       ; $522f: $79
    or $8f                                        ; $5230: $f6 $8f
    dec a                                         ; $5232: $3d
    and d                                         ; $5233: $a2
    or e                                          ; $5234: $b3
    ld h, d                                       ; $5235: $62
    add c                                         ; $5236: $81
    ld bc, $21ca                                  ; $5237: $01 $ca $21
    nop                                           ; $523a: $00
    ld a, d                                       ; $523b: $7a
    nop                                           ; $523c: $00
    adc $00                                       ; $523d: $ce $00
    ld a, [c]                                     ; $523f: $f2
    ld h, e                                       ; $5240: $63
    cp h                                          ; $5241: $bc
    pop hl                                        ; $5242: $e1
    ld b, e                                       ; $5243: $43
    ldh [$fb], a                                  ; $5244: $e0 $fb
    jr nz, @+$55                                  ; $5246: $20 $53

    adc [hl]                                      ; $5248: $8e
    nop                                           ; $5249: $00
    ld a, [$0258]                                 ; $524a: $fa $58 $02
    ld c, h                                       ; $524d: $4c
    ld h, e                                       ; $524e: $63
    nop                                           ; $524f: $00
    ld [$5d64], a                                 ; $5250: $ea $64 $5d
    xor [hl]                                      ; $5253: $ae
    nop                                           ; $5254: $00
    ld a, [$a271]                                 ; $5255: $fa $71 $a2
    ld c, h                                       ; $5258: $4c
    ld h, d                                       ; $5259: $62
    ld b, h                                       ; $525a: $44
    ld h, e                                       ; $525b: $63
    nop                                           ; $525c: $00
    ld e, l                                       ; $525d: $5d
    ld a, e                                       ; $525e: $7b
    di                                            ; $525f: $f3
    nop                                           ; $5260: $00
    ld c, $2b                                     ; $5261: $0e $2b
    nop                                           ; $5263: $00
    rst $38                                       ; $5264: $ff
    ld [hl], c                                    ; $5265: $71
    ld l, l                                       ; $5266: $6d
    add l                                         ; $5267: $85
    dec [hl]                                      ; $5268: $35
    nop                                           ; $5269: $00
    cp [hl]                                       ; $526a: $be
    ld [hl], c                                    ; $526b: $71
    ld h, a                                       ; $526c: $67
    add l                                         ; $526d: $85
    ld a, [c]                                     ; $526e: $f2
    nop                                           ; $526f: $00
    rst $38                                       ; $5270: $ff
    nop                                           ; $5271: $00
    or $ff                                        ; $5272: $f6 $ff
    nop                                           ; $5274: $00
    rst $38                                       ; $5275: $ff
    or $fc                                        ; $5276: $f6 $fc
    nop                                           ; $5278: $00
    nop                                           ; $5279: $00
    nop                                           ; $527a: $00
    pop bc                                        ; $527b: $c1
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
    nop                                           ; $5287: $00
    nop                                           ; $5288: $00
    dec c                                         ; $5289: $0d
    add b                                         ; $528a: $80
    cp $e0                                        ; $528b: $fe $e0
    nop                                           ; $528d: $00
    ld b, b                                       ; $528e: $40
    ret c                                         ; $528f: $d8

    push hl                                       ; $5290: $e5
    rst $30                                       ; $5291: $f7
    and $ff                                       ; $5292: $e6 $ff
    rst $38                                       ; $5294: $ff
    rst $38                                       ; $5295: $ff
    rst $30                                       ; $5296: $f7
    nop                                           ; $5297: $00
    nop                                           ; $5298: $00
    nop                                           ; $5299: $00
    ld bc, $2700                                  ; $529a: $01 $00 $27
    ld [de], a                                    ; $529d: $12
    ld bc, $2701                                  ; $529e: $01 $01 $27
    inc de                                        ; $52a1: $13
    ld bc, $2802                                  ; $52a2: $01 $02 $28
    inc de                                        ; $52a5: $13
    ld bc, $2403                                  ; $52a6: $01 $03 $24
    inc d                                         ; $52a9: $14
    ld bc, $2904                                  ; $52aa: $01 $04 $29
    inc d                                         ; $52ad: $14
    ld bc, $1905                                  ; $52ae: $01 $05 $19
    dec d                                         ; $52b1: $15
    ld bc, $1a06                                  ; $52b2: $01 $06 $1a
    dec d                                         ; $52b5: $15
    ld bc, $1b07                                  ; $52b6: $01 $07 $1b
    dec d                                         ; $52b9: $15
    ld bc, $1808                                  ; $52ba: $01 $08 $18
    ld d, $01                                     ; $52bd: $16 $01
    add hl, bc                                    ; $52bf: $09
    add hl, de                                    ; $52c0: $19
    ld d, $01                                     ; $52c1: $16 $01
    ld a, [bc]                                    ; $52c3: $0a
    ld e, $16                                     ; $52c4: $1e $16
    ld bc, $260b                                  ; $52c6: $01 $0b $26
    rla                                           ; $52c9: $17
    ld bc, $1b0c                                  ; $52ca: $01 $0c $1b
    jr jr_06d_52d1                                ; $52cd: $18 $02

    dec c                                         ; $52cf: $0d
    inc e                                         ; $52d0: $1c

jr_06d_52d1:
    jr @+$03                                      ; $52d1: $18 $01

    ld c, $1d                                     ; $52d3: $0e $1d
    jr jr_06d_52d8                                ; $52d5: $18 $01

    rrca                                          ; $52d7: $0f

jr_06d_52d8:
    rra                                           ; $52d8: $1f
    jr jr_06d_52dc                                ; $52d9: $18 $01

    db $10                                        ; $52db: $10

jr_06d_52dc:
    inc hl                                        ; $52dc: $23
    jr @+$04                                      ; $52dd: $18 $02

    ld de, $1916                                  ; $52df: $11 $16 $19
    ld bc, $1712                                  ; $52e2: $01 $12 $17
    add hl, de                                    ; $52e5: $19
    ld bc, $1c13                                  ; $52e6: $01 $13 $1c
    add hl, de                                    ; $52e9: $19
    ld bc, $1d14                                  ; $52ea: $01 $14 $1d
    add hl, de                                    ; $52ed: $19
    ld bc, $1615                                  ; $52ee: $01 $15 $16
    ld a, [de]                                    ; $52f1: $1a
    ld bc, $1a16                                  ; $52f2: $01 $16 $1a
    ld a, [de]                                    ; $52f5: $1a
    ld bc, $1b17                                  ; $52f6: $01 $17 $1b
    ld a, [de]                                    ; $52f9: $1a
    ld bc, $1c18                                  ; $52fa: $01 $18 $1c
    ld a, [de]                                    ; $52fd: $1a
    ld bc, $1919                                  ; $52fe: $01 $19 $19
    dec de                                        ; $5301: $1b
    ld bc, $1a1a                                  ; $5302: $01 $1a $1a
    dec de                                        ; $5305: $1b
    ld bc, $1b1b                                  ; $5306: $01 $1b $1b
    dec de                                        ; $5309: $1b
    ld bc, $201c                                  ; $530a: $01 $1c $20
    dec de                                        ; $530d: $1b
    ld [bc], a                                    ; $530e: $02
    dec e                                         ; $530f: $1d
    ld hl, $011b                                  ; $5310: $21 $1b $01
    ld e, $22                                     ; $5313: $1e $22
    dec de                                        ; $5315: $1b
    ld bc, $231f                                  ; $5316: $01 $1f $23
    dec de                                        ; $5319: $1b
    ld bc, $1420                                  ; $531a: $01 $20 $14
    inc e                                         ; $531d: $1c
    ld bc, $1721                                  ; $531e: $01 $21 $17
    inc e                                         ; $5321: $1c
    ld bc, $2022                                  ; $5322: $01 $22 $20
    inc e                                         ; $5325: $1c
    ld bc, $2123                                  ; $5326: $01 $23 $21
    inc e                                         ; $5329: $1c
    ld bc, $2224                                  ; $532a: $01 $24 $22
    inc e                                         ; $532d: $1c
    ld bc, $1425                                  ; $532e: $01 $25 $14
    dec e                                         ; $5331: $1d
    ld bc, $1626                                  ; $5332: $01 $26 $16
    dec e                                         ; $5335: $1d
    ld bc, $1727                                  ; $5336: $01 $27 $17
    dec e                                         ; $5339: $1d
    ld bc, $2128                                  ; $533a: $01 $28 $21
    dec e                                         ; $533d: $1d
    ld bc, $1429                                  ; $533e: $01 $29 $14
    ld e, $01                                     ; $5341: $1e $01
    ld a, [hl+]                                   ; $5343: $2a
    ld d, $1e                                     ; $5344: $16 $1e
    ld bc, $172b                                  ; $5346: $01 $2b $17
    ld e, $01                                     ; $5349: $1e $01
    inc l                                         ; $534b: $2c
    ld d, $1f                                     ; $534c: $16 $1f
    ld bc, $172d                                  ; $534e: $01 $2d $17
    rra                                           ; $5351: $1f
    ld bc, $172e                                  ; $5352: $01 $2e $17
    jr nz, jr_06d_5358                            ; $5355: $20 $01

    cpl                                           ; $5357: $2f

jr_06d_5358:
    dec e                                         ; $5358: $1d
    jr nz, @+$03                                  ; $5359: $20 $01

    jr nc, @+$18                                  ; $535b: $30 $16

    ld hl, $3101                                  ; $535d: $21 $01 $31
    rla                                           ; $5360: $17
    ld hl, $3201                                  ; $5361: $21 $01 $32
    inc hl                                        ; $5364: $23
    ld hl, $3302                                  ; $5365: $21 $02 $33
    inc h                                         ; $5368: $24
    ld hl, $3401                                  ; $5369: $21 $01 $34
    inc de                                        ; $536c: $13
    ld [hl+], a                                   ; $536d: $22
    ld [bc], a                                    ; $536e: $02
    dec [hl]                                      ; $536f: $35
    inc d                                         ; $5370: $14
    ld [hl+], a                                   ; $5371: $22
    ld bc, $1536                                  ; $5372: $01 $36 $15
    ld [hl+], a                                   ; $5375: $22
    ld bc, $1637                                  ; $5376: $01 $37 $16
    ld [hl+], a                                   ; $5379: $22
    ld bc, $1838                                  ; $537a: $01 $38 $18
    ld [hl+], a                                   ; $537d: $22
    ld bc, $1939                                  ; $537e: $01 $39 $19
    ld [hl+], a                                   ; $5381: $22
    ld bc, $1a3a                                  ; $5382: $01 $3a $1a
    ld [hl+], a                                   ; $5385: $22
    ld [bc], a                                    ; $5386: $02
    dec sp                                        ; $5387: $3b
    ld e, $22                                     ; $5388: $1e $22
    ld bc, $233c                                  ; $538a: $01 $3c $23
    ld [hl+], a                                   ; $538d: $22
    ld bc, $243d                                  ; $538e: $01 $3d $24
    ld [hl+], a                                   ; $5391: $22
    ld bc, $133e                                  ; $5392: $01 $3e $13
    inc hl                                        ; $5395: $23
    ld bc, $143f                                  ; $5396: $01 $3f $14
    inc hl                                        ; $5399: $23
    ld bc, $1540                                  ; $539a: $01 $40 $15
    inc hl                                        ; $539d: $23
    ld bc, $1941                                  ; $539e: $01 $41 $19
    inc hl                                        ; $53a1: $23
    ld bc, $2442                                  ; $53a2: $01 $42 $24
    inc hl                                        ; $53a5: $23
    ld bc, $2543                                  ; $53a6: $01 $43 $25
    inc hl                                        ; $53a9: $23
    ld bc, $1444                                  ; $53aa: $01 $44 $14
    inc h                                         ; $53ad: $24
    ld bc, $1e45                                  ; $53ae: $01 $45 $1e
    inc h                                         ; $53b1: $24
    ld bc, $1f46                                  ; $53b2: $01 $46 $1f
    inc h                                         ; $53b5: $24
    ld bc, $2647                                  ; $53b6: $01 $47 $26
    inc h                                         ; $53b9: $24
    ld bc, $1d48                                  ; $53ba: $01 $48 $1d
    dec h                                         ; $53bd: $25
    ld bc, $1e49                                  ; $53be: $01 $49 $1e
    dec h                                         ; $53c1: $25
    ld bc, $1f4a                                  ; $53c2: $01 $4a $1f
    dec h                                         ; $53c5: $25
    ld bc, $204b                                  ; $53c6: $01 $4b $20
    dec h                                         ; $53c9: $25
    ld bc, $1b4c                                  ; $53ca: $01 $4c $1b
    ld h, $01                                     ; $53cd: $26 $01
    ld c, l                                       ; $53cf: $4d
    ld e, $26                                     ; $53d0: $1e $26
    ld bc, $1f4e                                  ; $53d2: $01 $4e $1f
    ld h, $01                                     ; $53d5: $26 $01
    ld c, a                                       ; $53d7: $4f
    inc e                                         ; $53d8: $1c
    daa                                           ; $53d9: $27
    ld bc, $2650                                  ; $53da: $01 $50 $26
    daa                                           ; $53dd: $27
    ld bc, $2251                                  ; $53de: $01 $51 $22
    jr z, jr_06d_53e5                             ; $53e1: $28 $02

    ld d, d                                       ; $53e3: $52
    inc hl                                        ; $53e4: $23

jr_06d_53e5:
    jr z, jr_06d_53e8                             ; $53e5: $28 $01

    ld d, e                                       ; $53e7: $53

jr_06d_53e8:
    inc h                                         ; $53e8: $24
    jr z, jr_06d_53ec                             ; $53e9: $28 $01

    ld d, h                                       ; $53eb: $54

jr_06d_53ec:
    dec h                                         ; $53ec: $25
    jr z, jr_06d_53f0                             ; $53ed: $28 $01

    ld d, l                                       ; $53ef: $55

jr_06d_53f0:
    ld h, $28                                     ; $53f0: $26 $28
    ld bc, $2756                                  ; $53f2: $01 $56 $27
    jr z, jr_06d_53f8                             ; $53f5: $28 $01

    ld d, a                                       ; $53f7: $57

jr_06d_53f8:
    jr nz, @+$2b                                  ; $53f8: $20 $29

    ld bc, $2358                                  ; $53fa: $01 $58 $23
    add hl, hl                                    ; $53fd: $29
    ld bc, $2459                                  ; $53fe: $01 $59 $24
    add hl, hl                                    ; $5401: $29
    ld bc, $255a                                  ; $5402: $01 $5a $25
    add hl, hl                                    ; $5405: $29
    ld bc, $265b                                  ; $5406: $01 $5b $26
    add hl, hl                                    ; $5409: $29
    ld bc, $205c                                  ; $540a: $01 $5c $20
    ld a, [hl+]                                   ; $540d: $2a
    ld bc, $255d                                  ; $540e: $01 $5d $25
    ld a, [hl+]                                   ; $5411: $2a
    ld bc, $265e                                  ; $5412: $01 $5e $26
    ld a, [hl+]                                   ; $5415: $2a
    ld [bc], a                                    ; $5416: $02
    ld e, a                                       ; $5417: $5f
    daa                                           ; $5418: $27
    ld a, [hl+]                                   ; $5419: $2a
    ld bc, $2160                                  ; $541a: $01 $60 $21
    dec hl                                        ; $541d: $2b
    ld bc, $2461                                  ; $541e: $01 $61 $24
    dec hl                                        ; $5421: $2b
    ld bc, $2562                                  ; $5422: $01 $62 $25
    dec hl                                        ; $5425: $2b
    ld bc, $2e63                                  ; $5426: $01 $63 $2e
    dec hl                                        ; $5429: $2b
    ld [bc], a                                    ; $542a: $02
    ld h, h                                       ; $542b: $64
    ld [hl+], a                                   ; $542c: $22
    ld l, $01                                     ; $542d: $2e $01
    ld h, l                                       ; $542f: $65
    inc hl                                        ; $5430: $23
    ld l, $01                                     ; $5431: $2e $01
    ld h, [hl]                                    ; $5433: $66
    ld [hl+], a                                   ; $5434: $22
    cpl                                           ; $5435: $2f
    ld bc, $2367                                  ; $5436: $01 $67 $23
    cpl                                           ; $5439: $2f
    ld bc, $2468                                  ; $543a: $01 $68 $24
    cpl                                           ; $543d: $2f
    ld bc, $2269                                  ; $543e: $01 $69 $22
    jr nc, jr_06d_5444                            ; $5441: $30 $01

    ld l, d                                       ; $5443: $6a

jr_06d_5444:
    inc hl                                        ; $5444: $23
    jr nc, jr_06d_5448                            ; $5445: $30 $01

    ld l, e                                       ; $5447: $6b

jr_06d_5448:
    ld [hl+], a                                   ; $5448: $22
    ld sp, $6c01                                  ; $5449: $31 $01 $6c
    dec hl                                        ; $544c: $2b
    ld [hl-], a                                   ; $544d: $32
    ld bc, $2b6d                                  ; $544e: $01 $6d $2b
    inc sp                                        ; $5451: $33
    ld [bc], a                                    ; $5452: $02
    ld l, [hl]                                    ; $5453: $6e
    dec h                                         ; $5454: $25
    inc [hl]                                      ; $5455: $34
    ld bc, $266f                                  ; $5456: $01 $6f $26
    inc [hl]                                      ; $5459: $34
    ld bc, $2a70                                  ; $545a: $01 $70 $2a
    inc [hl]                                      ; $545d: $34
    ld bc, $2b71                                  ; $545e: $01 $71 $2b
    inc [hl]                                      ; $5461: $34
    ld bc, $2372                                  ; $5462: $01 $72 $23
    dec [hl]                                      ; $5465: $35
    ld [bc], a                                    ; $5466: $02
    ld [hl], e                                    ; $5467: $73
    inc h                                         ; $5468: $24
    dec [hl]                                      ; $5469: $35
    ld bc, $2574                                  ; $546a: $01 $74 $25
    dec [hl]                                      ; $546d: $35
    ld bc, $2a75                                  ; $546e: $01 $75 $2a
    dec [hl]                                      ; $5471: $35
    ld bc, $2476                                  ; $5472: $01 $76 $24
    ld [hl], $01                                  ; $5475: $36 $01
    ld [hl], a                                    ; $5477: $77
    dec h                                         ; $5478: $25
    ld [hl], $01                                  ; $5479: $36 $01
    ld a, b                                       ; $547b: $78
    ld h, $36                                     ; $547c: $26 $36
    ld [bc], a                                    ; $547e: $02
    ld a, c                                       ; $547f: $79
    daa                                           ; $5480: $27
    ld [hl], $01                                  ; $5481: $36 $01
    ld a, d                                       ; $5483: $7a
    jr z, jr_06d_54bd                             ; $5484: $28 $37

    rst $38                                       ; $5486: $ff
    rst $38                                       ; $5487: $ff
    rst $38                                       ; $5488: $ff
    sub c                                         ; $5489: $91
    ld d, h                                       ; $548a: $54
    ld c, h                                       ; $548b: $4c
    ld e, c                                       ; $548c: $59
    ld a, [de]                                    ; $548d: $1a
    ld e, a                                       ; $548e: $5f
    add hl, sp                                    ; $548f: $39
    ld e, a                                       ; $5490: $5f
    ccf                                           ; $5491: $3f
    ld c, $0e                                     ; $5492: $0e $0e
    dec c                                         ; $5494: $0d
    dec c                                         ; $5495: $0d
    dec c                                         ; $5496: $0d
    ld c, $ff                                     ; $5497: $0e $ff
    db $e3                                        ; $5499: $e3
    or $fd                                        ; $549a: $f6 $fd
    rra                                           ; $549c: $1f
    ld c, l                                       ; $549d: $4d
    ld c, l                                       ; $549e: $4d
    ld c, $0e                                     ; $549f: $0e $0e
    ld c, l                                       ; $54a1: $4d
    ei                                            ; $54a2: $fb
    db $e3                                        ; $54a3: $e3
    db $d3                                        ; $54a4: $d3
    ldh [$f3], a                                  ; $54a5: $e0 $f3
    ldh [rP1], a                                  ; $54a7: $e0 $00
    ret                                           ; $54a9: $c9


    db $e4                                        ; $54aa: $e4
    ld a, [$f6e6]                                 ; $54ab: $fa $e6 $f6
    ei                                            ; $54ae: $fb
    sub $e2                                       ; $54af: $d6 $e2
    ret nz                                        ; $54b1: $c0

    ld [c], a                                     ; $54b2: $e2
    adc [hl]                                      ; $54b3: $8e
    pop hl                                        ; $54b4: $e1
    add sp, -$17                                  ; $54b5: $e8 $e9
    add l                                         ; $54b7: $85
    rst $38                                       ; $54b8: $ff
    ld [$e1fe], sp                                ; $54b9: $08 $fe $e1
    sub [hl]                                      ; $54bc: $96

jr_06d_54bd:
    ld [c], a                                     ; $54bd: $e2
    ld a, d                                       ; $54be: $7a
    pop hl                                        ; $54bf: $e1
    ld c, l                                       ; $54c0: $4d
    ret nz                                        ; $54c1: $c0

    ld [c], a                                     ; $54c2: $e2
    cp b                                          ; $54c3: $b8
    ld [c], a                                     ; $54c4: $e2
    ret nz                                        ; $54c5: $c0

    ld [c], a                                     ; $54c6: $e2
    add l                                         ; $54c7: $85
    rst $38                                       ; $54c8: $ff
    inc [hl]                                      ; $54c9: $34
    ld b, l                                       ; $54ca: $45
    ldh [$cc], a                                  ; $54cb: $e0 $cc
    db $e3                                        ; $54cd: $e3
    ld c, l                                       ; $54ce: $4d
    dec sp                                        ; $54cf: $3b
    ldh [$2d], a                                  ; $54d0: $e0 $2d
    dec l                                         ; $54d2: $2d
    or b                                          ; $54d3: $b0
    push hl                                       ; $54d4: $e5
    add $e3                                       ; $54d5: $c6 $e3
    ld hl, sp-$7b                                 ; $54d7: $f8 $85
    rst $38                                       ; $54d9: $ff
    adc h                                         ; $54da: $8c
    db $e3                                        ; $54db: $e3
    ld hl, sp-$1f                                 ; $54dc: $f8 $e1
    dec c                                         ; $54de: $0d
    ld l, l                                       ; $54df: $6d
    dec bc                                        ; $54e0: $0b
    dec bc                                        ; $54e1: $0b
    dec bc                                        ; $54e2: $0b
    inc bc                                        ; $54e3: $03
    ld c, l                                       ; $54e4: $4d
    dec l                                         ; $54e5: $2d
    ld a, [hl]                                    ; $54e6: $7e
    ld [c], a                                     ; $54e7: $e2
    push af                                       ; $54e8: $f5
    jp nz, $ff0a                                  ; $54e9: $c2 $0a $ff

    ld [de], a                                    ; $54ec: $12
    ld [c], a                                     ; $54ed: $e2
    pop bc                                        ; $54ee: $c1
    jp nz, $c0be                                  ; $54ef: $c2 $be $c0

    inc hl                                        ; $54f2: $23
    ld l, l                                       ; $54f3: $6d
    ld c, e                                       ; $54f4: $4b
    rst $38                                       ; $54f5: $ff
    pop hl                                        ; $54f6: $e1
    cp a                                          ; $54f7: $bf
    ldh [$b5], a                                  ; $54f8: $e0 $b5
    jp Jump_000_004d                              ; $54fa: $c3 $4d $00


    db $fc                                        ; $54fd: $fc
    sub d                                         ; $54fe: $92
    jp $fd00                                      ; $54ff: $c3 $00 $fd


    db $e3                                        ; $5502: $e3
    add h                                         ; $5503: $84
    ld [c], a                                     ; $5504: $e2
    pop bc                                        ; $5505: $c1
    ldh [$50], a                                  ; $5506: $e0 $50
    ret nz                                        ; $5508: $c0

    cp a                                          ; $5509: $bf
    pop hl                                        ; $550a: $e1
    xor $e2                                       ; $550b: $ee $e2
    nop                                           ; $550d: $00
    ei                                            ; $550e: $fb
    ld e, c                                       ; $550f: $59
    jp nz, $c00a                                  ; $5510: $c2 $0a $c0

    and $0d                                       ; $5513: $e6 $0d
    add h                                         ; $5515: $84
    pop hl                                        ; $5516: $e1
    dec c                                         ; $5517: $0d
    pop bc                                        ; $5518: $c1
    pop hl                                        ; $5519: $e1
    cpl                                           ; $551a: $2f
    pop hl                                        ; $551b: $e1
    ld a, [hl]                                    ; $551c: $7e
    ld [c], a                                     ; $551d: $e2
    db $fc                                        ; $551e: $fc
    jp $8f00                                      ; $551f: $c3 $00 $8f


    push de                                       ; $5522: $d5
    sub b                                         ; $5523: $90
    add $43                                       ; $5524: $c6 $43
    db $e3                                        ; $5526: $e3
    ld b, l                                       ; $5527: $45
    ld [c], a                                     ; $5528: $e2
    halt                                          ; $5529: $76
    jp $a0cd                                      ; $552a: $c3 $cd $a0


    cp h                                          ; $552d: $bc
    ret nz                                        ; $552e: $c0

    inc h                                         ; $552f: $24
    adc $70                                       ; $5530: $ce $70
    or $a9                                        ; $5532: $f6 $a9
    db $d3                                        ; $5534: $d3
    jp nz, $c38d                                  ; $5535: $c2 $8d $c3

    cp $e2                                        ; $5538: $fe $e2
    dec c                                         ; $553a: $0d
    ld l, l                                       ; $553b: $6d
    ld l, e                                       ; $553c: $6b
    ret nz                                        ; $553d: $c0

    db $e3                                        ; $553e: $e3
    rrca                                          ; $553f: $0f
    dec hl                                        ; $5540: $2b
    dec bc                                        ; $5541: $0b
    dec bc                                        ; $5542: $0b
    dec hl                                        ; $5543: $2b
    ret nz                                        ; $5544: $c0

    and $00                                       ; $5545: $e6 $00
    ld hl, sp+$4d                                 ; $5547: $f8 $4d
    jp nz, $c584                                  ; $5549: $c2 $84 $c5

    ld bc, $c74d                                  ; $554c: $01 $4d $c7
    jp $e0c4                                      ; $554f: $c3 $c4 $e0


    jp nz, $bfe0                                  ; $5552: $c2 $e0 $bf

    ld [c], a                                     ; $5555: $e2
    inc a                                         ; $5556: $3c
    jp $c37e                                      ; $5557: $c3 $7e $c3


    nop                                           ; $555a: $00
    jp nc, Jump_06d_4970                          ; $555b: $d2 $70 $49

    and $cc                                       ; $555e: $e6 $cc
    pop hl                                        ; $5560: $e1
    rst $00                                       ; $5561: $c7
    jp nz, $e086                                  ; $5562: $c2 $86 $e0

    dec c                                         ; $5565: $0d
    dec bc                                        ; $5566: $0b
    dec bc                                        ; $5567: $0b
    ld a, c                                       ; $5568: $79
    pop hl                                        ; $5569: $e1
    rlca                                          ; $556a: $07
    ld l, e                                       ; $556b: $6b
    dec l                                         ; $556c: $2d
    dec c                                         ; $556d: $0d
    dec a                                         ; $556e: $3d
    ret nz                                        ; $556f: $c0

    ld [hl], b                                    ; $5570: $70
    pop bc                                        ; $5571: $c1
    cp e                                          ; $5572: $bb
    and a                                         ; $5573: $a7
    add l                                         ; $5574: $85
    rst $08                                       ; $5575: $cf
    adc h                                         ; $5576: $8c
    jp $8418                                      ; $5577: $c3 $18 $84


    and d                                         ; $557a: $a2
    adc d                                         ; $557b: $8a
    pop bc                                        ; $557c: $c1
    push bc                                       ; $557d: $c5
    ldh [rOCPD], a                                ; $557e: $e0 $6b
    ld l, e                                       ; $5580: $6b
    cp l                                          ; $5581: $bd
    ldh [rSC], a                                  ; $5582: $e0 $02
    ld [c], a                                     ; $5584: $e2
    ccf                                           ; $5585: $3f
    ret nz                                        ; $5586: $c0

    ld c, $b7                                     ; $5587: $0e $b7
    and b                                         ; $5589: $a0
    ld l, l                                       ; $558a: $6d
    ld l, l                                       ; $558b: $6d
    ld l, l                                       ; $558c: $6d
    adc a                                         ; $558d: $8f
    or a                                          ; $558e: $b7
    adc h                                         ; $558f: $8c
    jp $e0c8                                      ; $5590: $c3 $c8 $e0


    adc l                                         ; $5593: $8d
    jp $c27e                                      ; $5594: $c3 $7e $c2


    pop hl                                        ; $5597: $e1
    ld l, e                                       ; $5598: $6b
    ld c, e                                       ; $5599: $4b
    ld l, e                                       ; $559a: $6b
    ld l, e                                       ; $559b: $6b
    ld c, h                                       ; $559c: $4c
    inc c                                         ; $559d: $0c
    rst $38                                       ; $559e: $ff
    and $81                                       ; $559f: $e6 $81
    inc l                                         ; $55a1: $2c
    cp [hl]                                       ; $55a2: $be
    and l                                         ; $55a3: $a5
    ld a, e                                       ; $55a4: $7b
    xor a                                         ; $55a5: $af
    dec de                                        ; $55a6: $1b
    and d                                         ; $55a7: $a2
    add d                                         ; $55a8: $82
    ld [c], a                                     ; $55a9: $e2
    adc h                                         ; $55aa: $8c
    jp $e283                                      ; $55ab: $c3 $83 $e2


    ld l, e                                       ; $55ae: $6b
    sub $06                                       ; $55af: $d6 $06
    ret nz                                        ; $55b1: $c0

    ld c, h                                       ; $55b2: $4c
    inc l                                         ; $55b3: $2c
    dec sp                                        ; $55b4: $3b
    pop bc                                        ; $55b5: $c1
    ld c, e                                       ; $55b6: $4b
    push af                                       ; $55b7: $f5
    ldh [$0d], a                                  ; $55b8: $e0 $0d
    dec c                                         ; $55ba: $0d
    ld d, c                                       ; $55bb: $51
    ld l, l                                       ; $55bc: $6d
    ld h, e                                       ; $55bd: $63
    ldh [rP1], a                                  ; $55be: $e0 $00
    or l                                          ; $55c0: $b5
    add c                                         ; $55c1: $81
    db $e3                                        ; $55c2: $e3
    ld c, e                                       ; $55c3: $4b
    add d                                         ; $55c4: $82
    ldh [rWX], a                                  ; $55c5: $e0 $4b
    adc l                                         ; $55c7: $8d
    ret nz                                        ; $55c8: $c0

    ld b, [hl]                                    ; $55c9: $46
    adc b                                         ; $55ca: $88
    ldh [rOCPD], a                                ; $55cb: $e0 $6b
    dec bc                                        ; $55cd: $0b
    add [hl]                                      ; $55ce: $86
    ld [c], a                                     ; $55cf: $e2
    pop bc                                        ; $55d0: $c1
    ldh [$fb], a                                  ; $55d1: $e0 $fb
    and c                                         ; $55d3: $a1
    ld l, e                                       ; $55d4: $6b
    ccf                                           ; $55d5: $3f
    pop hl                                        ; $55d6: $e1
    or b                                          ; $55d7: $b0
    scf                                           ; $55d8: $37
    add h                                         ; $55d9: $84
    add l                                         ; $55da: $85
    or h                                          ; $55db: $b4
    ret nz                                        ; $55dc: $c0

    db $e3                                        ; $55dd: $e3
    cp l                                          ; $55de: $bd
    pop hl                                        ; $55df: $e1
    ld l, e                                       ; $55e0: $6b
    dec hl                                        ; $55e1: $2b
    dec b                                         ; $55e2: $05
    ldh [$4c], a                                  ; $55e3: $e0 $4c
    ld [$e2c5], sp                                ; $55e5: $08 $c5 $e2
    db $fc                                        ; $55e8: $fc
    and e                                         ; $55e9: $a3
    ld a, h                                       ; $55ea: $7c
    and b                                         ; $55eb: $a0
    ld l, l                                       ; $55ec: $6d
    db $fd                                        ; $55ed: $fd
    add h                                         ; $55ee: $84
    adc a                                         ; $55ef: $8f
    sub a                                         ; $55f0: $97
    call nc, $9661                                ; $55f1: $d4 $61 $96
    add d                                         ; $55f4: $82
    ld [de], a                                    ; $55f5: $12
    jp z, $2bc0                                   ; $55f6: $ca $c0 $2b

    ld c, b                                       ; $55f9: $48
    ld [c], a                                     ; $55fa: $e2
    cp $e7                                        ; $55fb: $fe $e7
    dec c                                         ; $55fd: $0d
    ret z                                         ; $55fe: $c8

    ret nz                                        ; $55ff: $c0

    or a                                          ; $5600: $b7
    ld h, l                                       ; $5601: $65
    nop                                           ; $5602: $00
    sub h                                         ; $5603: $94
    db $fc                                        ; $5604: $fc
    sbc h                                         ; $5605: $9c
    ld h, e                                       ; $5606: $63
    ld d, l                                       ; $5607: $55
    add c                                         ; $5608: $81
    dec hl                                        ; $5609: $2b
    dec hl                                        ; $560a: $2b
    dec bc                                        ; $560b: $0b
    ld a, [bc]                                    ; $560c: $0a
    ld c, e                                       ; $560d: $4b
    inc c                                         ; $560e: $0c
    add d                                         ; $560f: $82
    add e                                         ; $5610: $83
    and h                                         ; $5611: $a4
    dec l                                         ; $5612: $2d
    pop bc                                        ; $5613: $c1
    db $e3                                        ; $5614: $e3
    jp hl                                         ; $5615: $e9


    add e                                         ; $5616: $83
    nop                                           ; $5617: $00
    sbc c                                         ; $5618: $99
    sbc h                                         ; $5619: $9c
    ld h, d                                       ; $561a: $62
    ld d, l                                       ; $561b: $55
    ld [c], a                                     ; $561c: $e2
    dec bc                                        ; $561d: $0b
    rla                                           ; $561e: $17
    dec hl                                        ; $561f: $2b
    dec hl                                        ; $5620: $2b
    ld l, e                                       ; $5621: $6b
    ret                                           ; $5622: $c9


    jp nz, Jump_06d_4b6d                          ; $5623: $c2 $6d $4b

    jp nz, $e382                                  ; $5626: $c2 $82 $e3

    xor c                                         ; $5629: $a9
    add d                                         ; $562a: $82
    nop                                           ; $562b: $00
    nop                                           ; $562c: $00
    sbc c                                         ; $562d: $99
    ld h, b                                       ; $562e: $60
    and h                                         ; $562f: $a4
    adc e                                         ; $5630: $8b
    and b                                         ; $5631: $a0
    add hl, bc                                    ; $5632: $09
    ret nz                                        ; $5633: $c0

    adc d                                         ; $5634: $8a
    ret nz                                        ; $5635: $c0

    dec c                                         ; $5636: $0d
    and $88                                       ; $5637: $e6 $88
    ret nz                                        ; $5639: $c0

    and l                                         ; $563a: $a5
    db $e3                                        ; $563b: $e3
    inc h                                         ; $563c: $24
    nop                                           ; $563d: $00
    ld a, d                                       ; $563e: $7a
    ld b, e                                       ; $563f: $43
    and h                                         ; $5640: $a4
    ld l, l                                       ; $5641: $6d
    add d                                         ; $5642: $82
    ret nz                                        ; $5643: $c0

    ld c, [hl]                                    ; $5644: $4e
    add b                                         ; $5645: $80
    inc c                                         ; $5646: $0c
    ld c, d                                       ; $5647: $4a
    add b                                         ; $5648: $80
    ld c, l                                       ; $5649: $4d
    add d                                         ; $564a: $82
    ldh [rNR52], a                                ; $564b: $e0 $26
    call nz, Call_06d_46c1                        ; $564d: $c4 $c1 $46
    ld a, [bc]                                    ; $5650: $0a
    sub l                                         ; $5651: $95
    rst $10                                       ; $5652: $d7
    db $e4                                        ; $5653: $e4
    add d                                         ; $5654: $82
    and c                                         ; $5655: $a1
    ld c, e                                       ; $5656: $4b
    dec bc                                        ; $5657: $0b
    dec c                                         ; $5658: $0d
    add d                                         ; $5659: $82
    add c                                         ; $565a: $81
    pop hl                                        ; $565b: $e1
    ld c, e                                       ; $565c: $4b
    ret nz                                        ; $565d: $c0

    push hl                                       ; $565e: $e5
    ld h, d                                       ; $565f: $62
    add [hl]                                      ; $5660: $86
    nop                                           ; $5661: $00
    ld [hl], l                                    ; $5662: $75
    adc [hl]                                      ; $5663: $8e
    add d                                         ; $5664: $82
    rst $08                                       ; $5665: $cf
    ld h, h                                       ; $5666: $64
    dec hl                                        ; $5667: $2b
    ld b, $81                                     ; $5668: $06 $81
    and b                                         ; $566a: $a0
    ld l, e                                       ; $566b: $6b
    dec bc                                        ; $566c: $0b
    add c                                         ; $566d: $81
    pop hl                                        ; $566e: $e1
    ret nz                                        ; $566f: $c0

    db $e3                                        ; $5670: $e3
    push bc                                       ; $5671: $c5
    ld b, d                                       ; $5672: $42
    add l                                         ; $5673: $85
    ld h, a                                       ; $5674: $67
    nop                                           ; $5675: $00
    ld [hl], l                                    ; $5676: $75
    inc c                                         ; $5677: $0c
    ld b, e                                       ; $5678: $43

jr_06d_5679:
    and h                                         ; $5679: $a4
    sub b                                         ; $567a: $90
    add c                                         ; $567b: $81
    ld l, e                                       ; $567c: $6b
    dec c                                         ; $567d: $0d
    ret nz                                        ; $567e: $c0

    pop hl                                        ; $567f: $e1
    ld c, c                                       ; $5680: $49
    ld h, b                                       ; $5681: $60
    ld c, h                                       ; $5682: $4c
    ld h, b                                       ; $5683: $60
    push af                                       ; $5684: $f5
    ld b, d                                       ; $5685: $42
    ld l, b                                       ; $5686: $68
    jp z, Jump_000_00ad                           ; $5687: $ca $ad $00

    ld d, c                                       ; $568a: $51
    ret nc                                        ; $568b: $d0

    ld b, h                                       ; $568c: $44
    dec hl                                        ; $568d: $2b
    dec d                                         ; $568e: $15
    add d                                         ; $568f: $82
    dec hl                                        ; $5690: $2b
    dec hl                                        ; $5691: $2b
    ld b, e                                       ; $5692: $43
    jp nz, $d580                                  ; $5693: $c2 $80 $d5

    add b                                         ; $5696: $80
    ret nz                                        ; $5697: $c0

    ld b, b                                       ; $5698: $40
    di                                            ; $5699: $f3
    ld h, e                                       ; $569a: $63
    add sp, $2c                                   ; $569b: $e8 $2c
    add l                                         ; $569d: $85
    sub b                                         ; $569e: $90
    sub a                                         ; $569f: $97
    jp nz, $a318                                  ; $56a0: $c2 $18 $a3

    ld l, e                                       ; $56a3: $6b
    and b                                         ; $56a4: $a0
    inc bc                                        ; $56a5: $03
    pop bc                                        ; $56a6: $c1
    adc e                                         ; $56a7: $8b
    jp $8311                                      ; $56a8: $c3 $11 $83


    ld c, a                                       ; $56ab: $4f
    dec l                                         ; $56ac: $2d
    nop                                           ; $56ad: $00
    push af                                       ; $56ae: $f5
    dec l                                         ; $56af: $2d
    call nz, $2bc0                                ; $56b0: $c4 $c0 $2b
    ld bc, $7f2b                                  ; $56b3: $01 $2b $7f
    ret nz                                        ; $56b6: $c0

    add c                                         ; $56b7: $81
    ret nz                                        ; $56b8: $c0

    push de                                       ; $56b9: $d5
    add d                                         ; $56ba: $82
    ld sp, hl                                     ; $56bb: $f9
    ld hl, $2ed4                                  ; $56bc: $21 $d4 $2e
    nop                                           ; $56bf: $00

Jump_06d_56c0:
    ld [hl-], a                                   ; $56c0: $32
    ld a, [hl]                                    ; $56c1: $7e
    db $e3                                        ; $56c2: $e3
    nop                                           ; $56c3: $00
    sub e                                         ; $56c4: $93
    and b                                         ; $56c5: $a0
    ld d, e                                       ; $56c6: $53
    ld h, b                                       ; $56c7: $60
    adc h                                         ; $56c8: $8c
    add c                                         ; $56c9: $81
    ld c, $41                                     ; $56ca: $0e $41
    jp z, Jump_06d_4f26                           ; $56cc: $ca $26 $4f

    dec hl                                        ; $56cf: $2b
    nop                                           ; $56d0: $00
    ld [hl], l                                    ; $56d1: $75
    and [hl]                                      ; $56d2: $a6
    ld [hl+], a                                   ; $56d3: $22
    ld [bc], a                                    ; $56d4: $02
    dec b                                         ; $56d5: $05
    and b                                         ; $56d6: $a0
    dec c                                         ; $56d7: $0d
    ld b, h                                       ; $56d8: $44
    and c                                         ; $56d9: $a1
    ld d, b                                       ; $56da: $50
    ld b, d                                       ; $56db: $42
    ret nz                                        ; $56dc: $c0

    ld hl, $12e8                                  ; $56dd: $21 $e8 $12
    nop                                           ; $56e0: $00
    sub b                                         ; $56e1: $90
    dec e                                         ; $56e2: $1d
    inc hl                                        ; $56e3: $23
    add c                                         ; $56e4: $81
    dec l                                         ; $56e5: $2d
    ld b, [hl]                                    ; $56e6: $46
    add c                                         ; $56e7: $81
    jp nz, Jump_06d_43a0                          ; $56e8: $c2 $a0 $43

    call nz, Call_06d_6411                        ; $56eb: $c4 $11 $64
    nop                                           ; $56ee: $00
    db $fc                                        ; $56ef: $fc
    call Call_06d_4d07                            ; $56f0: $cd $07 $4d
    jr jr_06d_5679                                ; $56f3: $18 $84

    add b                                         ; $56f5: $80
    bit 4, b                                      ; $56f6: $cb $60
    call nz, Call_06d_4d80                        ; $56f8: $c4 $80 $4d
    dec l                                         ; $56fb: $2d
    sub b                                         ; $56fc: $90
    inc hl                                        ; $56fd: $23
    nop                                           ; $56fe: $00
    rst $38                                       ; $56ff: $ff
    nop                                           ; $5700: $00
    adc b                                         ; $5701: $88
    nop                                           ; $5702: $00
    ld b, $62                                     ; $5703: $06 $62
    inc bc                                        ; $5705: $03
    add b                                         ; $5706: $80
    add h                                         ; $5707: $84
    add c                                         ; $5708: $81
    dec c                                         ; $5709: $0d
    inc hl                                        ; $570a: $23
    nop                                           ; $570b: $00
    rst $38                                       ; $570c: $ff
    nop                                           ; $570d: $00
    adc d                                         ; $570e: $8a
    jp nz, Jump_06d_4a40                          ; $570f: $c2 $40 $4a

jr_06d_5712:
    ld h, c                                       ; $5712: $61
    add e                                         ; $5713: $83
    inc c                                         ; $5714: $0c
    ld l, h                                       ; $5715: $6c
    rst $38                                       ; $5716: $ff
    jp $16de                                      ; $5717: $c3 $de $16


    ld a, [bc]                                    ; $571a: $0a
    dec [hl]                                      ; $571b: $35
    ld d, a                                       ; $571c: $57
    ld h, c                                       ; $571d: $61
    ccf                                           ; $571e: $3f
    ld [c], a                                     ; $571f: $e2
    ld l, h                                       ; $5720: $6c
    ret nz                                        ; $5721: $c0

    rst $38                                       ; $5722: $ff
    push bc                                       ; $5723: $c5
    nop                                           ; $5724: $00
    rst $38                                       ; $5725: $ff
    and [hl]                                      ; $5726: $a6
    add d                                         ; $5727: $82
    jp $e022                                      ; $5728: $c3 $22 $e0


    nop                                           ; $572b: $00
    db $d3                                        ; $572c: $d3
    nop                                           ; $572d: $00
    ld l, e                                       ; $572e: $6b
    ld l, e                                       ; $572f: $6b
    add b                                         ; $5730: $80
    ld a, [hl]                                    ; $5731: $7e
    jp nz, $e380                                  ; $5732: $c2 $80 $e3

    adc a                                         ; $5735: $8f
    inc hl                                        ; $5736: $23
    nop                                           ; $5737: $00
    rst $38                                       ; $5738: $ff
    ld a, [hl]                                    ; $5739: $7e
    ld b, h                                       ; $573a: $44
    inc bc                                        ; $573b: $03
    ld b, c                                       ; $573c: $41

jr_06d_573d:
    ld bc, $0b80                                  ; $573d: $01 $80 $0b
    ld b, b                                       ; $5740: $40
    ret nz                                        ; $5741: $c0

    pop hl                                        ; $5742: $e1
    xor a                                         ; $5743: $af
    ld h, l                                       ; $5744: $65
    nop                                           ; $5745: $00
    rst $38                                       ; $5746: $ff
    ld c, d                                       ; $5747: $4a
    inc b                                         ; $5748: $04
    add l                                         ; $5749: $85
    ld [hl+], a                                   ; $574a: $22
    cp a                                          ; $574b: $bf
    pop bc                                        ; $574c: $c1
    ld a, [bc]                                    ; $574d: $0a
    ld a, a                                       ; $574e: $7f
    and c                                         ; $574f: $a1
    jr nz, jr_06d_5712                            ; $5750: $20 $c0

    push bc                                       ; $5752: $c5
    nop                                           ; $5753: $00
    rst $30                                       ; $5754: $f7
    ld a, [bc]                                    ; $5755: $0a
    add l                                         ; $5756: $85
    jr jr_06d_573d                                ; $5757: $18 $e4

    add c                                         ; $5759: $81
    add c                                         ; $575a: $81
    dec hl                                        ; $575b: $2b
    ld c, $40                                     ; $575c: $0e $40
    ld c, [hl]                                    ; $575e: $4e
    jr nz, jr_06d_5762                            ; $575f: $20 $01

    dec bc                                        ; $5761: $0b

jr_06d_5762:
    ccf                                           ; $5762: $3f
    add b                                         ; $5763: $80
    or l                                          ; $5764: $b5
    ld b, e                                       ; $5765: $43
    ld a, [bc]                                    ; $5766: $0a
    adc c                                         ; $5767: $89
    nop                                           ; $5768: $00
    xor e                                         ; $5769: $ab
    pop de                                        ; $576a: $d1
    ld b, e                                       ; $576b: $43
    ld [$3f44], sp                                ; $576c: $08 $44 $3f
    inc bc                                        ; $576f: $03
    ld de, $862b                                  ; $5770: $11 $2b $86
    ld h, c                                       ; $5773: $61
    jp nz, $c2e1                                  ; $5774: $c2 $e1 $c2

    ld b, b                                       ; $5777: $40
    ld l, h                                       ; $5778: $6c
    cp $a0                                        ; $5779: $fe $a0
    xor l                                         ; $577b: $ad
    inc hl                                        ; $577c: $23
    nop                                           ; $577d: $00
    pop af                                        ; $577e: $f1
    nop                                           ; $577f: $00
    and a                                         ; $5780: $a7
    push bc                                       ; $5781: $c5
    inc h                                         ; $5782: $24
    add l                                         ; $5783: $85
    add d                                         ; $5784: $82
    inc bc                                        ; $5785: $03
    ld [de], a                                    ; $5786: $12
    jr nz, jr_06d_57d3                            ; $5787: $20 $4a

    ld [hl+], a                                   ; $5789: $22
    ret                                           ; $578a: $c9


    nop                                           ; $578b: $00
    cp a                                          ; $578c: $bf
    ldh [$ce], a                                  ; $578d: $e0 $ce
    jr nz, jr_06d_57b1                            ; $578f: $20 $20

    ld l, c                                       ; $5791: $69
    and h                                         ; $5792: $a4
    nop                                           ; $5793: $00
    ret nc                                        ; $5794: $d0

    inc l                                         ; $5795: $2c
    ld h, l                                       ; $5796: $65
    adc d                                         ; $5797: $8a
    jp Jump_06d_43c6                              ; $5798: $c3 $c6 $43


    ld l, l                                       ; $579b: $6d
    add $c1                                       ; $579c: $c6 $c1
    dec bc                                        ; $579e: $0b
    ld hl, $4802                                  ; $579f: $21 $02 $48
    ld [hl+], a                                   ; $57a2: $22
    inc c                                         ; $57a3: $0c
    ret nz                                        ; $57a4: $c0

    db $e3                                        ; $57a5: $e3
    ld a, [bc]                                    ; $57a6: $0a
    ld h, a                                       ; $57a7: $67
    jp z, Jump_06d_6887                           ; $57a8: $ca $87 $68

    ld h, h                                       ; $57ab: $64
    ld d, b                                       ; $57ac: $50
    and d                                         ; $57ad: $a2
    ld c, e                                       ; $57ae: $4b
    add b                                         ; $57af: $80
    nop                                           ; $57b0: $00

jr_06d_57b1:
    add $45                                       ; $57b1: $c6 $45
    ld c, d                                       ; $57b3: $4a
    ld b, b                                       ; $57b4: $40
    ret nz                                        ; $57b5: $c0

    db $e4                                        ; $57b6: $e4
    cp $40                                        ; $57b7: $fe $40
    nop                                           ; $57b9: $00
    ld b, b                                       ; $57ba: $40
    dec a                                         ; $57bb: $3d
    and d                                         ; $57bc: $a2
    call nc, $2533                                ; $57bd: $d4 $33 $25

Jump_06d_57c0:
    and h                                         ; $57c0: $a4
    ld b, $ee                                     ; $57c1: $06 $ee
    nop                                           ; $57c3: $00
    ld l, e                                       ; $57c4: $6b
    ld l, e                                       ; $57c5: $6b
    jr @-$1d                                      ; $57c6: $18 $e1

    add h                                         ; $57c8: $84
    pop bc                                        ; $57c9: $c1
    ld c, h                                       ; $57ca: $4c
    ld hl, $e380                                  ; $57cb: $21 $80 $e3
    ld b, l                                       ; $57ce: $45
    ld h, b                                       ; $57cf: $60
    jr nz, jr_06d_584e                            ; $57d0: $20 $7c

    add c                                         ; $57d2: $81

jr_06d_57d3:
    dec c                                         ; $57d3: $0d
    ld [hl+], a                                   ; $57d4: $22
    nop                                           ; $57d5: $00
    adc $d3                                       ; $57d6: $ce $d3
    ld h, d                                       ; $57d8: $62
    ld l, c                                       ; $57d9: $69
    ld h, h                                       ; $57da: $64
    ld c, l                                       ; $57db: $4d
    pop bc                                        ; $57dc: $c1
    ldh [$bf], a                                  ; $57dd: $e0 $bf
    ldh [$30], a                                  ; $57df: $e0 $30
    add a                                         ; $57e1: $87
    ld b, e                                       ; $57e2: $43
    add hl, bc                                    ; $57e3: $09
    ld b, c                                       ; $57e4: $41
    adc d                                         ; $57e5: $8a
    ld [bc], a                                    ; $57e6: $02
    rst $00                                       ; $57e7: $c7

jr_06d_57e8:
    ldh [$2d], a                                  ; $57e8: $e0 $2d
    dec l                                         ; $57ea: $2d
    ret nz                                        ; $57eb: $c0

    db $e3                                        ; $57ec: $e3
    ccf                                           ; $57ed: $3f
    add $80                                       ; $57ee: $c6 $80
    ld e, c                                       ; $57f0: $59
    add hl, hl                                    ; $57f1: $29
    cpl                                           ; $57f2: $2f
    ld h, c                                       ; $57f3: $61
    inc l                                         ; $57f4: $2c
    rlca                                          ; $57f5: $07
    rst $10                                       ; $57f6: $d7
    ret nz                                        ; $57f7: $c0

    ld d, [hl]                                    ; $57f8: $56
    inc bc                                        ; $57f9: $03
    ret z                                         ; $57fa: $c8

    and c                                         ; $57fb: $a1
    ret                                           ; $57fc: $c9


    nop                                           ; $57fd: $00
    dec c                                         ; $57fe: $0d
    add b                                         ; $57ff: $80
    ld a, $20                                     ; $5800: $3e $20
    pop bc                                        ; $5802: $c1
    ldh [$bf], a                                  ; $5803: $e0 $bf
    ld hl, $22c9                                  ; $5805: $21 $c9 $22
    call nc, Call_06d_44b0                        ; $5808: $d4 $b0 $44
    db $e4                                        ; $580b: $e4
    inc hl                                        ; $580c: $23
    inc h                                         ; $580d: $24
    inc c                                         ; $580e: $0c
    db $10                                        ; $580f: $10
    ret nc                                        ; $5810: $d0

    jp nz, $e186                                  ; $5811: $c2 $86 $e1

    add h                                         ; $5814: $84
    ld b, c                                       ; $5815: $41
    call nz, Call_000_2de0                        ; $5816: $c4 $e0 $2d
    ccf                                           ; $5819: $3f
    ldh [$c1], a                                  ; $581a: $e0 $c1
    db $e3                                        ; $581c: $e3
    ret                                           ; $581d: $c9


    inc h                                         ; $581e: $24
    add b                                         ; $581f: $80
    call nc, $bb90                                ; $5820: $d4 $90 $bb
    push hl                                       ; $5823: $e5
    ret nz                                        ; $5824: $c0

    db $e3                                        ; $5825: $e3
    res 4, b                                      ; $5826: $cb $a0
    add $40                                       ; $5828: $c6 $40
    add e                                         ; $582a: $83
    ret nz                                        ; $582b: $c0

    pop bc                                        ; $582c: $c1
    ld [c], a                                     ; $582d: $e2
    ld c, e                                       ; $582e: $4b
    inc bc                                        ; $582f: $03
    ld c, h                                       ; $5830: $4c
    inc c                                         ; $5831: $0c
    ld b, l                                       ; $5832: $45
    nop                                           ; $5833: $00
    ld c, a                                       ; $5834: $4f
    ld [bc], a                                    ; $5835: $02
    ret z                                         ; $5836: $c8

    inc h                                         ; $5837: $24
    nop                                           ; $5838: $00
    xor h                                         ; $5839: $ac
    cpl                                           ; $583a: $2f
    ld b, [hl]                                    ; $583b: $46
    adc a                                         ; $583c: $8f
    ld b, d                                       ; $583d: $42
    ld b, d                                       ; $583e: $42
    ld a, $e1                                     ; $583f: $3e $e1
    dec hl                                        ; $5841: $2b
    ld d, h                                       ; $5842: $54
    nop                                           ; $5843: $00
    ret nz                                        ; $5844: $c0

    ld [c], a                                     ; $5845: $e2
    ld b, c                                       ; $5846: $41
    ldh [rSC], a                                  ; $5847: $e0 $02
    ld h, c                                       ; $5849: $61
    dec bc                                        ; $584a: $0b
    ld c, a                                       ; $584b: $4f
    inc bc                                        ; $584c: $03
    ld l, b                                       ; $584d: $68

jr_06d_584e:
    nop                                           ; $584e: $00
    ld [hl], h                                    ; $584f: $74
    add hl, hl                                    ; $5850: $29
    and e                                         ; $5851: $a3
    and h                                         ; $5852: $a4
    ld b, c                                       ; $5853: $41
    ld l, l                                       ; $5854: $6d
    ld d, b                                       ; $5855: $50
    ld b, b                                       ; $5856: $40
    ld l, e                                       ; $5857: $6b

jr_06d_5858:
    ld l, e                                       ; $5858: $6b
    ld a, $e0                                     ; $5859: $3e $e0
    ld [bc], a                                    ; $585b: $02
    ret nz                                        ; $585c: $c0

    pop hl                                        ; $585d: $e1
    dec bc                                        ; $585e: $0b
    ld a, e                                       ; $585f: $7b
    ldh [rLYC], a                                 ; $5860: $e0 $45
    jr nz, jr_06d_57e8                            ; $5862: $20 $84

    ldh [rVBK], a                                 ; $5864: $e0 $4f
    dec b                                         ; $5866: $05
    ld b, $44                                     ; $5867: $06 $44
    nop                                           ; $5869: $00
    adc $c8                                       ; $586a: $ce $c8
    adc $a6                                       ; $586c: $ce $a6
    db $10                                        ; $586e: $10
    ld b, c                                       ; $586f: $41
    ret nz                                        ; $5870: $c0

    ldh [$6c], a                                  ; $5871: $e0 $6c
    ld c, l                                       ; $5873: $4d
    ret nz                                        ; $5874: $c0

    adc d                                         ; $5875: $8a
    add c                                         ; $5876: $81
    ld c, e                                       ; $5877: $4b
    dec bc                                        ; $5878: $0b
    ld bc, $042d                                  ; $5879: $01 $2d $04
    ld h, c                                       ; $587c: $61
    jr z, @-$3d                                   ; $587d: $28 $c1

    push hl                                       ; $587f: $e5
    add l                                         ; $5880: $85
    nop                                           ; $5881: $00
    or e                                          ; $5882: $b3
    adc $a5                                       ; $5883: $ce $a5
    ld d, c                                       ; $5885: $51
    jr nz, jr_06d_5858                            ; $5886: $20 $d0

    ld b, b                                       ; $5888: $40
    nop                                           ; $5889: $00
    cp a                                          ; $588a: $bf
    pop hl                                        ; $588b: $e1
    ld c, d                                       ; $588c: $4a
    ret nz                                        ; $588d: $c0

    push bc                                       ; $588e: $c5
    add b                                         ; $588f: $80
    ld b, a                                       ; $5890: $47
    ret nz                                        ; $5891: $c0

    dec b                                         ; $5892: $05
    ld b, c                                       ; $5893: $41
    ld c, b                                       ; $5894: $48
    inc bc                                        ; $5895: $03
    add l                                         ; $5896: $85
    or c                                          ; $5897: $b1
    ld d, l                                       ; $5898: $55
    ld c, c                                       ; $5899: $49
    ld [bc], a                                    ; $589a: $02
    ld [de], a                                    ; $589b: $12
    ld hl, $c72b                                  ; $589c: $21 $2b $c7
    ret nz                                        ; $589f: $c0

    ld a, h                                       ; $58a0: $7c
    pop bc                                        ; $58a1: $c1
    ld a, [hl-]                                   ; $58a2: $3a
    pop bc                                        ; $58a3: $c1
    ld [hl], b                                    ; $58a4: $70
    pop bc                                        ; $58a5: $c1
    ld [$09c0], sp                                ; $58a6: $08 $c0 $09
    jp $8540                                      ; $58a9: $c3 $40 $85


    or a                                          ; $58ac: $b7
    adc c                                         ; $58ad: $89
    add h                                         ; $58ae: $84
    db $d3                                        ; $58af: $d3
    inc bc                                        ; $58b0: $03
    cp a                                          ; $58b1: $bf
    push hl                                       ; $58b2: $e5
    cp [hl]                                       ; $58b3: $be
    ldh [$ed], a                                  ; $58b4: $e0 $ed
    and h                                         ; $58b6: $a4
    inc l                                         ; $58b7: $2c
    add hl, bc                                    ; $58b8: $09
    push bc                                       ; $58b9: $c5
    inc b                                         ; $58ba: $04
    add l                                         ; $58bb: $85
    ld d, c                                       ; $58bc: $51
    nop                                           ; $58bd: $00
    add a                                         ; $58be: $87
    ld c, l                                       ; $58bf: $4d
    call nc, $9800                                ; $58c0: $d4 $00 $98
    add b                                         ; $58c3: $80
    ld a, [hl]                                    ; $58c4: $7e
    db $e4                                        ; $58c5: $e4
    jp z, $c583                                   ; $58c6: $ca $83 $c5

    add e                                         ; $58c9: $83
    nop                                           ; $58ca: $00
    ld b, a                                       ; $58cb: $47
    inc hl                                        ; $58cc: $23
    ld e, c                                       ; $58cd: $59
    ld d, [hl]                                    ; $58ce: $56
    ld [hl-], a                                   ; $58cf: $32
    inc bc                                        ; $58d0: $03
    sub h                                         ; $58d1: $94
    ld [bc], a                                    ; $58d2: $02
    rst $38                                       ; $58d3: $ff
    db $e3                                        ; $58d4: $e3
    dec a                                         ; $58d5: $3d
    ldh [rLY], a                                  ; $58d6: $e0 $44
    db $e3                                        ; $58d8: $e3
    pop bc                                        ; $58d9: $c1
    db $e4                                        ; $58da: $e4
    nop                                           ; $58db: $00
    ld c, d                                       ; $58dc: $4a
    add $59                                       ; $58dd: $c6 $59
    ld [hl-], a                                   ; $58df: $32
    add l                                         ; $58e0: $85
    ld h, [hl]                                    ; $58e1: $66
    sbc d                                         ; $58e2: $9a
    nop                                           ; $58e3: $00
    ld b, b                                       ; $58e4: $40
    pop hl                                        ; $58e5: $e1
    ld a, [hl]                                    ; $58e6: $7e
    ld [c], a                                     ; $58e7: $e2
    jp z, Jump_06d_6ee1                           ; $58e8: $ca $e1 $6e

    add h                                         ; $58eb: $84
    jr z, jr_06d_5936                             ; $58ec: $28 $48

    jp $f785                                      ; $58ee: $c3 $85 $f7


    nop                                           ; $58f1: $00
    rst $20                                       ; $58f2: $e7
    dec bc                                        ; $58f3: $0b
    cp a                                          ; $58f4: $bf
    ld [c], a                                     ; $58f5: $e2
    dec hl                                        ; $58f6: $2b
    ld c, h                                       ; $58f7: $4c
    ld h, b                                       ; $58f8: $60
    ld [de], a                                    ; $58f9: $12
    jp Jump_06d_7910                              ; $58fa: $c3 $10 $79


    inc bc                                        ; $58fd: $03
    add [hl]                                      ; $58fe: $86
    jp $f585                                      ; $58ff: $c3 $85 $f5


    nop                                           ; $5902: $00
    add sp, $4d                                   ; $5903: $e8 $4d
    ld d, b                                       ; $5905: $50
    ldh [$7e], a                                  ; $5906: $e0 $7e
    ldh [$c1], a                                  ; $5908: $e0 $c1
    db $e3                                        ; $590a: $e3
    nop                                           ; $590b: $00
    sub l                                         ; $590c: $95
    ld b, [hl]                                    ; $590d: $46
    db $ed                                        ; $590e: $ed
    ld b, [hl]                                    ; $590f: $46
    nop                                           ; $5910: $00
    ld a, [$c122]                                 ; $5911: $fa $22 $c1
    call nc, $d700                                ; $5914: $d4 $00 $d7
    ld h, c                                       ; $5917: $61
    add d                                         ; $5918: $82
    db $e3                                        ; $5919: $e3
    ld [hl], e                                    ; $591a: $73
    ld h, h                                       ; $591b: $64
    nop                                           ; $591c: $00
    adc l                                         ; $591d: $8d
    inc bc                                        ; $591e: $03
    ld a, [bc]                                    ; $591f: $0a
    inc sp                                        ; $5920: $33
    nop                                           ; $5921: $00
    ld l, h                                       ; $5922: $6c
    sub e                                         ; $5923: $93
    ld [bc], a                                    ; $5924: $02
    inc d                                         ; $5925: $14
    add c                                         ; $5926: $81
    ld d, $a2                                     ; $5927: $16 $a2
    ld a, [hl]                                    ; $5929: $7e
    ld h, e                                       ; $592a: $63
    add l                                         ; $592b: $85
    rst $38                                       ; $592c: $ff
    nop                                           ; $592d: $00
    nop                                           ; $592e: $00
    push bc                                       ; $592f: $c5
    dec h                                         ; $5930: $25
    ld b, e                                       ; $5931: $43
    adc $c9                                       ; $5932: $ce $c9
    xor e                                         ; $5934: $ab
    ld h, a                                       ; $5935: $67

jr_06d_5936:
    add l                                         ; $5936: $85
    reti                                          ; $5937: $d9


    ld d, e                                       ; $5938: $53
    rlca                                          ; $5939: $07
    ld b, e                                       ; $593a: $43
    ld b, l                                       ; $593b: $45
    adc $c4                                       ; $593c: $ce $c4
    nop                                           ; $593e: $00
    adc a                                         ; $593f: $8f
    jp c, $b400                                   ; $5940: $da $00 $b4

    and $62                                       ; $5943: $e6 $62
    sbc c                                         ; $5945: $99
    sbc b                                         ; $5946: $98
    nop                                           ; $5947: $00
    db $d3                                        ; $5948: $d3
    nop                                           ; $5949: $00
    nop                                           ; $594a: $00
    nop                                           ; $594b: $00
    rst $38                                       ; $594c: $ff
    call c, $a0dd                                 ; $594d: $dc $dd $a0
    sbc $df                                       ; $5950: $de $df
    ldh [$e1], a                                  ; $5952: $e0 $e1
    ld [c], a                                     ; $5954: $e2
    or e                                          ; $5955: $b3
    db $e3                                        ; $5956: $e3
    db $e4                                        ; $5957: $e4
    or $fe                                        ; $5958: $f6 $fe
    rst $38                                       ; $595a: $ff
    ldh [$d6], a                                  ; $595b: $e0 $d6
    rst $10                                       ; $595d: $d7
    ld a, [$d8e0]                                 ; $595e: $fa $e0 $d8
    ld a, a                                       ; $5961: $7f
    reti                                          ; $5962: $d9


    and b                                         ; $5963: $a0
    and b                                         ; $5964: $a0
    ret nc                                        ; $5965: $d0

    pop de                                        ; $5966: $d1
    and b                                         ; $5967: $a0
    and b                                         ; $5968: $a0
    jp z, $ffe2                                   ; $5969: $ca $e2 $ff

    push hl                                       ; $596c: $e5
    and $e7                                       ; $596d: $e6 $e7
    and b                                         ; $596f: $a0
    add sp, -$17                                  ; $5970: $e8 $e9
    ld [$e3eb], a                                 ; $5972: $ea $eb $e3
    db $ec                                        ; $5975: $ec
    and b                                         ; $5976: $a0
    or $fe                                        ; $5977: $f6 $fe
    call z, $c5e0                                 ; $5979: $cc $e0 $c5
    pop hl                                        ; $597c: $e1
    and b                                         ; $597d: $a0
    jp c, $0fdb                                   ; $597e: $da $db $0f

    and b                                         ; $5981: $a0
    and b                                         ; $5982: $a0
    jp nc, $cad3                                  ; $5983: $d2 $d3 $ca

    db $e4                                        ; $5986: $e4
    add l                                         ; $5987: $85
    rst $38                                       ; $5988: $ff
    ld [c], a                                     ; $5989: $e2
    db $e3                                        ; $598a: $e3
    add d                                         ; $598b: $82
    ldh [$de], a                                  ; $598c: $e0 $de
    call z, $dae0                                 ; $598e: $cc $e0 $da
    db $db                                        ; $5991: $db
    push af                                       ; $5992: $f5
    or $78                                        ; $5993: $f6 $78
    ldh [$ed], a                                  ; $5995: $e0 $ed
    xor $0f                                       ; $5997: $ee $0f
    call nc, $efd5                                ; $5999: $d4 $d5 $ef
    and b                                         ; $599c: $a0
    jp z, $85e2                                   ; $599d: $ca $e2 $85

    rst $38                                       ; $59a0: $ff
    ld [c], a                                     ; $59a1: $e2
    ld [c], a                                     ; $59a2: $e2
    call z, $ffe5                                 ; $59a3: $cc $e5 $ff
    and b                                         ; $59a6: $a0
    sbc a                                         ; $59a7: $9f
    sbc l                                         ; $59a8: $9d
    sbc l                                         ; $59a9: $9d
    and d                                         ; $59aa: $a2
    sbc a                                         ; $59ab: $9f
    ldh a, [$f1]                                  ; $59ac: $f0 $f1
    rlca                                          ; $59ae: $07
    ld a, [c]                                     ; $59af: $f2
    di                                            ; $59b0: $f3
    db $f4                                        ; $59b1: $f4
    jp z, $85e3                                   ; $59b2: $ca $e3 $85

    rst $38                                       ; $59b5: $ff
    add l                                         ; $59b6: $85
    pop hl                                        ; $59b7: $e1
    inc b                                         ; $59b8: $04
    ldh [$cc], a                                  ; $59b9: $e0 $cc
    db $e3                                        ; $59bb: $e3
    rst $38                                       ; $59bc: $ff
    sbc a                                         ; $59bd: $9f
    sbc h                                         ; $59be: $9c
    ld b, [hl]                                    ; $59bf: $46
    ld b, [hl]                                    ; $59c0: $46
    ld b, [hl]                                    ; $59c1: $46
    sbc h                                         ; $59c2: $9c
    sbc a                                         ; $59c3: $9f
    and b                                         ; $59c4: $a0
    db $d3                                        ; $59c5: $d3
    push af                                       ; $59c6: $f5
    or $f5                                        ; $59c7: $f6 $f5
    jp nz, $ff00                                  ; $59c9: $c2 $00 $ff

    rst $20                                       ; $59cc: $e7
    call $e3c1                                    ; $59cd: $cd $c1 $e3
    db $e4                                        ; $59d0: $e4
    dec sp                                        ; $59d1: $3b
    sub $d7                                       ; $59d2: $d6 $d7
    ld b, a                                       ; $59d4: $47
    ldh [$9f], a                                  ; $59d5: $e0 $9f
    and d                                         ; $59d7: $a2
    sbc l                                         ; $59d8: $9d
    pop bc                                        ; $59d9: $c1
    pop hl                                        ; $59da: $e1
    cp a                                          ; $59db: $bf
    ld [c], a                                     ; $59dc: $e2
    add b                                         ; $59dd: $80
    push af                                       ; $59de: $f5
    jp $c4bb                                      ; $59df: $c3 $bb $c4


    ld a, [bc]                                    ; $59e2: $0a
    ld sp, hl                                     ; $59e3: $f9
    sub d                                         ; $59e4: $92
    ret nz                                        ; $59e5: $c0

    adc d                                         ; $59e6: $8a
    ret nz                                        ; $59e7: $c0

    adc h                                         ; $59e8: $8c
    pop bc                                        ; $59e9: $c1
    add h                                         ; $59ea: $84
    ld [c], a                                     ; $59eb: $e2
    ld b, [hl]                                    ; $59ec: $46
    rrca                                          ; $59ed: $0f
    ld b, [hl]                                    ; $59ee: $46
    or d                                          ; $59ef: $b2
    or d                                          ; $59f0: $b2
    or d                                          ; $59f1: $b2
    ld a, [hl]                                    ; $59f2: $7e
    pop hl                                        ; $59f3: $e1
    cp d                                          ; $59f4: $ba
    pop bc                                        ; $59f5: $c1
    nop                                           ; $59f6: $00
    db $fd                                        ; $59f7: $fd
    ld e, c                                       ; $59f8: $59
    pop bc                                        ; $59f9: $c1
    db $10                                        ; $59fa: $10
    sub d                                         ; $59fb: $92
    ret nz                                        ; $59fc: $c0

    ld c, a                                       ; $59fd: $4f
    ret nz                                        ; $59fe: $c0

    adc h                                         ; $59ff: $8c
    ret nz                                        ; $5a00: $c0

    ld b, l                                       ; $5a01: $45
    ld [c], a                                     ; $5a02: $e2
    xor [hl]                                      ; $5a03: $ae
    pop bc                                        ; $5a04: $c1
    pop hl                                        ; $5a05: $e1
    cp [hl]                                       ; $5a06: $be
    ldh [$7e], a                                  ; $5a07: $e0 $7e
    pop hl                                        ; $5a09: $e1
    add b                                         ; $5a0a: $80
    inc a                                         ; $5a0b: $3c
    pop bc                                        ; $5a0c: $c1
    nop                                           ; $5a0d: $00
    rst $30                                       ; $5a0e: $f7
    inc hl                                        ; $5a0f: $23
    pop hl                                        ; $5a10: $e1
    ld e, c                                       ; $5a11: $59
    ret nz                                        ; $5a12: $c0

    sub b                                         ; $5a13: $90
    pop bc                                        ; $5a14: $c1
    adc d                                         ; $5a15: $8a
    jp nz, $e382                                  ; $5a16: $c2 $82 $e3

    xor a                                         ; $5a19: $af
    rst $38                                       ; $5a1a: $ff
    ld a, c                                       ; $5a1b: $79
    ld a, d                                       ; $5a1c: $7a
    ld a, e                                       ; $5a1d: $7b
    ld a, e                                       ; $5a1e: $7b
    ld a, h                                       ; $5a1f: $7c
    ld a, l                                       ; $5a20: $7d
    or d                                          ; $5a21: $b2
    or d                                          ; $5a22: $b2

jr_06d_5a23:
    add c                                         ; $5a23: $81
    sbc [hl]                                      ; $5a24: $9e
    inc a                                         ; $5a25: $3c
    jp nz, $f700                                  ; $5a26: $c2 $00 $f7

    jp nc, $8da1                                  ; $5a29: $d2 $a1 $8d

    call nz, $c2c0                                ; $5a2c: $c4 $c0 $c2
    ld b, e                                       ; $5a2f: $43
    db $e4                                        ; $5a30: $e4
    ld a, c                                       ; $5a31: $79
    rst $38                                       ; $5a32: $ff
    ld a, [hl]                                    ; $5a33: $7e
    ld b, e                                       ; $5a34: $43
    ld b, c                                       ; $5a35: $41
    dec hl                                        ; $5a36: $2b
    dec hl                                        ; $5a37: $2b
    ld a, a                                       ; $5a38: $7f
    ld a, l                                       ; $5a39: $7d
    or d                                          ; $5a3a: $b2
    pop hl                                        ; $5a3b: $e1
    sbc [hl]                                      ; $5a3c: $9e
    ld [hl], b                                    ; $5a3d: $70
    call nz, $d600                                ; $5a3e: $c4 $00 $d6
    adc l                                         ; $5a41: $8d
    push bc                                       ; $5a42: $c5
    ld c, a                                       ; $5a43: $4f
    ret nz                                        ; $5a44: $c0

    sbc l                                         ; $5a45: $9d
    and d                                         ; $5a46: $a2
    sbc l                                         ; $5a47: $9d
    cp $c7                                        ; $5a48: $fe $c7
    jp Jump_000_3645                              ; $5a4a: $c3 $45 $36


    ld l, c                                       ; $5a4d: $69
    dec sp                                        ; $5a4e: $3b
    dec sp                                        ; $5a4f: $3b
    dec h                                         ; $5a50: $25
    jr nz, jr_06d_5ab2                            ; $5a51: $20 $5f

    jr nz, @+$2c                                  ; $5a53: $20 $2a

    ld a, a                                       ; $5a55: $7f
    ld a, l                                       ; $5a56: $7d
    and c                                         ; $5a57: $a1
    inc a                                         ; $5a58: $3c
    jp Jump_000_00a0                              ; $5a59: $c3 $a0 $00


    sub $f8                                       ; $5a5c: $d6 $f8
    ld d, e                                       ; $5a5e: $53
    and c                                         ; $5a5f: $a1
    ld c, c                                       ; $5a60: $49
    and $8a                                       ; $5a61: $e6 $8a
    jp nz, Jump_000_3745                          ; $5a63: $c2 $45 $37

    jr c, jr_06d_5a23                             ; $5a66: $38 $bb

    ld l, e                                       ; $5a68: $6b
    rst $38                                       ; $5a69: $ff
    ld l, h                                       ; $5a6a: $6c
    jr c, @+$2e                                   ; $5a6b: $38 $2c

    cpl                                           ; $5a6d: $2f
    cpl                                           ; $5a6e: $2f
    inc l                                         ; $5a6f: $2c
    add e                                         ; $5a70: $83
    add h                                         ; $5a71: $84
    add h                                         ; $5a72: $84
    ld b, b                                       ; $5a73: $40
    ldh [$3b], a                                  ; $5a74: $e0 $3b
    ret nz                                        ; $5a76: $c0

    and b                                         ; $5a77: $a0
    cp e                                          ; $5a78: $bb
    and e                                         ; $5a79: $a3
    adc a                                         ; $5a7a: $8f
    or e                                          ; $5a7b: $b3
    adc h                                         ; $5a7c: $8c
    jp $e00f                                      ; $5a7d: $c3 $0f $e0


    ld a, h                                       ; $5a80: $7c
    db $fd                                        ; $5a81: $fd
    ld a, l                                       ; $5a82: $7d
    adc d                                         ; $5a83: $8a
    pop bc                                        ; $5a84: $c1
    scf                                           ; $5a85: $37
    jr c, jr_06d_5abd                             ; $5a86: $38 $35

    dec [hl]                                      ; $5a88: $35
    dec [hl]                                      ; $5a89: $35
    ld l, [hl]                                    ; $5a8a: $6e
    dec sp                                        ; $5a8b: $3b
    ld [hl], b                                    ; $5a8c: $70
    adc b                                         ; $5a8d: $88
    rst $38                                       ; $5a8e: $ff
    pop hl                                        ; $5a8f: $e1
    add a                                         ; $5a90: $87
    add l                                         ; $5a91: $85
    sbc h                                         ; $5a92: $9c
    ld l, c                                       ; $5a93: $69
    ldh [$3a], a                                  ; $5a94: $e0 $3a
    ret nz                                        ; $5a96: $c0

    call z, $b88f                                 ; $5a97: $cc $8f $b8
    adc h                                         ; $5a9a: $8c
    jp Jump_06d_7e79                              ; $5a9b: $c3 $79 $7e


    ld c, [hl]                                    ; $5a9e: $4e
    ret nz                                        ; $5a9f: $c0

    db $10                                        ; $5aa0: $10
    ldh [$b2], a                                  ; $5aa1: $e0 $b2
    ld [hl], $7e                                  ; $5aa3: $36 $7e
    jp nz, Jump_000_35e0                          ; $5aa5: $c2 $e0 $35

    dec sp                                        ; $5aa8: $3b
    jr c, jr_06d_5ae2                             ; $5aa9: $38 $37

    ld [de], a                                    ; $5aab: $12
    inc de                                        ; $5aac: $13
    rst $38                                       ; $5aad: $ff
    rst $20                                       ; $5aae: $e7
    cp b                                          ; $5aaf: $b8
    nop                                           ; $5ab0: $00
    rst $10                                       ; $5ab1: $d7

jr_06d_5ab2:
    ld h, d                                       ; $5ab2: $62
    db $e3                                        ; $5ab3: $e3
    pop bc                                        ; $5ab4: $c1
    db $e4                                        ; $5ab5: $e4
    or d                                          ; $5ab6: $b2
    or d                                          ; $5ab7: $b2
    add c                                         ; $5ab8: $81
    add e                                         ; $5ab9: $83
    pop hl                                        ; $5aba: $e1
    jr c, jr_06d_5afc                             ; $5abb: $38 $3f

jr_06d_5abd:
    scf                                           ; $5abd: $37
    or d                                          ; $5abe: $b2
    or d                                          ; $5abf: $b2
    ld b, l                                       ; $5ac0: $45
    ld [de], a                                    ; $5ac1: $12
    ld [de], a                                    ; $5ac2: $12
    dec sp                                        ; $5ac3: $3b
    pop bc                                        ; $5ac4: $c1
    ld a, h                                       ; $5ac5: $7c
    and b                                         ; $5ac6: $a0
    cp b                                          ; $5ac7: $b8
    add b                                         ; $5ac8: $80
    ld [c], a                                     ; $5ac9: $e2
    nop                                           ; $5aca: $00
    cp b                                          ; $5acb: $b8
    ld d, h                                       ; $5acc: $54
    add c                                         ; $5acd: $81
    and c                                         ; $5ace: $a1
    ld b, [hl]                                    ; $5acf: $46
    add b                                         ; $5ad0: $80
    rst $08                                       ; $5ad1: $cf
    and c                                         ; $5ad2: $a1
    ld a, [hl-]                                   ; $5ad3: $3a
    ccf                                           ; $5ad4: $3f
    dec sp                                        ; $5ad5: $3b
    ld l, d                                       ; $5ad6: $6a
    dec [hl]                                      ; $5ad7: $35
    dec [hl]                                      ; $5ad8: $35
    ld [hl], $3f                                  ; $5ad9: $36 $3f
    add [hl]                                      ; $5adb: $86
    ld [c], a                                     ; $5adc: $e2
    pop bc                                        ; $5add: $c1
    ldh [$83], a                                  ; $5ade: $e0 $83
    ld b, [hl]                                    ; $5ae0: $46

jr_06d_5ae1:
    xor a                                         ; $5ae1: $af

jr_06d_5ae2:
    ld sp, hl                                     ; $5ae2: $f9
    and b                                         ; $5ae3: $a0
    nop                                           ; $5ae4: $00
    pop hl                                        ; $5ae5: $e1
    ld [hl-], a                                   ; $5ae6: $32
    add c                                         ; $5ae7: $81
    adc a                                         ; $5ae8: $8f
    sub a                                         ; $5ae9: $97
    add hl, de                                    ; $5aea: $19
    add b                                         ; $5aeb: $80
    sbc [hl]                                      ; $5aec: $9e
    rst $28                                       ; $5aed: $ef
    ld b, [hl]                                    ; $5aee: $46
    add d                                         ; $5aef: $82
    add e                                         ; $5af0: $83
    ld b, [hl]                                    ; $5af1: $46
    ld b, [hl]                                    ; $5af2: $46
    ldh [$6c], a                                  ; $5af3: $e0 $6c
    ld l, l                                       ; $5af5: $6d
    dec [hl]                                      ; $5af6: $35
    inc sp                                        ; $5af7: $33
    ld [hl], $12                                  ; $5af8: $36 $12
    push bc                                       ; $5afa: $c5
    ld [c], a                                     ; $5afb: $e2

jr_06d_5afc:
    ld a, a                                       ; $5afc: $7f
    and e                                         ; $5afd: $a3
    ld b, [hl]                                    ; $5afe: $46
    xor a                                         ; $5aff: $af

jr_06d_5b00:
    db $fd                                        ; $5b00: $fd
    add d                                         ; $5b01: $82
    rst $30                                       ; $5b02: $f7
    ld h, c                                       ; $5b03: $61
    db $fc                                        ; $5b04: $fc
    adc a                                         ; $5b05: $8f
    sub a                                         ; $5b06: $97
    adc l                                         ; $5b07: $8d
    and d                                         ; $5b08: $a2
    add l                                         ; $5b09: $85
    add [hl]                                      ; $5b0a: $86
    add e                                         ; $5b0b: $83
    or d                                          ; $5b0c: $b2

jr_06d_5b0d:
    ld a, [hl-]                                   ; $5b0d: $3a
    dec [hl]                                      ; $5b0e: $35
    ld h, a                                       ; $5b0f: $67
    ld [hl], e                                    ; $5b10: $73
    ld l, [hl]                                    ; $5b11: $6e
    ld a, [hl-]                                   ; $5b12: $3a
    ld c, b                                       ; $5b13: $48

jr_06d_5b14:
    pop hl                                        ; $5b14: $e1
    cp $e7                                        ; $5b15: $fe $e7
    sbc h                                         ; $5b17: $9c
    sbc a                                         ; $5b18: $9f
    or [hl]                                       ; $5b19: $b6
    ld h, c                                       ; $5b1a: $61
    ldh a, [$f7]                                  ; $5b1b: $f0 $f7
    ld h, c                                       ; $5b1d: $61
    nop                                           ; $5b1e: $00
    ret c                                         ; $5b1f: $d8

    sbc h                                         ; $5b20: $9c
    ld h, b                                       ; $5b21: $60
    cp a                                          ; $5b22: $bf
    ld [c], a                                     ; $5b23: $e2
    ld a, [hl-]                                   ; $5b24: $3a
    ld l, h                                       ; $5b25: $6c
    ld l, l                                       ; $5b26: $6d
    rlc e                                         ; $5b27: $cb $03
    add hl, sp                                    ; $5b29: $39
    ld de, $e40c                                  ; $5b2a: $11 $0c $e4
    cp a                                          ; $5b2d: $bf
    add d                                         ; $5b2e: $82
    ld a, a                                       ; $5b2f: $7f
    add b                                         ; $5b30: $80
    ld a, e                                       ; $5b31: $7b
    ld h, b                                       ; $5b32: $60
    nop                                           ; $5b33: $00
    sbc e                                         ; $5b34: $9b
    sbc h                                         ; $5b35: $9c
    ld h, c                                       ; $5b36: $61
    rst $38                                       ; $5b37: $ff
    push af                                       ; $5b38: $f5
    or $9e                                        ; $5b39: $f6 $9e
    ld b, [hl]                                    ; $5b3b: $46
    add l                                         ; $5b3c: $85
    add a                                         ; $5b3d: $87
    ld [hl], c                                    ; $5b3e: $71
    ld [hl], b                                    ; $5b3f: $70
    db $e3                                        ; $5b40: $e3
    ld l, [hl]                                    ; $5b41: $6e
    ld [hl], $c9                                  ; $5b42: $36 $c9
    pop bc                                        ; $5b44: $c1
    adc d                                         ; $5b45: $8a
    add c                                         ; $5b46: $81
    ccf                                           ; $5b47: $3f
    add d                                         ; $5b48: $82
    sbc h                                         ; $5b49: $9c
    sbc a                                         ; $5b4a: $9f
    ret nc                                        ; $5b4b: $d0

    pop af                                        ; $5b4c: $f1
    pop de                                        ; $5b4d: $d1
    ld a, e                                       ; $5b4e: $7b
    ld h, b                                       ; $5b4f: $60
    nop                                           ; $5b50: $00
    sbc e                                         ; $5b51: $9b
    sbc h                                         ; $5b52: $9c
    ld h, e                                       ; $5b53: $63
    sbc [hl]                                      ; $5b54: $9e
    ld b, [hl]                                    ; $5b55: $46
    ld b, [hl]                                    ; $5b56: $46
    add hl, sp                                    ; $5b57: $39
    jr nz, jr_06d_5ae1                            ; $5b58: $20 $87

    ret nz                                        ; $5b5a: $c0

    adc d                                         ; $5b5b: $8a
    ret nz                                        ; $5b5c: $c0

    call $0a81                                    ; $5b5d: $cd $81 $0a
    add c                                         ; $5b60: $81
    cp a                                          ; $5b61: $bf
    ld h, b                                       ; $5b62: $60
    sbc a                                         ; $5b63: $9f
    ld b, c                                       ; $5b64: $41
    ld h, c                                       ; $5b65: $61
    jp z, $fc44                                   ; $5b66: $ca $44 $fc

    adc a                                         ; $5b69: $8f
    halt                                          ; $5b6a: $76
    ld b, e                                       ; $5b6b: $43
    and e                                         ; $5b6c: $a3
    sbc h                                         ; $5b6d: $9c
    ld b, [hl]                                    ; $5b6e: $46
    xor [hl]                                      ; $5b6f: $ae
    ld a, [hl-]                                   ; $5b70: $3a
    ld a, [hl-]                                   ; $5b71: $3a
    or d                                          ; $5b72: $b2
    dec bc                                        ; $5b73: $0b
    or d                                          ; $5b74: $b2
    ld de, $804a                                  ; $5b75: $11 $4a $80
    and c                                         ; $5b78: $a1
    jr c, jr_06d_5b00                             ; $5b79: $38 $85

    ld b, c                                       ; $5b7b: $41
    ld h, h                                       ; $5b7c: $64
    nop                                           ; $5b7d: $00
    ld [hl], a                                    ; $5b7e: $77
    sub [hl]                                      ; $5b7f: $96
    ld b, [hl]                                    ; $5b80: $46
    rst $38                                       ; $5b81: $ff
    sbc a                                         ; $5b82: $9f
    sbc h                                         ; $5b83: $9c
    or d                                          ; $5b84: $b2
    or d                                          ; $5b85: $b2
    xor a                                         ; $5b86: $af
    inc a                                         ; $5b87: $3c
    ld a, [hl-]                                   ; $5b88: $3a
    or d                                          ; $5b89: $b2
    jr jr_06d_5b0d                                ; $5b8a: $18 $81

    pop hl                                        ; $5b8c: $e1
    ld c, [hl]                                    ; $5b8d: $4e
    ret nz                                        ; $5b8e: $c0

    jr c, jr_06d_5b14                             ; $5b8f: $38 $83

    sub $d7                                       ; $5b91: $d6 $d7
    ld b, c                                       ; $5b93: $41
    ld h, d                                       ; $5b94: $62
    jp z, $8544                                   ; $5b95: $ca $44 $85

    sub h                                         ; $5b98: $94
    cp $cf                                        ; $5b99: $fe $cf
    ld h, h                                       ; $5b9b: $64
    scf                                           ; $5b9c: $37
    scf                                           ; $5b9d: $37
    or d                                          ; $5b9e: $b2
    ld [hl], $3b                                  ; $5b9f: $36 $3b
    inc a                                         ; $5ba1: $3c
    ld b, h                                       ; $5ba2: $44
    nop                                           ; $5ba3: $00
    add c                                         ; $5ba4: $81
    pop hl                                        ; $5ba5: $e1
    ld c, $c0                                     ; $5ba6: $0e $c0
    add a                                         ; $5ba8: $87
    ld b, c                                       ; $5ba9: $41
    ld c, d                                       ; $5baa: $4a
    pop bc                                        ; $5bab: $c1
    and e                                         ; $5bac: $a3
    add d                                         ; $5bad: $82
    ld b, l                                       ; $5bae: $45
    and h                                         ; $5baf: $a4
    inc d                                         ; $5bb0: $14
    ld d, l                                       ; $5bb1: $55
    rst $08                                       ; $5bb2: $cf
    ld h, d                                       ; $5bb3: $62
    ld a, a                                       ; $5bb4: $7f
    add hl, sp                                    ; $5bb5: $39
    rst $08                                       ; $5bb6: $cf
    call Call_000_363b                            ; $5bb7: $cd $3b $36
    or d                                          ; $5bba: $b2
    ld a, [hl-]                                   ; $5bbb: $3a
    add e                                         ; $5bbc: $83
    jp nz, $ce06                                  ; $5bbd: $c2 $06 $ce

    and c                                         ; $5bc0: $a1
    push af                                       ; $5bc1: $f5
    or $77                                        ; $5bc2: $f6 $77
    ld b, b                                       ; $5bc4: $40
    ld b, c                                       ; $5bc5: $41
    ld b, c                                       ; $5bc6: $41
    jp z, $8547                                   ; $5bc7: $ca $47 $85

    ld d, e                                       ; $5bca: $53
    and e                                         ; $5bcb: $a3
    add d                                         ; $5bcc: $82
    rst $38                                       ; $5bcd: $ff
    and c                                         ; $5bce: $a1
    or d                                          ; $5bcf: $b2
    ld a, [hl-]                                   ; $5bd0: $3a
    adc $ce                                       ; $5bd1: $ce $ce
    xor h                                         ; $5bd3: $ac
    or d                                          ; $5bd4: $b2
    xor [hl]                                      ; $5bd5: $ae
    inc bc                                        ; $5bd6: $03
    ld a, [hl-]                                   ; $5bd7: $3a
    ld a, $43                                     ; $5bd8: $3e $43
    jp nz, $c08b                                  ; $5bda: $c2 $8b $c0

    db $f4                                        ; $5bdd: $f4
    ld h, h                                       ; $5bde: $64
    jp z, $8589                                   ; $5bdf: $ca $89 $85

    ld [hl], l                                    ; $5be2: $75
    sub [hl]                                      ; $5be3: $96
    jr nz, @+$01                                  ; $5be4: $20 $ff

    sbc [hl]                                      ; $5be6: $9e
    or d                                          ; $5be7: $b2
    ld [hl], $cf                                  ; $5be8: $36 $cf
    rst $08                                       ; $5bea: $cf
    xor l                                         ; $5beb: $ad
    or d                                          ; $5bec: $b2
    xor a                                         ; $5bed: $af
    add b                                         ; $5bee: $80
    add b                                         ; $5bef: $80
    ld [c], a                                     ; $5bf0: $e2
    adc h                                         ; $5bf1: $8c
    ld b, b                                       ; $5bf2: $40
    call z, $8f20                                 ; $5bf3: $cc $20 $8f
    ld b, b                                       ; $5bf6: $40
    ld c, a                                       ; $5bf7: $4f
    ld c, h                                       ; $5bf8: $4c
    nop                                           ; $5bf9: $00
    ld hl, sp-$3e                                 ; $5bfa: $f8 $c2
    ret nz                                        ; $5bfc: $c0

    inc a                                         ; $5bfd: $3c
    dec de                                        ; $5bfe: $1b
    rst $08                                       ; $5bff: $cf
    rst $08                                       ; $5c00: $cf
    ld b, b                                       ; $5c01: $40
    ldh [rLCDC], a                                ; $5c02: $e0 $40
    ld de, $404d                                  ; $5c04: $11 $4d $40
    ld [hl], e                                    ; $5c07: $73
    ld h, l                                       ; $5c08: $65
    call nc, $fe2c                                ; $5c09: $d4 $2c $fe
    nop                                           ; $5c0c: $00

Call_06d_5c0d:
    rst $30                                       ; $5c0d: $f7
    ret nc                                        ; $5c0e: $d0

    pop de                                        ; $5c0f: $d1
    sbc a                                         ; $5c10: $9f
    sbc h                                         ; $5c11: $9c
    ld [hl], $cf                                  ; $5c12: $36 $cf
    call z, $cf0b                                 ; $5c14: $cc $0b $cf
    xor h                                         ; $5c17: $ac
    ld b, h                                       ; $5c18: $44
    and c                                         ; $5c19: $a1
    sbc [hl]                                      ; $5c1a: $9e
    nop                                           ; $5c1b: $00

jr_06d_5c1c:
    ld b, h                                       ; $5c1c: $44
    call nc, $8f0e                                ; $5c1d: $d4 $0e $8f
    scf                                           ; $5c20: $37
    dec e                                         ; $5c21: $1d
    jr nz, @+$17                                  ; $5c22: $20 $15

    sbc [hl]                                      ; $5c24: $9e
    cp $c1                                        ; $5c25: $fe $c1
    xor l                                         ; $5c27: $ad
    ld b, h                                       ; $5c28: $44
    and c                                         ; $5c29: $a1
    sbc [hl]                                      ; $5c2a: $9e
    push bc                                       ; $5c2b: $c5
    ld bc, $2144                                  ; $5c2c: $01 $44 $21
    call nc, Call_06d_5c0d                        ; $5c2f: $d4 $0d $5c
    nop                                           ; $5c32: $00
    sub l                                         ; $5c33: $95
    dec e                                         ; $5c34: $1d
    ld [hl+], a                                   ; $5c35: $22
    sbc a                                         ; $5c36: $9f
    sbc h                                         ; $5c37: $9c
    ld a, $3f                                     ; $5c38: $3e $3f
    ldh [$ae], a                                  ; $5c3a: $e0 $ae
    inc b                                         ; $5c3c: $04
    and b                                         ; $5c3d: $a0
    pop hl                                        ; $5c3e: $e1
    and c                                         ; $5c3f: $a1
    ret nc                                        ; $5c40: $d0

    inc h                                         ; $5c41: $24
    nop                                           ; $5c42: $00
    rst $38                                       ; $5c43: $ff
    ld [hl], c                                    ; $5c44: $71
    inc b                                         ; $5c45: $04
    dec e                                         ; $5c46: $1d
    inc hl                                        ; $5c47: $23
    sbc [hl]                                      ; $5c48: $9e
    add hl, sp                                    ; $5c49: $39
    dec [hl]                                      ; $5c4a: $35
    rlca                                          ; $5c4b: $07
    inc a                                         ; $5c4c: $3c
    or d                                          ; $5c4d: $b2
    xor a                                         ; $5c4e: $af
    pop bc                                        ; $5c4f: $c1
    jp nz, Jump_000_22d0                          ; $5c50: $c2 $d0 $22

    nop                                           ; $5c53: $00
    rst $38                                       ; $5c54: $ff
    adc a                                         ; $5c55: $8f
    rlca                                          ; $5c56: $07
    ld c, l                                       ; $5c57: $4d
    ld hl, $9ebf                                  ; $5c58: $21 $bf $9e
    or d                                          ; $5c5b: $b2
    inc a                                         ; $5c5c: $3c
    dec [hl]                                      ; $5c5d: $35
    ld [hl], $45                                  ; $5c5e: $36 $45
    add h                                         ; $5c60: $84
    add c                                         ; $5c61: $81
    sbc [hl]                                      ; $5c62: $9e
    ldh a, [$0d]                                  ; $5c63: $f0 $0d
    jr nz, @-$2a                                  ; $5c65: $20 $d4

jr_06d_5c67:
    ld de, $178f                                  ; $5c67: $11 $8f $17
    ld a, [hl]                                    ; $5c6a: $7e
    jp Jump_000_353a                              ; $5c6b: $c3 $3a $35


    dec [hl]                                      ; $5c6e: $35
    xor [hl]                                      ; $5c6f: $ae
    ret nz                                        ; $5c70: $c0

    ld c, h                                       ; $5c71: $4c
    ld h, c                                       ; $5c72: $61
    rst $38                                       ; $5c73: $ff
    pop bc                                        ; $5c74: $c1
    ld e, c                                       ; $5c75: $59
    ld de, $b400                                  ; $5c76: $11 $00 $b4
    add h                                         ; $5c79: $84
    jr nz, @+$21                                  ; $5c7a: $20 $1f

    jr nz, jr_06d_5c1c                            ; $5c7c: $20 $9e

    ld b, [hl]                                    ; $5c7e: $46
    dec b                                         ; $5c7f: $05
    or d                                          ; $5c80: $b2
    ccf                                           ; $5c81: $3f
    ldh [$af], a                                  ; $5c82: $e0 $af
    cp a                                          ; $5c84: $bf
    pop hl                                        ; $5c85: $e1
    ld [bc], a                                    ; $5c86: $02
    and d                                         ; $5c87: $a2
    nop                                           ; $5c88: $00
    rst $38                                       ; $5c89: $ff
    add l                                         ; $5c8a: $85
    ld h, d                                       ; $5c8b: $62
    ld b, b                                       ; $5c8c: $40
    and c                                         ; $5c8d: $a1
    ld a, [$4223]                                 ; $5c8e: $fa $23 $42
    and c                                         ; $5c91: $a1
    db $d3                                        ; $5c92: $d3
    nop                                           ; $5c93: $00
    ld a, [hl-]                                   ; $5c94: $3a
    dec [hl]                                      ; $5c95: $35
    ld [hl], $af                                  ; $5c96: $36 $af
    ld b, [hl]                                    ; $5c98: $46
    add c                                         ; $5c99: $81
    ld de, $a202                                  ; $5c9a: $11 $02 $a2
    ld a, a                                       ; $5c9d: $7f
    and d                                         ; $5c9e: $a2
    nop                                           ; $5c9f: $00
    rst $38                                       ; $5ca0: $ff
    inc l                                         ; $5ca1: $2c
    ld bc, $8681                                  ; $5ca2: $01 $81 $86
    ccf                                           ; $5ca5: $3f
    pop hl                                        ; $5ca6: $e1
    add hl, sp                                    ; $5ca7: $39
    ld h, b                                       ; $5ca8: $60
    ret nz                                        ; $5ca9: $c0

    pop hl                                        ; $5caa: $e1
    ld b, b                                       ; $5cab: $40
    nop                                           ; $5cac: $00
    ld a, [bc]                                    ; $5cad: $0a
    add a                                         ; $5cae: $87
    nop                                           ; $5caf: $00
    cp e                                          ; $5cb0: $bb
    add c                                         ; $5cb1: $81
    add a                                         ; $5cb2: $87
    jr c, jr_06d_5c67                             ; $5cb3: $38 $b2

    cp a                                          ; $5cb5: $bf
    ret nz                                        ; $5cb6: $c0

    inc bc                                        ; $5cb7: $03
    srl [hl]                                      ; $5cb8: $cb $3e
    add b                                         ; $5cba: $80
    ld [c], a                                     ; $5cbb: $e2
    ld a, [bc]                                    ; $5cbc: $0a
    adc c                                         ; $5cbd: $89
    nop                                           ; $5cbe: $00
    or c                                          ; $5cbf: $b1
    ld a, [bc]                                    ; $5cc0: $0a
    add l                                         ; $5cc1: $85
    ld b, $82                                     ; $5cc2: $06 $82
    add c                                         ; $5cc4: $81
    add e                                         ; $5cc5: $83
    rst $38                                       ; $5cc6: $ff
    dec [hl]                                      ; $5cc7: $35
    ld [hl], $79                                  ; $5cc8: $36 $79
    ld a, d                                       ; $5cca: $7a
    ld h, l                                       ; $5ccb: $65
    ld h, [hl]                                    ; $5ccc: $66
    dec [hl]                                      ; $5ccd: $35
    ld a, [hl-]                                   ; $5cce: $3a
    ld b, $7e                                     ; $5ccf: $06 $7e
    ret nz                                        ; $5cd1: $c0

    sbc h                                         ; $5cd2: $9c
    sbc a                                         ; $5cd3: $9f
    ld a, [bc]                                    ; $5cd4: $0a
    adc c                                         ; $5cd5: $89
    nop                                           ; $5cd6: $00
    or b                                          ; $5cd7: $b0
    ld sp, $a102                                  ; $5cd8: $31 $02 $a1
    ld h, c                                       ; $5cdb: $61
    sbc l                                         ; $5cdc: $9d
    ld h, b                                       ; $5cdd: $60
    db $fc                                        ; $5cde: $fc
    sub [hl]                                      ; $5cdf: $96
    add b                                         ; $5ce0: $80
    dec b                                         ; $5ce1: $05
    ld h, b                                       ; $5ce2: $60
    ld b, l                                       ; $5ce3: $45
    ld a, [hl-]                                   ; $5ce4: $3a
    ld a, [hl-]                                   ; $5ce5: $3a
    ld a, c                                       ; $5ce6: $79
    ld a, [hl]                                    ; $5ce7: $7e
    ld [hl], $1f                                  ; $5ce8: $36 $1f
    dec [hl]                                      ; $5cea: $35
    ld l, b                                       ; $5ceb: $68
    ld h, [hl]                                    ; $5cec: $66
    bit 0, b                                      ; $5ced: $cb $40
    jp z, $0220                                   ; $5cef: $ca $20 $02

    ld h, c                                       ; $5cf2: $61
    inc sp                                        ; $5cf3: $33
    ld bc, $00c0                                  ; $5cf4: $01 $c0 $00
    pop af                                        ; $5cf7: $f1
    and a                                         ; $5cf8: $a7
    jp nz, $81a1                                  ; $5cf9: $c2 $a1 $81

    db $db                                        ; $5cfc: $db
    and c                                         ; $5cfd: $a1
    rst $10                                       ; $5cfe: $d7
    and b                                         ; $5cff: $a0
    sub [hl]                                      ; $5d00: $96
    add c                                         ; $5d01: $81
    and b                                         ; $5d02: $a0
    sbc [hl]                                      ; $5d03: $9e
    rst $28                                       ; $5d04: $ef
    ld b, b                                       ; $5d05: $40
    dec [hl]                                      ; $5d06: $35
    ld a, [hl-]                                   ; $5d07: $3a
    add b                                         ; $5d08: $80
    ld c, d                                       ; $5d09: $4a
    ld hl, $6577                                  ; $5d0a: $21 $77 $65
    ld a, l                                       ; $5d0d: $7d
    ld bc, $8946                                  ; $5d0e: $01 $46 $89
    jr nz, @+$42                                  ; $5d11: $20 $40

    ld h, d                                       ; $5d13: $62
    nop                                           ; $5d14: $00
    ld a, [c]                                     ; $5d15: $f2
    ld d, h                                       ; $5d16: $54
    ld h, c                                       ; $5d17: $61
    ld sp, $8a04                                  ; $5d18: $31 $04 $8a
    pop bc                                        ; $5d1b: $c1
    ld h, $03                                     ; $5d1c: $26 $03
    or $41                                        ; $5d1e: $f6 $41
    pop hl                                        ; $5d20: $e1
    dec [hl]                                      ; $5d21: $35
    ld l, c                                       ; $5d22: $69
    dec bc                                        ; $5d23: $0b
    ld hl, $3635                                  ; $5d24: $21 $35 $36
    ld a, a                                       ; $5d27: $7f
    ld a, l                                       ; $5d28: $7d
    add b                                         ; $5d29: $80
    ld a, [hl]                                    ; $5d2a: $7e
    jp nz, $6103                                  ; $5d2b: $c2 $03 $61

    nop                                           ; $5d2e: $00
    ret nc                                        ; $5d2f: $d0

    db $eb                                        ; $5d30: $eb
    ld b, d                                       ; $5d31: $42
    and c                                         ; $5d32: $a1
    add e                                         ; $5d33: $83
    and e                                         ; $5d34: $a3
    ld b, d                                       ; $5d35: $42
    add $44                                       ; $5d36: $c6 $44
    ld b, l                                       ; $5d38: $45
    inc a                                         ; $5d39: $3c
    push bc                                       ; $5d3a: $c5
    and b                                         ; $5d3b: $a0
    ret nz                                        ; $5d3c: $c0

    ld [c], a                                     ; $5d3d: $e2
    ld [hl], $45                                  ; $5d3e: $36 $45
    ld b, [hl]                                    ; $5d40: $46
    add c                                         ; $5d41: $81
    ld a, $c0                                     ; $5d42: $3e $c0
    dec a                                         ; $5d44: $3d
    and d                                         ; $5d45: $a2
    inc c                                         ; $5d46: $0c
    nop                                           ; $5d47: $00
    jp nc, $a425                                  ; $5d48: $d2 $25 $a4

    push af                                       ; $5d4b: $f5
    or $23                                        ; $5d4c: $f6 $23
    ld b, e                                       ; $5d4e: $43
    pop bc                                        ; $5d4f: $c1
    ld b, c                                       ; $5d50: $41
    pop bc                                        ; $5d51: $c1
    ldh [$8f], a                                  ; $5d52: $e0 $8f
    ld bc, $800c                                  ; $5d54: $01 $0c $80
    pop hl                                        ; $5d57: $e1
    pop bc                                        ; $5d58: $c1
    ldh [$83], a                                  ; $5d59: $e0 $83
    add h                                         ; $5d5b: $84
    cp $a0                                        ; $5d5c: $fe $a0
    dec c                                         ; $5d5e: $0d
    ld [hl+], a                                   ; $5d5f: $22

Jump_06d_5d60:
    ld c, a                                       ; $5d60: $4f

Jump_06d_5d61:
    ld l, $eb                                     ; $5d61: $2e $eb
    add e                                         ; $5d63: $83
    or b                                          ; $5d64: $b0
    dec hl                                        ; $5d65: $2b
    ld b, b                                       ; $5d66: $40
    cp $e1                                        ; $5d67: $fe $e1
    and e                                         ; $5d69: $a3
    inc hl                                        ; $5d6a: $23
    and [hl]                                      ; $5d6b: $a6
    nop                                           ; $5d6c: $00
    and d                                         ; $5d6d: $a2
    sbc h                                         ; $5d6e: $9c
    add a                                         ; $5d6f: $87
    and b                                         ; $5d70: $a0
    dec [hl]                                      ; $5d71: $35
    ld h, a                                       ; $5d72: $67
    dec [hl]                                      ; $5d73: $35
    ld h, d                                       ; $5d74: $62
    halt                                          ; $5d75: $76
    adc e                                         ; $5d76: $8b
    nop                                           ; $5d77: $00
    pop bc                                        ; $5d78: $c1
    ldh [$86], a                                  ; $5d79: $e0 $86
    add l                                         ; $5d7b: $85
    ret nz                                        ; $5d7c: $c0

    db $e3                                        ; $5d7d: $e3
    add e                                         ; $5d7e: $83
    ret nc                                        ; $5d7f: $d0

    pop de                                        ; $5d80: $d1
    ld e, c                                       ; $5d81: $59
    jr nc, @+$54                                  ; $5d82: $30 $52

    ld b, c                                       ; $5d84: $41
    inc l                                         ; $5d85: $2c
    ld [$03da], sp                                ; $5d86: $08 $da $03
    ret z                                         ; $5d89: $c8

    and d                                         ; $5d8a: $a2
    ld h, d                                       ; $5d8b: $62
    ld a, l                                       ; $5d8c: $7d
    ld h, a                                       ; $5d8d: $67
    ld c, l                                       ; $5d8e: $4d
    nop                                           ; $5d8f: $00
    add e                                         ; $5d90: $83
    adc c                                         ; $5d91: $89
    adc b                                         ; $5d92: $88
    add a                                         ; $5d93: $87
    add l                                         ; $5d94: $85
    ret nz                                        ; $5d95: $c0

    pop bc                                        ; $5d96: $c1
    ldh a, [$3e]                                  ; $5d97: $f0 $3e
    ld h, e                                       ; $5d99: $63
    call nc, $80b0                                ; $5d9a: $d4 $b0 $80
    db $eb                                        ; $5d9d: $eb
    rla                                           ; $5d9e: $17
    ld hl, $b2b2                                  ; $5d9f: $21 $b2 $b2
    scf                                           ; $5da2: $37
    jr c, jr_06d_5dd3                             ; $5da3: $38 $2e

    pop bc                                        ; $5da5: $c1
    pop hl                                        ; $5da6: $e1
    ld [hl], $b2                                  ; $5da7: $36 $b2
    or d                                          ; $5da9: $b2
    add h                                         ; $5daa: $84
    pop hl                                        ; $5dab: $e1
    ld b, [hl]                                    ; $5dac: $46
    pop bc                                        ; $5dad: $c1
    db $e3                                        ; $5dae: $e3
    ld a, $63                                     ; $5daf: $3e $63
    jr nz, @-$2a                                  ; $5db1: $20 $d4

    cpl                                           ; $5db3: $2f
    push de                                       ; $5db4: $d5
    ld [hl+], a                                   ; $5db5: $22
    inc hl                                        ; $5db6: $23
    add d                                         ; $5db7: $82
    ld d, d                                       ; $5db8: $52
    jr nz, @+$19                                  ; $5db9: $20 $17

    pop hl                                        ; $5dbb: $e1
    or d                                          ; $5dbc: $b2
    ld c, l                                       ; $5dbd: $4d
    nop                                           ; $5dbe: $00
    inc bc                                        ; $5dbf: $03
    ld [c], a                                     ; $5dc0: $e2
    ld [bc], a                                    ; $5dc1: $02
    pop bc                                        ; $5dc2: $c1
    db $e3                                        ; $5dc3: $e3
    ld [de], a                                    ; $5dc4: $12
    ld l, e                                       ; $5dc5: $6b
    pop hl                                        ; $5dc6: $e1
    ld b, d                                       ; $5dc7: $42
    jr nz, jr_06d_5e08                            ; $5dc8: $20 $3e

    ld h, e                                       ; $5dca: $63
    nop                                           ; $5dcb: $00
    xor a                                         ; $5dcc: $af
    ld l, h                                       ; $5dcd: $6c
    ld hl, $a2ce                                  ; $5dce: $21 $ce $a2
    ldh [$d0], a                                  ; $5dd1: $e0 $d0

jr_06d_5dd3:
    add b                                         ; $5dd3: $80
    sub l                                         ; $5dd4: $95
    ldh [$3e], a                                  ; $5dd5: $e0 $3e
    ldh [rDIV], a                                 ; $5dd7: $e0 $04
    pop hl                                        ; $5dd9: $e1
    jp Jump_000_3cc0                              ; $5dda: $c3 $c0 $3c


    or d                                          ; $5ddd: $b2
    ld b, [hl]                                    ; $5dde: $46
    ld bc, $458a                                  ; $5ddf: $01 $8a $45
    ld [c], a                                     ; $5de2: $e2
    ld c, a                                       ; $5de3: $4f
    inc b                                         ; $5de4: $04
    xor l                                         ; $5de5: $ad
    add b                                         ; $5de6: $80
    nop                                           ; $5de7: $00
    or c                                          ; $5de8: $b1
    and [hl]                                      ; $5de9: $a6
    ld h, c                                       ; $5dea: $61
    adc $a2                                       ; $5deb: $ce $a2
    and h                                         ; $5ded: $a4
    ld bc, $ae39                                  ; $5dee: $01 $39 $ae
    ld a, $e1                                     ; $5df1: $3e $e1
    ret nz                                        ; $5df3: $c0

    ld [c], a                                     ; $5df4: $e2
    ld h, d                                       ; $5df5: $62
    halt                                          ; $5df6: $76
    ld a, [hl-]                                   ; $5df7: $3a
    ld b, a                                       ; $5df8: $47
    ret nz                                        ; $5df9: $c0

    or c                                          ; $5dfa: $b1
    pop hl                                        ; $5dfb: $e1
    and b                                         ; $5dfc: $a0
    ld c, a                                       ; $5dfd: $4f
    dec b                                         ; $5dfe: $05
    jr z, jr_06d_5e22                             ; $5dff: $28 $21

    nop                                           ; $5e01: $00
    pop de                                        ; $5e02: $d1
    adc $a6                                       ; $5e03: $ce $a6
    dec h                                         ; $5e05: $25
    nop                                           ; $5e06: $00
    xor a                                         ; $5e07: $af

jr_06d_5e08:
    inc de                                        ; $5e08: $13
    pop hl                                        ; $5e09: $e1
    ld b, l                                       ; $5e0a: $45
    ld c, $01                                     ; $5e0b: $0e $01
    pop hl                                        ; $5e0d: $e1
    ld l, c                                       ; $5e0e: $69
    dec sp                                        ; $5e0f: $3b
    add hl, sp                                    ; $5e10: $39
    ld b, a                                       ; $5e11: $47
    ret nz                                        ; $5e12: $c0

    dec b                                         ; $5e13: $05
    ld b, c                                       ; $5e14: $41
    adc [hl]                                      ; $5e15: $8e
    ld bc, $2289                                  ; $5e16: $01 $89 $22
    sbc b                                         ; $5e19: $98
    call nc, $8550                                ; $5e1a: $d4 $50 $85
    ld [bc], a                                    ; $5e1d: $02
    adc $a5                                       ; $5e1e: $ce $a5
    ld b, c                                       ; $5e20: $41
    ld b, l                                       ; $5e21: $45

jr_06d_5e22:
    add e                                         ; $5e22: $83
    jp nz, $0052                                  ; $5e23: $c2 $52 $00

    ld b, l                                       ; $5e26: $45
    rrca                                          ; $5e27: $0f
    scf                                           ; $5e28: $37
    scf                                           ; $5e29: $37
    add d                                         ; $5e2a: $82
    add e                                         ; $5e2b: $83
    ld b, a                                       ; $5e2c: $47
    pop bc                                        ; $5e2d: $c1
    dec b                                         ; $5e2e: $05
    ld b, c                                       ; $5e2f: $41
    ld c, b                                       ; $5e30: $48
    ld [bc], a                                    ; $5e31: $02
    add l                                         ; $5e32: $85
    ld c, a                                       ; $5e33: $4f
    adc b                                         ; $5e34: $88
    nop                                           ; $5e35: $00
    ld h, a                                       ; $5e36: $67
    dec d                                         ; $5e37: $15
    ld h, c                                       ; $5e38: $61
    adc $a1                                       ; $5e39: $ce $a1
    and [hl]                                      ; $5e3b: $a6
    sub l                                         ; $5e3c: $95
    and b                                         ; $5e3d: $a0
    cp a                                          ; $5e3e: $bf
    ld [c], a                                     ; $5e3f: $e2
    ld a, [hl-]                                   ; $5e40: $3a
    pop bc                                        ; $5e41: $c1
    add l                                         ; $5e42: $85
    ld bc, $4787                                  ; $5e43: $01 $87 $47
    pop bc                                        ; $5e46: $c1
    add $61                                       ; $5e47: $c6 $61
    ld b, a                                       ; $5e49: $47
    jr nz, jr_06d_5e94                            ; $5e4a: $20 $48

    nop                                           ; $5e4c: $00
    ld e, c                                       ; $5e4d: $59
    ld d, c                                       ; $5e4e: $51
    nop                                           ; $5e4f: $00
    ld h, e                                       ; $5e50: $63
    sub e                                         ; $5e51: $93
    inc hl                                        ; $5e52: $23
    rra                                           ; $5e53: $1f
    ld b, l                                       ; $5e54: $45
    ld [hl], $62                                  ; $5e55: $36 $62
    and a                                         ; $5e57: $a7
    ld h, [hl]                                    ; $5e58: $66
    cp a                                          ; $5e59: $bf
    db $e4                                        ; $5e5a: $e4
    adc h                                         ; $5e5b: $8c
    pop bc                                        ; $5e5c: $c1
    pop af                                        ; $5e5d: $f1
    and h                                         ; $5e5e: $a4
    ldh [rBGP], a                                 ; $5e5f: $e0 $47
    inc hl                                        ; $5e61: $23
    add d                                         ; $5e62: $82
    ld b, d                                       ; $5e63: $42
    nop                                           ; $5e64: $00
    halt                                          ; $5e65: $76
    dec d                                         ; $5e66: $15
    ld h, c                                       ; $5e67: $61
    pop bc                                        ; $5e68: $c1
    ldh [$67], a                                  ; $5e69: $e0 $67
    and e                                         ; $5e6b: $a3
    ld l, b                                       ; $5e6c: $68
    ret nz                                        ; $5e6d: $c0

    cp a                                          ; $5e6e: $bf
    and $fa                                       ; $5e6f: $e6 $fa
    push hl                                       ; $5e71: $e5
    ld b, a                                       ; $5e72: $47
    inc h                                         ; $5e73: $24
    ld e, c                                       ; $5e74: $59
    ld d, [hl]                                    ; $5e75: $56
    adc a                                         ; $5e76: $8f
    ld h, e                                       ; $5e77: $63
    ld [de], a                                    ; $5e78: $12
    add b                                         ; $5e79: $80
    ld b, d                                       ; $5e7a: $42
    xor b                                         ; $5e7b: $a8
    rlca                                          ; $5e7c: $07
    xor c                                         ; $5e7d: $a9
    ld l, h                                       ; $5e7e: $6c
    dec [hl]                                      ; $5e7f: $35
    inc de                                        ; $5e80: $13
    add b                                         ; $5e81: $80
    dec a                                         ; $5e82: $3d
    ld [c], a                                     ; $5e83: $e2
    call Call_000_34c0                            ; $5e84: $cd $c0 $34
    and d                                         ; $5e87: $a2
    add hl, bc                                    ; $5e88: $09
    add $f8                                       ; $5e89: $c6 $f8
    ld e, c                                       ; $5e8b: $59
    ld d, l                                       ; $5e8c: $55
    nop                                           ; $5e8d: $00
    add [hl]                                      ; $5e8e: $86
    add b                                         ; $5e8f: $80
    ldh [$6e], a                                  ; $5e90: $e0 $6e
    ld l, a                                       ; $5e92: $6f
    ld l, h                                       ; $5e93: $6c

jr_06d_5e94:
    dec [hl]                                      ; $5e94: $35
    and e                                         ; $5e95: $a3
    inc hl                                        ; $5e96: $23
    xor d                                         ; $5e97: $aa
    xor e                                         ; $5e98: $ab
    sub c                                         ; $5e99: $91
    add b                                         ; $5e9a: $80
    call nc, $ed61                                ; $5e9b: $d4 $61 $ed
    add e                                         ; $5e9e: $83
    sbc a                                         ; $5e9f: $9f
    inc hl                                        ; $5ea0: $23
    add d                                         ; $5ea1: $82
    sbc $33                                       ; $5ea2: $de $33
    db $ec                                        ; $5ea4: $ec
    nop                                           ; $5ea5: $00

jr_06d_5ea6:
    rst $20                                       ; $5ea6: $e7
    ld d, e                                       ; $5ea7: $53
    nop                                           ; $5ea8: $00
    and c                                         ; $5ea9: $a1
    ld b, [hl]                                    ; $5eaa: $46
    cp a                                          ; $5eab: $bf
    ld [c], a                                     ; $5eac: $e2
    ld l, h                                       ; $5ead: $6c
    ld l, a                                       ; $5eae: $6f
    ld l, [hl]                                    ; $5eaf: $6e
    inc bc                                        ; $5eb0: $03
    ld [hl], $45                                  ; $5eb1: $36 $45
    sub h                                         ; $5eb3: $94
    and b                                         ; $5eb4: $a0
    sub l                                         ; $5eb5: $95
    ld b, d                                       ; $5eb6: $42
    ld a, d                                       ; $5eb7: $7a
    ld b, d                                       ; $5eb8: $42
    ld c, c                                       ; $5eb9: $49
    ld b, d                                       ; $5eba: $42
    add l                                         ; $5ebb: $85
    jp nc, Jump_000_2700                          ; $5ebc: $d2 $00 $27

    nop                                           ; $5ebf: $00
    ld d, e                                       ; $5ec0: $53
    ld [bc], a                                    ; $5ec1: $02
    cp a                                          ; $5ec2: $bf
    ld [c], a                                     ; $5ec3: $e2
    pop bc                                        ; $5ec4: $c1
    db $e4                                        ; $5ec5: $e4
    sub $81                                       ; $5ec6: $d6 $81
    ld c, e                                       ; $5ec8: $4b
    jp Jump_06d_626d                              ; $5ec9: $c3 $6d $62


    add l                                         ; $5ecc: $85
    db $d3                                        ; $5ecd: $d3
    nop                                           ; $5ece: $00
    ld b, a                                       ; $5ecf: $47
    nop                                           ; $5ed0: $00
    inc h                                         ; $5ed1: $24
    ld hl, $e3bf                                  ; $5ed2: $21 $bf $e3
    add d                                         ; $5ed5: $82
    db $e3                                        ; $5ed6: $e3
    ld [hl], e                                    ; $5ed7: $73
    ld h, h                                       ; $5ed8: $64
    adc $20                                       ; $5ed9: $ce $20
    xor c                                         ; $5edb: $a9
    ld b, e                                       ; $5edc: $43
    add l                                         ; $5edd: $85
    db $d3                                        ; $5ede: $d3
    nop                                           ; $5edf: $00
    ld l, c                                       ; $5ee0: $69
    jr jr_06d_5ea6                                ; $5ee1: $18 $c3

    ld b, b                                       ; $5ee3: $40
    ld a, [hl]                                    ; $5ee4: $7e
    ld [c], a                                     ; $5ee5: $e2
    ld b, e                                       ; $5ee6: $43
    pop hl                                        ; $5ee7: $e1
    sub $d7                                       ; $5ee8: $d6 $d7
    ld [hl], e                                    ; $5eea: $73
    ld h, e                                       ; $5eeb: $63
    add l                                         ; $5eec: $85
    db $fd                                        ; $5eed: $fd
    nop                                           ; $5eee: $00
    rst $00                                       ; $5eef: $c7
    nop                                           ; $5ef0: $00
    nop                                           ; $5ef1: $00
    and c                                         ; $5ef2: $a1
    add d                                         ; $5ef3: $82
    ld h, b                                       ; $5ef4: $60
    adc $c4                                       ; $5ef5: $ce $c4
    ld d, $a4                                     ; $5ef7: $16 $a4
    ld l, e                                       ; $5ef9: $6b
    add l                                         ; $5efa: $85
    add l                                         ; $5efb: $85
    sub $00                                       ; $5efc: $d6 $00
    daa                                           ; $5efe: $27
    nop                                           ; $5eff: $00

Jump_06d_5f00:
    and e                                         ; $5f00: $a3
    ld b, $38                                     ; $5f01: $06 $38
    add e                                         ; $5f03: $83
    push af                                       ; $5f04: $f5
    or $56                                        ; $5f05: $f6 $56
    nop                                           ; $5f07: $00
    adc a                                         ; $5f08: $8f
    ret c                                         ; $5f09: $d8

    nop                                           ; $5f0a: $00
    or [hl]                                       ; $5f0b: $b6
    rst $18                                       ; $5f0c: $df
    nop                                           ; $5f0d: $00
    ld e, a                                       ; $5f0e: $5f
    add b                                         ; $5f0f: $80
    nop                                           ; $5f10: $00
    di                                            ; $5f11: $f3
    ld h, h                                       ; $5f12: $64
    adc a                                         ; $5f13: $8f
    rst $30                                       ; $5f14: $f7
    nop                                           ; $5f15: $00
    inc l                                         ; $5f16: $2c
    nop                                           ; $5f17: $00
    nop                                           ; $5f18: $00
    nop                                           ; $5f19: $00
    pop bc                                        ; $5f1a: $c1
    nop                                           ; $5f1b: $00
    rst $38                                       ; $5f1c: $ff
    rst $38                                       ; $5f1d: $ff
    rst $38                                       ; $5f1e: $ff
    rst $38                                       ; $5f1f: $ff
    rst $38                                       ; $5f20: $ff
    rst $38                                       ; $5f21: $ff
    rst $38                                       ; $5f22: $ff
    rst $38                                       ; $5f23: $ff
    rst $38                                       ; $5f24: $ff
    rst $38                                       ; $5f25: $ff
    nop                                           ; $5f26: $00
    nop                                           ; $5f27: $00
    dec c                                         ; $5f28: $0d
    add b                                         ; $5f29: $80
    cp $e0                                        ; $5f2a: $fe $e0
    nop                                           ; $5f2c: $00
    ld b, b                                       ; $5f2d: $40
    ret c                                         ; $5f2e: $d8

    push hl                                       ; $5f2f: $e5
    rst $30                                       ; $5f30: $f7
    and $ff                                       ; $5f31: $e6 $ff
    rst $38                                       ; $5f33: $ff
    rst $38                                       ; $5f34: $ff
    rst $30                                       ; $5f35: $f7
    nop                                           ; $5f36: $00
    nop                                           ; $5f37: $00
    nop                                           ; $5f38: $00
    ld bc, $3200                                  ; $5f39: $01 $00 $32
    ld b, $01                                     ; $5f3c: $06 $01
    ld bc, $0633                                  ; $5f3e: $01 $33 $06
    ld bc, $3402                                  ; $5f41: $01 $02 $34
    ld b, $01                                     ; $5f44: $06 $01
    inc bc                                        ; $5f46: $03
    ld sp, $0107                                  ; $5f47: $31 $07 $01
    inc b                                         ; $5f4a: $04
    ld [hl-], a                                   ; $5f4b: $32
    rlca                                          ; $5f4c: $07
    ld bc, $3305                                  ; $5f4d: $01 $05 $33
    rlca                                          ; $5f50: $07
    ld bc, $3406                                  ; $5f51: $01 $06 $34
    rlca                                          ; $5f54: $07
    ld bc, $3507                                  ; $5f55: $01 $07 $35
    rlca                                          ; $5f58: $07
    ld bc, $3608                                  ; $5f59: $01 $08 $36
    rlca                                          ; $5f5c: $07
    ld [bc], a                                    ; $5f5d: $02
    add hl, bc                                    ; $5f5e: $09
    cpl                                           ; $5f5f: $2f
    ld [$0a01], sp                                ; $5f60: $08 $01 $0a
    ld [hl], $08                                  ; $5f63: $36 $08
    ld bc, $370b                                  ; $5f65: $01 $0b $37
    ld [$0c01], sp                                ; $5f68: $08 $01 $0c
    scf                                           ; $5f6b: $37
    add hl, bc                                    ; $5f6c: $09
    ld bc, $2e0d                                  ; $5f6d: $01 $0d $2e
    dec bc                                        ; $5f70: $0b
    ld bc, $280e                                  ; $5f71: $01 $0e $28
    inc c                                         ; $5f74: $0c
    ld bc, $290f                                  ; $5f75: $01 $0f $29
    inc c                                         ; $5f78: $0c
    ld bc, $2410                                  ; $5f79: $01 $10 $24
    dec c                                         ; $5f7c: $0d
    ld bc, $2711                                  ; $5f7d: $01 $11 $27
    dec c                                         ; $5f80: $0d
    ld bc, $2812                                  ; $5f81: $01 $12 $28
    dec c                                         ; $5f84: $0d
    ld bc, $2313                                  ; $5f85: $01 $13 $23
    ld c, $01                                     ; $5f88: $0e $01
    inc d                                         ; $5f8a: $14
    inc h                                         ; $5f8b: $24
    ld c, $01                                     ; $5f8c: $0e $01
    dec d                                         ; $5f8e: $15
    dec h                                         ; $5f8f: $25
    ld c, $01                                     ; $5f90: $0e $01
    ld d, $2d                                     ; $5f92: $16 $2d
    ld c, $01                                     ; $5f94: $0e $01
    rla                                           ; $5f96: $17
    ld l, $0e                                     ; $5f97: $2e $0e
    ld bc, $2318                                  ; $5f99: $01 $18 $23
    rrca                                          ; $5f9c: $0f
    ld [bc], a                                    ; $5f9d: $02
    add hl, de                                    ; $5f9e: $19
    inc [hl]                                      ; $5f9f: $34
    rrca                                          ; $5fa0: $0f
    ld bc, $221a                                  ; $5fa1: $01 $1a $22
    db $10                                        ; $5fa4: $10
    ld bc, $331b                                  ; $5fa5: $01 $1b $33
    db $10                                        ; $5fa8: $10
    ld bc, $341c                                  ; $5fa9: $01 $1c $34
    db $10                                        ; $5fac: $10
    ld [bc], a                                    ; $5fad: $02
    dec e                                         ; $5fae: $1d
    ld [hl], $10                                  ; $5faf: $36 $10
    ld bc, $221e                                  ; $5fb1: $01 $1e $22
    ld de, $1f01                                  ; $5fb4: $11 $01 $1f
    add hl, hl                                    ; $5fb7: $29
    inc d                                         ; $5fb8: $14
    ld bc, $2420                                  ; $5fb9: $01 $20 $24
    dec d                                         ; $5fbc: $15
    ld bc, $2521                                  ; $5fbd: $01 $21 $25
    dec d                                         ; $5fc0: $15
    ld bc, $2822                                  ; $5fc1: $01 $22 $28
    dec d                                         ; $5fc4: $15
    ld bc, $2923                                  ; $5fc5: $01 $23 $29
    dec d                                         ; $5fc8: $15
    ld bc, $1f24                                  ; $5fc9: $01 $24 $1f
    ld d, $01                                     ; $5fcc: $16 $01
    dec h                                         ; $5fce: $25
    jr nz, @+$18                                  ; $5fcf: $20 $16

    ld [bc], a                                    ; $5fd1: $02
    ld h, $21                                     ; $5fd2: $26 $21
    ld d, $01                                     ; $5fd4: $16 $01
    daa                                           ; $5fd6: $27
    inc h                                         ; $5fd7: $24
    ld d, $01                                     ; $5fd8: $16 $01
    jr z, jr_06d_6004                             ; $5fda: $28 $28

    ld d, $01                                     ; $5fdc: $16 $01
    add hl, hl                                    ; $5fde: $29
    jr nz, jr_06d_5ff8                            ; $5fdf: $20 $17

    ld bc, $272a                                  ; $5fe1: $01 $2a $27
    rla                                           ; $5fe4: $17
    ld bc, $282b                                  ; $5fe5: $01 $2b $28
    rla                                           ; $5fe8: $17
    ld bc, $222c                                  ; $5fe9: $01 $2c $22
    jr jr_06d_5fef                                ; $5fec: $18 $01

    dec l                                         ; $5fee: $2d

jr_06d_5fef:
    inc e                                         ; $5fef: $1c
    add hl, de                                    ; $5ff0: $19
    ld bc, $212e                                  ; $5ff1: $01 $2e $21
    add hl, de                                    ; $5ff4: $19
    ld bc, $1c2f                                  ; $5ff5: $01 $2f $1c

jr_06d_5ff8:
    ld a, [de]                                    ; $5ff8: $1a
    ld [bc], a                                    ; $5ff9: $02
    jr nc, jr_06d_601c                            ; $5ffa: $30 $20

    ld a, [de]                                    ; $5ffc: $1a
    ld bc, $2131                                  ; $5ffd: $01 $31 $21
    ld a, [de]                                    ; $6000: $1a
    ld [bc], a                                    ; $6001: $02
    ld [hl-], a                                   ; $6002: $32
    ld [hl+], a                                   ; $6003: $22

jr_06d_6004:
    ld a, [de]                                    ; $6004: $1a
    ld bc, $1d33                                  ; $6005: $01 $33 $1d
    dec de                                        ; $6008: $1b
    ld bc, $2234                                  ; $6009: $01 $34 $22
    dec de                                        ; $600c: $1b
    ld bc, $1e35                                  ; $600d: $01 $35 $1e
    dec e                                         ; $6010: $1d
    ld [bc], a                                    ; $6011: $02
    ld [hl], $22                                  ; $6012: $36 $22

Call_06d_6014:
    dec e                                         ; $6014: $1d
    ld bc, $2237                                  ; $6015: $01 $37 $22
    rra                                           ; $6018: $1f
    ld [bc], a                                    ; $6019: $02
    jr c, @+$25                                   ; $601a: $38 $23

jr_06d_601c:
    rra                                           ; $601c: $1f
    ld bc, $1f39                                  ; $601d: $01 $39 $1f
    jr nz, jr_06d_6023                            ; $6020: $20 $01

    ld a, [hl-]                                   ; $6022: $3a

jr_06d_6023:
    rra                                           ; $6023: $1f
    ld hl, $3b01                                  ; $6024: $21 $01 $3b
    rra                                           ; $6027: $1f
    ld [hl+], a                                   ; $6028: $22
    ld [bc], a                                    ; $6029: $02
    inc a                                         ; $602a: $3c
    inc hl                                        ; $602b: $23
    ld [hl+], a                                   ; $602c: $22
    ld bc, $1f3d                                  ; $602d: $01 $3d $1f
    inc hl                                        ; $6030: $23
    ld bc, $203e                                  ; $6031: $01 $3e $20
    inc hl                                        ; $6034: $23
    ld [bc], a                                    ; $6035: $02
    ccf                                           ; $6036: $3f
    inc h                                         ; $6037: $24
    inc hl                                        ; $6038: $23
    ld bc, $1e40                                  ; $6039: $01 $40 $1e
    inc h                                         ; $603c: $24
    ld bc, $1f41                                  ; $603d: $01 $41 $1f
    inc h                                         ; $6040: $24
    ld bc, $2042                                  ; $6041: $01 $42 $20
    inc h                                         ; $6044: $24
    ld bc, $1f43                                  ; $6045: $01 $43 $1f
    dec h                                         ; $6048: $25
    ld bc, $2044                                  ; $6049: $01 $44 $20
    dec h                                         ; $604c: $25
    ld bc, $1845                                  ; $604d: $01 $45 $18
    inc l                                         ; $6050: $2c
    ld bc, $1746                                  ; $6051: $01 $46 $17
    dec l                                         ; $6054: $2d
    ld bc, $1847                                  ; $6055: $01 $47 $18
    dec l                                         ; $6058: $2d
    ld bc, $2048                                  ; $6059: $01 $48 $20
    dec l                                         ; $605c: $2d
    ld bc, $1549                                  ; $605d: $01 $49 $15
    ld l, $01                                     ; $6060: $2e $01
    ld c, d                                       ; $6062: $4a
    ld d, $2e                                     ; $6063: $16 $2e
    ld bc, $1e4b                                  ; $6065: $01 $4b $1e
    ld l, $01                                     ; $6068: $2e $01
    ld c, h                                       ; $606a: $4c
    rra                                           ; $606b: $1f
    ld l, $01                                     ; $606c: $2e $01
    ld c, l                                       ; $606e: $4d
    inc d                                         ; $606f: $14
    cpl                                           ; $6070: $2f
    ld bc, $154e                                  ; $6071: $01 $4e $15
    cpl                                           ; $6074: $2f
    ld bc, $1d4f                                  ; $6075: $01 $4f $1d
    cpl                                           ; $6078: $2f
    ld bc, $1e50                                  ; $6079: $01 $50 $1e
    cpl                                           ; $607c: $2f
    ld bc, $1d51                                  ; $607d: $01 $51 $1d
    jr nc, jr_06d_6084                            ; $6080: $30 $02

    ld d, d                                       ; $6082: $52
    db $10                                        ; $6083: $10

jr_06d_6084:
    ld [hl-], a                                   ; $6084: $32
    rst $38                                       ; $6085: $ff
    rst $38                                       ; $6086: $ff
    rst $38                                       ; $6087: $ff
    sub b                                         ; $6088: $90
    ld h, b                                       ; $6089: $60

Call_06d_608a:
    ld b, d                                       ; $608a: $42
    ld h, h                                       ; $608b: $64
    ret nc                                        ; $608c: $d0

    ld l, b                                       ; $608d: $68
    rst $28                                       ; $608e: $ef
    ld l, b                                       ; $608f: $68
    ccf                                           ; $6090: $3f

Jump_06d_6091:
    ld c, $0e                                     ; $6091: $0e $0e
    dec c                                         ; $6093: $0d
    dec c                                         ; $6094: $0d
    dec c                                         ; $6095: $0d
    ld c, $ff                                     ; $6096: $0e $ff
    db $e3                                        ; $6098: $e3
    or $ef                                        ; $6099: $f6 $ef
    ld bc, $ff4d                                  ; $609b: $01 $4d $ff
    ldh [$fa], a                                  ; $609e: $e0 $fa
    pop hl                                        ; $60a0: $e1
    jp c, $d6e1                                   ; $60a1: $da $e1 $d6

    ld [c], a                                     ; $60a4: $e2
    push de                                       ; $60a5: $d5
    ld [c], a                                     ; $60a6: $e2
    adc $e9                                       ; $60a7: $ce $e9
    ret                                           ; $60a9: $c9


    pop hl                                        ; $60aa: $e1
    add b                                         ; $60ab: $80
    jp $f6e3                                      ; $60ac: $c3 $e3 $f6


    di                                            ; $60af: $f3
    and e                                         ; $60b0: $a3
    pop hl                                        ; $60b1: $e1
    ret nz                                        ; $60b2: $c0

    jp hl                                         ; $60b3: $e9


    adc $f2                                       ; $60b4: $ce $f2
    ld a, e                                       ; $60b6: $7b
    ld hl, sp+$7e                                 ; $60b7: $f8 $7e
    pop hl                                        ; $60b9: $e1
    dec c                                         ; $60ba: $0d
    rst $00                                       ; $60bb: $c7
    ld c, l                                       ; $60bc: $4d
    ld c, l                                       ; $60bd: $4d
    dec l                                         ; $60be: $2d
    push bc                                       ; $60bf: $c5
    db $e4                                        ; $60c0: $e4
    ld d, e                                       ; $60c1: $53
    pop af                                        ; $60c2: $f1
    add l                                         ; $60c3: $85
    push af                                       ; $60c4: $f5
    ld c, $0d                                     ; $60c5: $0e $0d
    cp $44                                        ; $60c7: $fe $44
    ld [c], a                                     ; $60c9: $e2
    dec c                                         ; $60ca: $0d
    ld c, l                                       ; $60cb: $4d
    ld l, l                                       ; $60cc: $6d
    ld a, [bc]                                    ; $60cd: $0a
    ld l, d                                       ; $60ce: $6a
    ld c, l                                       ; $60cf: $4d
    dec l                                         ; $60d0: $2d
    ldh [$b8], a                                  ; $60d1: $e0 $b8
    pop hl                                        ; $60d3: $e1
    add l                                         ; $60d4: $85
    rst $38                                       ; $60d5: $ff
    or $c7                                        ; $60d6: $f6 $c7
    dec b                                         ; $60d8: $05
    pop hl                                        ; $60d9: $e1
    add l                                         ; $60da: $85
    ldh [$0d], a                                  ; $60db: $e0 $0d
    dec c                                         ; $60dd: $0d
    ld l, l                                       ; $60de: $6d
    rlca                                          ; $60df: $07

Jump_06d_60e0:
    dec hl                                        ; $60e0: $2b
    ld a, [bc]                                    ; $60e1: $0a
    ld a, [bc]                                    ; $60e2: $0a
    cp a                                          ; $60e3: $bf
    ld [c], a                                     ; $60e4: $e2

Jump_06d_60e5:
    pop af                                        ; $60e5: $f1
    jp nz, $ff00                                  ; $60e6: $c2 $00 $ff

    add l                                         ; $60e9: $85
    db $e4                                        ; $60ea: $e4
    add $c4                                       ; $60eb: $c6 $c4
    ld a, [hl]                                    ; $60ed: $7e
    pop bc                                        ; $60ee: $c1
    ldh [$0b], a                                  ; $60ef: $e0 $0b
    ld a, [hl+]                                   ; $60f1: $2a
    dec bc                                        ; $60f2: $0b
    dec hl                                        ; $60f3: $2b
    ld a, [bc]                                    ; $60f4: $0a
    dec bc                                        ; $60f5: $0b
    ret nz                                        ; $60f6: $c0

    db $e4                                        ; $60f7: $e4
    ldh [$7b], a                                  ; $60f8: $e0 $7b
    rst $38                                       ; $60fa: $ff
    ld [hl], c                                    ; $60fb: $71
    rst $00                                       ; $60fc: $c7
    add b                                         ; $60fd: $80
    ret nz                                        ; $60fe: $c0

    pop bc                                        ; $60ff: $c1
    pop hl                                        ; $6100: $e1
    rst $38                                       ; $6101: $ff
    ldh [$2b], a                                  ; $6102: $e0 $2b
    ld a, [bc]                                    ; $6104: $0a
    ld c, d                                       ; $6105: $4a
    ld [hl], b                                    ; $6106: $70
    add b                                         ; $6107: $80
    pop hl                                        ; $6108: $e1
    nop                                           ; $6109: $00
    rst $38                                       ; $610a: $ff
    ld [hl], c                                    ; $610b: $71
    jp z, $e1c0                                   ; $610c: $ca $c0 $e1

    ld a, [bc]                                    ; $610f: $0a
    ld a, [bc]                                    ; $6110: $0a
    ld c, e                                       ; $6111: $4b
    cp a                                          ; $6112: $bf
    ldh [$87], a                                  ; $6113: $e0 $87
    ld l, e                                       ; $6115: $6b
    ld a, [bc]                                    ; $6116: $0a
    ld a, [bc]                                    ; $6117: $0a
    cp [hl]                                       ; $6118: $be
    ret nz                                        ; $6119: $c0

    ld b, e                                       ; $611a: $43
    pop hl                                        ; $611b: $e1
    add l                                         ; $611c: $85
    rst $38                                       ; $611d: $ff
    nop                                           ; $611e: $00
    db $eb                                        ; $611f: $eb
    ld c, d                                       ; $6120: $4a
    ld l, a                                       ; $6121: $6f
    ld c, d                                       ; $6122: $4a
    ld c, e                                       ; $6123: $4b
    ld l, e                                       ; $6124: $6b
    ld l, e                                       ; $6125: $6b
    pop bc                                        ; $6126: $c1
    ldh [$0d], a                                  ; $6127: $e0 $0d
    ld l, l                                       ; $6129: $6d
    inc bc                                        ; $612a: $03
    db $e4                                        ; $612b: $e4
    db $fc                                        ; $612c: $fc
    nop                                           ; $612d: $00
    rst $38                                       ; $612e: $ff
    nop                                           ; $612f: $00
    add sp, $0d                                   ; $6130: $e8 $0d
    ld l, l                                       ; $6132: $6d
    ld l, e                                       ; $6133: $6b
    ld a, [hl+]                                   ; $6134: $2a
    ld a, [bc]                                    ; $6135: $0a

jr_06d_6136:
    ld c, e                                       ; $6136: $4b

Jump_06d_6137:
    adc a                                         ; $6137: $8f
    ld c, e                                       ; $6138: $4b
    ld a, [hl+]                                   ; $6139: $2a
    ld a, [bc]                                    ; $613a: $0a
    dec c                                         ; $613b: $0d
    ld b, c                                       ; $613c: $41
    db $e3                                        ; $613d: $e3
    ret c                                         ; $613e: $d8

    or h                                          ; $613f: $b4
    nop                                           ; $6140: $00
    or $0d                                        ; $6141: $f6 $0d
    rst $38                                       ; $6143: $ff
    ld l, e                                       ; $6144: $6b
    dec c                                         ; $6145: $0d
    ld c, e                                       ; $6146: $4b
    dec hl                                        ; $6147: $2b

Jump_06d_6148:
    dec bc                                        ; $6148: $0b
    dec hl                                        ; $6149: $2b
    ld l, e                                       ; $614a: $6b
    dec c                                         ; $614b: $0d
    ld [hl], b                                    ; $614c: $70
    ret nz                                        ; $614d: $c0

    ld [c], a                                     ; $614e: $e2
    ld a, c                                       ; $614f: $79
    and d                                         ; $6150: $a2
    nop                                           ; $6151: $00
    rst $38                                       ; $6152: $ff
    nop                                           ; $6153: $00
    jp hl                                         ; $6154: $e9


    dec l                                         ; $6155: $2d
    ld l, e                                       ; $6156: $6b
    dec c                                         ; $6157: $0d
    cp a                                          ; $6158: $bf
    pop bc                                        ; $6159: $c1
    add e                                         ; $615a: $83
    dec c                                         ; $615b: $0d
    ld l, e                                       ; $615c: $6b
    ld b, c                                       ; $615d: $41
    pop bc                                        ; $615e: $c1
    add l                                         ; $615f: $85
    rst $38                                       ; $6160: $ff
    or $88                                        ; $6161: $f6 $88
    add h                                         ; $6163: $84
    and e                                         ; $6164: $a3
    ld a, a                                       ; $6165: $7f
    ldh [rOCPD], a                                ; $6166: $e0 $6b
    rra                                           ; $6168: $1f
    ld l, e                                       ; $6169: $6b
    dec bc                                        ; $616a: $0b
    dec hl                                        ; $616b: $2b
    dec bc                                        ; $616c: $0b
    ld l, e                                       ; $616d: $6b
    cp a                                          ; $616e: $bf
    and d                                         ; $616f: $a2
    inc d                                         ; $6170: $14
    and h                                         ; $6171: $a4
    nop                                           ; $6172: $00
    rst $38                                       ; $6173: $ff
    db $10                                        ; $6174: $10
    ld b, h                                       ; $6175: $44
    and h                                         ; $6176: $a4
    ld a, a                                       ; $6177: $7f
    ld [c], a                                     ; $6178: $e2
    ret nz                                        ; $6179: $c0

    ldh [$7f], a                                  ; $617a: $e0 $7f
    ret nz                                        ; $617c: $c0

    ld l, e                                       ; $617d: $6b
    ld a, $a1                                     ; $617e: $3e $a1
    ld l, l                                       ; $6180: $6d
    and c                                         ; $6181: $a1
    ld a, e                                       ; $6182: $7b
    rst $38                                       ; $6183: $ff
    jr nc, jr_06d_6136                            ; $6184: $30 $b0

    add [hl]                                      ; $6186: $86
    adc c                                         ; $6187: $89
    add c                                         ; $6188: $81
    ld a, $e0                                     ; $6189: $3e $e0
    cp $a2                                        ; $618b: $fe $a2
    ld l, e                                       ; $618d: $6b
    dec l                                         ; $618e: $2d
    db $fd                                        ; $618f: $fd
    add b                                         ; $6190: $80
    nop                                           ; $6191: $00
    rst $38                                       ; $6192: $ff
    nop                                           ; $6193: $00
    ld [hl], c                                    ; $6194: $71
    add a                                         ; $6195: $87
    sub [hl]                                      ; $6196: $96
    ldh [$90], a                                  ; $6197: $e0 $90
    db $e3                                        ; $6199: $e3
    ret nz                                        ; $619a: $c0

    pop hl                                        ; $619b: $e1
    ccf                                           ; $619c: $3f
    ldh [$c0], a                                  ; $619d: $e0 $c0
    pop hl                                        ; $619f: $e1
    ccf                                           ; $61a0: $3f
    add l                                         ; $61a1: $85
    nop                                           ; $61a2: $00
    rst $38                                       ; $61a3: $ff
    ld a, h                                       ; $61a4: $7c
    rst $38                                       ; $61a5: $ff
    add c                                         ; $61a6: $81
    ld d, c                                       ; $61a7: $51
    add e                                         ; $61a8: $83
    ld l, l                                       ; $61a9: $6d
    ld l, e                                       ; $61aa: $6b
    ld c, e                                       ; $61ab: $4b
    dec bc                                        ; $61ac: $0b
    dec hl                                        ; $61ad: $2b
    rst $38                                       ; $61ae: $ff
    push bc                                       ; $61af: $c5
    ld [hl], b                                    ; $61b0: $70
    nop                                           ; $61b1: $00
    cp a                                          ; $61b2: $bf
    nop                                           ; $61b3: $00
    rst $20                                       ; $61b4: $e7
    cp l                                          ; $61b5: $bd
    add d                                         ; $61b6: $82
    rst $38                                       ; $61b7: $ff
    and b                                         ; $61b8: $a0
    dec c                                         ; $61b9: $0d
    ld c, e                                       ; $61ba: $4b
    dec c                                         ; $61bb: $0d
    ret nz                                        ; $61bc: $c0

    ldh [$e0], a                                  ; $61bd: $e0 $e0
    ld a, [hl]                                    ; $61bf: $7e
    ret nz                                        ; $61c0: $c0

    nop                                           ; $61c1: $00
    rst $38                                       ; $61c2: $ff
    add l                                         ; $61c3: $85
    ld l, e                                       ; $61c4: $6b
    ld b, e                                       ; $61c5: $43
    add d                                         ; $61c6: $82
    ld b, b                                       ; $61c7: $40
    ret nz                                        ; $61c8: $c0

    dec hl                                        ; $61c9: $2b
    ld c, e                                       ; $61ca: $4b
    ld l, e                                       ; $61cb: $6b
    inc bc                                        ; $61cc: $03
    ld c, e                                       ; $61cd: $4b
    ld c, e                                       ; $61ce: $4b
    ret nz                                        ; $61cf: $c0

    push hl                                       ; $61d0: $e5
    nop                                           ; $61d1: $00
    rst $38                                       ; $61d2: $ff
    ld [hl], c                                    ; $61d3: $71
    ld h, h                                       ; $61d4: $64
    ld b, a                                       ; $61d5: $47
    ld h, d                                       ; $61d6: $62
    add c                                         ; $61d7: $81
    pop hl                                        ; $61d8: $e1
    cp a                                          ; $61d9: $bf
    add c                                         ; $61da: $81
    ld b, $3c                                     ; $61db: $06 $3c
    and b                                         ; $61dd: $a0
    dec c                                         ; $61de: $0d
    ld l, l                                       ; $61df: $6d
    dec a                                         ; $61e0: $3d
    ld h, e                                       ; $61e1: $63
    add l                                         ; $61e2: $85
    rst $38                                       ; $61e3: $ff
    add $65                                       ; $61e4: $c6 $65
    add c                                         ; $61e6: $81
    add c                                         ; $61e7: $81
    add [hl]                                      ; $61e8: $86
    and b                                         ; $61e9: $a0
    nop                                           ; $61ea: $00
    ld bc, $bfe0                                  ; $61eb: $01 $e0 $bf
    add b                                         ; $61ee: $80
    nop                                           ; $61ef: $00
    and b                                         ; $61f0: $a0
    pop bc                                        ; $61f1: $c1
    add $00                                       ; $61f2: $c6 $00
    rst $38                                       ; $61f4: $ff
    ld b, $63                                     ; $61f5: $06 $63
    ld [bc], a                                    ; $61f7: $02
    ld [c], a                                     ; $61f8: $e2
    ret nz                                        ; $61f9: $c0

    ldh [$81], a                                  ; $61fa: $e0 $81
    ld a, [bc]                                    ; $61fc: $0a
    ld a, $a0                                     ; $61fd: $3e $a0
    jp nz, Jump_000_00c3                          ; $61ff: $c2 $c3 $00

    sbc a                                         ; $6202: $9f
    add $c5                                       ; $6203: $c6 $c5
    call nz, Call_000_0763                        ; $6205: $c4 $63 $07
    and b                                         ; $6208: $a0
    dec c                                         ; $6209: $0d
    rlca                                          ; $620a: $07
    ld l, e                                       ; $620b: $6b
    ld c, e                                       ; $620c: $4b
    ld l, e                                       ; $620d: $6b
    ld b, b                                       ; $620e: $40
    ldh [$c1], a                                  ; $620f: $e0 $c1
    ld h, [hl]                                    ; $6211: $66
    nop                                           ; $6212: $00
    rst $38                                       ; $6213: $ff
    ld c, h                                       ; $6214: $4c
    ld b, h                                       ; $6215: $44
    pop bc                                        ; $6216: $c1
    db $e4                                        ; $6217: $e4
    nop                                           ; $6218: $00
    nop                                           ; $6219: $00
    and d                                         ; $621a: $a2
    pop bc                                        ; $621b: $c1
    and b                                         ; $621c: $a0
    pop af                                        ; $621d: $f1
    jp nz, $c381                                  ; $621e: $c2 $81 $c3

    add l                                         ; $6221: $85
    cp [hl]                                       ; $6222: $be
    ld d, a                                       ; $6223: $57
    jp $e7c1                                      ; $6224: $c3 $c1 $e7


    pop bc                                        ; $6227: $c1
    and c                                         ; $6228: $a1
    ret nz                                        ; $6229: $c0

    add b                                         ; $622a: $80
    add e                                         ; $622b: $83
    nop                                           ; $622c: $00
    sbc a                                         ; $622d: $9f
    xor a                                         ; $622e: $af
    inc h                                         ; $622f: $24
    rst $00                                       ; $6230: $c7
    and c                                         ; $6231: $a1
    add e                                         ; $6232: $83
    pop hl                                        ; $6233: $e1
    ld [bc], a                                    ; $6234: $02
    pop hl                                        ; $6235: $e1
    dec bc                                        ; $6236: $0b
    dec c                                         ; $6237: $0d
    ld b, b                                       ; $6238: $40
    nop                                           ; $6239: $00
    ldh [$81], a                                  ; $623a: $e0 $81
    ld h, e                                       ; $623c: $63
    ld a, e                                       ; $623d: $7b
    sbc a                                         ; $623e: $9f
    db $db                                        ; $623f: $db
    inc hl                                        ; $6240: $23
    ld [$c3e1], sp                                ; $6241: $08 $e1 $c3
    ldh [$2b], a                                  ; $6244: $e0 $2b
    jp nz, $02e1                                  ; $6246: $c2 $e1 $02

    ld b, c                                       ; $6249: $41
    ld h, b                                       ; $624a: $60
    ld c, e                                       ; $624b: $4b
    add b                                         ; $624c: $80
    add [hl]                                      ; $624d: $86
    nop                                           ; $624e: $00
    rst $38                                       ; $624f: $ff
    ld b, [hl]                                    ; $6250: $46
    ld b, l                                       ; $6251: $45
    ret z                                         ; $6252: $c8

    add b                                         ; $6253: $80
    jp Jump_000_02e2                              ; $6254: $c3 $e2 $02


    add b                                         ; $6257: $80
    ld h, b                                       ; $6258: $60
    pop bc                                        ; $6259: $c1
    and d                                         ; $625a: $a2
    add l                                         ; $625b: $85
    rst $38                                       ; $625c: $ff
    ld a, [bc]                                    ; $625d: $0a
    ld h, $c6                                     ; $625e: $26 $c6
    and e                                         ; $6260: $a3
    add [hl]                                      ; $6261: $86
    ld b, d                                       ; $6262: $42
    dec bc                                        ; $6263: $0b
    dec l                                         ; $6264: $2d
    add c                                         ; $6265: $81
    and c                                         ; $6266: $a1
    ld b, b                                       ; $6267: $40
    db $fd                                        ; $6268: $fd
    ld b, b                                       ; $6269: $40
    ret nz                                        ; $626a: $c0

    ldh [rP1], a                                  ; $626b: $e0 $00

Jump_06d_626d:
    rst $38                                       ; $626d: $ff
    jp $89a7                                      ; $626e: $c3 $a7 $89


    add b                                         ; $6271: $80
    ld b, [hl]                                    ; $6272: $46
    ld b, c                                       ; $6273: $41
    dec l                                         ; $6274: $2d
    add h                                         ; $6275: $84
    add d                                         ; $6276: $82
    ld b, $42                                     ; $6277: $06 $42
    and b                                         ; $6279: $a0
    dec c                                         ; $627a: $0d
    ld l, l                                       ; $627b: $6d
    nop                                           ; $627c: $00
    ld a, a                                       ; $627d: $7f
    ld b, a                                       ; $627e: $47
    and l                                         ; $627f: $a5
    ret nz                                        ; $6280: $c0

    db $e4                                        ; $6281: $e4
    add hl, bc                                    ; $6282: $09
    ld b, b                                       ; $6283: $40
    add h                                         ; $6284: $84
    ld b, c                                       ; $6285: $41
    ld hl, $c16b                                  ; $6286: $21 $6b $c1
    pop hl                                        ; $6289: $e1
    ret nz                                        ; $628a: $c0

    and e                                         ; $628b: $a3
    nop                                           ; $628c: $00
    rst $38                                       ; $628d: $ff
    inc b                                         ; $628e: $04
    add [hl]                                      ; $628f: $86
    ld l, l                                       ; $6290: $6d
    adc h                                         ; $6291: $8c
    add c                                         ; $6292: $81
    add l                                         ; $6293: $85
    pop hl                                        ; $6294: $e1
    nop                                           ; $6295: $00
    jp Jump_000_3d80                              ; $6296: $c3 $80 $3d


    ld h, b                                       ; $6299: $60
    ld b, c                                       ; $629a: $41
    and e                                         ; $629b: $a3
    nop                                           ; $629c: $00
    rst $38                                       ; $629d: $ff
    bit 4, l                                      ; $629e: $cb $65
    ld [bc], a                                    ; $62a0: $02
    ld [c], a                                     ; $62a1: $e2
    adc b                                         ; $62a2: $88
    add d                                         ; $62a3: $82
    ld a, a                                       ; $62a4: $7f
    and b                                         ; $62a5: $a0
    nop                                           ; $62a6: $00
    pop bc                                        ; $62a7: $c1
    ld [c], a                                     ; $62a8: $e2
    add hl, sp                                    ; $62a9: $39
    inc bc                                        ; $62aa: $03
    nop                                           ; $62ab: $00
    db $fc                                        ; $62ac: $fc
    ld h, b                                       ; $62ad: $60
    and e                                         ; $62ae: $a3
    inc b                                         ; $62af: $04
    jp nz, Jump_000_2048                          ; $62b0: $c2 $48 $20

    ld [$38a0], sp                                ; $62b3: $08 $a0 $38
    jp nz, Jump_000_2d03                          ; $62b6: $c2 $03 $2d

    dec l                                         ; $62b9: $2d
    jp $c120                                      ; $62ba: $c3 $20 $c1


    push bc                                       ; $62bd: $c5
    ld a, e                                       ; $62be: $7b
    ei                                            ; $62bf: $fb
    adc e                                         ; $62c0: $8b
    ld h, h                                       ; $62c1: $64
    rrca                                          ; $62c2: $0f
    ld b, b                                       ; $62c3: $40
    ld [$0022], sp                                ; $62c4: $08 $22 $00
    add c                                         ; $62c7: $81
    ldh [$86], a                                  ; $62c8: $e0 $86
    add c                                         ; $62ca: $81
    add a                                         ; $62cb: $87
    ld h, l                                       ; $62cc: $65
    nop                                           ; $62cd: $00
    rst $38                                       ; $62ce: $ff
    inc b                                         ; $62cf: $04
    push bc                                       ; $62d0: $c5
    ld a, [bc]                                    ; $62d1: $0a
    ld h, d                                       ; $62d2: $62
    add a                                         ; $62d3: $87
    pop bc                                        ; $62d4: $c1
    ld b, $41                                     ; $62d5: $06 $41
    nop                                           ; $62d7: $00
    or d                                          ; $62d8: $b2
    add h                                         ; $62d9: $84
    nop                                           ; $62da: $00
    rst $38                                       ; $62db: $ff
    ld a, [bc]                                    ; $62dc: $0a
    inc hl                                        ; $62dd: $23
    ld c, d                                       ; $62de: $4a
    ld b, e                                       ; $62df: $43
    ret                                           ; $62e0: $c9


    nop                                           ; $62e1: $00
    pop bc                                        ; $62e2: $c1
    ld [c], a                                     ; $62e3: $e2
    ld b, a                                       ; $62e4: $47
    ld b, l                                       ; $62e5: $45
    call nz, Call_000_0446                        ; $62e6: $c4 $46 $04
    nop                                           ; $62e9: $00
    ei                                            ; $62ea: $fb
    sub e                                         ; $62eb: $93
    db $e4                                        ; $62ec: $e4
    dec l                                         ; $62ed: $2d
    ret nz                                        ; $62ee: $c0

    pop hl                                        ; $62ef: $e1
    adc b                                         ; $62f0: $88
    jr nz, @+$48                                  ; $62f1: $20 $46

    jp nz, Jump_06d_6307                          ; $62f3: $c2 $07 $63

    add l                                         ; $62f6: $85
    adc [hl]                                      ; $62f7: $8e
    nop                                           ; $62f8: $00
    nop                                           ; $62f9: $00
    push de                                       ; $62fa: $d5
    dec b                                         ; $62fb: $05
    add d                                         ; $62fc: $82
    jp nz, $bfa2                                  ; $62fd: $c2 $a2 $bf

    ld [c], a                                     ; $6300: $e2
    ret nz                                        ; $6301: $c0

    pop hl                                        ; $6302: $e1
    ld e, h                                       ; $6303: $5c
    ld b, [hl]                                    ; $6304: $46
    nop                                           ; $6305: $00
    rst $18                                       ; $6306: $df

Jump_06d_6307:
    add l                                         ; $6307: $85
    inc bc                                        ; $6308: $03
    jr jr_06d_6315                                ; $6309: $18 $0a

    ld hl, $2207                                  ; $630b: $21 $07 $22
    ld b, $21                                     ; $630e: $06 $21
    ld l, l                                       ; $6310: $6d
    ld l, l                                       ; $6311: $6d
    add l                                         ; $6312: $85
    rst $38                                       ; $6313: $ff
    ld a, e                                       ; $6314: $7b

jr_06d_6315:
    ld c, e                                       ; $6315: $4b
    ret nz                                        ; $6316: $c0

    pop hl                                        ; $6317: $e1
    ld b, b                                       ; $6318: $40
    rst $00                                       ; $6319: $c7
    ld h, e                                       ; $631a: $63
    add $03                                       ; $631b: $c6 $03
    ret c                                         ; $631d: $d8

    scf                                           ; $631e: $37
    nop                                           ; $631f: $00
    ld [hl], e                                    ; $6320: $73
    add b                                         ; $6321: $80
    and $86                                       ; $6322: $e6 $86
    nop                                           ; $6324: $00
    ld c, l                                       ; $6325: $4d
    add $81                                       ; $6326: $c6 $81
    nop                                           ; $6328: $00
    ret c                                         ; $6329: $d8

    ld e, b                                       ; $632a: $58
    nop                                           ; $632b: $00
    ld d, c                                       ; $632c: $51
    add b                                         ; $632d: $80
    ld [c], a                                     ; $632e: $e2
    cp a                                          ; $632f: $bf
    push hl                                       ; $6330: $e5
    add [hl]                                      ; $6331: $86
    add c                                         ; $6332: $81
    add l                                         ; $6333: $85
    ld sp, $7800                                  ; $6334: $31 $00 $78
    ld c, d                                       ; $6337: $4a
    ld hl, $4800                                  ; $6338: $21 $00 $48
    ld b, d                                       ; $633b: $42
    ccf                                           ; $633c: $3f
    db $e3                                        ; $633d: $e3
    call nz, $8545                                ; $633e: $c4 $45 $85
    rst $38                                       ; $6341: $ff
    add l                                         ; $6342: $85

jr_06d_6343:
    inc h                                         ; $6343: $24
    cp a                                          ; $6344: $bf
    and c                                         ; $6345: $a1
    add $80                                       ; $6346: $c6 $80
    pop bc                                        ; $6348: $c1
    ld h, d                                       ; $6349: $62
    jr nz, @-$3e                                  ; $634a: $20 $c0

    db $e3                                        ; $634c: $e3
    nop                                           ; $634d: $00
    rst $38                                       ; $634e: $ff
    or $29                                        ; $634f: $f6 $29
    ret z                                         ; $6351: $c8

    ld hl, $a1be                                  ; $6352: $21 $be $a1
    dec hl                                        ; $6355: $2b
    ld [bc], a                                    ; $6356: $02
    add c                                         ; $6357: $81
    add $00                                       ; $6358: $c6 $00
    nop                                           ; $635a: $00
    ld h, e                                       ; $635b: $63
    adc c                                         ; $635c: $89
    ld a, e                                       ; $635d: $7b
    rst $38                                       ; $635e: $ff
    ld a, a                                       ; $635f: $7f
    and d                                         ; $6360: $a2
    ld b, a                                       ; $6361: $47

Jump_06d_6362:
    ld b, d                                       ; $6362: $42
    ret nz                                        ; $6363: $c0

    pop hl                                        ; $6364: $e1
    cp [hl]                                       ; $6365: $be
    pop bc                                        ; $6366: $c1
    nop                                           ; $6367: $00
    rst $38                                       ; $6368: $ff
    nop                                           ; $6369: $00
    ret                                           ; $636a: $c9


    nop                                           ; $636b: $00
    ld a, a                                       ; $636c: $7f
    and e                                         ; $636d: $a3
    ret z                                         ; $636e: $c8

    ld h, b                                       ; $636f: $60
    add $20                                       ; $6370: $c6 $20
    db $fd                                        ; $6372: $fd
    add h                                         ; $6373: $84
    rst $28                                       ; $6374: $ef
    inc hl                                        ; $6375: $23
    add l                                         ; $6376: $85
    rst $38                                       ; $6377: $ff
    add l                                         ; $6378: $85
    inc b                                         ; $6379: $04
    ld sp, hl                                     ; $637a: $f9
    add b                                         ; $637b: $80
    ld bc, $fc2d                                  ; $637c: $01 $2d $fc
    add d                                         ; $637f: $82
    add e                                         ; $6380: $83
    jr nz, jr_06d_6343                            ; $6381: $20 $c0

    and $00                                       ; $6383: $e6 $00
    rst $38                                       ; $6385: $ff
    ld b, [hl]                                    ; $6386: $46
    ld [$203d], sp                                ; $6387: $08 $3d $20
    ld a, l                                       ; $638a: $7d
    ld [c], a                                     ; $638b: $e2
    nop                                           ; $638c: $00
    jp $c061                                      ; $638d: $c3 $61 $c0


    push hl                                       ; $6390: $e5
    nop                                           ; $6391: $00
    rst $38                                       ; $6392: $ff
    ld a, e                                       ; $6393: $7b
    ld h, h                                       ; $6394: $64
    dec sp                                        ; $6395: $3b
    call nz, $803a                                ; $6396: $c4 $3a $80
    nop                                           ; $6399: $00
    ld h, d                                       ; $639a: $62
    call nz, $0041                                ; $639b: $c4 $41 $00
    nop                                           ; $639e: $00
    rst $38                                       ; $639f: $ff
    ld a, e                                       ; $63a0: $7b
    dec b                                         ; $63a1: $05
    ld a, l                                       ; $63a2: $7d
    ld h, h                                       ; $63a3: $64
    dec a                                         ; $63a4: $3d
    pop hl                                        ; $63a5: $e1
    jp nz, $c4e3                                  ; $63a6: $c2 $e3 $c4

    rlca                                          ; $63a9: $07
    add l                                         ; $63aa: $85
    rst $38                                       ; $63ab: $ff
    ld a, l                                       ; $63ac: $7d
    ld h, [hl]                                    ; $63ad: $66
    nop                                           ; $63ae: $00
    cp $02                                        ; $63af: $fe $02
    ld a, a                                       ; $63b1: $7f
    db $e4                                        ; $63b2: $e4
    ld bc, $00e5                                  ; $63b3: $01 $e5 $00
    rst $38                                       ; $63b6: $ff
    ld a, $45                                     ; $63b7: $3e $45
    ret nz                                        ; $63b9: $c0

    push hl                                       ; $63ba: $e5
    ld b, b                                       ; $63bb: $40
    db $e3                                        ; $63bc: $e3
    ld b, b                                       ; $63bd: $40
    pop bc                                        ; $63be: $c1
    nop                                           ; $63bf: $00
    db $fc                                        ; $63c0: $fc
    add h                                         ; $63c1: $84
    nop                                           ; $63c2: $00
    rst $38                                       ; $63c3: $ff
    ld [bc], a                                    ; $63c4: $02
    inc h                                         ; $63c5: $24
    cp [hl]                                       ; $63c6: $be
    inc bc                                        ; $63c7: $03
    ccf                                           ; $63c8: $3f
    db $e4                                        ; $63c9: $e4
    cp [hl]                                       ; $63ca: $be
    and d                                         ; $63cb: $a2
    nop                                           ; $63cc: $00
    rst $38                                       ; $63cd: $ff
    ld a, e                                       ; $63ce: $7b
    and h                                         ; $63cf: $a4
    nop                                           ; $63d0: $00
    ld a, d                                       ; $63d1: $7a
    ld b, d                                       ; $63d2: $42
    cp [hl]                                       ; $63d3: $be
    inc bc                                        ; $63d4: $03
    ei                                            ; $63d5: $fb
    ld h, d                                       ; $63d6: $62
    ld b, d                                       ; $63d7: $42
    dec b                                         ; $63d8: $05
    nop                                           ; $63d9: $00
    rst $38                                       ; $63da: $ff
    ld a, e                                       ; $63db: $7b
    add hl, hl                                    ; $63dc: $29
    ld a, [$fe41]                                 ; $63dd: $fa $41 $fe
    inc bc                                        ; $63e0: $03
    ret nz                                        ; $63e1: $c0

    ld a, h                                       ; $63e2: $7c
    add b                                         ; $63e3: $80
    ld a, l                                       ; $63e4: $7d
    ld b, c                                       ; $63e5: $41
    nop                                           ; $63e6: $00
    rst $38                                       ; $63e7: $ff
    ld a, e                                       ; $63e8: $7b
    xor l                                         ; $63e9: $ad
    add c                                         ; $63ea: $81
    ldh [$7e], a                                  ; $63eb: $e0 $7e
    ldh [$2d], a                                  ; $63ed: $e0 $2d
    dec bc                                        ; $63ef: $0b
    add c                                         ; $63f0: $81
    dec hl                                        ; $63f1: $2b
    ld a, [hl]                                    ; $63f2: $7e
    add d                                         ; $63f3: $82
    ld e, $e4                                     ; $63f4: $1e $e4
    ld a, e                                       ; $63f6: $7b
    rst $38                                       ; $63f7: $ff
    dec sp                                        ; $63f8: $3b
    jp nz, $e4c0                                  ; $63f9: $c2 $c0 $e4

    ccf                                           ; $63fc: $3f
    ld [bc], a                                    ; $63fd: $02
    dec hl                                        ; $63fe: $2b
    ld b, b                                       ; $63ff: $40
    ld a, l                                       ; $6400: $7d
    ld b, b                                       ; $6401: $40
    sbc c                                         ; $6402: $99
    add h                                         ; $6403: $84
    nop                                           ; $6404: $00
    rst $38                                       ; $6405: $ff
    ld a, e                                       ; $6406: $7b
    and [hl]                                      ; $6407: $a6
    cp a                                          ; $6408: $bf
    and c                                         ; $6409: $a1
    cp a                                          ; $640a: $bf
    db $e3                                        ; $640b: $e3
    ld c, e                                       ; $640c: $4b
    ret nz                                        ; $640d: $c0

    db $e3                                        ; $640e: $e3
    ld c, h                                       ; $640f: $4c
    nop                                           ; $6410: $00

Call_06d_6411:
    rst $38                                       ; $6411: $ff
    ld a, e                                       ; $6412: $7b
    xor h                                         ; $6413: $ac
    ld c, l                                       ; $6414: $4d
    dec l                                         ; $6415: $2d

Jump_06d_6416:
    jp nz, $fe01                                  ; $6416: $c2 $01 $fe

    add b                                         ; $6419: $80
    ld l, l                                       ; $641a: $6d
    ld l, e                                       ; $641b: $6b
    add $1c                                       ; $641c: $c6 $1c
    nop                                           ; $641e: $00
    rst $38                                       ; $641f: $ff
    ld a, e                                       ; $6420: $7b
    ld b, [hl]                                    ; $6421: $46
    ld c, $0e                                     ; $6422: $0e $0e
    dec l                                         ; $6424: $2d
    cp e                                          ; $6425: $bb
    add b                                         ; $6426: $80
    cp $e1                                        ; $6427: $fe $e1
    pop bc                                        ; $6429: $c1
    ld [$7b00], a                                 ; $642a: $ea $00 $7b
    rst $38                                       ; $642d: $ff
    cp d                                          ; $642e: $ba
    add h                                         ; $642f: $84
    ld a, [bc]                                    ; $6430: $0a
    ld h, h                                       ; $6431: $64
    add [hl]                                      ; $6432: $86
    jp $5953                                      ; $6433: $c3 $53 $59


    xor l                                         ; $6436: $ad
    ld [de], a                                    ; $6437: $12
    or $04                                        ; $6438: $f6 $04
    ret nz                                        ; $643a: $c0

    push hl                                       ; $643b: $e5
    nop                                           ; $643c: $00
    add l                                         ; $643d: $85
    or $00                                        ; $643e: $f6 $00
    nop                                           ; $6440: $00
    nop                                           ; $6441: $00

Jump_06d_6442:
    rst $38                                       ; $6442: $ff
    call c, $a0dd                                 ; $6443: $dc $dd $a0
    sbc $df                                       ; $6446: $de $df
    ldh [$e1], a                                  ; $6448: $e0 $e1
    ld [c], a                                     ; $644a: $e2
    ld l, e                                       ; $644b: $6b
    db $e3                                        ; $644c: $e3
    db $e4                                        ; $644d: $e4
    or $f1                                        ; $644e: $f6 $f1
    and b                                         ; $6450: $a0
    rst $38                                       ; $6451: $ff
    ldh [$d8], a                                  ; $6452: $e0 $d8
    reti                                          ; $6454: $d9


    db $fc                                        ; $6455: $fc
    db $e3                                        ; $6456: $e3
    di                                            ; $6457: $f3
    jp nc, $f2d3                                  ; $6458: $d2 $d3 $f2

    pop hl                                        ; $645b: $e1
    ret c                                         ; $645c: $d8

    db $ed                                        ; $645d: $ed
    push hl                                       ; $645e: $e5
    and $e7                                       ; $645f: $e6 $e7
    and b                                         ; $6461: $a0
    cp a                                          ; $6462: $bf
    add sp, -$17                                  ; $6463: $e8 $e9
    ld [$eceb], a                                 ; $6465: $ea $eb $ec
    and b                                         ; $6468: $a0
    or $f1                                        ; $6469: $f6 $f1
    sub $ff                                       ; $646b: $d6 $ff
    rst $10                                       ; $646d: $d7
    push af                                       ; $646e: $f5
    or $da                                        ; $646f: $f6 $da
    db $db                                        ; $6471: $db
    and b                                         ; $6472: $a0
    and b                                         ; $6473: $a0
    jp c, $dbff                                   ; $6474: $da $ff $db

    db $ed                                        ; $6477: $ed
    xor $d4                                       ; $6478: $ee $d4
    push de                                       ; $647a: $d5
    rst $28                                       ; $647b: $ef
    push af                                       ; $647c: $f5
    or $e0                                        ; $647d: $f6 $e0
    xor a                                         ; $647f: $af
    ldh [$ce], a                                  ; $6480: $e0 $ce
    db $eb                                        ; $6482: $eb
    add l                                         ; $6483: $85
    or $67                                        ; $6484: $f6 $67
    ld [c], a                                     ; $6486: $e2
    add h                                         ; $6487: $84
    pop hl                                        ; $6488: $e1
    and b                                         ; $6489: $a0
    and b                                         ; $648a: $a0
    sbc a                                         ; $648b: $9f
    rst $38                                       ; $648c: $ff
    sbc l                                         ; $648d: $9d
    sbc l                                         ; $648e: $9d
    sbc a                                         ; $648f: $9f
    ldh a, [$f1]                                  ; $6490: $f0 $f1
    ld a, [c]                                     ; $6492: $f2
    di                                            ; $6493: $f3
    db $f4                                        ; $6494: $f4
    ldh [rHDMA3], a                               ; $6495: $e0 $53
    ldh a, [$85]                                  ; $6497: $f0 $85
    or $67                                        ; $6499: $f6 $67
    pop hl                                        ; $649b: $e1
    adc b                                         ; $649c: $88
    ldh [$c2], a                                  ; $649d: $e0 $c2
    pop hl                                        ; $649f: $e1
    sbc h                                         ; $64a0: $9c
    ld c, b                                       ; $64a1: $48
    ld d, e                                       ; $64a2: $53
    jp $9f9c                                      ; $64a3: $c3 $9c $9f


    dec [hl]                                      ; $64a6: $35
    pop hl                                        ; $64a7: $e1
    ld d, e                                       ; $64a8: $53
    ldh a, [rP1]                                  ; $64a9: $f0 $00
    or $05                                        ; $64ab: $f6 $05
    pop hl                                        ; $64ad: $e1
    and b                                         ; $64ae: $a0
    and b                                         ; $64af: $a0
    rst $38                                       ; $64b0: $ff
    push af                                       ; $64b1: $f5
    or $9f                                        ; $64b2: $f6 $9f
    sbc h                                         ; $64b4: $9c
    ld b, l                                       ; $64b5: $45
    ld c, c                                       ; $64b6: $49
    ld h, b                                       ; $64b7: $60
    ld d, a                                       ; $64b8: $57
    dec c                                         ; $64b9: $0d
    ld d, d                                       ; $64ba: $52
    cp a                                          ; $64bb: $bf
    ldh [$d6], a                                  ; $64bc: $e0 $d6
    rst $10                                       ; $64be: $d7
    nop                                           ; $64bf: $00
    rst $38                                       ; $64c0: $ff
    add l                                         ; $64c1: $85
    rst $20                                       ; $64c2: $e7
    push bc                                       ; $64c3: $c5
    ret nz                                        ; $64c4: $c0

    rst $08                                       ; $64c5: $cf
    pop hl                                        ; $64c6: $e1
    cp $c1                                        ; $64c7: $fe $c1
    ldh [rSTAT], a                                ; $64c9: $e0 $41
    ld d, e                                       ; $64cb: $53
    dec hl                                        ; $64cc: $2b
    dec hl                                        ; $64cd: $2b
    ld d, e                                       ; $64ce: $53
    ld b, h                                       ; $64cf: $44
    sbc [hl]                                      ; $64d0: $9e
    ldh a, [$b7]                                  ; $64d1: $f0 $b7
    jp nz, $ff00                                  ; $64d3: $c2 $00 $ff

    ld [hl], c                                    ; $64d6: $71
    ret z                                         ; $64d7: $c8

    add [hl]                                      ; $64d8: $86
    ret nz                                        ; $64d9: $c0

    sbc a                                         ; $64da: $9f
    sbc h                                         ; $64db: $9c
    ld b, e                                       ; $64dc: $43
    ld a, [hl+]                                   ; $64dd: $2a
    ld a, a                                       ; $64de: $7f
    cpl                                           ; $64df: $2f
    jr nz, jr_06d_6502                            ; $64e0: $20 $20

    jr nc, jr_06d_6533                            ; $64e2: $30 $4f

    ld d, l                                       ; $64e4: $55
    sbc [hl]                                      ; $64e5: $9e
    cp e                                          ; $64e6: $bb
    ret nz                                        ; $64e7: $c0

    ld hl, sp+$00                                 ; $64e8: $f8 $00
    rst $38                                       ; $64ea: $ff
    ld [hl], c                                    ; $64eb: $71
    jp z, $c086                                   ; $64ec: $ca $86 $c0

    and c                                         ; $64ef: $a1
    ld c, d                                       ; $64f0: $4a
    ld e, d                                       ; $64f1: $5a
    jr nc, jr_06d_6514                            ; $64f2: $30 $20

    add a                                         ; $64f4: $87
    jr nz, jr_06d_6517                            ; $64f5: $20 $20

    ld a, [hl+]                                   ; $64f7: $2a
    ret nz                                        ; $64f8: $c0

    ldh [$83], a                                  ; $64f9: $e0 $83
    ret nz                                        ; $64fb: $c0

    nop                                           ; $64fc: $00
    rst $38                                       ; $64fd: $ff
    nop                                           ; $64fe: $00
    db $ed                                        ; $64ff: $ed
    sbc [hl]                                      ; $6500: $9e
    rst $38                                       ; $6501: $ff

jr_06d_6502:
    ld c, d                                       ; $6502: $4a
    ld d, [hl]                                    ; $6503: $56
    ld a, [hl+]                                   ; $6504: $2a
    inc hl                                        ; $6505: $23
    jr z, jr_06d_6533                             ; $6506: $28 $2b

    ld c, e                                       ; $6508: $4b
    ld e, h                                       ; $6509: $5c
    ldh a, [$bf]                                  ; $650a: $f0 $bf
    jp nz, $b0d8                                  ; $650c: $c2 $d8 $b0

    nop                                           ; $650f: $00
    ei                                            ; $6510: $fb
    jp Jump_06d_56c0                              ; $6511: $c3 $c0 $56


jr_06d_6514:
    ld e, h                                       ; $6514: $5c
    inc a                                         ; $6515: $3c
    ld a, [hl-]                                   ; $6516: $3a

jr_06d_6517:
    adc a                                         ; $6517: $8f
    ld e, h                                       ; $6518: $5c
    ld d, [hl]                                    ; $6519: $56
    or d                                          ; $651a: $b2
    and c                                         ; $651b: $a1
    db $f4                                        ; $651c: $f4
    and b                                         ; $651d: $a0
    ret c                                         ; $651e: $d8

    or c                                          ; $651f: $b1
    nop                                           ; $6520: $00
    ei                                            ; $6521: $fb
    sbc [hl]                                      ; $6522: $9e
    rst $38                                       ; $6523: $ff
    ld b, [hl]                                    ; $6524: $46
    or d                                          ; $6525: $b2
    ld b, e                                       ; $6526: $43
    ld b, b                                       ; $6527: $40
    dec [hl]                                      ; $6528: $35
    ld a, $45                                     ; $6529: $3e $45
    or d                                          ; $652b: $b2
    pop af                                        ; $652c: $f1
    or d                                          ; $652d: $b2
    pop bc                                        ; $652e: $c1
    jp nz, $ff00                                  ; $652f: $c2 $00 $ff

    nop                                           ; $6532: $00

jr_06d_6533:
    db $ec                                        ; $6533: $ec
    sbc a                                         ; $6534: $9f
    sbc h                                         ; $6535: $9c
    ld b, [hl]                                    ; $6536: $46
    or d                                          ; $6537: $b2
    ccf                                           ; $6538: $3f
    ld b, h                                       ; $6539: $44
    inc a                                         ; $653a: $3c
    ld a, [hl-]                                   ; $653b: $3a
    ld b, l                                       ; $653c: $45
    or d                                          ; $653d: $b2
    ld b, [hl]                                    ; $653e: $46
    pop bc                                        ; $653f: $c1
    pop bc                                        ; $6540: $c1
    nop                                           ; $6541: $00
    rst $38                                       ; $6542: $ff
    ld hl, sp+$00                                 ; $6543: $f8 $00
    ret                                           ; $6545: $c9


    ld de, $7fc2                                  ; $6546: $11 $c2 $7f
    ldh [rLYC], a                                 ; $6549: $e0 $45
    ld a, [hl-]                                   ; $654b: $3a
    dec [hl]                                      ; $654c: $35
    ld [hl], $45                                  ; $654d: $36 $45
    adc l                                         ; $654f: $8d
    ld b, [hl]                                    ; $6550: $46
    cp a                                          ; $6551: $bf
    and d                                         ; $6552: $a2
    ret nc                                        ; $6553: $d0

    pop de                                        ; $6554: $d1
    nop                                           ; $6555: $00
    rst $18                                       ; $6556: $df
    nop                                           ; $6557: $00
    add $c8                                       ; $6558: $c6 $c8
    add b                                         ; $655a: $80
    ret nc                                        ; $655b: $d0

    db $fd                                        ; $655c: $fd
    pop de                                        ; $655d: $d1
    ld a, a                                       ; $655e: $7f
    ldh [rDMA], a                                 ; $655f: $e0 $46
    add hl, sp                                    ; $6561: $39
    dec [hl]                                      ; $6562: $35
    dec [hl]                                      ; $6563: $35
    add hl, sp                                    ; $6564: $39
    ld b, [hl]                                    ; $6565: $46
    ld bc, $8046                                  ; $6566: $01 $46 $80
    pop bc                                        ; $6569: $c1
    cp l                                          ; $656a: $bd
    add d                                         ; $656b: $82
    nop                                           ; $656c: $00
    rst $38                                       ; $656d: $ff
    add l                                         ; $656e: $85
    add e                                         ; $656f: $83
    ret z                                         ; $6570: $c8

    add b                                         ; $6571: $80
    adc l                                         ; $6572: $8d
    add b                                         ; $6573: $80
    ld a, $e0                                     ; $6574: $3e $e0
    rra                                           ; $6576: $1f
    ld b, h                                       ; $6577: $44
    inc a                                         ; $6578: $3c
    dec [hl]                                      ; $6579: $35
    ld a, [hl-]                                   ; $657a: $3a
    ld b, l                                       ; $657b: $45
    ccf                                           ; $657c: $3f
    ldh [$bd], a                                  ; $657d: $e0 $bd
    add d                                         ; $657f: $82
    nop                                           ; $6580: $00
    rst $38                                       ; $6581: $ff
    jp c, $8471                                   ; $6582: $da $71 $84

    and b                                         ; $6585: $a0
    ret nc                                        ; $6586: $d0

    db $e3                                        ; $6587: $e3
    and b                                         ; $6588: $a0
    and c                                         ; $6589: $a1
    add b                                         ; $658a: $80
    pop hl                                        ; $658b: $e1
    inc a                                         ; $658c: $3c
    ld b, h                                       ; $658d: $44
    ret nz                                        ; $658e: $c0

    rst $38                                       ; $658f: $ff
    ret nz                                        ; $6590: $c0

    cp l                                          ; $6591: $bd
    add d                                         ; $6592: $82
    nop                                           ; $6593: $00
    rst $38                                       ; $6594: $ff
    nop                                           ; $6595: $00
    and [hl]                                      ; $6596: $a6
    adc l                                         ; $6597: $8d
    add d                                         ; $6598: $82
    cp [hl]                                       ; $6599: $be
    ret nz                                        ; $659a: $c0

    ld a, $cf                                     ; $659b: $3e $cf
    rlca                                          ; $659d: $07
    rst $08                                       ; $659e: $cf
    dec [hl]                                      ; $659f: $35
    ld b, b                                       ; $65a0: $40
    rst $38                                       ; $65a1: $ff
    jp $bf00                                      ; $65a2: $c3 $00 $bf


    add l                                         ; $65a5: $85
    add [hl]                                      ; $65a6: $86
    inc d                                         ; $65a7: $14
    add d                                         ; $65a8: $82
    ld b, c                                       ; $65a9: $41
    pop hl                                        ; $65aa: $e1
    rst $38                                       ; $65ab: $ff
    or d                                          ; $65ac: $b2
    ld a, $bb                                     ; $65ad: $3e $bb
    adc $3c                                       ; $65af: $ce $3c
    ld b, h                                       ; $65b1: $44
    or d                                          ; $65b2: $b2
    ld b, [hl]                                    ; $65b3: $46
    rlca                                          ; $65b4: $07
    and c                                         ; $65b5: $a1
    push af                                       ; $65b6: $f5
    or $c0                                        ; $65b7: $f6 $c0
    ret nz                                        ; $65b9: $c0

    nop                                           ; $65ba: $00
    rst $38                                       ; $65bb: $ff
    add l                                         ; $65bc: $85
    ld h, [hl]                                    ; $65bd: $66
    sub b                                         ; $65be: $90
    add c                                         ; $65bf: $81
    add b                                         ; $65c0: $80
    jp nz, $cf83                                  ; $65c1: $c2 $83 $cf

    rst $08                                       ; $65c4: $cf
    ld a, $c3                                     ; $65c5: $3e $c3
    ld a, l                                       ; $65c7: $7d
    ld h, c                                       ; $65c8: $61
    nop                                           ; $65c9: $00
    rst $38                                       ; $65ca: $ff
    nop                                           ; $65cb: $00
    and $c1                                       ; $65cc: $e6 $c1
    add d                                         ; $65ce: $82
    ld b, [hl]                                    ; $65cf: $46
    add hl, de                                    ; $65d0: $19
    or d                                          ; $65d1: $b2
    add c                                         ; $65d2: $81
    ret nz                                        ; $65d3: $c0

    add b                                         ; $65d4: $80
    pop bc                                        ; $65d5: $c1
    sbc h                                         ; $65d6: $9c
    sbc a                                         ; $65d7: $9f
    ldh a, [$c3]                                  ; $65d8: $f0 $c3
    nop                                           ; $65da: $00
    rst $38                                       ; $65db: $ff
    or $41                                        ; $65dc: $f6 $41
    ld e, h                                       ; $65de: $5c
    inc de                                        ; $65df: $13
    add c                                         ; $65e0: $81
    pop bc                                        ; $65e1: $c1
    add c                                         ; $65e2: $81
    ld b, [hl]                                    ; $65e3: $46
    or d                                          ; $65e4: $b2
    or d                                          ; $65e5: $b2
    ld bc, $39e1                                  ; $65e6: $01 $e1 $39
    nop                                           ; $65e9: $00
    pop bc                                        ; $65ea: $c1
    sbc b                                         ; $65eb: $98
    ld a, l                                       ; $65ec: $7d
    ld h, d                                       ; $65ed: $62
    nop                                           ; $65ee: $00
    rst $38                                       ; $65ef: $ff
    or $43                                        ; $65f0: $f6 $43
    ret c                                         ; $65f2: $d8

    reti                                          ; $65f3: $d9


    inc de                                        ; $65f4: $13
    ld h, b                                       ; $65f5: $60
    add c                                         ; $65f6: $81
    and c                                         ; $65f7: $a1
    or d                                          ; $65f8: $b2
    rra                                           ; $65f9: $1f
    ld a, $ce                                     ; $65fa: $3e $ce
    swap l                                        ; $65fc: $cb $35
    ld a, $42                                     ; $65fe: $3e $42
    pop hl                                        ; $6600: $e1
    cp $e4                                        ; $6601: $fe $e4
    nop                                           ; $6603: $00
    rst $38                                       ; $6604: $ff
    ld e, b                                       ; $6605: $58
    reti                                          ; $6606: $d9


    ld b, c                                       ; $6607: $41
    ld b, [hl]                                    ; $6608: $46
    ld h, d                                       ; $6609: $62
    pop bc                                        ; $660a: $c1
    pop hl                                        ; $660b: $e1
    or d                                          ; $660c: $b2
    add hl, sp                                    ; $660d: $39
    add b                                         ; $660e: $80
    ld [c], a                                     ; $660f: $e2
    sbc [hl]                                      ; $6610: $9e
    add c                                         ; $6611: $81
    ld h, e                                       ; $6612: $63
    and b                                         ; $6613: $a0
    nop                                           ; $6614: $00
    rst $38                                       ; $6615: $ff
    add l                                         ; $6616: $85
    ld h, d                                       ; $6617: $62
    sub a                                         ; $6618: $97
    jp nz, $e3c1                                  ; $6619: $c2 $c1 $e3

    nop                                           ; $661c: $00
    and b                                         ; $661d: $a0
    dec [hl]                                      ; $661e: $35
    ld b, c                                       ; $661f: $41
    ret nz                                        ; $6620: $c0

    and c                                         ; $6621: $a1
    ret nz                                        ; $6622: $c0

    jr c, jr_06d_6666                             ; $6623: $38 $41

    add b                                         ; $6625: $80
    ld b, c                                       ; $6626: $41
    nop                                           ; $6627: $00
    rst $38                                       ; $6628: $ff
    ld a, [bc]                                    ; $6629: $0a
    ld b, b                                       ; $662a: $40
    inc d                                         ; $662b: $14
    ld b, c                                       ; $662c: $41
    pop bc                                        ; $662d: $c1
    db $e4                                        ; $662e: $e4
    ld b, l                                       ; $662f: $45
    ld [hl], $07                                  ; $6630: $36 $07
    dec [hl]                                      ; $6632: $35
    rst $08                                       ; $6633: $cf
    rst $08                                       ; $6634: $cf
    add b                                         ; $6635: $80
    pop hl                                        ; $6636: $e1
    jr c, jr_06d_6679                             ; $6637: $38 $40

    nop                                           ; $6639: $00
    sbc a                                         ; $663a: $9f
    or $22                                        ; $663b: $f6 $22
    inc d                                         ; $663d: $14
    ld b, d                                       ; $663e: $42
    cp $43                                        ; $663f: $fe $43
    db $e3                                        ; $6641: $e3
    ld b, l                                       ; $6642: $45
    ccf                                           ; $6643: $3f
    ld [hl], $cb                                  ; $6644: $36 $cb
    dec [hl]                                      ; $6646: $35
    adc $bb                                       ; $6647: $ce $bb
    ret nz                                        ; $6649: $c0

    nop                                           ; $664a: $00
    ldh [rDIV], a                                 ; $664b: $e0 $04
    ld b, b                                       ; $664d: $40
    nop                                           ; $664e: $00
    sbc a                                         ; $664f: $9f
    ld a, e                                       ; $6650: $7b
    inc hl                                        ; $6651: $23
    inc d                                         ; $6652: $14
    ld b, d                                       ; $6653: $42
    add l                                         ; $6654: $85
    ret nz                                        ; $6655: $c0

    ld b, l                                       ; $6656: $45
    ccf                                           ; $6657: $3f
    dec e                                         ; $6658: $1d
    ld b, e                                       ; $6659: $43
    jp nz, Jump_000_35e0                          ; $665a: $c2 $e0 $35

    rst $08                                       ; $665d: $cf
    call z, $e080                                 ; $665e: $cc $80 $e0
    ccf                                           ; $6661: $3f
    ld b, d                                       ; $6662: $42
    nop                                           ; $6663: $00
    sbc a                                         ; $6664: $9f
    inc a                                         ; $6665: $3c

jr_06d_6666:
    add l                                         ; $6666: $85
    ld b, l                                       ; $6667: $45
    ld b, [hl]                                    ; $6668: $46
    add c                                         ; $6669: $81
    ld b, l                                       ; $666a: $45
    ld [hl], $cb                                  ; $666b: $36 $cb
    dec sp                                        ; $666d: $3b
    inc b                                         ; $666e: $04
    ret nz                                        ; $666f: $c0

    add c                                         ; $6670: $81
    ldh [$80], a                                  ; $6671: $e0 $80
    rst $38                                       ; $6673: $ff
    ld h, d                                       ; $6674: $62
    ld b, c                                       ; $6675: $41
    ld b, b                                       ; $6676: $40
    nop                                           ; $6677: $00
    sbc a                                         ; $6678: $9f

jr_06d_6679:
    ld a, [bc]                                    ; $6679: $0a
    inc hl                                        ; $667a: $23
    ld d, $40                                     ; $667b: $16 $40
    add $60                                       ; $667d: $c6 $60
    rst $00                                       ; $667f: $c7
    and c                                         ; $6680: $a1
    dec [hl]                                      ; $6681: $35
    rlca                                          ; $6682: $07
    rst $08                                       ; $6683: $cf
    cp e                                          ; $6684: $bb
    rst $08                                       ; $6685: $cf
    ld bc, $40e1                                  ; $6686: $01 $e1 $40
    add b                                         ; $6689: $80
    ld hl, sp+$00                                 ; $668a: $f8 $00
    nop                                           ; $668c: $00
    rst $38                                       ; $668d: $ff
    add l                                         ; $668e: $85
    add e                                         ; $668f: $83
    ld [hl], h                                    ; $6690: $74
    call $8100                                    ; $6691: $cd $00 $81
    ldh [$3a], a                                  ; $6694: $e0 $3a
    jp nz, $cce1                                  ; $6696: $c2 $e1 $cc

    call z, $c1ce                                 ; $6699: $cc $ce $c1
    ld h, b                                       ; $669c: $60
    adc l                                         ; $669d: $8d
    or d                                          ; $669e: $b2
    ret nz                                        ; $669f: $c0

    ld h, b                                       ; $66a0: $60
    jp c, Jump_000_00db                           ; $66a1: $da $db $00

    rst $38                                       ; $66a4: $ff
    add l                                         ; $66a5: $85
    and d                                         ; $66a6: $a2
    ld c, c                                       ; $66a7: $49
    ld [hl+], a                                   ; $66a8: $22
    sbc [hl]                                      ; $66a9: $9e
    inc a                                         ; $66aa: $3c
    ret                                           ; $66ab: $c9


    ld h, b                                       ; $66ac: $60
    add [hl]                                      ; $66ad: $86
    ldh [$cd], a                                  ; $66ae: $e0 $cd
    call $cfcd                                    ; $66b0: $cd $cd $cf
    pop bc                                        ; $66b3: $c1
    pop hl                                        ; $66b4: $e1
    ld b, b                                       ; $66b5: $40
    ret nz                                        ; $66b6: $c0

    call z, $ff00                                 ; $66b7: $cc $00 $ff
    ld a, e                                       ; $66ba: $7b
    inc bc                                        ; $66bb: $03
    ret nc                                        ; $66bc: $d0

    pop de                                        ; $66bd: $d1
    add [hl]                                      ; $66be: $86
    and d                                         ; $66bf: $a2
    ld c, c                                       ; $66c0: $49
    ld h, b                                       ; $66c1: $60
    cp e                                          ; $66c2: $bb
    adc $1f                                       ; $66c3: $ce $1f
    dec [hl]                                      ; $66c5: $35
    jr c, @+$3f                                   ; $66c6: $38 $3d

    dec a                                         ; $66c8: $3d
    scf                                           ; $66c9: $37
    pop bc                                        ; $66ca: $c1
    pop hl                                        ; $66cb: $e1
    nop                                           ; $66cc: $00
    jr nz, jr_06d_66cf                            ; $66cd: $20 $00

jr_06d_66cf:
    ld e, a                                       ; $66cf: $5f
    db $10                                        ; $66d0: $10
    ld a, [bc]                                    ; $66d1: $0a
    inc hl                                        ; $66d2: $23
    inc b                                         ; $66d3: $04
    call nz, Call_06d_608a                        ; $66d4: $c4 $8a $60
    adc b                                         ; $66d7: $88
    add d                                         ; $66d8: $82
    or d                                          ; $66d9: $b2
    add e                                         ; $66da: $83
    ldh [rSC], a                                  ; $66db: $e0 $02
    ld h, c                                       ; $66dd: $61
    ld [bc], a                                    ; $66de: $02
    ld hl, $0038                                  ; $66df: $21 $38 $00
    cp $8b                                        ; $66e2: $fe $8b
    ld h, h                                       ; $66e4: $64
    adc c                                         ; $66e5: $89
    ld b, c                                       ; $66e6: $41
    ld b, d                                       ; $66e7: $42
    dec [hl]                                      ; $66e8: $35
    dec [hl]                                      ; $66e9: $35
    ld [$c1a0], sp                                ; $66ea: $08 $a0 $c1
    pop hl                                        ; $66ed: $e1
    ld de, $419c                                  ; $66ee: $11 $9c $41
    nop                                           ; $66f1: $00
    ld [hl], d                                    ; $66f2: $72
    add d                                         ; $66f3: $82
    nop                                           ; $66f4: $00
    rst $38                                       ; $66f5: $ff
    db $e4                                        ; $66f6: $e4
    ld e, e                                       ; $66f7: $5b
    ld h, e                                       ; $66f8: $63
    adc c                                         ; $66f9: $89
    add c                                         ; $66fa: $81
    ld c, c                                       ; $66fb: $49
    and c                                         ; $66fc: $a1
    inc sp                                        ; $66fd: $33
    dec [hl]                                      ; $66fe: $35
    add hl, sp                                    ; $66ff: $39
    pop bc                                        ; $6700: $c1
    pop hl                                        ; $6701: $e1
    add a                                         ; $6702: $87
    ld h, e                                       ; $6703: $63
    jp c, $d8db                                   ; $6704: $da $db $d8

    ld [de], a                                    ; $6707: $12
    ld a, [bc]                                    ; $6708: $0a
    ld l, [hl]                                    ; $6709: $6e
    ld [bc], a                                    ; $670a: $02
    inc b                                         ; $670b: $04
    jp Jump_06d_42b2                              ; $670c: $c3 $b2 $42


    jp nz, $c087                                  ; $670f: $c2 $87 $c0

    ret z                                         ; $6712: $c8

    ld h, d                                       ; $6713: $62
    ldh a, [$83]                                  ; $6714: $f0 $83
    add l                                         ; $6716: $85
    adc l                                         ; $6717: $8d
    nop                                           ; $6718: $00
    di                                            ; $6719: $f3
    dec sp                                        ; $671a: $3b
    push af                                       ; $671b: $f5
    or $49                                        ; $671c: $f6 $49
    ld hl, $4646                                  ; $671e: $21 $46 $46
    ld a, $ca                                     ; $6721: $3e $ca
    ld b, c                                       ; $6723: $41
    inc bc                                        ; $6724: $03
    pop hl                                        ; $6725: $e1
    nop                                           ; $6726: $00
    ld b, a                                       ; $6727: $47
    ld b, [hl]                                    ; $6728: $46
    ret c                                         ; $6729: $d8

    ld [hl-], a                                   ; $672a: $32
    add l                                         ; $672b: $85
    or b                                          ; $672c: $b0
    adc b                                         ; $672d: $88
    ld h, e                                       ; $672e: $63
    ret nz                                        ; $672f: $c0

    ldh [rSTAT], a                                ; $6730: $e0 $41
    ld [c], a                                     ; $6732: $e2
    add [hl]                                      ; $6733: $86
    add b                                         ; $6734: $80
    ld [hl], a                                    ; $6735: $77
    ld b, e                                       ; $6736: $43
    ld [$8e85], sp                                ; $6737: $08 $85 $8e
    nop                                           ; $673a: $00
    push de                                       ; $673b: $d5
    dec b                                         ; $673c: $05
    add c                                         ; $673d: $81
    sbc [hl]                                      ; $673e: $9e
    jp nz, Jump_000_09a1                          ; $673f: $c2 $a1 $09

    ld b, b                                       ; $6742: $40
    ld b, b                                       ; $6743: $40
    ld [c], a                                     ; $6744: $e2
    ldh a, [$82]                                  ; $6745: $f0 $82
    inc a                                         ; $6747: $3c
    ret c                                         ; $6748: $d8

    inc d                                         ; $6749: $14
    add l                                         ; $674a: $85
    ld [hl-], a                                   ; $674b: $32
    push af                                       ; $674c: $f5
    or $a1                                        ; $674d: $f6 $a1
    ld b, d                                       ; $674f: $42
    ld c, d                                       ; $6750: $4a
    add b                                         ; $6751: $80
    ret nz                                        ; $6752: $c0

    jp $8670                                      ; $6753: $c3 $70 $86


    ld h, d                                       ; $6756: $62
    add l                                         ; $6757: $85
    pop af                                        ; $6758: $f1
    nop                                           ; $6759: $00
    halt                                          ; $675a: $76
    sub [hl]                                      ; $675b: $96
    ld h, b                                       ; $675c: $60

jr_06d_675d:
    sbc [hl]                                      ; $675d: $9e
    ld b, h                                       ; $675e: $44
    inc a                                         ; $675f: $3c
    jp nz, $e0a0                                  ; $6760: $c2 $a0 $e0

    ld a, a                                       ; $6763: $7f
    pop hl                                        ; $6764: $e1
    add [hl]                                      ; $6765: $86
    ld h, d                                       ; $6766: $62
    ld e, l                                       ; $6767: $5d
    ld d, $00                                     ; $6768: $16 $00
    ld [hl], d                                    ; $676a: $72
    ld bc, $42a1                                  ; $676b: $01 $a1 $42
    dec [hl]                                      ; $676e: $35
    adc $00                                       ; $676f: $ce $00
    ret nz                                        ; $6771: $c0

    ldh [$3f], a                                  ; $6772: $e0 $3f
    ret nz                                        ; $6774: $c0

    add $00                                       ; $6775: $c6 $00
    ld [hl], a                                    ; $6777: $77
    ld b, b                                       ; $6778: $40
    ld e, l                                       ; $6779: $5d
    dec d                                         ; $677a: $15
    nop                                           ; $677b: $00
    ld [hl-], a                                   ; $677c: $32
    ld bc, $80a1                                  ; $677d: $01 $a1 $80
    ldh [$81], a                                  ; $6780: $e0 $81
    call z, $e03f                                 ; $6782: $cc $3f $e0
    ld b, l                                       ; $6785: $45
    ld [bc], a                                    ; $6786: $02
    db $f4                                        ; $6787: $f4
    ld b, c                                       ; $6788: $41
    add l                                         ; $6789: $85
    jr nc, jr_06d_678c                            ; $678a: $30 $00

jr_06d_678c:
    ld a, b                                       ; $678c: $78
    ld bc, $36a0                                  ; $678d: $01 $a0 $36
    ld bc, $86cf                                  ; $6790: $01 $cf $86
    add b                                         ; $6793: $80
    ld a, a                                       ; $6794: $7f
    ld [c], a                                     ; $6795: $e2
    rst $00                                       ; $6796: $c7
    jr nz, jr_06d_675d                            ; $6797: $20 $c4

    ld b, e                                       ; $6799: $43
    nop                                           ; $679a: $00
    rst $38                                       ; $679b: $ff
    add l                                         ; $679c: $85
    dec h                                         ; $679d: $25
    adc c                                         ; $679e: $89
    ld hl, $3631                                  ; $679f: $21 $31 $36
    cp a                                          ; $67a2: $bf
    pop bc                                        ; $67a3: $c1
    add [hl]                                      ; $67a4: $86
    ld bc, $8085                                  ; $67a5: $01 $85 $80
    ret c                                         ; $67a8: $d8

    reti                                          ; $67a9: $d9


    nop                                           ; $67aa: $00
    rst $38                                       ; $67ab: $ff
    or $27                                        ; $67ac: $f6 $27
    ld [hl], e                                    ; $67ae: $73
    sub $d7                                       ; $67af: $d6 $d7
    ccf                                           ; $67b1: $3f
    and c                                         ; $67b2: $a1
    rst $00                                       ; $67b3: $c7
    ld b, d                                       ; $67b4: $42
    dec [hl]                                      ; $67b5: $35
    dec [hl]                                      ; $67b6: $35
    ld b, d                                       ; $67b7: $42
    add $01                                       ; $67b8: $c6 $01
    or e                                          ; $67ba: $b3
    jp c, Jump_000_00db                           ; $67bb: $da $db $00

    rst $38                                       ; $67be: $ff
    ld a, e                                       ; $67bf: $7b
    rlca                                          ; $67c0: $07
    ret c                                         ; $67c1: $d8

    reti                                          ; $67c2: $d9


    add h                                         ; $67c3: $84
    ld b, d                                       ; $67c4: $42
    ld b, h                                       ; $67c5: $44
    ld bc, $bd3c                                  ; $67c6: $01 $3c $bd
    ret nz                                        ; $67c9: $c0

    add $01                                       ; $67ca: $c6 $01
    add l                                         ; $67cc: $85
    inc d                                         ; $67cd: $14
    nop                                           ; $67ce: $00
    ld d, [hl]                                    ; $67cf: $56
    call nz, Call_000_3e20                        ; $67d0: $c4 $20 $3e
    and c                                         ; $67d3: $a1
    ld a, $e2                                     ; $67d4: $3e $e2
    ld h, b                                       ; $67d6: $60
    db $fd                                        ; $67d7: $fd
    add h                                         ; $67d8: $84
    jp Jump_000_0023                              ; $67d9: $c3 $23 $00


    rst $38                                       ; $67dc: $ff
    add l                                         ; $67dd: $85
    inc b                                         ; $67de: $04
    ld [bc], a                                    ; $67df: $02
    ld b, b                                       ; $67e0: $40
    sbc l                                         ; $67e1: $9d
    sbc h                                         ; $67e2: $9c
    cp a                                          ; $67e3: $bf
    ld b, b                                       ; $67e4: $40
    add b                                         ; $67e5: $80
    ld b, l                                       ; $67e6: $45
    ld h, b                                       ; $67e7: $60
    cp $00                                        ; $67e8: $fe $00
    inc bc                                        ; $67ea: $03
    ld b, b                                       ; $67eb: $40
    dec a                                         ; $67ec: $3d
    pop bc                                        ; $67ed: $c1
    nop                                           ; $67ee: $00
    rst $38                                       ; $67ef: $ff
    nop                                           ; $67f0: $00
    ld h, l                                       ; $67f1: $65
    add c                                         ; $67f2: $81
    dec h                                         ; $67f3: $25
    ld b, l                                       ; $67f4: $45
    inc bc                                        ; $67f5: $03
    ld b, c                                       ; $67f6: $41
    ld b, l                                       ; $67f7: $45
    add $40                                       ; $67f8: $c6 $40
    cp l                                          ; $67fa: $bd
    and c                                         ; $67fb: $a1
    dec a                                         ; $67fc: $3d
    jp nz, $ff00                                  ; $67fd: $c2 $00 $ff

    nop                                           ; $6800: $00
    ld h, h                                       ; $6801: $64
    add c                                         ; $6802: $81
    jr nz, jr_06d_6805                            ; $6803: $20 $00

jr_06d_6805:
    jp nz, $fa00                                  ; $6805: $c2 $00 $fa

    ld h, b                                       ; $6808: $60
    adc b                                         ; $6809: $88
    ld b, b                                       ; $680a: $40
    add d                                         ; $680b: $82
    ld h, d                                       ; $680c: $62
    inc b                                         ; $680d: $04
    ld [hl+], a                                   ; $680e: $22
    nop                                           ; $680f: $00
    rst $38                                       ; $6810: $ff
    and e                                         ; $6811: $a3
    db $e3                                        ; $6812: $e3
    sub c                                         ; $6813: $91
    add l                                         ; $6814: $85
    nop                                           ; $6815: $00
    ld a, [hl-]                                   ; $6816: $3a
    add c                                         ; $6817: $81
    add c                                         ; $6818: $81
    ld [c], a                                     ; $6819: $e2
    inc b                                         ; $681a: $04
    ld [hl+], a                                   ; $681b: $22
    nop                                           ; $681c: $00
    rst $38                                       ; $681d: $ff
    or $84                                        ; $681e: $f6 $84
    sub c                                         ; $6820: $91
    add e                                         ; $6821: $83
    adc $61                                       ; $6822: $ce $61
    cp c                                          ; $6824: $b9
    ld h, c                                       ; $6825: $61
    jr nz, @+$80                                  ; $6826: $20 $7e

    pop hl                                        ; $6828: $e1
    ld b, c                                       ; $6829: $41
    db $e4                                        ; $682a: $e4
    nop                                           ; $682b: $00
    rst $38                                       ; $682c: $ff
    ld a, e                                       ; $682d: $7b
    ld l, b                                       ; $682e: $68
    cp [hl]                                       ; $682f: $be
    ld bc, $419e                                  ; $6830: $01 $9e $41
    db $e3                                        ; $6833: $e3
    ld b, b                                       ; $6834: $40
    jp nz, Jump_06d_4200                          ; $6835: $c2 $00 $42

    ld bc, $ff00                                  ; $6838: $01 $00 $ff
    ld a, e                                       ; $683b: $7b
    ld h, l                                       ; $683c: $65
    cp [hl]                                       ; $683d: $be
    dec b                                         ; $683e: $05
    ccf                                           ; $683f: $3f
    db $e4                                        ; $6840: $e4
    rst $38                                       ; $6841: $ff
    and b                                         ; $6842: $a0
    xor e                                         ; $6843: $ab
    ld h, b                                       ; $6844: $60
    nop                                           ; $6845: $00
    rst $38                                       ; $6846: $ff
    or $7b                                        ; $6847: $f6 $7b
    ld b, h                                       ; $6849: $44
    push af                                       ; $684a: $f5
    or $be                                        ; $684b: $f6 $be
    ld [bc], a                                    ; $684d: $02
    sbc [hl]                                      ; $684e: $9e
    ld b, [hl]                                    ; $684f: $46
    cp e                                          ; $6850: $bb
    scf                                           ; $6851: $37
    dec bc                                        ; $6852: $0b
    dec a                                         ; $6853: $3d
    scf                                           ; $6854: $37
    db $fd                                        ; $6855: $fd
    ldh [rLYC], a                                 ; $6856: $e0 $45
    ld a, a                                       ; $6858: $7f
    push bc                                       ; $6859: $c5
    nop                                           ; $685a: $00
    rst $38                                       ; $685b: $ff
    ld a, e                                       ; $685c: $7b
    daa                                           ; $685d: $27
    ld a, [$b741]                                 ; $685e: $fa $41 $b7
    add hl, sp                                    ; $6861: $39
    and h                                         ; $6862: $a4
    ld h, h                                       ; $6863: $64
    rst $38                                       ; $6864: $ff
    ldh [$a5], a                                  ; $6865: $e0 $a5
    add hl, sp                                    ; $6867: $39
    ld a, a                                       ; $6868: $7f
    and e                                         ; $6869: $a3
    push af                                       ; $686a: $f5
    pop af                                        ; $686b: $f1
    or $00                                        ; $686c: $f6 $00
    rst $38                                       ; $686e: $ff
    or $27                                        ; $686f: $f6 $27
    db $fc                                        ; $6871: $fc
    ld bc, $693e                                  ; $6872: $01 $3e $69
    and e                                         ; $6875: $a3
    dec [hl]                                      ; $6876: $35
    rrca                                          ; $6877: $0f
    dec [hl]                                      ; $6878: $35
    and e                                         ; $6879: $a3
    ld l, d                                       ; $687a: $6a
    ld a, $43                                     ; $687b: $3e $43
    jr nz, @+$80                                  ; $687d: $20 $7e

    ld b, c                                       ; $687f: $41
    nop                                           ; $6880: $00
    rst $38                                       ; $6881: $ff
    ld a, e                                       ; $6882: $7b
    rst $00                                       ; $6883: $c7
    ld l, [hl]                                    ; $6884: $6e
    adc $a1                                       ; $6885: $ce $a1

Jump_06d_6887:
    and c                                         ; $6887: $a1
    ld a, $69                                     ; $6888: $3e $69
    ld b, b                                       ; $688a: $40
    ld bc, $3e6a                                  ; $688b: $01 $6a $3e
    ld a, $80                                     ; $688e: $3e $80
    ld a, b                                       ; $6890: $78
    ld l, d                                       ; $6891: $6a
    jr nz, jr_06d_6894                            ; $6892: $20 $00

jr_06d_6894:
    rst $38                                       ; $6894: $ff
    or $2c                                        ; $6895: $f6 $2c
    sbc [hl]                                      ; $6897: $9e
    add hl, sp                                    ; $6898: $39
    ld l, e                                       ; $6899: $6b
    ld [hl], c                                    ; $689a: $71
    rst $38                                       ; $689b: $ff
    ldh [rTAC], a                                 ; $689c: $e0 $07
    ld l, l                                       ; $689e: $6d
    add hl, sp                                    ; $689f: $39
    sbc [hl]                                      ; $68a0: $9e
    ld a, [hl]                                    ; $68a1: $7e
    ld b, h                                       ; $68a2: $44
    nop                                           ; $68a3: $00
    rst $38                                       ; $68a4: $ff
    or $28                                        ; $68a5: $f6 $28
    ld sp, hl                                     ; $68a7: $f9
    ld hl, $c3c0                                  ; $68a8: $21 $c0 $c3
    ld b, e                                       ; $68ab: $43
    sbc h                                         ; $68ac: $9c
    sbc a                                         ; $68ad: $9f
    or b                                          ; $68ae: $b0
    jp nz, $df00                                  ; $68af: $c2 $00 $df

    or $0a                                        ; $68b2: $f6 $0a
    ld sp, hl                                     ; $68b4: $f9
    ld hl, $ff9d                                  ; $68b5: $21 $9d $ff
    ld [c], a                                     ; $68b8: $e2
    nop                                           ; $68b9: $00
    ld b, c                                       ; $68ba: $41
    add e                                         ; $68bb: $83
    nop                                           ; $68bc: $00
    rst $38                                       ; $68bd: $ff
    ld a, e                                       ; $68be: $7b
    adc e                                         ; $68bf: $8b
    ld a, [bc]                                    ; $68c0: $0a
    ld h, h                                       ; $68c1: $64
    ld b, a                                       ; $68c2: $47
    and d                                         ; $68c3: $a2
    ld e, l                                       ; $68c4: $5d
    di                                            ; $68c5: $f3
    nop                                           ; $68c6: $00
    db $fd                                        ; $68c7: $fd
    db $fc                                        ; $68c8: $fc
    add sp, $00                                   ; $68c9: $e8 $00
    nop                                           ; $68cb: $00
    ld d, [hl]                                    ; $68cc: $56
    nop                                           ; $68cd: $00
    nop                                           ; $68ce: $00
    nop                                           ; $68cf: $00
    pop bc                                        ; $68d0: $c1
    nop                                           ; $68d1: $00
    rst $38                                       ; $68d2: $ff
    rst $38                                       ; $68d3: $ff
    rst $38                                       ; $68d4: $ff
    rst $38                                       ; $68d5: $ff
    rst $38                                       ; $68d6: $ff
    rst $38                                       ; $68d7: $ff
    rst $38                                       ; $68d8: $ff
    rst $38                                       ; $68d9: $ff
    rst $38                                       ; $68da: $ff
    rst $38                                       ; $68db: $ff
    nop                                           ; $68dc: $00
    nop                                           ; $68dd: $00
    dec c                                         ; $68de: $0d
    add b                                         ; $68df: $80
    cp $e0                                        ; $68e0: $fe $e0
    nop                                           ; $68e2: $00
    ld b, b                                       ; $68e3: $40
    ret c                                         ; $68e4: $d8

    push hl                                       ; $68e5: $e5
    rst $30                                       ; $68e6: $f7
    and $ff                                       ; $68e7: $e6 $ff
    rst $38                                       ; $68e9: $ff
    rst $38                                       ; $68ea: $ff
    rst $30                                       ; $68eb: $f7
    nop                                           ; $68ec: $00
    nop                                           ; $68ed: $00
    nop                                           ; $68ee: $00
    ld bc, $2700                                  ; $68ef: $01 $00 $27
    add hl, bc                                    ; $68f2: $09
    ld bc, $2001                                  ; $68f3: $01 $01 $20
    ld a, [bc]                                    ; $68f6: $0a
    ld bc, $2602                                  ; $68f7: $01 $02 $26
    ld a, [bc]                                    ; $68fa: $0a
    ld bc, $2703                                  ; $68fb: $01 $03 $27
    ld a, [bc]                                    ; $68fe: $0a
    ld bc, $2104                                  ; $68ff: $01 $04 $21
    dec bc                                        ; $6902: $0b
    ld bc, $2605                                  ; $6903: $01 $05 $26
    dec bc                                        ; $6906: $0b
    ld bc, $2106                                  ; $6907: $01 $06 $21
    inc c                                         ; $690a: $0c
    ld bc, $2207                                  ; $690b: $01 $07 $22
    ld de, $0801                                  ; $690e: $11 $01 $08
    inc h                                         ; $6911: $24
    ld de, $0901                                  ; $6912: $11 $01 $09
    jr z, @+$13                                   ; $6915: $28 $11

    ld bc, $210a                                  ; $6917: $01 $0a $21
    ld [de], a                                    ; $691a: $12
    ld bc, $280b                                  ; $691b: $01 $0b $28
    ld [de], a                                    ; $691e: $12
    ld bc, $210c                                  ; $691f: $01 $0c $21
    inc de                                        ; $6922: $13
    ld bc, $200d                                  ; $6923: $01 $0d $20
    inc d                                         ; $6926: $14
    ld bc, $210e                                  ; $6927: $01 $0e $21
    inc d                                         ; $692a: $14
    ld bc, $200f                                  ; $692b: $01 $0f $20
    dec d                                         ; $692e: $15
    ld bc, $2110                                  ; $692f: $01 $10 $21
    dec d                                         ; $6932: $15
    ld bc, $1f11                                  ; $6933: $01 $11 $1f
    ld d, $01                                     ; $6936: $16 $01
    ld [de], a                                    ; $6938: $12
    jr nz, @+$18                                  ; $6939: $20 $16

    ld bc, $2113                                  ; $693b: $01 $13 $21
    ld d, $01                                     ; $693e: $16 $01
    inc d                                         ; $6940: $14
    ld e, $17                                     ; $6941: $1e $17
    ld bc, $1f15                                  ; $6943: $01 $15 $1f
    rla                                           ; $6946: $17
    ld bc, $2016                                  ; $6947: $01 $16 $20
    rla                                           ; $694a: $17
    ld bc, $2117                                  ; $694b: $01 $17 $21
    rla                                           ; $694e: $17
    ld bc, $1d18                                  ; $694f: $01 $18 $1d
    jr jr_06d_6955                                ; $6952: $18 $01

    add hl, de                                    ; $6954: $19

jr_06d_6955:
    ld e, $18                                     ; $6955: $1e $18
    ld bc, $1f1a                                  ; $6957: $01 $1a $1f
    jr jr_06d_695d                                ; $695a: $18 $01

    dec de                                        ; $695c: $1b

jr_06d_695d:
    jr nz, jr_06d_6977                            ; $695d: $20 $18

    ld bc, $1c1c                                  ; $695f: $01 $1c $1c
    add hl, de                                    ; $6962: $19
    ld bc, $1d1d                                  ; $6963: $01 $1d $1d
    add hl, de                                    ; $6966: $19
    ld bc, $1e1e                                  ; $6967: $01 $1e $1e
    add hl, de                                    ; $696a: $19
    ld bc, $251f                                  ; $696b: $01 $1f $25
    add hl, de                                    ; $696e: $19
    ld bc, $1b20                                  ; $696f: $01 $20 $1b
    ld a, [de]                                    ; $6972: $1a
    ld bc, $2421                                  ; $6973: $01 $21 $24
    dec de                                        ; $6976: $1b

jr_06d_6977:
    ld bc, $2722                                  ; $6977: $01 $22 $27
    dec de                                        ; $697a: $1b
    ld bc, $2123                                  ; $697b: $01 $23 $21
    inc e                                         ; $697e: $1c
    ld bc, $1f24                                  ; $697f: $01 $24 $1f
    dec e                                         ; $6982: $1d
    ld bc, $2625                                  ; $6983: $01 $25 $26
    dec e                                         ; $6986: $1d
    ld bc, $2526                                  ; $6987: $01 $26 $25
    ld e, $01                                     ; $698a: $1e $01
    daa                                           ; $698c: $27
    inc e                                         ; $698d: $1c
    rra                                           ; $698e: $1f
    ld bc, $2428                                  ; $698f: $01 $28 $24
    rra                                           ; $6992: $1f
    ld bc, $2029                                  ; $6993: $01 $29 $20
    jr nz, jr_06d_6999                            ; $6996: $20 $01

    ld a, [hl+]                                   ; $6998: $2a

jr_06d_6999:
    ld hl, $0120                                  ; $6999: $21 $20 $01
    dec hl                                        ; $699c: $2b
    ld [hl+], a                                   ; $699d: $22
    jr nz, jr_06d_69a1                            ; $699e: $20 $01

    inc l                                         ; $69a0: $2c

jr_06d_69a1:
    jr @+$23                                      ; $69a1: $18 $21

    ld bc, $1f2d                                  ; $69a3: $01 $2d $1f
    ld hl, $2e01                                  ; $69a6: $21 $01 $2e
    jr nz, @+$23                                  ; $69a9: $20 $21

    ld bc, $212f                                  ; $69ab: $01 $2f $21
    ld hl, $3001                                  ; $69ae: $21 $01 $30
    rla                                           ; $69b1: $17
    ld [hl+], a                                   ; $69b2: $22
    ld bc, $1831                                  ; $69b3: $01 $31 $18
    ld [hl+], a                                   ; $69b6: $22
    ld bc, $1f32                                  ; $69b7: $01 $32 $1f
    ld [hl+], a                                   ; $69ba: $22
    ld bc, $2033                                  ; $69bb: $01 $33 $20
    ld [hl+], a                                   ; $69be: $22
    ld bc, $1734                                  ; $69bf: $01 $34 $17
    inc hl                                        ; $69c2: $23
    ld bc, $1f35                                  ; $69c3: $01 $35 $1f
    inc hl                                        ; $69c6: $23
    ld bc, $2036                                  ; $69c7: $01 $36 $20
    inc hl                                        ; $69ca: $23
    ld bc, $1e37                                  ; $69cb: $01 $37 $1e
    inc h                                         ; $69ce: $24
    ld bc, $1f38                                  ; $69cf: $01 $38 $1f
    inc h                                         ; $69d2: $24
    ld bc, $1e39                                  ; $69d3: $01 $39 $1e
    dec h                                         ; $69d6: $25
    ld bc, $1f3a                                  ; $69d7: $01 $3a $1f
    dec h                                         ; $69da: $25
    ld bc, $1f3b                                  ; $69db: $01 $3b $1f
    ld h, $01                                     ; $69de: $26 $01
    inc a                                         ; $69e0: $3c
    jr nz, @+$28                                  ; $69e1: $20 $26

    ld bc, $1f3d                                  ; $69e3: $01 $3d $1f
    daa                                           ; $69e6: $27
    ld bc, $203e                                  ; $69e7: $01 $3e $20
    daa                                           ; $69ea: $27
    ld bc, $1a3f                                  ; $69eb: $01 $3f $1a
    jr z, jr_06d_69f1                             ; $69ee: $28 $01

    ld b, b                                       ; $69f0: $40

jr_06d_69f1:
    jr nz, @+$2a                                  ; $69f1: $20 $28

    ld bc, $2041                                  ; $69f3: $01 $41 $20
    add hl, hl                                    ; $69f6: $29
    ld bc, $1a42                                  ; $69f7: $01 $42 $1a
    ld a, [hl+]                                   ; $69fa: $2a
    ld bc, $2143                                  ; $69fb: $01 $43 $21
    ld a, [hl+]                                   ; $69fe: $2a
    ld bc, $2144                                  ; $69ff: $01 $44 $21
    dec hl                                        ; $6a02: $2b
    ld bc, $1845                                  ; $6a03: $01 $45 $18
    inc l                                         ; $6a06: $2c
    ld bc, $1846                                  ; $6a07: $01 $46 $18
    dec l                                         ; $6a0a: $2d
    ld bc, $1947                                  ; $6a0b: $01 $47 $19
    dec l                                         ; $6a0e: $2d
    ld bc, $1948                                  ; $6a0f: $01 $48 $19
    ld l, $01                                     ; $6a12: $2e $01
    ld c, c                                       ; $6a14: $49
    ld a, [de]                                    ; $6a15: $1a
    ld l, $01                                     ; $6a16: $2e $01
    ld c, d                                       ; $6a18: $4a
    ld [hl+], a                                   ; $6a19: $22
    ld l, $01                                     ; $6a1a: $2e $01
    ld c, e                                       ; $6a1c: $4b
    ld [hl+], a                                   ; $6a1d: $22
    cpl                                           ; $6a1e: $2f
    ld bc, $234c                                  ; $6a1f: $01 $4c $23
    cpl                                           ; $6a22: $2f
    ld bc, $224d                                  ; $6a23: $01 $4d $22
    jr nc, jr_06d_6a29                            ; $6a26: $30 $01

    ld c, [hl]                                    ; $6a28: $4e

jr_06d_6a29:
    inc hl                                        ; $6a29: $23
    jr nc, jr_06d_6a2d                            ; $6a2a: $30 $01

    ld c, a                                       ; $6a2c: $4f

jr_06d_6a2d:
    inc hl                                        ; $6a2d: $23
    ld sp, $5001                                  ; $6a2e: $31 $01 $50
    dec e                                         ; $6a31: $1d
    ld [hl-], a                                   ; $6a32: $32
    ld bc, $2251                                  ; $6a33: $01 $51 $22
    inc sp                                        ; $6a36: $33
    ld bc, $1e52                                  ; $6a37: $01 $52 $1e
    inc [hl]                                      ; $6a3a: $34
    ld bc, $2353                                  ; $6a3b: $01 $53 $23
    ld [hl], $01                                  ; $6a3e: $36 $01
    ld d, h                                       ; $6a40: $54
    dec e                                         ; $6a41: $1d
    scf                                           ; $6a42: $37
    rst $38                                       ; $6a43: $ff
    rst $38                                       ; $6a44: $ff
    rst $38                                       ; $6a45: $ff
    ld c, [hl]                                    ; $6a46: $4e
    ld l, d                                       ; $6a47: $6a
    sbc b                                         ; $6a48: $98
    ld l, [hl]                                    ; $6a49: $6e
    reti                                          ; $6a4a: $d9


    ld [hl], e                                    ; $6a4b: $73
    ld hl, sp+$73                                 ; $6a4c: $f8 $73
    dec e                                         ; $6a4e: $1d
    ld c, $ff                                     ; $6a4f: $0e $ff
    ld [c], a                                     ; $6a51: $e2
    dec c                                         ; $6a52: $0d
    dec c                                         ; $6a53: $0d
    dec c                                         ; $6a54: $0d
    rst $30                                       ; $6a55: $f7
    db $e3                                        ; $6a56: $e3
    or $ff                                        ; $6a57: $f6 $ff
    db $ec                                        ; $6a59: $ec
    xor $01                                       ; $6a5a: $ee $01
    ld c, $d9                                     ; $6a5c: $0e $d9
    pop hl                                        ; $6a5e: $e1
    push de                                       ; $6a5f: $d5
    db $e3                                        ; $6a60: $e3
    or $ff                                        ; $6a61: $f6 $ff
    db $ec                                        ; $6a63: $ec
    rst $28                                       ; $6a64: $ef
    sbc c                                         ; $6a65: $99
    rst $38                                       ; $6a66: $ff
    or $fc                                        ; $6a67: $f6 $fc
    sbc c                                         ; $6a69: $99
    rst $38                                       ; $6a6a: $ff
    nop                                           ; $6a6b: $00
    or $fd                                        ; $6a6c: $f6 $fd
    sbc c                                         ; $6a6e: $99
    rst $20                                       ; $6a6f: $e7
    sub c                                         ; $6a70: $91
    ldh [$ad], a                                  ; $6a71: $e0 $ad
    and $85                                       ; $6a73: $e6 $85
    rst $38                                       ; $6a75: $ff
    nop                                           ; $6a76: $00
    pop af                                        ; $6a77: $f1
    ld l, l                                       ; $6a78: $6d
    db $e3                                        ; $6a79: $e3
    push bc                                       ; $6a7a: $c5
    ld [c], a                                     ; $6a7b: $e2
    nop                                           ; $6a7c: $00
    add l                                         ; $6a7d: $85
    rst $38                                       ; $6a7e: $ff
    nop                                           ; $6a7f: $00
    jp hl                                         ; $6a80: $e9


    add l                                         ; $6a81: $85
    push hl                                       ; $6a82: $e5
    ret nz                                        ; $6a83: $c0

    rst $20                                       ; $6a84: $e7
    add l                                         ; $6a85: $85
    rst $38                                       ; $6a86: $ff
    nop                                           ; $6a87: $00
    jp hl                                         ; $6a88: $e9


    add h                                         ; $6a89: $84
    ld [c], a                                     ; $6a8a: $e2
    ld a, $e4                                     ; $6a8b: $3e $e4
    jr nc, jr_06d_6ac1                            ; $6a8d: $30 $32

    push hl                                       ; $6a8f: $e5
    ld a, e                                       ; $6a90: $7b
    rst $38                                       ; $6a91: $ff
    sbc c                                         ; $6a92: $99
    rst $20                                       ; $6a93: $e7
    ld b, h                                       ; $6a94: $44
    db $e3                                        ; $6a95: $e3
    dec l                                         ; $6a96: $2d
    dec l                                         ; $6a97: $2d
    pop bc                                        ; $6a98: $c1
    and $85                                       ; $6a99: $e6 $85
    rst $38                                       ; $6a9b: $ff
    inc e                                         ; $6a9c: $1c
    nop                                           ; $6a9d: $00
    ret                                           ; $6a9e: $c9


    add hl, bc                                    ; $6a9f: $09
    db $e4                                        ; $6aa0: $e4
    ld c, l                                       ; $6aa1: $4d
    ld c, l                                       ; $6aa2: $4d
    ld c, l                                       ; $6aa3: $4d
    cp [hl]                                       ; $6aa4: $be
    pop hl                                        ; $6aa5: $e1
    adc e                                         ; $6aa6: $8b
    and $7b                                       ; $6aa7: $e6 $7b
    rst $38                                       ; $6aa9: $ff
    inc l                                         ; $6aaa: $2c
    ld d, b                                       ; $6aab: $50
    push hl                                       ; $6aac: $e5
    add l                                         ; $6aad: $85
    pop bc                                        ; $6aae: $c1
    ld l, l                                       ; $6aaf: $6d
    ld c, e                                       ; $6ab0: $4b
    rst $38                                       ; $6ab1: $ff
    ldh [rKEY1], a                                ; $6ab2: $e0 $4d
    ld a, h                                       ; $6ab4: $7c
    ldh [$88], a                                  ; $6ab5: $e0 $88
    pop hl                                        ; $6ab7: $e1
    jp hl                                         ; $6ab8: $e9


    dec l                                         ; $6ab9: $2d
    add l                                         ; $6aba: $85
    rst $38                                       ; $6abb: $ff
    rst $00                                       ; $6abc: $c7
    and $4d                                       ; $6abd: $e6 $4d
    sub $e2                                       ; $6abf: $d6 $e2

jr_06d_6ac1:
    ld l, l                                       ; $6ac1: $6d
    ld c, e                                       ; $6ac2: $4b
    dec hl                                        ; $6ac3: $2b
    rrca                                          ; $6ac4: $0f
    dec bc                                        ; $6ac5: $0b
    dec hl                                        ; $6ac6: $2b
    dec bc                                        ; $6ac7: $0b
    ld c, e                                       ; $6ac8: $4b
    ld a, l                                       ; $6ac9: $7d
    ld [c], a                                     ; $6aca: $e2
    ret nz                                        ; $6acb: $c0

    ldh [$b9], a                                  ; $6acc: $e0 $b9
    ld [c], a                                     ; $6ace: $e2
    ld a, e                                       ; $6acf: $7b
    rst $38                                       ; $6ad0: $ff
    ld a, h                                       ; $6ad1: $7c
    ld c, h                                       ; $6ad2: $4c
    add $c1                                       ; $6ad3: $c6 $c1
    ldh [$0a], a                                  ; $6ad5: $e0 $0a
    ld l, d                                       ; $6ad7: $6a
    ld a, [bc]                                    ; $6ad8: $0a
    ld l, d                                       ; $6ad9: $6a
    dec bc                                        ; $6ada: $0b
    ld a, l                                       ; $6adb: $7d
    pop hl                                        ; $6adc: $e1
    ld hl, sp-$02                                 ; $6add: $f8 $fe
    jp $ff00                                      ; $6adf: $c3 $00 $ff


    jp Jump_06d_4bc9                              ; $6ae2: $c3 $c9 $4b


    ld c, e                                       ; $6ae5: $4b
    ld l, e                                       ; $6ae6: $6b
    ld a, [bc]                                    ; $6ae7: $0a
    ld a, [bc]                                    ; $6ae8: $0a
    ccf                                           ; $6ae9: $3f
    ld a, [hl+]                                   ; $6aea: $2a
    ld a, [bc]                                    ; $6aeb: $0a
    ld l, e                                       ; $6aec: $6b
    ld a, [hl+]                                   ; $6aed: $2a
    ld c, e                                       ; $6aee: $4b
    ld c, e                                       ; $6aef: $4b
    db $fc                                        ; $6af0: $fc
    add $00                                       ; $6af1: $c6 $00
    rst $38                                       ; $6af3: $ff
    ld hl, sp+$4f                                 ; $6af4: $f8 $4f
    call nz, $e017                                ; $6af6: $c4 $17 $e0
    add c                                         ; $6af9: $81
    pop hl                                        ; $6afa: $e1
    dec bc                                        ; $6afb: $0b
    dec hl                                        ; $6afc: $2b
    dec hl                                        ; $6afd: $2b
    dec bc                                        ; $6afe: $0b
    ld a, [bc]                                    ; $6aff: $0a
    cpl                                           ; $6b00: $2f
    ld c, d                                       ; $6b01: $4a
    ld c, e                                       ; $6b02: $4b
    dec l                                         ; $6b03: $2d
    ld l, l                                       ; $6b04: $6d

jr_06d_6b05:
    ld h, $a2                                     ; $6b05: $26 $a2
    dec l                                         ; $6b07: $2d
    ld [hl], c                                    ; $6b08: $71
    pop bc                                        ; $6b09: $c1
    nop                                           ; $6b0a: $00
    rst $38                                       ; $6b0b: $ff
    sbc $c0                                       ; $6b0c: $de $c0
    push hl                                       ; $6b0e: $e5
    ld l, e                                       ; $6b0f: $6b
    ld a, [bc]                                    ; $6b10: $0a
    ld a, [hl+]                                   ; $6b11: $2a
    dec bc                                        ; $6b12: $0b
    rst $38                                       ; $6b13: $ff
    ldh [rWY], a                                  ; $6b14: $e0 $4a
    ld a, [bc]                                    ; $6b16: $0a
    ldh [$3f], a                                  ; $6b17: $e0 $3f
    pop hl                                        ; $6b19: $e1
    ld [hl], $a3                                  ; $6b1a: $36 $a3
    or l                                          ; $6b1c: $b5
    jp $fe00                                      ; $6b1d: $c3 $00 $fe


    sub a                                         ; $6b20: $97
    ret nz                                        ; $6b21: $c0

    ld c, l                                       ; $6b22: $4d
    dec c                                         ; $6b23: $0d
    ld c, e                                       ; $6b24: $4b
    rst $38                                       ; $6b25: $ff
    ld a, [bc]                                    ; $6b26: $0a
    ld c, d                                       ; $6b27: $4a
    dec bc                                        ; $6b28: $0b
    dec bc                                        ; $6b29: $0b
    ld c, e                                       ; $6b2a: $4b
    ld l, e                                       ; $6b2b: $6b
    dec bc                                        ; $6b2c: $0b
    dec hl                                        ; $6b2d: $2b
    ldh a, [$7b]                                  ; $6b2e: $f0 $7b
    pop bc                                        ; $6b30: $c1
    cp e                                          ; $6b31: $bb
    call nz, $bff6                                ; $6b32: $c4 $f6 $bf
    pop bc                                        ; $6b35: $c1
    ret z                                         ; $6b36: $c8

    ld a, [hl+]                                   ; $6b37: $2a
    ld a, [hl+]                                   ; $6b38: $2a
    ld c, e                                       ; $6b39: $4b
    ld l, e                                       ; $6b3a: $6b
    rlca                                          ; $6b3b: $07
    ld c, e                                       ; $6b3c: $4b
    ld c, e                                       ; $6b3d: $4b
    dec bc                                        ; $6b3e: $0b
    ld a, h                                       ; $6b3f: $7c
    pop bc                                        ; $6b40: $c1
    jr c, jr_06d_6b05                             ; $6b41: $38 $c2

    dec a                                         ; $6b43: $3d
    ld [c], a                                     ; $6b44: $e2
    nop                                           ; $6b45: $00
    rst $38                                       ; $6b46: $ff
    pop bc                                        ; $6b47: $c1
    add $08                                       ; $6b48: $c6 $08
    add c                                         ; $6b4a: $81

Jump_06d_6b4b:
    ret nz                                        ; $6b4b: $c0

    db $10                                        ; $6b4c: $10
    ret nz                                        ; $6b4d: $c0

    ld a, a                                       ; $6b4e: $7f
    ldh [$0b], a                                  ; $6b4f: $e0 $0b
    or h                                          ; $6b51: $b4
    ret nz                                        ; $6b52: $c0

    ld a, d                                       ; $6b53: $7a
    jp nz, $a635                                  ; $6b54: $c2 $35 $a6

    ld h, e                                       ; $6b57: $63
    and h                                         ; $6b58: $a4
    inc c                                         ; $6b59: $0c
    db $ec                                        ; $6b5a: $ec
    or c                                          ; $6b5b: $b1
    ld c, $a4                                     ; $6b5c: $0e $a4
    ld c, l                                       ; $6b5e: $4d
    dec l                                         ; $6b5f: $2d
    nop                                           ; $6b60: $00
    pop hl                                        ; $6b61: $e1
    ret nc                                        ; $6b62: $d0

    and b                                         ; $6b63: $a0
    add b                                         ; $6b64: $80
    pop hl                                        ; $6b65: $e1
    or d                                          ; $6b66: $b2
    pop bc                                        ; $6b67: $c1
    call nz, $c639                                ; $6b68: $c4 $39 $c6
    nop                                           ; $6b6b: $00
    push hl                                       ; $6b6c: $e5

Jump_06d_6b6d:
jr_06d_6b6d:
    ld c, l                                       ; $6b6d: $4d
    jp c, Jump_000_00a2                           ; $6b6e: $da $a2 $00

    or [hl]                                       ; $6b71: $b6
    cp a                                          ; $6b72: $bf
    ldh [rWX], a                                  ; $6b73: $e0 $4b
    ld c, e                                       ; $6b75: $4b
    jr nc, jr_06d_6bb3                            ; $6b76: $30 $3b

    pop bc                                        ; $6b78: $c1
    db $fd                                        ; $6b79: $fd
    pop bc                                        ; $6b7a: $c1
    cp c                                          ; $6b7b: $b9
    ldh [$74], a                                  ; $6b7c: $e0 $74
    and b                                         ; $6b7e: $a0
    dec l                                         ; $6b7f: $2d
    ld l, l                                       ; $6b80: $6d
    inc l                                         ; $6b81: $2c
    add e                                         ; $6b82: $83
    or e                                          ; $6b83: $b3
    and c                                         ; $6b84: $a1
    add b                                         ; $6b85: $80
    ld [hl], h                                    ; $6b86: $74
    pop bc                                        ; $6b87: $c1
    sbc c                                         ; $6b88: $99
    add e                                         ; $6b89: $83
    ld h, a                                       ; $6b8a: $67
    and b                                         ; $6b8b: $a0
    reti                                          ; $6b8c: $d9


    add d                                         ; $6b8d: $82
    nop                                           ; $6b8e: $00
    ld l, h                                       ; $6b8f: $6c
    cp [hl]                                       ; $6b90: $be
    ret nz                                        ; $6b91: $c0

    pop bc                                        ; $6b92: $c1
    ld h, d                                       ; $6b93: $62
    dec l                                         ; $6b94: $2d
    add hl, bc                                    ; $6b95: $09
    dec bc                                        ; $6b96: $0b
    db $fd                                        ; $6b97: $fd
    ret nz                                        ; $6b98: $c0

    ei                                            ; $6b99: $fb
    jp Jump_000_3c4d                              ; $6b9a: $c3 $4d $3c


    and b                                         ; $6b9d: $a0
    ld h, l                                       ; $6b9e: $65
    and c                                         ; $6b9f: $a1
    ld [hl], e                                    ; $6ba0: $73
    and c                                         ; $6ba1: $a1
    ld e, l                                       ; $6ba2: $5d
    add h                                         ; $6ba3: $84
    ld h, b                                       ; $6ba4: $60
    jp $f1e1                                      ; $6ba5: $c3 $e1 $f1


    db $e3                                        ; $6ba8: $e3
    nop                                           ; $6ba9: $00
    ld l, d                                       ; $6baa: $6a
    pop hl                                        ; $6bab: $e1
    ld [c], a                                     ; $6bac: $e2
    scf                                           ; $6bad: $37
    push hl                                       ; $6bae: $e5
    ld l, e                                       ; $6baf: $6b
    ld l, e                                       ; $6bb0: $6b
    add hl, sp                                    ; $6bb1: $39
    pop bc                                        ; $6bb2: $c1

jr_06d_6bb3:
    nop                                           ; $6bb3: $00
    ld a, a                                       ; $6bb4: $7f
    ld [c], a                                     ; $6bb5: $e2
    ld a, e                                       ; $6bb6: $7b
    push bc                                       ; $6bb7: $c5
    ret nz                                        ; $6bb8: $c0

    db $e3                                        ; $6bb9: $e3
    ld e, a                                       ; $6bba: $5f
    add c                                         ; $6bbb: $81
    or c                                          ; $6bbc: $b1
    and $cd                                       ; $6bbd: $e6 $cd
    db $e3                                        ; $6bbf: $e3
    inc a                                         ; $6bc0: $3c
    ld l, c                                       ; $6bc1: $69
    inc e                                         ; $6bc2: $1c
    db $e4                                        ; $6bc3: $e4
    nop                                           ; $6bc4: $00
    cp a                                          ; $6bc5: $bf
    ldh [$c0], a                                  ; $6bc6: $e0 $c0
    ld [c], a                                     ; $6bc8: $e2
    ld l, [hl]                                    ; $6bc9: $6e
    and b                                         ; $6bca: $a0
    cp b                                          ; $6bcb: $b8
    and l                                         ; $6bcc: $a5
    ret z                                         ; $6bcd: $c8

    ld [c], a                                     ; $6bce: $e2
    or d                                          ; $6bcf: $b2
    and d                                         ; $6bd0: $a2
    cp e                                          ; $6bd1: $bb
    jp $e271                                      ; $6bd2: $c3 $71 $e2


    add sp, $00                                   ; $6bd5: $e8 $00
    ld l, e                                       ; $6bd7: $6b
    and e                                         ; $6bd8: $a3
    jp nz, Jump_06d_6442                          ; $6bd9: $c2 $42 $64

    dec hl                                        ; $6bdc: $2b
    ld a, $e1                                     ; $6bdd: $3e $e1
    dec hl                                        ; $6bdf: $2b
    dec hl                                        ; $6be0: $2b
    dec c                                         ; $6be1: $0d
    and b                                         ; $6be2: $a0
    cp b                                          ; $6be3: $b8
    and l                                         ; $6be4: $a5
    add l                                         ; $6be5: $85
    jp nz, Jump_06d_60e5                          ; $6be6: $c2 $e5 $60

    ld [hl+], a                                   ; $6be9: $22
    add b                                         ; $6bea: $80
    jr nz, jr_06d_6b6d                            ; $6beb: $20 $80

    ld l, l                                       ; $6bed: $6d
    ld h, e                                       ; $6bee: $63
    and b                                         ; $6bef: $a0
    ld l, l                                       ; $6bf0: $6d
    add c                                         ; $6bf1: $81
    ld l, l                                       ; $6bf2: $6d
    xor $c2                                       ; $6bf3: $ee $c2
    ld l, a                                       ; $6bf5: $6f
    jp nz, $8299                                  ; $6bf6: $c2 $99 $82

    db $f4                                        ; $6bf9: $f4
    db $e3                                        ; $6bfa: $e3
    ld [bc], a                                    ; $6bfb: $02
    ld h, h                                       ; $6bfc: $64
    ccf                                           ; $6bfd: $3f
    ldh [$0a], a                                  ; $6bfe: $e0 $0a
    db $f4                                        ; $6c00: $f4
    cp a                                          ; $6c01: $bf
    push hl                                       ; $6c02: $e5
    xor a                                         ; $6c03: $af
    ld h, d                                       ; $6c04: $62
    ld l, l                                       ; $6c05: $6d
    xor l                                         ; $6c06: $ad
    add c                                         ; $6c07: $81
    ld c, l                                       ; $6c08: $4d
    ld l, l                                       ; $6c09: $6d
    ld c, h                                       ; $6c0a: $4c
    inc c                                         ; $6c0b: $0c
    nop                                           ; $6c0c: $00
    rst $38                                       ; $6c0d: $ff
    pop hl                                        ; $6c0e: $e1
    add $e4                                       ; $6c0f: $c6 $e4
    ret nz                                        ; $6c11: $c0

    db $e4                                        ; $6c12: $e4
    ld e, $8a                                     ; $6c13: $1e $8a
    cp $c6                                        ; $6c15: $fe $c6
    rst $30                                       ; $6c17: $f7
    ld h, b                                       ; $6c18: $60
    cp b                                          ; $6c19: $b8
    and b                                         ; $6c1a: $a0
    xor l                                         ; $6c1b: $ad
    add b                                         ; $6c1c: $80
    ld [de], a                                    ; $6c1d: $12
    ld a, [c]                                     ; $6c1e: $f2
    ld h, b                                       ; $6c1f: $60
    dec l                                         ; $6c20: $2d
    add sp, $62                                   ; $6c21: $e8 $62
    jp nz, Jump_000_2ce1                          ; $6c23: $c2 $e1 $2c

    db $db                                        ; $6c26: $db
    ld h, d                                       ; $6c27: $62
    rst $38                                       ; $6c28: $ff
    db $e3                                        ; $6c29: $e3
    add b                                         ; $6c2a: $80
    and $70                                       ; $6c2b: $e6 $70
    ld e, $a8                                     ; $6c2d: $1e $a8
    ld b, e                                       ; $6c2f: $43
    ld h, d                                       ; $6c30: $62
    dec bc                                        ; $6c31: $0b
    and c                                         ; $6c32: $a1
    inc a                                         ; $6c33: $3c
    ret nz                                        ; $6c34: $c0

    ld c, e                                       ; $6c35: $4b
    ld c, e                                       ; $6c36: $4b
    ld a, [bc]                                    ; $6c37: $0a
    ld a, [hl-]                                   ; $6c38: $3a
    ret nz                                        ; $6c39: $c0

    ld [bc], a                                    ; $6c3a: $02
    or c                                          ; $6c3b: $b1
    ld h, c                                       ; $6c3c: $61
    ld c, l                                       ; $6c3d: $4d
    xor c                                         ; $6c3e: $a9
    ld h, b                                       ; $6c3f: $60
    add [hl]                                      ; $6c40: $86
    pop hl                                        ; $6c41: $e1
    jp nz, $c4e0                                  ; $6c42: $c2 $e0 $c4

jr_06d_6c45:
    ld [c], a                                     ; $6c45: $e2
    pop bc                                        ; $6c46: $c1
    call nz, $e640                                ; $6c47: $c4 $40 $e6
    inc c                                         ; $6c4a: $0c
    sbc c                                         ; $6c4b: $99
    ld l, e                                       ; $6c4c: $6b
    ld d, a                                       ; $6c4d: $57
    jp nz, Jump_06d_6b4b                          ; $6c4e: $c2 $4b $6b

    cp b                                          ; $6c51: $b8
    and c                                         ; $6c52: $a1
    ei                                            ; $6c53: $fb
    ldh [rPCM34], a                               ; $6c54: $e0 $77
    and d                                         ; $6c56: $a2
    pop bc                                        ; $6c57: $c1
    ldh [$03], a                                  ; $6c58: $e0 $03
    inc l                                         ; $6c5a: $2c
    ld c, e                                       ; $6c5b: $4b
    ld h, c                                       ; $6c5c: $61
    ld h, c                                       ; $6c5d: $61
    ld a, [hl-]                                   ; $6c5e: $3a
    push bc                                       ; $6c5f: $c5
    ld [hl-], a                                   ; $6c60: $32
    push bc                                       ; $6c61: $c5
    ld e, $94                                     ; $6c62: $1e $94
    ld [hl], h                                    ; $6c64: $74
    and c                                         ; $6c65: $a1
    ld [hl], c                                    ; $6c66: $71
    add c                                         ; $6c67: $81
    inc b                                         ; $6c68: $04
    ret nz                                        ; $6c69: $c0

    pop hl                                        ; $6c6a: $e1
    cp a                                          ; $6c6b: $bf
    db $e3                                        ; $6c6c: $e3
    inc c                                         ; $6c6d: $0c
    db $ed                                        ; $6c6e: $ed
    ld h, b                                       ; $6c6f: $60
    add c                                         ; $6c70: $81
    and d                                         ; $6c71: $a2
    or $a4                                        ; $6c72: $f6 $a4
    ld c, c                                       ; $6c74: $49
    add sp, $1e                                   ; $6c75: $e8 $1e
    ld l, [hl]                                    ; $6c77: $6e
    ld b, b                                       ; $6c78: $40
    db $f4                                        ; $6c79: $f4
    ld h, e                                       ; $6c7a: $63
    ld a, h                                       ; $6c7b: $7c
    db $e3                                        ; $6c7c: $e3
    add sp, $63                                   ; $6c7d: $e8 $63
    ret nz                                        ; $6c7f: $c0

    db $e3                                        ; $6c80: $e3
    ld [hl], c                                    ; $6c81: $71
    sub l                                         ; $6c82: $95
    ld e, $90                                     ; $6c83: $1e $90
    dec l                                         ; $6c85: $2d
    ret nz                                        ; $6c86: $c0

    ldh [rNR24], a                                ; $6c87: $e0 $19

jr_06d_6c89:
    dec hl                                        ; $6c89: $2b
    pop bc                                        ; $6c8a: $c1
    push hl                                       ; $6c8b: $e5
    db $ed                                        ; $6c8c: $ed
    add c                                         ; $6c8d: $81
    inc c                                         ; $6c8e: $0c
    ld l, h                                       ; $6c8f: $6c
    ret nz                                        ; $6c90: $c0

    db $e4                                        ; $6c91: $e4
    ld c, a                                       ; $6c92: $4f
    add $00                                       ; $6c93: $c6 $00
    inc sp                                        ; $6c95: $33
    jr nz, jr_06d_6c45                            ; $6c96: $20 $ad

    dec b                                         ; $6c98: $05
    dec sp                                        ; $6c99: $3b
    ld b, b                                       ; $6c9a: $40
    ei                                            ; $6c9b: $fb
    add e                                         ; $6c9c: $83
    ld [hl], a                                    ; $6c9d: $77
    and d                                         ; $6c9e: $a2
    ld l, h                                       ; $6c9f: $6c
    ld h, b                                       ; $6ca0: $60
    inc c                                         ; $6ca1: $0c
    dec l                                         ; $6ca2: $2d
    ld h, d                                       ; $6ca3: $62
    ldh [rNR42], a                                ; $6ca4: $e0 $21
    ret nz                                        ; $6ca6: $c0

    nop                                           ; $6ca7: $00
    inc a                                         ; $6ca8: $3c
    add sp, -$3c                                  ; $6ca9: $e8 $c4
    ld a, [$fa20]                                 ; $6cab: $fa $20 $fa
    add d                                         ; $6cae: $82
    or e                                          ; $6caf: $b3
    ld b, b                                       ; $6cb0: $40
    ldh a, [$61]                                  ; $6cb1: $f0 $61
    dec hl                                        ; $6cb3: $2b
    inc c                                         ; $6cb4: $0c
    jr nz, @-$08                                  ; $6cb5: $20 $f6

    and e                                         ; $6cb7: $a3
    db $ec                                        ; $6cb8: $ec
    ld d, b                                       ; $6cb9: $50
    ld e, $4d                                     ; $6cba: $1e $4d
    ld a, [hl]                                    ; $6cbc: $7e
    inc b                                         ; $6cbd: $04
    cp a                                          ; $6cbe: $bf
    db $e4                                        ; $6cbf: $e4
    ld l, e                                       ; $6cc0: $6b
    xor a                                         ; $6cc1: $af
    ld h, c                                       ; $6cc2: $61
    inc l                                         ; $6cc3: $2c
    ld b, b                                       ; $6cc4: $40
    nop                                           ; $6cc5: $00
    cp a                                          ; $6cc6: $bf
    ret nz                                        ; $6cc7: $c0

    or $a1                                        ; $6cc8: $f6 $a1
    ld a, [bc]                                    ; $6cca: $0a
    and a                                         ; $6ccb: $a7
    nop                                           ; $6ccc: $00
    ld hl, sp+$7e                                 ; $6ccd: $f8 $7e
    inc bc                                        ; $6ccf: $03
    ld sp, $7d82                                  ; $6cd0: $31 $82 $7d
    pop bc                                        ; $6cd3: $c1
    ld l, c                                       ; $6cd4: $69
    ld b, b                                       ; $6cd5: $40
    rlca                                          ; $6cd6: $07
    dec bc                                        ; $6cd7: $0b
    ld c, h                                       ; $6cd8: $4c
    inc l                                         ; $6cd9: $2c
    xor b                                         ; $6cda: $a8
    ld b, b                                       ; $6cdb: $40
    and a                                         ; $6cdc: $a7
    jr nz, jr_06d_6c89                            ; $6cdd: $20 $aa

    inc hl                                        ; $6cdf: $23
    nop                                           ; $6ce0: $00
    db $fc                                        ; $6ce1: $fc
    ld a, [hl-]                                   ; $6ce2: $3a
    add e                                         ; $6ce3: $83
    inc a                                         ; $6ce4: $3c
    ld sp, $f183                                  ; $6ce5: $31 $83 $f1
    ld bc, $0b4b                                  ; $6ce8: $01 $4b $0b
    ld l, e                                       ; $6ceb: $6b
    inc c                                         ; $6cec: $0c
    and a                                         ; $6ced: $a7
    ld [hl+], a                                   ; $6cee: $22
    db $e4                                        ; $6cef: $e4
    nop                                           ; $6cf0: $00
    ld b, b                                       ; $6cf1: $40
    sub a                                         ; $6cf2: $97
    ld hl, $2c67                                  ; $6cf3: $21 $67 $2c
    nop                                           ; $6cf6: $00
    xor $2f                                       ; $6cf7: $ee $2f
    jr z, @-$47                                   ; $6cf9: $28 $b7

    pop bc                                        ; $6cfb: $c1
    rst $20                                       ; $6cfc: $e7
    ld hl, $3b0c                                  ; $6cfd: $21 $0c $3b
    pop hl                                        ; $6d00: $e1
    add c                                         ; $6d01: $81
    dec bc                                        ; $6d02: $0b
    and $03                                       ; $6d03: $e6 $03
    sbc h                                         ; $6d05: $9c
    ld bc, $f800                                  ; $6d06: $01 $00 $f8
    jr z, @+$2a                                   ; $6d09: $28 $28

    ld b, c                                       ; $6d0b: $41
    ld b, c                                       ; $6d0c: $41
    xor d                                         ; $6d0d: $aa
    jr nz, jr_06d_6d1d                            ; $6d0e: $20 $0d

    rla                                           ; $6d10: $17
    ld l, e                                       ; $6d11: $6b
    ld c, h                                       ; $6d12: $4c
    inc l                                         ; $6d13: $2c
    xor e                                         ; $6d14: $ab
    ld b, b                                       ; $6d15: $40
    ld l, e                                       ; $6d16: $6b
    ret nz                                        ; $6d17: $c0

    push hl                                       ; $6d18: $e5
    nop                                           ; $6d19: $00
    rst $18                                       ; $6d1a: $df
    ld l, $43                                     ; $6d1b: $2e $43

jr_06d_6d1d:
    nop                                           ; $6d1d: $00
    db $fc                                        ; $6d1e: $fc
    ld [bc], a                                    ; $6d1f: $02
    ld a, [hl+]                                   ; $6d20: $2a
    ld h, c                                       ; $6d21: $61
    ld b, c                                       ; $6d22: $41
    pop hl                                        ; $6d23: $e1
    ld l, d                                       ; $6d24: $6a
    ld b, b                                       ; $6d25: $40
    ld [$ec25], a                                 ; $6d26: $ea $25 $ec
    ld l, $99                                     ; $6d29: $2e $99
    dec d                                         ; $6d2b: $15
    ld b, e                                       ; $6d2c: $43
    ld h, d                                       ; $6d2d: $62
    nop                                           ; $6d2e: $00
    xor b                                         ; $6d2f: $a8
    ld b, c                                       ; $6d30: $41
    ld b, c                                       ; $6d31: $41
    ldh [$2a], a                                  ; $6d32: $e0 $2a
    ld b, d                                       ; $6d34: $42
    inc a                                         ; $6d35: $3c
    call nz, $66d6                                ; $6d36: $c4 $d6 $66
    ld e, $3c                                     ; $6d39: $1e $3c
    cp [hl]                                       ; $6d3b: $be
    inc hl                                        ; $6d3c: $23
    ld bc, $20e2                                  ; $6d3d: $01 $e2 $20
    ld a, [hl-]                                   ; $6d40: $3a
    jp nz, $02a6                                  ; $6d41: $c2 $a6 $02

    ld [bc], a                                    ; $6d44: $02
    ld h, l                                       ; $6d45: $65
    nop                                           ; $6d46: $00
    cp $c0                                        ; $6d47: $fe $c0
    jp hl                                         ; $6d49: $e9


    ld l, e                                       ; $6d4a: $6b
    ld l, b                                       ; $6d4b: $68
    ld b, d                                       ; $6d4c: $42
    db $e4                                        ; $6d4d: $e4
    nop                                           ; $6d4e: $00
    nop                                           ; $6d4f: $00
    xor $40                                       ; $6d50: $ee $40
    jp nz, $0049                                  ; $6d52: $c2 $49 $00

    or $34                                        ; $6d55: $f6 $34
    ret                                           ; $6d57: $c9


    add c                                         ; $6d58: $81
    add c                                         ; $6d59: $81
    ld a, [hl-]                                   ; $6d5a: $3a
    pop bc                                        ; $6d5b: $c1
    xor h                                         ; $6d5c: $ac
    ld b, d                                       ; $6d5d: $42
    push af                                       ; $6d5e: $f5
    ld b, c                                       ; $6d5f: $41
    ld b, b                                       ; $6d60: $40

Jump_06d_6d61:
    add e                                         ; $6d61: $83
    ld b, e                                       ; $6d62: $43
    nop                                           ; $6d63: $00
    rst $38                                       ; $6d64: $ff
    adc l                                         ; $6d65: $8d
    ld [hl+], a                                   ; $6d66: $22
    jr z, @+$22                                   ; $6d67: $28 $20

    ld [bc], a                                    ; $6d69: $02
    add b                                         ; $6d6a: $80
    ld bc, $6b80                                  ; $6d6b: $01 $80 $6b
    add hl, hl                                    ; $6d6e: $29
    ld b, d                                       ; $6d6f: $42
    ld h, b                                       ; $6d70: $60
    ccf                                           ; $6d71: $3f
    db $e4                                        ; $6d72: $e4
    nop                                           ; $6d73: $00
    ld d, b                                       ; $6d74: $50
    or $b1                                        ; $6d75: $f6 $b1
    ld bc, $c0e7                                  ; $6d77: $01 $e7 $c0
    db $e4                                        ; $6d7a: $e4
    dec hl                                        ; $6d7b: $2b
    dec bc                                        ; $6d7c: $0b
    inc a                                         ; $6d7d: $3c
    inc h                                         ; $6d7e: $24
    nop                                           ; $6d7f: $00
    ld h, a                                       ; $6d80: $67
    ld b, $00                                     ; $6d81: $06 $00
    ld hl, sp-$3f                                 ; $6d83: $f8 $c1
    ret                                           ; $6d85: $c9


    ld [c], a                                     ; $6d86: $e2
    nop                                           ; $6d87: $00
    ldh a, [$82]                                  ; $6d88: $f0 $82
    ld a, b                                       ; $6d8a: $78
    add b                                         ; $6d8b: $80
    ld e, c                                       ; $6d8c: $59
    ld h, l                                       ; $6d8d: $65
    nop                                           ; $6d8e: $00
    rst $38                                       ; $6d8f: $ff
    ld [bc], a                                    ; $6d90: $02
    add c                                         ; $6d91: $81
    push bc                                       ; $6d92: $c5
    ld l, h                                       ; $6d93: $6c
    pop bc                                        ; $6d94: $c1
    pop hl                                        ; $6d95: $e1
    dec hl                                        ; $6d96: $2b
    ld b, c                                       ; $6d97: $41
    cp b                                          ; $6d98: $b8
    ret nz                                        ; $6d99: $c0

    ld a, e                                       ; $6d9a: $7b
    or b                                          ; $6d9b: $b0
    nop                                           ; $6d9c: $00
    ld hl, sp-$17                                 ; $6d9d: $f8 $e9
    inc bc                                        ; $6d9f: $03
    nop                                           ; $6da0: $00
    cp a                                          ; $6da1: $bf
    pop hl                                        ; $6da2: $e1
    add c                                         ; $6da3: $81
    db $e3                                        ; $6da4: $e3
    ld l, $a4                                     ; $6da5: $2e $a4
    ld sp, hl                                     ; $6da7: $f9
    inc b                                         ; $6da8: $04
    nop                                           ; $6da9: $00
    cp $bf                                        ; $6daa: $fe $bf
    add sp, $37                                   ; $6dac: $e8 $37
    add c                                         ; $6dae: $81
    dec l                                         ; $6daf: $2d
    ld b, d                                       ; $6db0: $42
    ret nz                                        ; $6db1: $c0

    cp l                                          ; $6db2: $bd
    ld hl, $68f6                                  ; $6db3: $21 $f6 $68
    nop                                           ; $6db6: $00
    rst $10                                       ; $6db7: $d7
    push af                                       ; $6db8: $f5
    ld h, a                                       ; $6db9: $67
    cp a                                          ; $6dba: $bf
    ld b, d                                       ; $6dbb: $42
    add b                                         ; $6dbc: $80
    ret nz                                        ; $6dbd: $c0

    ld l, e                                       ; $6dbe: $6b
    dec bc                                        ; $6dbf: $0b
    add c                                         ; $6dc0: $81
    ld c, e                                       ; $6dc1: $4b
    xor c                                         ; $6dc2: $a9
    ld bc, $a3ba                                  ; $6dc3: $01 $ba $a3
    push af                                       ; $6dc6: $f5
    add e                                         ; $6dc7: $83
    nop                                           ; $6dc8: $00
    ei                                            ; $6dc9: $fb
    dec d                                         ; $6dca: $15
    and c                                         ; $6dcb: $a1
    ld c, c                                       ; $6dcc: $49
    jr nz, jr_06d_6dfc                            ; $6dcd: $20 $2d

    inc bc                                        ; $6dcf: $03
    ld c, e                                       ; $6dd0: $4b
    inc c                                         ; $6dd1: $0c
    db $fc                                        ; $6dd2: $fc
    jp nz, Jump_000_00a8                          ; $6dd3: $c2 $a8 $00

    rst $30                                       ; $6dd6: $f7
    pop bc                                        ; $6dd7: $c1
    push af                                       ; $6dd8: $f5
    ld h, d                                       ; $6dd9: $62
    sub e                                         ; $6dda: $93
    ld h, e                                       ; $6ddb: $63
    nop                                           ; $6ddc: $00
    cp $1a                                        ; $6ddd: $fe $1a
    db $fc                                        ; $6ddf: $fc
    add h                                         ; $6de0: $84
    ld l, e                                       ; $6de1: $6b
    cp [hl]                                       ; $6de2: $be
    ldh [$0c], a                                  ; $6de3: $e0 $0c
    ld l, h                                       ; $6de5: $6c
    cp l                                          ; $6de6: $bd
    ret nz                                        ; $6de7: $c0

    ld a, b                                       ; $6de8: $78
    ret nz                                        ; $6de9: $c0

    ld a, [hl-]                                   ; $6dea: $3a
    pop bc                                        ; $6deb: $c1
    jr z, @+$75                                   ; $6dec: $28 $73

    ld h, [hl]                                    ; $6dee: $66
    nop                                           ; $6def: $00
    rst $38                                       ; $6df0: $ff
    ld l, c                                       ; $6df1: $69
    ld [bc], a                                    ; $6df2: $02
    dec c                                         ; $6df3: $0d
    ld [hl], d                                    ; $6df4: $72
    ld h, c                                       ; $6df5: $61
    inc c                                         ; $6df6: $0c
    ld l, c                                       ; $6df7: $69
    ld hl, $8175                                  ; $6df8: $21 $75 $81
    ld b, b                                       ; $6dfb: $40

jr_06d_6dfc:
    cp a                                          ; $6dfc: $bf
    db $e3                                        ; $6dfd: $e3
    ld l, [hl]                                    ; $6dfe: $6e
    ld bc, $fa00                                  ; $6dff: $01 $00 $fa
    db $fd                                        ; $6e02: $fd
    rst $00                                       ; $6e03: $c7
    ld a, c                                       ; $6e04: $79
    push bc                                       ; $6e05: $c5
    pop bc                                        ; $6e06: $c1
    db $e3                                        ; $6e07: $e3
    dec l                                         ; $6e08: $2d
    cp b                                          ; $6e09: $b8
    and l                                         ; $6e0a: $a5
    nop                                           ; $6e0b: $00
    nop                                           ; $6e0c: $00
    cp l                                          ; $6e0d: $bd
    ld [hl], c                                    ; $6e0e: $71
    ld h, [hl]                                    ; $6e0f: $66
    ld d, b                                       ; $6e10: $50
    and c                                         ; $6e11: $a1
    ld a, c                                       ; $6e12: $79
    ld hl, $4036                                  ; $6e13: $21 $36 $40
    daa                                           ; $6e16: $27
    ld bc, $e2bb                                  ; $6e17: $01 $bb $e2
    inc hl                                        ; $6e1a: $23
    and d                                         ; $6e1b: $a2
    jr nz, jr_06d_6e1e                            ; $6e1c: $20 $00

jr_06d_6e1e:
    cp e                                          ; $6e1e: $bb
    or $68                                        ; $6e1f: $f6 $68
    ret nz                                        ; $6e21: $c0

    db $e4                                        ; $6e22: $e4
    add d                                         ; $6e23: $82
    pop hl                                        ; $6e24: $e1
    cp a                                          ; $6e25: $bf
    ret nz                                        ; $6e26: $c0

    dec hl                                        ; $6e27: $2b
    ld a, b                                       ; $6e28: $78
    and b                                         ; $6e29: $a0
    jp nz, $9806                                  ; $6e2a: $c2 $06 $98

    nop                                           ; $6e2d: $00
    or [hl]                                       ; $6e2e: $b6
    db $ec                                        ; $6e2f: $ec
    ld a, [bc]                                    ; $6e30: $0a
    ld [hl], l                                    ; $6e31: $75
    nop                                           ; $6e32: $00
    ld c, h                                       ; $6e33: $4c
    inc l                                         ; $6e34: $2c
    db $fc                                        ; $6e35: $fc
    add e                                         ; $6e36: $83
    pop bc                                        ; $6e37: $c1
    pop hl                                        ; $6e38: $e1
    dec c                                         ; $6e39: $0d
    jr nc, jr_06d_6eb5                            ; $6e3a: $30 $79

    ld [bc], a                                    ; $6e3c: $02
    nop                                           ; $6e3d: $00
    rst $38                                       ; $6e3e: $ff
    ld e, c                                       ; $6e3f: $59
    push bc                                       ; $6e40: $c5
    scf                                           ; $6e41: $37
    ld h, c                                       ; $6e42: $61
    inc c                                         ; $6e43: $0c
    ld c, e                                       ; $6e44: $4b
    adc b                                         ; $6e45: $88
    ldh [$71], a                                  ; $6e46: $e0 $71
    ld hl, $c1e0                                  ; $6e48: $21 $e0 $c1
    pop hl                                        ; $6e4b: $e1
    dec a                                         ; $6e4c: $3d
    ld bc, $ff00                                  ; $6e4d: $01 $00 $ff
    ld [c], a                                     ; $6e50: $e2
    add h                                         ; $6e51: $84
    ld a, [bc]                                    ; $6e52: $0a
    add c                                         ; $6e53: $81
    ld c, l                                       ; $6e54: $4d
    dec l                                         ; $6e55: $2d
    inc c                                         ; $6e56: $0c
    ret nz                                        ; $6e57: $c0

    add hl, hl                                    ; $6e58: $29
    ld b, b                                       ; $6e59: $40
    ld a, [hl-]                                   ; $6e5a: $3a
    add b                                         ; $6e5b: $80
    pop bc                                        ; $6e5c: $c1
    db $e3                                        ; $6e5d: $e3
    add c                                         ; $6e5e: $81
    call nz, $ff00                                ; $6e5f: $c4 $00 $ff
    or $65                                        ; $6e62: $f6 $65
    dec c                                         ; $6e64: $0d
    dec c                                         ; $6e65: $0d
    add hl, de                                    ; $6e66: $19
    inc c                                         ; $6e67: $0c
    or l                                          ; $6e68: $b5
    and c                                         ; $6e69: $a1
    inc a                                         ; $6e6a: $3c
    pop bc                                        ; $6e6b: $c1
    dec c                                         ; $6e6c: $0d
    ld l, l                                       ; $6e6d: $6d
    inc [hl]                                      ; $6e6e: $34
    inc bc                                        ; $6e6f: $03
    nop                                           ; $6e70: $00
    ld a, h                                       ; $6e71: $7c
    or $6b                                        ; $6e72: $f6 $6b
    daa                                           ; $6e74: $27
    dec l                                         ; $6e75: $2d
    ld c, l                                       ; $6e76: $4d
    inc c                                         ; $6e77: $0c
    adc d                                         ; $6e78: $8a
    ldh [$7c], a                                  ; $6e79: $e0 $7c
    ld b, d                                       ; $6e7b: $42
    ld l, l                                       ; $6e7c: $6d
    nop                                           ; $6e7d: $00
    cp a                                          ; $6e7e: $bf
    or $6f                                        ; $6e7f: $f6 $6f
    nop                                           ; $6e81: $00
    sub b                                         ; $6e82: $90
    jp $a1f5                                      ; $6e83: $c3 $f5 $a1


    and b                                         ; $6e86: $a0
    inc h                                         ; $6e87: $24
    nop                                           ; $6e88: $00
    rst $18                                       ; $6e89: $df
    or $6a                                        ; $6e8a: $f6 $6a
    ld d, b                                       ; $6e8c: $50
    jp Jump_000_20ee                              ; $6e8d: $c3 $ee $20


    rst $00                                       ; $6e90: $c7
    jp $0000                                      ; $6e91: $c3 $00 $00


    and h                                         ; $6e94: $a4
    nop                                           ; $6e95: $00
    nop                                           ; $6e96: $00
    nop                                           ; $6e97: $00
    rst $38                                       ; $6e98: $ff
    pop hl                                        ; $6e99: $e1
    ld [c], a                                     ; $6e9a: $e2
    db $e3                                        ; $6e9b: $e3
    db $e4                                        ; $6e9c: $e4
    call c, $a0dd                                 ; $6e9d: $dc $dd $a0
    sbc $f3                                       ; $6ea0: $de $f3
    rst $18                                       ; $6ea2: $df
    ldh [$f6], a                                  ; $6ea3: $e0 $f6
    rst $38                                       ; $6ea5: $ff
    db $ec                                        ; $6ea6: $ec
    pop af                                        ; $6ea7: $f1
    ld [$eceb], a                                 ; $6ea8: $ea $eb $ec
    and b                                         ; $6eab: $a0
    ccf                                           ; $6eac: $3f
    push hl                                       ; $6ead: $e5
    and $e7                                       ; $6eae: $e6 $e7
    and b                                         ; $6eb0: $a0
    add sp, -$17                                  ; $6eb1: $e8 $e9
    or $ff                                        ; $6eb3: $f6 $ff

jr_06d_6eb5:
    db $ec                                        ; $6eb5: $ec
    pop af                                        ; $6eb6: $f1
    ld h, b                                       ; $6eb7: $60
    sbc c                                         ; $6eb8: $99
    rst $38                                       ; $6eb9: $ff
    or $fb                                        ; $6eba: $f6 $fb
    sbc c                                         ; $6ebc: $99
    rst $38                                       ; $6ebd: $ff
    or $fb                                        ; $6ebe: $f6 $fb
    sbc c                                         ; $6ec0: $99
    db $eb                                        ; $6ec1: $eb

Jump_06d_6ec2:
    and b                                         ; $6ec2: $a0
    and b                                         ; $6ec3: $a0
    add l                                         ; $6ec4: $85
    ldh [$67], a                                  ; $6ec5: $e0 $67
    ret nc                                        ; $6ec7: $d0

    pop de                                        ; $6ec8: $d1
    and b                                         ; $6ec9: $a0
    add l                                         ; $6eca: $85
    rst $38                                       ; $6ecb: $ff
    nop                                           ; $6ecc: $00
    di                                            ; $6ecd: $f3
    sub $d7                                       ; $6ece: $d6 $d7
    cp [hl]                                       ; $6ed0: $be
    ldh [$c3], a                                  ; $6ed1: $e0 $c3
    jp nc, $b9d3                                  ; $6ed3: $d2 $d3 $b9

    ldh [$85], a                                  ; $6ed6: $e0 $85
    rst $38                                       ; $6ed8: $ff
    nop                                           ; $6ed9: $00
    db $ec                                        ; $6eda: $ec
    add l                                         ; $6edb: $85
    ld [c], a                                     ; $6edc: $e2
    ret c                                         ; $6edd: $d8

    reti                                          ; $6ede: $d9


    ccf                                           ; $6edf: $3f
    and b                                         ; $6ee0: $a0

Jump_06d_6ee1:
    db $ed                                        ; $6ee1: $ed
    xor $d4                                       ; $6ee2: $ee $d4
    push de                                       ; $6ee4: $d5
    rst $28                                       ; $6ee5: $ef
    add l                                         ; $6ee6: $85
    rst $38                                       ; $6ee7: $ff
    nop                                           ; $6ee8: $00
    xor $fe                                       ; $6ee9: $ee $fe
    add h                                         ; $6eeb: $84
    ld [c], a                                     ; $6eec: $e2
    jp c, $a0db                                   ; $6eed: $da $db $a0

    ldh a, [$f1]                                  ; $6ef0: $f0 $f1
    ld a, [c]                                     ; $6ef2: $f2
    di                                            ; $6ef3: $f3
    ld l, c                                       ; $6ef4: $69
    db $f4                                        ; $6ef5: $f4
    add l                                         ; $6ef6: $85
    rst $38                                       ; $6ef7: $ff
    nop                                           ; $6ef8: $00
    xor $a0                                       ; $6ef9: $ee $a0
    add h                                         ; $6efb: $84
    ldh [$f5], a                                  ; $6efc: $e0 $f5
    or $ff                                        ; $6efe: $f6 $ff
    ret nz                                        ; $6f00: $c0

    add $fd                                       ; $6f01: $c6 $fd
    pop hl                                        ; $6f03: $e1
    sub $d7                                       ; $6f04: $d6 $d7
    add l                                         ; $6f06: $85
    rst $38                                       ; $6f07: $ff
    nop                                           ; $6f08: $00
    res 0, h                                      ; $6f09: $cb $84
    ld [c], a                                     ; $6f0b: $e2
    sbc a                                         ; $6f0c: $9f

jr_06d_6f0d:
    and d                                         ; $6f0d: $a2
    ld l, a                                       ; $6f0e: $6f
    sbc l                                         ; $6f0f: $9d
    sbc l                                         ; $6f10: $9d
    sbc l                                         ; $6f11: $9d
    sbc a                                         ; $6f12: $9f
    cp c                                          ; $6f13: $b9
    ldh [$d8], a                                  ; $6f14: $e0 $d8
    reti                                          ; $6f16: $d9


    add l                                         ; $6f17: $85
    rst $38                                       ; $6f18: $ff
    db $ec                                        ; $6f19: $ec
    nop                                           ; $6f1a: $00
    rst $00                                       ; $6f1b: $c7
    adc d                                         ; $6f1c: $8a
    ret nz                                        ; $6f1d: $c0

    db $e3                                        ; $6f1e: $e3
    db $e4                                        ; $6f1f: $e4
    add h                                         ; $6f20: $84
    ldh [$9f], a                                  ; $6f21: $e0 $9f
    sbc h                                         ; $6f23: $9c
    ld b, [hl]                                    ; $6f24: $46
    ld b, $ff                                     ; $6f25: $06 $ff
    ldh [$9c], a                                  ; $6f27: $e0 $9c
    sbc a                                         ; $6f29: $9f
    jr c, jr_06d_6f0d                             ; $6f2a: $38 $e1

    or [hl]                                       ; $6f2c: $b6
    ret nz                                        ; $6f2d: $c0

    nop                                           ; $6f2e: $00
    rst $38                                       ; $6f2f: $ff
    nop                                           ; $6f30: $00
    jp $e14c                                      ; $6f31: $c3 $4c $e1


    inc [hl]                                      ; $6f34: $34
    ld c, h                                       ; $6f35: $4c
    ret nz                                        ; $6f36: $c0

    pop bc                                        ; $6f37: $c1
    pop hl                                        ; $6f38: $e1
    ld b, l                                       ; $6f39: $45
    rst $38                                       ; $6f3a: $ff
    ldh [rDMA], a                                 ; $6f3b: $e0 $46
    sbc h                                         ; $6f3d: $9c
    ld a, l                                       ; $6f3e: $7d
    ldh [$32], a                                  ; $6f3f: $e0 $32
    pop hl                                        ; $6f41: $e1
    ldh a, [$7b]                                  ; $6f42: $f0 $7b
    rst $18                                       ; $6f44: $df
    nop                                           ; $6f45: $00
    call nz, $c34c                                ; $6f46: $c4 $4c $c3
    pop bc                                        ; $6f49: $c1
    pop hl                                        ; $6f4a: $e1
    ld b, a                                       ; $6f4b: $47
    ld d, h                                       ; $6f4c: $54
    ld c, c                                       ; $6f4d: $49
    ld d, d                                       ; $6f4e: $52
    dec c                                         ; $6f4f: $0d
    ld b, l                                       ; $6f50: $45
    ld a, l                                       ; $6f51: $7d
    ld [c], a                                     ; $6f52: $e2
    jp c, $f9db                                   ; $6f53: $da $db $f9

    and b                                         ; $6f56: $a0
    nop                                           ; $6f57: $00
    rst $38                                       ; $6f58: $ff
    nop                                           ; $6f59: $00
    and d                                         ; $6f5a: $a2
    ld c, h                                       ; $6f5b: $4c
    jp $9eff                                      ; $6f5c: $c3 $ff $9e


    ld b, [hl]                                    ; $6f5f: $46
    ld b, [hl]                                    ; $6f60: $46
    ld b, h                                       ; $6f61: $44
    ld d, h                                       ; $6f62: $54
    ld d, a                                       ; $6f63: $57
    ld d, h                                       ; $6f64: $54
    ld e, c                                       ; $6f65: $59
    rst $18                                       ; $6f66: $df
    ld b, h                                       ; $6f67: $44
    ld c, b                                       ; $6f68: $48
    ld b, [hl]                                    ; $6f69: $46
    ld b, [hl]                                    ; $6f6a: $46
    and c                                         ; $6f6b: $a1
    or [hl]                                       ; $6f6c: $b6
    ret nz                                        ; $6f6d: $c0

    jp nc, $f8d3                                  ; $6f6e: $d2 $d3 $f8

    nop                                           ; $6f71: $00
    rst $38                                       ; $6f72: $ff
    nop                                           ; $6f73: $00
    db $e4                                        ; $6f74: $e4
    ld c, h                                       ; $6f75: $4c
    jp nz, Jump_06d_469e                          ; $6f76: $c2 $9e $46

    ld b, l                                       ; $6f79: $45

jr_06d_6f7a:
    ld c, e                                       ; $6f7a: $4b
    ld d, d                                       ; $6f7b: $52
    rst $38                                       ; $6f7c: $ff
    ld a, [hl+]                                   ; $6f7d: $2a
    inc hl                                        ; $6f7e: $23
    cp h                                          ; $6f7f: $bc
    add hl, sp                                    ; $6f80: $39
    ld c, l                                       ; $6f81: $4d
    ld d, l                                       ; $6f82: $55
    ld b, [hl]                                    ; $6f83: $46
    sbc [hl]                                      ; $6f84: $9e
    ldh a, [$f9]                                  ; $6f85: $f0 $f9
    and e                                         ; $6f87: $a3
    ld [hl], c                                    ; $6f88: $71
    and d                                         ; $6f89: $a2
    nop                                           ; $6f8a: $00
    rst $38                                       ; $6f8b: $ff
    ld c, e                                       ; $6f8c: $4b
    pop bc                                        ; $6f8d: $c1
    push af                                       ; $6f8e: $f5
    or $9e                                        ; $6f8f: $f6 $9e
    ld b, [hl]                                    ; $6f91: $46
    rst $38                                       ; $6f92: $ff
    ld b, h                                       ; $6f93: $44
    ld d, d                                       ; $6f94: $52
    ld d, h                                       ; $6f95: $54
    daa                                           ; $6f96: $27
    jr nz, @+$27                                  ; $6f97: $20 $25

    ld a, [hl-]                                   ; $6f99: $3a
    ld c, e                                       ; $6f9a: $4b
    add c                                         ; $6f9b: $81
    ld d, l                                       ; $6f9c: $55
    cp h                                          ; $6f9d: $bc
    ret nz                                        ; $6f9e: $c0

    ld sp, hl                                     ; $6f9f: $f9
    and d                                         ; $6fa0: $a2
    ld [hl], c                                    ; $6fa1: $71
    and c                                         ; $6fa2: $a1
    nop                                           ; $6fa3: $00
    rst $38                                       ; $6fa4: $ff
    ld a, [bc]                                    ; $6fa5: $0a
    and b                                         ; $6fa6: $a0
    ld c, b                                       ; $6fa7: $48
    and c                                         ; $6fa8: $a1
    sbc [hl]                                      ; $6fa9: $9e
    rst $38                                       ; $6faa: $ff
    ld b, [hl]                                    ; $6fab: $46
    ld c, d                                       ; $6fac: $4a
    ld d, [hl]                                    ; $6fad: $56
    ld a, [hl+]                                   ; $6fae: $2a
    jr nz, @+$28                                  ; $6faf: $20 $26

    ld hl, $0335                                  ; $6fb1: $21 $35 $03
    ld [hl], $44                                  ; $6fb4: $36 $44
    ld a, e                                       ; $6fb6: $7b
    ret nz                                        ; $6fb7: $c0

    jr c, jr_06d_6f7a                             ; $6fb8: $38 $c0

    add hl, sp                                    ; $6fba: $39
    pop bc                                        ; $6fbb: $c1
    ld a, e                                       ; $6fbc: $7b
    sbc $85                                       ; $6fbd: $de $85
    and d                                         ; $6fbf: $a2
    call nz, $fea1                                ; $6fc0: $c4 $a1 $fe
    ld b, e                                       ; $6fc3: $43
    ret nz                                        ; $6fc4: $c0

    ld d, l                                       ; $6fc5: $55
    ld d, h                                       ; $6fc6: $54
    ld a, [hl+]                                   ; $6fc7: $2a
    ld a, [hl+]                                   ; $6fc8: $2a
    scf                                           ; $6fc9: $37
    jr c, jr_06d_7001                             ; $6fca: $38 $35

    add e                                         ; $6fcc: $83
    dec [hl]                                      ; $6fcd: $35
    ld [hl], $bd                                  ; $6fce: $36 $bd
    ret nz                                        ; $6fd0: $c0

    cp e                                          ; $6fd1: $bb
    call nz, $de7b                                ; $6fd2: $c4 $7b $de
    nop                                           ; $6fd5: $00
    jp $a048                                      ; $6fd6: $c3 $48 $a0


    and c                                         ; $6fd9: $a1
    cp $c1                                        ; $6fda: $fe $c1
    ret nz                                        ; $6fdc: $c0

    ld b, a                                       ; $6fdd: $47
    ld d, h                                       ; $6fde: $54
    or d                                          ; $6fdf: $b2
    xor [hl]                                      ; $6fe0: $ae
    or d                                          ; $6fe1: $b2
    ld a, [hl-]                                   ; $6fe2: $3a
    rst $08                                       ; $6fe3: $cf
    scf                                           ; $6fe4: $37
    rst $08                                       ; $6fe5: $cf
    add hl, sp                                    ; $6fe6: $39
    or d                                          ; $6fe7: $b2
    rst $30                                       ; $6fe8: $f7
    and h                                         ; $6fe9: $a4
    push af                                       ; $6fea: $f5
    or $7b                                        ; $6feb: $f6 $7b
    xor c                                         ; $6fed: $a9
    ret c                                         ; $6fee: $d8

    and d                                         ; $6fef: $a2
    or $00                                        ; $6ff0: $f6 $00
    db $d3                                        ; $6ff2: $d3
    push af                                       ; $6ff3: $f5
    or $02                                        ; $6ff4: $f6 $02
    pop bc                                        ; $6ff6: $c1
    ld d, e                                       ; $6ff7: $53
    ld d, e                                       ; $6ff8: $53
    xor [hl]                                      ; $6ff9: $ae
    xor a                                         ; $6ffa: $af
    ld a, a                                       ; $6ffb: $7f
    or d                                          ; $6ffc: $b2
    ld a, $ce                                     ; $6ffd: $3e $ce
    adc $3a                                       ; $6fff: $ce $3a

jr_06d_7001:
    or d                                          ; $7001: $b2
    or d                                          ; $7002: $b2
    cp [hl]                                       ; $7003: $be
    pop hl                                        ; $7004: $e1
    add [hl]                                      ; $7005: $86
    or [hl]                                       ; $7006: $b6
    and b                                         ; $7007: $a0
    sub $d7                                       ; $7008: $d6 $d7
    ld a, e                                       ; $700a: $7b
    rst $00                                       ; $700b: $c7
    jp c, Jump_000_00a3                           ; $700c: $da $a3 $00

    or [hl]                                       ; $700f: $b6
    add d                                         ; $7010: $82
    and d                                         ; $7011: $a2
    xor a                                         ; $7012: $af
    rst $38                                       ; $7013: $ff
    ld b, [hl]                                    ; $7014: $46
    ld b, [hl]                                    ; $7015: $46
    add hl, sp                                    ; $7016: $39
    rst $08                                       ; $7017: $cf
    rst $08                                       ; $7018: $cf
    dec [hl]                                      ; $7019: $35
    ld [hl], $b2                                  ; $701a: $36 $b2
    add l                                         ; $701c: $85
    or d                                          ; $701d: $b2
    inc a                                         ; $701e: $3c
    pop hl                                        ; $701f: $e1
    and c                                         ; $7020: $a1
    db $eb                                        ; $7021: $eb
    add c                                         ; $7022: $81
    ld a, e                                       ; $7023: $7b
    and b                                         ; $7024: $a0
    add hl, hl                                    ; $7025: $29
    add d                                         ; $7026: $82
    ld h, $82                                     ; $7027: $26 $82
    sbc $21                                       ; $7029: $de $21
    rst $18                                       ; $702b: $df
    ld h, a                                       ; $702c: $67
    and d                                         ; $702d: $a2
    ld h, a                                       ; $702e: $67
    rst $00                                       ; $702f: $c7
    ld e, $c5                                     ; $7030: $1e $c5
    ld b, $80                                     ; $7032: $06 $80
    sbc a                                         ; $7034: $9f
    inc bc                                        ; $7035: $03
    and b                                         ; $7036: $a0
    nop                                           ; $7037: $00
    and b                                         ; $7038: $a0
    cp a                                          ; $7039: $bf
    sbc h                                         ; $703a: $9c
    ccf                                           ; $703b: $3f
    ld [hl], $35                                  ; $703c: $36 $35
    dec [hl]                                      ; $703e: $35
    dec sp                                        ; $703f: $3b
    ei                                            ; $7040: $fb
    jp nz, Jump_000_319c                          ; $7041: $c2 $9c $31

    sbc a                                         ; $7044: $9f
    ld l, a                                       ; $7045: $6f
    add b                                         ; $7046: $80
    or c                                          ; $7047: $b1
    ld h, b                                       ; $7048: $60
    ld [hl], e                                    ; $7049: $73
    and c                                         ; $704a: $a1
    sub $d7                                       ; $704b: $d6 $d7
    dec l                                         ; $704d: $2d
    jp $801d                                      ; $704e: $c3 $1d $80


    ldh [$da], a                                  ; $7051: $e0 $da
    ld h, c                                       ; $7053: $61
    ld h, a                                       ; $7054: $67
    push hl                                       ; $7055: $e5
    ld e, $a4                                     ; $7056: $1e $a4
    add d                                         ; $7058: $82
    add b                                         ; $7059: $80
    add e                                         ; $705a: $83
    add l                                         ; $705b: $85
    sbc a                                         ; $705c: $9f
    sbc h                                         ; $705d: $9c
    ld b, l                                       ; $705e: $45
    dec hl                                        ; $705f: $2b
    ld a, [hl-]                                   ; $7060: $3a
    dec [hl]                                      ; $7061: $35
    rst $38                                       ; $7062: $ff
    ldh [$39], a                                  ; $7063: $e0 $39
    di                                            ; $7065: $f3
    add b                                         ; $7066: $80
    sbc [hl]                                      ; $7067: $9e
    or c                                          ; $7068: $b1
    ld h, e                                       ; $7069: $63
    cp b                                          ; $706a: $b8
    pop bc                                        ; $706b: $c1
    inc bc                                        ; $706c: $03
    ret c                                         ; $706d: $d8

    reti                                          ; $706e: $d9


    ld h, $83                                     ; $706f: $26 $83
    dec e                                         ; $7071: $1d
    add b                                         ; $7072: $80
    inc h                                         ; $7073: $24
    and c                                         ; $7074: $a1
    ld h, a                                       ; $7075: $67
    db $e3                                        ; $7076: $e3
    nop                                           ; $7077: $00
    ld h, a                                       ; $7078: $67
    sub l                                         ; $7079: $95
    pop bc                                        ; $707a: $c1
    ld a, $82                                     ; $707b: $3e $82
    ld h, d                                       ; $707d: $62
    ret nc                                        ; $707e: $d0

    pop de                                        ; $707f: $d1
    sbc a                                         ; $7080: $9f
    sbc h                                         ; $7081: $9c
    add hl, sp                                    ; $7082: $39
    ret nz                                        ; $7083: $c0

    pop hl                                        ; $7084: $e1
    ei                                            ; $7085: $fb
    ret nz                                        ; $7086: $c0

    nop                                           ; $7087: $00
    cp b                                          ; $7088: $b8
    and [hl]                                      ; $7089: $a6
    daa                                           ; $708a: $27
    add b                                         ; $708b: $80
    ld [hl], h                                    ; $708c: $74
    jp nz, $831f                                  ; $708d: $c2 $1f $83

    ld l, c                                       ; $7090: $69
    pop bc                                        ; $7091: $c1
    sub $60                                       ; $7092: $d6 $60
    nop                                           ; $7094: $00
    adc h                                         ; $7095: $8c
    call z, $fb82                                 ; $7096: $cc $82 $fb
    push af                                       ; $7099: $f5
    or $42                                        ; $709a: $f6 $42
    ld h, b                                       ; $709c: $60
    and c                                         ; $709d: $a1
    ld b, h                                       ; $709e: $44
    inc a                                         ; $709f: $3c
    dec [hl]                                      ; $70a0: $35
    rst $08                                       ; $70a1: $cf
    rrca                                          ; $70a2: $0f
    call Call_000_36cf                            ; $70a3: $cd $cf $36
    or d                                          ; $70a6: $b2
    cp b                                          ; $70a7: $b8
    and l                                         ; $70a8: $a5
    daa                                           ; $70a9: $27
    add b                                         ; $70aa: $80
    ld l, e                                       ; $70ab: $6b
    add b                                         ; $70ac: $80
    rra                                           ; $70ad: $1f
    db $e4                                        ; $70ae: $e4
    adc h                                         ; $70af: $8c
    ld h, c                                       ; $70b0: $61
    add b                                         ; $70b1: $80
    ret c                                         ; $70b2: $d8

    ld h, [hl]                                    ; $70b3: $66
    and b                                         ; $70b4: $a0
    and b                                         ; $70b5: $a0
    nop                                           ; $70b6: $00
    add a                                         ; $70b7: $87
    add d                                         ; $70b8: $82
    ld h, d                                       ; $70b9: $62
    or $83                                        ; $70ba: $f6 $83
    ld b, l                                       ; $70bc: $45
    rra                                           ; $70bd: $1f
    ld a, [hl-]                                   ; $70be: $3a
    rst $08                                       ; $70bf: $cf
    set 1, h                                      ; $70c0: $cb $cc
    call z, $e3bf                                 ; $70c2: $cc $bf $e3
    xor e                                         ; $70c5: $ab
    ld h, c                                       ; $70c6: $61
    daa                                           ; $70c7: $27
    add b                                         ; $70c8: $80
    ld a, a                                       ; $70c9: $7f
    sbc h                                         ; $70ca: $9c
    sbc a                                         ; $70cb: $9f
    sbc a                                         ; $70cc: $9f
    sbc l                                         ; $70cd: $9d
    sbc h                                         ; $70ce: $9c
    ld [de], a                                    ; $70cf: $12
    inc de                                        ; $70d0: $13
    rst $38                                       ; $70d1: $ff
    pop hl                                        ; $70d2: $e1
    ldh [$c4], a                                  ; $70d3: $e0 $c4
    and $93                                       ; $70d5: $e6 $93
    ld h, c                                       ; $70d7: $61
    ld e, $8b                                     ; $70d8: $1e $8b
    ld b, d                                       ; $70da: $42
    ld h, e                                       ; $70db: $63
    ccf                                           ; $70dc: $3f
    ldh [$cf], a                                  ; $70dd: $e0 $cf
    call Call_06d_50cd                            ; $70df: $cd $cd $50
    cp a                                          ; $70e2: $bf
    ldh [$f9], a                                  ; $70e3: $e0 $f9
    and b                                         ; $70e5: $a0
    ld a, [c]                                     ; $70e6: $f2
    ld h, c                                       ; $70e7: $61
    add sp, $62                                   ; $70e8: $e8 $62
    sbc h                                         ; $70ea: $9c
    jp nz, $12e0                                  ; $70eb: $c2 $e0 $12

    ld l, c                                       ; $70ee: $69
    and b                                         ; $70ef: $a0
    ldh a, [rNR44]                                ; $70f0: $f0 $23
    add c                                         ; $70f2: $81
    cp [hl]                                       ; $70f3: $be
    add sp, $1e                                   ; $70f4: $e8 $1e
    adc d                                         ; $70f6: $8a
    ld b, h                                       ; $70f7: $44
    ld h, h                                       ; $70f8: $64
    and b                                         ; $70f9: $a0
    sbc [hl]                                      ; $70fa: $9e
    ld b, l                                       ; $70fb: $45
    ld [hl], $df                                  ; $70fc: $36 $df
    jr c, jr_06d_7138                             ; $70fe: $38 $38

    rst $08                                       ; $7100: $cf
    set 1, [hl]                                   ; $7101: $cb $ce
    ld a, [$9ca1]                                 ; $7103: $fa $a1 $9c
    and d                                         ; $7106: $a2
    ld bc, $a99d                                  ; $7107: $01 $9d $a9
    ld h, b                                       ; $710a: $60
    add [hl]                                      ; $710b: $86
    pop hl                                        ; $710c: $e1
    jp nz, $c4e0                                  ; $710d: $c2 $e0 $c4

    ld [c], a                                     ; $7110: $e2
    add c                                         ; $7111: $81
    jp Jump_06d_6416                              ; $7112: $c3 $16 $64


    ld e, $8e                                     ; $7115: $1e $8e
    call c, $41f8                                 ; $7117: $dc $f8 $41
    ld [hl], l                                    ; $711a: $75
    add b                                         ; $711b: $80
    or d                                          ; $711c: $b2
    or d                                          ; $711d: $b2
    rst $08                                       ; $711e: $cf
    add b                                         ; $711f: $80
    ldh [$b2], a                                  ; $7120: $e0 $b2
    xor [hl]                                      ; $7122: $ae
    inc b                                         ; $7123: $04
    ld l, [hl]                                    ; $7124: $6e
    ld h, c                                       ; $7125: $61
    pop bc                                        ; $7126: $c1
    ldh [rNR12], a                                ; $7127: $e0 $12
    xor $82                                       ; $7129: $ee $82
    sbc e                                         ; $712b: $9b
    ld b, c                                       ; $712c: $41
    ld [$d382], a                                 ; $712d: $ea $82 $d3
    ld b, b                                       ; $7130: $40
    nop                                           ; $7131: $00
    ld [hl], $3e                                  ; $7132: $36 $3e
    ld hl, sp+$41                                 ; $7134: $f8 $41
    sbc h                                         ; $7136: $9c
    ld b, [hl]                                    ; $7137: $46

jr_06d_7138:
    xor [hl]                                      ; $7138: $ae
    or d                                          ; $7139: $b2
    rst $08                                       ; $713a: $cf
    cp a                                          ; $713b: $bf
    ret nz                                        ; $713c: $c0

    ld [hl], c                                    ; $713d: $71
    and b                                         ; $713e: $a0
    add d                                         ; $713f: $82
    cp a                                          ; $7140: $bf
    ld [c], a                                     ; $7141: $e2
    ld de, $c235                                  ; $7142: $11 $35 $c2
    or $a4                                        ; $7145: $f6 $a4
    add c                                         ; $7147: $81
    call nz, Call_000_3500                        ; $7148: $c4 $00 $35
    ld a, d                                       ; $714b: $7a
    ld b, c                                       ; $714c: $41
    sbc [hl]                                      ; $714d: $9e
    rrca                                          ; $714e: $0f
    ld b, [hl]                                    ; $714f: $46
    xor a                                         ; $7150: $af
    or d                                          ; $7151: $b2
    inc a                                         ; $7152: $3c
    pop bc                                        ; $7153: $c1
    ld [c], a                                     ; $7154: $e2
    ld [hl], $a3                                  ; $7155: $36 $a3
    ret nz                                        ; $7157: $c0

    db $e3                                        ; $7158: $e3
    or $a2                                        ; $7159: $f6 $a2
    db $fc                                        ; $715b: $fc
    nop                                           ; $715c: $00
    ccf                                           ; $715d: $3f
    ld a, e                                       ; $715e: $7b
    jr nz, @-$5d                                  ; $715f: $20 $a1

    ld b, [hl]                                    ; $7161: $46
    or d                                          ; $7162: $b2
    add hl, sp                                    ; $7163: $39
    inc a                                         ; $7164: $3c
    or d                                          ; $7165: $b2
    add hl, hl                                    ; $7166: $29
    or d                                          ; $7167: $b2
    pop bc                                        ; $7168: $c1
    ld [c], a                                     ; $7169: $e2
    db $f4                                        ; $716a: $f4
    add b                                         ; $716b: $80
    ld b, l                                       ; $716c: $45
    ld b, b                                       ; $716d: $40
    ldh [$9e], a                                  ; $716e: $e0 $9e
    xor [hl]                                      ; $7170: $ae
    ld h, h                                       ; $7171: $64
    nop                                           ; $7172: $00
    ld a, [hl-]                                   ; $7173: $3a
    xor h                                         ; $7174: $ac
    adc a                                         ; $7175: $8f
    ld b, d                                       ; $7176: $42
    inc sp                                        ; $7177: $33
    add d                                         ; $7178: $82
    or d                                          ; $7179: $b2
    add hl, sp                                    ; $717a: $39
    ei                                            ; $717b: $fb
    add c                                         ; $717c: $81
    ld [hl], $78                                  ; $717d: $36 $78
    ret nz                                        ; $717f: $c0

    call $f61e                                    ; $7180: $cd $1e $f6
    and b                                         ; $7183: $a0
    ld b, l                                       ; $7184: $45
    ld de, $a146                                  ; $7185: $11 $46 $a1
    and a                                         ; $7188: $a7
    inc hl                                        ; $7189: $23
    db $ec                                        ; $718a: $ec
    ld c, l                                       ; $718b: $4d
    ld e, $6f                                     ; $718c: $1e $6f
    add sp, -$3b                                  ; $718e: $e8 $c5
    ld b, d                                       ; $7190: $42
    cp a                                          ; $7191: $bf
    ldh [$c4], a                                  ; $7192: $e0 $c4
    ld [c], a                                     ; $7194: $e2
    call z, $c138                                 ; $7195: $cc $38 $c1
    adc $35                                       ; $7198: $ce $35
    ld [hl], $01                                  ; $719a: $36 $01
    ld de, $8332                                  ; $719c: $11 $32 $83
    ld [hl], c                                    ; $719f: $71
    adc c                                         ; $71a0: $89
    nop                                           ; $71a1: $00
    db $f4                                        ; $71a2: $f4
    ld a, e                                       ; $71a3: $7b
    ld hl, $4272                                  ; $71a4: $21 $72 $42
    ld a, a                                       ; $71a7: $7f
    ret nz                                        ; $71a8: $c0

    cp h                                          ; $71a9: $bc
    and c                                         ; $71aa: $a1
    dec bc                                        ; $71ab: $0b
    ld [hl], $cf                                  ; $71ac: $36 $cf
    ret nz                                        ; $71ae: $c0

    ldh [$3a], a                                  ; $71af: $e0 $3a
    cp a                                          ; $71b1: $bf
    ret nz                                        ; $71b2: $c0

    add sp, $21                                   ; $71b3: $e8 $21
    ld a, [bc]                                    ; $71b5: $0a
    and l                                         ; $71b6: $a5
    nop                                           ; $71b7: $00
    ld a, [$c576]                                 ; $71b8: $fa $76 $c5
    ld b, e                                       ; $71bb: $43
    sbc a                                         ; $71bc: $9f
    sbc h                                         ; $71bd: $9c
    ld b, e                                       ; $71be: $43
    ldh [$cf], a                                  ; $71bf: $e0 $cf
    ld [hl], $ae                                  ; $71c1: $36 $ae
    inc a                                         ; $71c3: $3c
    ldh [$7f], a                                  ; $71c4: $e0 $7f
    rst $08                                       ; $71c6: $cf
    dec [hl]                                      ; $71c7: $35
    ld [de], a                                    ; $71c8: $12
    ld [de], a                                    ; $71c9: $12
    jr c, jr_06d_7203                             ; $71ca: $38 $37

    ld b, l                                       ; $71cc: $45
    ld l, a                                       ; $71cd: $6f

jr_06d_71ce:
    ld h, e                                       ; $71ce: $63
    add sp, $00                                   ; $71cf: $e8 $00
    rst $38                                       ; $71d1: $ff
    rla                                           ; $71d2: $17
    db $e4                                        ; $71d3: $e4
    ld sp, $9c82                                  ; $71d4: $31 $82 $9c
    ld a, [hl]                                    ; $71d7: $7e
    ret nz                                        ; $71d8: $c0

    ld [hl], $35                                  ; $71d9: $36 $35
    inc a                                         ; $71db: $3c
    dec c                                         ; $71dc: $0d
    ld de, $616b                                  ; $71dd: $11 $6b $61
    ld b, [hl]                                    ; $71e0: $46
    sbc [hl]                                      ; $71e1: $9e
    ldh [rP1], a                                  ; $71e2: $e0 $00
    sub a                                         ; $71e4: $97
    ld hl, $fc00                                  ; $71e5: $21 $00 $fc
    ld a, d                                       ; $71e8: $7a
    and l                                         ; $71e9: $a5
    cp h                                          ; $71ea: $bc
    inc sp                                        ; $71eb: $33
    add e                                         ; $71ec: $83
    ld [hl], l                                    ; $71ed: $75
    ld h, b                                       ; $71ee: $60
    inc a                                         ; $71ef: $3c
    ld a, [hl-]                                   ; $71f0: $3a
    ld de, $6b3c                                  ; $71f1: $11 $3c $6b
    ld h, b                                       ; $71f4: $60
    ld b, l                                       ; $71f5: $45
    ret nz                                        ; $71f6: $c0

    ld [hl-], a                                   ; $71f7: $32
    add h                                         ; $71f8: $84
    ld h, a                                       ; $71f9: $67
    ld a, [hl+]                                   ; $71fa: $2a
    ld e, $35                                     ; $71fb: $1e $35
    ldh a, [$61]                                  ; $71fd: $f0 $61
    jr nc, @-$7d                                  ; $71ff: $30 $81

    jp hl                                         ; $7201: $e9


    ld b, b                                       ; $7202: $40

jr_06d_7203:
    or d                                          ; $7203: $b2
    ld a, [hl-]                                   ; $7204: $3a
    dec de                                        ; $7205: $1b
    ld [de], a                                    ; $7206: $12
    ld [de], a                                    ; $7207: $12
    ei                                            ; $7208: $fb
    ret nz                                        ; $7209: $c0

    inc a                                         ; $720a: $3c
    ld b, h                                       ; $720b: $44
    ld [$0025], a                                 ; $720c: $ea $25 $00
    call c, $c47b                                 ; $720f: $dc $7b $c4
    cp h                                          ; $7212: $bc
    db $fc                                        ; $7213: $fc
    inc bc                                        ; $7214: $03
    xor h                                         ; $7215: $ac
    ld bc, $1139                                  ; $7216: $01 $39 $11
    ld a, [hl-]                                   ; $7219: $3a
    adc $71                                       ; $721a: $ce $71
    add b                                         ; $721c: $80
    ld b, b                                       ; $721d: $40
    add b                                         ; $721e: $80
    ld [hl-], a                                   ; $721f: $32
    add l                                         ; $7220: $85
    nop                                           ; $7221: $00
    call c, $86f6                                 ; $7222: $dc $f6 $86
    ld b, e                                       ; $7225: $43
    ld h, d                                       ; $7226: $62
    xor d                                         ; $7227: $aa
    ld bc, $e041                                  ; $7228: $01 $41 $e0
    ld a, [hl-]                                   ; $722b: $3a
    ret nz                                        ; $722c: $c0

    add hl, sp                                    ; $722d: $39
    add b                                         ; $722e: $80
    or h                                          ; $722f: $b4
    add b                                         ; $7230: $80
    db $eb                                        ; $7231: $eb
    jr nz, jr_06d_71ce                            ; $7232: $20 $9a

    ld h, c                                       ; $7234: $61
    nop                                           ; $7235: $00
    reti                                          ; $7236: $d9


    adc a                                         ; $7237: $8f
    ld c, b                                       ; $7238: $48
    or d                                          ; $7239: $b2
    ld h, d                                       ; $723a: $62
    add sp, $00                                   ; $723b: $e8 $00
    ld de, $b802                                  ; $723d: $11 $02 $b8
    and b                                         ; $7240: $a0
    call z, $c0ff                                 ; $7241: $cc $ff $c0
    inc hl                                        ; $7244: $23
    ld [bc], a                                    ; $7245: $02
    ld h, [hl]                                    ; $7246: $66
    ld bc, $ff00                                  ; $7247: $01 $00 $ff
    db $ec                                        ; $724a: $ec
    ld b, c                                       ; $724b: $41
    xor b                                         ; $724c: $a8
    ld b, $03                                     ; $724d: $06 $03
    ld de, $3a45                                  ; $724f: $11 $45 $3a
    jp nz, $c03c                                  ; $7252: $c2 $3c $c0

    and $00                                       ; $7255: $e6 $00
    xor e                                         ; $7257: $ab
    ld hl, $fe00                                  ; $7258: $21 $00 $fe
    add l                                         ; $725b: $85
    inc bc                                        ; $725c: $03
    nop                                           ; $725d: $00
    xor b                                         ; $725e: $a8
    inc b                                         ; $725f: $04
    add c                                         ; $7260: $81
    add b                                         ; $7261: $80
    ld a, [hl-]                                   ; $7262: $3a
    pop bc                                        ; $7263: $c1
    xor h                                         ; $7264: $ac
    ld b, d                                       ; $7265: $42
    inc a                                         ; $7266: $3c
    pop bc                                        ; $7267: $c1
    nop                                           ; $7268: $00
    rst $38                                       ; $7269: $ff
    adc a                                         ; $726a: $8f
    daa                                           ; $726b: $27
    cp a                                          ; $726c: $bf
    pop bc                                        ; $726d: $c1
    ld [$8002], sp                                ; $726e: $08 $02 $80
    cp a                                          ; $7271: $bf
    ldh [rOCPD], a                                ; $7272: $e0 $6b
    ld b, c                                       ; $7274: $41
    ld a, [hl-]                                   ; $7275: $3a
    cp e                                          ; $7276: $bb
    and c                                         ; $7277: $a1
    ld a, [c]                                     ; $7278: $f2
    inc hl                                        ; $7279: $23
    nop                                           ; $727a: $00
    rst $38                                       ; $727b: $ff
    ld [hl], h                                    ; $727c: $74
    ld h, h                                       ; $727d: $64
    ld l, b                                       ; $727e: $68
    ld [bc], a                                    ; $727f: $02
    add d                                         ; $7280: $82
    ld a, a                                       ; $7281: $7f
    ldh [rOCPD], a                                ; $7282: $e0 $6b
    ld b, d                                       ; $7284: $42
    ld [hl], $fb                                  ; $7285: $36 $fb
    and b                                         ; $7287: $a0
    ret c                                         ; $7288: $d8

    reti                                          ; $7289: $d9


    ld a, b                                       ; $728a: $78
    ld hl, $0060                                  ; $728b: $21 $60 $00
    rst $38                                       ; $728e: $ff
    ld l, [hl]                                    ; $728f: $6e
    ld b, e                                       ; $7290: $43
    ret nz                                        ; $7291: $c0

    db $e4                                        ; $7292: $e4
    ld l, b                                       ; $7293: $68
    jr nz, @-$3e                                  ; $7294: $20 $c0

    push hl                                       ; $7296: $e5
    jp c, $bbdb                                   ; $7297: $da $db $bb

    and c                                         ; $729a: $a1
    ret nc                                        ; $729b: $d0

    nop                                           ; $729c: $00
    rst $38                                       ; $729d: $ff
    ld h, a                                       ; $729e: $67
    nop                                           ; $729f: $00
    xor b                                         ; $72a0: $a8
    inc bc                                        ; $72a1: $03
    ld b, b                                       ; $72a2: $40
    pop hl                                        ; $72a3: $e1

jr_06d_72a4:
    ld b, [hl]                                    ; $72a4: $46
    xor e                                         ; $72a5: $ab
    ld [hl+], a                                   ; $72a6: $22
    inc a                                         ; $72a7: $3c
    or d                                          ; $72a8: $b2
    nop                                           ; $72a9: $00
    inc l                                         ; $72aa: $2c
    jr nz, jr_06d_72a4                            ; $72ab: $20 $f7

    ld h, h                                       ; $72ad: $64
    nop                                           ; $72ae: $00
    rst $38                                       ; $72af: $ff
    ld h, a                                       ; $72b0: $67
    nop                                           ; $72b1: $00
    xor b                                         ; $72b2: $a8
    ld [bc], a                                    ; $72b3: $02
    rst $38                                       ; $72b4: $ff
    jp nz, Jump_000_20ec                          ; $72b5: $c2 $ec $20

    ret nz                                        ; $72b8: $c0

    pop hl                                        ; $72b9: $e1
    pop bc                                        ; $72ba: $c1
    or d                                          ; $72bb: $b2
    cp e                                          ; $72bc: $bb
    and h                                         ; $72bd: $a4
    sub h                                         ; $72be: $94
    jr nz, jr_06d_72c1                            ; $72bf: $20 $00

jr_06d_72c1:
    rst $38                                       ; $72c1: $ff
    jr nc, jr_06d_72e8                            ; $72c2: $30 $24

    ret nz                                        ; $72c4: $c0

    ld b, d                                       ; $72c5: $42
    ld b, l                                       ; $72c6: $45
    ld [hl], $41                                  ; $72c7: $36 $41
    dec sp                                        ; $72c9: $3b
    nop                                           ; $72ca: $00
    pop hl                                        ; $72cb: $e1
    xor h                                         ; $72cc: $ac
    jr nz, @-$41                                  ; $72cd: $20 $bd

    jr nz, @-$43                                  ; $72cf: $20 $bb

    ld b, c                                       ; $72d1: $41
    nop                                           ; $72d2: $00
    cp $e3                                        ; $72d3: $fe $e3
    sbc e                                         ; $72d5: $9b
    ld bc, $a838                                  ; $72d6: $01 $38 $a8
    ld bc, $a03d                                  ; $72d9: $01 $3d $a0
    cp a                                          ; $72dc: $bf
    ld b, b                                       ; $72dd: $40
    ld b, l                                       ; $72de: $45
    ld b, e                                       ; $72df: $43
    ccf                                           ; $72e0: $3f
    add sp, $00                                   ; $72e1: $e8 $00
    xor c                                         ; $72e3: $a9
    ld bc, $f520                                  ; $72e4: $01 $20 $f5
    ld h, c                                       ; $72e7: $61

jr_06d_72e8:
    sub h                                         ; $72e8: $94
    jr nz, jr_06d_72eb                            ; $72e9: $20 $00

jr_06d_72eb:
    rst $38                                       ; $72eb: $ff
    inc l                                         ; $72ec: $2c
    inc hl                                        ; $72ed: $23
    dec a                                         ; $72ee: $3d
    jp nz, $fc13                                  ; $72ef: $c2 $13 $fc

    pop bc                                        ; $72f2: $c1
    add sp, $00                                   ; $72f3: $e8 $00
    ld [hl], $7b                                  ; $72f5: $36 $7b
    and b                                         ; $72f7: $a0
    ld b, l                                       ; $72f8: $45
    ld b, c                                       ; $72f9: $41
    push af                                       ; $72fa: $f5
    ld h, c                                       ; $72fb: $61
    push af                                       ; $72fc: $f5
    or $00                                        ; $72fd: $f6 $00
    rst $38                                       ; $72ff: $ff
    call nc, $d403                                ; $7300: $d4 $03 $d4
    db $fc                                        ; $7303: $fc
    add d                                         ; $7304: $82
    cp [hl]                                       ; $7305: $be
    ld hl, $e812                                  ; $7306: $21 $12 $e8
    nop                                           ; $7309: $00
    add hl, sp                                    ; $730a: $39
    scf                                           ; $730b: $37

jr_06d_730c:
    ldh [$a6], a                                  ; $730c: $e0 $a6
    ld [hl], $c0                                  ; $730e: $36 $c0
    or h                                          ; $7310: $b4
    ld h, c                                       ; $7311: $61
    sub c                                         ; $7312: $91

jr_06d_7313:
    ld bc, $ff00                                  ; $7313: $01 $00 $ff
    xor [hl]                                      ; $7316: $ae
    inc bc                                        ; $7317: $03
    inc b                                         ; $7318: $04
    jr nz, @-$04                                  ; $7319: $20 $fa

    ld hl, $3645                                  ; $731b: $21 $45 $36
    ld a, a                                       ; $731e: $7f
    ld [hl], $45                                  ; $731f: $36 $45
    ld b, l                                       ; $7321: $45
    ld [hl], $62                                  ; $7322: $36 $62
    and a                                         ; $7324: $a7
    ld h, [hl]                                    ; $7325: $66
    cp a                                          ; $7326: $bf
    ld [c], a                                     ; $7327: $e2
    and b                                         ; $7328: $a0
    ld h, c                                       ; $7329: $61
    add c                                         ; $732a: $81
    nop                                           ; $732b: $00
    ld a, [$827b]                                 ; $732c: $fa $7b $82
    ld c, c                                       ; $732f: $49
    ld b, h                                       ; $7330: $44
    ld a, c                                       ; $7331: $79
    jp $c145                                      ; $7332: $c3 $45 $c1


    pop hl                                        ; $7335: $e1
    ld h, a                                       ; $7336: $67
    dec bc                                        ; $7337: $0b
    and e                                         ; $7338: $a3
    ld l, b                                       ; $7339: $68
    cp a                                          ; $733a: $bf
    ldh [$a1], a                                  ; $733b: $e0 $a1
    sub c                                         ; $733d: $91
    ld bc, $bc00                                  ; $733e: $01 $00 $bc
    ld h, a                                       ; $7341: $67
    add c                                         ; $7342: $81
    dec c                                         ; $7343: $0d
    add h                                         ; $7344: $84
    ld hl, sp-$08                                 ; $7345: $f8 $f8
    and c                                         ; $7347: $a1
    ld a, c                                       ; $7348: $79
    jr nz, jr_06d_730c                            ; $7349: $20 $c1

    pop hl                                        ; $734b: $e1
    dec [hl]                                      ; $734c: $35
    dec [hl]                                      ; $734d: $35
    ld l, h                                       ; $734e: $6c
    or a                                          ; $734f: $b7
    cp b                                          ; $7350: $b8
    pop bc                                        ; $7351: $c1
    ld b, d                                       ; $7352: $42
    rst $30                                       ; $7353: $f7
    add d                                         ; $7354: $82
    nop                                           ; $7355: $00
    db $fc                                        ; $7356: $fc
    db $ec                                        ; $7357: $ec
    ld b, $38                                     ; $7358: $06 $38
    and e                                         ; $735a: $a3
    ccf                                           ; $735b: $3f
    pop hl                                        ; $735c: $e1
    cp c                                          ; $735d: $b9
    cp d                                          ; $735e: $ba
    rra                                           ; $735f: $1f
    and e                                         ; $7360: $a3
    dec [hl]                                      ; $7361: $35
    ld l, h                                       ; $7362: $6c
    ld l, a                                       ; $7363: $6f
    ld l, [hl]                                    ; $7364: $6e
    jr c, @-$5d                                   ; $7365: $38 $a1

    ld b, d                                       ; $7367: $42
    nop                                           ; $7368: $00
    nop                                           ; $7369: $00
    sbc e                                         ; $736a: $9b
    ld a, b                                       ; $736b: $78
    ld h, a                                       ; $736c: $67
    and a                                         ; $736d: $a7
    jr c, jr_06d_7313                             ; $736e: $38 $a3

    ld b, b                                       ; $7370: $40
    ldh [$36], a                                  ; $7371: $e0 $36
    ld l, [hl]                                    ; $7373: $6e
    ld l, a                                       ; $7374: $6f
    ld l, h                                       ; $7375: $6c
    pop bc                                        ; $7376: $c1
    ld [c], a                                     ; $7377: $e2
    inc bc                                        ; $7378: $03
    sbc h                                         ; $7379: $9c
    sbc a                                         ; $737a: $9f
    cp c                                          ; $737b: $b9
    add e                                         ; $737c: $83
    nop                                           ; $737d: $00
    db $fd                                        ; $737e: $fd
    or $63                                        ; $737f: $f6 $63
    xor h                                         ; $7381: $ac
    inc bc                                        ; $7382: $03
    ei                                            ; $7383: $fb
    and c                                         ; $7384: $a1
    cp a                                          ; $7385: $bf
    ldh [$e0], a                                  ; $7386: $e0 $e0
    pop bc                                        ; $7388: $c1
    db $e3                                        ; $7389: $e3
    ld [hl+], a                                   ; $738a: $22
    ld h, d                                       ; $738b: $62
    nop                                           ; $738c: $00
    rst $38                                       ; $738d: $ff
    ld [c], a                                     ; $738e: $e2
    add h                                         ; $738f: $84
    xor h                                         ; $7390: $ac
    nop                                           ; $7391: $00
    sbc a                                         ; $7392: $9f
    sbc h                                         ; $7393: $9c
    ld de, $9c07                                  ; $7394: $11 $07 $9c
    sbc l                                         ; $7397: $9d
    sbc h                                         ; $7398: $9c
    ld a, [hl]                                    ; $7399: $7e
    ldh [$c1], a                                  ; $739a: $e0 $c1
    db $e3                                        ; $739c: $e3
    sbc $42                                       ; $739d: $de $42
    nop                                           ; $739f: $00
    rst $38                                       ; $73a0: $ff
    or $68                                        ; $73a1: $f6 $68
    rlca                                          ; $73a3: $07
    sbc [hl]                                      ; $73a4: $9e
    ld de, $b19e                                  ; $73a5: $11 $9e $b1
    ld b, b                                       ; $73a8: $40
    inc a                                         ; $73a9: $3c
    pop bc                                        ; $73aa: $c1
    ld [hl], l                                    ; $73ab: $75
    jr nz, @-$06                                  ; $73ac: $20 $f8

    jr nz, jr_06d_73b0                            ; $73ae: $20 $00

jr_06d_73b0:
    cp [hl]                                       ; $73b0: $be
    add $f6                                       ; $73b1: $c6 $f6
    ld l, h                                       ; $73b3: $6c
    sbc a                                         ; $73b4: $9f
    ld de, $203e                                  ; $73b5: $11 $3e $20
    xor d                                         ; $73b8: $aa
    ld [hl+], a                                   ; $73b9: $22
    cp d                                          ; $73ba: $ba
    ld b, b                                       ; $73bb: $40
    jp nc, Jump_000_00d3                          ; $73bc: $d2 $d3 $00

    nop                                           ; $73bf: $00
    cp a                                          ; $73c0: $bf
    or $6c                                        ; $73c1: $f6 $6c
    xor d                                         ; $73c3: $aa
    ld [hl+], a                                   ; $73c4: $22
    ld c, d                                       ; $73c5: $4a
    jp nz, Jump_000_23f8                          ; $73c6: $c2 $f8 $23

    nop                                           ; $73c9: $00
    cp a                                          ; $73ca: $bf
    or $6b                                        ; $73cb: $f6 $6b
    cp d                                          ; $73cd: $ba
    push hl                                       ; $73ce: $e5
    nop                                           ; $73cf: $00
    ld b, b                                       ; $73d0: $40
    ld h, b                                       ; $73d1: $60
    ld hl, sp+$22                                 ; $73d2: $f8 $22
    nop                                           ; $73d4: $00
    ld [hl+], a                                   ; $73d5: $22
    nop                                           ; $73d6: $00
    nop                                           ; $73d7: $00
    nop                                           ; $73d8: $00
    pop bc                                        ; $73d9: $c1
    nop                                           ; $73da: $00
    rst $38                                       ; $73db: $ff
    rst $38                                       ; $73dc: $ff
    rst $38                                       ; $73dd: $ff
    rst $38                                       ; $73de: $ff
    rst $38                                       ; $73df: $ff
    rst $38                                       ; $73e0: $ff
    rst $38                                       ; $73e1: $ff
    rst $38                                       ; $73e2: $ff
    rst $38                                       ; $73e3: $ff
    rst $38                                       ; $73e4: $ff
    nop                                           ; $73e5: $00
    nop                                           ; $73e6: $00
    dec c                                         ; $73e7: $0d
    add b                                         ; $73e8: $80
    cp $e0                                        ; $73e9: $fe $e0
    nop                                           ; $73eb: $00
    ld b, b                                       ; $73ec: $40
    ret c                                         ; $73ed: $d8

    push hl                                       ; $73ee: $e5
    rst $30                                       ; $73ef: $f7
    and $ff                                       ; $73f0: $e6 $ff
    rst $38                                       ; $73f2: $ff
    rst $38                                       ; $73f3: $ff
    rst $30                                       ; $73f4: $f7
    nop                                           ; $73f5: $00
    nop                                           ; $73f6: $00
    nop                                           ; $73f7: $00
    ld bc, $0f00                                  ; $73f8: $01 $00 $0f
    ld [de], a                                    ; $73fb: $12
    ld bc, $1101                                  ; $73fc: $01 $01 $11
    ld [de], a                                    ; $73ff: $12
    ld bc, $1602                                  ; $7400: $01 $02 $16
    ld [de], a                                    ; $7403: $12
    ld [bc], a                                    ; $7404: $02
    inc bc                                        ; $7405: $03
    db $10                                        ; $7406: $10
    inc de                                        ; $7407: $13
    ld bc, $1104                                  ; $7408: $01 $04 $11
    inc de                                        ; $740b: $13
    ld bc, $1605                                  ; $740c: $01 $05 $16
    inc de                                        ; $740f: $13
    ld bc, $1706                                  ; $7410: $01 $06 $17
    inc de                                        ; $7413: $13
    ld bc, $1807                                  ; $7414: $01 $07 $18
    inc de                                        ; $7417: $13
    ld [bc], a                                    ; $7418: $02
    ld [$140f], sp                                ; $7419: $08 $0f $14
    ld bc, $1709                                  ; $741c: $01 $09 $17
    inc d                                         ; $741f: $14
    ld bc, $180a                                  ; $7420: $01 $0a $18
    inc d                                         ; $7423: $14
    ld bc, $1b0b                                  ; $7424: $01 $0b $1b
    rla                                           ; $7427: $17
    ld bc, $1c0c                                  ; $7428: $01 $0c $1c
    rla                                           ; $742b: $17
    ld bc, $1c0d                                  ; $742c: $01 $0d $1c
    jr @+$03                                      ; $742f: $18 $01

    ld c, $1d                                     ; $7431: $0e $1d
    add hl, de                                    ; $7433: $19
    ld bc, $1d0f                                  ; $7434: $01 $0f $1d
    ld a, [de]                                    ; $7437: $1a
    ld bc, $1d10                                  ; $7438: $01 $10 $1d
    dec de                                        ; $743b: $1b
    ld bc, $1e11                                  ; $743c: $01 $11 $1e
    dec de                                        ; $743f: $1b
    ld bc, $1812                                  ; $7440: $01 $12 $18
    inc e                                         ; $7443: $1c
    ld bc, $1913                                  ; $7444: $01 $13 $19
    inc e                                         ; $7447: $1c
    ld bc, $1d14                                  ; $7448: $01 $14 $1d
    inc e                                         ; $744b: $1c
    ld bc, $1e15                                  ; $744c: $01 $15 $1e
    inc e                                         ; $744f: $1c
    ld bc, $1916                                  ; $7450: $01 $16 $19
    dec e                                         ; $7453: $1d
    ld bc, $1d17                                  ; $7454: $01 $17 $1d
    dec e                                         ; $7457: $1d
    ld [bc], a                                    ; $7458: $02
    jr @+$21                                      ; $7459: $18 $1f

    dec e                                         ; $745b: $1d
    ld bc, $2019                                  ; $745c: $01 $19 $20
    dec e                                         ; $745f: $1d
    ld [bc], a                                    ; $7460: $02
    ld a, [de]                                    ; $7461: $1a
    jr @+$20                                      ; $7462: $18 $1e

    ld bc, $191b                                  ; $7464: $01 $1b $19
    ld e, $01                                     ; $7467: $1e $01
    inc e                                         ; $7469: $1c
    inc e                                         ; $746a: $1c
    ld e, $02                                     ; $746b: $1e $02
    dec e                                         ; $746d: $1d
    ld e, $1e                                     ; $746e: $1e $1e
    ld bc, $1f1e                                  ; $7470: $01 $1e $1f
    ld e, $01                                     ; $7473: $1e $01
    rra                                           ; $7475: $1f
    jr nz, @+$20                                  ; $7476: $20 $1e

    ld bc, $2120                                  ; $7478: $01 $20 $21
    ld e, $01                                     ; $747b: $1e $01
    ld hl, $1e22                                  ; $747d: $21 $22 $1e
    ld bc, $1822                                  ; $7480: $01 $22 $18
    rra                                           ; $7483: $1f
    ld bc, $1b23                                  ; $7484: $01 $23 $1b
    rra                                           ; $7487: $1f
    ld bc, $1c24                                  ; $7488: $01 $24 $1c
    rra                                           ; $748b: $1f
    ld [bc], a                                    ; $748c: $02
    dec h                                         ; $748d: $25
    dec e                                         ; $748e: $1d
    rra                                           ; $748f: $1f
    ld bc, $1e26                                  ; $7490: $01 $26 $1e
    rra                                           ; $7493: $1f
    ld bc, $1f27                                  ; $7494: $01 $27 $1f
    rra                                           ; $7497: $1f
    ld bc, $2028                                  ; $7498: $01 $28 $20
    rra                                           ; $749b: $1f
    ld bc, $2129                                  ; $749c: $01 $29 $21
    rra                                           ; $749f: $1f
    ld bc, $222a                                  ; $74a0: $01 $2a $22
    rra                                           ; $74a3: $1f
    ld bc, $232b                                  ; $74a4: $01 $2b $23
    rra                                           ; $74a7: $1f
    ld bc, $242c                                  ; $74a8: $01 $2c $24
    rra                                           ; $74ab: $1f
    ld bc, $182d                                  ; $74ac: $01 $2d $18
    jr nz, @+$03                                  ; $74af: $20 $01

    ld l, $1c                                     ; $74b1: $2e $1c
    jr nz, jr_06d_74b6                            ; $74b3: $20 $01

    cpl                                           ; $74b5: $2f

jr_06d_74b6:
    dec e                                         ; $74b6: $1d
    jr nz, @+$03                                  ; $74b7: $20 $01

    jr nc, jr_06d_74d4                            ; $74b9: $30 $19

    ld hl, $3101                                  ; $74bb: $21 $01 $31
    ld a, [de]                                    ; $74be: $1a
    ld [hl+], a                                   ; $74bf: $22
    ld bc, $2132                                  ; $74c0: $01 $32 $21
    inc hl                                        ; $74c3: $23
    ld [bc], a                                    ; $74c4: $02
    inc sp                                        ; $74c5: $33
    jr nz, jr_06d_74ec                            ; $74c6: $20 $24

    ld bc, $2134                                  ; $74c8: $01 $34 $21
    inc h                                         ; $74cb: $24
    ld bc, $2235                                  ; $74cc: $01 $35 $22
    inc h                                         ; $74cf: $24
    ld bc, $2136                                  ; $74d0: $01 $36 $21
    dec h                                         ; $74d3: $25

jr_06d_74d4:
    ld bc, $2237                                  ; $74d4: $01 $37 $22
    dec h                                         ; $74d7: $25
    ld bc, $2338                                  ; $74d8: $01 $38 $23
    dec h                                         ; $74db: $25
    ld bc, $2339                                  ; $74dc: $01 $39 $23
    ld h, $01                                     ; $74df: $26 $01
    ld a, [hl-]                                   ; $74e1: $3a
    daa                                           ; $74e2: $27
    ld a, [hl+]                                   ; $74e3: $2a
    ld bc, $273b                                  ; $74e4: $01 $3b $27
    dec hl                                        ; $74e7: $2b
    ld bc, $283c                                  ; $74e8: $01 $3c $28
    dec hl                                        ; $74eb: $2b

jr_06d_74ec:
    ld bc, $283d                                  ; $74ec: $01 $3d $28
    inc l                                         ; $74ef: $2c
    ld bc, $293e                                  ; $74f0: $01 $3e $29
    inc l                                         ; $74f3: $2c
    ld bc, $283f                                  ; $74f4: $01 $3f $28
    dec l                                         ; $74f7: $2d
    ld bc, $2940                                  ; $74f8: $01 $40 $29
    dec l                                         ; $74fb: $2d
    ld bc, $2f41                                  ; $74fc: $01 $41 $2f
    cpl                                           ; $74ff: $2f
    ld bc, $2f42                                  ; $7500: $01 $42 $2f
    jr nc, jr_06d_7506                            ; $7503: $30 $01

    ld b, e                                       ; $7505: $43

jr_06d_7506:
    jr nc, jr_06d_7538                            ; $7506: $30 $30

    ld bc, $3044                                  ; $7508: $01 $44 $30
    ld sp, $ffff                                  ; $750b: $31 $ff $ff
    rst $38                                       ; $750e: $ff
    rla                                           ; $750f: $17
    ld [hl], l                                    ; $7510: $75
    jp hl                                         ; $7511: $e9


    ld [hl], a                                    ; $7512: $77
    cp h                                          ; $7513: $bc
    ld a, e                                       ; $7514: $7b
    db $db                                        ; $7515: $db
    ld a, e                                       ; $7516: $7b
    ccf                                           ; $7517: $3f
    ld c, $0e                                     ; $7518: $0e $0e
    dec c                                         ; $751a: $0d
    dec c                                         ; $751b: $0d
    dec c                                         ; $751c: $0d
    ld c, $ff                                     ; $751d: $0e $ff
    db $e3                                        ; $751f: $e3
    or $ff                                        ; $7520: $f6 $ff
    nop                                           ; $7522: $00
    db $ec                                        ; $7523: $ec
    rst $28                                       ; $7524: $ef
    db $dd                                        ; $7525: $dd
    pop hl                                        ; $7526: $e1
    rst $10                                       ; $7527: $d7
    db $e3                                        ; $7528: $e3
    or $ff                                        ; $7529: $f6 $ff
    or $f6                                        ; $752b: $f6 $f6
    sbc c                                         ; $752d: $99
    rst $38                                       ; $752e: $ff
    or $f9                                        ; $752f: $f6 $f9
    sbc c                                         ; $7531: $99
    rst $38                                       ; $7532: $ff
    nop                                           ; $7533: $00
    add l                                         ; $7534: $85
    rst $38                                       ; $7535: $ff
    or $ff                                        ; $7536: $f6 $ff

jr_06d_7538:
    nop                                           ; $7538: $00
    rst $38                                       ; $7539: $ff
    or $ff                                        ; $753a: $f6 $ff
    ld a, e                                       ; $753c: $7b
    rst $38                                       ; $753d: $ff
    or $ff                                        ; $753e: $f6 $ff
    nop                                           ; $7540: $00
    rst $38                                       ; $7541: $ff
    or $ff                                        ; $7542: $f6 $ff
    inc h                                         ; $7544: $24
    add l                                         ; $7545: $85
    rst $38                                       ; $7546: $ff
    add l                                         ; $7547: $85
    db $e4                                        ; $7548: $e4
    ld c, l                                       ; $7549: $4d
    rst $38                                       ; $754a: $ff
    db $e4                                        ; $754b: $e4
    or $e1                                        ; $754c: $f6 $e1
    dec c                                         ; $754e: $0d
    or $e4                                        ; $754f: $f6 $e4
    nop                                           ; $7551: $00
    rst $38                                       ; $7552: $ff
    inc b                                         ; $7553: $04
    add l                                         ; $7554: $85
    rst $20                                       ; $7555: $e7
    add $e1                                       ; $7556: $c6 $e1
    dec c                                         ; $7558: $0d
    jp nz, $d4e2                                  ; $7559: $c2 $e2 $d4

    db $e3                                        ; $755c: $e3
    or b                                          ; $755d: $b0
    ldh [$7b], a                                  ; $755e: $e0 $7b
    rst $38                                       ; $7560: $ff
    ld h, a                                       ; $7561: $67
    add sp, $00                                   ; $7562: $e8 $00
    cp $c1                                        ; $7564: $fe $c1
    ret nz                                        ; $7566: $c0

    pop hl                                        ; $7567: $e1
    ld hl, sp-$1b                                 ; $7568: $f8 $e5
    ld a, d                                       ; $756a: $7a
    ldh [rP1], a                                  ; $756b: $e0 $00
    rst $38                                       ; $756d: $ff
    ld a, [bc]                                    ; $756e: $0a
    rst $20                                       ; $756f: $e7
    jp nc, $c0e2                                  ; $7570: $d2 $e2 $c0

    jp hl                                         ; $7573: $e9


    nop                                           ; $7574: $00
    add l                                         ; $7575: $85
    rst $38                                       ; $7576: $ff
    add l                                         ; $7577: $85
    add sp, $0f                                   ; $7578: $e8 $0f
    ldh [$f9], a                                  ; $757a: $e0 $f9
    db $e4                                        ; $757c: $e4
    ld hl, sp-$1a                                 ; $757d: $f8 $e6
    ld [hl], $e5                                  ; $757f: $36 $e5
    nop                                           ; $7581: $00
    rst $38                                       ; $7582: $ff

jr_06d_7583:
    jp nz, $1ce1                                  ; $7583: $c2 $e1 $1c

    db $10                                        ; $7586: $10
    db $e3                                        ; $7587: $e3
    ret z                                         ; $7588: $c8

    jp $2d4d                                      ; $7589: $c3 $4d $2d


    dec l                                         ; $758c: $2d
    jp nz, Jump_06d_7bc4                          ; $758d: $c2 $c4 $7b

    rst $38                                       ; $7590: $ff
    add l                                         ; $7591: $85
    push bc                                       ; $7592: $c5
    ld d, $8a                                     ; $7593: $16 $8a
    jp nz, $0b6d                                  ; $7595: $c2 $6d $0b

    rst $38                                       ; $7598: $ff
    db $e4                                        ; $7599: $e4
    ld c, l                                       ; $759a: $4d
    cp a                                          ; $759b: $bf
    ldh [$f0], a                                  ; $759c: $e0 $f0
    jp $cc7b                                      ; $759e: $c3 $7b $cc


    nop                                           ; $75a1: $00
    add l                                         ; $75a2: $85
    call nc, $c240                                ; $75a3: $d4 $40 $c2
    pop bc                                        ; $75a6: $c1
    rst $20                                       ; $75a7: $e7
    cp a                                          ; $75a8: $bf
    ld [c], a                                     ; $75a9: $e2
    ret nz                                        ; $75aa: $c0

    db $e4                                        ; $75ab: $e4
    ld a, e                                       ; $75ac: $7b
    ret z                                         ; $75ad: $c8

    sbc c                                         ; $75ae: $99
    or [hl]                                       ; $75af: $b6
    add d                                         ; $75b0: $82
    push hl                                       ; $75b1: $e5
    dec de                                        ; $75b2: $1b
    dec c                                         ; $75b3: $0d
    dec l                                         ; $75b4: $2d
    ld a, b                                       ; $75b5: $78
    pop bc                                        ; $75b6: $c1
    dec l                                         ; $75b7: $2d
    dec c                                         ; $75b8: $0d
    ld a, [hl]                                    ; $75b9: $7e
    ld [c], a                                     ; $75ba: $e2
    jp hl                                         ; $75bb: $e9


    jp $ff00                                      ; $75bc: $c3 $00 $ff


    ld e, h                                       ; $75bf: $5c
    ld b, $c3                                     ; $75c0: $06 $c3
    ld b, e                                       ; $75c2: $43
    pop hl                                        ; $75c3: $e1
    dec l                                         ; $75c4: $2d
    dec c                                         ; $75c5: $0d
    dec l                                         ; $75c6: $2d
    cp a                                          ; $75c7: $bf
    ldh [$0b], a                                  ; $75c8: $e0 $0b
    inc [hl]                                      ; $75ca: $34
    and b                                         ; $75cb: $a0
    and b                                         ; $75cc: $a0
    dec a                                         ; $75cd: $3d
    db $e3                                        ; $75ce: $e3
    add hl, hl                                    ; $75cf: $29
    and c                                         ; $75d0: $a1
    db $fc                                        ; $75d1: $fc
    and d                                         ; $75d2: $a2
    nop                                           ; $75d3: $00
    rst $38                                       ; $75d4: $ff
    adc l                                         ; $75d5: $8d
    and b                                         ; $75d6: $a0
    dec bc                                        ; $75d7: $0b
    add c                                         ; $75d8: $81
    pop hl                                        ; $75d9: $e1
    dec bc                                        ; $75da: $0b
    nop                                           ; $75db: $00
    pop bc                                        ; $75dc: $c1
    ld [c], a                                     ; $75dd: $e2
    cp a                                          ; $75de: $bf
    ld [c], a                                     ; $75df: $e2
    ret nz                                        ; $75e0: $c0

    pop hl                                        ; $75e1: $e1
    ld a, e                                       ; $75e2: $7b
    xor [hl]                                      ; $75e3: $ae
    nop                                           ; $75e4: $00
    or $c0                                        ; $75e5: $f6 $c0
    ld [c], a                                     ; $75e7: $e2
    rst $38                                       ; $75e8: $ff
    db $e4                                        ; $75e9: $e4
    ld a, [hl]                                    ; $75ea: $7e
    db $e3                                        ; $75eb: $e3
    db $10                                        ; $75ec: $10
    ret nz                                        ; $75ed: $c0

    db $e4                                        ; $75ee: $e4
    nop                                           ; $75ef: $00
    rst $38                                       ; $75f0: $ff
    inc c                                         ; $75f1: $0c
    and e                                         ; $75f2: $a3
    ret nz                                        ; $75f3: $c0

    db $e3                                        ; $75f4: $e3
    dec hl                                        ; $75f5: $2b
    cp a                                          ; $75f6: $bf
    push hl                                       ; $75f7: $e5
    add b                                         ; $75f8: $80
    pop hl                                        ; $75f9: $e1
    nop                                           ; $75fa: $00
    rst $18                                       ; $75fb: $df
    jr c, jr_06d_7583                             ; $75fc: $38 $85

    add a                                         ; $75fe: $87
    ld b, b                                       ; $75ff: $40
    pop hl                                        ; $7600: $e1
    ld b, d                                       ; $7601: $42
    ret nz                                        ; $7602: $c0

    dec hl                                        ; $7603: $2b
    dec hl                                        ; $7604: $2b
    dec hl                                        ; $7605: $2b
    ccf                                           ; $7606: $3f
    push hl                                       ; $7607: $e5
    nop                                           ; $7608: $00
    pop hl                                        ; $7609: $e1
    ld [$df00], sp                                ; $760a: $08 $00 $df
    adc [hl]                                      ; $760d: $8e
    add [hl]                                      ; $760e: $86
    inc b                                         ; $760f: $04
    jp $fe6b                                      ; $7610: $c3 $6b $fe


    and c                                         ; $7613: $a1
    push af                                       ; $7614: $f5
    pop bc                                        ; $7615: $c1
    nop                                           ; $7616: $00
    rst $38                                       ; $7617: $ff
    add l                                         ; $7618: $85
    add $78                                       ; $7619: $c6 $78
    sub h                                         ; $761b: $94
    add c                                         ; $761c: $81
    push bc                                       ; $761d: $c5
    and e                                         ; $761e: $a3
    ld b, b                                       ; $761f: $40
    ldh [rWX], a                                  ; $7620: $e0 $4b
    ld c, e                                       ; $7622: $4b
    ld l, e                                       ; $7623: $6b
    ld c, e                                       ; $7624: $4b
    ld a, h                                       ; $7625: $7c
    pop bc                                        ; $7626: $c1
    jr nz, jr_06d_7629                            ; $7627: $20 $00

jr_06d_7629:
    rst $38                                       ; $7629: $ff
    db $ec                                        ; $762a: $ec
    ld h, c                                       ; $762b: $61
    sbc e                                         ; $762c: $9b
    and l                                         ; $762d: $a5
    add [hl]                                      ; $762e: $86
    and h                                         ; $762f: $a4
    ld b, [hl]                                    ; $7630: $46
    pop bc                                        ; $7631: $c1
    ld l, e                                       ; $7632: $6b
    ret nz                                        ; $7633: $c0

    pop hl                                        ; $7634: $e1
    nop                                           ; $7635: $00
    rst $38                                       ; $7636: $ff
    ld a, b                                       ; $7637: $78
    adc a                                         ; $7638: $8f
    ld h, l                                       ; $7639: $65
    ld c, e                                       ; $763a: $4b
    add d                                         ; $763b: $82
    ld b, a                                       ; $763c: $47
    and l                                         ; $763d: $a5
    dec hl                                        ; $763e: $2b
    dec bc                                        ; $763f: $0b
    dec hl                                        ; $7640: $2b
    ld l, e                                       ; $7641: $6b
    rst $38                                       ; $7642: $ff
    and e                                         ; $7643: $a3
    ld [bc], a                                    ; $7644: $02
    ld a, [$6da0]                                 ; $7645: $fa $a0 $6d
    nop                                           ; $7648: $00
    rst $38                                       ; $7649: $ff
    and c                                         ; $764a: $a1
    and d                                         ; $764b: $a2
    dec b                                         ; $764c: $05
    ld h, b                                       ; $764d: $60
    push bc                                       ; $764e: $c5
    and d                                         ; $764f: $a2
    adc d                                         ; $7650: $8a
    jp nz, $e0c1                                  ; $7651: $c2 $c1 $e0

    nop                                           ; $7654: $00
    scf                                           ; $7655: $37
    jp nz, $e0c1                                  ; $7656: $c2 $c1 $e0

    nop                                           ; $7659: $00
    cp a                                          ; $765a: $bf
    and b                                         ; $765b: $a0
    and d                                         ; $765c: $a2
    push bc                                       ; $765d: $c5
    and [hl]                                      ; $765e: $a6
    ret                                           ; $765f: $c9


    and h                                         ; $7660: $a4
    add e                                         ; $7661: $83
    and d                                         ; $7662: $a2
    add d                                         ; $7663: $82
    pop hl                                        ; $7664: $e1
    ld d, b                                       ; $7665: $50
    nop                                           ; $7666: $00
    cp a                                          ; $7667: $bf
    ld a, [bc]                                    ; $7668: $0a
    ld h, d                                       ; $7669: $62
    push bc                                       ; $766a: $c5
    and d                                         ; $766b: $a2
    add e                                         ; $766c: $83
    ld [c], a                                     ; $766d: $e2
    dec hl                                        ; $766e: $2b
    ld [$2ba1], sp                                ; $766f: $08 $a1 $2b
    rst $30                                       ; $7672: $f7
    jp Jump_06d_6d61                              ; $7673: $c3 $61 $6d


    ldh a, [$64]                                  ; $7676: $f0 $64
    ld l, c                                       ; $7678: $69
    ld h, e                                       ; $7679: $63
    nop                                           ; $767a: $00
    ret c                                         ; $767b: $d8

    add l                                         ; $767c: $85
    and e                                         ; $767d: $a3
    dec c                                         ; $767e: $0d
    dec l                                         ; $767f: $2d
    add h                                         ; $7680: $84
    pop bc                                        ; $7681: $c1
    ld [bc], a                                    ; $7682: $02
    call nz, Call_06d_4be1                        ; $7683: $c4 $e1 $4b
    add d                                         ; $7686: $82
    db $e4                                        ; $7687: $e4
    ldh a, [$64]                                  ; $7688: $f0 $64
    jr z, jr_06d_76d1                             ; $768a: $28 $45

    nop                                           ; $768c: $00
    push af                                       ; $768d: $f5
    add l                                         ; $768e: $85
    and h                                         ; $768f: $a4
    ld bc, $0262                                  ; $7690: $01 $62 $02
    push bc                                       ; $7693: $c5
    ldh [rOCPD], a                                ; $7694: $e0 $6b
    pop bc                                        ; $7696: $c1
    pop bc                                        ; $7697: $c1
    add d                                         ; $7698: $82
    ld [c], a                                     ; $7699: $e2
    ld h, h                                       ; $769a: $64
    jp nz, Jump_06d_7e00                          ; $769b: $c2 $00 $7e

    sbc d                                         ; $769e: $9a
    ld b, e                                       ; $769f: $43
    ld b, a                                       ; $76a0: $47
    add b                                         ; $76a1: $80
    ld [bc], a                                    ; $76a2: $02
    ret nz                                        ; $76a3: $c0

    ld b, c                                       ; $76a4: $41
    dec hl                                        ; $76a5: $2b
    jp nz, Jump_06d_7fc2                          ; $76a6: $c2 $c2 $7f

    add b                                         ; $76a9: $80
    add [hl]                                      ; $76aa: $86
    and e                                         ; $76ab: $a3
    add c                                         ; $76ac: $81
    ld b, e                                       ; $76ad: $43
    add l                                         ; $76ae: $85
    cp e                                          ; $76af: $bb
    adc d                                         ; $76b0: $8a
    ld h, [hl]                                    ; $76b1: $66
    nop                                           ; $76b2: $00
    ld c, h                                       ; $76b3: $4c
    add e                                         ; $76b4: $83
    cp l                                          ; $76b5: $bd
    add e                                         ; $76b6: $83
    add [hl]                                      ; $76b7: $86
    and e                                         ; $76b8: $a3
    nop                                           ; $76b9: $00
    ld a, $e0                                     ; $76ba: $3e $e0
    inc hl                                        ; $76bc: $23
    add d                                         ; $76bd: $82
    db $e4                                        ; $76be: $e4
    ret                                           ; $76bf: $c9


    jp $a0ff                                      ; $76c0: $c3 $ff $a0


    nop                                           ; $76c3: $00
    ld b, $a8                                     ; $76c4: $06 $a8
    ld a, e                                       ; $76c6: $7b
    dec a                                         ; $76c7: $3d
    adc d                                         ; $76c8: $8a
    ld h, [hl]                                    ; $76c9: $66
    ret nz                                        ; $76ca: $c0

    rst $20                                       ; $76cb: $e7
    jp nz, $86c2                                  ; $76cc: $c2 $c2 $86

    and d                                         ; $76cf: $a2
    add l                                         ; $76d0: $85

jr_06d_76d1:
    xor h                                         ; $76d1: $ac
    nop                                           ; $76d2: $00
    ld d, c                                       ; $76d3: $51
    nop                                           ; $76d4: $00
    adc d                                         ; $76d5: $8a
    ld h, h                                       ; $76d6: $64
    rst $08                                       ; $76d7: $cf
    ld h, [hl]                                    ; $76d8: $66
    ld b, l                                       ; $76d9: $45
    and c                                         ; $76da: $a1
    ret nz                                        ; $76db: $c0

    db $e4                                        ; $76dc: $e4
    nop                                           ; $76dd: $00
    ccf                                           ; $76de: $3f
    inc d                                         ; $76df: $14
    ld b, h                                       ; $76e0: $44
    pop bc                                        ; $76e1: $c1
    push hl                                       ; $76e2: $e5
    ld b, l                                       ; $76e3: $45
    jp nz, Boot                                   ; $76e4: $c2 $00 $01

    ld h, b                                       ; $76e7: $60
    inc b                                         ; $76e8: $04
    ld h, d                                       ; $76e9: $62
    nop                                           ; $76ea: $00
    rst $38                                       ; $76eb: $ff
    db $10                                        ; $76ec: $10
    ld h, $ce                                     ; $76ed: $26 $ce
    call nz, $8348                                ; $76ef: $c4 $48 $83
    ret nz                                        ; $76f2: $c0

    ld b, d                                       ; $76f3: $42
    ld [bc], a                                    ; $76f4: $02
    call nz, Call_000_00f0                        ; $76f5: $c4 $f0 $00
    rst $38                                       ; $76f8: $ff
    push af                                       ; $76f9: $f5
    ld [bc], a                                    ; $76fa: $02
    ld c, d                                       ; $76fb: $4a
    add e                                         ; $76fc: $83
    ld [$4b80], sp                                ; $76fd: $08 $80 $4b
    dec bc                                        ; $7700: $0b
    ld c, e                                       ; $7701: $4b
    ld l, e                                       ; $7702: $6b
    ld b, b                                       ; $7703: $40
    jp $0142                                      ; $7704: $c3 $42 $01


    db $e4                                        ; $7707: $e4
    nop                                           ; $7708: $00
    rst $38                                       ; $7709: $ff
    ld [hl], c                                    ; $770a: $71
    ld [hl+], a                                   ; $770b: $22
    jp nc, $4966                                  ; $770c: $d2 $66 $49

    add b                                         ; $770f: $80
    dec l                                         ; $7710: $2d
    add d                                         ; $7711: $82
    ld b, b                                       ; $7712: $40
    nop                                           ; $7713: $00
    ret nz                                        ; $7714: $c0

    db $e4                                        ; $7715: $e4
    add l                                         ; $7716: $85
    rst $38                                       ; $7717: $ff
    inc d                                         ; $7718: $14
    inc h                                         ; $7719: $24
    ld c, c                                       ; $771a: $49
    add h                                         ; $771b: $84
    ld b, d                                       ; $771c: $42
    db $e4                                        ; $771d: $e4
    jp nz, $fb83                                  ; $771e: $c2 $83 $fb

    jr nz, jr_06d_7792                            ; $7721: $20 $6f

    inc bc                                        ; $7723: $03
    nop                                           ; $7724: $00
    nop                                           ; $7725: $00
    ld a, [$63e3]                                 ; $7726: $fa $e3 $63
    pop bc                                        ; $7729: $c1
    db $e4                                        ; $772a: $e4
    jp z, $c782                                   ; $772b: $ca $82 $c7

    ld b, [hl]                                    ; $772e: $46
    ret nz                                        ; $772f: $c0

    push hl                                       ; $7730: $e5
    adc $12                                       ; $7731: $ce $12
    adc a                                         ; $7733: $8f
    dec b                                         ; $7734: $05
    nop                                           ; $7735: $00
    sbc e                                         ; $7736: $9b
    db $e3                                        ; $7737: $e3
    adc [hl]                                      ; $7738: $8e
    add l                                         ; $7739: $85
    adc c                                         ; $773a: $89
    add b                                         ; $773b: $80
    add $26                                       ; $773c: $c6 $26
    add [hl]                                      ; $773e: $86
    inc hl                                        ; $773f: $23
    nop                                           ; $7740: $00
    ld sp, hl                                     ; $7741: $f9
    ret nz                                        ; $7742: $c0

    jp hl                                         ; $7743: $e9


    ld c, a                                       ; $7744: $4f
    add c                                         ; $7745: $81
    nop                                           ; $7746: $00
    ld sp, hl                                     ; $7747: $f9
    db $e3                                        ; $7748: $e3
    rst $00                                       ; $7749: $c7
    daa                                           ; $774a: $27
    ld a, [bc]                                    ; $774b: $0a
    ld c, d                                       ; $774c: $4a
    nop                                           ; $774d: $00
    ld [hl], $98                                  ; $774e: $36 $98
    inc hl                                        ; $7750: $23
    ld b, [hl]                                    ; $7751: $46
    and h                                         ; $7752: $a4
    ld b, l                                       ; $7753: $45
    and d                                         ; $7754: $a2
    cp a                                          ; $7755: $bf
    ld h, e                                       ; $7756: $63
    ld [$8304], sp                                ; $7757: $08 $04 $83
    nop                                           ; $775a: $00
    rst $18                                       ; $775b: $df
    jp c, Jump_000_2da1                           ; $775c: $da $a1 $2d

    ld b, [hl]                                    ; $775f: $46
    pop bc                                        ; $7760: $c1
    ld a, [hl]                                    ; $7761: $7e
    and $04                                       ; $7762: $e6 $04
    add a                                         ; $7764: $87
    ret c                                         ; $7765: $d8

    ld [hl], $02                                  ; $7766: $36 $02
    ld [hl-], a                                   ; $7768: $32
    dec hl                                        ; $7769: $2b
    ld c, l                                       ; $776a: $4d
    cp a                                          ; $776b: $bf
    push hl                                       ; $776c: $e5
    ret z                                         ; $776d: $c8

    jr nz, @-$47                                  ; $776e: $20 $b7

    db $e4                                        ; $7770: $e4
    inc b                                         ; $7771: $04
    add e                                         ; $7772: $83
    ld d, e                                       ; $7773: $53
    dec d                                         ; $7774: $15
    nop                                           ; $7775: $00
    adc a                                         ; $7776: $8f
    nop                                           ; $7777: $00
    ld a, [hl]                                    ; $7778: $7e
    db $e3                                        ; $7779: $e3
    pop bc                                        ; $777a: $c1
    add sp, $04                                   ; $777b: $e8 $04
    add a                                         ; $777d: $87
    nop                                           ; $777e: $00
    rst $18                                       ; $777f: $df
    ld a, [hl]                                    ; $7780: $7e
    and $82                                       ; $7781: $e6 $82
    ld [$14d8], a                                 ; $7783: $ea $d8 $14
    nop                                           ; $7786: $00
    adc [hl]                                      ; $7787: $8e
    nop                                           ; $7788: $00
    cp $64                                        ; $7789: $fe $64
    db $fc                                        ; $778b: $fc
    pop bc                                        ; $778c: $c1
    add d                                         ; $778d: $82
    ld [$19d8], a                                 ; $778e: $ea $d8 $19
    ld a, e                                       ; $7791: $7b

jr_06d_7792:
    rrca                                          ; $7792: $0f
    db $fc                                        ; $7793: $fc
    ret nz                                        ; $7794: $c0

    rst $38                                       ; $7795: $ff
    push hl                                       ; $7796: $e5
    ld [$0062], sp                                ; $7797: $08 $62 $00
    add l                                         ; $779a: $85
    ld a, [c]                                     ; $779b: $f2
    nop                                           ; $779c: $00
    ld [hl], $16                                  ; $779d: $36 $16
    ld h, h                                       ; $779f: $64
    ld [hl-], a                                   ; $77a0: $32
    and b                                         ; $77a1: $a0
    ld l, l                                       ; $77a2: $6d
    and e                                         ; $77a3: $a3
    add l                                         ; $77a4: $85
    rst $38                                       ; $77a5: $ff
    ld a, e                                       ; $77a6: $7b
    ld l, h                                       ; $77a7: $6c
    ret z                                         ; $77a8: $c8

    db $e4                                        ; $77a9: $e4

jr_06d_77aa:
    nop                                           ; $77aa: $00
    or d                                          ; $77ab: $b2
    ld h, c                                       ; $77ac: $61
    di                                            ; $77ad: $f3
    dec b                                         ; $77ae: $05
    nop                                           ; $77af: $00
    rst $38                                       ; $77b0: $ff
    nop                                           ; $77b1: $00
    ld c, b                                       ; $77b2: $48
    ret z                                         ; $77b3: $c8

    push hl                                       ; $77b4: $e5
    db $fc                                        ; $77b5: $fc
    push hl                                       ; $77b6: $e5
    add l                                         ; $77b7: $85
    db $d3                                        ; $77b8: $d3
    ld a, e                                       ; $77b9: $7b
    rra                                           ; $77ba: $1f
    nop                                           ; $77bb: $00
    rst $38                                       ; $77bc: $ff
    add sp, $00                                   ; $77bd: $e8 $00
    rst $38                                       ; $77bf: $ff
    ld a, e                                       ; $77c0: $7b
    dec c                                         ; $77c1: $0d
    cp $ea                                        ; $77c2: $fe $ea
    add l                                         ; $77c4: $85
    rst $38                                       ; $77c5: $ff
    or $ff                                        ; $77c6: $f6 $ff
    nop                                           ; $77c8: $00
    rst $38                                       ; $77c9: $ff
    or $ff                                        ; $77ca: $f6 $ff
    nop                                           ; $77cc: $00
    ld a, e                                       ; $77cd: $7b
    rst $38                                       ; $77ce: $ff
    or $ff                                        ; $77cf: $f6 $ff
    nop                                           ; $77d1: $00
    rst $38                                       ; $77d2: $ff
    or $ff                                        ; $77d3: $f6 $ff
    add l                                         ; $77d5: $85
    rst $38                                       ; $77d6: $ff
    or $ff                                        ; $77d7: $f6 $ff
    nop                                           ; $77d9: $00
    rst $38                                       ; $77da: $ff
    or $ff                                        ; $77db: $f6 $ff
    nop                                           ; $77dd: $00
    sbc c                                         ; $77de: $99
    rst $38                                       ; $77df: $ff
    or $ff                                        ; $77e0: $f6 $ff
    sbc c                                         ; $77e2: $99
    rst $38                                       ; $77e3: $ff
    add l                                         ; $77e4: $85
    ld hl, sp+$00                                 ; $77e5: $f8 $00
    nop                                           ; $77e7: $00
    nop                                           ; $77e8: $00
    rst $38                                       ; $77e9: $ff
    call c, $a0dd                                 ; $77ea: $dc $dd $a0
    sbc $df                                       ; $77ed: $de $df
    ldh [$e1], a                                  ; $77ef: $e0 $e1
    ld [c], a                                     ; $77f1: $e2
    di                                            ; $77f2: $f3
    db $e3                                        ; $77f3: $e3
    db $e4                                        ; $77f4: $e4
    or $ff                                        ; $77f5: $f6 $ff
    db $ec                                        ; $77f7: $ec
    pop af                                        ; $77f8: $f1
    push hl                                       ; $77f9: $e5
    and $e7                                       ; $77fa: $e6 $e7
    and b                                         ; $77fc: $a0
    ccf                                           ; $77fd: $3f
    add sp, -$17                                  ; $77fe: $e8 $e9
    ld [$eceb], a                                 ; $7800: $ea $eb $ec
    and b                                         ; $7803: $a0
    or $ff                                        ; $7804: $f6 $ff
    db $ec                                        ; $7806: $ec
    pop af                                        ; $7807: $f1
    nop                                           ; $7808: $00
    sbc c                                         ; $7809: $99
    rst $38                                       ; $780a: $ff
    or $fb                                        ; $780b: $f6 $fb
    sbc c                                         ; $780d: $99
    rst $38                                       ; $780e: $ff
    or $fb                                        ; $780f: $f6 $fb
    sbc c                                         ; $7811: $99
    rst $38                                       ; $7812: $ff
    nop                                           ; $7813: $00
    rst $38                                       ; $7814: $ff
    sbc c                                         ; $7815: $99
    rst $38                                       ; $7816: $ff
    nop                                           ; $7817: $00
    rst $38                                       ; $7818: $ff
    jr nz, jr_06d_77aa                            ; $7819: $20 $8f

    rst $38                                       ; $781b: $ff
    nop                                           ; $781c: $00
    rst $38                                       ; $781d: $ff
    or $ff                                        ; $781e: $f6 $ff
    nop                                           ; $7820: $00
    rst $38                                       ; $7821: $ff
    add l                                         ; $7822: $85
    db $eb                                        ; $7823: $eb
    and b                                         ; $7824: $a0
    rst $38                                       ; $7825: $ff
    db $e4                                        ; $7826: $e4
    or $e9                                        ; $7827: $f6 $e9
    db $fc                                        ; $7829: $fc
    nop                                           ; $782a: $00
    rst $38                                       ; $782b: $ff
    add l                                         ; $782c: $85
    rst $20                                       ; $782d: $e7
    sbc $df                                       ; $782e: $de $df
    ret nc                                        ; $7830: $d0

    pop de                                        ; $7831: $d1
    and b                                         ; $7832: $a0
    and b                                         ; $7833: $a0
    cpl                                           ; $7834: $2f
    sub $d7                                       ; $7835: $d6 $d7
    and b                                         ; $7837: $a0
    and b                                         ; $7838: $a0
    ld hl, sp-$1b                                 ; $7839: $f8 $e5
    and b                                         ; $783b: $a0
    nop                                           ; $783c: $00
    rst $38                                       ; $783d: $ff
    ld a, [bc]                                    ; $783e: $0a
    add sp, -$01                                  ; $783f: $e8 $ff
    and b                                         ; $7841: $a0
    and b                                         ; $7842: $a0
    jp nc, $a0d3                                  ; $7843: $d2 $d3 $a0

    and b                                         ; $7846: $a0
    ret c                                         ; $7847: $d8

    reti                                          ; $7848: $d9


    ld hl, sp-$08                                 ; $7849: $f8 $f8
    rst $20                                       ; $784b: $e7
    nop                                           ; $784c: $00
    rst $38                                       ; $784d: $ff
    ld a, [bc]                                    ; $784e: $0a
    add sp, -$60                                  ; $784f: $e8 $a0
    db $ed                                        ; $7851: $ed
    xor $d4                                       ; $7852: $ee $d4
    push de                                       ; $7854: $d5
    rrca                                          ; $7855: $0f
    rst $28                                       ; $7856: $ef
    and b                                         ; $7857: $a0
    jp c, $f8db                                   ; $7858: $da $db $f8

    push hl                                       ; $785b: $e5
    halt                                          ; $785c: $76
    ldh [rP1], a                                  ; $785d: $e0 $00
    rst $38                                       ; $785f: $ff
    add l                                         ; $7860: $85
    push hl                                       ; $7861: $e5
    ld a, $03                                     ; $7862: $3e $03
    ldh [$f0], a                                  ; $7864: $e0 $f0
    pop af                                        ; $7866: $f1
    ld a, [c]                                     ; $7867: $f2
    di                                            ; $7868: $f3
    db $f4                                        ; $7869: $f4
    ld hl, sp-$18                                 ; $786a: $f8 $e8
    halt                                          ; $786c: $76
    pop hl                                        ; $786d: $e1
    db $fc                                        ; $786e: $fc
    nop                                           ; $786f: $00
    rst $38                                       ; $7870: $ff
    add l                                         ; $7871: $85
    ld [c], a                                     ; $7872: $e2
    and b                                         ; $7873: $a0
    push af                                       ; $7874: $f5
    or $d6                                        ; $7875: $f6 $d6
    rst $10                                       ; $7877: $d7
    push af                                       ; $7878: $f5
    rst $18                                       ; $7879: $df
    or $a0                                        ; $787a: $f6 $a0
    sbc a                                         ; $787c: $9f
    and d                                         ; $787d: $a2
    sbc l                                         ; $787e: $9d
    rst $38                                       ; $787f: $ff
    ld [c], a                                     ; $7880: $e2
    and d                                         ; $7881: $a2
    sbc a                                         ; $7882: $9f
    ld e, $b3                                     ; $7883: $1e $b3
    ret nz                                        ; $7885: $c0

    jp c, $d0db                                   ; $7886: $da $db $d0

    pop de                                        ; $7889: $d1
    nop                                           ; $788a: $00
    rst $38                                       ; $788b: $ff
    add l                                         ; $788c: $85
    push bc                                       ; $788d: $c5
    ld [$17e1], sp                                ; $788e: $08 $e1 $17
    sbc a                                         ; $7891: $9f
    sbc h                                         ; $7892: $9c
    ld b, [hl]                                    ; $7893: $46
    rst $38                                       ; $7894: $ff
    db $e4                                        ; $7895: $e4
    sbc h                                         ; $7896: $9c
    cp a                                          ; $7897: $bf
    pop hl                                        ; $7898: $e1
    ldh a, [$c2]                                  ; $7899: $f0 $c2
    ld a, e                                       ; $789b: $7b
    ret                                           ; $789c: $c9


    inc c                                         ; $789d: $0c
    ld e, $d6                                     ; $789e: $1e $d6
    adc d                                         ; $78a0: $8a
    ret nz                                        ; $78a1: $c0

    jp c, $c1db                                   ; $78a2: $da $db $c1

    add sp, -$41                                  ; $78a5: $e8 $bf
    ld [c], a                                     ; $78a7: $e2
    ldh a, [$c3]                                  ; $78a8: $f0 $c3
    ld a, e                                       ; $78aa: $7b
    ret                                           ; $78ab: $c9


    db $fc                                        ; $78ac: $fc
    add l                                         ; $78ad: $85
    rst $10                                       ; $78ae: $d7
    add d                                         ; $78af: $82
    db $e4                                        ; $78b0: $e4
    or d                                          ; $78b1: $b2
    add e                                         ; $78b2: $83
    adc c                                         ; $78b3: $89
    adc b                                         ; $78b4: $88
    adc b                                         ; $78b5: $88
    adc b                                         ; $78b6: $88
    add e                                         ; $78b7: $83
    adc c                                         ; $78b8: $89
    add e                                         ; $78b9: $83
    ld a, [hl]                                    ; $78ba: $7e
    ld [c], a                                     ; $78bb: $e2
    ldh a, [$c4]                                  ; $78bc: $f0 $c4
    nop                                           ; $78be: $00
    rst $38                                       ; $78bf: $ff
    inc d                                         ; $78c0: $14
    ld [c], a                                     ; $78c1: $e2
    ld b, e                                       ; $78c2: $43
    pop hl                                        ; $78c3: $e1
    add e                                         ; $78c4: $83
    rst $38                                       ; $78c5: $ff
    adc c                                         ; $78c6: $89
    add a                                         ; $78c7: $87
    add l                                         ; $78c8: $85
    or d                                          ; $78c9: $b2
    or d                                          ; $78ca: $b2
    ld b, [hl]                                    ; $78cb: $46
    add l                                         ; $78cc: $85
    add [hl]                                      ; $78cd: $86
    ldh [$bf], a                                  ; $78ce: $e0 $bf
    db $e3                                        ; $78d0: $e3
    db $f4                                        ; $78d1: $f4
    and b                                         ; $78d2: $a0
    db $ec                                        ; $78d3: $ec
    ret nz                                        ; $78d4: $c0

    nop                                           ; $78d5: $00
    rst $38                                       ; $78d6: $ff
    add l                                         ; $78d7: $85
    and e                                         ; $78d8: $a3
    sbc [hl]                                      ; $78d9: $9e
    ld b, [hl]                                    ; $78da: $46
    ld b, [hl]                                    ; $78db: $46
    xor a                                         ; $78dc: $af
    adc d                                         ; $78dd: $8a
    add l                                         ; $78de: $85
    or d                                          ; $78df: $b2
    ld b, [hl]                                    ; $78e0: $46
    cp $e0                                        ; $78e1: $fe $e0
    or d                                          ; $78e3: $b2
    cp a                                          ; $78e4: $bf
    db $e3                                        ; $78e5: $e3
    sbc [hl]                                      ; $78e6: $9e
    ldh a, [$f4]                                  ; $78e7: $f0 $f4
    and d                                         ; $78e9: $a2
    nop                                           ; $78ea: $00
    rst $38                                       ; $78eb: $ff
    nop                                           ; $78ec: $00
    db $e3                                        ; $78ed: $e3
    ret nz                                        ; $78ee: $c0

    pop hl                                        ; $78ef: $e1
    add c                                         ; $78f0: $81
    or d                                          ; $78f1: $b2
    ld a, c                                       ; $78f2: $79
    ld a, d                                       ; $78f3: $7a
    dec de                                        ; $78f4: $1b
    ld a, l                                       ; $78f5: $7d
    or d                                          ; $78f6: $b2
    ld a, [hl]                                    ; $78f7: $7e
    pop hl                                        ; $78f8: $e1
    adc e                                         ; $78f9: $8b
    or d                                          ; $78fa: $b2
    ret nz                                        ; $78fb: $c0

    pop hl                                        ; $78fc: $e1
    db $ec                                        ; $78fd: $ec
    ret nz                                        ; $78fe: $c0

    nop                                           ; $78ff: $00
    rst $38                                       ; $7900: $ff
    db $fc                                        ; $7901: $fc
    nop                                           ; $7902: $00
    push hl                                       ; $7903: $e5
    add b                                         ; $7904: $80
    ldh [$8e], a                                  ; $7905: $e0 $8e
    ld a, e                                       ; $7907: $7b
    adc a                                         ; $7908: $8f
    ld b, l                                       ; $7909: $45
    adc [hl]                                      ; $790a: $8e
    ld a, e                                       ; $790b: $7b
    ld e, a                                       ; $790c: $5f
    ld a, h                                       ; $790d: $7c
    ld a, l                                       ; $790e: $7d
    or d                                          ; $790f: $b2

Jump_06d_7910:
    ld b, [hl]                                    ; $7910: $46
    add d                                         ; $7911: $82
    db $fd                                        ; $7912: $fd
    ret nz                                        ; $7913: $c0

    sbc [hl]                                      ; $7914: $9e
    rst $28                                       ; $7915: $ef
    add b                                         ; $7916: $80
    add sp, $00                                   ; $7917: $e8 $00
    rst $18                                       ; $7919: $df
    add l                                         ; $791a: $85
    add c                                         ; $791b: $81
    add d                                         ; $791c: $82
    jp nz, Jump_06d_44a2                          ; $791d: $c2 $a2 $44

    jp nz, Jump_000_2c2d                          ; $7920: $c2 $2d $2c

    dec hl                                        ; $7923: $2b
    cp a                                          ; $7924: $bf
    ld b, c                                       ; $7925: $41
    ld a, a                                       ; $7926: $7f
    ld a, l                                       ; $7927: $7d
    or d                                          ; $7928: $b2
    add l                                         ; $7929: $85
    adc e                                         ; $792a: $8b
    ld b, b                                       ; $792b: $40
    pop hl                                        ; $792c: $e1
    sub $f1                                       ; $792d: $d6 $f1
    rst $10                                       ; $792f: $d7
    nop                                           ; $7930: $00
    rst $18                                       ; $7931: $df
    adc d                                         ; $7932: $8a
    add c                                         ; $7933: $81
    inc b                                         ; $7934: $04
    ret z                                         ; $7935: $c8

    dec l                                         ; $7936: $2d
    jr nz, jr_06d_7959                            ; $7937: $20 $20

    jr nz, jr_06d_795a                            ; $7939: $20 $1f

    dec l                                         ; $793b: $2d
    add c                                         ; $793c: $81
    ld b, [hl]                                    ; $793d: $46
    ld b, [hl]                                    ; $793e: $46
    add b                                         ; $793f: $80
    nop                                           ; $7940: $00
    rst $38                                       ; $7941: $ff
    add l                                         ; $7942: $85
    and h                                         ; $7943: $a4
    adc e                                         ; $7944: $8b
    add b                                         ; $7945: $80
    cp $04                                        ; $7946: $fe $04
    add $b2                                       ; $7948: $c6 $b2
    xor [hl]                                      ; $794a: $ae
    ld b, b                                       ; $794b: $40
    ld [hl+], a                                   ; $794c: $22
    inc hl                                        ; $794d: $23
    cpl                                           ; $794e: $2f
    dec l                                         ; $794f: $2d
    jp $b281                                      ; $7950: $c3 $81 $b2


    ret nz                                        ; $7953: $c0

    db $e3                                        ; $7954: $e3
    nop                                           ; $7955: $00
    rst $38                                       ; $7956: $ff
    sbc e                                         ; $7957: $9b
    and l                                         ; $7958: $a5

jr_06d_7959:
    add [hl]                                      ; $7959: $86

jr_06d_795a:
    and h                                         ; $795a: $a4
    or d                                          ; $795b: $b2
    xor a                                         ; $795c: $af
    rst $38                                       ; $795d: $ff
    or d                                          ; $795e: $b2
    inc a                                         ; $795f: $3c
    ld [hl], $43                                  ; $7960: $36 $43
    ld b, l                                       ; $7962: $45
    add c                                         ; $7963: $81
    or d                                          ; $7964: $b2
    or d                                          ; $7965: $b2
    sbc d                                         ; $7966: $9a
    add b                                         ; $7967: $80
    ldh [$a2], a                                  ; $7968: $e0 $a2
    nop                                           ; $796a: $00
    rst $38                                       ; $796b: $ff
    db $eb                                        ; $796c: $eb
    db $ec                                        ; $796d: $ec
    adc e                                         ; $796e: $8b
    add e                                         ; $796f: $83
    ld b, a                                       ; $7970: $47
    and l                                         ; $7971: $a5
    ld b, l                                       ; $7972: $45
    rst $38                                       ; $7973: $ff
    ld [hl], $3b                                  ; $7974: $36 $3b
    inc a                                         ; $7976: $3c
    or d                                          ; $7977: $b2
    xor [hl]                                      ; $7978: $ae
    ld b, [hl]                                    ; $7979: $46
    adc h                                         ; $797a: $8c
    ld a, l                                       ; $797b: $7d
    add e                                         ; $797c: $83
    ld a, c                                       ; $797d: $79
    adc l                                         ; $797e: $8d
    dec a                                         ; $797f: $3d
    and c                                         ; $7980: $a1
    nop                                           ; $7981: $00
    cp a                                          ; $7982: $bf
    adc e                                         ; $7983: $8b
    add e                                         ; $7984: $83
    push bc                                       ; $7985: $c5
    and d                                         ; $7986: $a2
    adc d                                         ; $7987: $8a
    and b                                         ; $7988: $a0
    or d                                          ; $7989: $b2
    cp a                                          ; $798a: $bf
    or d                                          ; $798b: $b2
    dec [hl]                                      ; $798c: $35
    inc a                                         ; $798d: $3c
    or d                                          ; $798e: $b2
    or d                                          ; $798f: $b2
    xor a                                         ; $7990: $af
    ld [hl], a                                    ; $7991: $77
    ret nz                                        ; $7992: $c0

    adc a                                         ; $7993: $8f
    ldh [$fe], a                                  ; $7994: $e0 $fe
    add d                                         ; $7996: $82
    nop                                           ; $7997: $00
    cp a                                          ; $7998: $bf
    and b                                         ; $7999: $a0
    and c                                         ; $799a: $a1
    push bc                                       ; $799b: $c5
    and h                                         ; $799c: $a4
    inc c                                         ; $799d: $0c
    ret nz                                        ; $799e: $c0

    or d                                          ; $799f: $b2
    or d                                          ; $79a0: $b2
    inc a                                         ; $79a1: $3c
    jp Jump_000_3935                              ; $79a2: $c3 $35 $39


    ld a, a                                       ; $79a5: $7f
    and b                                         ; $79a6: $a0
    nop                                           ; $79a7: $00
    cp a                                          ; $79a8: $bf
    ld a, [bc]                                    ; $79a9: $0a
    ld l, b                                       ; $79aa: $68
    push bc                                       ; $79ab: $c5
    and d                                         ; $79ac: $a2
    add e                                         ; $79ad: $83
    add h                                         ; $79ae: $84
    rst $38                                       ; $79af: $ff
    ld b, [hl]                                    ; $79b0: $46
    or d                                          ; $79b1: $b2
    add b                                         ; $79b2: $80
    ld b, l                                       ; $79b3: $45
    or d                                          ; $79b4: $b2
    ld [hl], $35                                  ; $79b5: $36 $35
    dec [hl]                                      ; $79b7: $35
    ld h, c                                       ; $79b8: $61
    ld a, $80                                     ; $79b9: $3e $80
    add [hl]                                      ; $79bb: $86
    nop                                           ; $79bc: $00
    cp a                                          ; $79bd: $bf
    add l                                         ; $79be: $85
    add d                                         ; $79bf: $82
    push bc                                       ; $79c0: $c5
    and d                                         ; $79c1: $a2
    adc d                                         ; $79c2: $8a
    add l                                         ; $79c3: $85
    ret nz                                        ; $79c4: $c0

    ldh [$3f], a                                  ; $79c5: $e0 $3f
    add hl, sp                                    ; $79c7: $39
    dec sp                                        ; $79c8: $3b
    dec [hl]                                      ; $79c9: $35
    dec [hl]                                      ; $79ca: $35
    dec [hl]                                      ; $79cb: $35
    add hl, sp                                    ; $79cc: $39
    ld b, c                                       ; $79cd: $41
    add h                                         ; $79ce: $84
    nop                                           ; $79cf: $00
    ld h, e                                       ; $79d0: $63
    ret z                                         ; $79d1: $c8

    xor h                                         ; $79d2: $ac
    ld b, c                                       ; $79d3: $41
    nop                                           ; $79d4: $00
    ld a, [$82c5]                                 ; $79d5: $fa $c5 $82
    and d                                         ; $79d8: $a2
    ld b, [hl]                                    ; $79d9: $46
    and b                                         ; $79da: $a0
    adc l                                         ; $79db: $8d
    ret nz                                        ; $79dc: $c0

    ld a, $35                                     ; $79dd: $3e $35
    rst $00                                       ; $79df: $c7
    dec [hl]                                      ; $79e0: $35
    jr c, jr_06d_7a1a                             ; $79e1: $38 $37

    ld b, c                                       ; $79e3: $41
    pop hl                                        ; $79e4: $e1
    ld [bc], a                                    ; $79e5: $02
    add c                                         ; $79e6: $81
    ld hl, sp+$41                                 ; $79e7: $f8 $41
    push af                                       ; $79e9: $f5
    or $f8                                        ; $79ea: $f6 $f8
    nop                                           ; $79ec: $00
    ld a, l                                       ; $79ed: $7d
    sbc d                                         ; $79ee: $9a
    ld b, d                                       ; $79ef: $42
    ret                                           ; $79f0: $c9


    ld h, b                                       ; $79f1: $60
    adc h                                         ; $79f2: $8c
    ld a, l                                       ; $79f3: $7d
    or d                                          ; $79f4: $b2
    ld a, c                                       ; $79f5: $79
    adc l                                         ; $79f6: $8d
    dec e                                         ; $79f7: $1d
    ld a, [hl-]                                   ; $79f8: $3a
    jp nz, $b2c1                                  ; $79f9: $c2 $c1 $b2

    xor [hl]                                      ; $79fc: $ae
    or d                                          ; $79fd: $b2
    ld b, [hl]                                    ; $79fe: $46
    ret nz                                        ; $79ff: $c0

    ldh a, [$62]                                  ; $7a00: $f0 $62
    add l                                         ; $7a02: $85
    adc c                                         ; $7a03: $89
    ld h, b                                       ; $7a04: $60
    nop                                           ; $7a05: $00
    ld d, c                                       ; $7a06: $51
    adc d                                         ; $7a07: $8a
    ld l, c                                       ; $7a08: $69
    dec b                                         ; $7a09: $05
    and b                                         ; $7a0a: $a0
    inc bc                                        ; $7a0b: $03
    ldh [$c2], a                                  ; $7a0c: $e0 $c2
    pop bc                                        ; $7a0e: $c1
    xor a                                         ; $7a0f: $af
    or d                                          ; $7a10: $b2
    add [hl]                                      ; $7a11: $86
    and e                                         ; $7a12: $a3
    jr c, jr_06d_7a15                             ; $7a13: $38 $00

jr_06d_7a15:
    ld a, $8a                                     ; $7a15: $3e $8a
    ld h, a                                       ; $7a17: $67
    adc l                                         ; $7a18: $8d
    add b                                         ; $7a19: $80

jr_06d_7a1a:
    ld b, l                                       ; $7a1a: $45
    scf                                           ; $7a1b: $37
    jr c, jr_06d_7a21                             ; $7a1c: $38 $03

    ldh [$c2], a                                  ; $7a1e: $e0 $c2
    ret nz                                        ; $7a20: $c0

jr_06d_7a21:
    ld c, b                                       ; $7a21: $48
    add c                                         ; $7a22: $81
    pop bc                                        ; $7a23: $c1
    add [hl]                                      ; $7a24: $86
    and c                                         ; $7a25: $a1
    nop                                           ; $7a26: $00
    ccf                                           ; $7a27: $3f
    db $e4                                        ; $7a28: $e4
    adc d                                         ; $7a29: $8a
    ld h, [hl]                                    ; $7a2a: $66
    ld c, e                                       ; $7a2b: $4b
    ldh [rLCDC], a                                ; $7a2c: $e0 $40
    jp nz, Jump_000_00e1                          ; $7a2e: $c2 $e1 $00

    jp nz, $86c4                                  ; $7a31: $c2 $c4 $86

    add d                                         ; $7a34: $82
    add l                                         ; $7a35: $85
    xor h                                         ; $7a36: $ac
    nop                                           ; $7a37: $00
    ld d, c                                       ; $7a38: $51
    ld [$0da5], sp                                ; $7a39: $08 $a5 $0d
    ldh [rOBP0], a                                ; $7a3c: $e0 $48
    and b                                         ; $7a3e: $a0
    add h                                         ; $7a3f: $84
    ret nz                                        ; $7a40: $c0

    add a                                         ; $7a41: $87
    jr c, jr_06d_7a7b                             ; $7a42: $38 $37

    ld b, l                                       ; $7a44: $45
    ret nz                                        ; $7a45: $c0

    db $e4                                        ; $7a46: $e4
    ld a, d                                       ; $7a47: $7a
    jr nz, jr_06d_7a4a                            ; $7a48: $20 $00

jr_06d_7a4a:
    ccf                                           ; $7a4a: $3f
    ld [$b2a4], sp                                ; $7a4b: $08 $a4 $b2
    ld e, a                                       ; $7a4e: $5f
    xor [hl]                                      ; $7a4f: $ae
    xor a                                         ; $7a50: $af
    or d                                          ; $7a51: $b2
    or d                                          ; $7a52: $b2
    add hl, sp                                    ; $7a53: $39
    ld b, l                                       ; $7a54: $45
    ret nz                                        ; $7a55: $c0

    ld a, [hl-]                                   ; $7a56: $3a
    ld bc, $a060                                  ; $7a57: $01 $60 $a0
    inc b                                         ; $7a5a: $04
    ld h, d                                       ; $7a5b: $62
    nop                                           ; $7a5c: $00
    rst $38                                       ; $7a5d: $ff
    nop                                           ; $7a5e: $00
    push hl                                       ; $7a5f: $e5
    ld c, e                                       ; $7a60: $4b
    ld h, b                                       ; $7a61: $60
    adc $c2                                       ; $7a62: $ce $c2
    ld b, [hl]                                    ; $7a64: $46
    ret nz                                        ; $7a65: $c0

    ld [c], a                                     ; $7a66: $e2
    ld b, [hl]                                    ; $7a67: $46
    ld h, c                                       ; $7a68: $61
    add c                                         ; $7a69: $81
    ld a, d                                       ; $7a6a: $7a
    and b                                         ; $7a6b: $a0
    ld b, e                                       ; $7a6c: $43
    ld b, d                                       ; $7a6d: $42
    nop                                           ; $7a6e: $00
    rst $38                                       ; $7a6f: $ff
    or $01                                        ; $7a70: $f6 $01
    ret c                                         ; $7a72: $d8

    reti                                          ; $7a73: $d9


    dec bc                                        ; $7a74: $0b
    ld h, b                                       ; $7a75: $60
    ld a, h                                       ; $7a76: $7c
    cp [hl]                                       ; $7a77: $be
    pop hl                                        ; $7a78: $e1
    add $81                                       ; $7a79: $c6 $81

jr_06d_7a7b:
    dec [hl]                                      ; $7a7b: $35
    dec sp                                        ; $7a7c: $3b
    ld [hl], $83                                  ; $7a7d: $36 $83
    add h                                         ; $7a7f: $84
    ld b, a                                       ; $7a80: $47
    add h                                         ; $7a81: $84
    adc h                                         ; $7a82: $8c
    nop                                           ; $7a83: $00
    rst $38                                       ; $7a84: $ff
    or $02                                        ; $7a85: $f6 $02
    jp c, $c0db                                   ; $7a87: $da $db $c0

    pop hl                                        ; $7a8a: $e1
    dec d                                         ; $7a8b: $15
    ld h, b                                       ; $7a8c: $60
    cp a                                          ; $7a8d: $bf
    pop hl                                        ; $7a8e: $e1
    ld b, c                                       ; $7a8f: $41
    rlca                                          ; $7a90: $07
    ld b, e                                       ; $7a91: $43
    add e                                         ; $7a92: $83
    add [hl]                                      ; $7a93: $86
    ret nz                                        ; $7a94: $c0

    ld b, b                                       ; $7a95: $40
    ret nz                                        ; $7a96: $c0

    db $e3                                        ; $7a97: $e3
    halt                                          ; $7a98: $76
    nop                                           ; $7a99: $00
    nop                                           ; $7a9a: $00
    rst $38                                       ; $7a9b: $ff
    adc e                                         ; $7a9c: $8b
    ld b, e                                       ; $7a9d: $43
    ld [de], a                                    ; $7a9e: $12
    ld c, c                                       ; $7a9f: $49
    add c                                         ; $7aa0: $81
    ld b, c                                       ; $7aa1: $41
    ret z                                         ; $7aa2: $c8

    jp nz, $a03b                                  ; $7aa3: $c2 $3b $a0

    ld b, [hl]                                    ; $7aa6: $46
    ld b, a                                       ; $7aa7: $47
    add b                                         ; $7aa8: $80
    rlca                                          ; $7aa9: $07
    ld h, c                                       ; $7aaa: $61
    add [hl]                                      ; $7aab: $86
    add d                                         ; $7aac: $82
    ldh a, [$85]                                  ; $7aad: $f0 $85
    ld c, c                                       ; $7aaf: $49
    nop                                           ; $7ab0: $00
    pop de                                        ; $7ab1: $d1
    add [hl]                                      ; $7ab2: $86
    ld h, b                                       ; $7ab3: $60
    ld b, b                                       ; $7ab4: $40
    ld [c], a                                     ; $7ab5: $e2
    ld b, l                                       ; $7ab6: $45
    ld [hl], $a6                                  ; $7ab7: $36 $a6
    ld [hl], $0c                                  ; $7ab9: $36 $0c
    add a                                         ; $7abb: $87
    pop bc                                        ; $7abc: $c1
    ret                                           ; $7abd: $c9


    ld h, b                                       ; $7abe: $60
    ld b, [hl]                                    ; $7abf: $46
    add b                                         ; $7ac0: $80
    add a                                         ; $7ac1: $87
    ld b, c                                       ; $7ac2: $41
    add [hl]                                      ; $7ac3: $86
    add [hl]                                      ; $7ac4: $86
    nop                                           ; $7ac5: $00
    or $ce                                        ; $7ac6: $f6 $ce
    ld bc, $217c                                  ; $7ac8: $01 $7c $21
    add c                                         ; $7acb: $81
    nop                                           ; $7acc: $00
    pop hl                                        ; $7acd: $e1
    ld b, l                                       ; $7ace: $45
    ld [hl], $62                                  ; $7acf: $36 $62
    and a                                         ; $7ad1: $a7
    ld h, [hl]                                    ; $7ad2: $66
    cp a                                          ; $7ad3: $bf
    ldh [$33], a                                  ; $7ad4: $e0 $33
    or d                                          ; $7ad6: $b2
    add c                                         ; $7ad7: $81
    dec b                                         ; $7ad8: $05
    ld b, b                                       ; $7ad9: $40
    ld [$4660], sp                                ; $7ada: $08 $60 $46
    sbc [hl]                                      ; $7add: $9e
    halt                                          ; $7ade: $76
    ld [bc], a                                    ; $7adf: $02
    nop                                           ; $7ae0: $00
    ld sp, hl                                     ; $7ae1: $f9
    ld [hl], b                                    ; $7ae2: $70
    ret nc                                        ; $7ae3: $d0

    ld hl, $8221                                  ; $7ae4: $21 $21 $82
    sla b                                         ; $7ae7: $cb $20
    pop bc                                        ; $7ae9: $c1
    ldh [$67], a                                  ; $7aea: $e0 $67
    and e                                         ; $7aec: $a3
    ld l, b                                       ; $7aed: $68
    cp a                                          ; $7aee: $bf
    pop hl                                        ; $7aef: $e1
    add h                                         ; $7af0: $84
    ei                                            ; $7af1: $fb
    add d                                         ; $7af2: $82
    cp [hl]                                       ; $7af3: $be
    nop                                           ; $7af4: $00
    and d                                         ; $7af5: $a2
    and e                                         ; $7af6: $a3
    pop hl                                        ; $7af7: $e1
    nop                                           ; $7af8: $00
    cp $86                                        ; $7af9: $fe $86
    ld h, d                                       ; $7afb: $62
    ld c, e                                       ; $7afc: $4b
    ld b, b                                       ; $7afd: $40
    ld b, d                                       ; $7afe: $42
    ld e, a                                       ; $7aff: $5f
    xor b                                         ; $7b00: $a8
    xor c                                         ; $7b01: $a9
    ld l, h                                       ; $7b02: $6c
    dec [hl]                                      ; $7b03: $35
    dec [hl]                                      ; $7b04: $35
    cp a                                          ; $7b05: $bf
    pop hl                                        ; $7b06: $e1
    or d                                          ; $7b07: $b2
    nop                                           ; $7b08: $00
    ld b, b                                       ; $7b09: $40
    ldh a, [$84]                                  ; $7b0a: $f0 $84
    dec b                                         ; $7b0c: $05
    ret c                                         ; $7b0d: $d8

    ld [de], a                                    ; $7b0e: $12
    nop                                           ; $7b0f: $00
    xor a                                         ; $7b10: $af
    ld c, [hl]                                    ; $7b11: $4e
    nop                                           ; $7b12: $00
    ld b, l                                       ; $7b13: $45
    ld [hl], $6e                                  ; $7b14: $36 $6e
    ld l, a                                       ; $7b16: $6f
    rra                                           ; $7b17: $1f
    ld l, h                                       ; $7b18: $6c
    dec [hl]                                      ; $7b19: $35
    and e                                         ; $7b1a: $a3
    xor d                                         ; $7b1b: $aa
    xor e                                         ; $7b1c: $ab
    db $fc                                        ; $7b1d: $fc
    jp nz, $8604                                  ; $7b1e: $c2 $04 $86

    nop                                           ; $7b21: $00
    rst $18                                       ; $7b22: $df
    jr c, jr_06d_7b25                             ; $7b23: $38 $00

jr_06d_7b25:
    pop bc                                        ; $7b25: $c1
    ld bc, $bfa1                                  ; $7b26: $01 $a1 $bf
    ld [c], a                                     ; $7b29: $e2
    ld l, h                                       ; $7b2a: $6c
    ld l, a                                       ; $7b2b: $6f
    ld l, [hl]                                    ; $7b2c: $6e
    ret nz                                        ; $7b2d: $c0

    db $e3                                        ; $7b2e: $e3
    inc b                                         ; $7b2f: $04
    add h                                         ; $7b30: $84
    nop                                           ; $7b31: $00
    ret c                                         ; $7b32: $d8

    ld [de], a                                    ; $7b33: $12
    nop                                           ; $7b34: $00
    rst $08                                       ; $7b35: $cf
    ld a, [hl]                                    ; $7b36: $7e
    and $c1                                       ; $7b37: $e6 $c1
    add sp, $04                                   ; $7b39: $e8 $04
    add h                                         ; $7b3b: $84
    nop                                           ; $7b3c: $00
    rst $18                                       ; $7b3d: $df
    nop                                           ; $7b3e: $00
    add e                                         ; $7b3f: $83
    dec a                                         ; $7b40: $3d
    db $e3                                        ; $7b41: $e3
    nop                                           ; $7b42: $00
    add d                                         ; $7b43: $82
    ld [$15d8], a                                 ; $7b44: $ea $d8 $15
    add l                                         ; $7b47: $85
    dec l                                         ; $7b48: $2d
    ld b, e                                       ; $7b49: $43
    ld h, c                                       ; $7b4a: $61
    db $fc                                        ; $7b4b: $fc
    call nz, $ea82                                ; $7b4c: $c4 $82 $ea
    ret c                                         ; $7b4f: $d8

    dec d                                         ; $7b50: $15
    add l                                         ; $7b51: $85
    ld de, $fc02                                  ; $7b52: $11 $02 $fc
    pop bc                                        ; $7b55: $c1
    sbc l                                         ; $7b56: $9d
    rst $38                                       ; $7b57: $ff
    push hl                                       ; $7b58: $e5
    ld [$5d62], sp                                ; $7b59: $08 $62 $5d
    inc de                                        ; $7b5c: $13
    nop                                           ; $7b5d: $00
    dec [hl]                                      ; $7b5e: $35
    db $fc                                        ; $7b5f: $fc
    pop bc                                        ; $7b60: $c1
    sub [hl]                                      ; $7b61: $96
    ld b, e                                       ; $7b62: $43
    ld b, $8e                                     ; $7b63: $06 $8e
    ld b, c                                       ; $7b65: $41
    ret nc                                        ; $7b66: $d0

    pop de                                        ; $7b67: $d1
    or c                                          ; $7b68: $b1
    ld b, b                                       ; $7b69: $40
    add l                                         ; $7b6a: $85
    pop af                                        ; $7b6b: $f1
    nop                                           ; $7b6c: $00
    ld d, a                                       ; $7b6d: $57
    sbc d                                         ; $7b6e: $9a
    ld [bc], a                                    ; $7b6f: $02
    cp e                                          ; $7b70: $bb
    nop                                           ; $7b71: $00
    ret nz                                        ; $7b72: $c0

    sub d                                         ; $7b73: $92
    ld [bc], a                                    ; $7b74: $02
    ld [$00a3], sp                                ; $7b75: $08 $a3 $00
    rst $38                                       ; $7b78: $ff
    ld a, e                                       ; $7b79: $7b
    ld l, b                                       ; $7b7a: $68
    sbc d                                         ; $7b7b: $9a
    ld [bc], a                                    ; $7b7c: $02
    ld d, [hl]                                    ; $7b7d: $56
    ld hl, $dbda                                  ; $7b7e: $21 $da $db
    nop                                           ; $7b81: $00
    adc [hl]                                      ; $7b82: $8e
    dec h                                         ; $7b83: $25
    nop                                           ; $7b84: $00
    rst $38                                       ; $7b85: $ff
    ld a, e                                       ; $7b86: $7b
    dec bc                                        ; $7b87: $0b
    ld d, [hl]                                    ; $7b88: $56
    dec h                                         ; $7b89: $25
    adc [hl]                                      ; $7b8a: $8e
    inc hl                                        ; $7b8b: $23
    nop                                           ; $7b8c: $00
    rst $38                                       ; $7b8d: $ff
    ld a, e                                       ; $7b8e: $7b
    dec l                                         ; $7b8f: $2d
    ld d, [hl]                                    ; $7b90: $56
    inc hl                                        ; $7b91: $23
    nop                                           ; $7b92: $00
    db $f4                                        ; $7b93: $f4
    inc bc                                        ; $7b94: $03
    ld a, [bc]                                    ; $7b95: $0a
    ld c, a                                       ; $7b96: $4f
    nop                                           ; $7b97: $00
    dec sp                                        ; $7b98: $3b
    or $ff                                        ; $7b99: $f6 $ff
    nop                                           ; $7b9b: $00
    dec sp                                        ; $7b9c: $3b
    or $ff                                        ; $7b9d: $f6 $ff
    nop                                           ; $7b9f: $00
    cp $f6                                        ; $7ba0: $fe $f6
    rst $38                                       ; $7ba2: $ff
    nop                                           ; $7ba3: $00
    nop                                           ; $7ba4: $00
    db $fc                                        ; $7ba5: $fc
    or $ff                                        ; $7ba6: $f6 $ff
    nop                                           ; $7ba8: $00
    rst $38                                       ; $7ba9: $ff
    or $ff                                        ; $7baa: $f6 $ff
    nop                                           ; $7bac: $00
    rst $38                                       ; $7bad: $ff
    nop                                           ; $7bae: $00
    rst $38                                       ; $7baf: $ff
    sbc c                                         ; $7bb0: $99
    rst $38                                       ; $7bb1: $ff
    nop                                           ; $7bb2: $00
    rst $38                                       ; $7bb3: $ff
    nop                                           ; $7bb4: $00
    adc a                                         ; $7bb5: $8f
    rst $38                                       ; $7bb6: $ff
    nop                                           ; $7bb7: $00
    push af                                       ; $7bb8: $f5
    nop                                           ; $7bb9: $00
    nop                                           ; $7bba: $00
    nop                                           ; $7bbb: $00
    pop bc                                        ; $7bbc: $c1
    nop                                           ; $7bbd: $00
    rst $38                                       ; $7bbe: $ff
    rst $38                                       ; $7bbf: $ff
    rst $38                                       ; $7bc0: $ff
    rst $38                                       ; $7bc1: $ff
    rst $38                                       ; $7bc2: $ff
    rst $38                                       ; $7bc3: $ff

Jump_06d_7bc4:
    rst $38                                       ; $7bc4: $ff
    rst $38                                       ; $7bc5: $ff
    rst $38                                       ; $7bc6: $ff
    rst $38                                       ; $7bc7: $ff
    nop                                           ; $7bc8: $00
    nop                                           ; $7bc9: $00
    dec c                                         ; $7bca: $0d
    add b                                         ; $7bcb: $80
    cp $e0                                        ; $7bcc: $fe $e0
    nop                                           ; $7bce: $00
    ld b, b                                       ; $7bcf: $40
    ret c                                         ; $7bd0: $d8

    push hl                                       ; $7bd1: $e5
    rst $30                                       ; $7bd2: $f7
    and $ff                                       ; $7bd3: $e6 $ff
    rst $38                                       ; $7bd5: $ff
    rst $38                                       ; $7bd6: $ff
    rst $30                                       ; $7bd7: $f7
    nop                                           ; $7bd8: $00
    nop                                           ; $7bd9: $00
    nop                                           ; $7bda: $00
    ld bc, $2100                                  ; $7bdb: $01 $00 $21
    db $10                                        ; $7bde: $10
    ld bc, $2401                                  ; $7bdf: $01 $01 $24
    ld de, $0201                                  ; $7be2: $11 $01 $02
    dec h                                         ; $7be5: $25
    ld de, $0301                                  ; $7be6: $11 $01 $03
    ld [hl+], a                                   ; $7be9: $22
    ld [de], a                                    ; $7bea: $12
    ld bc, $2404                                  ; $7beb: $01 $04 $24
    ld [de], a                                    ; $7bee: $12
    ld bc, $2605                                  ; $7bef: $01 $05 $26
    ld [de], a                                    ; $7bf2: $12
    ld bc, $2706                                  ; $7bf3: $01 $06 $27
    ld [de], a                                    ; $7bf6: $12
    ld bc, $2107                                  ; $7bf7: $01 $07 $21
    inc de                                        ; $7bfa: $13
    ld bc, $2508                                  ; $7bfb: $01 $08 $25
    inc de                                        ; $7bfe: $13
    ld bc, $2609                                  ; $7bff: $01 $09 $26
    inc de                                        ; $7c02: $13
    ld bc, $270a                                  ; $7c03: $01 $0a $27
    inc de                                        ; $7c06: $13
    ld bc, $2b0b                                  ; $7c07: $01 $0b $2b
    inc de                                        ; $7c0a: $13
    ld bc, $280c                                  ; $7c0b: $01 $0c $28
    inc d                                         ; $7c0e: $14
    ld bc, $290d                                  ; $7c0f: $01 $0d $29
    dec d                                         ; $7c12: $15
    ld bc, $210e                                  ; $7c13: $01 $0e $21
    rla                                           ; $7c16: $17
    ld bc, $290f                                  ; $7c17: $01 $0f $29
    rla                                           ; $7c1a: $17
    ld bc, $2110                                  ; $7c1b: $01 $10 $21
    jr @+$04                                      ; $7c1e: $18 $02

    ld de, $1822                                  ; $7c20: $11 $22 $18
    ld bc, $2312                                  ; $7c23: $01 $12 $23
    jr jr_06d_7c29                                ; $7c26: $18 $01

    inc de                                        ; $7c28: $13

jr_06d_7c29:
    add hl, hl                                    ; $7c29: $29
    jr jr_06d_7c2d                                ; $7c2a: $18 $01

    inc d                                         ; $7c2c: $14

jr_06d_7c2d:
    ld a, [hl+]                                   ; $7c2d: $2a
    jr jr_06d_7c31                                ; $7c2e: $18 $01

    dec d                                         ; $7c30: $15

jr_06d_7c31:
    dec h                                         ; $7c31: $25
    add hl, de                                    ; $7c32: $19
    ld bc, $2016                                  ; $7c33: $01 $16 $20
    ld a, [de]                                    ; $7c36: $1a
    ld bc, $2117                                  ; $7c37: $01 $17 $21
    ld a, [de]                                    ; $7c3a: $1a
    ld bc, $2418                                  ; $7c3b: $01 $18 $24
    ld a, [de]                                    ; $7c3e: $1a
    ld bc, $2519                                  ; $7c3f: $01 $19 $25
    ld a, [de]                                    ; $7c42: $1a
    ld [bc], a                                    ; $7c43: $02
    ld a, [de]                                    ; $7c44: $1a
    ld h, $1a                                     ; $7c45: $26 $1a
    ld bc, $1f1b                                  ; $7c47: $01 $1b $1f
    dec de                                        ; $7c4a: $1b
    ld bc, $201c                                  ; $7c4b: $01 $1c $20
    dec de                                        ; $7c4e: $1b
    ld bc, $211d                                  ; $7c4f: $01 $1d $21
    dec de                                        ; $7c52: $1b
    ld bc, $251e                                  ; $7c53: $01 $1e $25
    dec de                                        ; $7c56: $1b
    ld bc, $261f                                  ; $7c57: $01 $1f $26
    dec de                                        ; $7c5a: $1b
    ld bc, $1d20                                  ; $7c5b: $01 $20 $1d
    inc e                                         ; $7c5e: $1c
    ld bc, $2021                                  ; $7c5f: $01 $21 $20
    inc e                                         ; $7c62: $1c
    ld bc, $1d22                                  ; $7c63: $01 $22 $1d
    dec e                                         ; $7c66: $1d
    ld bc, $1b23                                  ; $7c67: $01 $23 $1b
    ld e, $01                                     ; $7c6a: $1e $01
    inc h                                         ; $7c6c: $24
    inc e                                         ; $7c6d: $1c
    ld e, $01                                     ; $7c6e: $1e $01
    dec h                                         ; $7c70: $25
    dec e                                         ; $7c71: $1d
    ld e, $01                                     ; $7c72: $1e $01
    ld h, $24                                     ; $7c74: $26 $24
    ld e, $01                                     ; $7c76: $1e $01
    daa                                           ; $7c78: $27
    dec h                                         ; $7c79: $25
    ld e, $01                                     ; $7c7a: $1e $01
    jr z, jr_06d_7c9a                             ; $7c7c: $28 $1c

    rra                                           ; $7c7e: $1f
    ld bc, $2229                                  ; $7c7f: $01 $29 $22
    rra                                           ; $7c82: $1f
    ld bc, $232a                                  ; $7c83: $01 $2a $23
    rra                                           ; $7c86: $1f
    ld bc, $242b                                  ; $7c87: $01 $2b $24
    rra                                           ; $7c8a: $1f
    ld bc, $262c                                  ; $7c8b: $01 $2c $26
    rra                                           ; $7c8e: $1f
    ld bc, $232d                                  ; $7c8f: $01 $2d $23
    jr nz, @+$03                                  ; $7c92: $20 $01

    ld l, $24                                     ; $7c94: $2e $24
    jr nz, jr_06d_7c9a                            ; $7c96: $20 $02

    cpl                                           ; $7c98: $2f
    dec h                                         ; $7c99: $25

jr_06d_7c9a:
    jr nz, @+$03                                  ; $7c9a: $20 $01

    jr nc, @+$28                                  ; $7c9c: $30 $26

    jr nz, @+$03                                  ; $7c9e: $20 $01

    ld sp, $2118                                  ; $7ca0: $31 $18 $21
    ld bc, $1932                                  ; $7ca3: $01 $32 $19
    ld hl, $3301                                  ; $7ca6: $21 $01 $33
    ld a, [de]                                    ; $7ca9: $1a
    ld hl, $3401                                  ; $7caa: $21 $01 $34
    inc h                                         ; $7cad: $24
    ld hl, $3501                                  ; $7cae: $21 $01 $35
    dec h                                         ; $7cb1: $25
    ld hl, $3601                                  ; $7cb2: $21 $01 $36
    rla                                           ; $7cb5: $17
    ld [hl+], a                                   ; $7cb6: $22
    ld bc, $1837                                  ; $7cb7: $01 $37 $18
    ld [hl+], a                                   ; $7cba: $22
    ld bc, $1938                                  ; $7cbb: $01 $38 $19
    ld [hl+], a                                   ; $7cbe: $22
    ld bc, $1739                                  ; $7cbf: $01 $39 $17
    inc hl                                        ; $7cc2: $23
    ld bc, $193a                                  ; $7cc3: $01 $3a $19
    inc hl                                        ; $7cc6: $23
    ld [bc], a                                    ; $7cc7: $02
    dec sp                                        ; $7cc8: $3b
    ld a, [de]                                    ; $7cc9: $1a
    inc hl                                        ; $7cca: $23
    ld bc, $1b3c                                  ; $7ccb: $01 $3c $1b
    inc hl                                        ; $7cce: $23
    ld bc, $163d                                  ; $7ccf: $01 $3d $16
    inc h                                         ; $7cd2: $24
    ld [bc], a                                    ; $7cd3: $02
    ld a, $18                                     ; $7cd4: $3e $18
    inc h                                         ; $7cd6: $24
    ld bc, $193f                                  ; $7cd7: $01 $3f $19
    inc h                                         ; $7cda: $24
    ld bc, $1a40                                  ; $7cdb: $01 $40 $1a
    inc h                                         ; $7cde: $24
    ld bc, $2041                                  ; $7cdf: $01 $41 $20
    inc h                                         ; $7ce2: $24
    ld bc, $1542                                  ; $7ce3: $01 $42 $15
    dec h                                         ; $7ce6: $25
    ld bc, $1643                                  ; $7ce7: $01 $43 $16
    dec h                                         ; $7cea: $25
    ld [bc], a                                    ; $7ceb: $02
    ld b, h                                       ; $7cec: $44
    rla                                           ; $7ced: $17
    dec h                                         ; $7cee: $25
    ld bc, $1845                                  ; $7cef: $01 $45 $18
    dec h                                         ; $7cf2: $25
    ld bc, $1746                                  ; $7cf3: $01 $46 $17
    ld h, $01                                     ; $7cf6: $26 $01
    ld b, a                                       ; $7cf8: $47
    jr @+$28                                      ; $7cf9: $18 $26

    ld bc, $2248                                  ; $7cfb: $01 $48 $22
    ld h, $01                                     ; $7cfe: $26 $01
    ld c, c                                       ; $7d00: $49
    ld d, $27                                     ; $7d01: $16 $27
    ld bc, $194a                                  ; $7d03: $01 $4a $19
    daa                                           ; $7d06: $27
    ld bc, $224b                                  ; $7d07: $01 $4b $22
    daa                                           ; $7d0a: $27
    ld bc, $204c                                  ; $7d0b: $01 $4c $20
    add hl, hl                                    ; $7d0e: $29
    ld bc, $214d                                  ; $7d0f: $01 $4d $21
    add hl, hl                                    ; $7d12: $29
    ld bc, $244e                                  ; $7d13: $01 $4e $24
    add hl, hl                                    ; $7d16: $29
    ld bc, $1e4f                                  ; $7d17: $01 $4f $1e
    ld a, [hl+]                                   ; $7d1a: $2a
    ld bc, $2150                                  ; $7d1b: $01 $50 $21
    ld a, [hl+]                                   ; $7d1e: $2a
    ld bc, $2251                                  ; $7d1f: $01 $51 $22
    ld a, [hl+]                                   ; $7d22: $2a
    ld bc, $2152                                  ; $7d23: $01 $52 $21
    dec hl                                        ; $7d26: $2b
    ld bc, $1f53                                  ; $7d27: $01 $53 $1f
    inc l                                         ; $7d2a: $2c
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

Jump_06d_7e00:
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

Jump_06d_7e79:
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

Jump_06d_7fc2:
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
