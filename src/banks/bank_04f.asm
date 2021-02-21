; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04f", ROMX[$4000], BANK[$4f]

    ld b, l                                       ; $4000: $45
    ld d, [hl]                                    ; $4001: $56
    adc e                                         ; $4002: $8b
    ld h, c                                       ; $4003: $61

    db $9c, $61, $84, $61

    rst $38                                       ; $4008: $ff
    nop                                           ; $4009: $00
    rst $38                                       ; $400a: $ff
    nop                                           ; $400b: $00
    rst $38                                       ; $400c: $ff
    nop                                           ; $400d: $00
    rst $38                                       ; $400e: $ff
    nop                                           ; $400f: $00
    rst $38                                       ; $4010: $ff
    nop                                           ; $4011: $00
    rst $38                                       ; $4012: $ff
    nop                                           ; $4013: $00
    rst $38                                       ; $4014: $ff
    nop                                           ; $4015: $00
    rst $38                                       ; $4016: $ff
    nop                                           ; $4017: $00
    push af                                       ; $4018: $f5
    ld [hl], l                                    ; $4019: $75
    push af                                       ; $401a: $f5
    ld [hl], l                                    ; $401b: $75
    ld a, [$fa7a]                                 ; $401c: $fa $7a $fa
    ld a, d                                       ; $401f: $7a
    push af                                       ; $4020: $f5
    ld [hl], l                                    ; $4021: $75
    push af                                       ; $4022: $f5
    ld [hl], l                                    ; $4023: $75
    ld a, [$fa7a]                                 ; $4024: $fa $7a $fa
    ld a, d                                       ; $4027: $7a
    ld [hl+], a                                   ; $4028: $22
    ld [hl+], a                                   ; $4029: $22
    ld [hl+], a                                   ; $402a: $22
    ld [hl+], a                                   ; $402b: $22
    adc c                                         ; $402c: $89
    adc c                                         ; $402d: $89
    adc c                                         ; $402e: $89
    adc c                                         ; $402f: $89
    ld [hl+], a                                   ; $4030: $22
    ld [hl+], a                                   ; $4031: $22
    ld [hl+], a                                   ; $4032: $22
    ld [hl+], a                                   ; $4033: $22
    adc c                                         ; $4034: $89
    adc c                                         ; $4035: $89
    adc c                                         ; $4036: $89
    adc c                                         ; $4037: $89
    cp a                                          ; $4038: $bf
    cp h                                          ; $4039: $bc
    cp a                                          ; $403a: $bf
    cp h                                          ; $403b: $bc
    ld e, a                                       ; $403c: $5f
    ld e, h                                       ; $403d: $5c
    ld e, a                                       ; $403e: $5f
    ld e, h                                       ; $403f: $5c
    cp a                                          ; $4040: $bf
    cp h                                          ; $4041: $bc
    cp a                                          ; $4042: $bf
    cp h                                          ; $4043: $bc
    ld e, a                                       ; $4044: $5f
    ld e, h                                       ; $4045: $5c
    ld e, a                                       ; $4046: $5f
    ld e, h                                       ; $4047: $5c
    ld a, [$fa1a]                                 ; $4048: $fa $1a $fa
    ld a, [de]                                    ; $404b: $1a
    db $fd                                        ; $404c: $fd
    dec e                                         ; $404d: $1d
    db $fd                                        ; $404e: $fd
    dec e                                         ; $404f: $1d
    ld a, [$fa1a]                                 ; $4050: $fa $1a $fa
    ld a, [de]                                    ; $4053: $1a
    db $fd                                        ; $4054: $fd
    dec e                                         ; $4055: $1d
    db $fd                                        ; $4056: $fd
    dec e                                         ; $4057: $1d
    sub c                                         ; $4058: $91
    sub c                                         ; $4059: $91
    sub c                                         ; $405a: $91
    sub c                                         ; $405b: $91
    ld b, h                                       ; $405c: $44
    ld b, h                                       ; $405d: $44
    ld b, h                                       ; $405e: $44
    ld b, h                                       ; $405f: $44
    sub c                                         ; $4060: $91
    sub c                                         ; $4061: $91
    sub c                                         ; $4062: $91
    sub c                                         ; $4063: $91
    ld b, h                                       ; $4064: $44
    ld b, h                                       ; $4065: $44
    ld b, h                                       ; $4066: $44
    ld b, h                                       ; $4067: $44
    ld e, a                                       ; $4068: $5f
    ld e, b                                       ; $4069: $58
    ld e, a                                       ; $406a: $5f
    ld e, b                                       ; $406b: $58
    cp a                                          ; $406c: $bf
    cp b                                          ; $406d: $b8
    cp a                                          ; $406e: $bf
    cp b                                          ; $406f: $b8
    ld e, a                                       ; $4070: $5f
    ld e, b                                       ; $4071: $58
    ld e, a                                       ; $4072: $5f
    ld e, b                                       ; $4073: $58
    cp a                                          ; $4074: $bf
    cp b                                          ; $4075: $b8
    cp a                                          ; $4076: $bf
    cp b                                          ; $4077: $b8
    db $fd                                        ; $4078: $fd
    dec c                                         ; $4079: $0d
    db $fd                                        ; $407a: $fd
    dec c                                         ; $407b: $0d
    cp $0e                                        ; $407c: $fe $0e
    cp $0e                                        ; $407e: $fe $0e
    db $fd                                        ; $4080: $fd
    dec c                                         ; $4081: $0d
    db $fd                                        ; $4082: $fd
    dec c                                         ; $4083: $0d
    cp $0e                                        ; $4084: $fe $0e
    cp $0e                                        ; $4086: $fe $0e
    rst $38                                       ; $4088: $ff
    ldh [rIE], a                                  ; $4089: $e0 $ff
    ldh [$7f], a                                  ; $408b: $e0 $7f
    ld h, b                                       ; $408d: $60
    ld a, a                                       ; $408e: $7f
    ld h, b                                       ; $408f: $60
    rst $38                                       ; $4090: $ff
    ldh [rIE], a                                  ; $4091: $e0 $ff
    ldh [$7f], a                                  ; $4093: $e0 $7f
    ld h, b                                       ; $4095: $60
    ld a, a                                       ; $4096: $7f
    ld h, b                                       ; $4097: $60
    rst $38                                       ; $4098: $ff
    inc bc                                        ; $4099: $03
    rst $38                                       ; $409a: $ff
    inc bc                                        ; $409b: $03
    rst $38                                       ; $409c: $ff
    inc bc                                        ; $409d: $03
    rst $38                                       ; $409e: $ff
    inc bc                                        ; $409f: $03
    rst $38                                       ; $40a0: $ff
    inc bc                                        ; $40a1: $03
    rst $38                                       ; $40a2: $ff
    inc bc                                        ; $40a3: $03
    rst $38                                       ; $40a4: $ff
    inc bc                                        ; $40a5: $03
    rst $38                                       ; $40a6: $ff
    inc bc                                        ; $40a7: $03
    rst $38                                       ; $40a8: $ff
    ret nz                                        ; $40a9: $c0

    rst $38                                       ; $40aa: $ff
    ret nz                                        ; $40ab: $c0

    rst $38                                       ; $40ac: $ff
    ret nz                                        ; $40ad: $c0

    rst $38                                       ; $40ae: $ff
    ret nz                                        ; $40af: $c0

    rst $38                                       ; $40b0: $ff
    ret nz                                        ; $40b1: $c0

    rst $38                                       ; $40b2: $ff
    ret nz                                        ; $40b3: $c0

    rst $38                                       ; $40b4: $ff
    ret nz                                        ; $40b5: $c0

    rst $38                                       ; $40b6: $ff
    ret nz                                        ; $40b7: $c0

    rst $38                                       ; $40b8: $ff
    inc bc                                        ; $40b9: $03
    rst $38                                       ; $40ba: $ff
    inc bc                                        ; $40bb: $03
    rst $38                                       ; $40bc: $ff
    inc bc                                        ; $40bd: $03
    rst $38                                       ; $40be: $ff
    inc bc                                        ; $40bf: $03
    rst $38                                       ; $40c0: $ff
    inc bc                                        ; $40c1: $03
    rst $38                                       ; $40c2: $ff
    inc bc                                        ; $40c3: $03
    rst $38                                       ; $40c4: $ff
    ld bc, $00ff                                  ; $40c5: $01 $ff $00
    ld [hl+], a                                   ; $40c8: $22
    ld [hl+], a                                   ; $40c9: $22
    ld [hl+], a                                   ; $40ca: $22
    ld [hl+], a                                   ; $40cb: $22
    adc c                                         ; $40cc: $89
    adc c                                         ; $40cd: $89
    adc c                                         ; $40ce: $89
    adc c                                         ; $40cf: $89
    ld [hl+], a                                   ; $40d0: $22
    ld [hl+], a                                   ; $40d1: $22
    and e                                         ; $40d2: $a3
    and e                                         ; $40d3: $a3
    rst $38                                       ; $40d4: $ff
    rst $38                                       ; $40d5: $ff
    rst $38                                       ; $40d6: $ff
    ld a, [hl]                                    ; $40d7: $7e
    rst $38                                       ; $40d8: $ff
    ret nz                                        ; $40d9: $c0

    rst $38                                       ; $40da: $ff
    ret nz                                        ; $40db: $c0

    rst $38                                       ; $40dc: $ff
    ret nz                                        ; $40dd: $c0

    rst $38                                       ; $40de: $ff
    ret nz                                        ; $40df: $c0

    rst $38                                       ; $40e0: $ff
    ret nz                                        ; $40e1: $c0

    rst $38                                       ; $40e2: $ff
    ret nz                                        ; $40e3: $c0

    rst $38                                       ; $40e4: $ff
    add b                                         ; $40e5: $80
    rst $38                                       ; $40e6: $ff
    nop                                           ; $40e7: $00
    ei                                            ; $40e8: $fb
    dec de                                        ; $40e9: $1b
    ld a, [$fd1a]                                 ; $40ea: $fa $1a $fd
    dec e                                         ; $40ed: $1d
    db $fd                                        ; $40ee: $fd
    dec e                                         ; $40ef: $1d
    ld a, [$fa1a]                                 ; $40f0: $fa $1a $fa
    ld a, [de]                                    ; $40f3: $1a
    db $fd                                        ; $40f4: $fd
    dec e                                         ; $40f5: $1d
    db $fd                                        ; $40f6: $fd
    dec e                                         ; $40f7: $1d
    db $fd                                        ; $40f8: $fd
    dec c                                         ; $40f9: $0d
    db $fd                                        ; $40fa: $fd
    dec c                                         ; $40fb: $0d
    cp $0e                                        ; $40fc: $fe $0e
    cp $0e                                        ; $40fe: $fe $0e
    db $fd                                        ; $4100: $fd
    dec c                                         ; $4101: $0d
    rst $38                                       ; $4102: $ff
    rrca                                          ; $4103: $0f
    rst $38                                       ; $4104: $ff
    rlca                                          ; $4105: $07
    rst $38                                       ; $4106: $ff
    ld bc, $2222                                  ; $4107: $01 $22 $22
    ld [hl+], a                                   ; $410a: $22
    ld [hl+], a                                   ; $410b: $22
    adc c                                         ; $410c: $89
    adc c                                         ; $410d: $89
    adc c                                         ; $410e: $89
    adc c                                         ; $410f: $89
    ld [hl+], a                                   ; $4110: $22
    ld [hl+], a                                   ; $4111: $22
    ld [hl+], a                                   ; $4112: $22
    ld [hl+], a                                   ; $4113: $22
    rst $38                                       ; $4114: $ff
    rst $38                                       ; $4115: $ff
    rst $38                                       ; $4116: $ff
    rst $38                                       ; $4117: $ff
    rst $38                                       ; $4118: $ff
    ldh [rIE], a                                  ; $4119: $e0 $ff
    ldh [$7f], a                                  ; $411b: $e0 $7f
    ld h, b                                       ; $411d: $60
    ld a, a                                       ; $411e: $7f
    ld h, b                                       ; $411f: $60
    rst $38                                       ; $4120: $ff
    ldh [rIE], a                                  ; $4121: $e0 $ff
    ldh [rIE], a                                  ; $4123: $e0 $ff
    ret nz                                        ; $4125: $c0

    rst $38                                       ; $4126: $ff
    nop                                           ; $4127: $00
    ld a, [$fa1a]                                 ; $4128: $fa $1a $fa
    ld a, [de]                                    ; $412b: $1a
    db $fd                                        ; $412c: $fd
    dec e                                         ; $412d: $1d
    db $fd                                        ; $412e: $fd
    dec e                                         ; $412f: $1d
    cp $1e                                        ; $4130: $fe $1e
    rst $38                                       ; $4132: $ff
    rra                                           ; $4133: $1f
    rst $38                                       ; $4134: $ff
    rrca                                          ; $4135: $0f
    rst $38                                       ; $4136: $ff
    ld bc, $9191                                  ; $4137: $01 $91 $91
    sub c                                         ; $413a: $91
    sub c                                         ; $413b: $91
    ld b, h                                       ; $413c: $44
    ld b, h                                       ; $413d: $44
    ld b, h                                       ; $413e: $44
    ld b, h                                       ; $413f: $44
    sub c                                         ; $4140: $91
    sub c                                         ; $4141: $91
    sub c                                         ; $4142: $91
    sub c                                         ; $4143: $91
    rst $38                                       ; $4144: $ff
    rst $38                                       ; $4145: $ff
    rst $38                                       ; $4146: $ff
    rst $38                                       ; $4147: $ff
    ld e, a                                       ; $4148: $5f
    ld e, b                                       ; $4149: $58
    ld e, a                                       ; $414a: $5f
    ld e, b                                       ; $414b: $58
    cp a                                          ; $414c: $bf
    cp b                                          ; $414d: $b8
    cp a                                          ; $414e: $bf
    cp b                                          ; $414f: $b8
    ld a, a                                       ; $4150: $7f
    ld a, b                                       ; $4151: $78
    rst $38                                       ; $4152: $ff
    ld hl, sp-$01                                 ; $4153: $f8 $ff
    ldh a, [rIE]                                  ; $4155: $f0 $ff
    add b                                         ; $4157: $80
    rst $38                                       ; $4158: $ff
    ld bc, $01ff                                  ; $4159: $01 $ff $01
    rst $38                                       ; $415c: $ff
    ld bc, $01ff                                  ; $415d: $01 $ff $01
    rst $38                                       ; $4160: $ff
    ld bc, $01ff                                  ; $4161: $01 $ff $01
    rst $38                                       ; $4164: $ff
    ld bc, $01ff                                  ; $4165: $01 $ff $01
    sub e                                         ; $4168: $93
    sub e                                         ; $4169: $93
    sub e                                         ; $416a: $93
    sub e                                         ; $416b: $93
    ld b, l                                       ; $416c: $45
    ld b, l                                       ; $416d: $45
    ld b, l                                       ; $416e: $45
    ld b, l                                       ; $416f: $45
    sub e                                         ; $4170: $93
    sub e                                         ; $4171: $93
    sub e                                         ; $4172: $93
    sub e                                         ; $4173: $93
    ld b, l                                       ; $4174: $45
    ld b, l                                       ; $4175: $45
    ld b, l                                       ; $4176: $45
    ld b, l                                       ; $4177: $45
    push af                                       ; $4178: $f5
    ld [hl], l                                    ; $4179: $75
    push af                                       ; $417a: $f5
    ld [hl], l                                    ; $417b: $75
    ld a, [$fa7a]                                 ; $417c: $fa $7a $fa
    ld a, d                                       ; $417f: $7a
    db $fd                                        ; $4180: $fd
    ld a, l                                       ; $4181: $7d
    rst $38                                       ; $4182: $ff
    ccf                                           ; $4183: $3f
    rst $38                                       ; $4184: $ff
    rra                                           ; $4185: $1f
    rst $38                                       ; $4186: $ff
    rlca                                          ; $4187: $07
    cp a                                          ; $4188: $bf
    cp h                                          ; $4189: $bc
    cp a                                          ; $418a: $bf
    cp h                                          ; $418b: $bc
    ld e, a                                       ; $418c: $5f
    ld e, h                                       ; $418d: $5c
    ld a, a                                       ; $418e: $7f
    ld a, h                                       ; $418f: $7c
    cp a                                          ; $4190: $bf
    cp h                                          ; $4191: $bc
    rst $38                                       ; $4192: $ff
    ld hl, sp-$01                                 ; $4193: $f8 $ff
    ldh a, [rIE]                                  ; $4195: $f0 $ff
    ret nz                                        ; $4197: $c0

    db $eb                                        ; $4198: $eb
    ld l, d                                       ; $4199: $6a
    db $eb                                        ; $419a: $eb
    ld l, d                                       ; $419b: $6a
    rst $10                                       ; $419c: $d7
    ld d, [hl]                                    ; $419d: $56
    rst $10                                       ; $419e: $d7
    ld d, [hl]                                    ; $419f: $56
    db $eb                                        ; $41a0: $eb
    ld l, d                                       ; $41a1: $6a
    db $eb                                        ; $41a2: $eb
    ld l, d                                       ; $41a3: $6a
    rst $10                                       ; $41a4: $d7
    ld d, [hl]                                    ; $41a5: $56
    rst $10                                       ; $41a6: $d7
    ld d, [hl]                                    ; $41a7: $56
    rst $30                                       ; $41a8: $f7
    inc d                                         ; $41a9: $14
    rst $30                                       ; $41aa: $f7
    inc d                                         ; $41ab: $14
    rst $38                                       ; $41ac: $ff
    inc e                                         ; $41ad: $1c
    rst $38                                       ; $41ae: $ff
    inc e                                         ; $41af: $1c
    rst $30                                       ; $41b0: $f7
    inc d                                         ; $41b1: $14
    rst $30                                       ; $41b2: $f7
    inc d                                         ; $41b3: $14
    rst $38                                       ; $41b4: $ff
    inc e                                         ; $41b5: $1c
    rst $38                                       ; $41b6: $ff
    ld [$6aeb], sp                                ; $41b7: $08 $eb $6a
    db $eb                                        ; $41ba: $eb
    ld l, d                                       ; $41bb: $6a
    rst $10                                       ; $41bc: $d7
    ld d, [hl]                                    ; $41bd: $56
    rst $10                                       ; $41be: $d7
    ld d, [hl]                                    ; $41bf: $56
    db $eb                                        ; $41c0: $eb
    ld l, d                                       ; $41c1: $6a
    db $eb                                        ; $41c2: $eb
    ld l, d                                       ; $41c3: $6a
    rst $30                                       ; $41c4: $f7
    halt                                          ; $41c5: $76
    rst $38                                       ; $41c6: $ff
    inc a                                         ; $41c7: $3c
    rst $38                                       ; $41c8: $ff
    ld bc, $01ff                                  ; $41c9: $01 $ff $01
    rst $38                                       ; $41cc: $ff
    ld bc, $01ff                                  ; $41cd: $01 $ff $01
    rst $38                                       ; $41d0: $ff
    ld bc, $01ff                                  ; $41d1: $01 $ff $01
    rst $38                                       ; $41d4: $ff
    nop                                           ; $41d5: $00
    rst $38                                       ; $41d6: $ff
    nop                                           ; $41d7: $00
    sub e                                         ; $41d8: $93
    sub e                                         ; $41d9: $93
    sub e                                         ; $41da: $93
    sub e                                         ; $41db: $93
    ld b, l                                       ; $41dc: $45
    ld b, l                                       ; $41dd: $45
    ld b, l                                       ; $41de: $45
    ld b, l                                       ; $41df: $45
    sub e                                         ; $41e0: $93
    sub e                                         ; $41e1: $93
    sub e                                         ; $41e2: $93
    sub e                                         ; $41e3: $93
    rst $00                                       ; $41e4: $c7
    add $ff                                       ; $41e5: $c6 $ff
    ld a, h                                       ; $41e7: $7c
    ld a, [de]                                    ; $41e8: $1a
    add hl, de                                    ; $41e9: $19
    dec de                                        ; $41ea: $1b
    dec d                                         ; $41eb: $15
    ld d, $00                                     ; $41ec: $16 $00
    dec d                                         ; $41ee: $15
    ld d, $00                                     ; $41ef: $16 $00
    inc e                                         ; $41f1: $1c
    dec e                                         ; $41f2: $1d
    nop                                           ; $41f3: $00
    add hl, bc                                    ; $41f4: $09
    ld [bc], a                                    ; $41f5: $02
    ld a, [bc]                                    ; $41f6: $0a
    add hl, bc                                    ; $41f7: $09
    ld [bc], a                                    ; $41f8: $02
    ld a, [bc]                                    ; $41f9: $0a
    add hl, bc                                    ; $41fa: $09
    ld [bc], a                                    ; $41fb: $02
    ld a, [bc]                                    ; $41fc: $0a
    dec bc                                        ; $41fd: $0b
    inc c                                         ; $41fe: $0c
    dec c                                         ; $41ff: $0d
    rlca                                          ; $4200: $07
    ld [bc], a                                    ; $4201: $02
    ld [$0207], sp                                ; $4202: $08 $07 $02
    ld [$0207], sp                                ; $4205: $08 $07 $02
    ld [$0207], sp                                ; $4208: $08 $07 $02
    ld [$100f], sp                                ; $420b: $08 $0f $10
    ld de, $0504                                  ; $420e: $11 $04 $05
    ld b, $04                                     ; $4211: $06 $04
    dec b                                         ; $4213: $05
    ld b, $04                                     ; $4214: $06 $04
    dec b                                         ; $4216: $05
    ld b, $04                                     ; $4217: $06 $04
    dec b                                         ; $4219: $05
    ld b, $0e                                     ; $421a: $06 $0e
    dec b                                         ; $421c: $05
    ld b, $12                                     ; $421d: $06 $12
    inc de                                        ; $421f: $13
    inc d                                         ; $4220: $14
    ld bc, $0302                                  ; $4221: $01 $02 $03
    ld bc, $0302                                  ; $4224: $01 $02 $03
    ld bc, $0302                                  ; $4227: $01 $02 $03
    ld bc, $0302                                  ; $422a: $01 $02 $03
    ld bc, $0302                                  ; $422d: $01 $02 $03
    ld bc, $0302                                  ; $4230: $01 $02 $03
    rla                                           ; $4233: $17
    db $10                                        ; $4234: $10
    jr jr_04f_4238                                ; $4235: $18 $01

    ld [bc], a                                    ; $4237: $02

jr_04f_4238:
    inc bc                                        ; $4238: $03
    ld bc, $0302                                  ; $4239: $01 $02 $03
    ld bc, $0302                                  ; $423c: $01 $02 $03
    ld bc, $0302                                  ; $423f: $01 $02 $03
    ld bc, $0302                                  ; $4242: $01 $02 $03
    ld bc, $0302                                  ; $4245: $01 $02 $03
    ld bc, $0302                                  ; $4248: $01 $02 $03
    rla                                           ; $424b: $17
    db $10                                        ; $424c: $10
    jr jr_04f_424f                                ; $424d: $18 $00

jr_04f_424f:
    nop                                           ; $424f: $00
    nop                                           ; $4250: $00
    nop                                           ; $4251: $00
    nop                                           ; $4252: $00
    nop                                           ; $4253: $00
    nop                                           ; $4254: $00
    nop                                           ; $4255: $00
    nop                                           ; $4256: $00
    nop                                           ; $4257: $00
    nop                                           ; $4258: $00
    nop                                           ; $4259: $00
    nop                                           ; $425a: $00
    nop                                           ; $425b: $00
    nop                                           ; $425c: $00
    nop                                           ; $425d: $00
    nop                                           ; $425e: $00
    nop                                           ; $425f: $00
    nop                                           ; $4260: $00
    nop                                           ; $4261: $00
    ld bc, $0301                                  ; $4262: $01 $01 $03
    inc bc                                        ; $4265: $03
    ld [bc], a                                    ; $4266: $02
    inc bc                                        ; $4267: $03
    rlca                                          ; $4268: $07
    ld b, $05                                     ; $4269: $06 $05
    ld b, $0c                                     ; $426b: $06 $0c
    rrca                                          ; $426d: $0f
    inc a                                         ; $426e: $3c
    inc a                                         ; $426f: $3c
    rst $20                                       ; $4270: $e7
    rst $38                                       ; $4271: $ff
    add c                                         ; $4272: $81
    rst $38                                       ; $4273: $ff
    nop                                           ; $4274: $00
    rst $38                                       ; $4275: $ff
    sbc c                                         ; $4276: $99
    ld h, [hl]                                    ; $4277: $66
    rst $38                                       ; $4278: $ff
    nop                                           ; $4279: $00
    inc a                                         ; $427a: $3c
    jp $9966                                      ; $427b: $c3 $66 $99


jr_04f_427e:
    nop                                           ; $427e: $00
    nop                                           ; $427f: $00
    nop                                           ; $4280: $00
    nop                                           ; $4281: $00
    add b                                         ; $4282: $80
    add b                                         ; $4283: $80
    ret nz                                        ; $4284: $c0

    ret nz                                        ; $4285: $c0

    ld b, b                                       ; $4286: $40
    ret nz                                        ; $4287: $c0

    ldh [$60], a                                  ; $4288: $e0 $60
    and b                                         ; $428a: $a0
    ld h, b                                       ; $428b: $60
    jr nc, jr_04f_427e                            ; $428c: $30 $f0

    nop                                           ; $428e: $00
    nop                                           ; $428f: $00
    nop                                           ; $4290: $00
    nop                                           ; $4291: $00
    nop                                           ; $4292: $00
    nop                                           ; $4293: $00
    ld bc, $0101                                  ; $4294: $01 $01 $01
    ld bc, $0101                                  ; $4297: $01 $01 $01
    inc bc                                        ; $429a: $03
    inc bc                                        ; $429b: $03
    inc bc                                        ; $429c: $03
    inc bc                                        ; $429d: $03
    ld [hl], b                                    ; $429e: $70
    ld a, a                                       ; $429f: $7f
    ldh a, [rIE]                                  ; $42a0: $f0 $ff
    ldh [rIE], a                                  ; $42a2: $e0 $ff
    ldh [rIE], a                                  ; $42a4: $e0 $ff
    ret nz                                        ; $42a6: $c0

    rst $38                                       ; $42a7: $ff
    ret nz                                        ; $42a8: $c0

    rst $38                                       ; $42a9: $ff
    add b                                         ; $42aa: $80
    rst $38                                       ; $42ab: $ff
    add b                                         ; $42ac: $80
    rst $38                                       ; $42ad: $ff
    ldh [rIE], a                                  ; $42ae: $e0 $ff
    pop af                                        ; $42b0: $f1
    rst $38                                       ; $42b1: $ff
    ld a, a                                       ; $42b2: $7f
    rst $38                                       ; $42b3: $ff
    ld a, a                                       ; $42b4: $7f
    rst $38                                       ; $42b5: $ff
    ccf                                           ; $42b6: $3f
    rst $38                                       ; $42b7: $ff
    ld e, $ff                                     ; $42b8: $1e $ff
    nop                                           ; $42ba: $00
    rst $38                                       ; $42bb: $ff
    nop                                           ; $42bc: $00
    rst $38                                       ; $42bd: $ff
    ld hl, sp-$01                                 ; $42be: $f8 $ff
    ldh [rIE], a                                  ; $42c0: $e0 $ff
    ret nz                                        ; $42c2: $c0

    rst $38                                       ; $42c3: $ff
    add b                                         ; $42c4: $80
    rst $38                                       ; $42c5: $ff
    nop                                           ; $42c6: $00
    rst $38                                       ; $42c7: $ff
    nop                                           ; $42c8: $00
    rst $38                                       ; $42c9: $ff
    nop                                           ; $42ca: $00
    rst $38                                       ; $42cb: $ff
    nop                                           ; $42cc: $00
    rst $38                                       ; $42cd: $ff
    ld c, $ff                                     ; $42ce: $0e $ff
    rrca                                          ; $42d0: $0f
    rst $38                                       ; $42d1: $ff
    rlca                                          ; $42d2: $07
    rst $38                                       ; $42d3: $ff
    inc bc                                        ; $42d4: $03
    rst $38                                       ; $42d5: $ff
    ld bc, $00ff                                  ; $42d6: $01 $ff $00
    rst $38                                       ; $42d9: $ff
    nop                                           ; $42da: $00
    rst $38                                       ; $42db: $ff
    nop                                           ; $42dc: $00
    rst $38                                       ; $42dd: $ff
    nop                                           ; $42de: $00
    rst $38                                       ; $42df: $ff
    nop                                           ; $42e0: $00
    rst $38                                       ; $42e1: $ff
    add c                                         ; $42e2: $81
    rst $38                                       ; $42e3: $ff
    jp $e7ff                                      ; $42e4: $c3 $ff $e7


    rst $38                                       ; $42e7: $ff
    rst $38                                       ; $42e8: $ff
    rst $38                                       ; $42e9: $ff
    ld a, [hl]                                    ; $42ea: $7e
    rst $38                                       ; $42eb: $ff
    inc a                                         ; $42ec: $3c
    rst $38                                       ; $42ed: $ff
    ld [hl], b                                    ; $42ee: $70
    rst $38                                       ; $42ef: $ff
    ldh a, [rIE]                                  ; $42f0: $f0 $ff
    ldh [rIE], a                                  ; $42f2: $e0 $ff
    ret nz                                        ; $42f4: $c0

    rst $38                                       ; $42f5: $ff
    add b                                         ; $42f6: $80
    rst $38                                       ; $42f7: $ff
    nop                                           ; $42f8: $00
    rst $38                                       ; $42f9: $ff
    nop                                           ; $42fa: $00
    rst $38                                       ; $42fb: $ff
    nop                                           ; $42fc: $00
    rst $38                                       ; $42fd: $ff
    rra                                           ; $42fe: $1f
    rst $38                                       ; $42ff: $ff
    rlca                                          ; $4300: $07
    rst $38                                       ; $4301: $ff
    inc bc                                        ; $4302: $03
    rst $38                                       ; $4303: $ff
    ld bc, $00ff                                  ; $4304: $01 $ff $00
    rst $38                                       ; $4307: $ff
    nop                                           ; $4308: $00
    rst $38                                       ; $4309: $ff
    nop                                           ; $430a: $00
    rst $38                                       ; $430b: $ff
    nop                                           ; $430c: $00
    rst $38                                       ; $430d: $ff
    rlca                                          ; $430e: $07
    rst $38                                       ; $430f: $ff
    adc a                                         ; $4310: $8f
    rst $38                                       ; $4311: $ff
    cp $ff                                        ; $4312: $fe $ff
    cp $ff                                        ; $4314: $fe $ff
    db $fc                                        ; $4316: $fc
    rst $38                                       ; $4317: $ff
    ld a, b                                       ; $4318: $78
    rst $38                                       ; $4319: $ff
    nop                                           ; $431a: $00
    rst $38                                       ; $431b: $ff
    nop                                           ; $431c: $00
    rst $38                                       ; $431d: $ff
    ld c, $fe                                     ; $431e: $0e $fe
    rrca                                          ; $4320: $0f
    rst $38                                       ; $4321: $ff
    rlca                                          ; $4322: $07
    rst $38                                       ; $4323: $ff
    rlca                                          ; $4324: $07
    rst $38                                       ; $4325: $ff
    inc bc                                        ; $4326: $03
    rst $38                                       ; $4327: $ff
    inc bc                                        ; $4328: $03
    rst $38                                       ; $4329: $ff
    ld bc, $01ff                                  ; $432a: $01 $ff $01
    rst $38                                       ; $432d: $ff
    nop                                           ; $432e: $00
    nop                                           ; $432f: $00
    nop                                           ; $4330: $00
    nop                                           ; $4331: $00
    nop                                           ; $4332: $00
    nop                                           ; $4333: $00
    add b                                         ; $4334: $80
    add b                                         ; $4335: $80
    add b                                         ; $4336: $80
    add b                                         ; $4337: $80
    add b                                         ; $4338: $80
    add b                                         ; $4339: $80
    ret nz                                        ; $433a: $c0

    ret nz                                        ; $433b: $c0

    ret nz                                        ; $433c: $c0

    ret nz                                        ; $433d: $c0

    ld [$080f], sp                                ; $433e: $08 $0f $08
    rrca                                          ; $4341: $0f
    add hl, de                                    ; $4342: $19
    rra                                           ; $4343: $1f
    ld de, $131f                                  ; $4344: $11 $1f $13
    rra                                           ; $4347: $1f
    rla                                           ; $4348: $17
    rra                                           ; $4349: $1f
    dec e                                         ; $434a: $1d
    rra                                           ; $434b: $1f
    jr jr_04f_436d                                ; $434c: $18 $1f

    ld b, d                                       ; $434e: $42
    cp l                                          ; $434f: $bd
    nop                                           ; $4350: $00
    rst $38                                       ; $4351: $ff
    nop                                           ; $4352: $00
    rst $38                                       ; $4353: $ff
    jr @+$01                                      ; $4354: $18 $ff

    inc a                                         ; $4356: $3c
    rst $38                                       ; $4357: $ff
    inc h                                         ; $4358: $24
    rst $38                                       ; $4359: $ff
    ld h, [hl]                                    ; $435a: $66
    rst $38                                       ; $435b: $ff
    jp Jump_000_10ff                              ; $435c: $c3 $ff $10


    ldh a, [rNR10]                                ; $435f: $f0 $10
    ldh a, [$98]                                  ; $4361: $f0 $98
    ld hl, sp-$78                                 ; $4363: $f8 $88
    ld hl, sp-$38                                 ; $4365: $f8 $c8
    ld hl, sp-$18                                 ; $4367: $f8 $e8
    ld hl, sp-$48                                 ; $4369: $f8 $b8
    ld hl, sp+$18                                 ; $436b: $f8 $18

jr_04f_436d:
    ld hl, sp+$03                                 ; $436d: $f8 $03
    inc bc                                        ; $436f: $03
    rlca                                          ; $4370: $07
    rlca                                          ; $4371: $07
    rlca                                          ; $4372: $07
    rlca                                          ; $4373: $07
    rlca                                          ; $4374: $07
    rlca                                          ; $4375: $07
    ld c, $0f                                     ; $4376: $0e $0f
    ld c, $0f                                     ; $4378: $0e $0f
    ld c, $0f                                     ; $437a: $0e $0f
    ld c, $0f                                     ; $437c: $0e $0f
    add b                                         ; $437e: $80
    rst $38                                       ; $437f: $ff
    nop                                           ; $4380: $00
    rst $38                                       ; $4381: $ff
    nop                                           ; $4382: $00
    rst $38                                       ; $4383: $ff
    nop                                           ; $4384: $00
    rst $38                                       ; $4385: $ff
    nop                                           ; $4386: $00
    rst $38                                       ; $4387: $ff
    nop                                           ; $4388: $00
    rst $38                                       ; $4389: $ff
    nop                                           ; $438a: $00
    rst $38                                       ; $438b: $ff
    nop                                           ; $438c: $00
    rst $38                                       ; $438d: $ff
    nop                                           ; $438e: $00
    rst $38                                       ; $438f: $ff
    nop                                           ; $4390: $00
    rst $38                                       ; $4391: $ff
    nop                                           ; $4392: $00
    rst $38                                       ; $4393: $ff
    nop                                           ; $4394: $00
    rst $38                                       ; $4395: $ff
    nop                                           ; $4396: $00
    rst $38                                       ; $4397: $ff
    nop                                           ; $4398: $00
    rst $38                                       ; $4399: $ff

jr_04f_439a:
    nop                                           ; $439a: $00
    rst $38                                       ; $439b: $ff
    nop                                           ; $439c: $00
    rst $38                                       ; $439d: $ff
    ld bc, $00ff                                  ; $439e: $01 $ff $00
    rst $38                                       ; $43a1: $ff
    nop                                           ; $43a2: $00
    rst $38                                       ; $43a3: $ff
    nop                                           ; $43a4: $00
    rst $38                                       ; $43a5: $ff
    nop                                           ; $43a6: $00
    rst $38                                       ; $43a7: $ff
    nop                                           ; $43a8: $00
    rst $38                                       ; $43a9: $ff
    nop                                           ; $43aa: $00
    rst $38                                       ; $43ab: $ff
    nop                                           ; $43ac: $00
    rst $38                                       ; $43ad: $ff
    ret nz                                        ; $43ae: $c0

    ret nz                                        ; $43af: $c0

    ldh [$e0], a                                  ; $43b0: $e0 $e0
    ldh [$e0], a                                  ; $43b2: $e0 $e0
    ldh [$e0], a                                  ; $43b4: $e0 $e0
    ld [hl], b                                    ; $43b6: $70
    ldh a, [rSVBK]                                ; $43b7: $f0 $70
    ldh a, [rSVBK]                                ; $43b9: $f0 $70
    ldh a, [rSVBK]                                ; $43bb: $f0 $70
    ldh a, [rNR10]                                ; $43bd: $f0 $10
    rra                                           ; $43bf: $1f
    jr nc, jr_04f_4401                            ; $43c0: $30 $3f

    jr nz, jr_04f_4403                            ; $43c2: $20 $3f

    ld h, b                                       ; $43c4: $60
    ld a, a                                       ; $43c5: $7f
    ld b, b                                       ; $43c6: $40
    ld a, a                                       ; $43c7: $7f
    ld d, b                                       ; $43c8: $50
    ld l, a                                       ; $43c9: $6f
    ld a, b                                       ; $43ca: $78
    ld b, a                                       ; $43cb: $47
    db $ed                                        ; $43cc: $ed
    jp nc, $ff00                                  ; $43cd: $d2 $00 $ff

    jp $82ff                                      ; $43d0: $c3 $ff $82


    rst $38                                       ; $43d3: $ff
    jp Jump_000_00ff                              ; $43d4: $c3 $ff $00


    rst $38                                       ; $43d7: $ff
    ld b, d                                       ; $43d8: $42
    cp l                                          ; $43d9: $bd
    rst $20                                       ; $43da: $e7
    jr jr_04f_439a                                ; $43db: $18 $bd

    ld b, d                                       ; $43dd: $42
    ld [$0cf8], sp                                ; $43de: $08 $f8 $0c
    db $fc                                        ; $43e1: $fc
    inc b                                         ; $43e2: $04
    db $fc                                        ; $43e3: $fc
    ld b, $fe                                     ; $43e4: $06 $fe
    ld [bc], a                                    ; $43e6: $02
    cp $0a                                        ; $43e7: $fe $0a
    or $1e                                        ; $43e9: $f6 $1e
    ld [c], a                                     ; $43eb: $e2
    or a                                          ; $43ec: $b7
    ld c, e                                       ; $43ed: $4b
    ld e, $1f                                     ; $43ee: $1e $1f
    inc e                                         ; $43f0: $1c
    rra                                           ; $43f1: $1f
    inc e                                         ; $43f2: $1c
    rra                                           ; $43f3: $1f
    inc e                                         ; $43f4: $1c
    rra                                           ; $43f5: $1f
    inc e                                         ; $43f6: $1c
    rra                                           ; $43f7: $1f
    inc e                                         ; $43f8: $1c
    rra                                           ; $43f9: $1f
    jr c, jr_04f_443b                             ; $43fa: $38 $3f

    jr c, jr_04f_443d                             ; $43fc: $38 $3f

    ld a, b                                       ; $43fe: $78
    ld hl, sp+$38                                 ; $43ff: $f8 $38

jr_04f_4401:
    ld hl, sp+$38                                 ; $4401: $f8 $38

jr_04f_4403:
    ld hl, sp+$38                                 ; $4403: $f8 $38
    ld hl, sp+$38                                 ; $4405: $f8 $38

jr_04f_4407:
    ld hl, sp+$38                                 ; $4407: $f8 $38
    ld hl, sp+$1c                                 ; $4409: $f8 $1c
    db $fc                                        ; $440b: $fc
    inc e                                         ; $440c: $1c
    db $fc                                        ; $440d: $fc
    add a                                         ; $440e: $87
    ld hl, sp-$7e                                 ; $440f: $f8 $82
    db $fd                                        ; $4411: $fd
    sub b                                         ; $4412: $90
    rst $38                                       ; $4413: $ff
    or b                                          ; $4414: $b0
    rst $38                                       ; $4415: $ff
    cp b                                          ; $4416: $b8
    rst $38                                       ; $4417: $ff
    ld hl, sp-$01                                 ; $4418: $f8 $ff
    ld l, l                                       ; $441a: $6d
    ld a, a                                       ; $441b: $7f
    ld h, a                                       ; $441c: $67
    ld a, a                                       ; $441d: $7f
    jr jr_04f_4407                                ; $441e: $18 $e7

    nop                                           ; $4420: $00
    rst $38                                       ; $4421: $ff
    nop                                           ; $4422: $00
    rst $38                                       ; $4423: $ff
    ld b, d                                       ; $4424: $42
    rst $38                                       ; $4425: $ff
    jp $e7ff                                      ; $4426: $c3 $ff $e7


    rst $38                                       ; $4429: $ff
    cp l                                          ; $442a: $bd
    rst $38                                       ; $442b: $ff
    jr @+$01                                      ; $442c: $18 $ff

    pop hl                                        ; $442e: $e1
    rra                                           ; $442f: $1f
    ld b, c                                       ; $4430: $41
    cp a                                          ; $4431: $bf
    add hl, bc                                    ; $4432: $09
    rst $38                                       ; $4433: $ff
    dec c                                         ; $4434: $0d
    rst $38                                       ; $4435: $ff
    dec e                                         ; $4436: $1d
    rst $38                                       ; $4437: $ff
    rra                                           ; $4438: $1f
    rst $38                                       ; $4439: $ff
    or [hl]                                       ; $443a: $b6

jr_04f_443b:
    cp $e6                                        ; $443b: $fe $e6

jr_04f_443d:
    cp $38                                        ; $443d: $fe $38
    ccf                                           ; $443f: $3f
    jr c, jr_04f_4481                             ; $4440: $38 $3f

    jr c, jr_04f_4483                             ; $4442: $38 $3f

    jr c, jr_04f_4485                             ; $4444: $38 $3f

    jr c, @+$41                                   ; $4446: $38 $3f

    jr c, jr_04f_4489                             ; $4448: $38 $3f

    jr c, jr_04f_448b                             ; $444a: $38 $3f

    jr c, jr_04f_448d                             ; $444c: $38 $3f

    inc e                                         ; $444e: $1c
    db $fc                                        ; $444f: $fc
    inc e                                         ; $4450: $1c
    db $fc                                        ; $4451: $fc
    inc e                                         ; $4452: $1c
    db $fc                                        ; $4453: $fc
    inc e                                         ; $4454: $1c
    db $fc                                        ; $4455: $fc
    inc e                                         ; $4456: $1c
    db $fc                                        ; $4457: $fc
    inc e                                         ; $4458: $1c
    db $fc                                        ; $4459: $fc
    inc e                                         ; $445a: $1c
    db $fc                                        ; $445b: $fc
    inc e                                         ; $445c: $1c
    db $fc                                        ; $445d: $fc
    ld b, b                                       ; $445e: $40
    ld a, a                                       ; $445f: $7f
    ld b, b                                       ; $4460: $40
    ld a, a                                       ; $4461: $7f
    ret nz                                        ; $4462: $c0

    rst $38                                       ; $4463: $ff
    ret nz                                        ; $4464: $c0

    rst $38                                       ; $4465: $ff
    add b                                         ; $4466: $80
    rst $38                                       ; $4467: $ff
    add b                                         ; $4468: $80
    rst $38                                       ; $4469: $ff
    sbc b                                         ; $446a: $98
    rst $20                                       ; $446b: $e7
    cp l                                          ; $446c: $bd

jr_04f_446d:
    jp nz, $ff00                                  ; $446d: $c2 $00 $ff

    nop                                           ; $4470: $00
    rst $38                                       ; $4471: $ff
    nop                                           ; $4472: $00
    rst $38                                       ; $4473: $ff
    nop                                           ; $4474: $00
    rst $38                                       ; $4475: $ff
    nop                                           ; $4476: $00
    rst $38                                       ; $4477: $ff
    nop                                           ; $4478: $00
    rst $38                                       ; $4479: $ff
    jp $e73c                                      ; $447a: $c3 $3c $e7


    jr jr_04f_4481                                ; $447d: $18 $02

    cp $02                                        ; $447f: $fe $02

jr_04f_4481:
    cp $03                                        ; $4481: $fe $03

jr_04f_4483:
    rst $38                                       ; $4483: $ff
    inc bc                                        ; $4484: $03

jr_04f_4485:
    rst $38                                       ; $4485: $ff
    ld bc, $01ff                                  ; $4486: $01 $ff $01

jr_04f_4489:
    rst $38                                       ; $4489: $ff
    add hl, de                                    ; $448a: $19

jr_04f_448b:
    rst $20                                       ; $448b: $e7
    cp l                                          ; $448c: $bd

jr_04f_448d:
    ld b, e                                       ; $448d: $43
    inc bc                                        ; $448e: $03
    db $fc                                        ; $448f: $fc
    rrca                                          ; $4490: $0f
    ldh a, [$1f]                                  ; $4491: $f0 $1f
    ldh [$3f], a                                  ; $4493: $e0 $3f
    ret nz                                        ; $4495: $c0

    ld a, a                                       ; $4496: $7f
    add b                                         ; $4497: $80
    ld a, h                                       ; $4498: $7c
    add e                                         ; $4499: $83
    ld a, b                                       ; $449a: $78
    add a                                         ; $449b: $87
    jr nc, jr_04f_446d                            ; $449c: $30 $cf

    add b                                         ; $449e: $80
    ld a, a                                       ; $449f: $7f
    ldh [$1f], a                                  ; $44a0: $e0 $1f
    ldh a, [rIF]                                  ; $44a2: $f0 $0f
    ld hl, sp+$07                                 ; $44a4: $f8 $07
    db $fc                                        ; $44a6: $fc
    inc bc                                        ; $44a7: $03
    cp $01                                        ; $44a8: $fe $01
    ccf                                           ; $44aa: $3f
    ret nz                                        ; $44ab: $c0

    rra                                           ; $44ac: $1f
    ldh [rP1], a                                  ; $44ad: $e0 $00
    rst $38                                       ; $44af: $ff
    nop                                           ; $44b0: $00
    rst $38                                       ; $44b1: $ff
    ld bc, $03fe                                  ; $44b2: $01 $fe $03
    db $fc                                        ; $44b5: $fc
    rlca                                          ; $44b6: $07
    ld hl, sp+$0f                                 ; $44b7: $f8 $0f
    ldh a, [$1f]                                  ; $44b9: $f0 $1f
    ldh [rIE], a                                  ; $44bb: $e0 $ff
    nop                                           ; $44bd: $00
    nop                                           ; $44be: $00
    rst $38                                       ; $44bf: $ff
    ldh a, [rIF]                                  ; $44c0: $f0 $0f
    ld hl, sp+$07                                 ; $44c2: $f8 $07
    db $fc                                        ; $44c4: $fc
    inc bc                                        ; $44c5: $03
    cp $01                                        ; $44c6: $fe $01
    rst $38                                       ; $44c8: $ff
    nop                                           ; $44c9: $00
    adc a                                         ; $44ca: $8f
    ld [hl], b                                    ; $44cb: $70
    rlca                                          ; $44cc: $07
    ld hl, sp+$00                                 ; $44cd: $f8 $00
    rst $38                                       ; $44cf: $ff
    nop                                           ; $44d0: $00
    rst $38                                       ; $44d1: $ff
    nop                                           ; $44d2: $00
    rst $38                                       ; $44d3: $ff
    nop                                           ; $44d4: $00
    rst $38                                       ; $44d5: $ff
    nop                                           ; $44d6: $00
    rst $38                                       ; $44d7: $ff
    nop                                           ; $44d8: $00
    rst $38                                       ; $44d9: $ff
    add c                                         ; $44da: $81
    ld a, [hl]                                    ; $44db: $7e
    jp Jump_000_003c                              ; $44dc: $c3 $3c $00


    rst $38                                       ; $44df: $ff
    rrca                                          ; $44e0: $0f
    ldh a, [$1f]                                  ; $44e1: $f0 $1f
    ldh [$3f], a                                  ; $44e3: $e0 $3f
    ret nz                                        ; $44e5: $c0

    ld a, a                                       ; $44e6: $7f
    add b                                         ; $44e7: $80
    rst $38                                       ; $44e8: $ff
    nop                                           ; $44e9: $00
    pop af                                        ; $44ea: $f1
    ld c, $e0                                     ; $44eb: $0e $e0
    rra                                           ; $44ed: $1f
    nop                                           ; $44ee: $00
    rst $38                                       ; $44ef: $ff
    nop                                           ; $44f0: $00
    rst $38                                       ; $44f1: $ff
    add b                                         ; $44f2: $80
    ld a, a                                       ; $44f3: $7f
    ret nz                                        ; $44f4: $c0

    ccf                                           ; $44f5: $3f
    ldh [$1f], a                                  ; $44f6: $e0 $1f
    ldh a, [rIF]                                  ; $44f8: $f0 $0f
    ld hl, sp+$07                                 ; $44fa: $f8 $07
    rst $38                                       ; $44fc: $ff
    nop                                           ; $44fd: $00
    ld bc, $07fe                                  ; $44fe: $01 $fe $07
    ld hl, sp+$0f                                 ; $4501: $f8 $0f
    ldh a, [$1f]                                  ; $4503: $f0 $1f
    ldh [$3f], a                                  ; $4505: $e0 $3f
    ret nz                                        ; $4507: $c0

    ld a, a                                       ; $4508: $7f
    add b                                         ; $4509: $80
    db $fc                                        ; $450a: $fc
    inc bc                                        ; $450b: $03
    ld hl, sp+$07                                 ; $450c: $f8 $07
    ret nz                                        ; $450e: $c0

    ccf                                           ; $450f: $3f
    ldh a, [rIF]                                  ; $4510: $f0 $0f
    ld hl, sp+$07                                 ; $4512: $f8 $07
    db $fc                                        ; $4514: $fc
    inc bc                                        ; $4515: $03
    cp $01                                        ; $4516: $fe $01
    ld a, $c1                                     ; $4518: $3e $c1
    ld e, $e1                                     ; $451a: $1e $e1
    inc c                                         ; $451c: $0c
    di                                            ; $451d: $f3
    and a                                         ; $451e: $a7
    ret c                                         ; $451f: $d8

    add d                                         ; $4520: $82
    db $fd                                        ; $4521: $fd
    sub b                                         ; $4522: $90
    rst $38                                       ; $4523: $ff
    cp b                                          ; $4524: $b8
    rst $38                                       ; $4525: $ff
    add sp, -$11                                  ; $4526: $e8 $ef
    ld c, b                                       ; $4528: $48
    ld c, a                                       ; $4529: $4f
    dec c                                         ; $452a: $0d
    rrca                                          ; $452b: $0f
    rlca                                          ; $452c: $07
    rlca                                          ; $452d: $07
    inc a                                         ; $452e: $3c
    jp $e718                                      ; $452f: $c3 $18 $e7


    nop                                           ; $4532: $00
    rst $38                                       ; $4533: $ff
    ld b, d                                       ; $4534: $42
    rst $38                                       ; $4535: $ff
    rst $20                                       ; $4536: $e7
    rst $38                                       ; $4537: $ff
    rst $20                                       ; $4538: $e7
    rst $38                                       ; $4539: $ff
    rst $38                                       ; $453a: $ff
    rst $38                                       ; $453b: $ff
    ld e, [hl]                                    ; $453c: $5e
    ld a, [hl]                                    ; $453d: $7e
    push hl                                       ; $453e: $e5
    dec de                                        ; $453f: $1b
    ld b, c                                       ; $4540: $41
    cp a                                          ; $4541: $bf
    add hl, bc                                    ; $4542: $09
    rst $38                                       ; $4543: $ff
    dec e                                         ; $4544: $1d
    rst $38                                       ; $4545: $ff
    rla                                           ; $4546: $17
    rst $30                                       ; $4547: $f7
    ld [de], a                                    ; $4548: $12
    ld a, [c]                                     ; $4549: $f2
    or b                                          ; $454a: $b0
    ldh a, [$60]                                  ; $454b: $f0 $60
    ld h, b                                       ; $454d: $60
    nop                                           ; $454e: $00
    rst $38                                       ; $454f: $ff
    nop                                           ; $4550: $00
    rst $38                                       ; $4551: $ff
    nop                                           ; $4552: $00
    rst $38                                       ; $4553: $ff
    nop                                           ; $4554: $00
    rst $38                                       ; $4555: $ff
    nop                                           ; $4556: $00
    rst $38                                       ; $4557: $ff
    rlca                                          ; $4558: $07
    rst $38                                       ; $4559: $ff
    rrca                                          ; $455a: $0f
    rst $38                                       ; $455b: $ff
    rra                                           ; $455c: $1f
    rst $38                                       ; $455d: $ff
    rrca                                          ; $455e: $0f
    ldh a, [rTAC]                                 ; $455f: $f0 $07
    ld hl, sp+$03                                 ; $4561: $f8 $03
    db $fc                                        ; $4563: $fc
    ld bc, $00fe                                  ; $4564: $01 $fe $00
    rst $38                                       ; $4567: $ff
    nop                                           ; $4568: $00
    rst $38                                       ; $4569: $ff
    add b                                         ; $456a: $80
    rst $38                                       ; $456b: $ff
    add b                                         ; $456c: $80
    rst $38                                       ; $456d: $ff
    cp $01                                        ; $456e: $fe $01
    db $fc                                        ; $4570: $fc
    inc bc                                        ; $4571: $03
    ld hl, sp+$07                                 ; $4572: $f8 $07
    ldh a, [rIF]                                  ; $4574: $f0 $0f
    nop                                           ; $4576: $00
    rst $38                                       ; $4577: $ff
    nop                                           ; $4578: $00
    rst $38                                       ; $4579: $ff
    nop                                           ; $457a: $00
    rst $38                                       ; $457b: $ff
    nop                                           ; $457c: $00
    rst $38                                       ; $457d: $ff
    inc bc                                        ; $457e: $03

jr_04f_457f:
    db $fc                                        ; $457f: $fc
    ld bc, $00fe                                  ; $4580: $01 $fe $00
    rst $38                                       ; $4583: $ff
    nop                                           ; $4584: $00
    rst $38                                       ; $4585: $ff
    nop                                           ; $4586: $00
    rst $38                                       ; $4587: $ff
    nop                                           ; $4588: $00
    rst $38                                       ; $4589: $ff
    nop                                           ; $458a: $00
    rst $38                                       ; $458b: $ff
    nop                                           ; $458c: $00
    rst $38                                       ; $458d: $ff
    rst $38                                       ; $458e: $ff
    nop                                           ; $458f: $00
    rst $38                                       ; $4590: $ff
    nop                                           ; $4591: $00
    rst $38                                       ; $4592: $ff
    nop                                           ; $4593: $00
    ld a, [hl]                                    ; $4594: $7e
    add c                                         ; $4595: $81
    jr jr_04f_457f                                ; $4596: $18 $e7

    nop                                           ; $4598: $00
    rst $38                                       ; $4599: $ff
    nop                                           ; $459a: $00
    rst $38                                       ; $459b: $ff
    nop                                           ; $459c: $00
    rst $38                                       ; $459d: $ff
    ret nz                                        ; $459e: $c0

    ccf                                           ; $459f: $3f
    add b                                         ; $45a0: $80
    ld a, a                                       ; $45a1: $7f
    nop                                           ; $45a2: $00
    rst $38                                       ; $45a3: $ff
    nop                                           ; $45a4: $00
    rst $38                                       ; $45a5: $ff
    nop                                           ; $45a6: $00
    rst $38                                       ; $45a7: $ff
    nop                                           ; $45a8: $00
    rst $38                                       ; $45a9: $ff
    nop                                           ; $45aa: $00
    rst $38                                       ; $45ab: $ff
    nop                                           ; $45ac: $00
    rst $38                                       ; $45ad: $ff
    ld a, a                                       ; $45ae: $7f
    add b                                         ; $45af: $80
    ccf                                           ; $45b0: $3f
    ret nz                                        ; $45b1: $c0

    rra                                           ; $45b2: $1f
    ldh [rIF], a                                  ; $45b3: $e0 $0f
    ldh a, [rP1]                                  ; $45b5: $f0 $00
    rst $38                                       ; $45b7: $ff
    nop                                           ; $45b8: $00
    rst $38                                       ; $45b9: $ff
    nop                                           ; $45ba: $00
    rst $38                                       ; $45bb: $ff
    nop                                           ; $45bc: $00
    rst $38                                       ; $45bd: $ff
    ldh a, [rIF]                                  ; $45be: $f0 $0f
    ldh [$1f], a                                  ; $45c0: $e0 $1f
    ret nz                                        ; $45c2: $c0

    ccf                                           ; $45c3: $3f
    add b                                         ; $45c4: $80
    ld a, a                                       ; $45c5: $7f
    nop                                           ; $45c6: $00
    rst $38                                       ; $45c7: $ff
    nop                                           ; $45c8: $00
    rst $38                                       ; $45c9: $ff
    ld bc, $01ff                                  ; $45ca: $01 $ff $01
    rst $38                                       ; $45cd: $ff
    nop                                           ; $45ce: $00
    rst $38                                       ; $45cf: $ff
    nop                                           ; $45d0: $00
    rst $38                                       ; $45d1: $ff
    nop                                           ; $45d2: $00
    rst $38                                       ; $45d3: $ff
    nop                                           ; $45d4: $00
    rst $38                                       ; $45d5: $ff
    nop                                           ; $45d6: $00
    rst $38                                       ; $45d7: $ff
    ldh [rIE], a                                  ; $45d8: $e0 $ff
    ldh a, [rIE]                                  ; $45da: $f0 $ff
    ld hl, sp-$01                                 ; $45dc: $f8 $ff
    jr c, @+$41                                   ; $45de: $38 $3f

    inc a                                         ; $45e0: $3c
    ccf                                           ; $45e1: $3f
    inc e                                         ; $45e2: $1c
    rra                                           ; $45e3: $1f
    rra                                           ; $45e4: $1f
    rra                                           ; $45e5: $1f
    rrca                                          ; $45e6: $0f
    rrca                                          ; $45e7: $0f
    rrca                                          ; $45e8: $0f
    rrca                                          ; $45e9: $0f
    rlca                                          ; $45ea: $07
    rlca                                          ; $45eb: $07
    nop                                           ; $45ec: $00
    nop                                           ; $45ed: $00
    ccf                                           ; $45ee: $3f
    rst $38                                       ; $45ef: $ff
    ld a, c                                       ; $45f0: $79
    ld sp, hl                                     ; $45f1: $f9
    pop af                                        ; $45f2: $f1
    pop af                                        ; $45f3: $f1
    ldh [$e0], a                                  ; $45f4: $e0 $e0
    ret nz                                        ; $45f6: $c0

    ret nz                                        ; $45f7: $c0

    add b                                         ; $45f8: $80
    add b                                         ; $45f9: $80
    nop                                           ; $45fa: $00
    nop                                           ; $45fb: $00
    nop                                           ; $45fc: $00
    nop                                           ; $45fd: $00
    ret nz                                        ; $45fe: $c0

    rst $38                                       ; $45ff: $ff
    ret nz                                        ; $4600: $c0

    rst $38                                       ; $4601: $ff
    ret nz                                        ; $4602: $c0

    rst $38                                       ; $4603: $ff
    ret nz                                        ; $4604: $c0

    rst $38                                       ; $4605: $ff
    ldh [rIE], a                                  ; $4606: $e0 $ff
    ldh [rIE], a                                  ; $4608: $e0 $ff
    ld [hl], b                                    ; $460a: $70
    ld a, a                                       ; $460b: $7f
    ld [hl], b                                    ; $460c: $70
    ld a, a                                       ; $460d: $7f
    nop                                           ; $460e: $00
    rst $38                                       ; $460f: $ff
    ld bc, $01ff                                  ; $4610: $01 $ff $01
    rst $38                                       ; $4613: $ff
    inc bc                                        ; $4614: $03
    rst $38                                       ; $4615: $ff
    rlca                                          ; $4616: $07
    rst $38                                       ; $4617: $ff
    rlca                                          ; $4618: $07
    rst $38                                       ; $4619: $ff
    ld c, $fe                                     ; $461a: $0e $fe
    ld e, $fe                                     ; $461c: $1e $fe
    ldh [rIE], a                                  ; $461e: $e0 $ff
    ldh a, [rIE]                                  ; $4620: $f0 $ff
    ldh a, [rIE]                                  ; $4622: $f0 $ff
    ld hl, sp-$01                                 ; $4624: $f8 $ff
    ld hl, sp-$01                                 ; $4626: $f8 $ff
    ld a, h                                       ; $4628: $7c
    ld a, a                                       ; $4629: $7f
    ld a, h                                       ; $462a: $7c
    ld a, a                                       ; $462b: $7f
    ld a, [hl]                                    ; $462c: $7e
    ld a, a                                       ; $462d: $7f
    rlca                                          ; $462e: $07
    rst $38                                       ; $462f: $ff
    rrca                                          ; $4630: $0f
    rst $38                                       ; $4631: $ff
    rrca                                          ; $4632: $0f
    rst $38                                       ; $4633: $ff
    rra                                           ; $4634: $1f
    rst $38                                       ; $4635: $ff
    dec e                                         ; $4636: $1d
    db $fd                                        ; $4637: $fd
    inc a                                         ; $4638: $3c
    db $fc                                        ; $4639: $fc
    inc a                                         ; $463a: $3c
    db $fc                                        ; $463b: $fc
    ld a, h                                       ; $463c: $7c
    db $fc                                        ; $463d: $fc
    nop                                           ; $463e: $00
    rst $38                                       ; $463f: $ff
    add b                                         ; $4640: $80
    rst $38                                       ; $4641: $ff
    add b                                         ; $4642: $80
    rst $38                                       ; $4643: $ff
    ret nz                                        ; $4644: $c0

    rst $38                                       ; $4645: $ff
    ldh [rIE], a                                  ; $4646: $e0 $ff
    ldh [rIE], a                                  ; $4648: $e0 $ff
    ld [hl], b                                    ; $464a: $70
    ld a, a                                       ; $464b: $7f
    ld a, b                                       ; $464c: $78
    ld a, a                                       ; $464d: $7f
    inc bc                                        ; $464e: $03
    rst $38                                       ; $464f: $ff
    inc bc                                        ; $4650: $03
    rst $38                                       ; $4651: $ff
    inc bc                                        ; $4652: $03
    rst $38                                       ; $4653: $ff
    inc bc                                        ; $4654: $03
    rst $38                                       ; $4655: $ff
    rlca                                          ; $4656: $07
    rst $38                                       ; $4657: $ff
    rlca                                          ; $4658: $07
    rst $38                                       ; $4659: $ff
    ld c, $fe                                     ; $465a: $0e $fe
    ld c, $fe                                     ; $465c: $0e $fe
    db $fc                                        ; $465e: $fc
    rst $38                                       ; $465f: $ff
    sbc [hl]                                      ; $4660: $9e
    sbc a                                         ; $4661: $9f
    adc a                                         ; $4662: $8f
    adc a                                         ; $4663: $8f
    rlca                                          ; $4664: $07
    rlca                                          ; $4665: $07
    inc bc                                        ; $4666: $03
    inc bc                                        ; $4667: $03
    ld bc, $0001                                  ; $4668: $01 $01 $00
    nop                                           ; $466b: $00

jr_04f_466c:
    nop                                           ; $466c: $00
    nop                                           ; $466d: $00
    inc e                                         ; $466e: $1c
    db $fc                                        ; $466f: $fc
    inc a                                         ; $4670: $3c
    db $fc                                        ; $4671: $fc
    jr c, jr_04f_466c                             ; $4672: $38 $f8

    ld hl, sp-$08                                 ; $4674: $f8 $f8
    ldh a, [$f0]                                  ; $4676: $f0 $f0
    ldh a, [$f0]                                  ; $4678: $f0 $f0
    ldh [$e0], a                                  ; $467a: $e0 $e0
    nop                                           ; $467c: $00
    nop                                           ; $467d: $00
    jr c, jr_04f_46bf                             ; $467e: $38 $3f

    jr c, jr_04f_46c1                             ; $4680: $38 $3f

    inc e                                         ; $4682: $1c
    rra                                           ; $4683: $1f
    rra                                           ; $4684: $1f
    rra                                           ; $4685: $1f
    rrca                                          ; $4686: $0f
    rrca                                          ; $4687: $0f
    rlca                                          ; $4688: $07
    rlca                                          ; $4689: $07

jr_04f_468a:
    inc bc                                        ; $468a: $03
    inc bc                                        ; $468b: $03
    nop                                           ; $468c: $00
    nop                                           ; $468d: $00
    inc e                                         ; $468e: $1c
    db $fc                                        ; $468f: $fc
    jr c, jr_04f_468a                             ; $4690: $38 $f8

    ld a, b                                       ; $4692: $78
    ld hl, sp-$10                                 ; $4693: $f8 $f0
    ldh a, [$e0]                                  ; $4695: $f0 $e0
    ldh [$c0], a                                  ; $4697: $e0 $c0
    ret nz                                        ; $4699: $c0

    nop                                           ; $469a: $00
    nop                                           ; $469b: $00
    nop                                           ; $469c: $00
    nop                                           ; $469d: $00
    ld a, [hl]                                    ; $469e: $7e
    ld a, a                                       ; $469f: $7f
    ld a, a                                       ; $46a0: $7f
    ld a, a                                       ; $46a1: $7f
    ld a, a                                       ; $46a2: $7f
    ld a, a                                       ; $46a3: $7f
    ld a, e                                       ; $46a4: $7b
    ld a, a                                       ; $46a5: $7f
    ld [hl], a                                    ; $46a6: $77
    ld a, a                                       ; $46a7: $7f
    ld [hl], l                                    ; $46a8: $75
    ld a, a                                       ; $46a9: $7f
    ld a, d                                       ; $46aa: $7a
    ld a, a                                       ; $46ab: $7f
    ld a, d                                       ; $46ac: $7a
    ld a, a                                       ; $46ad: $7f
    nop                                           ; $46ae: $00
    rst $38                                       ; $46af: $ff
    nop                                           ; $46b0: $00
    rst $38                                       ; $46b1: $ff
    add c                                         ; $46b2: $81
    rst $38                                       ; $46b3: $ff
    jp $e7ff                                      ; $46b4: $c3 $ff $e7


    rst $38                                       ; $46b7: $ff
    rst $38                                       ; $46b8: $ff
    rst $38                                       ; $46b9: $ff
    rst $38                                       ; $46ba: $ff
    rst $38                                       ; $46bb: $ff
    ld a, l                                       ; $46bc: $7d
    rst $38                                       ; $46bd: $ff
    ld a, h                                       ; $46be: $7c

jr_04f_46bf:
    db $fc                                        ; $46bf: $fc
    db $fc                                        ; $46c0: $fc

jr_04f_46c1:
    db $fc                                        ; $46c1: $fc
    db $fc                                        ; $46c2: $fc
    db $fc                                        ; $46c3: $fc
    call c, $bcfc                                 ; $46c4: $dc $fc $bc
    db $fc                                        ; $46c7: $fc
    cp h                                          ; $46c8: $bc
    db $fc                                        ; $46c9: $fc
    ld e, h                                       ; $46ca: $5c
    db $fc                                        ; $46cb: $fc
    ld e, h                                       ; $46cc: $5c
    db $fc                                        ; $46cd: $fc
    jr c, jr_04f_470f                             ; $46ce: $38 $3f

    inc e                                         ; $46d0: $1c
    rra                                           ; $46d1: $1f
    ld e, $1f                                     ; $46d2: $1e $1f
    rrca                                          ; $46d4: $0f
    rrca                                          ; $46d5: $0f
    rlca                                          ; $46d6: $07
    rlca                                          ; $46d7: $07
    inc bc                                        ; $46d8: $03
    inc bc                                        ; $46d9: $03
    nop                                           ; $46da: $00
    nop                                           ; $46db: $00

jr_04f_46dc:
    nop                                           ; $46dc: $00
    nop                                           ; $46dd: $00
    inc e                                         ; $46de: $1c
    db $fc                                        ; $46df: $fc
    inc e                                         ; $46e0: $1c
    db $fc                                        ; $46e1: $fc
    jr c, jr_04f_46dc                             ; $46e2: $38 $f8

    ld hl, sp-$08                                 ; $46e4: $f8 $f8
    ldh a, [$f0]                                  ; $46e6: $f0 $f0
    ldh [$e0], a                                  ; $46e8: $e0 $e0
    ret nz                                        ; $46ea: $c0

    ret nz                                        ; $46eb: $c0

    nop                                           ; $46ec: $00
    nop                                           ; $46ed: $00
    nop                                           ; $46ee: $00
    nop                                           ; $46ef: $00
    nop                                           ; $46f0: $00
    nop                                           ; $46f1: $00
    nop                                           ; $46f2: $00
    nop                                           ; $46f3: $00
    ld bc, $0101                                  ; $46f4: $01 $01 $01
    ld bc, $0303                                  ; $46f7: $01 $03 $03
    inc bc                                        ; $46fa: $03
    inc bc                                        ; $46fb: $03
    inc bc                                        ; $46fc: $03
    inc bc                                        ; $46fd: $03
    ld [hl], b                                    ; $46fe: $70
    ld a, a                                       ; $46ff: $7f
    ldh [rIE], a                                  ; $4700: $e0 $ff
    ldh [rIE], a                                  ; $4702: $e0 $ff
    ret nz                                        ; $4704: $c0

    rst $38                                       ; $4705: $ff
    ret nz                                        ; $4706: $c0

    rst $38                                       ; $4707: $ff
    add b                                         ; $4708: $80
    rst $38                                       ; $4709: $ff
    add b                                         ; $470a: $80
    rst $38                                       ; $470b: $ff
    add b                                         ; $470c: $80
    rst $38                                       ; $470d: $ff
    nop                                           ; $470e: $00

jr_04f_470f:
    rst $38                                       ; $470f: $ff
    nop                                           ; $4710: $00
    rst $38                                       ; $4711: $ff
    jr @+$01                                      ; $4712: $18 $ff

    inc a                                         ; $4714: $3c
    rst $38                                       ; $4715: $ff
    jr c, @+$01                                   ; $4716: $38 $ff

    jr c, @+$01                                   ; $4718: $38 $ff

    inc a                                         ; $471a: $3c
    rst $38                                       ; $471b: $ff
    jr @+$01                                      ; $471c: $18 $ff

    ld c, $fe                                     ; $471e: $0e $fe
    rlca                                          ; $4720: $07
    rst $38                                       ; $4721: $ff
    rlca                                          ; $4722: $07
    rst $38                                       ; $4723: $ff
    inc bc                                        ; $4724: $03
    rst $38                                       ; $4725: $ff
    inc bc                                        ; $4726: $03
    rst $38                                       ; $4727: $ff
    ld bc, $01ff                                  ; $4728: $01 $ff $01
    rst $38                                       ; $472b: $ff
    ld bc, $00ff                                  ; $472c: $01 $ff $00
    nop                                           ; $472f: $00
    nop                                           ; $4730: $00
    nop                                           ; $4731: $00
    nop                                           ; $4732: $00
    nop                                           ; $4733: $00
    add b                                         ; $4734: $80
    add b                                         ; $4735: $80
    add b                                         ; $4736: $80
    add b                                         ; $4737: $80
    ret nz                                        ; $4738: $c0

    ret nz                                        ; $4739: $c0

    ret nz                                        ; $473a: $c0

    ret nz                                        ; $473b: $c0

    ret nz                                        ; $473c: $c0

    ret nz                                        ; $473d: $c0

    db $e3                                        ; $473e: $e3
    rst $38                                       ; $473f: $ff
    rst $20                                       ; $4740: $e7
    rst $38                                       ; $4741: $ff
    rst $28                                       ; $4742: $ef
    rst $38                                       ; $4743: $ff
    xor $fe                                       ; $4744: $ee $fe
    ld a, h                                       ; $4746: $7c
    ld a, h                                       ; $4747: $7c
    ld a, b                                       ; $4748: $78
    ld a, b                                       ; $4749: $78
    ld sp, $0131                                  ; $474a: $31 $31 $01
    ld bc, $fff0                                  ; $474d: $01 $f0 $ff
    ldh a, [rIE]                                  ; $4750: $f0 $ff
    ld [hl], b                                    ; $4752: $70
    ld a, a                                       ; $4753: $7f
    ld a, b                                       ; $4754: $78
    ld a, a                                       ; $4755: $7f
    ld hl, sp-$01                                 ; $4756: $f8 $ff
    ld hl, sp-$01                                 ; $4758: $f8 $ff
    db $fc                                        ; $475a: $fc
    rst $38                                       ; $475b: $ff
    call z, Call_000_00ff                         ; $475c: $cc $ff $00
    rst $38                                       ; $475f: $ff
    nop                                           ; $4760: $00
    rst $38                                       ; $4761: $ff
    nop                                           ; $4762: $00
    rst $38                                       ; $4763: $ff
    ld bc, $01ff                                  ; $4764: $01 $ff $01
    rst $38                                       ; $4767: $ff
    inc bc                                        ; $4768: $03
    rst $38                                       ; $4769: $ff
    inc bc                                        ; $476a: $03
    rst $38                                       ; $476b: $ff
    rlca                                          ; $476c: $07
    rst $38                                       ; $476d: $ff
    ld a, b                                       ; $476e: $78
    rst $38                                       ; $476f: $ff
    ld hl, sp-$01                                 ; $4770: $f8 $ff
    ld hl, sp-$01                                 ; $4772: $f8 $ff
    call c, $dcff                                 ; $4774: $dc $ff $dc
    rst $38                                       ; $4777: $ff
    sbc h                                         ; $4778: $9c
    rst $38                                       ; $4779: $ff
    ld c, $ff                                     ; $477a: $0e $ff
    ld c, $ff                                     ; $477c: $0e $ff
    ld e, $ff                                     ; $477e: $1e $ff
    rra                                           ; $4780: $1f
    rst $38                                       ; $4781: $ff
    rra                                           ; $4782: $1f
    rst $38                                       ; $4783: $ff
    dec sp                                        ; $4784: $3b
    rst $38                                       ; $4785: $ff
    dec sp                                        ; $4786: $3b
    rst $38                                       ; $4787: $ff
    add hl, sp                                    ; $4788: $39
    rst $38                                       ; $4789: $ff
    ld [hl], b                                    ; $478a: $70
    rst $38                                       ; $478b: $ff
    ld [hl], b                                    ; $478c: $70
    rst $38                                       ; $478d: $ff
    nop                                           ; $478e: $00
    rst $38                                       ; $478f: $ff
    nop                                           ; $4790: $00
    rst $38                                       ; $4791: $ff
    nop                                           ; $4792: $00
    rst $38                                       ; $4793: $ff
    add b                                         ; $4794: $80
    rst $38                                       ; $4795: $ff
    add b                                         ; $4796: $80
    rst $38                                       ; $4797: $ff
    ret nz                                        ; $4798: $c0

    rst $38                                       ; $4799: $ff
    ret nz                                        ; $479a: $c0

    rst $38                                       ; $479b: $ff
    ldh [rIE], a                                  ; $479c: $e0 $ff
    rrca                                          ; $479e: $0f

jr_04f_479f:
    rst $38                                       ; $479f: $ff
    rrca                                          ; $47a0: $0f
    rst $38                                       ; $47a1: $ff
    ld c, $fe                                     ; $47a2: $0e $fe
    ld e, $fe                                     ; $47a4: $1e $fe
    rra                                           ; $47a6: $1f
    rst $38                                       ; $47a7: $ff
    rra                                           ; $47a8: $1f
    rst $38                                       ; $47a9: $ff
    ccf                                           ; $47aa: $3f
    rst $38                                       ; $47ab: $ff
    inc sp                                        ; $47ac: $33
    rst $38                                       ; $47ad: $ff
    rst $00                                       ; $47ae: $c7
    rst $38                                       ; $47af: $ff
    rst $20                                       ; $47b0: $e7
    rst $38                                       ; $47b1: $ff
    rst $30                                       ; $47b2: $f7
    rst $38                                       ; $47b3: $ff
    ld [hl], a                                    ; $47b4: $77
    ld a, a                                       ; $47b5: $7f
    ld a, $3e                                     ; $47b6: $3e $3e
    ld e, $1e                                     ; $47b8: $1e $1e
    adc h                                         ; $47ba: $8c
    adc h                                         ; $47bb: $8c
    add b                                         ; $47bc: $80
    add b                                         ; $47bd: $80
    rlca                                          ; $47be: $07
    rlca                                          ; $47bf: $07
    rlca                                          ; $47c0: $07
    rlca                                          ; $47c1: $07
    rlca                                          ; $47c2: $07
    rlca                                          ; $47c3: $07
    ld b, $07                                     ; $47c4: $06 $07
    ld c, $0f                                     ; $47c6: $0e $0f
    ld c, $0f                                     ; $47c8: $0e $0f
    ld c, $0f                                     ; $47ca: $0e $0f
    inc c                                         ; $47cc: $0c
    rrca                                          ; $47cd: $0f
    nop                                           ; $47ce: $00
    rst $38                                       ; $47cf: $ff
    nop                                           ; $47d0: $00
    rst $38                                       ; $47d1: $ff
    nop                                           ; $47d2: $00
    rst $38                                       ; $47d3: $ff
    nop                                           ; $47d4: $00
    rst $38                                       ; $47d5: $ff
    jr c, jr_04f_479f                             ; $47d6: $38 $c7

    ld a, h                                       ; $47d8: $7c
    add e                                         ; $47d9: $83
    cp $01                                        ; $47da: $fe $01
    rst $28                                       ; $47dc: $ef
    stop                                          ; $47dd: $10 $00
    rst $38                                       ; $47df: $ff
    nop                                           ; $47e0: $00
    rst $38                                       ; $47e1: $ff
    nop                                           ; $47e2: $00
    rst $38                                       ; $47e3: $ff
    nop                                           ; $47e4: $00
    rst $38                                       ; $47e5: $ff
    nop                                           ; $47e6: $00
    rst $38                                       ; $47e7: $ff
    rrca                                          ; $47e8: $0f
    ldh a, [$1f]                                  ; $47e9: $f0 $1f
    ldh [$3f], a                                  ; $47eb: $e0 $3f
    ret nz                                        ; $47ed: $c0

    nop                                           ; $47ee: $00
    rst $38                                       ; $47ef: $ff
    nop                                           ; $47f0: $00
    rst $38                                       ; $47f1: $ff
    nop                                           ; $47f2: $00
    rst $38                                       ; $47f3: $ff
    nop                                           ; $47f4: $00
    rst $38                                       ; $47f5: $ff
    nop                                           ; $47f6: $00
    rst $38                                       ; $47f7: $ff
    ldh a, [rIF]                                  ; $47f8: $f0 $0f
    ld hl, sp+$07                                 ; $47fa: $f8 $07
    db $fc                                        ; $47fc: $fc
    inc bc                                        ; $47fd: $03
    nop                                           ; $47fe: $00
    rst $38                                       ; $47ff: $ff
    nop                                           ; $4800: $00
    rst $38                                       ; $4801: $ff
    nop                                           ; $4802: $00
    rst $38                                       ; $4803: $ff
    nop                                           ; $4804: $00
    rst $38                                       ; $4805: $ff
    inc e                                         ; $4806: $1c
    db $e3                                        ; $4807: $e3
    ld a, $c1                                     ; $4808: $3e $c1
    ld a, a                                       ; $480a: $7f
    add b                                         ; $480b: $80
    rst $30                                       ; $480c: $f7
    ld [$e0e0], sp                                ; $480d: $08 $e0 $e0
    ldh [$e0], a                                  ; $4810: $e0 $e0
    ldh [$e0], a                                  ; $4812: $e0 $e0
    ld h, b                                       ; $4814: $60
    ldh [rSVBK], a                                ; $4815: $e0 $70
    ldh a, [rSVBK]                                ; $4817: $f0 $70
    ldh a, [rSVBK]                                ; $4819: $f0 $70
    ldh a, [$30]                                  ; $481b: $f0 $30
    ldh a, [$03]                                  ; $481d: $f0 $03
    inc bc                                        ; $481f: $03
    inc bc                                        ; $4820: $03
    inc bc                                        ; $4821: $03
    rlca                                          ; $4822: $07
    rlca                                          ; $4823: $07
    rlca                                          ; $4824: $07
    rlca                                          ; $4825: $07
    rrca                                          ; $4826: $0f
    rrca                                          ; $4827: $0f
    ld c, $0f                                     ; $4828: $0e $0f
    ld c, $0f                                     ; $482a: $0e $0f
    ld e, $1f                                     ; $482c: $1e $1f
    call z, $8eff                                 ; $482e: $cc $ff $8e
    rst $38                                       ; $4831: $ff
    add [hl]                                      ; $4832: $86
    rst $38                                       ; $4833: $ff
    rlca                                          ; $4834: $07
    rst $38                                       ; $4835: $ff
    inc bc                                        ; $4836: $03
    rst $38                                       ; $4837: $ff
    ld bc, $00ff                                  ; $4838: $01 $ff $00
    rst $38                                       ; $483b: $ff
    nop                                           ; $483c: $00
    rst $38                                       ; $483d: $ff
    ld b, $ff                                     ; $483e: $06 $ff
    ld c, $ff                                     ; $4840: $0e $ff
    inc e                                         ; $4842: $1c
    rst $38                                       ; $4843: $ff
    jr c, @+$01                                   ; $4844: $38 $ff

    ldh a, [rIE]                                  ; $4846: $f0 $ff
    ldh [rIE], a                                  ; $4848: $e0 $ff
    nop                                           ; $484a: $00
    rst $38                                       ; $484b: $ff
    nop                                           ; $484c: $00
    rst $38                                       ; $484d: $ff
    ld b, $ff                                     ; $484e: $06 $ff
    rlca                                          ; $4850: $07
    rst $38                                       ; $4851: $ff
    inc bc                                        ; $4852: $03
    rst $38                                       ; $4853: $ff
    inc bc                                        ; $4854: $03
    rst $38                                       ; $4855: $ff
    ld bc, $01ff                                  ; $4856: $01 $ff $01
    rst $38                                       ; $4859: $ff
    nop                                           ; $485a: $00
    rst $38                                       ; $485b: $ff
    nop                                           ; $485c: $00
    rst $38                                       ; $485d: $ff
    nop                                           ; $485e: $00
    rst $38                                       ; $485f: $ff
    nop                                           ; $4860: $00
    rst $38                                       ; $4861: $ff
    nop                                           ; $4862: $00
    rst $38                                       ; $4863: $ff
    add c                                         ; $4864: $81
    rst $38                                       ; $4865: $ff
    add c                                         ; $4866: $81
    rst $38                                       ; $4867: $ff
    jp $ffff                                      ; $4868: $c3 $ff $ff


    rst $38                                       ; $486b: $ff
    ld a, [hl]                                    ; $486c: $7e
    rst $38                                       ; $486d: $ff
    ld h, b                                       ; $486e: $60
    rst $38                                       ; $486f: $ff
    ldh [rIE], a                                  ; $4870: $e0 $ff
    ret nz                                        ; $4872: $c0

    rst $38                                       ; $4873: $ff
    ret nz                                        ; $4874: $c0

    rst $38                                       ; $4875: $ff
    add b                                         ; $4876: $80
    rst $38                                       ; $4877: $ff
    add b                                         ; $4878: $80
    rst $38                                       ; $4879: $ff
    nop                                           ; $487a: $00
    rst $38                                       ; $487b: $ff
    nop                                           ; $487c: $00
    rst $38                                       ; $487d: $ff
    ld h, b                                       ; $487e: $60
    rst $38                                       ; $487f: $ff
    ld [hl], b                                    ; $4880: $70
    rst $38                                       ; $4881: $ff
    jr c, @+$01                                   ; $4882: $38 $ff

    inc e                                         ; $4884: $1c
    rst $38                                       ; $4885: $ff
    rrca                                          ; $4886: $0f
    rst $38                                       ; $4887: $ff
    rlca                                          ; $4888: $07
    rst $38                                       ; $4889: $ff
    nop                                           ; $488a: $00
    rst $38                                       ; $488b: $ff
    nop                                           ; $488c: $00
    rst $38                                       ; $488d: $ff
    inc sp                                        ; $488e: $33
    rst $38                                       ; $488f: $ff
    ld [hl], c                                    ; $4890: $71
    rst $38                                       ; $4891: $ff
    ld h, c                                       ; $4892: $61
    rst $38                                       ; $4893: $ff
    ldh [rIE], a                                  ; $4894: $e0 $ff
    ret nz                                        ; $4896: $c0

    rst $38                                       ; $4897: $ff
    add b                                         ; $4898: $80
    rst $38                                       ; $4899: $ff
    nop                                           ; $489a: $00
    rst $38                                       ; $489b: $ff
    nop                                           ; $489c: $00
    rst $38                                       ; $489d: $ff
    ret nz                                        ; $489e: $c0

    ret nz                                        ; $489f: $c0

    ret nz                                        ; $48a0: $c0

    ret nz                                        ; $48a1: $c0

    ldh [$e0], a                                  ; $48a2: $e0 $e0
    ldh [$e0], a                                  ; $48a4: $e0 $e0
    ldh a, [$f0]                                  ; $48a6: $f0 $f0
    ld [hl], b                                    ; $48a8: $70
    ldh a, [rSVBK]                                ; $48a9: $f0 $70
    ldh a, [$78]                                  ; $48ab: $f0 $78
    ld hl, sp+$0c                                 ; $48ad: $f8 $0c
    rrca                                          ; $48af: $0f
    inc c                                         ; $48b0: $0c
    rrca                                          ; $48b1: $0f
    inc c                                         ; $48b2: $0c
    rrca                                          ; $48b3: $0f
    inc c                                         ; $48b4: $0c
    rrca                                          ; $48b5: $0f
    inc c                                         ; $48b6: $0c
    rrca                                          ; $48b7: $0f
    inc c                                         ; $48b8: $0c
    rrca                                          ; $48b9: $0f
    dec c                                         ; $48ba: $0d
    rrca                                          ; $48bb: $0f
    rrca                                          ; $48bc: $0f
    rrca                                          ; $48bd: $0f
    rlca                                          ; $48be: $07
    ld hl, sp+$03                                 ; $48bf: $f8 $03
    db $fc                                        ; $48c1: $fc
    ld bc, $60fe                                  ; $48c2: $01 $fe $60
    rst $38                                       ; $48c5: $ff
    ldh a, [rIE]                                  ; $48c6: $f0 $ff
    ldh a, [rIE]                                  ; $48c8: $f0 $ff
    ldh a, [rIE]                                  ; $48ca: $f0 $ff
    ldh a, [rIE]                                  ; $48cc: $f0 $ff
    ld sp, hl                                     ; $48ce: $f9
    ld b, $f0                                     ; $48cf: $06 $f0
    rrca                                          ; $48d1: $0f
    ldh [$1f], a                                  ; $48d2: $e0 $1f
    ret nz                                        ; $48d4: $c0

    ccf                                           ; $48d5: $3f
    ld b, $ff                                     ; $48d6: $06 $ff
    ld c, $ff                                     ; $48d8: $0e $ff
    rrca                                          ; $48da: $0f
    rst $38                                       ; $48db: $ff
    rra                                           ; $48dc: $1f
    rst $38                                       ; $48dd: $ff
    rst $38                                       ; $48de: $ff
    nop                                           ; $48df: $00
    rst $38                                       ; $48e0: $ff
    nop                                           ; $48e1: $00
    ld a, [hl]                                    ; $48e2: $7e
    add c                                         ; $48e3: $81
    inc a                                         ; $48e4: $3c
    jp $ff00                                      ; $48e5: $c3 $00 $ff


    nop                                           ; $48e8: $00
    rst $38                                       ; $48e9: $ff
    nop                                           ; $48ea: $00
    rst $38                                       ; $48eb: $ff
    nop                                           ; $48ec: $00
    rst $38                                       ; $48ed: $ff
    sbc a                                         ; $48ee: $9f
    ld h, b                                       ; $48ef: $60
    rrca                                          ; $48f0: $0f
    ldh a, [rTAC]                                 ; $48f1: $f0 $07
    ld hl, sp+$03                                 ; $48f3: $f8 $03
    db $fc                                        ; $48f5: $fc
    ld h, b                                       ; $48f6: $60
    rst $38                                       ; $48f7: $ff
    ld [hl], b                                    ; $48f8: $70
    rst $38                                       ; $48f9: $ff
    ldh a, [rIE]                                  ; $48fa: $f0 $ff
    ld hl, sp-$01                                 ; $48fc: $f8 $ff
    ldh [$1f], a                                  ; $48fe: $e0 $1f

jr_04f_4900:
    ret nz                                        ; $4900: $c0

    ccf                                           ; $4901: $3f

jr_04f_4902:
    add b                                         ; $4902: $80
    ld a, a                                       ; $4903: $7f

jr_04f_4904:
    ld b, $ff                                     ; $4904: $06 $ff

jr_04f_4906:
    rrca                                          ; $4906: $0f
    rst $38                                       ; $4907: $ff

jr_04f_4908:
    rrca                                          ; $4908: $0f
    rst $38                                       ; $4909: $ff

jr_04f_490a:
    rrca                                          ; $490a: $0f
    rst $38                                       ; $490b: $ff
    rrca                                          ; $490c: $0f
    rst $38                                       ; $490d: $ff
    jr nc, jr_04f_4900                            ; $490e: $30 $f0

    jr nc, jr_04f_4902                            ; $4910: $30 $f0

    jr nc, jr_04f_4904                            ; $4912: $30 $f0

    jr nc, jr_04f_4906                            ; $4914: $30 $f0

    jr nc, jr_04f_4908                            ; $4916: $30 $f0

    jr nc, jr_04f_490a                            ; $4918: $30 $f0

    or b                                          ; $491a: $b0
    ldh a, [$f0]                                  ; $491b: $f0 $f0
    ldh a, [rNR32]                                ; $491d: $f0 $1c
    rra                                           ; $491f: $1f
    inc e                                         ; $4920: $1c
    rra                                           ; $4921: $1f
    inc a                                         ; $4922: $3c
    ccf                                           ; $4923: $3f
    jr c, jr_04f_4965                             ; $4924: $38 $3f

    jr c, jr_04f_4967                             ; $4926: $38 $3f

jr_04f_4928:
    jr c, jr_04f_4969                             ; $4928: $38 $3f

jr_04f_492a:
    ld a, b                                       ; $492a: $78
    ld a, a                                       ; $492b: $7f
    ld [hl], b                                    ; $492c: $70
    ld a, a                                       ; $492d: $7f
    jr c, jr_04f_4928                             ; $492e: $38 $f8

    jr c, jr_04f_492a                             ; $4930: $38 $f8

    inc a                                         ; $4932: $3c
    db $fc                                        ; $4933: $fc
    inc e                                         ; $4934: $1c
    db $fc                                        ; $4935: $fc
    inc e                                         ; $4936: $1c
    db $fc                                        ; $4937: $fc
    inc e                                         ; $4938: $1c
    db $fc                                        ; $4939: $fc
    ld e, $fe                                     ; $493a: $1e $fe
    ld c, $fe                                     ; $493c: $0e $fe
    rrca                                          ; $493e: $0f
    rrca                                          ; $493f: $0f
    ld b, $06                                     ; $4940: $06 $06
    nop                                           ; $4942: $00
    nop                                           ; $4943: $00
    ld bc, $0101                                  ; $4944: $01 $01 $01
    ld bc, $0303                                  ; $4947: $01 $03 $03
    inc bc                                        ; $494a: $03
    inc bc                                        ; $494b: $03
    inc bc                                        ; $494c: $03
    inc bc                                        ; $494d: $03
    ld a, b                                       ; $494e: $78
    ld a, a                                       ; $494f: $7f
    ld hl, sp-$01                                 ; $4950: $f8 $ff
    ld hl, sp-$01                                 ; $4952: $f8 $ff
    call c, $cfff                                 ; $4954: $dc $ff $cf
    rst $38                                       ; $4957: $ff
    adc a                                         ; $4958: $8f
    rst $38                                       ; $4959: $ff
    add a                                         ; $495a: $87
    rst $38                                       ; $495b: $ff
    add b                                         ; $495c: $80
    rst $38                                       ; $495d: $ff
    rra                                           ; $495e: $1f
    rst $38                                       ; $495f: $ff
    dec sp                                        ; $4960: $3b
    rst $38                                       ; $4961: $ff
    ld [hl], e                                    ; $4962: $73
    rst $38                                       ; $4963: $ff
    pop hl                                        ; $4964: $e1

jr_04f_4965:
    rst $38                                       ; $4965: $ff
    pop bc                                        ; $4966: $c1

jr_04f_4967:
    rst $38                                       ; $4967: $ff
    add b                                         ; $4968: $80

jr_04f_4969:
    rst $38                                       ; $4969: $ff
    nop                                           ; $496a: $00
    rst $38                                       ; $496b: $ff
    nop                                           ; $496c: $00
    rst $38                                       ; $496d: $ff
    nop                                           ; $496e: $00
    rst $38                                       ; $496f: $ff
    add c                                         ; $4970: $81
    rst $38                                       ; $4971: $ff
    add c                                         ; $4972: $81
    rst $38                                       ; $4973: $ff
    jp $e7ff                                      ; $4974: $c3 $ff $e7


    rst $38                                       ; $4977: $ff
    rst $38                                       ; $4978: $ff
    rst $38                                       ; $4979: $ff
    ld a, [hl]                                    ; $497a: $7e
    rst $38                                       ; $497b: $ff
    inc a                                         ; $497c: $3c
    rst $38                                       ; $497d: $ff
    ld hl, sp-$01                                 ; $497e: $f8 $ff
    call c, $ceff                                 ; $4980: $dc $ff $ce
    rst $38                                       ; $4983: $ff
    add a                                         ; $4984: $87
    rst $38                                       ; $4985: $ff
    add e                                         ; $4986: $83
    rst $38                                       ; $4987: $ff
    ld bc, $00ff                                  ; $4988: $01 $ff $00
    rst $38                                       ; $498b: $ff
    nop                                           ; $498c: $00
    rst $38                                       ; $498d: $ff
    ld e, $fe                                     ; $498e: $1e $fe
    rra                                           ; $4990: $1f
    rst $38                                       ; $4991: $ff
    rra                                           ; $4992: $1f
    rst $38                                       ; $4993: $ff
    dec sp                                        ; $4994: $3b
    rst $38                                       ; $4995: $ff
    di                                            ; $4996: $f3
    rst $38                                       ; $4997: $ff
    pop af                                        ; $4998: $f1
    rst $38                                       ; $4999: $ff
    pop hl                                        ; $499a: $e1
    rst $38                                       ; $499b: $ff
    ld bc, $f0ff                                  ; $499c: $01 $ff $f0
    ldh a, [$60]                                  ; $499f: $f0 $60
    ld h, b                                       ; $49a1: $60
    nop                                           ; $49a2: $00
    nop                                           ; $49a3: $00
    add b                                         ; $49a4: $80
    add b                                         ; $49a5: $80
    add b                                         ; $49a6: $80
    add b                                         ; $49a7: $80
    ret nz                                        ; $49a8: $c0

    ret nz                                        ; $49a9: $c0

    ret nz                                        ; $49aa: $c0

    ret nz                                        ; $49ab: $c0

    ret nz                                        ; $49ac: $c0

    ret nz                                        ; $49ad: $c0

    ld [hl], b                                    ; $49ae: $70
    ld a, a                                       ; $49af: $7f
    ld [hl], b                                    ; $49b0: $70
    ld a, a                                       ; $49b1: $7f
    ld [hl], b                                    ; $49b2: $70
    ld a, a                                       ; $49b3: $7f
    ldh a, [rIE]                                  ; $49b4: $f0 $ff
    ldh [rIE], a                                  ; $49b6: $e0 $ff
    ldh [rIE], a                                  ; $49b8: $e0 $ff
    ldh [rIE], a                                  ; $49ba: $e0 $ff
    ldh [rIE], a                                  ; $49bc: $e0 $ff
    ld c, $fe                                     ; $49be: $0e $fe
    ld c, $fe                                     ; $49c0: $0e $fe
    ld c, $fe                                     ; $49c2: $0e $fe
    rrca                                          ; $49c4: $0f
    rst $38                                       ; $49c5: $ff
    rlca                                          ; $49c6: $07
    rst $38                                       ; $49c7: $ff
    rlca                                          ; $49c8: $07
    rst $38                                       ; $49c9: $ff
    rlca                                          ; $49ca: $07

jr_04f_49cb:
    rst $38                                       ; $49cb: $ff
    rlca                                          ; $49cc: $07
    rst $38                                       ; $49cd: $ff
    rlca                                          ; $49ce: $07
    rlca                                          ; $49cf: $07
    rlca                                          ; $49d0: $07
    rlca                                          ; $49d1: $07
    rlca                                          ; $49d2: $07
    rlca                                          ; $49d3: $07
    ld b, $07                                     ; $49d4: $06 $07
    ld c, $0f                                     ; $49d6: $0e $0f
    ld c, $0f                                     ; $49d8: $0e $0f
    ld c, $0f                                     ; $49da: $0e $0f
    ld c, $0f                                     ; $49dc: $0e $0f
    ldh [$e0], a                                  ; $49de: $e0 $e0
    ldh [$e0], a                                  ; $49e0: $e0 $e0
    ldh [$e0], a                                  ; $49e2: $e0 $e0
    ld h, b                                       ; $49e4: $60
    ldh [rSVBK], a                                ; $49e5: $e0 $70
    ldh a, [rSVBK]                                ; $49e7: $f0 $70
    ldh a, [rSVBK]                                ; $49e9: $f0 $70
    ldh a, [rSVBK]                                ; $49eb: $f0 $70
    ldh a, [$e0]                                  ; $49ed: $f0 $e0
    rst $38                                       ; $49ef: $ff
    ldh [rIE], a                                  ; $49f0: $e0 $ff
    ldh [rIE], a                                  ; $49f2: $e0 $ff
    ldh [rIE], a                                  ; $49f4: $e0 $ff
    ldh [rIE], a                                  ; $49f6: $e0 $ff
    pop hl                                        ; $49f8: $e1
    cp $e3                                        ; $49f9: $fe $e3
    db $fc                                        ; $49fb: $fc
    db $e3                                        ; $49fc: $e3
    db $fc                                        ; $49fd: $fc
    nop                                           ; $49fe: $00
    rst $38                                       ; $49ff: $ff
    nop                                           ; $4a00: $00
    rst $38                                       ; $4a01: $ff
    jr c, jr_04f_49cb                             ; $4a02: $38 $c7

    ld a, h                                       ; $4a04: $7c
    add e                                         ; $4a05: $83
    cp $01                                        ; $4a06: $fe $01
    rst $38                                       ; $4a08: $ff
    nop                                           ; $4a09: $00
    rst $38                                       ; $4a0a: $ff
    nop                                           ; $4a0b: $00
    rst $08                                       ; $4a0c: $cf
    jr nc, jr_04f_4a0f                            ; $4a0d: $30 $00

jr_04f_4a0f:
    rst $38                                       ; $4a0f: $ff
    nop                                           ; $4a10: $00
    rst $38                                       ; $4a11: $ff
    nop                                           ; $4a12: $00
    rst $38                                       ; $4a13: $ff
    nop                                           ; $4a14: $00
    rst $38                                       ; $4a15: $ff
    jr c, @-$37                                   ; $4a16: $38 $c7

    cp $01                                        ; $4a18: $fe $01
    rst $38                                       ; $4a1a: $ff
    nop                                           ; $4a1b: $00
    rst $38                                       ; $4a1c: $ff
    nop                                           ; $4a1d: $00
    nop                                           ; $4a1e: $00
    rst $38                                       ; $4a1f: $ff
    nop                                           ; $4a20: $00
    rst $38                                       ; $4a21: $ff
    nop                                           ; $4a22: $00
    rst $38                                       ; $4a23: $ff
    nop                                           ; $4a24: $00
    rst $38                                       ; $4a25: $ff
    nop                                           ; $4a26: $00
    rst $38                                       ; $4a27: $ff
    nop                                           ; $4a28: $00
    rst $38                                       ; $4a29: $ff
    nop                                           ; $4a2a: $00
    rst $38                                       ; $4a2b: $ff
    add c                                         ; $4a2c: $81
    ld a, [hl]                                    ; $4a2d: $7e
    nop                                           ; $4a2e: $00
    rst $38                                       ; $4a2f: $ff
    nop                                           ; $4a30: $00
    rst $38                                       ; $4a31: $ff
    nop                                           ; $4a32: $00
    rst $38                                       ; $4a33: $ff
    nop                                           ; $4a34: $00
    rst $38                                       ; $4a35: $ff
    inc e                                         ; $4a36: $1c
    db $e3                                        ; $4a37: $e3
    ld a, a                                       ; $4a38: $7f
    add b                                         ; $4a39: $80
    rst $38                                       ; $4a3a: $ff
    nop                                           ; $4a3b: $00
    rst $38                                       ; $4a3c: $ff
    nop                                           ; $4a3d: $00
    nop                                           ; $4a3e: $00
    rst $38                                       ; $4a3f: $ff
    nop                                           ; $4a40: $00
    rst $38                                       ; $4a41: $ff
    inc e                                         ; $4a42: $1c
    db $e3                                        ; $4a43: $e3
    ld a, $c1                                     ; $4a44: $3e $c1
    ld a, a                                       ; $4a46: $7f
    add b                                         ; $4a47: $80
    rst $38                                       ; $4a48: $ff
    nop                                           ; $4a49: $00
    rst $38                                       ; $4a4a: $ff
    nop                                           ; $4a4b: $00
    di                                            ; $4a4c: $f3
    inc c                                         ; $4a4d: $0c
    rlca                                          ; $4a4e: $07
    rst $38                                       ; $4a4f: $ff
    rlca                                          ; $4a50: $07
    rst $38                                       ; $4a51: $ff
    rlca                                          ; $4a52: $07
    rst $38                                       ; $4a53: $ff
    rlca                                          ; $4a54: $07
    rst $38                                       ; $4a55: $ff
    rlca                                          ; $4a56: $07
    rst $38                                       ; $4a57: $ff
    add a                                         ; $4a58: $87
    ld a, a                                       ; $4a59: $7f
    rst $00                                       ; $4a5a: $c7
    ccf                                           ; $4a5b: $3f
    rst $00                                       ; $4a5c: $c7
    ccf                                           ; $4a5d: $3f
    inc c                                         ; $4a5e: $0c
    rrca                                          ; $4a5f: $0f

jr_04f_4a60:
    inc c                                         ; $4a60: $0c
    rrca                                          ; $4a61: $0f

jr_04f_4a62:
    inc c                                         ; $4a62: $0c
    rrca                                          ; $4a63: $0f

jr_04f_4a64:
    inc c                                         ; $4a64: $0c
    rrca                                          ; $4a65: $0f

jr_04f_4a66:
    inc c                                         ; $4a66: $0c
    rrca                                          ; $4a67: $0f

jr_04f_4a68:
    inc c                                         ; $4a68: $0c
    rrca                                          ; $4a69: $0f

jr_04f_4a6a:
    inc c                                         ; $4a6a: $0c
    rrca                                          ; $4a6b: $0f

jr_04f_4a6c:
    inc c                                         ; $4a6c: $0c
    rrca                                          ; $4a6d: $0f

jr_04f_4a6e:
    jr nc, jr_04f_4a60                            ; $4a6e: $30 $f0

    jr nc, jr_04f_4a62                            ; $4a70: $30 $f0

    jr nc, jr_04f_4a64                            ; $4a72: $30 $f0

jr_04f_4a74:
    jr nc, jr_04f_4a66                            ; $4a74: $30 $f0

    jr nc, jr_04f_4a68                            ; $4a76: $30 $f0

    jr nc, jr_04f_4a6a                            ; $4a78: $30 $f0

    jr nc, jr_04f_4a6c                            ; $4a7a: $30 $f0

    jr nc, jr_04f_4a6e                            ; $4a7c: $30 $f0

    rst $20                                       ; $4a7e: $e7
    ld hl, sp-$19                                 ; $4a7f: $f8 $e7
    ld hl, sp-$1d                                 ; $4a81: $f8 $e3
    db $fc                                        ; $4a83: $fc
    ldh [rIE], a                                  ; $4a84: $e0 $ff
    ldh [rIE], a                                  ; $4a86: $e0 $ff
    ldh [rIE], a                                  ; $4a88: $e0 $ff
    ldh [rIE], a                                  ; $4a8a: $e0 $ff
    ldh [rIE], a                                  ; $4a8c: $e0 $ff
    add e                                         ; $4a8e: $83
    ld a, h                                       ; $4a8f: $7c
    add c                                         ; $4a90: $81
    ld a, [hl]                                    ; $4a91: $7e
    nop                                           ; $4a92: $00
    rst $38                                       ; $4a93: $ff
    nop                                           ; $4a94: $00
    rst $38                                       ; $4a95: $ff
    nop                                           ; $4a96: $00
    rst $38                                       ; $4a97: $ff
    nop                                           ; $4a98: $00
    rst $38                                       ; $4a99: $ff
    nop                                           ; $4a9a: $00
    rst $38                                       ; $4a9b: $ff
    nop                                           ; $4a9c: $00
    rst $38                                       ; $4a9d: $ff
    rst $20                                       ; $4a9e: $e7
    jr @+$01                                      ; $4a9f: $18 $ff

jr_04f_4aa1:
    nop                                           ; $4aa1: $00
    rst $38                                       ; $4aa2: $ff
    nop                                           ; $4aa3: $00
    ld a, a                                       ; $4aa4: $7f
    add b                                         ; $4aa5: $80
    ld a, $c1                                     ; $4aa6: $3e $c1
    inc e                                         ; $4aa8: $1c
    db $e3                                        ; $4aa9: $e3
    nop                                           ; $4aaa: $00
    rst $38                                       ; $4aab: $ff
    nop                                           ; $4aac: $00
    rst $38                                       ; $4aad: $ff
    rst $20                                       ; $4aae: $e7
    jr jr_04f_4a74                                ; $4aaf: $18 $c3

jr_04f_4ab1:
    inc a                                         ; $4ab1: $3c
    add c                                         ; $4ab2: $81
    ld a, [hl]                                    ; $4ab3: $7e
    nop                                           ; $4ab4: $00
    rst $38                                       ; $4ab5: $ff
    nop                                           ; $4ab6: $00
    rst $38                                       ; $4ab7: $ff
    nop                                           ; $4ab8: $00
    rst $38                                       ; $4ab9: $ff
    nop                                           ; $4aba: $00
    rst $38                                       ; $4abb: $ff
    nop                                           ; $4abc: $00
    rst $38                                       ; $4abd: $ff
    jp $ff3c                                      ; $4abe: $c3 $3c $ff


    nop                                           ; $4ac1: $00
    rst $38                                       ; $4ac2: $ff
    nop                                           ; $4ac3: $00
    rst $38                                       ; $4ac4: $ff
    nop                                           ; $4ac5: $00
    ld a, [hl]                                    ; $4ac6: $7e
    add c                                         ; $4ac7: $81
    jr jr_04f_4ab1                                ; $4ac8: $18 $e7

    nop                                           ; $4aca: $00
    rst $38                                       ; $4acb: $ff
    nop                                           ; $4acc: $00
    rst $38                                       ; $4acd: $ff
    rst $20                                       ; $4ace: $e7
    jr @+$01                                      ; $4acf: $18 $ff

    nop                                           ; $4ad1: $00
    rst $38                                       ; $4ad2: $ff
    nop                                           ; $4ad3: $00
    cp $01                                        ; $4ad4: $fe $01
    ld a, h                                       ; $4ad6: $7c
    add e                                         ; $4ad7: $83
    jr c, jr_04f_4aa1                             ; $4ad8: $38 $c7

    nop                                           ; $4ada: $00
    rst $38                                       ; $4adb: $ff
    nop                                           ; $4adc: $00
    rst $38                                       ; $4add: $ff
    pop bc                                        ; $4ade: $c1
    ld a, $81                                     ; $4adf: $3e $81
    ld a, [hl]                                    ; $4ae1: $7e
    nop                                           ; $4ae2: $00
    rst $38                                       ; $4ae3: $ff
    nop                                           ; $4ae4: $00
    rst $38                                       ; $4ae5: $ff
    nop                                           ; $4ae6: $00
    rst $38                                       ; $4ae7: $ff
    nop                                           ; $4ae8: $00
    rst $38                                       ; $4ae9: $ff
    nop                                           ; $4aea: $00
    rst $38                                       ; $4aeb: $ff
    nop                                           ; $4aec: $00
    rst $38                                       ; $4aed: $ff
    rst $20                                       ; $4aee: $e7
    rra                                           ; $4aef: $1f
    rst $20                                       ; $4af0: $e7
    rra                                           ; $4af1: $1f
    rst $00                                       ; $4af2: $c7
    ccf                                           ; $4af3: $3f
    rlca                                          ; $4af4: $07
    rst $38                                       ; $4af5: $ff
    rlca                                          ; $4af6: $07
    rst $38                                       ; $4af7: $ff
    rlca                                          ; $4af8: $07
    rst $38                                       ; $4af9: $ff
    rlca                                          ; $4afa: $07
    rst $38                                       ; $4afb: $ff
    rlca                                          ; $4afc: $07
    rst $38                                       ; $4afd: $ff
    inc c                                         ; $4afe: $0c
    rrca                                          ; $4aff: $0f
    inc c                                         ; $4b00: $0c
    rrca                                          ; $4b01: $0f
    inc c                                         ; $4b02: $0c
    rrca                                          ; $4b03: $0f
    inc c                                         ; $4b04: $0c
    rrca                                          ; $4b05: $0f
    inc c                                         ; $4b06: $0c
    rrca                                          ; $4b07: $0f
    inc c                                         ; $4b08: $0c
    rrca                                          ; $4b09: $0f
    ld c, $0f                                     ; $4b0a: $0e $0f
    rlca                                          ; $4b0c: $07
    rlca                                          ; $4b0d: $07
    db $fd                                        ; $4b0e: $fd
    ld [bc], a                                    ; $4b0f: $02
    ld hl, sp+$07                                 ; $4b10: $f8 $07
    ldh a, [rIF]                                  ; $4b12: $f0 $0f
    ldh [$1f], a                                  ; $4b14: $e0 $1f
    nop                                           ; $4b16: $00
    rst $38                                       ; $4b17: $ff
    nop                                           ; $4b18: $00
    rst $38                                       ; $4b19: $ff
    ld b, $ff                                     ; $4b1a: $06 $ff
    rrca                                          ; $4b1c: $0f
    rst $38                                       ; $4b1d: $ff
    rst $20                                       ; $4b1e: $e7
    jr @+$01                                      ; $4b1f: $18 $ff

    nop                                           ; $4b21: $00
    ld a, [hl]                                    ; $4b22: $7e
    add c                                         ; $4b23: $81
    inc a                                         ; $4b24: $3c
    jp $ff00                                      ; $4b25: $c3 $00 $ff


    nop                                           ; $4b28: $00
    rst $38                                       ; $4b29: $ff
    nop                                           ; $4b2a: $00
    rst $38                                       ; $4b2b: $ff
    nop                                           ; $4b2c: $00
    rst $38                                       ; $4b2d: $ff
    cp a                                          ; $4b2e: $bf
    ld b, b                                       ; $4b2f: $40

jr_04f_4b30:
    rra                                           ; $4b30: $1f
    ldh [rIF], a                                  ; $4b31: $e0 $0f
    ldh a, [rTAC]                                 ; $4b33: $f0 $07
    ld hl, sp+$00                                 ; $4b35: $f8 $00
    rst $38                                       ; $4b37: $ff

jr_04f_4b38:
    nop                                           ; $4b38: $00
    rst $38                                       ; $4b39: $ff

jr_04f_4b3a:
    ld h, b                                       ; $4b3a: $60
    rst $38                                       ; $4b3b: $ff
    ldh a, [rIE]                                  ; $4b3c: $f0 $ff
    jr nc, jr_04f_4b30                            ; $4b3e: $30 $f0

    jr nc, @-$0e                                  ; $4b40: $30 $f0

    jr nc, @-$0e                                  ; $4b42: $30 $f0

    jr nc, @-$0e                                  ; $4b44: $30 $f0

    jr nc, jr_04f_4b38                            ; $4b46: $30 $f0

    jr nc, jr_04f_4b3a                            ; $4b48: $30 $f0

    ld [hl], b                                    ; $4b4a: $70
    ldh a, [$e0]                                  ; $4b4b: $f0 $e0
    ldh [$e0], a                                  ; $4b4d: $e0 $e0
    rst $38                                       ; $4b4f: $ff
    ldh [rIE], a                                  ; $4b50: $e0 $ff
    pop hl                                        ; $4b52: $e1
    rst $38                                       ; $4b53: $ff
    db $e3                                        ; $4b54: $e3
    rst $38                                       ; $4b55: $ff
    ld [hl], a                                    ; $4b56: $77
    ld a, a                                       ; $4b57: $7f
    ld a, a                                       ; $4b58: $7f
    ld a, a                                       ; $4b59: $7f
    ld a, $3e                                     ; $4b5a: $3e $3e
    inc e                                         ; $4b5c: $1c
    inc e                                         ; $4b5d: $1c
    jr nc, @+$01                                  ; $4b5e: $30 $ff

    ld hl, sp-$01                                 ; $4b60: $f8 $ff
    ld hl, sp-$01                                 ; $4b62: $f8 $ff
    db $fc                                        ; $4b64: $fc
    rst $38                                       ; $4b65: $ff
    sbc h                                         ; $4b66: $9c
    sbc a                                         ; $4b67: $9f
    ld c, $0f                                     ; $4b68: $0e $0f
    ld c, $0f                                     ; $4b6a: $0e $0f
    ld b, $07                                     ; $4b6c: $06 $07
    nop                                           ; $4b6e: $00
    rst $38                                       ; $4b6f: $ff
    nop                                           ; $4b70: $00
    rst $38                                       ; $4b71: $ff
    nop                                           ; $4b72: $00
    rst $38                                       ; $4b73: $ff
    nop                                           ; $4b74: $00
    rst $38                                       ; $4b75: $ff
    nop                                           ; $4b76: $00
    rst $38                                       ; $4b77: $ff
    ld bc, $01ff                                  ; $4b78: $01 $ff $01
    rst $38                                       ; $4b7b: $ff
    inc bc                                        ; $4b7c: $03
    rst $38                                       ; $4b7d: $ff
    nop                                           ; $4b7e: $00
    rst $38                                       ; $4b7f: $ff
    jr nc, @+$01                                  ; $4b80: $30 $ff

    ld a, b                                       ; $4b82: $78
    rst $38                                       ; $4b83: $ff
    ld hl, sp-$01                                 ; $4b84: $f8 $ff
    db $fc                                        ; $4b86: $fc
    rst $38                                       ; $4b87: $ff
    db $fc                                        ; $4b88: $fc
    rst $38                                       ; $4b89: $ff
    call c, $9edf                                 ; $4b8a: $dc $df $9e
    sbc a                                         ; $4b8d: $9f
    nop                                           ; $4b8e: $00
    rst $38                                       ; $4b8f: $ff
    inc c                                         ; $4b90: $0c
    rst $38                                       ; $4b91: $ff
    ld e, $ff                                     ; $4b92: $1e $ff
    rra                                           ; $4b94: $1f
    rst $38                                       ; $4b95: $ff
    ccf                                           ; $4b96: $3f
    rst $38                                       ; $4b97: $ff
    ccf                                           ; $4b98: $3f
    rst $38                                       ; $4b99: $ff
    dec sp                                        ; $4b9a: $3b
    ei                                            ; $4b9b: $fb
    ld a, c                                       ; $4b9c: $79
    ld sp, hl                                     ; $4b9d: $f9
    nop                                           ; $4b9e: $00
    rst $38                                       ; $4b9f: $ff
    nop                                           ; $4ba0: $00
    rst $38                                       ; $4ba1: $ff
    nop                                           ; $4ba2: $00
    rst $38                                       ; $4ba3: $ff
    nop                                           ; $4ba4: $00
    rst $38                                       ; $4ba5: $ff
    nop                                           ; $4ba6: $00
    rst $38                                       ; $4ba7: $ff
    add b                                         ; $4ba8: $80
    rst $38                                       ; $4ba9: $ff
    add b                                         ; $4baa: $80
    rst $38                                       ; $4bab: $ff
    ret nz                                        ; $4bac: $c0

    rst $38                                       ; $4bad: $ff
    inc c                                         ; $4bae: $0c
    rst $38                                       ; $4baf: $ff
    rra                                           ; $4bb0: $1f
    rst $38                                       ; $4bb1: $ff
    rra                                           ; $4bb2: $1f
    rst $38                                       ; $4bb3: $ff
    ccf                                           ; $4bb4: $3f
    rst $38                                       ; $4bb5: $ff
    add hl, sp                                    ; $4bb6: $39
    ld sp, hl                                     ; $4bb7: $f9
    ld [hl], b                                    ; $4bb8: $70
    ldh a, [rSVBK]                                ; $4bb9: $f0 $70
    ldh a, [$60]                                  ; $4bbb: $f0 $60
    ldh [rTAC], a                                 ; $4bbd: $e0 $07
    rst $38                                       ; $4bbf: $ff
    rlca                                          ; $4bc0: $07
    rst $38                                       ; $4bc1: $ff
    add a                                         ; $4bc2: $87
    rst $38                                       ; $4bc3: $ff
    rst $00                                       ; $4bc4: $c7
    rst $38                                       ; $4bc5: $ff
    xor $fe                                       ; $4bc6: $ee $fe
    cp $fe                                        ; $4bc8: $fe $fe
    ld a, h                                       ; $4bca: $7c
    ld a, h                                       ; $4bcb: $7c
    jr c, jr_04f_4c06                             ; $4bcc: $38 $38

    rlca                                          ; $4bce: $07
    rlca                                          ; $4bcf: $07
    inc bc                                        ; $4bd0: $03
    inc bc                                        ; $4bd1: $03
    nop                                           ; $4bd2: $00
    nop                                           ; $4bd3: $00
    nop                                           ; $4bd4: $00
    nop                                           ; $4bd5: $00
    nop                                           ; $4bd6: $00
    nop                                           ; $4bd7: $00
    nop                                           ; $4bd8: $00
    nop                                           ; $4bd9: $00
    nop                                           ; $4bda: $00
    nop                                           ; $4bdb: $00
    nop                                           ; $4bdc: $00
    nop                                           ; $4bdd: $00
    ld hl, sp-$01                                 ; $4bde: $f8 $ff
    cp b                                          ; $4be0: $b8
    cp a                                          ; $4be1: $bf
    inc e                                         ; $4be2: $1c
    rra                                           ; $4be3: $1f
    ld c, $0f                                     ; $4be4: $0e $0f
    rlca                                          ; $4be6: $07
    rlca                                          ; $4be7: $07
    rlca                                          ; $4be8: $07
    rlca                                          ; $4be9: $07
    inc bc                                        ; $4bea: $03
    inc bc                                        ; $4beb: $03
    nop                                           ; $4bec: $00
    nop                                           ; $4bed: $00
    rra                                           ; $4bee: $1f
    rst $38                                       ; $4bef: $ff
    rra                                           ; $4bf0: $1f
    rst $38                                       ; $4bf1: $ff
    dec sp                                        ; $4bf2: $3b
    ei                                            ; $4bf3: $fb
    ld [hl], e                                    ; $4bf4: $73
    di                                            ; $4bf5: $f3
    db $e3                                        ; $4bf6: $e3
    db $e3                                        ; $4bf7: $e3
    db $e3                                        ; $4bf8: $e3
    db $e3                                        ; $4bf9: $e3
    jp Jump_000_03c3                              ; $4bfa: $c3 $c3 $03


    inc bc                                        ; $4bfd: $03
    add c                                         ; $4bfe: $81
    rst $38                                       ; $4bff: $ff
    add c                                         ; $4c00: $81
    rst $38                                       ; $4c01: $ff
    jp $c3ff                                      ; $4c02: $c3 $ff $c3


    rst $38                                       ; $4c05: $ff

jr_04f_4c06:
    rst $20                                       ; $4c06: $e7
    rst $38                                       ; $4c07: $ff
    ld a, [hl]                                    ; $4c08: $7e
    rst $38                                       ; $4c09: $ff
    rst $38                                       ; $4c0a: $ff
    rst $38                                       ; $4c0b: $ff
    cp l                                          ; $4c0c: $bd
    rst $38                                       ; $4c0d: $ff
    ld hl, sp-$01                                 ; $4c0e: $f8 $ff
    ld hl, sp-$01                                 ; $4c10: $f8 $ff
    call c, $cedf                                 ; $4c12: $dc $df $ce
    rst $08                                       ; $4c15: $cf
    rst $00                                       ; $4c16: $c7
    rst $00                                       ; $4c17: $c7
    rst $00                                       ; $4c18: $c7
    rst $00                                       ; $4c19: $c7
    jp $c0c3                                      ; $4c1a: $c3 $c3 $c0


    ret nz                                        ; $4c1d: $c0

    dec de                                        ; $4c1e: $1b
    ei                                            ; $4c1f: $fb
    add hl, de                                    ; $4c20: $19
    ld sp, hl                                     ; $4c21: $f9
    jr nc, @-$0e                                  ; $4c22: $30 $f0

    ld [hl], b                                    ; $4c24: $70
    ldh a, [$e0]                                  ; $4c25: $f0 $e0
    ldh [$e0], a                                  ; $4c27: $e0 $e0
    ldh [$c0], a                                  ; $4c29: $e0 $c0
    ret nz                                        ; $4c2b: $c0

    nop                                           ; $4c2c: $00
    nop                                           ; $4c2d: $00
    ldh [$e0], a                                  ; $4c2e: $e0 $e0
    ret nz                                        ; $4c30: $c0

    ret nz                                        ; $4c31: $c0

    nop                                           ; $4c32: $00
    nop                                           ; $4c33: $00
    nop                                           ; $4c34: $00
    nop                                           ; $4c35: $00
    nop                                           ; $4c36: $00
    nop                                           ; $4c37: $00
    nop                                           ; $4c38: $00
    nop                                           ; $4c39: $00
    nop                                           ; $4c3a: $00
    nop                                           ; $4c3b: $00
    nop                                           ; $4c3c: $00
    nop                                           ; $4c3d: $00
    rlca                                          ; $4c3e: $07
    rlca                                          ; $4c3f: $07
    rlca                                          ; $4c40: $07
    rlca                                          ; $4c41: $07
    inc bc                                        ; $4c42: $03
    inc bc                                        ; $4c43: $03
    inc bc                                        ; $4c44: $03
    inc bc                                        ; $4c45: $03
    ld bc, $0101                                  ; $4c46: $01 $01 $01
    ld bc, $0000                                  ; $4c49: $01 $00 $00
    nop                                           ; $4c4c: $00
    nop                                           ; $4c4d: $00
    rlca                                          ; $4c4e: $07
    rst $38                                       ; $4c4f: $ff
    rrca                                          ; $4c50: $0f
    rst $38                                       ; $4c51: $ff
    sbc [hl]                                      ; $4c52: $9e
    cp $fc                                        ; $4c53: $fe $fc
    db $fc                                        ; $4c55: $fc
    ld hl, sp-$08                                 ; $4c56: $f8 $f8
    ldh a, [$f0]                                  ; $4c58: $f0 $f0
    ldh [$e0], a                                  ; $4c5a: $e0 $e0
    nop                                           ; $4c5c: $00
    nop                                           ; $4c5d: $00
    sbc [hl]                                      ; $4c5e: $9e
    sbc a                                         ; $4c5f: $9f
    rra                                           ; $4c60: $1f
    rra                                           ; $4c61: $1f
    rra                                           ; $4c62: $1f
    rra                                           ; $4c63: $1f
    rra                                           ; $4c64: $1f
    rra                                           ; $4c65: $1f
    dec de                                        ; $4c66: $1b
    rra                                           ; $4c67: $1f
    dec de                                        ; $4c68: $1b
    rra                                           ; $4c69: $1f
    dec e                                         ; $4c6a: $1d
    rra                                           ; $4c6b: $1f
    dec e                                         ; $4c6c: $1d
    rra                                           ; $4c6d: $1f
    nop                                           ; $4c6e: $00
    rst $38                                       ; $4c6f: $ff
    nop                                           ; $4c70: $00
    rst $38                                       ; $4c71: $ff
    nop                                           ; $4c72: $00
    rst $38                                       ; $4c73: $ff
    add c                                         ; $4c74: $81
    rst $38                                       ; $4c75: $ff
    jp $e7ff                                      ; $4c76: $c3 $ff $e7


    rst $38                                       ; $4c79: $ff
    ld a, [hl]                                    ; $4c7a: $7e
    rst $38                                       ; $4c7b: $ff
    ld a, h                                       ; $4c7c: $7c
    rst $38                                       ; $4c7d: $ff
    ld a, c                                       ; $4c7e: $79
    ld sp, hl                                     ; $4c7f: $f9
    ld hl, sp-$08                                 ; $4c80: $f8 $f8
    ld hl, sp-$08                                 ; $4c82: $f8 $f8
    ld hl, sp-$08                                 ; $4c84: $f8 $f8
    ret c                                         ; $4c86: $d8

    ld hl, sp+$58                                 ; $4c87: $f8 $58
    ld hl, sp-$48                                 ; $4c89: $f8 $b8
    ld hl, sp-$48                                 ; $4c8b: $f8 $b8
    ld hl, sp-$20                                 ; $4c8d: $f8 $e0
    rst $38                                       ; $4c8f: $ff
    ldh a, [rIE]                                  ; $4c90: $f0 $ff
    ld a, c                                       ; $4c92: $79
    ld a, a                                       ; $4c93: $7f
    ccf                                           ; $4c94: $3f
    ccf                                           ; $4c95: $3f
    rra                                           ; $4c96: $1f
    rra                                           ; $4c97: $1f
    rrca                                          ; $4c98: $0f
    rrca                                          ; $4c99: $0f
    rlca                                          ; $4c9a: $07
    rlca                                          ; $4c9b: $07
    nop                                           ; $4c9c: $00
    nop                                           ; $4c9d: $00
    ldh [$e0], a                                  ; $4c9e: $e0 $e0
    ldh [$e0], a                                  ; $4ca0: $e0 $e0
    ret nz                                        ; $4ca2: $c0

    ret nz                                        ; $4ca3: $c0

    ret nz                                        ; $4ca4: $c0

    ret nz                                        ; $4ca5: $c0

    add b                                         ; $4ca6: $80
    add b                                         ; $4ca7: $80
    add b                                         ; $4ca8: $80
    add b                                         ; $4ca9: $80
    nop                                           ; $4caa: $00
    nop                                           ; $4cab: $00
    nop                                           ; $4cac: $00
    nop                                           ; $4cad: $00
    inc sp                                        ; $4cae: $33
    inc a                                         ; $4caf: $3c
    scf                                           ; $4cb0: $37
    jr c, @+$71                                   ; $4cb1: $38 $6f

    ld [hl], b                                    ; $4cb3: $70
    ld l, h                                       ; $4cb4: $6c
    ld [hl], e                                    ; $4cb5: $73
    ld b, b                                       ; $4cb6: $40
    ld a, a                                       ; $4cb7: $7f

jr_04f_4cb8:
    ret nz                                        ; $4cb8: $c0

    rst $38                                       ; $4cb9: $ff
    add b                                         ; $4cba: $80
    rst $38                                       ; $4cbb: $ff
    add b                                         ; $4cbc: $80
    rst $38                                       ; $4cbd: $ff
    add c                                         ; $4cbe: $81
    ld a, [hl]                                    ; $4cbf: $7e
    db $db                                        ; $4cc0: $db
    inc h                                         ; $4cc1: $24
    rst $38                                       ; $4cc2: $ff
    nop                                           ; $4cc3: $00
    rst $38                                       ; $4cc4: $ff
    nop                                           ; $4cc5: $00
    ld h, [hl]                                    ; $4cc6: $66
    sbc c                                         ; $4cc7: $99
    nop                                           ; $4cc8: $00
    rst $38                                       ; $4cc9: $ff
    nop                                           ; $4cca: $00
    rst $38                                       ; $4ccb: $ff
    nop                                           ; $4ccc: $00
    rst $38                                       ; $4ccd: $ff
    call z, $ec3c                                 ; $4cce: $cc $3c $ec
    inc e                                         ; $4cd1: $1c
    or $0e                                        ; $4cd2: $f6 $0e
    ld [hl], $ce                                  ; $4cd4: $36 $ce
    ld [bc], a                                    ; $4cd6: $02
    cp $03                                        ; $4cd7: $fe $03
    rst $38                                       ; $4cd9: $ff
    ld bc, $01ff                                  ; $4cda: $01 $ff $01
    rst $38                                       ; $4cdd: $ff
    nop                                           ; $4cde: $00
    nop                                           ; $4cdf: $00
    ld bc, $0101                                  ; $4ce0: $01 $01 $01
    ld bc, $0303                                  ; $4ce3: $01 $03 $03
    inc bc                                        ; $4ce6: $03
    inc bc                                        ; $4ce7: $03
    inc bc                                        ; $4ce8: $03
    inc bc                                        ; $4ce9: $03
    inc bc                                        ; $4cea: $03
    inc bc                                        ; $4ceb: $03
    inc bc                                        ; $4cec: $03
    inc bc                                        ; $4ced: $03
    rst $28                                       ; $4cee: $ef
    ldh a, [$df]                                  ; $4cef: $f0 $df
    ldh [$de], a                                  ; $4cf1: $e0 $de
    pop hl                                        ; $4cf3: $e1
    adc h                                         ; $4cf4: $8c
    di                                            ; $4cf5: $f3
    add b                                         ; $4cf6: $80
    rst $38                                       ; $4cf7: $ff
    nop                                           ; $4cf8: $00
    rst $38                                       ; $4cf9: $ff
    nop                                           ; $4cfa: $00
    rst $38                                       ; $4cfb: $ff
    nop                                           ; $4cfc: $00
    rst $38                                       ; $4cfd: $ff
    ldh [$1f], a                                  ; $4cfe: $e0 $1f
    ldh a, [rIF]                                  ; $4d00: $f0 $0f
    ld a, c                                       ; $4d02: $79
    add [hl]                                      ; $4d03: $86
    ccf                                           ; $4d04: $3f
    ret nz                                        ; $4d05: $c0

    ccf                                           ; $4d06: $3f
    ret nz                                        ; $4d07: $c0

    rra                                           ; $4d08: $1f
    ldh [rNR34], a                                ; $4d09: $e0 $1e
    pop hl                                        ; $4d0b: $e1
    inc c                                         ; $4d0c: $0c
    di                                            ; $4d0d: $f3
    ld a, a                                       ; $4d0e: $7f
    add b                                         ; $4d0f: $80
    rst $38                                       ; $4d10: $ff
    nop                                           ; $4d11: $00
    db $e3                                        ; $4d12: $e3
    inc e                                         ; $4d13: $1c
    pop bc                                        ; $4d14: $c1
    ld a, $80                                     ; $4d15: $3e $80
    ld a, a                                       ; $4d17: $7f
    nop                                           ; $4d18: $00
    rst $38                                       ; $4d19: $ff
    nop                                           ; $4d1a: $00
    rst $38                                       ; $4d1b: $ff
    nop                                           ; $4d1c: $00

jr_04f_4d1d:
    rst $38                                       ; $4d1d: $ff
    add c                                         ; $4d1e: $81
    ld a, [hl]                                    ; $4d1f: $7e
    jp $e73c                                      ; $4d20: $c3 $3c $e7


    jr @+$01                                      ; $4d23: $18 $ff

    nop                                           ; $4d25: $00
    rst $38                                       ; $4d26: $ff
    nop                                           ; $4d27: $00
    ld a, [hl]                                    ; $4d28: $7e
    add c                                         ; $4d29: $81
    inc a                                         ; $4d2a: $3c
    jp $e718                                      ; $4d2b: $c3 $18 $e7


    cp $01                                        ; $4d2e: $fe $01
    rst $38                                       ; $4d30: $ff
    nop                                           ; $4d31: $00
    rst $00                                       ; $4d32: $c7
    jr c, jr_04f_4cb8                             ; $4d33: $38 $83

    ld a, h                                       ; $4d35: $7c
    ld bc, $00fe                                  ; $4d36: $01 $fe $00
    rst $38                                       ; $4d39: $ff
    nop                                           ; $4d3a: $00
    rst $38                                       ; $4d3b: $ff
    nop                                           ; $4d3c: $00
    rst $38                                       ; $4d3d: $ff
    rlca                                          ; $4d3e: $07
    ld hl, sp+$0f                                 ; $4d3f: $f8 $0f
    ldh a, [$9e]                                  ; $4d41: $f0 $9e
    ld h, c                                       ; $4d43: $61
    db $fc                                        ; $4d44: $fc
    inc bc                                        ; $4d45: $03
    db $fc                                        ; $4d46: $fc
    inc bc                                        ; $4d47: $03
    ld hl, sp+$07                                 ; $4d48: $f8 $07
    ld a, b                                       ; $4d4a: $78
    add a                                         ; $4d4b: $87
    jr nc, jr_04f_4d1d                            ; $4d4c: $30 $cf

    rst $30                                       ; $4d4e: $f7
    rrca                                          ; $4d4f: $0f
    ei                                            ; $4d50: $fb
    rlca                                          ; $4d51: $07
    ld a, e                                       ; $4d52: $7b
    add a                                         ; $4d53: $87
    ld sp, $01cf                                  ; $4d54: $31 $cf $01
    rst $38                                       ; $4d57: $ff
    nop                                           ; $4d58: $00
    rst $38                                       ; $4d59: $ff
    nop                                           ; $4d5a: $00
    rst $38                                       ; $4d5b: $ff
    nop                                           ; $4d5c: $00
    rst $38                                       ; $4d5d: $ff
    nop                                           ; $4d5e: $00
    nop                                           ; $4d5f: $00
    add b                                         ; $4d60: $80
    add b                                         ; $4d61: $80
    add b                                         ; $4d62: $80
    add b                                         ; $4d63: $80
    ret nz                                        ; $4d64: $c0

    ret nz                                        ; $4d65: $c0

    ret nz                                        ; $4d66: $c0

    ret nz                                        ; $4d67: $c0

    ret nz                                        ; $4d68: $c0

    ret nz                                        ; $4d69: $c0

    ret nz                                        ; $4d6a: $c0

    ret nz                                        ; $4d6b: $c0

    ret nz                                        ; $4d6c: $c0

    ret nz                                        ; $4d6d: $c0

    ld bc, $0101                                  ; $4d6e: $01 $01 $01
    ld bc, $0101                                  ; $4d71: $01 $01 $01
    ld bc, $0101                                  ; $4d74: $01 $01 $01
    ld bc, $0000                                  ; $4d77: $01 $00 $00
    ld bc, $0101                                  ; $4d7a: $01 $01 $01
    ld bc, $ff8c                                  ; $4d7d: $01 $8c $ff
    inc c                                         ; $4d80: $0c
    rst $38                                       ; $4d81: $ff
    inc e                                         ; $4d82: $1c
    rst $38                                       ; $4d83: $ff
    cp h                                          ; $4d84: $bc
    rst $38                                       ; $4d85: $ff
    db $fc                                        ; $4d86: $fc
    rst $38                                       ; $4d87: $ff
    db $e4                                        ; $4d88: $e4
    rst $38                                       ; $4d89: $ff
    rst $00                                       ; $4d8a: $c7
    rst $38                                       ; $4d8b: $ff
    add e                                         ; $4d8c: $83
    rst $38                                       ; $4d8d: $ff
    nop                                           ; $4d8e: $00
    rst $38                                       ; $4d8f: $ff
    jr @+$01                                      ; $4d90: $18 $ff

    inc a                                         ; $4d92: $3c
    rst $38                                       ; $4d93: $ff
    ld a, [hl]                                    ; $4d94: $7e
    rst $38                                       ; $4d95: $ff
    ld h, [hl]                                    ; $4d96: $66
    rst $38                                       ; $4d97: $ff
    jp $81ff                                      ; $4d98: $c3 $ff $81


    rst $38                                       ; $4d9b: $ff
    nop                                           ; $4d9c: $00
    rst $38                                       ; $4d9d: $ff
    ld sp, $30ff                                  ; $4d9e: $31 $ff $30
    rst $38                                       ; $4da1: $ff
    jr c, @+$01                                   ; $4da2: $38 $ff

    dec a                                         ; $4da4: $3d
    rst $38                                       ; $4da5: $ff
    ccf                                           ; $4da6: $3f
    rst $38                                       ; $4da7: $ff
    daa                                           ; $4da8: $27
    rst $38                                       ; $4da9: $ff
    db $e3                                        ; $4daa: $e3
    rst $38                                       ; $4dab: $ff
    pop bc                                        ; $4dac: $c1
    rst $38                                       ; $4dad: $ff
    add b                                         ; $4dae: $80
    add b                                         ; $4daf: $80
    add b                                         ; $4db0: $80
    add b                                         ; $4db1: $80
    add b                                         ; $4db2: $80
    add b                                         ; $4db3: $80
    add b                                         ; $4db4: $80
    add b                                         ; $4db5: $80
    add b                                         ; $4db6: $80
    add b                                         ; $4db7: $80
    nop                                           ; $4db8: $00
    nop                                           ; $4db9: $00
    add b                                         ; $4dba: $80
    add b                                         ; $4dbb: $80
    add b                                         ; $4dbc: $80
    add b                                         ; $4dbd: $80
    inc bc                                        ; $4dbe: $03
    inc bc                                        ; $4dbf: $03
    inc bc                                        ; $4dc0: $03
    inc bc                                        ; $4dc1: $03
    inc bc                                        ; $4dc2: $03
    inc bc                                        ; $4dc3: $03
    inc bc                                        ; $4dc4: $03
    inc bc                                        ; $4dc5: $03
    inc bc                                        ; $4dc6: $03
    inc bc                                        ; $4dc7: $03
    inc bc                                        ; $4dc8: $03
    inc bc                                        ; $4dc9: $03
    inc bc                                        ; $4dca: $03
    inc bc                                        ; $4dcb: $03
    ld bc, $0001                                  ; $4dcc: $01 $01 $00
    rst $38                                       ; $4dcf: $ff
    ld b, $ff                                     ; $4dd0: $06 $ff
    rrca                                          ; $4dd2: $0f
    rst $38                                       ; $4dd3: $ff
    rra                                           ; $4dd4: $1f
    rst $38                                       ; $4dd5: $ff
    rra                                           ; $4dd6: $1f
    rst $38                                       ; $4dd7: $ff
    cp a                                          ; $4dd8: $bf
    rst $38                                       ; $4dd9: $ff
    rst $30                                       ; $4dda: $f7
    rst $30                                       ; $4ddb: $f7
    rst $28                                       ; $4ddc: $ef
    rst $28                                       ; $4ddd: $ef
    nop                                           ; $4dde: $00
    rst $38                                       ; $4ddf: $ff
    inc c                                         ; $4de0: $0c
    rst $38                                       ; $4de1: $ff
    inc e                                         ; $4de2: $1c
    rst $38                                       ; $4de3: $ff
    ld e, $ff                                     ; $4de4: $1e $ff
    ld a, $ff                                     ; $4de6: $3e $ff
    ld a, $ff                                     ; $4de8: $3e $ff
    ld [hl], a                                    ; $4dea: $77
    rst $38                                       ; $4deb: $ff
    db $e3                                        ; $4dec: $e3
    rst $38                                       ; $4ded: $ff
    nop                                           ; $4dee: $00
    rst $38                                       ; $4def: $ff
    jr nc, @+$01                                  ; $4df0: $30 $ff

    jr c, @+$01                                   ; $4df2: $38 $ff

    ld a, b                                       ; $4df4: $78
    rst $38                                       ; $4df5: $ff
    ld a, h                                       ; $4df6: $7c
    rst $38                                       ; $4df7: $ff
    ld a, h                                       ; $4df8: $7c
    rst $38                                       ; $4df9: $ff
    xor $ff                                       ; $4dfa: $ee $ff
    rst $00                                       ; $4dfc: $c7
    rst $38                                       ; $4dfd: $ff
    nop                                           ; $4dfe: $00
    rst $38                                       ; $4dff: $ff
    ld h, b                                       ; $4e00: $60
    rst $38                                       ; $4e01: $ff
    ldh a, [rIE]                                  ; $4e02: $f0 $ff
    ld hl, sp-$01                                 ; $4e04: $f8 $ff
    ld hl, sp-$01                                 ; $4e06: $f8 $ff
    db $fd                                        ; $4e08: $fd
    rst $38                                       ; $4e09: $ff
    rst $28                                       ; $4e0a: $ef
    rst $28                                       ; $4e0b: $ef
    rst $30                                       ; $4e0c: $f7
    rst $30                                       ; $4e0d: $f7
    ret nz                                        ; $4e0e: $c0

    ret nz                                        ; $4e0f: $c0

    ret nz                                        ; $4e10: $c0

    ret nz                                        ; $4e11: $c0

    ret nz                                        ; $4e12: $c0

    ret nz                                        ; $4e13: $c0

    ret nz                                        ; $4e14: $c0

    ret nz                                        ; $4e15: $c0

    ret nz                                        ; $4e16: $c0

    ret nz                                        ; $4e17: $c0

    ret nz                                        ; $4e18: $c0

    ret nz                                        ; $4e19: $c0

    ret nz                                        ; $4e1a: $c0

    ret nz                                        ; $4e1b: $c0

    add b                                         ; $4e1c: $80
    add b                                         ; $4e1d: $80
    inc bc                                        ; $4e1e: $03
    inc bc                                        ; $4e1f: $03
    inc bc                                        ; $4e20: $03
    inc bc                                        ; $4e21: $03
    ld b, $07                                     ; $4e22: $06 $07
    ld b, $07                                     ; $4e24: $06 $07
    inc c                                         ; $4e26: $0c
    rrca                                          ; $4e27: $0f
    inc c                                         ; $4e28: $0c
    rrca                                          ; $4e29: $0f
    inc c                                         ; $4e2a: $0c
    rrca                                          ; $4e2b: $0f
    jr jr_04f_4e4d                                ; $4e2c: $18 $1f

    nop                                           ; $4e2e: $00
    rst $38                                       ; $4e2f: $ff
    nop                                           ; $4e30: $00
    rst $38                                       ; $4e31: $ff
    inc bc                                        ; $4e32: $03
    rst $38                                       ; $4e33: $ff
    ld b, $ff                                     ; $4e34: $06 $ff
    ld b, $ff                                     ; $4e36: $06 $ff
    inc bc                                        ; $4e38: $03
    rst $38                                       ; $4e39: $ff
    nop                                           ; $4e3a: $00
    rst $38                                       ; $4e3b: $ff
    nop                                           ; $4e3c: $00
    rst $38                                       ; $4e3d: $ff
    nop                                           ; $4e3e: $00
    rst $38                                       ; $4e3f: $ff
    nop                                           ; $4e40: $00
    rst $38                                       ; $4e41: $ff
    ld h, b                                       ; $4e42: $60
    rst $38                                       ; $4e43: $ff
    ret nz                                        ; $4e44: $c0

    rst $38                                       ; $4e45: $ff
    ret nz                                        ; $4e46: $c0

    rst $38                                       ; $4e47: $ff
    ld h, b                                       ; $4e48: $60
    rst $38                                       ; $4e49: $ff
    nop                                           ; $4e4a: $00
    rst $38                                       ; $4e4b: $ff
    nop                                           ; $4e4c: $00

jr_04f_4e4d:
    rst $38                                       ; $4e4d: $ff
    ret nz                                        ; $4e4e: $c0

    ret nz                                        ; $4e4f: $c0

    ret nz                                        ; $4e50: $c0

    ret nz                                        ; $4e51: $c0

    ld h, b                                       ; $4e52: $60
    ldh [$60], a                                  ; $4e53: $e0 $60
    ldh [$30], a                                  ; $4e55: $e0 $30
    ldh a, [$30]                                  ; $4e57: $f0 $30
    ldh a, [$30]                                  ; $4e59: $f0 $30
    ldh a, [rNR23]                                ; $4e5b: $f0 $18
    ld hl, sp-$21                                 ; $4e5d: $f8 $df
    rst $18                                       ; $4e5f: $df
    dec e                                         ; $4e60: $1d
    rra                                           ; $4e61: $1f
    dec a                                         ; $4e62: $3d
    ccf                                           ; $4e63: $3f
    jr c, jr_04f_4ea5                             ; $4e64: $38 $3f

    jr c, jr_04f_4ea7                             ; $4e66: $38 $3f

    ld [hl], b                                    ; $4e68: $70
    ld a, a                                       ; $4e69: $7f
    ld [hl], b                                    ; $4e6a: $70
    ld a, a                                       ; $4e6b: $7f
    ld [hl], b                                    ; $4e6c: $70
    ld a, a                                       ; $4e6d: $7f
    add c                                         ; $4e6e: $81
    rst $38                                       ; $4e6f: $ff
    add e                                         ; $4e70: $83
    rst $38                                       ; $4e71: $ff
    rst $00                                       ; $4e72: $c7
    rst $38                                       ; $4e73: $ff
    cp $ff                                        ; $4e74: $fe $ff
    ld a, h                                       ; $4e76: $7c
    rst $38                                       ; $4e77: $ff
    jr c, @+$01                                   ; $4e78: $38 $ff

    nop                                           ; $4e7a: $00
    rst $38                                       ; $4e7b: $ff
    nop                                           ; $4e7c: $00
    rst $38                                       ; $4e7d: $ff
    jp $83ff                                      ; $4e7e: $c3 $ff $83


    rst $38                                       ; $4e81: $ff
    ld bc, $01ff                                  ; $4e82: $01 $ff $01
    rst $38                                       ; $4e85: $ff
    nop                                           ; $4e86: $00
    rst $38                                       ; $4e87: $ff
    nop                                           ; $4e88: $00
    rst $38                                       ; $4e89: $ff
    nop                                           ; $4e8a: $00
    rst $38                                       ; $4e8b: $ff
    nop                                           ; $4e8c: $00
    rst $38                                       ; $4e8d: $ff
    nop                                           ; $4e8e: $00
    rst $38                                       ; $4e8f: $ff
    add c                                         ; $4e90: $81
    rst $38                                       ; $4e91: $ff
    add c                                         ; $4e92: $81
    rst $38                                       ; $4e93: $ff
    jp $c3ff                                      ; $4e94: $c3 $ff $c3


    rst $38                                       ; $4e97: $ff
    rst $20                                       ; $4e98: $e7
    rst $38                                       ; $4e99: $ff
    ld a, [hl]                                    ; $4e9a: $7e
    rst $38                                       ; $4e9b: $ff
    inc a                                         ; $4e9c: $3c
    rst $38                                       ; $4e9d: $ff
    jp $c1ff                                      ; $4e9e: $c3 $ff $c1


    rst $38                                       ; $4ea1: $ff
    add b                                         ; $4ea2: $80
    rst $38                                       ; $4ea3: $ff
    add b                                         ; $4ea4: $80

jr_04f_4ea5:
    rst $38                                       ; $4ea5: $ff
    nop                                           ; $4ea6: $00

jr_04f_4ea7:
    rst $38                                       ; $4ea7: $ff
    nop                                           ; $4ea8: $00
    rst $38                                       ; $4ea9: $ff
    nop                                           ; $4eaa: $00
    rst $38                                       ; $4eab: $ff
    nop                                           ; $4eac: $00
    rst $38                                       ; $4ead: $ff
    add c                                         ; $4eae: $81
    rst $38                                       ; $4eaf: $ff
    pop bc                                        ; $4eb0: $c1
    rst $38                                       ; $4eb1: $ff
    db $e3                                        ; $4eb2: $e3
    rst $38                                       ; $4eb3: $ff
    ld a, a                                       ; $4eb4: $7f
    rst $38                                       ; $4eb5: $ff
    ld a, $ff                                     ; $4eb6: $3e $ff
    inc e                                         ; $4eb8: $1c
    rst $38                                       ; $4eb9: $ff
    nop                                           ; $4eba: $00
    rst $38                                       ; $4ebb: $ff
    nop                                           ; $4ebc: $00
    rst $38                                       ; $4ebd: $ff
    di                                            ; $4ebe: $f3
    di                                            ; $4ebf: $f3
    cp b                                          ; $4ec0: $b8
    ld hl, sp+$38                                 ; $4ec1: $f8 $38
    ld hl, sp+$1c                                 ; $4ec3: $f8 $1c
    db $fc                                        ; $4ec5: $fc
    inc e                                         ; $4ec6: $1c
    db $fc                                        ; $4ec7: $fc
    ld c, $fe                                     ; $4ec8: $0e $fe
    ld c, $fe                                     ; $4eca: $0e $fe
    ld c, $fe                                     ; $4ecc: $0e $fe
    jr jr_04f_4eef                                ; $4ece: $18 $1f

    add hl, de                                    ; $4ed0: $19
    ld e, $33                                     ; $4ed1: $1e $33

jr_04f_4ed3:
    inc a                                         ; $4ed3: $3c
    scf                                           ; $4ed4: $37
    jr c, jr_04f_4f0d                             ; $4ed5: $38 $36

    add hl, sp                                    ; $4ed7: $39
    jr nc, jr_04f_4f19                            ; $4ed8: $30 $3f

    jr nc, jr_04f_4f1b                            ; $4eda: $30 $3f

    ld sp, $003f                                  ; $4edc: $31 $3f $00
    rst $38                                       ; $4edf: $ff
    add b                                         ; $4ee0: $80
    ld a, a                                       ; $4ee1: $7f
    pop bc                                        ; $4ee2: $c1
    ld a, $e3                                     ; $4ee3: $3e $e3
    inc e                                         ; $4ee5: $1c
    ld a, a                                       ; $4ee6: $7f
    add b                                         ; $4ee7: $80
    ld a, $c1                                     ; $4ee8: $3e $c1
    inc e                                         ; $4eea: $1c
    db $e3                                        ; $4eeb: $e3
    nop                                           ; $4eec: $00
    rst $38                                       ; $4eed: $ff
    nop                                           ; $4eee: $00

jr_04f_4eef:
    rst $38                                       ; $4eef: $ff
    nop                                           ; $4ef0: $00
    rst $38                                       ; $4ef1: $ff
    add c                                         ; $4ef2: $81
    ld a, [hl]                                    ; $4ef3: $7e
    jp $e73c                                      ; $4ef4: $c3 $3c $e7


    jr @+$80                                      ; $4ef7: $18 $7e

    add c                                         ; $4ef9: $81
    inc a                                         ; $4efa: $3c
    jp $e718                                      ; $4efb: $c3 $18 $e7


    nop                                           ; $4efe: $00
    rst $38                                       ; $4eff: $ff
    ld bc, $83fe                                  ; $4f00: $01 $fe $83
    ld a, h                                       ; $4f03: $7c
    rst $00                                       ; $4f04: $c7

jr_04f_4f05:
    jr c, jr_04f_4f05                             ; $4f05: $38 $fe

    ld bc, $837c                                  ; $4f07: $01 $7c $83
    jr c, jr_04f_4ed3                             ; $4f0a: $38 $c7

    nop                                           ; $4f0c: $00

jr_04f_4f0d:
    rst $38                                       ; $4f0d: $ff
    jr @-$06                                      ; $4f0e: $18 $f8

    sbc b                                         ; $4f10: $98
    ld a, b                                       ; $4f11: $78
    call z, $ec3c                                 ; $4f12: $cc $3c $ec
    inc e                                         ; $4f15: $1c
    ld l, h                                       ; $4f16: $6c
    sbc h                                         ; $4f17: $9c
    inc c                                         ; $4f18: $0c

jr_04f_4f19:
    db $fc                                        ; $4f19: $fc
    inc c                                         ; $4f1a: $0c

jr_04f_4f1b:
    db $fc                                        ; $4f1b: $fc
    adc h                                         ; $4f1c: $8c
    db $fc                                        ; $4f1d: $fc
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
    ld bc, $0101                                  ; $4f28: $01 $01 $01
    ld bc, $0101                                  ; $4f2b: $01 $01 $01
    ldh [rIE], a                                  ; $4f2e: $e0 $ff
    ldh [rIE], a                                  ; $4f30: $e0 $ff
    ldh [rIE], a                                  ; $4f32: $e0 $ff
    ldh [rIE], a                                  ; $4f34: $e0 $ff
    ret nz                                        ; $4f36: $c0

    rst $38                                       ; $4f37: $ff
    ret nz                                        ; $4f38: $c0

    rst $38                                       ; $4f39: $ff
    ret nz                                        ; $4f3a: $c0

    rst $38                                       ; $4f3b: $ff
    ret nz                                        ; $4f3c: $c0

    rst $38                                       ; $4f3d: $ff
    rlca                                          ; $4f3e: $07
    rst $38                                       ; $4f3f: $ff
    rlca                                          ; $4f40: $07
    rst $38                                       ; $4f41: $ff
    rlca                                          ; $4f42: $07
    rst $38                                       ; $4f43: $ff
    rlca                                          ; $4f44: $07
    rst $38                                       ; $4f45: $ff
    inc bc                                        ; $4f46: $03
    rst $38                                       ; $4f47: $ff
    inc bc                                        ; $4f48: $03
    rst $38                                       ; $4f49: $ff
    inc bc                                        ; $4f4a: $03
    rst $38                                       ; $4f4b: $ff
    inc bc                                        ; $4f4c: $03
    rst $38                                       ; $4f4d: $ff
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
    add b                                         ; $4f58: $80
    add b                                         ; $4f59: $80
    add b                                         ; $4f5a: $80
    add b                                         ; $4f5b: $80
    add b                                         ; $4f5c: $80
    add b                                         ; $4f5d: $80
    inc sp                                        ; $4f5e: $33
    ccf                                           ; $4f5f: $3f
    scf                                           ; $4f60: $37
    ccf                                           ; $4f61: $3f
    ccf                                           ; $4f62: $3f
    ccf                                           ; $4f63: $3f
    dec de                                        ; $4f64: $1b
    dec de                                        ; $4f65: $1b
    rlca                                          ; $4f66: $07
    rlca                                          ; $4f67: $07
    ld b, $07                                     ; $4f68: $06 $07
    inc c                                         ; $4f6a: $0c
    rrca                                          ; $4f6b: $0f
    inc c                                         ; $4f6c: $0c
    rrca                                          ; $4f6d: $0f
    inc bc                                        ; $4f6e: $03
    rst $38                                       ; $4f6f: $ff
    add a                                         ; $4f70: $87
    rst $38                                       ; $4f71: $ff
    adc [hl]                                      ; $4f72: $8e
    rst $38                                       ; $4f73: $ff
    sbc h                                         ; $4f74: $9c
    rst $38                                       ; $4f75: $ff
    ld hl, sp-$01                                 ; $4f76: $f8 $ff
    ldh a, [rIE]                                  ; $4f78: $f0 $ff
    ld h, b                                       ; $4f7a: $60
    rst $38                                       ; $4f7b: $ff
    nop                                           ; $4f7c: $00
    rst $38                                       ; $4f7d: $ff
    add c                                         ; $4f7e: $81
    rst $38                                       ; $4f7f: $ff
    add c                                         ; $4f80: $81
    rst $38                                       ; $4f81: $ff
    jp $c3ff                                      ; $4f82: $c3 $ff $c3


    rst $38                                       ; $4f85: $ff
    rst $20                                       ; $4f86: $e7
    rst $38                                       ; $4f87: $ff
    ld h, [hl]                                    ; $4f88: $66
    rst $38                                       ; $4f89: $ff
    ld a, [hl]                                    ; $4f8a: $7e
    rst $38                                       ; $4f8b: $ff
    inc a                                         ; $4f8c: $3c
    rst $38                                       ; $4f8d: $ff
    ret nz                                        ; $4f8e: $c0

    rst $38                                       ; $4f8f: $ff
    pop hl                                        ; $4f90: $e1
    rst $38                                       ; $4f91: $ff
    ld [hl], c                                    ; $4f92: $71
    rst $38                                       ; $4f93: $ff
    add hl, sp                                    ; $4f94: $39
    rst $38                                       ; $4f95: $ff
    rra                                           ; $4f96: $1f
    rst $38                                       ; $4f97: $ff
    rrca                                          ; $4f98: $0f
    rst $38                                       ; $4f99: $ff
    ld b, $ff                                     ; $4f9a: $06 $ff
    nop                                           ; $4f9c: $00
    rst $38                                       ; $4f9d: $ff
    call z, $ecfc                                 ; $4f9e: $cc $fc $ec
    db $fc                                        ; $4fa1: $fc
    db $fc                                        ; $4fa2: $fc
    db $fc                                        ; $4fa3: $fc
    ret c                                         ; $4fa4: $d8

    ret c                                         ; $4fa5: $d8

    ldh [$e0], a                                  ; $4fa6: $e0 $e0
    ld h, b                                       ; $4fa8: $60
    ldh [$30], a                                  ; $4fa9: $e0 $30
    ldh a, [$30]                                  ; $4fab: $f0 $30
    ldh a, [rSB]                                  ; $4fad: $f0 $01
    ld bc, $0101                                  ; $4faf: $01 $01 $01
    inc bc                                        ; $4fb2: $03
    inc bc                                        ; $4fb3: $03
    inc bc                                        ; $4fb4: $03
    inc bc                                        ; $4fb5: $03
    inc bc                                        ; $4fb6: $03
    inc bc                                        ; $4fb7: $03
    inc bc                                        ; $4fb8: $03
    inc bc                                        ; $4fb9: $03
    inc bc                                        ; $4fba: $03
    inc bc                                        ; $4fbb: $03
    inc bc                                        ; $4fbc: $03
    inc bc                                        ; $4fbd: $03
    ret nz                                        ; $4fbe: $c0

    rst $38                                       ; $4fbf: $ff
    ret nz                                        ; $4fc0: $c0

    rst $38                                       ; $4fc1: $ff
    add b                                         ; $4fc2: $80
    rst $38                                       ; $4fc3: $ff
    add b                                         ; $4fc4: $80
    rst $38                                       ; $4fc5: $ff
    add b                                         ; $4fc6: $80
    rst $38                                       ; $4fc7: $ff
    add b                                         ; $4fc8: $80
    rst $38                                       ; $4fc9: $ff
    add b                                         ; $4fca: $80
    rst $38                                       ; $4fcb: $ff
    add b                                         ; $4fcc: $80
    rst $38                                       ; $4fcd: $ff
    inc bc                                        ; $4fce: $03
    rst $38                                       ; $4fcf: $ff
    inc bc                                        ; $4fd0: $03
    rst $38                                       ; $4fd1: $ff
    ld bc, $01ff                                  ; $4fd2: $01 $ff $01
    rst $38                                       ; $4fd5: $ff
    ld bc, $01ff                                  ; $4fd6: $01 $ff $01
    rst $38                                       ; $4fd9: $ff
    ld bc, $01ff                                  ; $4fda: $01 $ff $01
    rst $38                                       ; $4fdd: $ff
    add b                                         ; $4fde: $80
    add b                                         ; $4fdf: $80
    add b                                         ; $4fe0: $80
    add b                                         ; $4fe1: $80
    ret nz                                        ; $4fe2: $c0

    ret nz                                        ; $4fe3: $c0

    ret nz                                        ; $4fe4: $c0

    ret nz                                        ; $4fe5: $c0

    ret nz                                        ; $4fe6: $c0

    ret nz                                        ; $4fe7: $c0

    ret nz                                        ; $4fe8: $c0

    ret nz                                        ; $4fe9: $c0

    ret nz                                        ; $4fea: $c0

    ret nz                                        ; $4feb: $c0

    ret nz                                        ; $4fec: $c0

    ret nz                                        ; $4fed: $c0

    inc c                                         ; $4fee: $0c
    rrca                                          ; $4fef: $0f

jr_04f_4ff0:
    jr jr_04f_5011                                ; $4ff0: $18 $1f

    jr jr_04f_5013                                ; $4ff2: $18 $1f

    jr jr_04f_5015                                ; $4ff4: $18 $1f

    jr jr_04f_5017                                ; $4ff6: $18 $1f

    jr nc, @+$41                                  ; $4ff8: $30 $3f

jr_04f_4ffa:
    jr nc, jr_04f_503b                            ; $4ffa: $30 $3f

jr_04f_4ffc:
    jr nc, jr_04f_503d                            ; $4ffc: $30 $3f

jr_04f_4ffe:
    jr nc, jr_04f_4ff0                            ; $4ffe: $30 $f0

jr_04f_5000:
    jr jr_04f_4ffa                                ; $5000: $18 $f8

    jr jr_04f_4ffc                                ; $5002: $18 $f8

    jr jr_04f_4ffe                                ; $5004: $18 $f8

    jr jr_04f_5000                                ; $5006: $18 $f8

    inc c                                         ; $5008: $0c
    db $fc                                        ; $5009: $fc
    inc c                                         ; $500a: $0c
    db $fc                                        ; $500b: $fc
    inc c                                         ; $500c: $0c
    db $fc                                        ; $500d: $fc
    inc bc                                        ; $500e: $03
    inc bc                                        ; $500f: $03
    inc bc                                        ; $5010: $03

jr_04f_5011:
    inc bc                                        ; $5011: $03
    inc bc                                        ; $5012: $03

jr_04f_5013:
    inc bc                                        ; $5013: $03
    inc bc                                        ; $5014: $03

jr_04f_5015:
    inc bc                                        ; $5015: $03
    inc bc                                        ; $5016: $03

jr_04f_5017:
    inc bc                                        ; $5017: $03
    inc bc                                        ; $5018: $03
    inc bc                                        ; $5019: $03
    inc bc                                        ; $501a: $03
    inc bc                                        ; $501b: $03
    inc bc                                        ; $501c: $03
    inc bc                                        ; $501d: $03
    add e                                         ; $501e: $83
    db $fc                                        ; $501f: $fc
    add a                                         ; $5020: $87
    ld hl, sp-$71                                 ; $5021: $f8 $8f
    ldh a, [$9e]                                  ; $5023: $f0 $9e
    pop hl                                        ; $5025: $e1
    cp h                                          ; $5026: $bc
    jp $c7b8                                      ; $5027: $c3 $b8 $c7


    sub b                                         ; $502a: $90
    rst $28                                       ; $502b: $ef
    add b                                         ; $502c: $80
    rst $38                                       ; $502d: $ff
    ret nz                                        ; $502e: $c0

    ccf                                           ; $502f: $3f
    ldh [$1f], a                                  ; $5030: $e0 $1f
    ldh a, [rIF]                                  ; $5032: $f0 $0f
    ld hl, sp+$07                                 ; $5034: $f8 $07
    inc a                                         ; $5036: $3c
    jp $e01f                                      ; $5037: $c3 $1f $e0


    rrca                                          ; $503a: $0f

jr_04f_503b:
    ldh a, [$03]                                  ; $503b: $f0 $03

jr_04f_503d:
    db $fc                                        ; $503d: $fc
    nop                                           ; $503e: $00
    rst $38                                       ; $503f: $ff
    ld e, $e1                                     ; $5040: $1e $e1
    ccf                                           ; $5042: $3f
    ret nz                                        ; $5043: $c0

    ld a, a                                       ; $5044: $7f
    add b                                         ; $5045: $80
    di                                            ; $5046: $f3
    inc c                                         ; $5047: $0c
    pop hl                                        ; $5048: $e1
    ld e, $c0                                     ; $5049: $1e $c0
    ccf                                           ; $504b: $3f
    nop                                           ; $504c: $00
    rst $38                                       ; $504d: $ff
    nop                                           ; $504e: $00
    rst $38                                       ; $504f: $ff
    nop                                           ; $5050: $00
    rst $38                                       ; $5051: $ff
    nop                                           ; $5052: $00
    rst $38                                       ; $5053: $ff
    add c                                         ; $5054: $81
    ld a, [hl]                                    ; $5055: $7e
    jp $ff3c                                      ; $5056: $c3 $3c $ff


    nop                                           ; $5059: $00
    rst $38                                       ; $505a: $ff
    nop                                           ; $505b: $00
    inc a                                         ; $505c: $3c
    jp $ff00                                      ; $505d: $c3 $00 $ff


    ld a, b                                       ; $5060: $78
    add a                                         ; $5061: $87
    db $fc                                        ; $5062: $fc
    inc bc                                        ; $5063: $03
    cp $01                                        ; $5064: $fe $01
    rst $08                                       ; $5066: $cf
    jr nc, jr_04f_4ff0                            ; $5067: $30 $87

    ld a, b                                       ; $5069: $78
    inc bc                                        ; $506a: $03
    db $fc                                        ; $506b: $fc
    nop                                           ; $506c: $00
    rst $38                                       ; $506d: $ff
    inc bc                                        ; $506e: $03
    db $fc                                        ; $506f: $fc
    rlca                                          ; $5070: $07
    ld hl, sp+$0f                                 ; $5071: $f8 $0f
    ldh a, [$1f]                                  ; $5073: $f0 $1f
    ldh [$3c], a                                  ; $5075: $e0 $3c
    jp Jump_000_07f8                              ; $5077: $c3 $f8 $07


    ldh a, [rIF]                                  ; $507a: $f0 $0f
    ret nz                                        ; $507c: $c0

    ccf                                           ; $507d: $3f
    pop bc                                        ; $507e: $c1
    ccf                                           ; $507f: $3f
    pop hl                                        ; $5080: $e1
    rra                                           ; $5081: $1f
    pop af                                        ; $5082: $f1
    rrca                                          ; $5083: $0f
    ld a, c                                       ; $5084: $79
    add a                                         ; $5085: $87
    dec a                                         ; $5086: $3d
    jp $e31d                                      ; $5087: $c3 $1d $e3


    add hl, bc                                    ; $508a: $09
    rst $30                                       ; $508b: $f7
    ld bc, $c0ff                                  ; $508c: $01 $ff $c0
    ret nz                                        ; $508f: $c0

    ret nz                                        ; $5090: $c0

    ret nz                                        ; $5091: $c0

    ret nz                                        ; $5092: $c0

    ret nz                                        ; $5093: $c0

    ret nz                                        ; $5094: $c0

    ret nz                                        ; $5095: $c0

    ret nz                                        ; $5096: $c0

    ret nz                                        ; $5097: $c0

    ret nz                                        ; $5098: $c0

    ret nz                                        ; $5099: $c0

    ret nz                                        ; $509a: $c0

    ret nz                                        ; $509b: $c0

    ret nz                                        ; $509c: $c0

    ret nz                                        ; $509d: $c0

    jr nc, jr_04f_50df                            ; $509e: $30 $3f

    ld sp, $333e                                  ; $50a0: $31 $3e $33
    inc a                                         ; $50a3: $3c
    scf                                           ; $50a4: $37
    jr c, @+$38                                   ; $50a5: $38 $36

    add hl, sp                                    ; $50a7: $39
    inc [hl]                                      ; $50a8: $34
    dec sp                                        ; $50a9: $3b
    jr nc, jr_04f_50eb                            ; $50aa: $30 $3f

    jr nc, jr_04f_50ed                            ; $50ac: $30 $3f

    inc c                                         ; $50ae: $0c
    db $fc                                        ; $50af: $fc
    adc h                                         ; $50b0: $8c
    ld a, h                                       ; $50b1: $7c
    call z, $ec3c                                 ; $50b2: $cc $3c $ec
    inc e                                         ; $50b5: $1c
    ld l, h                                       ; $50b6: $6c
    sbc h                                         ; $50b7: $9c
    inc l                                         ; $50b8: $2c
    call c, $fc0c                                 ; $50b9: $dc $0c $fc
    inc c                                         ; $50bc: $0c
    db $fc                                        ; $50bd: $fc
    inc bc                                        ; $50be: $03
    inc bc                                        ; $50bf: $03
    inc bc                                        ; $50c0: $03
    inc bc                                        ; $50c1: $03
    inc bc                                        ; $50c2: $03
    inc bc                                        ; $50c3: $03
    inc bc                                        ; $50c4: $03
    inc bc                                        ; $50c5: $03
    inc bc                                        ; $50c6: $03
    inc bc                                        ; $50c7: $03
    ld bc, $0101                                  ; $50c8: $01 $01 $01
    ld bc, $0000                                  ; $50cb: $01 $00 $00
    add b                                         ; $50ce: $80
    rst $38                                       ; $50cf: $ff
    add b                                         ; $50d0: $80
    rst $38                                       ; $50d1: $ff
    add b                                         ; $50d2: $80
    rst $38                                       ; $50d3: $ff
    add e                                         ; $50d4: $83
    rst $38                                       ; $50d5: $ff
    adc a                                         ; $50d6: $8f
    rst $38                                       ; $50d7: $ff
    rst $18                                       ; $50d8: $df
    rst $38                                       ; $50d9: $ff
    ld sp, hl                                     ; $50da: $f9
    ld sp, hl                                     ; $50db: $f9
    ldh a, [$f0]                                  ; $50dc: $f0 $f0
    nop                                           ; $50de: $00

jr_04f_50df:
    rst $38                                       ; $50df: $ff
    nop                                           ; $50e0: $00
    rst $38                                       ; $50e1: $ff
    nop                                           ; $50e2: $00
    rst $38                                       ; $50e3: $ff
    nop                                           ; $50e4: $00
    rst $38                                       ; $50e5: $ff
    add b                                         ; $50e6: $80
    rst $38                                       ; $50e7: $ff
    add b                                         ; $50e8: $80
    rst $38                                       ; $50e9: $ff
    ret nz                                        ; $50ea: $c0

jr_04f_50eb:
    rst $38                                       ; $50eb: $ff
    ret nz                                        ; $50ec: $c0

jr_04f_50ed:
    rst $38                                       ; $50ed: $ff
    nop                                           ; $50ee: $00
    rst $38                                       ; $50ef: $ff
    nop                                           ; $50f0: $00
    rst $38                                       ; $50f1: $ff
    nop                                           ; $50f2: $00
    rst $38                                       ; $50f3: $ff
    nop                                           ; $50f4: $00
    rst $38                                       ; $50f5: $ff
    nop                                           ; $50f6: $00
    rst $38                                       ; $50f7: $ff
    inc e                                         ; $50f8: $1c
    rst $38                                       ; $50f9: $ff
    ld a, $ff                                     ; $50fa: $3e $ff
    ld a, [hl]                                    ; $50fc: $7e
    rst $38                                       ; $50fd: $ff
    nop                                           ; $50fe: $00
    rst $38                                       ; $50ff: $ff
    nop                                           ; $5100: $00
    rst $38                                       ; $5101: $ff
    nop                                           ; $5102: $00
    rst $38                                       ; $5103: $ff
    nop                                           ; $5104: $00
    rst $38                                       ; $5105: $ff
    nop                                           ; $5106: $00
    rst $38                                       ; $5107: $ff
    jr c, @+$01                                   ; $5108: $38 $ff

    ld a, h                                       ; $510a: $7c
    rst $38                                       ; $510b: $ff
    ld a, [hl]                                    ; $510c: $7e
    rst $38                                       ; $510d: $ff
    nop                                           ; $510e: $00
    rst $38                                       ; $510f: $ff
    nop                                           ; $5110: $00
    rst $38                                       ; $5111: $ff
    nop                                           ; $5112: $00
    rst $38                                       ; $5113: $ff
    nop                                           ; $5114: $00
    rst $38                                       ; $5115: $ff
    ld bc, $01ff                                  ; $5116: $01 $ff $01
    rst $38                                       ; $5119: $ff
    inc bc                                        ; $511a: $03
    rst $38                                       ; $511b: $ff
    inc bc                                        ; $511c: $03
    rst $38                                       ; $511d: $ff
    ld bc, $01ff                                  ; $511e: $01 $ff $01
    rst $38                                       ; $5121: $ff
    ld bc, $c1ff                                  ; $5122: $01 $ff $c1
    rst $38                                       ; $5125: $ff
    pop af                                        ; $5126: $f1
    rst $38                                       ; $5127: $ff
    ei                                            ; $5128: $fb
    rst $38                                       ; $5129: $ff
    sbc a                                         ; $512a: $9f
    sbc a                                         ; $512b: $9f
    rrca                                          ; $512c: $0f
    rrca                                          ; $512d: $0f
    ret nz                                        ; $512e: $c0

    ret nz                                        ; $512f: $c0

    ret nz                                        ; $5130: $c0

    ret nz                                        ; $5131: $c0

    ret nz                                        ; $5132: $c0

    ret nz                                        ; $5133: $c0

    ret nz                                        ; $5134: $c0

    ret nz                                        ; $5135: $c0

    ret nz                                        ; $5136: $c0

    ret nz                                        ; $5137: $c0

    ret nz                                        ; $5138: $c0

    ret nz                                        ; $5139: $c0

    add b                                         ; $513a: $80
    add b                                         ; $513b: $80
    nop                                           ; $513c: $00
    nop                                           ; $513d: $00
    inc sp                                        ; $513e: $33
    ccf                                           ; $513f: $3f
    scf                                           ; $5140: $37
    ccf                                           ; $5141: $3f
    ccf                                           ; $5142: $3f
    ccf                                           ; $5143: $3f
    dec e                                         ; $5144: $1d
    dec e                                         ; $5145: $1d
    nop                                           ; $5146: $00
    nop                                           ; $5147: $00
    nop                                           ; $5148: $00
    nop                                           ; $5149: $00
    nop                                           ; $514a: $00
    nop                                           ; $514b: $00
    nop                                           ; $514c: $00
    nop                                           ; $514d: $00
    nop                                           ; $514e: $00
    rst $38                                       ; $514f: $ff
    add b                                         ; $5150: $80
    rst $38                                       ; $5151: $ff
    add c                                         ; $5152: $81
    rst $38                                       ; $5153: $ff
    jp $c7ff                                      ; $5154: $c3 $ff $c7


    rst $38                                       ; $5157: $ff
    rst $28                                       ; $5158: $ef
    rst $38                                       ; $5159: $ff
    ld a, l                                       ; $515a: $7d
    ld a, l                                       ; $515b: $7d
    add hl, sp                                    ; $515c: $39
    add hl, sp                                    ; $515d: $39
    nop                                           ; $515e: $00
    rst $38                                       ; $515f: $ff
    nop                                           ; $5160: $00
    rst $38                                       ; $5161: $ff
    add c                                         ; $5162: $81
    rst $38                                       ; $5163: $ff
    jp $c3ff                                      ; $5164: $c3 $ff $c3


    rst $38                                       ; $5167: $ff
    rst $20                                       ; $5168: $e7
    rst $38                                       ; $5169: $ff
    ld a, [hl]                                    ; $516a: $7e
    rst $38                                       ; $516b: $ff
    ld a, [hl]                                    ; $516c: $7e
    rst $38                                       ; $516d: $ff
    nop                                           ; $516e: $00
    rst $38                                       ; $516f: $ff
    ld bc, $81ff                                  ; $5170: $01 $ff $81
    rst $38                                       ; $5173: $ff
    jp $e3ff                                      ; $5174: $c3 $ff $e3


    rst $38                                       ; $5177: $ff
    rst $30                                       ; $5178: $f7
    rst $38                                       ; $5179: $ff
    cp [hl]                                       ; $517a: $be
    cp [hl]                                       ; $517b: $be
    sbc h                                         ; $517c: $9c
    sbc h                                         ; $517d: $9c
    call z, $ecfc                                 ; $517e: $cc $fc $ec
    db $fc                                        ; $5181: $fc
    db $fc                                        ; $5182: $fc
    db $fc                                        ; $5183: $fc
    cp b                                          ; $5184: $b8
    cp b                                          ; $5185: $b8
    nop                                           ; $5186: $00
    nop                                           ; $5187: $00
    nop                                           ; $5188: $00
    nop                                           ; $5189: $00
    nop                                           ; $518a: $00
    nop                                           ; $518b: $00
    nop                                           ; $518c: $00
    nop                                           ; $518d: $00
    ldh [rIE], a                                  ; $518e: $e0 $ff
    ldh [rIE], a                                  ; $5190: $e0 $ff
    ld [hl], c                                    ; $5192: $71
    ld a, a                                       ; $5193: $7f
    ld [hl], e                                    ; $5194: $73
    ld a, a                                       ; $5195: $7f
    ccf                                           ; $5196: $3f
    ccf                                           ; $5197: $3f
    ld a, $3e                                     ; $5198: $3e $3e
    inc e                                         ; $519a: $1c
    inc e                                         ; $519b: $1c
    nop                                           ; $519c: $00
    nop                                           ; $519d: $00
    rst $38                                       ; $519e: $ff
    rst $38                                       ; $519f: $ff
    rst $28                                       ; $51a0: $ef
    rst $28                                       ; $51a1: $ef
    rst $08                                       ; $51a2: $cf
    rst $08                                       ; $51a3: $cf
    adc [hl]                                      ; $51a4: $8e
    adc a                                         ; $51a5: $8f
    dec c                                         ; $51a6: $0d
    rrca                                          ; $51a7: $0f
    dec c                                         ; $51a8: $0d
    rrca                                          ; $51a9: $0f
    ld c, $0f                                     ; $51aa: $0e $0f
    ld c, $0f                                     ; $51ac: $0e $0f
    nop                                           ; $51ae: $00
    rst $38                                       ; $51af: $ff
    add c                                         ; $51b0: $81
    rst $38                                       ; $51b1: $ff
    add c                                         ; $51b2: $81
    rst $38                                       ; $51b3: $ff
    jp $c3ff                                      ; $51b4: $c3 $ff $c3


    rst $38                                       ; $51b7: $ff
    ld h, [hl]                                    ; $51b8: $66
    rst $38                                       ; $51b9: $ff
    rst $38                                       ; $51ba: $ff
    rst $38                                       ; $51bb: $ff
    cp l                                          ; $51bc: $bd
    rst $38                                       ; $51bd: $ff
    rst $38                                       ; $51be: $ff
    rst $38                                       ; $51bf: $ff
    rst $20                                       ; $51c0: $e7
    rst $20                                       ; $51c1: $e7
    db $e3                                        ; $51c2: $e3
    db $e3                                        ; $51c3: $e3
    ld h, c                                       ; $51c4: $61
    pop hl                                        ; $51c5: $e1
    ldh [$e0], a                                  ; $51c6: $e0 $e0
    ldh [$e0], a                                  ; $51c8: $e0 $e0
    ld h, b                                       ; $51ca: $60
    ldh [$60], a                                  ; $51cb: $e0 $60
    ldh [rTAC], a                                 ; $51cd: $e0 $07
    rst $38                                       ; $51cf: $ff
    rlca                                          ; $51d0: $07
    rst $38                                       ; $51d1: $ff
    adc [hl]                                      ; $51d2: $8e
    cp $ce                                        ; $51d3: $fe $ce
    cp $fc                                        ; $51d5: $fe $fc
    db $fc                                        ; $51d7: $fc
    ld a, h                                       ; $51d8: $7c
    ld a, h                                       ; $51d9: $7c
    jr c, jr_04f_5214                             ; $51da: $38 $38

    nop                                           ; $51dc: $00
    nop                                           ; $51dd: $00
    jr jr_04f_51f8                                ; $51de: $18 $18

    inc h                                         ; $51e0: $24
    inc a                                         ; $51e1: $3c
    ld b, d                                       ; $51e2: $42
    ld a, [hl]                                    ; $51e3: $7e
    ld e, d                                       ; $51e4: $5a
    ld h, [hl]                                    ; $51e5: $66
    and l                                         ; $51e6: $a5
    db $db                                        ; $51e7: $db
    add c                                         ; $51e8: $81
    rst $38                                       ; $51e9: $ff
    db $db                                        ; $51ea: $db
    rst $38                                       ; $51eb: $ff
    and l                                         ; $51ec: $a5
    rst $38                                       ; $51ed: $ff
    ld bc, $0101                                  ; $51ee: $01 $01 $01
    ld bc, $0101                                  ; $51f1: $01 $01 $01
    ld [bc], a                                    ; $51f4: $02
    inc bc                                        ; $51f5: $03
    ld [bc], a                                    ; $51f6: $02
    inc bc                                        ; $51f7: $03

jr_04f_51f8:
    ld [bc], a                                    ; $51f8: $02
    inc bc                                        ; $51f9: $03
    ld [bc], a                                    ; $51fa: $02
    inc bc                                        ; $51fb: $03
    ld bc, $0001                                  ; $51fc: $01 $01 $00
    rst $38                                       ; $51ff: $ff
    inc h                                         ; $5200: $24
    rst $38                                       ; $5201: $ff
    nop                                           ; $5202: $00
    rst $38                                       ; $5203: $ff
    and l                                         ; $5204: $a5
    ld e, d                                       ; $5205: $5a
    ld e, d                                       ; $5206: $5a
    and l                                         ; $5207: $a5
    nop                                           ; $5208: $00
    rst $38                                       ; $5209: $ff
    and l                                         ; $520a: $a5
    rst $38                                       ; $520b: $ff
    ld e, d                                       ; $520c: $5a
    rst $38                                       ; $520d: $ff
    add b                                         ; $520e: $80
    add b                                         ; $520f: $80
    add b                                         ; $5210: $80
    add b                                         ; $5211: $80
    add b                                         ; $5212: $80
    add b                                         ; $5213: $80

jr_04f_5214:
    ld b, b                                       ; $5214: $40
    ret nz                                        ; $5215: $c0

    ld b, b                                       ; $5216: $40
    ret nz                                        ; $5217: $c0

    ld b, b                                       ; $5218: $40
    ret nz                                        ; $5219: $c0

    ld b, b                                       ; $521a: $40
    ret nz                                        ; $521b: $c0

    add b                                         ; $521c: $80
    add b                                         ; $521d: $80
    nop                                           ; $521e: $00
    ld bc, $0302                                  ; $521f: $01 $02 $03
    ld [bc], a                                    ; $5222: $02
    inc bc                                        ; $5223: $03
    ld [bc], a                                    ; $5224: $02
    inc bc                                        ; $5225: $03
    inc bc                                        ; $5226: $03
    ld [bc], a                                    ; $5227: $02
    ld [bc], a                                    ; $5228: $02
    inc bc                                        ; $5229: $03
    ld bc, $0001                                  ; $522a: $01 $01 $00
    nop                                           ; $522d: $00
    nop                                           ; $522e: $00
    rst $38                                       ; $522f: $ff
    nop                                           ; $5230: $00
    rst $38                                       ; $5231: $ff
    nop                                           ; $5232: $00
    rst $38                                       ; $5233: $ff
    and l                                         ; $5234: $a5
    ld e, d                                       ; $5235: $5a
    ld e, d                                       ; $5236: $5a
    and l                                         ; $5237: $a5
    and l                                         ; $5238: $a5
    rst $38                                       ; $5239: $ff
    and l                                         ; $523a: $a5
    rst $38                                       ; $523b: $ff
    ld a, d                                       ; $523c: $7a
    ld a, d                                       ; $523d: $7a
    nop                                           ; $523e: $00
    add b                                         ; $523f: $80
    ld b, b                                       ; $5240: $40
    ret nz                                        ; $5241: $c0

    ld b, b                                       ; $5242: $40
    ret nz                                        ; $5243: $c0

    ld b, b                                       ; $5244: $40
    ret nz                                        ; $5245: $c0

    ret nz                                        ; $5246: $c0

    ld b, b                                       ; $5247: $40
    ld b, b                                       ; $5248: $40
    ret nz                                        ; $5249: $c0

    add b                                         ; $524a: $80
    add b                                         ; $524b: $80
    nop                                           ; $524c: $00
    nop                                           ; $524d: $00
    nop                                           ; $524e: $00
    ld sp, hl                                     ; $524f: $f9
    nop                                           ; $5250: $00
    ld a, [$fcfb]                                 ; $5251: $fa $fb $fc
    db $fd                                        ; $5254: $fd
    cp $ff                                        ; $5255: $fe $ff
    ld bc, $0302                                  ; $5257: $01 $02 $03
    rrca                                          ; $525a: $0f
    db $10                                        ; $525b: $10
    ld de, $1817                                  ; $525c: $11 $17 $18
    add hl, de                                    ; $525f: $19
    inc e                                         ; $5260: $1c
    dec e                                         ; $5261: $1d
    ld e, $21                                     ; $5262: $1e $21
    ld [hl+], a                                   ; $5264: $22
    inc hl                                        ; $5265: $23
    dec l                                         ; $5266: $2d
    ld l, $2f                                     ; $5267: $2e $2f
    nop                                           ; $5269: $00
    and [hl]                                      ; $526a: $a6
    and a                                         ; $526b: $a7
    xor b                                         ; $526c: $a8
    nop                                           ; $526d: $00
    or d                                          ; $526e: $b2
    or e                                          ; $526f: $b3
    or h                                          ; $5270: $b4
    or l                                          ; $5271: $b5
    or [hl]                                       ; $5272: $b6
    cp l                                          ; $5273: $bd
    cp [hl]                                       ; $5274: $be
    inc d                                         ; $5275: $14
    cp a                                          ; $5276: $bf
    ret nz                                        ; $5277: $c0

    ret z                                         ; $5278: $c8

    ret                                           ; $5279: $c9


    jp z, $cccb                                   ; $527a: $ca $cb $cc

    pop de                                        ; $527d: $d1
    jp nc, $d4d3                                  ; $527e: $d2 $d3 $d4

    push de                                       ; $5281: $d5
    jp c, $1414                                   ; $5282: $da $14 $14

    inc d                                         ; $5285: $14
    db $db                                        ; $5286: $db
    push hl                                       ; $5287: $e5
    ret                                           ; $5288: $c9


    jp z, $e6cb                                   ; $5289: $ca $cb $e6

    rst $28                                       ; $528c: $ef
    ldh a, [$f1]                                  ; $528d: $f0 $f1
    ld a, [c]                                     ; $528f: $f2
    di                                            ; $5290: $f3
    ld c, d                                       ; $5291: $4a
    ld c, e                                       ; $5292: $4b
    ld c, h                                       ; $5293: $4c
    inc d                                         ; $5294: $14
    ld c, h                                       ; $5295: $4c
    ld c, l                                       ; $5296: $4d
    ld c, [hl]                                    ; $5297: $4e
    ld d, a                                       ; $5298: $57
    ld e, b                                       ; $5299: $58
    ld e, c                                       ; $529a: $59
    jr z, @+$5c                                   ; $529b: $28 $5a

    ld e, e                                       ; $529d: $5b
    ld e, h                                       ; $529e: $5c
    ld h, [hl]                                    ; $529f: $66
    ld h, a                                       ; $52a0: $67
    ld l, b                                       ; $52a1: $68
    ld l, c                                       ; $52a2: $69
    ld l, d                                       ; $52a3: $6a
    ld l, e                                       ; $52a4: $6b
    ld l, h                                       ; $52a5: $6c
    ld l, a                                       ; $52a6: $6f
    ld [hl], b                                    ; $52a7: $70
    ld [hl], c                                    ; $52a8: $71
    ld [hl], d                                    ; $52a9: $72
    ld [hl], e                                    ; $52aa: $73
    ld [hl], h                                    ; $52ab: $74
    ld [hl], l                                    ; $52ac: $75
    ld a, b                                       ; $52ad: $78
    inc d                                         ; $52ae: $14
    inc d                                         ; $52af: $14
    inc d                                         ; $52b0: $14
    inc d                                         ; $52b1: $14
    inc d                                         ; $52b2: $14
    ld a, c                                       ; $52b3: $79
    add c                                         ; $52b4: $81
    ld e, b                                       ; $52b5: $58
    ld e, c                                       ; $52b6: $59
    jr z, jr_04f_5313                             ; $52b7: $28 $5a

    ld e, e                                       ; $52b9: $5b
    add d                                         ; $52ba: $82
    adc e                                         ; $52bb: $8b
    ld h, a                                       ; $52bc: $67
    adc h                                         ; $52bd: $8c
    adc l                                         ; $52be: $8d
    adc [hl]                                      ; $52bf: $8e
    ld l, e                                       ; $52c0: $6b
    adc a                                         ; $52c1: $8f
    sbc b                                         ; $52c2: $98
    sbc c                                         ; $52c3: $99
    sbc d                                         ; $52c4: $9a
    sbc e                                         ; $52c5: $9b
    sbc h                                         ; $52c6: $9c
    sbc l                                         ; $52c7: $9d
    sbc [hl]                                      ; $52c8: $9e
    xor c                                         ; $52c9: $a9

Jump_04f_52ca:
    xor d                                         ; $52ca: $aa
    xor e                                         ; $52cb: $ab
    xor h                                         ; $52cc: $ac
    xor l                                         ; $52cd: $ad
    xor [hl]                                      ; $52ce: $ae
    xor a                                         ; $52cf: $af
    or b                                          ; $52d0: $b0
    or c                                          ; $52d1: $b1
    or a                                          ; $52d2: $b7
    cp b                                          ; $52d3: $b8
    inc d                                         ; $52d4: $14
    cp c                                          ; $52d5: $b9
    inc d                                         ; $52d6: $14
    cp d                                          ; $52d7: $ba
    inc d                                         ; $52d8: $14
    cp e                                          ; $52d9: $bb
    cp h                                          ; $52da: $bc
    nop                                           ; $52db: $00
    pop bc                                        ; $52dc: $c1
    jp nz, $c4c3                                  ; $52dd: $c2 $c3 $c4

    push bc                                       ; $52e0: $c5
    add $c7                                       ; $52e1: $c6 $c7
    nop                                           ; $52e3: $00
    call $14ce                                    ; $52e4: $cd $ce $14
    inc d                                         ; $52e7: $14
    inc d                                         ; $52e8: $14
    inc d                                         ; $52e9: $14
    inc d                                         ; $52ea: $14
    rst $08                                       ; $52eb: $cf
    ret nc                                        ; $52ec: $d0

    sub $d7                                       ; $52ed: $d6 $d7
    inc d                                         ; $52ef: $14
    inc d                                         ; $52f0: $14
    inc d                                         ; $52f1: $14
    inc d                                         ; $52f2: $14
    inc d                                         ; $52f3: $14
    ret c                                         ; $52f4: $d8

    reti                                          ; $52f5: $d9


    call c, $dedd                                 ; $52f6: $dc $dd $de
    rst $18                                       ; $52f9: $df
    ldh [$e1], a                                  ; $52fa: $e0 $e1
    ld [c], a                                     ; $52fc: $e2
    db $e3                                        ; $52fd: $e3
    db $e4                                        ; $52fe: $e4
    rst $20                                       ; $52ff: $e7
    add sp, -$17                                  ; $5300: $e8 $e9
    ld [$eb14], a                                 ; $5302: $ea $14 $eb
    db $ec                                        ; $5305: $ec
    db $ed                                        ; $5306: $ed
    xor $00                                       ; $5307: $ee $00
    nop                                           ; $5309: $00
    db $f4                                        ; $530a: $f4
    push af                                       ; $530b: $f5
    or $f7                                        ; $530c: $f6 $f7
    ld hl, sp+$00                                 ; $530e: $f8 $00
    nop                                           ; $5310: $00
    ld c, a                                       ; $5311: $4f
    ld d, b                                       ; $5312: $50

jr_04f_5313:
    ld d, c                                       ; $5313: $51
    ld d, d                                       ; $5314: $52
    inc d                                         ; $5315: $14
    ld d, e                                       ; $5316: $53
    ld d, h                                       ; $5317: $54
    ld d, l                                       ; $5318: $55
    ld d, [hl]                                    ; $5319: $56
    ld e, l                                       ; $531a: $5d
    ld e, [hl]                                    ; $531b: $5e
    ld e, a                                       ; $531c: $5f
    ld h, b                                       ; $531d: $60
    ld h, c                                       ; $531e: $61
    ld h, d                                       ; $531f: $62
    ld h, e                                       ; $5320: $63
    ld h, h                                       ; $5321: $64
    ld h, l                                       ; $5322: $65
    ld l, l                                       ; $5323: $6d
    inc d                                         ; $5324: $14
    inc d                                         ; $5325: $14
    inc d                                         ; $5326: $14
    inc d                                         ; $5327: $14
    inc d                                         ; $5328: $14
    inc d                                         ; $5329: $14
    inc d                                         ; $532a: $14
    ld l, [hl]                                    ; $532b: $6e
    halt                                          ; $532c: $76
    inc d                                         ; $532d: $14
    inc d                                         ; $532e: $14
    inc d                                         ; $532f: $14
    inc d                                         ; $5330: $14
    inc d                                         ; $5331: $14
    inc d                                         ; $5332: $14
    inc d                                         ; $5333: $14
    ld [hl], a                                    ; $5334: $77
    ld a, d                                       ; $5335: $7a
    ld a, e                                       ; $5336: $7b
    jr z, jr_04f_53b5                             ; $5337: $28 $7c

    ld a, l                                       ; $5339: $7d
    ld a, [hl]                                    ; $533a: $7e
    jr z, @+$81                                   ; $533b: $28 $7f

    add b                                         ; $533d: $80
    add e                                         ; $533e: $83
    add h                                         ; $533f: $84
    add l                                         ; $5340: $85
    add [hl]                                      ; $5341: $86
    add a                                         ; $5342: $87
    add [hl]                                      ; $5343: $86
    adc b                                         ; $5344: $88
    adc c                                         ; $5345: $89
    adc d                                         ; $5346: $8a
    sub b                                         ; $5347: $90
    sub c                                         ; $5348: $91
    sub d                                         ; $5349: $92
    sub e                                         ; $534a: $93
    inc d                                         ; $534b: $14
    sub h                                         ; $534c: $94
    sub l                                         ; $534d: $95
    sub [hl]                                      ; $534e: $96
    sub a                                         ; $534f: $97
    nop                                           ; $5350: $00
    sbc a                                         ; $5351: $9f
    and b                                         ; $5352: $a0
    and c                                         ; $5353: $a1
    and d                                         ; $5354: $a2
    and e                                         ; $5355: $a3
    and h                                         ; $5356: $a4
    and l                                         ; $5357: $a5
    nop                                           ; $5358: $00
    inc b                                         ; $5359: $04
    dec b                                         ; $535a: $05
    ld b, $07                                     ; $535b: $06 $07
    ld [$0a09], sp                                ; $535d: $08 $09 $0a
    dec bc                                        ; $5360: $0b
    inc c                                         ; $5361: $0c
    dec c                                         ; $5362: $0d
    ld c, $12                                     ; $5363: $0e $12
    inc de                                        ; $5365: $13
    inc d                                         ; $5366: $14
    inc d                                         ; $5367: $14
    inc d                                         ; $5368: $14
    inc d                                         ; $5369: $14
    inc d                                         ; $536a: $14
    inc d                                         ; $536b: $14
    inc d                                         ; $536c: $14
    dec d                                         ; $536d: $15
    ld d, $1a                                     ; $536e: $16 $1a
    inc d                                         ; $5370: $14
    inc d                                         ; $5371: $14
    inc d                                         ; $5372: $14
    inc d                                         ; $5373: $14
    inc d                                         ; $5374: $14
    inc d                                         ; $5375: $14
    inc d                                         ; $5376: $14
    inc d                                         ; $5377: $14
    inc d                                         ; $5378: $14
    dec de                                        ; $5379: $1b
    rra                                           ; $537a: $1f
    inc d                                         ; $537b: $14
    inc d                                         ; $537c: $14
    inc d                                         ; $537d: $14
    inc d                                         ; $537e: $14
    inc d                                         ; $537f: $14
    inc d                                         ; $5380: $14
    inc d                                         ; $5381: $14
    inc d                                         ; $5382: $14
    inc d                                         ; $5383: $14
    jr nz, jr_04f_53a5                            ; $5384: $20 $1f

    inc h                                         ; $5386: $24
    dec h                                         ; $5387: $25
    ld h, $27                                     ; $5388: $26 $27
    jr z, jr_04f_53b5                             ; $538a: $28 $29

    ld a, [hl+]                                   ; $538c: $2a
    dec hl                                        ; $538d: $2b
    inc l                                         ; $538e: $2c
    jr nz, jr_04f_53b0                            ; $538f: $20 $1f

    jr nc, jr_04f_53c4                            ; $5391: $30 $31

    ld [hl-], a                                   ; $5393: $32
    inc sp                                        ; $5394: $33
    inc [hl]                                      ; $5395: $34
    dec [hl]                                      ; $5396: $35
    ld [hl], $37                                  ; $5397: $36 $37
    jr c, jr_04f_53bb                             ; $5399: $38 $20

    add hl, sp                                    ; $539b: $39
    ld a, [hl-]                                   ; $539c: $3a
    dec sp                                        ; $539d: $3b
    inc a                                         ; $539e: $3c
    dec a                                         ; $539f: $3d
    inc d                                         ; $53a0: $14
    ld a, $3f                                     ; $53a1: $3e $3f
    ld b, b                                       ; $53a3: $40
    ld b, c                                       ; $53a4: $41

jr_04f_53a5:
    ld b, d                                       ; $53a5: $42
    nop                                           ; $53a6: $00
    nop                                           ; $53a7: $00
    ld b, e                                       ; $53a8: $43
    ld b, h                                       ; $53a9: $44
    ld b, l                                       ; $53aa: $45
    ld b, [hl]                                    ; $53ab: $46
    ld b, a                                       ; $53ac: $47
    ld c, b                                       ; $53ad: $48
    ld c, c                                       ; $53ae: $49
    nop                                           ; $53af: $00

jr_04f_53b0:
    nop                                           ; $53b0: $00

jr_04f_53b1:
    inc b                                         ; $53b1: $04
    dec b                                         ; $53b2: $05
    ld b, $07                                     ; $53b3: $06 $07

jr_04f_53b5:
    ld [$0a09], sp                                ; $53b5: $08 $09 $0a
    dec bc                                        ; $53b8: $0b
    inc c                                         ; $53b9: $0c
    dec c                                         ; $53ba: $0d

jr_04f_53bb:
    ld c, $12                                     ; $53bb: $0e $12
    inc de                                        ; $53bd: $13
    inc d                                         ; $53be: $14
    inc d                                         ; $53bf: $14

jr_04f_53c0:
    inc d                                         ; $53c0: $14
    inc d                                         ; $53c1: $14
    inc d                                         ; $53c2: $14
    inc d                                         ; $53c3: $14

jr_04f_53c4:
    inc d                                         ; $53c4: $14
    dec d                                         ; $53c5: $15
    ld d, $1a                                     ; $53c6: $16 $1a
    inc d                                         ; $53c8: $14
    inc d                                         ; $53c9: $14
    inc d                                         ; $53ca: $14
    inc d                                         ; $53cb: $14
    inc d                                         ; $53cc: $14
    inc d                                         ; $53cd: $14
    inc d                                         ; $53ce: $14
    inc d                                         ; $53cf: $14

jr_04f_53d0:
    inc d                                         ; $53d0: $14
    dec de                                        ; $53d1: $1b
    rra                                           ; $53d2: $1f
    inc d                                         ; $53d3: $14
    inc d                                         ; $53d4: $14
    inc d                                         ; $53d5: $14
    inc d                                         ; $53d6: $14
    inc d                                         ; $53d7: $14
    inc d                                         ; $53d8: $14
    inc d                                         ; $53d9: $14
    inc d                                         ; $53da: $14
    inc d                                         ; $53db: $14
    jr nz, jr_04f_53fd                            ; $53dc: $20 $1f

    inc h                                         ; $53de: $24
    dec h                                         ; $53df: $25
    ld h, $27                                     ; $53e0: $26 $27
    jr z, jr_04f_540d                             ; $53e2: $28 $29

    ld a, [hl+]                                   ; $53e4: $2a
    dec hl                                        ; $53e5: $2b
    inc l                                         ; $53e6: $2c
    jr nz, jr_04f_5408                            ; $53e7: $20 $1f

    jr nc, @+$33                                  ; $53e9: $30 $31

    ld [hl-], a                                   ; $53eb: $32
    inc sp                                        ; $53ec: $33
    inc [hl]                                      ; $53ed: $34
    dec [hl]                                      ; $53ee: $35
    ld [hl], $37                                  ; $53ef: $36 $37
    jr c, jr_04f_5413                             ; $53f1: $38 $20

    add hl, sp                                    ; $53f3: $39
    ld a, [hl-]                                   ; $53f4: $3a
    dec sp                                        ; $53f5: $3b
    inc a                                         ; $53f6: $3c
    dec a                                         ; $53f7: $3d
    inc d                                         ; $53f8: $14

jr_04f_53f9:
    ld a, $3f                                     ; $53f9: $3e $3f
    ld b, b                                       ; $53fb: $40
    ld b, c                                       ; $53fc: $41

jr_04f_53fd:
    ld b, d                                       ; $53fd: $42
    nop                                           ; $53fe: $00
    nop                                           ; $53ff: $00
    ld b, e                                       ; $5400: $43
    ld b, h                                       ; $5401: $44
    ld b, l                                       ; $5402: $45
    ld b, [hl]                                    ; $5403: $46
    ld b, a                                       ; $5404: $47
    ld c, b                                       ; $5405: $48
    ld c, c                                       ; $5406: $49
    nop                                           ; $5407: $00

jr_04f_5408:
    nop                                           ; $5408: $00
    nop                                           ; $5409: $00
    nop                                           ; $540a: $00
    nop                                           ; $540b: $00
    nop                                           ; $540c: $00

jr_04f_540d:
    nop                                           ; $540d: $00
    nop                                           ; $540e: $00
    nop                                           ; $540f: $00
    xor c                                         ; $5410: $a9
    nop                                           ; $5411: $00
    rst $38                                       ; $5412: $ff

jr_04f_5413:
    rst $38                                       ; $5413: $ff
    db $eb                                        ; $5414: $eb
    ld [$fc55], a                                 ; $5415: $ea $55 $fc
    xor $88                                       ; $5418: $ee $88
    db $ec                                        ; $541a: $ec
    ldh [rNR43], a                                ; $541b: $e0 $22
    xor $f8                                       ; $541d: $ee $f8
    add sp, -$56                                  ; $541f: $e8 $aa
    nop                                           ; $5421: $00
    rst $38                                       ; $5422: $ff
    db $fc                                        ; $5423: $fc
    ldh [rSTAT], a                                ; $5424: $e0 $41
    jr z, jr_04f_53d0                             ; $5426: $28 $a8

    rst $38                                       ; $5428: $ff
    ld b, [hl]                                    ; $5429: $46
    ld d, h                                       ; $542a: $54
    add d                                         ; $542b: $82
    jr z, jr_04f_53b1                             ; $542c: $28 $83

    ld e, h                                       ; $542e: $5c
    and d                                         ; $542f: $a2
    jr z, @+$01                                   ; $5430: $28 $ff

    inc bc                                        ; $5432: $03
    ld a, h                                       ; $5433: $7c
    add d                                         ; $5434: $82
    jr nz, jr_04f_53c0                            ; $5435: $20 $89

    ld e, h                                       ; $5437: $5c
    add d                                         ; $5438: $82
    jr z, @+$01                                   ; $5439: $28 $ff

    inc bc                                        ; $543b: $03
    ld [hl], h                                    ; $543c: $74
    add d                                         ; $543d: $82
    ld [$7c81], sp                                ; $543e: $08 $81 $7c
    ld [hl+], a                                   ; $5441: $22
    ld a, h                                       ; $5442: $7c
    rst $38                                       ; $5443: $ff
    ld [hl], c                                    ; $5444: $71
    db $dd                                        ; $5445: $dd
    db $dd                                        ; $5446: $dd
    adc a                                         ; $5447: $8f
    rst $38                                       ; $5448: $ff
    ld [bc], a                                    ; $5449: $02
    ld a, a                                       ; $544a: $7f
    ld h, b                                       ; $544b: $60
    rst $18                                       ; $544c: $df
    rst $38                                       ; $544d: $ff

jr_04f_544e:
    push de                                       ; $544e: $d5
    db $fd                                        ; $544f: $fd
    rst $38                                       ; $5450: $ff
    rst $38                                       ; $5451: $ff
    adc [hl]                                      ; $5452: $8e
    db $fd                                        ; $5453: $fd
    rra                                           ; $5454: $1f
    nop                                           ; $5455: $00
    ld sp, hl                                     ; $5456: $f9

Jump_04f_5457:
    ld a, a                                       ; $5457: $7f
    or b                                          ; $5458: $b0
    ldh [$fe], a                                  ; $5459: $e0 $fe
    pop hl                                        ; $545b: $e1
    xor d                                         ; $545c: $aa
    nop                                           ; $545d: $00
    ld [hl], a                                    ; $545e: $77
    nop                                           ; $545f: $00
    ld a, [hl+]                                   ; $5460: $2a
    and h                                         ; $5461: $a4
    add b                                         ; $5462: $80
    or $da                                        ; $5463: $f6 $da
    db $e3                                        ; $5465: $e3
    ld [hl], a                                    ; $5466: $77
    add b                                         ; $5467: $80
    and $78                                       ; $5468: $e6 $78
    push hl                                       ; $546a: $e5
    db $dd                                        ; $546b: $dd
    ld [$ffe2], a                                 ; $546c: $ea $e2 $ff
    ei                                            ; $546f: $fb
    nop                                           ; $5470: $00
    pop bc                                        ; $5471: $c1
    ld [hl], b                                    ; $5472: $70
    ldh [$74], a                                  ; $5473: $e0 $74
    add d                                         ; $5475: $82
    jr z, jr_04f_53f9                             ; $5476: $28 $81

    ld e, h                                       ; $5478: $5c
    rst $38                                       ; $5479: $ff
    ld [hl+], a                                   ; $547a: $22
    db $ec                                        ; $547b: $ec
    add b                                         ; $547c: $80
    db $fc                                        ; $547d: $fc
    jp c, $ff7f                                   ; $547e: $da $7f $ff

    dec h                                         ; $5481: $25
    rra                                           ; $5482: $1f
    ld [hl], a                                    ; $5483: $77
    add b                                         ; $5484: $80
    rst $38                                       ; $5485: $ff
    ret c                                         ; $5486: $d8

    rst $18                                       ; $5487: $df
    add b                                         ; $5488: $80
    rst $38                                       ; $5489: $ff
    add h                                         ; $548a: $84
    db $e3                                        ; $548b: $e3
    add b                                         ; $548c: $80
    push hl                                       ; $548d: $e5
    add sp, -$58                                  ; $548e: $e8 $a8
    pop hl                                        ; $5490: $e1

jr_04f_5491:
    nop                                           ; $5491: $00
    di                                            ; $5492: $f3
    ld e, h                                       ; $5493: $5c
    db $e3                                        ; $5494: $e3
    halt                                          ; $5495: $76
    add b                                         ; $5496: $80
    xor $d2                                       ; $5497: $ee $d2
    rrca                                          ; $5499: $0f
    ldh a, [rIE]                                  ; $549a: $f0 $ff
    rra                                           ; $549c: $1f
    ld h, h                                       ; $549d: $64
    ld a, [hl+]                                   ; $549e: $2a
    ret nz                                        ; $549f: $c0

    ld e, c                                       ; $54a0: $59
    nop                                           ; $54a1: $00
    ld [$ff00], a                                 ; $54a2: $ea $00 $ff
    rst $30                                       ; $54a5: $f7
    and b                                         ; $54a6: $a0
    adc d                                         ; $54a7: $8a
    and b                                         ; $54a8: $a0
    db $dd                                        ; $54a9: $dd
    jr nz, jr_04f_544e                            ; $54aa: $20 $a2

    ld [hl], b                                    ; $54ac: $70
    pop hl                                        ; $54ad: $e1
    push af                                       ; $54ae: $f5
    nop                                           ; $54af: $00
    rst $38                                       ; $54b0: $ff
    add b                                         ; $54b1: $80
    rst $38                                       ; $54b2: $ff
    add b                                         ; $54b3: $80
    db $dd                                        ; $54b4: $dd
    ld a, b                                       ; $54b5: $78
    push bc                                       ; $54b6: $c5
    xor l                                         ; $54b7: $ad
    ldh [rNR13], a                                ; $54b8: $e0 $13
    rst $38                                       ; $54ba: $ff
    ld a, b                                       ; $54bb: $78
    dec bc                                        ; $54bc: $0b
    xor h                                         ; $54bd: $ac
    dec b                                         ; $54be: $05
    sbc $42                                       ; $54bf: $de $42
    xor [hl]                                      ; $54c1: $ae
    inc bc                                        ; $54c2: $03
    rst $38                                       ; $54c3: $ff
    scf                                           ; $54c4: $37
    ld [bc], a                                    ; $54c5: $02
    xor e                                         ; $54c6: $ab
    ld bc, $02df                                  ; $54c7: $01 $df $02
    inc hl                                        ; $54ca: $23
    add c                                         ; $54cb: $81
    rst $20                                       ; $54cc: $e7
    rst $10                                       ; $54cd: $d7
    ret c                                         ; $54ce: $d8

    db $db                                        ; $54cf: $db
    nop                                           ; $54d0: $00
    rst $38                                       ; $54d1: $ff
    or $a5                                        ; $54d2: $f6 $a5
    ld hl, sp+$00                                 ; $54d4: $f8 $00
    cp $0e                                        ; $54d6: $fe $0e
    add b                                         ; $54d8: $80
    add $76                                       ; $54d9: $c6 $76
    nop                                           ; $54db: $00
    xor b                                         ; $54dc: $a8
    add b                                         ; $54dd: $80
    rst $38                                       ; $54de: $ff
    nop                                           ; $54df: $00
    rst $18                                       ; $54e0: $df
    nop                                           ; $54e1: $00
    rst $18                                       ; $54e2: $df
    add b                                         ; $54e3: $80
    cp a                                          ; $54e4: $bf
    ldh [$78], a                                  ; $54e5: $e0 $78
    and $e2                                       ; $54e7: $e6 $e2
    and e                                         ; $54e9: $a3
    adc b                                         ; $54ea: $88
    pop bc                                        ; $54eb: $c1
    nop                                           ; $54ec: $00
    di                                            ; $54ed: $f3
    add b                                         ; $54ee: $80
    call $a200                                    ; $54ef: $cd $00 $a2
    add b                                         ; $54f2: $80
    jp $d8d5                                      ; $54f3: $c3 $d5 $d8


    nop                                           ; $54f6: $00
    rst $18                                       ; $54f7: $df
    add b                                         ; $54f8: $80
    rst $38                                       ; $54f9: $ff
    add b                                         ; $54fa: $80
    or h                                          ; $54fb: $b4
    ld [$54e5], sp                                ; $54fc: $08 $e5 $54
    and d                                         ; $54ff: $a2
    cp $04                                        ; $5500: $fe $04
    ldh [$82], a                                  ; $5502: $e0 $82
    jr nz, jr_04f_5491                            ; $5504: $20 $8b

    xor h                                         ; $5506: $ac
    ld [c], a                                     ; $5507: $e2
    db $10                                        ; $5508: $10
    ld a, e                                       ; $5509: $7b
    rst $28                                       ; $550a: $ef
    ld [$04ae], sp                                ; $550b: $08 $ae $04
    rst $18                                       ; $550e: $df
    add b                                         ; $550f: $80
    push bc                                       ; $5510: $c5
    ld [hl+], a                                   ; $5511: $22
    inc hl                                        ; $5512: $23
    ld [hl], c                                    ; $5513: $71
    rst $20                                       ; $5514: $e7
    ld [hl], a                                    ; $5515: $77
    db $dd                                        ; $5516: $dd
    rst $18                                       ; $5517: $df
    nop                                           ; $5518: $00
    rst $38                                       ; $5519: $ff
    add b                                         ; $551a: $80
    ei                                            ; $551b: $fb
    rlca                                          ; $551c: $07
    nop                                           ; $551d: $00
    ld e, a                                       ; $551e: $5f
    ccf                                           ; $551f: $3f
    nop                                           ; $5520: $00
    rrca                                          ; $5521: $0f
    nop                                           ; $5522: $00
    ld d, a                                       ; $5523: $57
    nop                                           ; $5524: $00
    ld bc, $be80                                  ; $5525: $01 $80 $be
    ld [$1ea6], sp                                ; $5528: $08 $a6 $1e
    ld a, b                                       ; $552b: $78
    call nz, $027c                                ; $552c: $c4 $7c $02
    db $ec                                        ; $552f: $ec
    add c                                         ; $5530: $81
    nop                                           ; $5531: $00
    cp a                                          ; $5532: $bf
    nop                                           ; $5533: $00
    ei                                            ; $5534: $fb
    ld l, h                                       ; $5535: $6c
    and a                                         ; $5536: $a7
    db $fd                                        ; $5537: $fd
    ld d, l                                       ; $5538: $55
    nop                                           ; $5539: $00
    sub $52                                       ; $553a: $d6 $52
    rrca                                          ; $553c: $0f
    cp b                                          ; $553d: $b8
    rra                                           ; $553e: $1f
    db $e4                                        ; $553f: $e4
    ld a, [hl+]                                   ; $5540: $2a
    ei                                            ; $5541: $fb
    ret nz                                        ; $5542: $c0

    ld a, e                                       ; $5543: $7b
    ld [$80a5], sp                                ; $5544: $08 $a5 $80
    xor d                                         ; $5547: $aa
    nop                                           ; $5548: $00
    rst $30                                       ; $5549: $f7
    adc b                                         ; $554a: $88
    rst $00                                       ; $554b: $c7
    and d                                         ; $554c: $a2
    adc b                                         ; $554d: $88
    push de                                       ; $554e: $d5
    nop                                           ; $554f: $00
    cp a                                          ; $5550: $bf
    add b                                         ; $5551: $80
    rst $38                                       ; $5552: $ff
    add b                                         ; $5553: $80
    rst $38                                       ; $5554: $ff
    xor d                                         ; $5555: $aa
    nop                                           ; $5556: $00
    rst $38                                       ; $5557: $ff
    and l                                         ; $5558: $a5
    ldh [rNR30], a                                ; $5559: $e0 $1a
    ld hl, sp+$09                                 ; $555b: $f8 $09
    xor h                                         ; $555d: $ac
    ld b, $fe                                     ; $555e: $06 $fe
    cp $08                                        ; $5560: $fe $08
    and [hl]                                      ; $5562: $a6
    xor e                                         ; $5563: $ab
    inc bc                                        ; $5564: $03
    ld [hl], a                                    ; $5565: $77
    ld b, d                                       ; $5566: $42
    xor e                                         ; $5567: $ab
    ld bc, $fc9f                                  ; $5568: $01 $9f $fc
    nop                                           ; $556b: $00
    cp a                                          ; $556c: $bf
    add b                                         ; $556d: $80
    rst $38                                       ; $556e: $ff
    push de                                       ; $556f: $d5
    nop                                           ; $5570: $00
    ldh [rP1], a                                  ; $5571: $e0 $00
    push af                                       ; $5573: $f5
    nop                                           ; $5574: $00
    or c                                          ; $5575: $b1
    ldh a, [$fc]                                  ; $5576: $f0 $fc
    ldh [rP1], a                                  ; $5578: $e0 $00
    xor a                                         ; $557a: $af
    ld [$80e7], sp                                ; $557b: $08 $e7 $80
    rst $38                                       ; $557e: $ff
    db $10                                        ; $557f: $10
    add b                                         ; $5580: $80
    rst $18                                       ; $5581: $df
    nop                                           ; $5582: $00
    ld [$00e5], sp                                ; $5583: $08 $e5 $00
    pop hl                                        ; $5586: $e1
    nop                                           ; $5587: $00
    sbc a                                         ; $5588: $9f
    rst $38                                       ; $5589: $ff
    rst $38                                       ; $558a: $ff
    nop                                           ; $558b: $00
    or e                                          ; $558c: $b3
    ld [$7861], sp                                ; $558d: $08 $61 $78
    add e                                         ; $5590: $83
    ld [$05e8], sp                                ; $5591: $08 $e8 $05
    cp a                                          ; $5594: $bf
    inc c                                         ; $5595: $0c
    ldh [rIE], a                                  ; $5596: $e0 $ff
    ld [$00e6], sp                                ; $5598: $08 $e6 $00
    ldh [rP1], a                                  ; $559b: $e0 $00
    sbc a                                         ; $559d: $9f
    rst $38                                       ; $559e: $ff
    rst $38                                       ; $559f: $ff
    nop                                           ; $55a0: $00
    adc l                                         ; $55a1: $8d
    jr nz, jr_04f_55ac                            ; $55a2: $20 $08

    ld h, a                                       ; $55a4: $67
    add b                                         ; $55a5: $80
    ld [hl], e                                    ; $55a6: $73
    add b                                         ; $55a7: $80
    ld c, l                                       ; $55a8: $4d
    nop                                           ; $55a9: $00
    sbc l                                         ; $55aa: $9d
    db $10                                        ; $55ab: $10

jr_04f_55ac:
    ld c, c                                       ; $55ac: $49
    ld d, l                                       ; $55ad: $55
    db $10                                        ; $55ae: $10
    ld b, b                                       ; $55af: $40
    add b                                         ; $55b0: $80
    sbc a                                         ; $55b1: $9f
    nop                                           ; $55b2: $00
    nop                                           ; $55b3: $00
    ld a, e                                       ; $55b4: $7b
    nop                                           ; $55b5: $00
    cp a                                          ; $55b6: $bf
    sub b                                         ; $55b7: $90
    ld d, a                                       ; $55b8: $57
    inc [hl]                                      ; $55b9: $34
    ld h, c                                       ; $55ba: $61
    add b                                         ; $55bb: $80
    rst $38                                       ; $55bc: $ff
    add b                                         ; $55bd: $80
    add hl, hl                                    ; $55be: $29
    nop                                           ; $55bf: $00
    ld e, a                                       ; $55c0: $5f
    nop                                           ; $55c1: $00
    db $dd                                        ; $55c2: $dd
    ld [bc], a                                    ; $55c3: $02
    sub b                                         ; $55c4: $90
    ld c, c                                       ; $55c5: $49
    ld d, h                                       ; $55c6: $54
    sub b                                         ; $55c7: $90
    ld b, b                                       ; $55c8: $40
    add b                                         ; $55c9: $80
    rst $38                                       ; $55ca: $ff
    add b                                         ; $55cb: $80
    ld e, e                                       ; $55cc: $5b
    add b                                         ; $55cd: $80
    ld l, l                                       ; $55ce: $6d
    nop                                           ; $55cf: $00
    rst $18                                       ; $55d0: $df
    nop                                           ; $55d1: $00
    rst $18                                       ; $55d2: $df
    dec e                                         ; $55d3: $1d
    ld e, a                                       ; $55d4: $5f
    ld l, h                                       ; $55d5: $6c
    inc b                                         ; $55d6: $04
    ld a, a                                       ; $55d7: $7f
    nop                                           ; $55d8: $00
    dec d                                         ; $55d9: $15
    nop                                           ; $55da: $00
    ld c, [hl]                                    ; $55db: $4e
    nop                                           ; $55dc: $00
    ld l, l                                       ; $55dd: $6d
    ld [$b845], sp                                ; $55de: $08 $45 $b8
    nop                                           ; $55e1: $00
    ld b, e                                       ; $55e2: $43
    nop                                           ; $55e3: $00
    rst $18                                       ; $55e4: $df
    add b                                         ; $55e5: $80
    rst $38                                       ; $55e6: $ff
    nop                                           ; $55e7: $00
    nop                                           ; $55e8: $00
    db $fd                                        ; $55e9: $fd
    ld l, h                                       ; $55ea: $6c
    ld h, $50                                     ; $55eb: $26 $50
    ret nz                                        ; $55ed: $c0

    add b                                         ; $55ee: $80
    ld a, a                                       ; $55ef: $7f
    add b                                         ; $55f0: $80
    ld l, h                                       ; $55f1: $6c
    nop                                           ; $55f2: $00
    ld e, a                                       ; $55f3: $5f
    add b                                         ; $55f4: $80
    rst $38                                       ; $55f5: $ff
    nop                                           ; $55f6: $00
    ld e, c                                       ; $55f7: $59
    add b                                         ; $55f8: $80
    ld a, l                                       ; $55f9: $7d
    ld [hl+], a                                   ; $55fa: $22
    ld h, e                                       ; $55fb: $63
    ldh [rP1], a                                  ; $55fc: $e0 $00
    ld e, a                                       ; $55fe: $5f
    add b                                         ; $55ff: $80
    rst $38                                       ; $5600: $ff
    nop                                           ; $5601: $00
    rst $08                                       ; $5602: $cf
    nop                                           ; $5603: $00
    ld d, l                                       ; $5604: $55
    add b                                         ; $5605: $80
    add e                                         ; $5606: $83
    add e                                         ; $5607: $83
    inc e                                         ; $5608: $1c
    sbc c                                         ; $5609: $99
    dec c                                         ; $560a: $0d
    ld [bc], a                                    ; $560b: $02
    add b                                         ; $560c: $80
    inc b                                         ; $560d: $04
    ld [bc], a                                    ; $560e: $02
    db $e4                                        ; $560f: $e4
    nop                                           ; $5610: $00
    ld c, d                                       ; $5611: $4a
    nop                                           ; $5612: $00
    nop                                           ; $5613: $00
    nop                                           ; $5614: $00
    ld e, a                                       ; $5615: $5f
    ld h, c                                       ; $5616: $61
    rst $38                                       ; $5617: $ff
    ld a, a                                       ; $5618: $7f
    ret nz                                        ; $5619: $c0

    ld [bc], a                                    ; $561a: $02
    and b                                         ; $561b: $a0
    nop                                           ; $561c: $00
    ret nz                                        ; $561d: $c0

    ld [bc], a                                    ; $561e: $02
    ld [de], a                                    ; $561f: $12
    ld a, l                                       ; $5620: $7d
    ld a, [c]                                     ; $5621: $f2
    inc bc                                        ; $5622: $03
    and b                                         ; $5623: $a0
    nop                                           ; $5624: $00
    ret nz                                        ; $5625: $c0

    ld [bc], a                                    ; $5626: $02
    add sp, $03                                   ; $5627: $e8 $03
    inc e                                         ; $5629: $1c
    ld [hl+], a                                   ; $562a: $22
    and b                                         ; $562b: $a0
    nop                                           ; $562c: $00
    ret nz                                        ; $562d: $c0

    ld [bc], a                                    ; $562e: $02
    inc e                                         ; $562f: $1c
    ld [hl+], a                                   ; $5630: $22
    ld a, [c]                                     ; $5631: $f2
    inc bc                                        ; $5632: $03
    and b                                         ; $5633: $a0
    nop                                           ; $5634: $00
    ret nz                                        ; $5635: $c0

    ld [bc], a                                    ; $5636: $02
    ld a, [c]                                     ; $5637: $f2
    inc bc                                        ; $5638: $03
    add sp, $03                                   ; $5639: $e8 $03
    and b                                         ; $563b: $a0
    nop                                           ; $563c: $00
    ld [$0825], sp                                ; $563d: $08 $25 $08
    dec h                                         ; $5640: $25
    ld [$0825], sp                                ; $5641: $08 $25 $08
    dec h                                         ; $5644: $25
    jr jr_04f_5647                                ; $5645: $18 $00

jr_04f_5647:
    call Call_04f_5752                            ; $5647: $cd $52 $57
    call Call_04f_567d                            ; $564a: $cd $7d $56
    ld a, $01                                     ; $564d: $3e $01
    ldh [rVBK], a                                 ; $564f: $e0 $4f
    ld hl, $d000                                  ; $5651: $21 $00 $d0
    ld de, $9000                                  ; $5654: $11 $00 $90
    ld c, $80                                     ; $5657: $0e $80
    call Call_000_2096                            ; $5659: $cd $96 $20
    ld hl, $d800                                  ; $565c: $21 $00 $d8
    ld de, $8800                                  ; $565f: $11 $00 $88
    ld c, $20                                     ; $5662: $0e $20
    call Call_000_2096                            ; $5664: $cd $96 $20
    ld hl, $5410                                  ; $5667: $21 $10 $54
    ld de, $d000                                  ; $566a: $11 $00 $d0
    call Call_000_1f2f                            ; $566d: $cd $2f $1f
    call Call_04f_6089                            ; $5670: $cd $89 $60
    ld hl, $5615                                  ; $5673: $21 $15 $56
    ld de, $0205                                  ; $5676: $11 $05 $02
    call Call_000_0595                            ; $5679: $cd $95 $05
    ret                                           ; $567c: $c9


Call_04f_567d:
    ld hl, $da00                                  ; $567d: $21 $00 $da

jr_04f_5680:
    ld a, [hl+]                                   ; $5680: $2a
    cp $ff                                        ; $5681: $fe $ff
    jr z, jr_04f_56a6                             ; $5683: $28 $21

    ld e, a                                       ; $5685: $5f
    ld a, [hl+]                                   ; $5686: $2a
    ld d, a                                       ; $5687: $57
    ld a, [hl+]                                   ; $5688: $2a
    ld c, a                                       ; $5689: $4f
    ld a, e                                       ; $568a: $7b
    cp $03                                        ; $568b: $fe $03
    jr z, jr_04f_5693                             ; $568d: $28 $04

    cp $02                                        ; $568f: $fe $02
    jr nz, jr_04f_56a4                            ; $5691: $20 $11

jr_04f_5693:
    ld a, c                                       ; $5693: $79
    and a                                         ; $5694: $a7
    jr z, jr_04f_56a4                             ; $5695: $28 $0d

    ld a, c                                       ; $5697: $79
    rrca                                          ; $5698: $0f
    rrca                                          ; $5699: $0f
    rrca                                          ; $569a: $0f
    and $07                                       ; $569b: $e6 $07
    ld e, $00                                     ; $569d: $1e $00
    push hl                                       ; $569f: $e5
    call Call_04f_56a7                            ; $56a0: $cd $a7 $56
    pop hl                                        ; $56a3: $e1

jr_04f_56a4:
    jr jr_04f_5680                                ; $56a4: $18 $da

jr_04f_56a6:
    ret                                           ; $56a6: $c9


Call_04f_56a7:
    add a                                         ; $56a7: $87
    add a                                         ; $56a8: $87
    add a                                         ; $56a9: $87
    ld hl, $5712                                  ; $56aa: $21 $12 $57
    add l                                         ; $56ad: $85
    ld l, a                                       ; $56ae: $6f
    jr nc, jr_04f_56b2                            ; $56af: $30 $01

    inc h                                         ; $56b1: $24

jr_04f_56b2:
    ld a, [hl+]                                   ; $56b2: $2a
    add d                                         ; $56b3: $82
    ld d, a                                       ; $56b4: $57
    ld a, [hl+]                                   ; $56b5: $2a
    add e                                         ; $56b6: $83
    ld b, a                                       ; $56b7: $47
    ld a, [hl+]                                   ; $56b8: $2a
    ld e, a                                       ; $56b9: $5f
    ld a, [hl+]                                   ; $56ba: $2a
    ld a, [hl+]                                   ; $56bb: $2a
    ld h, [hl]                                    ; $56bc: $66
    ld l, a                                       ; $56bd: $6f

jr_04f_56be:
    push de                                       ; $56be: $d5

jr_04f_56bf:
    ld a, [hl]                                    ; $56bf: $7e
    and a                                         ; $56c0: $a7
    jr z, jr_04f_5702                             ; $56c1: $28 $3f

    bit 7, d                                      ; $56c3: $cb $7a
    jr nz, jr_04f_5702                            ; $56c5: $20 $3b

    ld a, d                                       ; $56c7: $7a
    cp $14                                        ; $56c8: $fe $14
    jr nc, jr_04f_5702                            ; $56ca: $30 $36

    push bc                                       ; $56cc: $c5
    push de                                       ; $56cd: $d5
    push hl                                       ; $56ce: $e5
    ld a, d                                       ; $56cf: $7a
    ld l, [hl]                                    ; $56d0: $6e
    ld h, $00                                     ; $56d1: $26 $00
    add hl, hl                                    ; $56d3: $29
    add hl, hl                                    ; $56d4: $29
    add hl, hl                                    ; $56d5: $29
    add hl, hl                                    ; $56d6: $29
    ld de, $4008                                  ; $56d7: $11 $08 $40
    add hl, de                                    ; $56da: $19
    ld e, l                                       ; $56db: $5d
    ld d, h                                       ; $56dc: $54
    add a                                         ; $56dd: $87
    add a                                         ; $56de: $87
    add a                                         ; $56df: $87
    add b                                         ; $56e0: $80
    ld l, a                                       ; $56e1: $6f
    ld h, $00                                     ; $56e2: $26 $00
    add hl, hl                                    ; $56e4: $29
    add hl, hl                                    ; $56e5: $29
    add hl, hl                                    ; $56e6: $29
    add hl, hl                                    ; $56e7: $29
    ld a, $00                                     ; $56e8: $3e $00
    add l                                         ; $56ea: $85
    ld l, a                                       ; $56eb: $6f
    ld a, h                                       ; $56ec: $7c
    adc $d0                                       ; $56ed: $ce $d0
    ld h, a                                       ; $56ef: $67
    ld a, c                                       ; $56f0: $79
    cp $08                                        ; $56f1: $fe $08
    jr c, jr_04f_56f7                             ; $56f3: $38 $02

    ld c, $08                                     ; $56f5: $0e $08

jr_04f_56f7:
    push bc                                       ; $56f7: $c5
    call Call_04f_615c                            ; $56f8: $cd $5c $61
    pop bc                                        ; $56fb: $c1
    dec c                                         ; $56fc: $0d
    jr nz, jr_04f_56f7                            ; $56fd: $20 $f8

    pop hl                                        ; $56ff: $e1
    pop de                                        ; $5700: $d1
    pop bc                                        ; $5701: $c1

jr_04f_5702:
    inc hl                                        ; $5702: $23
    inc d                                         ; $5703: $14
    dec e                                         ; $5704: $1d
    jr nz, jr_04f_56bf                            ; $5705: $20 $b8

    pop de                                        ; $5707: $d1
    inc b                                         ; $5708: $04
    ld a, c                                       ; $5709: $79
    sub $08                                       ; $570a: $d6 $08
    ld c, a                                       ; $570c: $4f
    jr z, jr_04f_5711                             ; $570d: $28 $02

    jr nc, jr_04f_56be                            ; $570f: $30 $ad

jr_04f_5711:
    ret                                           ; $5711: $c9


    nop                                           ; $5712: $00
    nop                                           ; $5713: $00
    ld bc, $e801                                  ; $5714: $01 $01 $e8
    ld b, c                                       ; $5717: $41
    nop                                           ; $5718: $00
    nop                                           ; $5719: $00
    nop                                           ; $571a: $00
    nop                                           ; $571b: $00
    ld bc, $e902                                  ; $571c: $01 $02 $e9
    ld b, c                                       ; $571f: $41
    nop                                           ; $5720: $00
    nop                                           ; $5721: $00
    rst $38                                       ; $5722: $ff
    nop                                           ; $5723: $00
    inc bc                                        ; $5724: $03
    inc bc                                        ; $5725: $03
    db $eb                                        ; $5726: $eb
    ld b, c                                       ; $5727: $41
    nop                                           ; $5728: $00
    nop                                           ; $5729: $00
    rst $38                                       ; $572a: $ff
    nop                                           ; $572b: $00
    inc bc                                        ; $572c: $03
    inc b                                         ; $572d: $04
    db $f4                                        ; $572e: $f4
    ld b, c                                       ; $572f: $41
    nop                                           ; $5730: $00
    nop                                           ; $5731: $00
    rst $38                                       ; $5732: $ff
    nop                                           ; $5733: $00
    inc bc                                        ; $5734: $03
    dec b                                         ; $5735: $05
    nop                                           ; $5736: $00
    ld b, d                                       ; $5737: $42
    nop                                           ; $5738: $00
    nop                                           ; $5739: $00
    rst $38                                       ; $573a: $ff
    nop                                           ; $573b: $00
    inc bc                                        ; $573c: $03
    ld b, $0f                                     ; $573d: $06 $0f
    ld b, d                                       ; $573f: $42
    nop                                           ; $5740: $00
    nop                                           ; $5741: $00
    rst $38                                       ; $5742: $ff
    nop                                           ; $5743: $00
    inc bc                                        ; $5744: $03
    rlca                                          ; $5745: $07
    ld hl, $0042                                  ; $5746: $21 $42 $00
    nop                                           ; $5749: $00
    rst $38                                       ; $574a: $ff
    nop                                           ; $574b: $00
    inc bc                                        ; $574c: $03
    ld [$4236], sp                                ; $574d: $08 $36 $42
    nop                                           ; $5750: $00
    nop                                           ; $5751: $00

Call_04f_5752:
    ld hl, $da00                                  ; $5752: $21 $00 $da

jr_04f_5755:
    ld a, [hl+]                                   ; $5755: $2a
    cp $ff                                        ; $5756: $fe $ff
    jr z, jr_04f_5778                             ; $5758: $28 $1e

    ld e, a                                       ; $575a: $5f
    ld a, [hl+]                                   ; $575b: $2a
    ld d, a                                       ; $575c: $57
    ld a, [hl+]                                   ; $575d: $2a
    ld b, a                                       ; $575e: $47
    ld a, e                                       ; $575f: $7b
    cp $01                                        ; $5760: $fe $01
    jr nz, jr_04f_5776                            ; $5762: $20 $12

    ld a, b                                       ; $5764: $78
    rrca                                          ; $5765: $0f
    rrca                                          ; $5766: $0f
    rrca                                          ; $5767: $0f
    and $07                                       ; $5768: $e6 $07
    jr z, jr_04f_5776                             ; $576a: $28 $0a

    cp $07                                        ; $576c: $fe $07
    jr z, jr_04f_5776                             ; $576e: $28 $06

    ld e, b                                       ; $5770: $58
    push hl                                       ; $5771: $e5
    call Call_04f_5789                            ; $5772: $cd $89 $57
    pop hl                                        ; $5775: $e1

jr_04f_5776:
    jr jr_04f_5755                                ; $5776: $18 $dd

jr_04f_5778:
    ld a, [$c3b7]                                 ; $5778: $fa $b7 $c3
    cp $0c                                        ; $577b: $fe $0c
    jr nz, jr_04f_5788                            ; $577d: $20 $09

    ld a, $07                                     ; $577f: $3e $07
    ld d, $0a                                     ; $5781: $16 $0a
    ld e, $3f                                     ; $5783: $1e $3f
    call Call_04f_5789                            ; $5785: $cd $89 $57

jr_04f_5788:
    ret                                           ; $5788: $c9


Call_04f_5789:
    add a                                         ; $5789: $87
    add a                                         ; $578a: $87
    add a                                         ; $578b: $87
    ld hl, $6049                                  ; $578c: $21 $49 $60
    add l                                         ; $578f: $85
    ld l, a                                       ; $5790: $6f
    jr nc, jr_04f_5794                            ; $5791: $30 $01

    inc h                                         ; $5793: $24

jr_04f_5794:
    ld a, [hl+]                                   ; $5794: $2a
    add d                                         ; $5795: $82
    ld d, a                                       ; $5796: $57
    ld a, [hl+]                                   ; $5797: $2a
    add e                                         ; $5798: $83
    ld b, a                                       ; $5799: $47
    ld a, [hl+]                                   ; $579a: $2a
    ld e, a                                       ; $579b: $5f
    ld a, [hl+]                                   ; $579c: $2a
    ld c, a                                       ; $579d: $4f
    ld a, [hl+]                                   ; $579e: $2a
    ld h, [hl]                                    ; $579f: $66
    ld l, a                                       ; $57a0: $6f

jr_04f_57a1:
    push de                                       ; $57a1: $d5

jr_04f_57a2:
    ld a, [hl]                                    ; $57a2: $7e
    and a                                         ; $57a3: $a7
    jr z, jr_04f_57ed                             ; $57a4: $28 $47

    bit 7, d                                      ; $57a6: $cb $7a
    jr nz, jr_04f_57ed                            ; $57a8: $20 $43

    ld a, d                                       ; $57aa: $7a
    cp $14                                        ; $57ab: $fe $14
    jr nc, jr_04f_57ed                            ; $57ad: $30 $3e

    push bc                                       ; $57af: $c5
    push de                                       ; $57b0: $d5
    push hl                                       ; $57b1: $e5
    ld c, d                                       ; $57b2: $4a
    ld l, [hl]                                    ; $57b3: $6e
    ld h, $00                                     ; $57b4: $26 $00
    add hl, hl                                    ; $57b6: $29
    add hl, hl                                    ; $57b7: $29
    add hl, hl                                    ; $57b8: $29
    add hl, hl                                    ; $57b9: $29
    ld de, $57fb                                  ; $57ba: $11 $fb $57
    add hl, de                                    ; $57bd: $19
    ld e, l                                       ; $57be: $5d
    ld d, h                                       ; $57bf: $54
    ld h, c                                       ; $57c0: $61
    ld l, $00                                     ; $57c1: $2e $00
    srl h                                         ; $57c3: $cb $3c
    rr l                                          ; $57c5: $cb $1d
    ld a, b                                       ; $57c7: $78
    add a                                         ; $57c8: $87
    add l                                         ; $57c9: $85
    ld l, a                                       ; $57ca: $6f
    jr nc, jr_04f_57ce                            ; $57cb: $30 $01

    inc h                                         ; $57cd: $24

jr_04f_57ce:
    ld bc, $d000                                  ; $57ce: $01 $00 $d0
    add hl, bc                                    ; $57d1: $09
    call Call_04f_615c                            ; $57d2: $cd $5c $61
    call Call_04f_615c                            ; $57d5: $cd $5c $61
    call Call_04f_615c                            ; $57d8: $cd $5c $61
    call Call_04f_615c                            ; $57db: $cd $5c $61
    call Call_04f_615c                            ; $57de: $cd $5c $61
    call Call_04f_615c                            ; $57e1: $cd $5c $61
    call Call_04f_615c                            ; $57e4: $cd $5c $61
    call Call_04f_615c                            ; $57e7: $cd $5c $61
    pop hl                                        ; $57ea: $e1
    pop de                                        ; $57eb: $d1
    pop bc                                        ; $57ec: $c1

jr_04f_57ed:
    inc hl                                        ; $57ed: $23
    inc d                                         ; $57ee: $14
    dec e                                         ; $57ef: $1d
    jr nz, jr_04f_57a2                            ; $57f0: $20 $b0

    pop de                                        ; $57f2: $d1
    ld a, b                                       ; $57f3: $78
    add $08                                       ; $57f4: $c6 $08
    ld b, a                                       ; $57f6: $47
    dec c                                         ; $57f7: $0d
    jr nz, jr_04f_57a1                            ; $57f8: $20 $a7

    ret                                           ; $57fa: $c9


    rst $38                                       ; $57fb: $ff
    nop                                           ; $57fc: $00
    rst $38                                       ; $57fd: $ff
    ld bc, $73ff                                  ; $57fe: $01 $ff $73
    rst $38                                       ; $5801: $ff
    ei                                            ; $5802: $fb
    rst $08                                       ; $5803: $cf
    rst $08                                       ; $5804: $cf
    rst $00                                       ; $5805: $c7
    rst $00                                       ; $5806: $c7
    rst $20                                       ; $5807: $e7
    ld h, a                                       ; $5808: $67
    di                                            ; $5809: $f3
    inc sp                                        ; $580a: $33
    rst $38                                       ; $580b: $ff
    nop                                           ; $580c: $00
    rst $38                                       ; $580d: $ff
    pop hl                                        ; $580e: $e1
    rst $38                                       ; $580f: $ff
    pop af                                        ; $5810: $f1
    ccf                                           ; $5811: $3f
    inc sp                                        ; $5812: $33
    ccf                                           ; $5813: $3f
    dec sp                                        ; $5814: $3b
    rra                                           ; $5815: $1f
    dec de                                        ; $5816: $1b
    sbc [hl]                                      ; $5817: $9e
    sbc [hl]                                      ; $5818: $9e
    sbc [hl]                                      ; $5819: $9e
    sbc [hl]                                      ; $581a: $9e
    rst $38                                       ; $581b: $ff
    ldh a, [rIE]                                  ; $581c: $f0 $ff
    ld hl, sp-$61                                 ; $581e: $f8 $9f
    sbc c                                         ; $5820: $99
    rra                                           ; $5821: $1f
    dec de                                        ; $5822: $1b
    ccf                                           ; $5823: $3f
    dec sp                                        ; $5824: $3b
    ccf                                           ; $5825: $3f
    scf                                           ; $5826: $37
    ld a, $36                                     ; $5827: $3e $36
    ld a, [hl]                                    ; $5829: $7e
    ld a, [hl]                                    ; $582a: $7e
    rst $38                                       ; $582b: $ff
    nop                                           ; $582c: $00
    rst $38                                       ; $582d: $ff
    ldh a, [rIE]                                  ; $582e: $f0 $ff
    ld hl, sp-$61                                 ; $5830: $f8 $9f
    sbc e                                         ; $5832: $9b
    rra                                           ; $5833: $1f
    rra                                           ; $5834: $1f
    ld a, $36                                     ; $5835: $3e $36
    ld a, $36                                     ; $5837: $3e $36
    ld a, [hl]                                    ; $5839: $7e
    ld a, [hl]                                    ; $583a: $7e
    rst $38                                       ; $583b: $ff
    nop                                           ; $583c: $00
    rst $38                                       ; $583d: $ff
    nop                                           ; $583e: $00
    rst $38                                       ; $583f: $ff
    ld bc, $81ff                                  ; $5840: $01 $ff $81
    rst $38                                       ; $5843: $ff
    jp $efff                                      ; $5844: $c3 $ff $ef


    ld a, a                                       ; $5847: $7f
    ld a, a                                       ; $5848: $7f
    dec sp                                        ; $5849: $3b
    dec sp                                        ; $584a: $3b
    rst $38                                       ; $584b: $ff
    nop                                           ; $584c: $00
    rst $38                                       ; $584d: $ff
    ldh [rIE], a                                  ; $584e: $e0 $ff
    pop af                                        ; $5850: $f1
    cp a                                          ; $5851: $bf
    or e                                          ; $5852: $b3
    rra                                           ; $5853: $1f
    dec de                                        ; $5854: $1b
    ld e, $1e                                     ; $5855: $1e $1e
    sbc [hl]                                      ; $5857: $9e
    sbc [hl]                                      ; $5858: $9e
    adc [hl]                                      ; $5859: $8e
    adc [hl]                                      ; $585a: $8e
    rst $38                                       ; $585b: $ff
    ld [hl], b                                    ; $585c: $70
    rst $38                                       ; $585d: $ff
    ld hl, sp-$61                                 ; $585e: $f8 $9f
    sbc b                                         ; $5860: $98
    rra                                           ; $5861: $1f
    jr jr_04f_58a3                                ; $5862: $18 $3f

    jr nc, @+$41                                  ; $5864: $30 $3f

    jr nc, jr_04f_58e7                            ; $5866: $30 $7f

    ld h, b                                       ; $5868: $60
    ld a, a                                       ; $5869: $7f
    ld h, b                                       ; $586a: $60
    rst $38                                       ; $586b: $ff
    nop                                           ; $586c: $00
    rst $38                                       ; $586d: $ff
    nop                                           ; $586e: $00
    rst $38                                       ; $586f: $ff
    nop                                           ; $5870: $00
    rst $38                                       ; $5871: $ff
    nop                                           ; $5872: $00
    rst $38                                       ; $5873: $ff
    nop                                           ; $5874: $00
    rst $38                                       ; $5875: $ff
    inc bc                                        ; $5876: $03
    rst $38                                       ; $5877: $ff
    rlca                                          ; $5878: $07
    db $fc                                        ; $5879: $fc
    inc b                                         ; $587a: $04
    rst $38                                       ; $587b: $ff
    nop                                           ; $587c: $00
    rst $38                                       ; $587d: $ff
    nop                                           ; $587e: $00
    rst $38                                       ; $587f: $ff
    nop                                           ; $5880: $00
    rst $38                                       ; $5881: $ff
    nop                                           ; $5882: $00
    rst $38                                       ; $5883: $ff
    jr @+$01                                      ; $5884: $18 $ff

    inc a                                         ; $5886: $3c
    rst $20                                       ; $5887: $e7
    and h                                         ; $5888: $a4
    rst $20                                       ; $5889: $e7
    and $ff                                       ; $588a: $e6 $ff
    nop                                           ; $588c: $00
    rst $38                                       ; $588d: $ff
    nop                                           ; $588e: $00
    rst $38                                       ; $588f: $ff
    nop                                           ; $5890: $00
    rst $38                                       ; $5891: $ff
    jr @+$01                                      ; $5892: $18 $ff

    inc a                                         ; $5894: $3c
    rst $20                                       ; $5895: $e7
    inc h                                         ; $5896: $24
    rst $20                                       ; $5897: $e7
    ld h, h                                       ; $5898: $64
    rst $08                                       ; $5899: $cf
    ld c, h                                       ; $589a: $4c
    rst $38                                       ; $589b: $ff
    nop                                           ; $589c: $00
    rst $38                                       ; $589d: $ff
    nop                                           ; $589e: $00
    rst $38                                       ; $589f: $ff
    nop                                           ; $58a0: $00
    rst $38                                       ; $58a1: $ff
    nop                                           ; $58a2: $00

jr_04f_58a3:
    rst $38                                       ; $58a3: $ff
    jr nc, @+$01                                  ; $58a4: $30 $ff

    ld a, b                                       ; $58a6: $78
    rst $08                                       ; $58a7: $cf
    ret z                                         ; $58a8: $c8

    adc a                                         ; $58a9: $8f
    adc b                                         ; $58aa: $88
    rst $38                                       ; $58ab: $ff
    nop                                           ; $58ac: $00
    rst $38                                       ; $58ad: $ff
    nop                                           ; $58ae: $00
    rst $38                                       ; $58af: $ff
    nop                                           ; $58b0: $00
    rst $38                                       ; $58b1: $ff
    nop                                           ; $58b2: $00
    rst $38                                       ; $58b3: $ff
    nop                                           ; $58b4: $00
    rst $38                                       ; $58b5: $ff
    ld bc, $03ff                                  ; $58b6: $01 $ff $03
    cp $c2                                        ; $58b9: $fe $c2
    rst $38                                       ; $58bb: $ff
    nop                                           ; $58bc: $00
    rst $38                                       ; $58bd: $ff
    nop                                           ; $58be: $00
    rst $38                                       ; $58bf: $ff
    nop                                           ; $58c0: $00
    rst $38                                       ; $58c1: $ff
    ld bc, $03ff                                  ; $58c2: $01 $ff $03
    cp $86                                        ; $58c5: $fe $86
    db $fc                                        ; $58c7: $fc
    call nz, Call_04f_6c7c                        ; $58c8: $c4 $7c $6c
    rst $38                                       ; $58cb: $ff
    nop                                           ; $58cc: $00
    rst $38                                       ; $58cd: $ff
    nop                                           ; $58ce: $00
    rst $38                                       ; $58cf: $ff
    nop                                           ; $58d0: $00
    rst $38                                       ; $58d1: $ff
    add b                                         ; $58d2: $80
    rst $38                                       ; $58d3: $ff
    ret nz                                        ; $58d4: $c0

    ld a, a                                       ; $58d5: $7f
    ld b, b                                       ; $58d6: $40
    ld a, a                                       ; $58d7: $7f
    ld b, b                                       ; $58d8: $40
    rst $38                                       ; $58d9: $ff
    ret nz                                        ; $58da: $c0

    nop                                           ; $58db: $00
    nop                                           ; $58dc: $00
    nop                                           ; $58dd: $00
    nop                                           ; $58de: $00
    nop                                           ; $58df: $00
    nop                                           ; $58e0: $00
    nop                                           ; $58e1: $00
    nop                                           ; $58e2: $00
    nop                                           ; $58e3: $00
    nop                                           ; $58e4: $00
    nop                                           ; $58e5: $00
    nop                                           ; $58e6: $00

jr_04f_58e7:
    nop                                           ; $58e7: $00
    nop                                           ; $58e8: $00
    nop                                           ; $58e9: $00
    nop                                           ; $58ea: $00
    nop                                           ; $58eb: $00
    nop                                           ; $58ec: $00
    nop                                           ; $58ed: $00
    nop                                           ; $58ee: $00
    nop                                           ; $58ef: $00
    nop                                           ; $58f0: $00
    nop                                           ; $58f1: $00
    nop                                           ; $58f2: $00
    nop                                           ; $58f3: $00
    nop                                           ; $58f4: $00
    nop                                           ; $58f5: $00
    nop                                           ; $58f6: $00
    nop                                           ; $58f7: $00
    nop                                           ; $58f8: $00
    nop                                           ; $58f9: $00
    nop                                           ; $58fa: $00
    di                                            ; $58fb: $f3
    inc sp                                        ; $58fc: $33
    ld sp, hl                                     ; $58fd: $f9
    add hl, de                                    ; $58fe: $19
    ld sp, hl                                     ; $58ff: $f9
    ld a, c                                       ; $5900: $79
    db $fc                                        ; $5901: $fc
    db $fc                                        ; $5902: $fc
    call z, $c4cc                                 ; $5903: $cc $cc $c4
    call nz, $e6e6                                ; $5906: $c4 $e6 $e6
    ld [c], a                                     ; $5909: $e2
    ld h, d                                       ; $590a: $62
    adc [hl]                                      ; $590b: $8e
    adc [hl]                                      ; $590c: $8e
    call z, $cccc                                 ; $590d: $cc $cc $cc
    call z, $cccc                                 ; $5910: $cc $cc $cc
    ret z                                         ; $5913: $c8

    ret z                                         ; $5914: $c8

    ld c, b                                       ; $5915: $48
    ld c, b                                       ; $5916: $48
    ld b, b                                       ; $5917: $40
    ld b, b                                       ; $5918: $40
    nop                                           ; $5919: $00
    nop                                           ; $591a: $00
    ld a, [hl]                                    ; $591b: $7e
    ld a, [hl]                                    ; $591c: $7e
    ld [hl], e                                    ; $591d: $73
    ld [hl], e                                    ; $591e: $73
    ld h, e                                       ; $591f: $63
    ld h, e                                       ; $5920: $63
    db $e3                                        ; $5921: $e3
    db $e3                                        ; $5922: $e3
    rst $00                                       ; $5923: $c7
    rst $00                                       ; $5924: $c7
    rst $00                                       ; $5925: $c7
    rst $00                                       ; $5926: $c7
    adc h                                         ; $5927: $8c
    adc h                                         ; $5928: $8c
    adc b                                         ; $5929: $88
    adc b                                         ; $592a: $88
    ld a, a                                       ; $592b: $7f
    ld a, a                                       ; $592c: $7f
    ld [hl], e                                    ; $592d: $73
    ld [hl], e                                    ; $592e: $73
    ld h, e                                       ; $592f: $63
    ld h, e                                       ; $5930: $63
    db $e3                                        ; $5931: $e3
    db $e3                                        ; $5932: $e3
    rst $00                                       ; $5933: $c7
    rst $00                                       ; $5934: $c7
    rst $00                                       ; $5935: $c7
    rst $00                                       ; $5936: $c7
    adc h                                         ; $5937: $8c
    adc h                                         ; $5938: $8c
    adc b                                         ; $5939: $88
    adc b                                         ; $593a: $88
    ld sp, $3131                                  ; $593b: $31 $31 $31
    ld sp, $1919                                  ; $593e: $31 $19 $19
    sbc b                                         ; $5941: $98
    sbc b                                         ; $5942: $98
    sbc b                                         ; $5943: $98
    sbc b                                         ; $5944: $98
    adc b                                         ; $5945: $88
    adc b                                         ; $5946: $88
    adc h                                         ; $5947: $8c
    adc h                                         ; $5948: $8c
    adc h                                         ; $5949: $8c
    adc h                                         ; $594a: $8c
    adc h                                         ; $594b: $8c
    adc h                                         ; $594c: $8c
    adc h                                         ; $594d: $8c
    adc h                                         ; $594e: $8c
    adc h                                         ; $594f: $8c
    adc h                                         ; $5950: $8c
    call z, $cccc                                 ; $5951: $cc $cc $cc
    call z, $c8c8                                 ; $5954: $cc $c8 $c8
    ld c, b                                       ; $5957: $48
    ld c, b                                       ; $5958: $48
    ld [$7f08], sp                                ; $5959: $08 $08 $7f
    ld l, [hl]                                    ; $595c: $6e
    ld a, a                                       ; $595d: $7f
    ld e, a                                       ; $595e: $5f
    di                                            ; $595f: $f3
    di                                            ; $5960: $f3
    db $e3                                        ; $5961: $e3
    db $e3                                        ; $5962: $e3
    rst $20                                       ; $5963: $e7
    rst $20                                       ; $5964: $e7
    rst $00                                       ; $5965: $c7
    add $cf                                       ; $5966: $c6 $cf
    call z, $8c8f                                 ; $5968: $cc $8f $8c
    db $fc                                        ; $596b: $fc
    inc b                                         ; $596c: $04
    cp $06                                        ; $596d: $fe $06
    rst $38                                       ; $596f: $ff
    inc bc                                        ; $5970: $03
    rst $38                                       ; $5971: $ff
    ld bc, $03ff                                  ; $5972: $01 $ff $03
    rst $38                                       ; $5975: $ff
    rlca                                          ; $5976: $07
    db $fc                                        ; $5977: $fc
    inc b                                         ; $5978: $04
    db $fc                                        ; $5979: $fc
    inc b                                         ; $597a: $04
    ld h, e                                       ; $597b: $63
    ld h, d                                       ; $597c: $62
    inc sp                                        ; $597d: $33
    inc sp                                        ; $597e: $33
    ld sp, $1931                                  ; $597f: $31 $31 $19
    add hl, de                                    ; $5982: $19
    sbc c                                         ; $5983: $99
    sbc c                                         ; $5984: $99
    sbc c                                         ; $5985: $99
    sbc c                                         ; $5986: $99
    ret                                           ; $5987: $c9


    ret                                           ; $5988: $c9


    ld c, c                                       ; $5989: $49
    ld c, c                                       ; $598a: $49
    rst $08                                       ; $598b: $cf
    ld c, c                                       ; $598c: $49
    rst $08                                       ; $598d: $cf
    ret                                           ; $598e: $c9


    sbc a                                         ; $598f: $9f
    sbc a                                         ; $5990: $9f
    sbc l                                         ; $5991: $9d
    sbc l                                         ; $5992: $9d
    sbc b                                         ; $5993: $98
    sbc b                                         ; $5994: $98
    cp c                                          ; $5995: $b9
    cp c                                          ; $5996: $b9
    ld sp, $3331                                  ; $5997: $31 $31 $33
    inc sp                                        ; $599a: $33
    sbc a                                         ; $599b: $9f
    sbc c                                         ; $599c: $99
    rra                                           ; $599d: $1f
    ld de, $bfbf                                  ; $599e: $11 $bf $bf
    cp e                                          ; $59a1: $bb
    cp e                                          ; $59a2: $bb
    pop af                                        ; $59a3: $f1
    pop af                                        ; $59a4: $f1
    di                                            ; $59a5: $f3
    di                                            ; $59a6: $f3
    db $e3                                        ; $59a7: $e3
    db $e3                                        ; $59a8: $e3
    ld h, [hl]                                    ; $59a9: $66
    ld h, [hl]                                    ; $59aa: $66
    cp $ee                                        ; $59ab: $fe $ee
    ld a, $3e                                     ; $59ad: $3e $3e
    inc sp                                        ; $59af: $33
    inc sp                                        ; $59b0: $33
    ld sp, $1931                                  ; $59b1: $31 $31 $19
    add hl, de                                    ; $59b4: $19
    sbc c                                         ; $59b5: $99
    sbc c                                         ; $59b6: $99
    sbc c                                         ; $59b7: $99
    sbc c                                         ; $59b8: $99
    adc b                                         ; $59b9: $88
    adc b                                         ; $59ba: $88
    inc a                                         ; $59bb: $3c
    inc l                                         ; $59bc: $2c
    add hl, sp                                    ; $59bd: $39
    add hl, sp                                    ; $59be: $39
    add hl, sp                                    ; $59bf: $39
    add hl, sp                                    ; $59c0: $39
    add hl, de                                    ; $59c1: $19
    add hl, de                                    ; $59c2: $19
    add hl, de                                    ; $59c3: $19
    add hl, de                                    ; $59c4: $19
    sbc e                                         ; $59c5: $9b
    sbc e                                         ; $59c6: $9b
    sbc e                                         ; $59c7: $9b
    sbc e                                         ; $59c8: $9b
    sub e                                         ; $59c9: $93
    sub e                                         ; $59ca: $93
    rst $38                                       ; $59cb: $ff
    add b                                         ; $59cc: $80
    rst $38                                       ; $59cd: $ff
    add b                                         ; $59ce: $80
    rst $38                                       ; $59cf: $ff
    jr nc, @+$01                                  ; $59d0: $30 $ff

    ld a, b                                       ; $59d2: $78
    rst $08                                       ; $59d3: $cf
    ret z                                         ; $59d4: $c8

    adc a                                         ; $59d5: $8f
    adc b                                         ; $59d6: $88
    sbc a                                         ; $59d7: $9f
    sbc b                                         ; $59d8: $98
    rra                                           ; $59d9: $1f
    stop                                          ; $59da: $10 $00
    nop                                           ; $59dc: $00
    nop                                           ; $59dd: $00
    nop                                           ; $59de: $00
    nop                                           ; $59df: $00
    nop                                           ; $59e0: $00
    nop                                           ; $59e1: $00
    nop                                           ; $59e2: $00
    nop                                           ; $59e3: $00
    nop                                           ; $59e4: $00
    nop                                           ; $59e5: $00
    nop                                           ; $59e6: $00
    nop                                           ; $59e7: $00
    nop                                           ; $59e8: $00
    nop                                           ; $59e9: $00
    nop                                           ; $59ea: $00
    nop                                           ; $59eb: $00
    nop                                           ; $59ec: $00
    nop                                           ; $59ed: $00
    nop                                           ; $59ee: $00
    nop                                           ; $59ef: $00
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
    ldh a, [$30]                                  ; $59fb: $f0 $30
    ld hl, sp+$38                                 ; $59fd: $f8 $38
    ld hl, sp+$18                                 ; $59ff: $f8 $18
    ld hl, sp+$18                                 ; $5a01: $f8 $18
    db $fc                                        ; $5a03: $fc
    inc c                                         ; $5a04: $0c
    db $fc                                        ; $5a05: $fc
    inc c                                         ; $5a06: $0c
    rst $38                                       ; $5a07: $ff
    rrca                                          ; $5a08: $0f
    rst $38                                       ; $5a09: $ff
    rlca                                          ; $5a0a: $07
    nop                                           ; $5a0b: $00
    nop                                           ; $5a0c: $00
    nop                                           ; $5a0d: $00
    nop                                           ; $5a0e: $00
    nop                                           ; $5a0f: $00
    nop                                           ; $5a10: $00
    nop                                           ; $5a11: $00
    nop                                           ; $5a12: $00
    nop                                           ; $5a13: $00
    nop                                           ; $5a14: $00
    ld h, e                                       ; $5a15: $63
    ld h, e                                       ; $5a16: $63
    rst $38                                       ; $5a17: $ff
    rst $38                                       ; $5a18: $ff
    rst $38                                       ; $5a19: $ff
    cp h                                          ; $5a1a: $bc
    ld [$0008], sp                                ; $5a1b: $08 $08 $00
    nop                                           ; $5a1e: $00
    nop                                           ; $5a1f: $00
    nop                                           ; $5a20: $00
    nop                                           ; $5a21: $00
    nop                                           ; $5a22: $00
    nop                                           ; $5a23: $00
    nop                                           ; $5a24: $00
    sbc a                                         ; $5a25: $9f
    sbc a                                         ; $5a26: $9f
    rst $38                                       ; $5a27: $ff
    rst $38                                       ; $5a28: $ff
    rst $38                                       ; $5a29: $ff
    ld [hl], b                                    ; $5a2a: $70
    ld [$0008], sp                                ; $5a2b: $08 $08 $00
    nop                                           ; $5a2e: $00
    nop                                           ; $5a2f: $00
    nop                                           ; $5a30: $00
    nop                                           ; $5a31: $00
    nop                                           ; $5a32: $00
    nop                                           ; $5a33: $00

jr_04f_5a34:
    nop                                           ; $5a34: $00
    sbc a                                         ; $5a35: $9f
    sbc a                                         ; $5a36: $9f
    rst $38                                       ; $5a37: $ff
    rst $38                                       ; $5a38: $ff
    rst $38                                       ; $5a39: $ff
    pop af                                        ; $5a3a: $f1
    inc b                                         ; $5a3b: $04
    inc b                                         ; $5a3c: $04
    nop                                           ; $5a3d: $00
    nop                                           ; $5a3e: $00
    nop                                           ; $5a3f: $00
    nop                                           ; $5a40: $00
    nop                                           ; $5a41: $00
    nop                                           ; $5a42: $00
    nop                                           ; $5a43: $00
    nop                                           ; $5a44: $00
    inc a                                         ; $5a45: $3c
    inc a                                         ; $5a46: $3c
    rst $38                                       ; $5a47: $ff
    rst $38                                       ; $5a48: $ff
    rst $38                                       ; $5a49: $ff
    rst $20                                       ; $5a4a: $e7
    nop                                           ; $5a4b: $00
    nop                                           ; $5a4c: $00
    nop                                           ; $5a4d: $00
    nop                                           ; $5a4e: $00
    nop                                           ; $5a4f: $00
    nop                                           ; $5a50: $00
    nop                                           ; $5a51: $00
    nop                                           ; $5a52: $00
    nop                                           ; $5a53: $00
    nop                                           ; $5a54: $00
    and $e6                                       ; $5a55: $e6 $e6
    rst $38                                       ; $5a57: $ff
    rst $38                                       ; $5a58: $ff
    rst $38                                       ; $5a59: $ff
    cp l                                          ; $5a5a: $bd
    rrca                                          ; $5a5b: $0f
    inc c                                         ; $5a5c: $0c
    rra                                           ; $5a5d: $1f
    jr jr_04f_5a7f                                ; $5a5e: $18 $1f

    jr jr_04f_5a81                                ; $5a60: $18 $1f

    jr jr_04f_5aa3                                ; $5a62: $18 $3f

    jr nc, jr_04f_5aa5                            ; $5a64: $30 $3f

    jr nc, @+$01                                  ; $5a66: $30 $ff

    ldh a, [rIE]                                  ; $5a68: $f0 $ff
    ldh [$fe], a                                  ; $5a6a: $e0 $fe
    ld b, $ff                                     ; $5a6c: $06 $ff
    inc bc                                        ; $5a6e: $03
    rst $38                                       ; $5a6f: $ff
    ld bc, $01ff                                  ; $5a70: $01 $ff $01
    rst $38                                       ; $5a73: $ff
    nop                                           ; $5a74: $00
    rst $38                                       ; $5a75: $ff
    nop                                           ; $5a76: $00
    rst $38                                       ; $5a77: $ff
    nop                                           ; $5a78: $00
    rst $38                                       ; $5a79: $ff
    nop                                           ; $5a7a: $00
    ld c, b                                       ; $5a7b: $48
    ld c, b                                       ; $5a7c: $48
    nop                                           ; $5a7d: $00
    nop                                           ; $5a7e: $00

jr_04f_5a7f:
    nop                                           ; $5a7f: $00
    nop                                           ; $5a80: $00

jr_04f_5a81:
    add b                                         ; $5a81: $80
    add b                                         ; $5a82: $80
    add b                                         ; $5a83: $80
    add b                                         ; $5a84: $80
    call z, $ffcc                                 ; $5a85: $cc $cc $ff
    ld a, a                                       ; $5a88: $7f
    rst $38                                       ; $5a89: $ff
    inc sp                                        ; $5a8a: $33
    ld [hl+], a                                   ; $5a8b: $22
    ld [hl+], a                                   ; $5a8c: $22
    ld [bc], a                                    ; $5a8d: $02
    ld [bc], a                                    ; $5a8e: $02
    nop                                           ; $5a8f: $00
    nop                                           ; $5a90: $00
    nop                                           ; $5a91: $00
    nop                                           ; $5a92: $00
    nop                                           ; $5a93: $00
    nop                                           ; $5a94: $00
    ld h, a                                       ; $5a95: $67
    ld h, a                                       ; $5a96: $67
    rst $38                                       ; $5a97: $ff
    rst $38                                       ; $5a98: $ff
    rst $38                                       ; $5a99: $ff
    sbc b                                         ; $5a9a: $98
    ld b, h                                       ; $5a9b: $44
    ld b, h                                       ; $5a9c: $44
    inc b                                         ; $5a9d: $04
    inc b                                         ; $5a9e: $04
    nop                                           ; $5a9f: $00
    nop                                           ; $5aa0: $00
    nop                                           ; $5aa1: $00
    nop                                           ; $5aa2: $00

jr_04f_5aa3:
    nop                                           ; $5aa3: $00
    nop                                           ; $5aa4: $00

jr_04f_5aa5:
    rst $08                                       ; $5aa5: $cf
    rst $08                                       ; $5aa6: $cf
    rst $38                                       ; $5aa7: $ff
    rst $38                                       ; $5aa8: $ff
    rst $38                                       ; $5aa9: $ff
    jr nc, jr_04f_5a34                            ; $5aaa: $30 $88

    adc b                                         ; $5aac: $88
    ld [$0008], sp                                ; $5aad: $08 $08 $00
    nop                                           ; $5ab0: $00
    nop                                           ; $5ab1: $00
    nop                                           ; $5ab2: $00
    nop                                           ; $5ab3: $00
    nop                                           ; $5ab4: $00
    add hl, sp                                    ; $5ab5: $39
    add hl, sp                                    ; $5ab6: $39
    rst $38                                       ; $5ab7: $ff
    rst $38                                       ; $5ab8: $ff
    rst $38                                       ; $5ab9: $ff
    add $93                                       ; $5aba: $c6 $93
    sub e                                         ; $5abc: $93
    nop                                           ; $5abd: $00
    nop                                           ; $5abe: $00
    nop                                           ; $5abf: $00
    nop                                           ; $5ac0: $00
    nop                                           ; $5ac1: $00
    nop                                           ; $5ac2: $00
    nop                                           ; $5ac3: $00
    nop                                           ; $5ac4: $00
    call z, $ffcc                                 ; $5ac5: $cc $cc $ff
    rst $38                                       ; $5ac8: $ff
    rst $38                                       ; $5ac9: $ff
    inc sp                                        ; $5aca: $33
    ccf                                           ; $5acb: $3f
    jr nc, @+$41                                  ; $5acc: $30 $3f

    jr nz, jr_04f_5b4f                            ; $5ace: $20 $7f

    ld h, b                                       ; $5ad0: $60
    ld a, a                                       ; $5ad1: $7f
    ld h, b                                       ; $5ad2: $60
    ld a, a                                       ; $5ad3: $7f
    ld b, b                                       ; $5ad4: $40
    rst $38                                       ; $5ad5: $ff
    ret nz                                        ; $5ad6: $c0

    rst $38                                       ; $5ad7: $ff
    ret nz                                        ; $5ad8: $c0

    rst $38                                       ; $5ad9: $ff
    add b                                         ; $5ada: $80
    nop                                           ; $5adb: $00
    nop                                           ; $5adc: $00
    nop                                           ; $5add: $00
    nop                                           ; $5ade: $00
    nop                                           ; $5adf: $00
    nop                                           ; $5ae0: $00
    nop                                           ; $5ae1: $00
    nop                                           ; $5ae2: $00
    nop                                           ; $5ae3: $00
    nop                                           ; $5ae4: $00
    nop                                           ; $5ae5: $00
    nop                                           ; $5ae6: $00
    nop                                           ; $5ae7: $00
    nop                                           ; $5ae8: $00
    nop                                           ; $5ae9: $00
    nop                                           ; $5aea: $00
    nop                                           ; $5aeb: $00
    nop                                           ; $5aec: $00
    nop                                           ; $5aed: $00
    nop                                           ; $5aee: $00
    nop                                           ; $5aef: $00
    nop                                           ; $5af0: $00
    nop                                           ; $5af1: $00
    nop                                           ; $5af2: $00
    nop                                           ; $5af3: $00
    nop                                           ; $5af4: $00
    nop                                           ; $5af5: $00
    nop                                           ; $5af6: $00
    nop                                           ; $5af7: $00
    nop                                           ; $5af8: $00
    nop                                           ; $5af9: $00
    nop                                           ; $5afa: $00
    rst $38                                       ; $5afb: $ff
    inc bc                                        ; $5afc: $03
    db $fc                                        ; $5afd: $fc
    inc b                                         ; $5afe: $04
    db $fc                                        ; $5aff: $fc
    ld [hl], h                                    ; $5b00: $74
    sbc h                                         ; $5b01: $9c
    sbc h                                         ; $5b02: $9c
    adc h                                         ; $5b03: $8c
    adc h                                         ; $5b04: $8c
    add $c6                                       ; $5b05: $c6 $c6

jr_04f_5b07:
    and $66                                       ; $5b07: $e6 $66
    ld a, [c]                                     ; $5b09: $f2
    ld [hl-], a                                   ; $5b0a: $32
    rst $38                                       ; $5b0b: $ff
    ld b, $f9                                     ; $5b0c: $06 $f9
    adc c                                         ; $5b0e: $89
    ld sp, hl                                     ; $5b0f: $f9
    adc c                                         ; $5b10: $89
    ld sp, hl                                     ; $5b11: $f9
    reti                                          ; $5b12: $d9


    ld [hl], e                                    ; $5b13: $73
    ld d, e                                       ; $5b14: $53
    ld [hl], e                                    ; $5b15: $73
    ld d, d                                       ; $5b16: $52
    ld h, a                                       ; $5b17: $67
    ld h, a                                       ; $5b18: $67
    ld h, [hl]                                    ; $5b19: $66
    ld h, [hl]                                    ; $5b1a: $66
    rst $38                                       ; $5b1b: $ff
    nop                                           ; $5b1c: $00
    rst $38                                       ; $5b1d: $ff
    jr jr_04f_5b07                                ; $5b1e: $18 $e7

    inc h                                         ; $5b20: $24
    rst $20                                       ; $5b21: $e7
    ld h, h                                       ; $5b22: $64
    rst $08                                       ; $5b23: $cf
    ld c, h                                       ; $5b24: $4c
    rst $08                                       ; $5b25: $cf
    ret                                           ; $5b26: $c9


    rst $18                                       ; $5b27: $df
    rst $18                                       ; $5b28: $df
    ld e, c                                       ; $5b29: $59
    ld e, c                                       ; $5b2a: $59
    rst $38                                       ; $5b2b: $ff
    nop                                           ; $5b2c: $00
    rst $38                                       ; $5b2d: $ff
    inc bc                                        ; $5b2e: $03
    db $fc                                        ; $5b2f: $fc
    inc b                                         ; $5b30: $04
    db $fc                                        ; $5b31: $fc
    inc b                                         ; $5b32: $04
    db $fc                                        ; $5b33: $fc
    inc b                                         ; $5b34: $04
    db $fc                                        ; $5b35: $fc
    call nz, Call_000_3e3e                        ; $5b36: $c4 $3e $3e
    ld h, $26                                     ; $5b39: $26 $26
    rst $38                                       ; $5b3b: $ff
    ld b, $f9                                     ; $5b3c: $06 $f9
    add hl, bc                                    ; $5b3e: $09
    ld sp, hl                                     ; $5b3f: $f9
    adc c                                         ; $5b40: $89
    di                                            ; $5b41: $f3
    sub e                                         ; $5b42: $93
    di                                            ; $5b43: $f3
    sub d                                         ; $5b44: $92
    rst $20                                       ; $5b45: $e7
    and $67                                       ; $5b46: $e6 $67
    ld h, h                                       ; $5b48: $64
    ld h, a                                       ; $5b49: $67
    ld h, h                                       ; $5b4a: $64
    rst $38                                       ; $5b4b: $ff
    nop                                           ; $5b4c: $00
    rst $38                                       ; $5b4d: $ff
    nop                                           ; $5b4e: $00

jr_04f_5b4f:
    rst $38                                       ; $5b4f: $ff
    ld bc, $19ff                                  ; $5b50: $01 $ff $19
    rst $30                                       ; $5b53: $f7
    dec d                                         ; $5b54: $15
    di                                            ; $5b55: $f3
    inc de                                        ; $5b56: $13
    ld sp, hl                                     ; $5b57: $f9
    add hl, bc                                    ; $5b58: $09
    ld sp, hl                                     ; $5b59: $f9
    add hl, bc                                    ; $5b5a: $09
    rst $38                                       ; $5b5b: $ff
    nop                                           ; $5b5c: $00
    rst $38                                       ; $5b5d: $ff
    ld b, $fb                                     ; $5b5e: $06 $fb
    adc d                                         ; $5b60: $8a
    ld [hl], e                                    ; $5b61: $73
    ld d, d                                       ; $5b62: $52
    ld [hl], a                                    ; $5b63: $77
    ld d, h                                       ; $5b64: $54
    ld [hl], a                                    ; $5b65: $77
    ld d, h                                       ; $5b66: $54
    daa                                           ; $5b67: $27
    daa                                           ; $5b68: $27

jr_04f_5b69:
    dec h                                         ; $5b69: $25
    dec h                                         ; $5b6a: $25
    rst $38                                       ; $5b6b: $ff
    nop                                           ; $5b6c: $00
    rst $38                                       ; $5b6d: $ff
    nop                                           ; $5b6e: $00
    rst $38                                       ; $5b6f: $ff
    jr nc, @-$1f                                  ; $5b70: $30 $df

    ld d, b                                       ; $5b72: $50
    rst $18                                       ; $5b73: $df
    ld d, d                                       ; $5b74: $52
    sbc l                                         ; $5b75: $9d
    sub l                                         ; $5b76: $95
    cp h                                          ; $5b77: $bc
    cp h                                          ; $5b78: $bc
    inc h                                         ; $5b79: $24
    inc h                                         ; $5b7a: $24
    rst $38                                       ; $5b7b: $ff
    nop                                           ; $5b7c: $00
    rst $38                                       ; $5b7d: $ff
    nop                                           ; $5b7e: $00
    rst $38                                       ; $5b7f: $ff
    jr jr_04f_5b69                                ; $5b80: $18 $e7

    dec h                                         ; $5b82: $25
    rst $20                                       ; $5b83: $e7
    dec h                                         ; $5b84: $25
    or $76                                        ; $5b85: $f6 $76
    sub d                                         ; $5b87: $92
    sub d                                         ; $5b88: $92
    sub d                                         ; $5b89: $92
    sub d                                         ; $5b8a: $92
    rst $38                                       ; $5b8b: $ff
    nop                                           ; $5b8c: $00
    rst $38                                       ; $5b8d: $ff
    ld b, b                                       ; $5b8e: $40
    cp a                                          ; $5b8f: $bf
    and b                                         ; $5b90: $a0
    ccf                                           ; $5b91: $3f
    jr nz, jr_04f_5c13                            ; $5b92: $20 $7f

    ld b, b                                       ; $5b94: $40
    ld a, a                                       ; $5b95: $7f
    ld b, b                                       ; $5b96: $40
    ld a, a                                       ; $5b97: $7f
    ld e, b                                       ; $5b98: $58
    rst $28                                       ; $5b99: $ef
    xor b                                         ; $5b9a: $a8
    rst $38                                       ; $5b9b: $ff
    nop                                           ; $5b9c: $00
    rst $38                                       ; $5b9d: $ff
    nop                                           ; $5b9e: $00
    rst $38                                       ; $5b9f: $ff
    nop                                           ; $5ba0: $00
    rst $38                                       ; $5ba1: $ff
    nop                                           ; $5ba2: $00
    rst $38                                       ; $5ba3: $ff
    nop                                           ; $5ba4: $00
    rst $38                                       ; $5ba5: $ff
    inc bc                                        ; $5ba6: $03
    cp $02                                        ; $5ba7: $fe $02
    rst $38                                       ; $5ba9: $ff
    ld bc, $00ff                                  ; $5baa: $01 $ff $00
    rst $38                                       ; $5bad: $ff
    nop                                           ; $5bae: $00
    rst $38                                       ; $5baf: $ff
    nop                                           ; $5bb0: $00
    rst $38                                       ; $5bb1: $ff
    nop                                           ; $5bb2: $00
    rst $38                                       ; $5bb3: $ff
    ld bc, $62fe                                  ; $5bb4: $01 $fe $62
    db $dd                                        ; $5bb7: $dd
    push de                                       ; $5bb8: $d5
    ld c, l                                       ; $5bb9: $4d
    ld c, l                                       ; $5bba: $4d
    rst $38                                       ; $5bbb: $ff
    nop                                           ; $5bbc: $00
    rst $38                                       ; $5bbd: $ff
    nop                                           ; $5bbe: $00
    rst $38                                       ; $5bbf: $ff
    nop                                           ; $5bc0: $00
    rst $38                                       ; $5bc1: $ff
    nop                                           ; $5bc2: $00
    rst $38                                       ; $5bc3: $ff
    add b                                         ; $5bc4: $80
    rst $38                                       ; $5bc5: $ff
    or b                                          ; $5bc6: $b0
    rst $28                                       ; $5bc7: $ef
    xor $dd                                       ; $5bc8: $ee $dd
    ld d, l                                       ; $5bca: $55
    rst $38                                       ; $5bcb: $ff
    nop                                           ; $5bcc: $00
    rst $38                                       ; $5bcd: $ff
    nop                                           ; $5bce: $00
    rst $38                                       ; $5bcf: $ff
    nop                                           ; $5bd0: $00
    rst $38                                       ; $5bd1: $ff
    nop                                           ; $5bd2: $00
    rst $38                                       ; $5bd3: $ff
    ld bc, $62fe                                  ; $5bd4: $01 $fe $62
    db $dd                                        ; $5bd7: $dd
    ld d, l                                       ; $5bd8: $55
    db $ed                                        ; $5bd9: $ed
    ld l, l                                       ; $5bda: $6d
    rst $38                                       ; $5bdb: $ff
    nop                                           ; $5bdc: $00
    rst $38                                       ; $5bdd: $ff
    nop                                           ; $5bde: $00
    rst $38                                       ; $5bdf: $ff
    nop                                           ; $5be0: $00
    rst $38                                       ; $5be1: $ff
    nop                                           ; $5be2: $00
    rst $38                                       ; $5be3: $ff
    add b                                         ; $5be4: $80
    rst $38                                       ; $5be5: $ff
    add b                                         ; $5be6: $80
    rst $38                                       ; $5be7: $ff
    nop                                           ; $5be8: $00
    rst $38                                       ; $5be9: $ff
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
    di                                            ; $5bfb: $f3
    ld [hl], e                                    ; $5bfc: $73
    sbc e                                         ; $5bfd: $9b
    sbc e                                         ; $5bfe: $9b
    adc c                                         ; $5bff: $89
    adc c                                         ; $5c00: $89
    ret nz                                        ; $5c01: $c0

    ret nz                                        ; $5c02: $c0

    ldh [$60], a                                  ; $5c03: $e0 $60
    ldh [rNR41], a                                ; $5c05: $e0 $20
    pop af                                        ; $5c07: $f1
    ld sp, $1fff                                  ; $5c08: $31 $ff $1f
    ld b, h                                       ; $5c0b: $44
    ld b, h                                       ; $5c0c: $44
    ld c, h                                       ; $5c0d: $4c
    ld c, h                                       ; $5c0e: $4c
    ld c, c                                       ; $5c0f: $49
    ld c, c                                       ; $5c10: $49
    nop                                           ; $5c11: $00
    nop                                           ; $5c12: $00

jr_04f_5c13:
    nop                                           ; $5c13: $00
    nop                                           ; $5c14: $00
    nop                                           ; $5c15: $00
    nop                                           ; $5c16: $00
    sbc c                                         ; $5c17: $99
    sbc c                                         ; $5c18: $99
    rst $38                                       ; $5c19: $ff
    rst $38                                       ; $5c1a: $ff
    or e                                          ; $5c1b: $b3
    or e                                          ; $5c1c: $b3
    db $e3                                        ; $5c1d: $e3
    db $e3                                        ; $5c1e: $e3
    inc h                                         ; $5c1f: $24
    inc h                                         ; $5c20: $24
    nop                                           ; $5c21: $00
    nop                                           ; $5c22: $00
    nop                                           ; $5c23: $00
    nop                                           ; $5c24: $00
    nop                                           ; $5c25: $00
    nop                                           ; $5c26: $00
    rst $20                                       ; $5c27: $e7
    rst $20                                       ; $5c28: $e7
    rst $38                                       ; $5c29: $ff
    rst $38                                       ; $5c2a: $ff
    ld [hl+], a                                   ; $5c2b: $22
    ld [hl+], a                                   ; $5c2c: $22
    ld [de], a                                    ; $5c2d: $12
    ld [de], a                                    ; $5c2e: $12
    sub d                                         ; $5c2f: $92
    sub d                                         ; $5c30: $92
    nop                                           ; $5c31: $00
    nop                                           ; $5c32: $00
    nop                                           ; $5c33: $00
    nop                                           ; $5c34: $00
    nop                                           ; $5c35: $00
    nop                                           ; $5c36: $00
    dec sp                                        ; $5c37: $3b
    dec sp                                        ; $5c38: $3b
    rst $38                                       ; $5c39: $ff
    rst $38                                       ; $5c3a: $ff
    ld c, a                                       ; $5c3b: $4f
    ld c, h                                       ; $5c3c: $4c
    ld c, a                                       ; $5c3d: $4f
    ld c, [hl]                                    ; $5c3e: $4e
    ld c, c                                       ; $5c3f: $49
    ld c, c                                       ; $5c40: $49
    ld bc, $0301                                  ; $5c41: $01 $01 $03
    inc bc                                        ; $5c44: $03
    inc bc                                        ; $5c45: $03
    ld [bc], a                                    ; $5c46: $02
    or a                                          ; $5c47: $b7
    or [hl]                                       ; $5c48: $b6
    rst $38                                       ; $5c49: $ff
    db $fc                                        ; $5c4a: $fc
    db $fc                                        ; $5c4b: $fc
    inc a                                         ; $5c4c: $3c
    db $e4                                        ; $5c4d: $e4
    inc h                                         ; $5c4e: $24
    ld a, [c]                                     ; $5c4f: $f2
    ld [de], a                                    ; $5c50: $12
    ld hl, sp+$08                                 ; $5c51: $f8 $08
    ld hl, sp+$08                                 ; $5c53: $f8 $08
    db $fc                                        ; $5c55: $fc
    inc b                                         ; $5c56: $04
    db $fd                                        ; $5c57: $fd
    dec b                                         ; $5c58: $05
    rst $38                                       ; $5c59: $ff
    inc bc                                        ; $5c5a: $03
    xor c                                         ; $5c5b: $a9
    xor c                                         ; $5c5c: $a9
    xor c                                         ; $5c5d: $a9
    xor c                                         ; $5c5e: $a9
    adc c                                         ; $5c5f: $89
    adc c                                         ; $5c60: $89
    nop                                           ; $5c61: $00
    nop                                           ; $5c62: $00
    nop                                           ; $5c63: $00
    nop                                           ; $5c64: $00
    nop                                           ; $5c65: $00
    nop                                           ; $5c66: $00
    sub e                                         ; $5c67: $93
    sub e                                         ; $5c68: $93
    rst $38                                       ; $5c69: $ff
    rst $38                                       ; $5c6a: $ff
    ld c, [hl]                                    ; $5c6b: $4e
    ld c, [hl]                                    ; $5c6c: $4e
    jp z, Jump_04f_52ca                           ; $5c6d: $ca $ca $52

    ld d, d                                       ; $5c70: $52
    nop                                           ; $5c71: $00
    nop                                           ; $5c72: $00
    nop                                           ; $5c73: $00
    nop                                           ; $5c74: $00
    nop                                           ; $5c75: $00
    nop                                           ; $5c76: $00
    ld [hl-], a                                   ; $5c77: $32
    ld [hl-], a                                   ; $5c78: $32
    rst $38                                       ; $5c79: $ff
    rst $38                                       ; $5c7a: $ff
    ld c, d                                       ; $5c7b: $4a
    ld c, d                                       ; $5c7c: $4a
    ld c, d                                       ; $5c7d: $4a
    ld c, d                                       ; $5c7e: $4a
    ld c, d                                       ; $5c7f: $4a
    ld c, d                                       ; $5c80: $4a
    nop                                           ; $5c81: $00
    nop                                           ; $5c82: $00
    nop                                           ; $5c83: $00
    nop                                           ; $5c84: $00
    nop                                           ; $5c85: $00
    nop                                           ; $5c86: $00
    ld h, [hl]                                    ; $5c87: $66
    ld h, [hl]                                    ; $5c88: $66
    rst $38                                       ; $5c89: $ff
    rst $38                                       ; $5c8a: $ff
    rst $08                                       ; $5c8b: $cf
    ret z                                         ; $5c8c: $c8

    sbc a                                         ; $5c8d: $9f
    sub b                                         ; $5c8e: $90
    sbc a                                         ; $5c8f: $9f
    sub b                                         ; $5c90: $90
    cp a                                          ; $5c91: $bf
    and b                                         ; $5c92: $a0
    ccf                                           ; $5c93: $3f
    jr nz, @+$41                                  ; $5c94: $20 $3f

    jr nz, @+$41                                  ; $5c96: $20 $3f

    jr nz, @+$01                                  ; $5c98: $20 $ff

    ret nz                                        ; $5c9a: $c0

    rst $38                                       ; $5c9b: $ff
    ld bc, $03ff                                  ; $5c9c: $01 $ff $03
    cp $02                                        ; $5c9f: $fe $02
    rst $38                                       ; $5ca1: $ff
    inc bc                                        ; $5ca2: $03
    rst $38                                       ; $5ca3: $ff
    ld bc, $00ff                                  ; $5ca4: $01 $ff $00
    rst $38                                       ; $5ca7: $ff
    nop                                           ; $5ca8: $00
    rst $38                                       ; $5ca9: $ff
    nop                                           ; $5caa: $00
    ld l, c                                       ; $5cab: $69
    ld l, c                                       ; $5cac: $69
    xor e                                         ; $5cad: $ab
    xor e                                         ; $5cae: $ab
    xor d                                         ; $5caf: $aa
    xor d                                         ; $5cb0: $aa
    ld b, d                                       ; $5cb1: $42
    ld b, d                                       ; $5cb2: $42
    nop                                           ; $5cb3: $00
    nop                                           ; $5cb4: $00
    add b                                         ; $5cb5: $80
    add b                                         ; $5cb6: $80
    sub c                                         ; $5cb7: $91
    sub c                                         ; $5cb8: $91
    rst $38                                       ; $5cb9: $ff
    ld a, a                                       ; $5cba: $7f
    db $dd                                        ; $5cbb: $dd
    db $dd                                        ; $5cbc: $dd
    ld d, h                                       ; $5cbd: $54
    ld d, h                                       ; $5cbe: $54
    xor $ee                                       ; $5cbf: $ee $ee
    xor d                                         ; $5cc1: $aa
    xor d                                         ; $5cc2: $aa
    nop                                           ; $5cc3: $00
    nop                                           ; $5cc4: $00
    nop                                           ; $5cc5: $00
    nop                                           ; $5cc6: $00
    adc e                                         ; $5cc7: $8b
    adc e                                         ; $5cc8: $8b
    rst $38                                       ; $5cc9: $ff
    rst $38                                       ; $5cca: $ff
    xor c                                         ; $5ccb: $a9
    xor c                                         ; $5ccc: $a9
    xor e                                         ; $5ccd: $ab
    xor e                                         ; $5cce: $ab
    xor d                                         ; $5ccf: $aa
    xor d                                         ; $5cd0: $aa
    adc d                                         ; $5cd1: $8a
    adc d                                         ; $5cd2: $8a
    ld bc, $0101                                  ; $5cd3: $01 $01 $01
    ld bc, $1919                                  ; $5cd6: $01 $19 $19
    rst $38                                       ; $5cd9: $ff
    cp $ff                                        ; $5cda: $fe $ff
    ret nz                                        ; $5cdc: $c0

    ld a, a                                       ; $5cdd: $7f
    ld b, b                                       ; $5cde: $40
    rst $38                                       ; $5cdf: $ff
    add b                                         ; $5ce0: $80
    rst $38                                       ; $5ce1: $ff
    add b                                         ; $5ce2: $80
    rst $38                                       ; $5ce3: $ff
    nop                                           ; $5ce4: $00
    rst $38                                       ; $5ce5: $ff
    nop                                           ; $5ce6: $00
    rst $38                                       ; $5ce7: $ff
    nop                                           ; $5ce8: $00
    rst $38                                       ; $5ce9: $ff
    nop                                           ; $5cea: $00
    nop                                           ; $5ceb: $00
    nop                                           ; $5cec: $00

jr_04f_5ced:
    nop                                           ; $5ced: $00
    nop                                           ; $5cee: $00
    nop                                           ; $5cef: $00
    nop                                           ; $5cf0: $00
    nop                                           ; $5cf1: $00
    nop                                           ; $5cf2: $00
    nop                                           ; $5cf3: $00
    nop                                           ; $5cf4: $00
    nop                                           ; $5cf5: $00
    nop                                           ; $5cf6: $00
    nop                                           ; $5cf7: $00
    nop                                           ; $5cf8: $00
    nop                                           ; $5cf9: $00
    nop                                           ; $5cfa: $00
    rst $38                                       ; $5cfb: $ff
    dec h                                         ; $5cfc: $25
    jp c, $eb5a                                   ; $5cfd: $da $5a $eb

    dec hl                                        ; $5d00: $2b
    db $ed                                        ; $5d01: $ed
    dec l                                         ; $5d02: $2d
    push de                                       ; $5d03: $d5
    ld d, l                                       ; $5d04: $55
    ldh [rNR41], a                                ; $5d05: $e0 $20
    ldh a, [rNR10]                                ; $5d07: $f0 $10
    rst $38                                       ; $5d09: $ff
    rrca                                          ; $5d0a: $0f
    rst $38                                       ; $5d0b: $ff
    jr nz, jr_04f_5ced                            ; $5d0c: $20 $df

    push de                                       ; $5d0e: $d5
    ld e, d                                       ; $5d0f: $5a
    ld e, d                                       ; $5d10: $5a
    ld d, l                                       ; $5d11: $55
    ld d, l                                       ; $5d12: $55
    dec b                                         ; $5d13: $05
    dec b                                         ; $5d14: $05
    nop                                           ; $5d15: $00
    nop                                           ; $5d16: $00
    nop                                           ; $5d17: $00
    nop                                           ; $5d18: $00
    rst $38                                       ; $5d19: $ff
    rst $38                                       ; $5d1a: $ff
    rst $38                                       ; $5d1b: $ff
    sub b                                         ; $5d1c: $90
    ld l, a                                       ; $5d1d: $6f
    ld l, b                                       ; $5d1e: $68
    xor a                                         ; $5d1f: $af
    xor h                                         ; $5d20: $ac
    db $db                                        ; $5d21: $db
    jp c, Jump_04f_5457                           ; $5d22: $da $57 $54

    rlca                                          ; $5d25: $07
    inc b                                         ; $5d26: $04
    rrca                                          ; $5d27: $0f
    ld [$f0ff], sp                                ; $5d28: $08 $ff $f0
    rst $38                                       ; $5d2b: $ff
    nop                                           ; $5d2c: $00
    rst $38                                       ; $5d2d: $ff
    nop                                           ; $5d2e: $00
    rst $38                                       ; $5d2f: $ff
    nop                                           ; $5d30: $00
    rst $38                                       ; $5d31: $ff
    ld [bc], a                                    ; $5d32: $02
    db $fd                                        ; $5d33: $fd
    dec b                                         ; $5d34: $05
    db $fd                                        ; $5d35: $fd
    dec b                                         ; $5d36: $05
    cp $02                                        ; $5d37: $fe $02
    rst $38                                       ; $5d39: $ff
    ld bc, $00ff                                  ; $5d3a: $01 $ff $00
    rst $38                                       ; $5d3d: $ff
    nop                                           ; $5d3e: $00
    rst $38                                       ; $5d3f: $ff
    ld b, b                                       ; $5d40: $40
    cp a                                          ; $5d41: $bf
    xor l                                         ; $5d42: $ad
    ld a, d                                       ; $5d43: $7a
    ld a, d                                       ; $5d44: $7a
    ld d, [hl]                                    ; $5d45: $56
    ld d, [hl]                                    ; $5d46: $56
    nop                                           ; $5d47: $00
    nop                                           ; $5d48: $00
    rst $38                                       ; $5d49: $ff
    rst $38                                       ; $5d4a: $ff
    rst $38                                       ; $5d4b: $ff
    nop                                           ; $5d4c: $00
    rst $38                                       ; $5d4d: $ff
    nop                                           ; $5d4e: $00
    rst $38                                       ; $5d4f: $ff
    nop                                           ; $5d50: $00
    rst $38                                       ; $5d51: $ff
    ld b, b                                       ; $5d52: $40
    cp a                                          ; $5d53: $bf
    and b                                         ; $5d54: $a0
    cp a                                          ; $5d55: $bf
    and b                                         ; $5d56: $a0
    ld a, a                                       ; $5d57: $7f
    ld b, b                                       ; $5d58: $40
    rst $38                                       ; $5d59: $ff
    add b                                         ; $5d5a: $80
    nop                                           ; $5d5b: $00
    nop                                           ; $5d5c: $00
    nop                                           ; $5d5d: $00
    nop                                           ; $5d5e: $00
    nop                                           ; $5d5f: $00
    nop                                           ; $5d60: $00
    nop                                           ; $5d61: $00
    nop                                           ; $5d62: $00
    nop                                           ; $5d63: $00
    nop                                           ; $5d64: $00
    nop                                           ; $5d65: $00
    nop                                           ; $5d66: $00
    nop                                           ; $5d67: $00
    nop                                           ; $5d68: $00
    nop                                           ; $5d69: $00
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
    nop                                           ; $5d74: $00
    nop                                           ; $5d75: $00
    nop                                           ; $5d76: $00
    nop                                           ; $5d77: $00
    nop                                           ; $5d78: $00
    nop                                           ; $5d79: $00
    nop                                           ; $5d7a: $00
    nop                                           ; $5d7b: $00
    nop                                           ; $5d7c: $00
    nop                                           ; $5d7d: $00
    nop                                           ; $5d7e: $00
    nop                                           ; $5d7f: $00
    nop                                           ; $5d80: $00
    nop                                           ; $5d81: $00
    nop                                           ; $5d82: $00
    nop                                           ; $5d83: $00
    nop                                           ; $5d84: $00
    nop                                           ; $5d85: $00
    nop                                           ; $5d86: $00
    nop                                           ; $5d87: $00
    nop                                           ; $5d88: $00
    nop                                           ; $5d89: $00
    nop                                           ; $5d8a: $00
    nop                                           ; $5d8b: $00
    nop                                           ; $5d8c: $00
    nop                                           ; $5d8d: $00
    nop                                           ; $5d8e: $00
    nop                                           ; $5d8f: $00
    nop                                           ; $5d90: $00
    nop                                           ; $5d91: $00
    nop                                           ; $5d92: $00
    nop                                           ; $5d93: $00
    nop                                           ; $5d94: $00
    nop                                           ; $5d95: $00
    nop                                           ; $5d96: $00
    nop                                           ; $5d97: $00
    nop                                           ; $5d98: $00
    nop                                           ; $5d99: $00
    nop                                           ; $5d9a: $00
    nop                                           ; $5d9b: $00
    nop                                           ; $5d9c: $00
    nop                                           ; $5d9d: $00
    nop                                           ; $5d9e: $00
    nop                                           ; $5d9f: $00
    nop                                           ; $5da0: $00
    nop                                           ; $5da1: $00
    nop                                           ; $5da2: $00
    nop                                           ; $5da3: $00
    nop                                           ; $5da4: $00
    nop                                           ; $5da5: $00
    nop                                           ; $5da6: $00
    nop                                           ; $5da7: $00
    nop                                           ; $5da8: $00
    nop                                           ; $5da9: $00
    nop                                           ; $5daa: $00
    nop                                           ; $5dab: $00
    nop                                           ; $5dac: $00
    nop                                           ; $5dad: $00
    nop                                           ; $5dae: $00
    nop                                           ; $5daf: $00
    nop                                           ; $5db0: $00
    nop                                           ; $5db1: $00
    nop                                           ; $5db2: $00
    nop                                           ; $5db3: $00
    nop                                           ; $5db4: $00
    nop                                           ; $5db5: $00
    nop                                           ; $5db6: $00
    nop                                           ; $5db7: $00
    nop                                           ; $5db8: $00
    nop                                           ; $5db9: $00
    nop                                           ; $5dba: $00
    nop                                           ; $5dbb: $00
    nop                                           ; $5dbc: $00
    nop                                           ; $5dbd: $00
    nop                                           ; $5dbe: $00
    nop                                           ; $5dbf: $00
    nop                                           ; $5dc0: $00
    nop                                           ; $5dc1: $00
    nop                                           ; $5dc2: $00
    nop                                           ; $5dc3: $00
    nop                                           ; $5dc4: $00
    nop                                           ; $5dc5: $00
    nop                                           ; $5dc6: $00
    nop                                           ; $5dc7: $00
    nop                                           ; $5dc8: $00
    nop                                           ; $5dc9: $00
    nop                                           ; $5dca: $00
    nop                                           ; $5dcb: $00
    nop                                           ; $5dcc: $00
    nop                                           ; $5dcd: $00
    nop                                           ; $5dce: $00
    nop                                           ; $5dcf: $00
    nop                                           ; $5dd0: $00
    nop                                           ; $5dd1: $00
    nop                                           ; $5dd2: $00
    nop                                           ; $5dd3: $00
    nop                                           ; $5dd4: $00
    nop                                           ; $5dd5: $00
    nop                                           ; $5dd6: $00
    nop                                           ; $5dd7: $00
    nop                                           ; $5dd8: $00
    nop                                           ; $5dd9: $00
    nop                                           ; $5dda: $00
    nop                                           ; $5ddb: $00
    nop                                           ; $5ddc: $00
    nop                                           ; $5ddd: $00
    nop                                           ; $5dde: $00
    nop                                           ; $5ddf: $00
    nop                                           ; $5de0: $00
    nop                                           ; $5de1: $00
    nop                                           ; $5de2: $00
    nop                                           ; $5de3: $00
    nop                                           ; $5de4: $00
    nop                                           ; $5de5: $00
    nop                                           ; $5de6: $00
    nop                                           ; $5de7: $00
    nop                                           ; $5de8: $00
    nop                                           ; $5de9: $00
    nop                                           ; $5dea: $00
    nop                                           ; $5deb: $00
    nop                                           ; $5dec: $00
    nop                                           ; $5ded: $00
    nop                                           ; $5dee: $00
    nop                                           ; $5def: $00
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
    nop                                           ; $5dfa: $00
    nop                                           ; $5dfb: $00
    nop                                           ; $5dfc: $00
    nop                                           ; $5dfd: $00
    nop                                           ; $5dfe: $00
    nop                                           ; $5dff: $00
    nop                                           ; $5e00: $00
    nop                                           ; $5e01: $00
    nop                                           ; $5e02: $00
    nop                                           ; $5e03: $00
    nop                                           ; $5e04: $00
    nop                                           ; $5e05: $00
    nop                                           ; $5e06: $00
    nop                                           ; $5e07: $00
    nop                                           ; $5e08: $00
    nop                                           ; $5e09: $00
    nop                                           ; $5e0a: $00
    nop                                           ; $5e0b: $00
    nop                                           ; $5e0c: $00
    nop                                           ; $5e0d: $00
    nop                                           ; $5e0e: $00
    nop                                           ; $5e0f: $00
    nop                                           ; $5e10: $00
    nop                                           ; $5e11: $00
    nop                                           ; $5e12: $00
    nop                                           ; $5e13: $00
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
    nop                                           ; $5e34: $00
    nop                                           ; $5e35: $00
    nop                                           ; $5e36: $00
    nop                                           ; $5e37: $00
    nop                                           ; $5e38: $00
    nop                                           ; $5e39: $00
    nop                                           ; $5e3a: $00
    nop                                           ; $5e3b: $00
    nop                                           ; $5e3c: $00
    nop                                           ; $5e3d: $00
    nop                                           ; $5e3e: $00
    nop                                           ; $5e3f: $00
    nop                                           ; $5e40: $00
    nop                                           ; $5e41: $00
    nop                                           ; $5e42: $00
    nop                                           ; $5e43: $00
    nop                                           ; $5e44: $00
    nop                                           ; $5e45: $00
    nop                                           ; $5e46: $00
    nop                                           ; $5e47: $00
    nop                                           ; $5e48: $00
    nop                                           ; $5e49: $00
    nop                                           ; $5e4a: $00
    nop                                           ; $5e4b: $00
    nop                                           ; $5e4c: $00
    nop                                           ; $5e4d: $00
    nop                                           ; $5e4e: $00
    nop                                           ; $5e4f: $00
    nop                                           ; $5e50: $00
    nop                                           ; $5e51: $00
    nop                                           ; $5e52: $00
    nop                                           ; $5e53: $00
    nop                                           ; $5e54: $00
    nop                                           ; $5e55: $00
    nop                                           ; $5e56: $00
    nop                                           ; $5e57: $00
    nop                                           ; $5e58: $00
    nop                                           ; $5e59: $00
    nop                                           ; $5e5a: $00
    nop                                           ; $5e5b: $00
    nop                                           ; $5e5c: $00
    nop                                           ; $5e5d: $00
    nop                                           ; $5e5e: $00
    nop                                           ; $5e5f: $00
    nop                                           ; $5e60: $00
    nop                                           ; $5e61: $00
    nop                                           ; $5e62: $00
    nop                                           ; $5e63: $00
    nop                                           ; $5e64: $00
    nop                                           ; $5e65: $00
    nop                                           ; $5e66: $00
    nop                                           ; $5e67: $00
    nop                                           ; $5e68: $00
    nop                                           ; $5e69: $00
    nop                                           ; $5e6a: $00
    nop                                           ; $5e6b: $00
    nop                                           ; $5e6c: $00
    nop                                           ; $5e6d: $00
    nop                                           ; $5e6e: $00
    nop                                           ; $5e6f: $00
    nop                                           ; $5e70: $00
    nop                                           ; $5e71: $00
    nop                                           ; $5e72: $00
    nop                                           ; $5e73: $00
    nop                                           ; $5e74: $00
    nop                                           ; $5e75: $00
    nop                                           ; $5e76: $00
    nop                                           ; $5e77: $00
    nop                                           ; $5e78: $00
    nop                                           ; $5e79: $00
    nop                                           ; $5e7a: $00
    nop                                           ; $5e7b: $00
    nop                                           ; $5e7c: $00
    nop                                           ; $5e7d: $00
    nop                                           ; $5e7e: $00
    nop                                           ; $5e7f: $00
    nop                                           ; $5e80: $00
    nop                                           ; $5e81: $00
    nop                                           ; $5e82: $00
    nop                                           ; $5e83: $00
    nop                                           ; $5e84: $00
    nop                                           ; $5e85: $00
    nop                                           ; $5e86: $00
    nop                                           ; $5e87: $00
    nop                                           ; $5e88: $00
    nop                                           ; $5e89: $00
    nop                                           ; $5e8a: $00
    nop                                           ; $5e8b: $00
    nop                                           ; $5e8c: $00
    nop                                           ; $5e8d: $00
    nop                                           ; $5e8e: $00
    nop                                           ; $5e8f: $00
    nop                                           ; $5e90: $00
    nop                                           ; $5e91: $00
    nop                                           ; $5e92: $00
    nop                                           ; $5e93: $00
    nop                                           ; $5e94: $00
    nop                                           ; $5e95: $00
    nop                                           ; $5e96: $00
    nop                                           ; $5e97: $00
    nop                                           ; $5e98: $00
    nop                                           ; $5e99: $00
    nop                                           ; $5e9a: $00
    nop                                           ; $5e9b: $00
    nop                                           ; $5e9c: $00
    nop                                           ; $5e9d: $00
    nop                                           ; $5e9e: $00
    nop                                           ; $5e9f: $00
    nop                                           ; $5ea0: $00
    nop                                           ; $5ea1: $00
    nop                                           ; $5ea2: $00
    nop                                           ; $5ea3: $00
    nop                                           ; $5ea4: $00
    nop                                           ; $5ea5: $00
    nop                                           ; $5ea6: $00
    nop                                           ; $5ea7: $00
    nop                                           ; $5ea8: $00
    nop                                           ; $5ea9: $00
    nop                                           ; $5eaa: $00
    nop                                           ; $5eab: $00
    nop                                           ; $5eac: $00
    nop                                           ; $5ead: $00
    nop                                           ; $5eae: $00
    nop                                           ; $5eaf: $00
    nop                                           ; $5eb0: $00
    nop                                           ; $5eb1: $00
    nop                                           ; $5eb2: $00
    nop                                           ; $5eb3: $00
    nop                                           ; $5eb4: $00
    nop                                           ; $5eb5: $00
    nop                                           ; $5eb6: $00
    nop                                           ; $5eb7: $00
    nop                                           ; $5eb8: $00
    nop                                           ; $5eb9: $00
    nop                                           ; $5eba: $00
    nop                                           ; $5ebb: $00
    nop                                           ; $5ebc: $00
    nop                                           ; $5ebd: $00
    nop                                           ; $5ebe: $00
    nop                                           ; $5ebf: $00
    nop                                           ; $5ec0: $00
    nop                                           ; $5ec1: $00
    nop                                           ; $5ec2: $00
    nop                                           ; $5ec3: $00
    nop                                           ; $5ec4: $00
    nop                                           ; $5ec5: $00
    nop                                           ; $5ec6: $00
    nop                                           ; $5ec7: $00
    nop                                           ; $5ec8: $00
    nop                                           ; $5ec9: $00
    nop                                           ; $5eca: $00
    nop                                           ; $5ecb: $00
    nop                                           ; $5ecc: $00
    nop                                           ; $5ecd: $00
    nop                                           ; $5ece: $00
    nop                                           ; $5ecf: $00
    nop                                           ; $5ed0: $00
    nop                                           ; $5ed1: $00
    nop                                           ; $5ed2: $00
    nop                                           ; $5ed3: $00
    nop                                           ; $5ed4: $00
    nop                                           ; $5ed5: $00
    nop                                           ; $5ed6: $00
    nop                                           ; $5ed7: $00
    nop                                           ; $5ed8: $00
    nop                                           ; $5ed9: $00
    nop                                           ; $5eda: $00
    nop                                           ; $5edb: $00
    nop                                           ; $5edc: $00
    nop                                           ; $5edd: $00
    nop                                           ; $5ede: $00
    nop                                           ; $5edf: $00
    nop                                           ; $5ee0: $00
    nop                                           ; $5ee1: $00
    nop                                           ; $5ee2: $00
    nop                                           ; $5ee3: $00
    nop                                           ; $5ee4: $00
    nop                                           ; $5ee5: $00
    nop                                           ; $5ee6: $00
    nop                                           ; $5ee7: $00
    nop                                           ; $5ee8: $00
    nop                                           ; $5ee9: $00
    nop                                           ; $5eea: $00
    nop                                           ; $5eeb: $00
    nop                                           ; $5eec: $00
    nop                                           ; $5eed: $00
    nop                                           ; $5eee: $00
    nop                                           ; $5eef: $00
    nop                                           ; $5ef0: $00
    nop                                           ; $5ef1: $00
    nop                                           ; $5ef2: $00
    nop                                           ; $5ef3: $00
    nop                                           ; $5ef4: $00
    nop                                           ; $5ef5: $00
    nop                                           ; $5ef6: $00
    nop                                           ; $5ef7: $00
    nop                                           ; $5ef8: $00
    nop                                           ; $5ef9: $00
    nop                                           ; $5efa: $00
    nop                                           ; $5efb: $00
    nop                                           ; $5efc: $00
    nop                                           ; $5efd: $00
    nop                                           ; $5efe: $00
    nop                                           ; $5eff: $00
    nop                                           ; $5f00: $00
    nop                                           ; $5f01: $00
    nop                                           ; $5f02: $00
    nop                                           ; $5f03: $00
    nop                                           ; $5f04: $00
    nop                                           ; $5f05: $00
    nop                                           ; $5f06: $00
    nop                                           ; $5f07: $00
    nop                                           ; $5f08: $00
    nop                                           ; $5f09: $00
    nop                                           ; $5f0a: $00
    nop                                           ; $5f0b: $00
    nop                                           ; $5f0c: $00
    nop                                           ; $5f0d: $00
    nop                                           ; $5f0e: $00
    nop                                           ; $5f0f: $00
    nop                                           ; $5f10: $00
    nop                                           ; $5f11: $00
    nop                                           ; $5f12: $00
    nop                                           ; $5f13: $00
    nop                                           ; $5f14: $00
    nop                                           ; $5f15: $00
    nop                                           ; $5f16: $00
    nop                                           ; $5f17: $00
    nop                                           ; $5f18: $00
    nop                                           ; $5f19: $00
    nop                                           ; $5f1a: $00
    nop                                           ; $5f1b: $00
    nop                                           ; $5f1c: $00
    nop                                           ; $5f1d: $00
    nop                                           ; $5f1e: $00
    nop                                           ; $5f1f: $00
    nop                                           ; $5f20: $00
    nop                                           ; $5f21: $00
    nop                                           ; $5f22: $00
    nop                                           ; $5f23: $00
    nop                                           ; $5f24: $00
    nop                                           ; $5f25: $00
    nop                                           ; $5f26: $00
    nop                                           ; $5f27: $00
    nop                                           ; $5f28: $00
    nop                                           ; $5f29: $00
    nop                                           ; $5f2a: $00
    nop                                           ; $5f2b: $00
    nop                                           ; $5f2c: $00
    nop                                           ; $5f2d: $00
    nop                                           ; $5f2e: $00
    nop                                           ; $5f2f: $00
    nop                                           ; $5f30: $00
    nop                                           ; $5f31: $00
    nop                                           ; $5f32: $00
    nop                                           ; $5f33: $00
    nop                                           ; $5f34: $00
    nop                                           ; $5f35: $00
    nop                                           ; $5f36: $00
    nop                                           ; $5f37: $00
    nop                                           ; $5f38: $00
    nop                                           ; $5f39: $00
    nop                                           ; $5f3a: $00
    nop                                           ; $5f3b: $00
    nop                                           ; $5f3c: $00
    nop                                           ; $5f3d: $00
    nop                                           ; $5f3e: $00
    nop                                           ; $5f3f: $00
    nop                                           ; $5f40: $00
    nop                                           ; $5f41: $00
    nop                                           ; $5f42: $00
    nop                                           ; $5f43: $00
    nop                                           ; $5f44: $00
    nop                                           ; $5f45: $00
    nop                                           ; $5f46: $00
    nop                                           ; $5f47: $00
    nop                                           ; $5f48: $00
    nop                                           ; $5f49: $00
    nop                                           ; $5f4a: $00
    nop                                           ; $5f4b: $00
    nop                                           ; $5f4c: $00
    nop                                           ; $5f4d: $00
    nop                                           ; $5f4e: $00
    nop                                           ; $5f4f: $00
    nop                                           ; $5f50: $00
    nop                                           ; $5f51: $00
    nop                                           ; $5f52: $00
    nop                                           ; $5f53: $00
    nop                                           ; $5f54: $00
    nop                                           ; $5f55: $00
    nop                                           ; $5f56: $00
    nop                                           ; $5f57: $00
    nop                                           ; $5f58: $00
    nop                                           ; $5f59: $00
    nop                                           ; $5f5a: $00
    nop                                           ; $5f5b: $00
    nop                                           ; $5f5c: $00
    nop                                           ; $5f5d: $00
    nop                                           ; $5f5e: $00
    nop                                           ; $5f5f: $00
    nop                                           ; $5f60: $00
    nop                                           ; $5f61: $00
    nop                                           ; $5f62: $00
    nop                                           ; $5f63: $00
    nop                                           ; $5f64: $00
    nop                                           ; $5f65: $00
    nop                                           ; $5f66: $00
    nop                                           ; $5f67: $00
    nop                                           ; $5f68: $00
    nop                                           ; $5f69: $00
    nop                                           ; $5f6a: $00
    nop                                           ; $5f6b: $00
    nop                                           ; $5f6c: $00
    nop                                           ; $5f6d: $00
    nop                                           ; $5f6e: $00
    nop                                           ; $5f6f: $00
    nop                                           ; $5f70: $00
    nop                                           ; $5f71: $00
    nop                                           ; $5f72: $00
    nop                                           ; $5f73: $00
    nop                                           ; $5f74: $00
    nop                                           ; $5f75: $00
    nop                                           ; $5f76: $00
    nop                                           ; $5f77: $00
    nop                                           ; $5f78: $00
    nop                                           ; $5f79: $00
    nop                                           ; $5f7a: $00
    nop                                           ; $5f7b: $00
    nop                                           ; $5f7c: $00
    nop                                           ; $5f7d: $00
    nop                                           ; $5f7e: $00
    nop                                           ; $5f7f: $00
    nop                                           ; $5f80: $00
    nop                                           ; $5f81: $00
    nop                                           ; $5f82: $00
    nop                                           ; $5f83: $00
    nop                                           ; $5f84: $00
    nop                                           ; $5f85: $00
    nop                                           ; $5f86: $00
    nop                                           ; $5f87: $00
    nop                                           ; $5f88: $00
    nop                                           ; $5f89: $00
    nop                                           ; $5f8a: $00
    nop                                           ; $5f8b: $00
    nop                                           ; $5f8c: $00
    nop                                           ; $5f8d: $00
    nop                                           ; $5f8e: $00
    nop                                           ; $5f8f: $00
    nop                                           ; $5f90: $00
    nop                                           ; $5f91: $00
    nop                                           ; $5f92: $00
    nop                                           ; $5f93: $00
    nop                                           ; $5f94: $00
    nop                                           ; $5f95: $00
    nop                                           ; $5f96: $00
    nop                                           ; $5f97: $00
    nop                                           ; $5f98: $00
    nop                                           ; $5f99: $00
    nop                                           ; $5f9a: $00
    nop                                           ; $5f9b: $00
    nop                                           ; $5f9c: $00
    nop                                           ; $5f9d: $00
    nop                                           ; $5f9e: $00
    nop                                           ; $5f9f: $00
    nop                                           ; $5fa0: $00
    nop                                           ; $5fa1: $00
    nop                                           ; $5fa2: $00
    nop                                           ; $5fa3: $00
    nop                                           ; $5fa4: $00
    nop                                           ; $5fa5: $00
    nop                                           ; $5fa6: $00
    nop                                           ; $5fa7: $00
    nop                                           ; $5fa8: $00
    nop                                           ; $5fa9: $00
    nop                                           ; $5faa: $00
    nop                                           ; $5fab: $00
    nop                                           ; $5fac: $00
    nop                                           ; $5fad: $00
    nop                                           ; $5fae: $00
    nop                                           ; $5faf: $00
    nop                                           ; $5fb0: $00
    nop                                           ; $5fb1: $00
    nop                                           ; $5fb2: $00
    nop                                           ; $5fb3: $00
    nop                                           ; $5fb4: $00
    nop                                           ; $5fb5: $00
    nop                                           ; $5fb6: $00
    nop                                           ; $5fb7: $00
    nop                                           ; $5fb8: $00
    nop                                           ; $5fb9: $00
    nop                                           ; $5fba: $00
    nop                                           ; $5fbb: $00
    nop                                           ; $5fbc: $00
    nop                                           ; $5fbd: $00
    nop                                           ; $5fbe: $00
    nop                                           ; $5fbf: $00
    nop                                           ; $5fc0: $00
    nop                                           ; $5fc1: $00
    nop                                           ; $5fc2: $00
    nop                                           ; $5fc3: $00
    nop                                           ; $5fc4: $00
    nop                                           ; $5fc5: $00
    nop                                           ; $5fc6: $00
    nop                                           ; $5fc7: $00
    nop                                           ; $5fc8: $00
    nop                                           ; $5fc9: $00
    nop                                           ; $5fca: $00
    nop                                           ; $5fcb: $00
    nop                                           ; $5fcc: $00
    nop                                           ; $5fcd: $00
    nop                                           ; $5fce: $00
    nop                                           ; $5fcf: $00
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
    nop                                           ; $5fe4: $00
    nop                                           ; $5fe5: $00
    nop                                           ; $5fe6: $00
    nop                                           ; $5fe7: $00
    nop                                           ; $5fe8: $00
    nop                                           ; $5fe9: $00
    nop                                           ; $5fea: $00
    nop                                           ; $5feb: $00
    nop                                           ; $5fec: $00
    nop                                           ; $5fed: $00
    nop                                           ; $5fee: $00
    nop                                           ; $5fef: $00
    nop                                           ; $5ff0: $00
    nop                                           ; $5ff1: $00
    nop                                           ; $5ff2: $00
    nop                                           ; $5ff3: $00
    nop                                           ; $5ff4: $00
    nop                                           ; $5ff5: $00
    nop                                           ; $5ff6: $00
    nop                                           ; $5ff7: $00
    nop                                           ; $5ff8: $00
    nop                                           ; $5ff9: $00
    nop                                           ; $5ffa: $00
    ld d, e                                       ; $5ffb: $53
    ld d, h                                       ; $5ffc: $54
    ld d, l                                       ; $5ffd: $55
    ld d, b                                       ; $5ffe: $50
    ld d, c                                       ; $5fff: $51
    ld d, d                                       ; $6000: $52
    ld a, [hl-]                                   ; $6001: $3a
    dec sp                                        ; $6002: $3b
    inc a                                         ; $6003: $3c
    dec a                                         ; $6004: $3d
    ld a, $4a                                     ; $6005: $3e $4a
    ld c, e                                       ; $6007: $4b
    ld c, h                                       ; $6008: $4c
    ld c, l                                       ; $6009: $4d
    ld c, [hl]                                    ; $600a: $4e
    dec [hl]                                      ; $600b: $35
    ld [hl], $37                                  ; $600c: $36 $37
    jr c, @+$3b                                   ; $600e: $38 $39

    ld b, l                                       ; $6010: $45
    ld b, [hl]                                    ; $6011: $46
    ld b, a                                       ; $6012: $47
    ld c, b                                       ; $6013: $48
    ld c, c                                       ; $6014: $49
    jr nc, jr_04f_6048                            ; $6015: $30 $31

    ld [hl-], a                                   ; $6017: $32
    inc sp                                        ; $6018: $33
    inc [hl]                                      ; $6019: $34
    ld b, b                                       ; $601a: $40
    ld b, c                                       ; $601b: $41
    ld b, d                                       ; $601c: $42
    ld b, e                                       ; $601d: $43
    ld b, h                                       ; $601e: $44
    rlca                                          ; $601f: $07
    ld [$0a09], sp                                ; $6020: $08 $09 $0a
    dec bc                                        ; $6023: $0b
    inc c                                         ; $6024: $0c
    dec c                                         ; $6025: $0d
    rla                                           ; $6026: $17
    jr @+$1b                                      ; $6027: $18 $19

    ld a, [de]                                    ; $6029: $1a
    dec de                                        ; $602a: $1b
    inc e                                         ; $602b: $1c
    dec e                                         ; $602c: $1d
    daa                                           ; $602d: $27
    jr z, jr_04f_6059                             ; $602e: $28 $29

    ld a, [hl+]                                   ; $6030: $2a
    dec hl                                        ; $6031: $2b
    inc l                                         ; $6032: $2c
    dec l                                         ; $6033: $2d
    nop                                           ; $6034: $00
    ld bc, $0302                                  ; $6035: $01 $02 $03
    inc b                                         ; $6038: $04
    dec b                                         ; $6039: $05
    ld b, $10                                     ; $603a: $06 $10
    ld de, $1312                                  ; $603c: $11 $12 $13
    inc d                                         ; $603f: $14
    dec d                                         ; $6040: $15
    ld d, $20                                     ; $6041: $16 $20
    ld hl, $2322                                  ; $6043: $21 $22 $23
    inc h                                         ; $6046: $24
    dec h                                         ; $6047: $25

jr_04f_6048:
    ld h, $ff                                     ; $6048: $26 $ff
    ld sp, hl                                     ; $604a: $f9
    inc bc                                        ; $604b: $03
    ld bc, $5ffb                                  ; $604c: $01 $fb $5f
    nop                                           ; $604f: $00
    nop                                           ; $6050: $00
    rst $38                                       ; $6051: $ff
    ld sp, hl                                     ; $6052: $f9
    inc bc                                        ; $6053: $03
    ld bc, $5ffb                                  ; $6054: $01 $fb $5f
    nop                                           ; $6057: $00
    nop                                           ; $6058: $00

jr_04f_6059:
    rst $38                                       ; $6059: $ff
    ld sp, hl                                     ; $605a: $f9
    inc bc                                        ; $605b: $03
    ld bc, $5ffe                                  ; $605c: $01 $fe $5f
    nop                                           ; $605f: $00
    nop                                           ; $6060: $00
    cp $f1                                        ; $6061: $fe $f1
    dec b                                         ; $6063: $05
    ld [bc], a                                    ; $6064: $02
    ld bc, $0060                                  ; $6065: $01 $60 $00
    nop                                           ; $6068: $00
    cp $f1                                        ; $6069: $fe $f1
    dec b                                         ; $606b: $05
    ld [bc], a                                    ; $606c: $02
    dec bc                                        ; $606d: $0b
    ld h, b                                       ; $606e: $60
    nop                                           ; $606f: $00
    nop                                           ; $6070: $00
    cp $f1                                        ; $6071: $fe $f1
    dec b                                         ; $6073: $05
    ld [bc], a                                    ; $6074: $02
    dec d                                         ; $6075: $15
    ld h, b                                       ; $6076: $60
    nop                                           ; $6077: $00
    nop                                           ; $6078: $00
    db $fd                                        ; $6079: $fd
    jp hl                                         ; $607a: $e9


    rlca                                          ; $607b: $07
    inc bc                                        ; $607c: $03
    rra                                           ; $607d: $1f
    ld h, b                                       ; $607e: $60
    nop                                           ; $607f: $00
    nop                                           ; $6080: $00
    db $fd                                        ; $6081: $fd
    jp hl                                         ; $6082: $e9


    rlca                                          ; $6083: $07
    inc bc                                        ; $6084: $03
    inc [hl]                                      ; $6085: $34
    ld h, b                                       ; $6086: $60
    nop                                           ; $6087: $00
    nop                                           ; $6088: $00

Call_04f_6089:
    ld hl, $da00                                  ; $6089: $21 $00 $da

jr_04f_608c:
    ld a, [hl+]                                   ; $608c: $2a
    cp $ff                                        ; $608d: $fe $ff
    jr z, jr_04f_60ae                             ; $608f: $28 $1d

    ld e, a                                       ; $6091: $5f
    ld a, [hl+]                                   ; $6092: $2a
    ld d, a                                       ; $6093: $57
    ld a, [hl+]                                   ; $6094: $2a
    ld b, a                                       ; $6095: $47
    ld a, e                                       ; $6096: $7b
    cp $03                                        ; $6097: $fe $03
    jr z, jr_04f_609f                             ; $6099: $28 $04

    cp $02                                        ; $609b: $fe $02
    jr nz, jr_04f_60ac                            ; $609d: $20 $0d

jr_04f_609f:
    ld a, b                                       ; $609f: $78
    rrca                                          ; $60a0: $0f
    rrca                                          ; $60a1: $0f
    rrca                                          ; $60a2: $0f
    and $07                                       ; $60a3: $e6 $07
    ld e, $07                                     ; $60a5: $1e $07
    push hl                                       ; $60a7: $e5
    call Call_04f_60af                            ; $60a8: $cd $af $60
    pop hl                                        ; $60ab: $e1

jr_04f_60ac:
    jr jr_04f_608c                                ; $60ac: $18 $de

jr_04f_60ae:
    ret                                           ; $60ae: $c9


Call_04f_60af:
    add a                                         ; $60af: $87
    add a                                         ; $60b0: $87
    add a                                         ; $60b1: $87
    ld hl, $611c                                  ; $60b2: $21 $1c $61
    add l                                         ; $60b5: $85
    ld l, a                                       ; $60b6: $6f
    jr nc, jr_04f_60ba                            ; $60b7: $30 $01

    inc h                                         ; $60b9: $24

jr_04f_60ba:
    ld a, [hl+]                                   ; $60ba: $2a
    add d                                         ; $60bb: $82
    ld d, a                                       ; $60bc: $57
    ld a, [hl+]                                   ; $60bd: $2a
    add e                                         ; $60be: $83
    ld b, a                                       ; $60bf: $47
    ld a, [hl+]                                   ; $60c0: $2a
    ld e, a                                       ; $60c1: $5f
    ld a, [hl+]                                   ; $60c2: $2a
    ld c, a                                       ; $60c3: $4f
    ld a, [hl+]                                   ; $60c4: $2a
    ld h, [hl]                                    ; $60c5: $66
    ld l, a                                       ; $60c6: $6f

jr_04f_60c7:
    push de                                       ; $60c7: $d5

jr_04f_60c8:
    ld a, [hl]                                    ; $60c8: $7e
    and a                                         ; $60c9: $a7
    jr z, jr_04f_6111                             ; $60ca: $28 $45

    bit 7, d                                      ; $60cc: $cb $7a
    jr nz, jr_04f_6111                            ; $60ce: $20 $41

    ld a, d                                       ; $60d0: $7a
    cp $14                                        ; $60d1: $fe $14
    jr nc, jr_04f_6111                            ; $60d3: $30 $3c

    push bc                                       ; $60d5: $c5
    push de                                       ; $60d6: $d5
    push hl                                       ; $60d7: $e5
    ld c, d                                       ; $60d8: $4a
    ld l, [hl]                                    ; $60d9: $6e
    ld h, $00                                     ; $60da: $26 $00
    add hl, hl                                    ; $60dc: $29
    add hl, hl                                    ; $60dd: $29
    add hl, hl                                    ; $60de: $29
    add hl, hl                                    ; $60df: $29
    ld de, $424e                                  ; $60e0: $11 $4e $42
    add hl, de                                    ; $60e3: $19
    ld e, l                                       ; $60e4: $5d
    ld d, h                                       ; $60e5: $54
    ld a, c                                       ; $60e6: $79
    add a                                         ; $60e7: $87
    add a                                         ; $60e8: $87
    add a                                         ; $60e9: $87
    add b                                         ; $60ea: $80
    ld l, a                                       ; $60eb: $6f
    ld h, $00                                     ; $60ec: $26 $00
    add hl, hl                                    ; $60ee: $29
    add hl, hl                                    ; $60ef: $29
    add hl, hl                                    ; $60f0: $29
    add hl, hl                                    ; $60f1: $29
    ld bc, $d000                                  ; $60f2: $01 $00 $d0
    add hl, bc                                    ; $60f5: $09
    call Call_04f_6169                            ; $60f6: $cd $69 $61
    call Call_04f_6169                            ; $60f9: $cd $69 $61
    call Call_04f_6169                            ; $60fc: $cd $69 $61
    call Call_04f_6169                            ; $60ff: $cd $69 $61
    call Call_04f_6169                            ; $6102: $cd $69 $61
    call Call_04f_6169                            ; $6105: $cd $69 $61
    call Call_04f_6169                            ; $6108: $cd $69 $61
    call Call_04f_6169                            ; $610b: $cd $69 $61
    pop hl                                        ; $610e: $e1
    pop de                                        ; $610f: $d1
    pop bc                                        ; $6110: $c1

jr_04f_6111:
    inc hl                                        ; $6111: $23
    inc d                                         ; $6112: $14
    dec e                                         ; $6113: $1d
    jr nz, jr_04f_60c8                            ; $6114: $20 $b2

    pop de                                        ; $6116: $d1
    inc b                                         ; $6117: $04
    dec c                                         ; $6118: $0d
    jr nz, jr_04f_60c7                            ; $6119: $20 $ac

    ret                                           ; $611b: $c9


    rst $38                                       ; $611c: $ff
    cp $03                                        ; $611d: $fe $03
    inc bc                                        ; $611f: $03
    ld c, [hl]                                    ; $6120: $4e
    ld d, d                                       ; $6121: $52
    nop                                           ; $6122: $00
    nop                                           ; $6123: $00
    rst $38                                       ; $6124: $ff
    ei                                            ; $6125: $fb
    inc bc                                        ; $6126: $03
    ld b, $57                                     ; $6127: $06 $57
    ld d, d                                       ; $6129: $52
    nop                                           ; $612a: $00
    nop                                           ; $612b: $00
    cp $f9                                        ; $612c: $fe $f9
    dec b                                         ; $612e: $05
    ld [$5269], sp                                ; $612f: $08 $69 $52
    nop                                           ; $6132: $00
    nop                                           ; $6133: $00
    db $fd                                        ; $6134: $fd
    ld sp, hl                                     ; $6135: $f9
    rlca                                          ; $6136: $07
    ld [$5291], sp                                ; $6137: $08 $91 $52
    nop                                           ; $613a: $00
    nop                                           ; $613b: $00
    db $fc                                        ; $613c: $fc
    ld sp, hl                                     ; $613d: $f9
    add hl, bc                                    ; $613e: $09
    ld [$52c9], sp                                ; $613f: $08 $c9 $52
    nop                                           ; $6142: $00
    nop                                           ; $6143: $00
    db $fc                                        ; $6144: $fc
    ld sp, hl                                     ; $6145: $f9
    add hl, bc                                    ; $6146: $09
    ld [$5311], sp                                ; $6147: $08 $11 $53
    nop                                           ; $614a: $00
    nop                                           ; $614b: $00
    ei                                            ; $614c: $fb
    ld sp, hl                                     ; $614d: $f9
    dec bc                                        ; $614e: $0b
    ld [$5359], sp                                ; $614f: $08 $59 $53
    nop                                           ; $6152: $00
    nop                                           ; $6153: $00
    ei                                            ; $6154: $fb
    ld sp, hl                                     ; $6155: $f9
    dec bc                                        ; $6156: $0b
    ld [$5359], sp                                ; $6157: $08 $59 $53
    nop                                           ; $615a: $00
    nop                                           ; $615b: $00

Call_04f_615c:
    ld a, [de]                                    ; $615c: $1a
    ld c, a                                       ; $615d: $4f
    inc de                                        ; $615e: $13
    ld a, [de]                                    ; $615f: $1a
    ld b, a                                       ; $6160: $47
    inc de                                        ; $6161: $13
    push de                                       ; $6162: $d5
    xor c                                         ; $6163: $a9
    ld e, a                                       ; $6164: $5f
    cpl                                           ; $6165: $2f
    ld d, a                                       ; $6166: $57
    jr jr_04f_6174                                ; $6167: $18 $0b

Call_04f_6169:
    ld a, [de]                                    ; $6169: $1a
    ld c, a                                       ; $616a: $4f
    inc de                                        ; $616b: $13
    ld a, [de]                                    ; $616c: $1a
    ld b, a                                       ; $616d: $47
    inc de                                        ; $616e: $13
    push de                                       ; $616f: $d5
    or c                                          ; $6170: $b1
    ld d, a                                       ; $6171: $57
    cpl                                           ; $6172: $2f
    ld e, a                                       ; $6173: $5f

jr_04f_6174:
    ld a, d                                       ; $6174: $7a
    and b                                         ; $6175: $a0
    ld b, a                                       ; $6176: $47
    ld a, d                                       ; $6177: $7a
    and c                                         ; $6178: $a1
    ld c, a                                       ; $6179: $4f
    ld a, [hl]                                    ; $617a: $7e
    and e                                         ; $617b: $a3
    or c                                          ; $617c: $b1
    ld [hl+], a                                   ; $617d: $22
    ld a, [hl]                                    ; $617e: $7e
    and e                                         ; $617f: $a3
    or b                                          ; $6180: $b0
    ld [hl+], a                                   ; $6181: $22
    pop de                                        ; $6182: $d1
    ret                                           ; $6183: $c9


    ld hl, $62a7                                  ; $6184: $21 $a7 $62
    call Call_000_2449                            ; $6187: $cd $49 $24
    ret                                           ; $618a: $c9


jr_04f_618b:
    call Call_000_2e3b                            ; $618b: $cd $3b $2e
    ld hl, $caa0                                  ; $618e: $21 $a0 $ca
    ld a, [hl+]                                   ; $6191: $2a
    or [hl]                                       ; $6192: $b6
    jr nz, jr_04f_618b                            ; $6193: $20 $f6

    ld hl, $62a7                                  ; $6195: $21 $a7 $62
    call Call_000_2449                            ; $6198: $cd $49 $24
    ret                                           ; $619b: $c9


    rst $08                                       ; $619c: $cf

    db $8a

    push af                                       ; $619e: $f5
    push bc                                       ; $619f: $c5
    push de                                       ; $61a0: $d5
    push hl                                       ; $61a1: $e5
    ld a, $64                                     ; $61a2: $3e $64
    ld hl, $62a7                                  ; $61a4: $21 $a7 $62
    call Call_000_23e8                            ; $61a7: $cd $e8 $23
    pop hl                                        ; $61aa: $e1
    pop de                                        ; $61ab: $d1
    pop bc                                        ; $61ac: $c1
    pop af                                        ; $61ad: $f1
    push de                                       ; $61ae: $d5
    push af                                       ; $61af: $f5
    ld e, c                                       ; $61b0: $59
    ld bc, $caa0                                  ; $61b1: $01 $a0 $ca
    ld hl, $000a                                  ; $61b4: $21 $0a $00
    add hl, bc                                    ; $61b7: $09
    ld [hl], e                                    ; $61b8: $73
    ld h, $00                                     ; $61b9: $26 $00
    ld l, e                                       ; $61bb: $6b
    add hl, hl                                    ; $61bc: $29
    add hl, hl                                    ; $61bd: $29
    add hl, hl                                    ; $61be: $29
    add hl, hl                                    ; $61bf: $29
    set 7, h                                      ; $61c0: $cb $fc
    ld d, h                                       ; $61c2: $54
    ld e, l                                       ; $61c3: $5d
    ld hl, $0006                                  ; $61c4: $21 $06 $00
    add hl, bc                                    ; $61c7: $09
    ld [hl], e                                    ; $61c8: $73
    inc hl                                        ; $61c9: $23
    ld [hl], d                                    ; $61ca: $72
    pop af                                        ; $61cb: $f1
    pop de                                        ; $61cc: $d1
    push af                                       ; $61cd: $f5
    ld hl, $0008                                  ; $61ce: $21 $08 $00
    add hl, bc                                    ; $61d1: $09
    ld [hl], d                                    ; $61d2: $72
    inc hl                                        ; $61d3: $23
    ld [hl], e                                    ; $61d4: $73
    push af                                       ; $61d5: $f5
    pop af                                        ; $61d6: $f1
    ld h, $00                                     ; $61d7: $26 $00
    ld l, a                                       ; $61d9: $6f
    add hl, hl                                    ; $61da: $29
    ld de, $632b                                  ; $61db: $11 $2b $63
    add hl, de                                    ; $61de: $19
    ld a, [hl+]                                   ; $61df: $2a
    ld h, [hl]                                    ; $61e0: $66
    ld l, a                                       ; $61e1: $6f
    ld d, h                                       ; $61e2: $54
    ld e, l                                       ; $61e3: $5d
    ld l, c                                       ; $61e4: $69
    ld h, b                                       ; $61e5: $60
    ld [hl], e                                    ; $61e6: $73
    inc hl                                        ; $61e7: $23
    ld [hl], d                                    ; $61e8: $72
    inc hl                                        ; $61e9: $23
    xor a                                         ; $61ea: $af
    ld [hl+], a                                   ; $61eb: $22
    ld [hl+], a                                   ; $61ec: $22
    pop af                                        ; $61ed: $f1
    push af                                       ; $61ee: $f5
    ld h, $00                                     ; $61ef: $26 $00
    ld l, a                                       ; $61f1: $6f
    add hl, hl                                    ; $61f2: $29
    ld de, $6569                                  ; $61f3: $11 $69 $65
    add hl, de                                    ; $61f6: $19
    ld a, [hl+]                                   ; $61f7: $2a
    ld h, [hl]                                    ; $61f8: $66
    ld l, a                                       ; $61f9: $6f
    ld d, h                                       ; $61fa: $54
    ld e, l                                       ; $61fb: $5d
    ld hl, $0004                                  ; $61fc: $21 $04 $00
    add hl, bc                                    ; $61ff: $09
    ld [hl], e                                    ; $6200: $73
    inc hl                                        ; $6201: $23
    ld [hl], d                                    ; $6202: $72
    pop af                                        ; $6203: $f1
    ld h, $00                                     ; $6204: $26 $00
    ld l, a                                       ; $6206: $6f
    add hl, hl                                    ; $6207: $29
    add hl, hl                                    ; $6208: $29
    add hl, hl                                    ; $6209: $29
    add hl, hl                                    ; $620a: $29
    add hl, hl                                    ; $620b: $29
    ld de, $63a9                                  ; $620c: $11 $a9 $63
    add hl, de                                    ; $620f: $19
    ld a, [$c836]                                 ; $6210: $fa $36 $c8
    or a                                          ; $6213: $b7
    jr z, jr_04f_624a                             ; $6214: $28 $34

    cp $01                                        ; $6216: $fe $01
    jr z, jr_04f_6243                             ; $6218: $28 $29

    cp $02                                        ; $621a: $fe $02
    jr z, jr_04f_6243                             ; $621c: $28 $25

    cp $06                                        ; $621e: $fe $06
    jr z, jr_04f_6243                             ; $6220: $28 $21

    cp $0a                                        ; $6222: $fe $0a
    jr z, jr_04f_6243                             ; $6224: $28 $1d

    cp $07                                        ; $6226: $fe $07
    jr z, jr_04f_625e                             ; $6228: $28 $34

    cp $09                                        ; $622a: $fe $09
    jr z, jr_04f_6268                             ; $622c: $28 $3a

    call Call_04f_6272                            ; $622e: $cd $72 $62
    cp $03                                        ; $6231: $fe $03
    jr z, jr_04f_6243                             ; $6233: $28 $0e

    call Call_04f_6272                            ; $6235: $cd $72 $62
    cp $04                                        ; $6238: $fe $04
    jr z, jr_04f_6243                             ; $623a: $28 $07

    call Call_04f_6272                            ; $623c: $cd $72 $62
    cp $05                                        ; $623f: $fe $05
    jr z, jr_04f_6243                             ; $6241: $28 $00

jr_04f_6243:
    ld de, $0f01                                  ; $6243: $11 $01 $0f
    call Call_000_056c                            ; $6246: $cd $6c $05
    ret                                           ; $6249: $c9


jr_04f_624a:
    ld a, [$c837]                                 ; $624a: $fa $37 $c8
    cp $0a                                        ; $624d: $fe $0a
    jr nz, jr_04f_6257                            ; $624f: $20 $06

    call Call_04f_6272                            ; $6251: $cd $72 $62
    call Call_04f_6272                            ; $6254: $cd $72 $62

jr_04f_6257:
    ld de, $0f01                                  ; $6257: $11 $01 $0f
    call Call_000_056c                            ; $625a: $cd $6c $05
    ret                                           ; $625d: $c9


jr_04f_625e:
    call Call_04f_627b                            ; $625e: $cd $7b $62
    ld de, $0f01                                  ; $6261: $11 $01 $0f
    call Call_000_056c                            ; $6264: $cd $6c $05
    ret                                           ; $6267: $c9


jr_04f_6268:
    call Call_04f_6294                            ; $6268: $cd $94 $62
    ld de, $0f01                                  ; $626b: $11 $01 $0f
    call Call_000_056c                            ; $626e: $cd $6c $05
    ret                                           ; $6271: $c9


Call_04f_6272:
    inc hl                                        ; $6272: $23
    inc hl                                        ; $6273: $23
    inc hl                                        ; $6274: $23
    inc hl                                        ; $6275: $23
    inc hl                                        ; $6276: $23
    inc hl                                        ; $6277: $23
    inc hl                                        ; $6278: $23
    inc hl                                        ; $6279: $23
    ret                                           ; $627a: $c9


Call_04f_627b:
    ld a, [$c837]                                 ; $627b: $fa $37 $c8
    sub $0a                                       ; $627e: $d6 $0a
    ret c                                         ; $6280: $d8

    sub $03                                       ; $6281: $d6 $03
    ret c                                         ; $6283: $d8

    call Call_04f_6272                            ; $6284: $cd $72 $62
    sub $03                                       ; $6287: $d6 $03
    ret c                                         ; $6289: $d8

    call Call_04f_6272                            ; $628a: $cd $72 $62
    sub $03                                       ; $628d: $d6 $03
    ret c                                         ; $628f: $d8

    call Call_04f_6272                            ; $6290: $cd $72 $62
    ret                                           ; $6293: $c9


Call_04f_6294:
    ld a, [$c837]                                 ; $6294: $fa $37 $c8
    cp $0d                                        ; $6297: $fe $0d
    ret c                                         ; $6299: $d8

    call Call_04f_6272                            ; $629a: $cd $72 $62
    call Call_04f_6272                            ; $629d: $cd $72 $62
    cp $10                                        ; $62a0: $fe $10
    ret c                                         ; $62a2: $d8

    call Call_04f_6272                            ; $62a3: $cd $72 $62
    ret                                           ; $62a6: $c9


    ld a, $06                                     ; $62a7: $3e $06
    ldh [$96], a                                  ; $62a9: $e0 $96
    ldh [rSVBK], a                                ; $62ab: $e0 $70
    ld hl, $caa0                                  ; $62ad: $21 $a0 $ca
    call Call_04f_62b4                            ; $62b0: $cd $b4 $62
    ret                                           ; $62b3: $c9


Call_04f_62b4:
    ld a, [hl+]                                   ; $62b4: $2a
    ld e, [hl]                                    ; $62b5: $5e
    or e                                          ; $62b6: $b3
    ret z                                         ; $62b7: $c8

    inc hl                                        ; $62b8: $23
    inc hl                                        ; $62b9: $23
    ld a, [hl]                                    ; $62ba: $7e
    push hl                                       ; $62bb: $e5
    or a                                          ; $62bc: $b7
    jr nz, jr_04f_62fd                            ; $62bd: $20 $3e

    dec hl                                        ; $62bf: $2b
    dec hl                                        ; $62c0: $2b
    dec hl                                        ; $62c1: $2b
    ld e, [hl]                                    ; $62c2: $5e
    inc hl                                        ; $62c3: $23
    ld d, [hl]                                    ; $62c4: $56
    inc hl                                        ; $62c5: $23
    ld a, [hl]                                    ; $62c6: $7e
    inc [hl]                                      ; $62c7: $34
    add a                                         ; $62c8: $87
    add e                                         ; $62c9: $83
    ld e, a                                       ; $62ca: $5f
    ld a, d                                       ; $62cb: $7a
    adc $00                                       ; $62cc: $ce $00
    ld d, a                                       ; $62ce: $57
    ld a, [de]                                    ; $62cf: $1a
    cp $ff                                        ; $62d0: $fe $ff
    jr nz, jr_04f_62db                            ; $62d2: $20 $07

    xor a                                         ; $62d4: $af
    dec hl                                        ; $62d5: $2b
    dec hl                                        ; $62d6: $2b
    ld [hl+], a                                   ; $62d7: $22
    ld [hl+], a                                   ; $62d8: $22
    pop hl                                        ; $62d9: $e1
    ret                                           ; $62da: $c9


jr_04f_62db:
    push af                                       ; $62db: $f5
    inc de                                        ; $62dc: $13
    ld a, [de]                                    ; $62dd: $1a
    inc hl                                        ; $62de: $23
    ld [hl+], a                                   ; $62df: $22
    ld e, [hl]                                    ; $62e0: $5e
    inc hl                                        ; $62e1: $23
    ld d, [hl]                                    ; $62e2: $56
    inc hl                                        ; $62e3: $23
    ld a, [hl+]                                   ; $62e4: $2a
    ld h, [hl]                                    ; $62e5: $66
    ld l, a                                       ; $62e6: $6f
    pop af                                        ; $62e7: $f1
    push hl                                       ; $62e8: $e5
    and $0f                                       ; $62e9: $e6 $0f
    swap a                                        ; $62eb: $cb $37
    ld h, $00                                     ; $62ed: $26 $00
    ld l, a                                       ; $62ef: $6f
    ld b, h                                       ; $62f0: $44
    ld c, l                                       ; $62f1: $4d
    add hl, hl                                    ; $62f2: $29
    add hl, bc                                    ; $62f3: $09
    add hl, hl                                    ; $62f4: $29
    add hl, hl                                    ; $62f5: $29
    add hl, de                                    ; $62f6: $19
    pop de                                        ; $62f7: $d1
    ld c, $0c                                     ; $62f8: $0e $0c
    call Call_000_0468                            ; $62fa: $cd $68 $04

jr_04f_62fd:
    pop hl                                        ; $62fd: $e1
    dec [hl]                                      ; $62fe: $35
    inc hl                                        ; $62ff: $23
    inc hl                                        ; $6300: $23
    inc hl                                        ; $6301: $23
    inc hl                                        ; $6302: $23
    inc hl                                        ; $6303: $23
    ld d, [hl]                                    ; $6304: $56
    inc hl                                        ; $6305: $23
    ld e, [hl]                                    ; $6306: $5e
    inc hl                                        ; $6307: $23
    ld c, [hl]                                    ; $6308: $4e
    ld b, $07                                     ; $6309: $06 $07
    ld hl, $6312                                  ; $630b: $21 $12 $63
    call Call_000_26ea                            ; $630e: $cd $ea $26
    ret                                           ; $6311: $c9


    db $04, $fc, $00, $00, $14, $fc, $02, $00, $04, $04, $04, $00, $14, $04, $06, $00
    db $04, $0c, $08, $00, $14, $0c, $0a, $00, $80

    ld b, a                                       ; $632b: $47
    ld h, e                                       ; $632c: $63
    ld h, b                                       ; $632d: $60
    ld h, e                                       ; $632e: $63
    add l                                         ; $632f: $85
    ld h, e                                       ; $6330: $63
    adc b                                         ; $6331: $88
    ld h, e                                       ; $6332: $63
    adc e                                         ; $6333: $8b
    ld h, e                                       ; $6334: $63

    db $8e, $63, $91, $63, $94, $63, $97, $63, $9a, $63

    sbc l                                         ; $633f: $9d
    ld h, e                                       ; $6340: $63
    and b                                         ; $6341: $a0
    ld h, e                                       ; $6342: $63
    and e                                         ; $6343: $a3
    ld h, e                                       ; $6344: $63
    and [hl]                                      ; $6345: $a6
    ld h, e                                       ; $6346: $63
    nop                                           ; $6347: $00
    ld [$0c01], sp                                ; $6348: $08 $01 $0c
    ld [bc], a                                    ; $634b: $02
    ld [$0c03], sp                                ; $634c: $08 $03 $0c
    nop                                           ; $634f: $00
    ld [$0c01], sp                                ; $6350: $08 $01 $0c
    ld [bc], a                                    ; $6353: $02
    ld [$0c03], sp                                ; $6354: $08 $03 $0c
    nop                                           ; $6357: $00
    ld [$0c01], sp                                ; $6358: $08 $01 $0c
    ld [bc], a                                    ; $635b: $02
    ld [$0c03], sp                                ; $635c: $08 $03 $0c
    rst $38                                       ; $635f: $ff
    nop                                           ; $6360: $00
    dec b                                         ; $6361: $05
    ld bc, $0205                                  ; $6362: $01 $05 $02
    dec b                                         ; $6365: $05
    inc bc                                        ; $6366: $03
    dec b                                         ; $6367: $05
    inc b                                         ; $6368: $04
    dec b                                         ; $6369: $05
    dec b                                         ; $636a: $05
    dec b                                         ; $636b: $05
    ld b, $05                                     ; $636c: $06 $05
    rlca                                          ; $636e: $07
    dec b                                         ; $636f: $05
    ld [$0905], sp                                ; $6370: $08 $05 $09
    dec b                                         ; $6373: $05
    ld a, [bc]                                    ; $6374: $0a
    inc b                                         ; $6375: $04
    dec bc                                        ; $6376: $0b
    inc b                                         ; $6377: $04
    inc c                                         ; $6378: $0c
    rrca                                          ; $6379: $0f
    dec c                                         ; $637a: $0d
    rrca                                          ; $637b: $0f
    ld c, $0a                                     ; $637c: $0e $0a
    rrca                                          ; $637e: $0f
    ld a, [bc]                                    ; $637f: $0a
    ld c, $0a                                     ; $6380: $0e $0a
    rrca                                          ; $6382: $0f
    inc c                                         ; $6383: $0c
    rst $38                                       ; $6384: $ff
    nop                                           ; $6385: $00
    ld a, b                                       ; $6386: $78
    rst $38                                       ; $6387: $ff
    ld bc, $ff78                                  ; $6388: $01 $78 $ff
    ld [bc], a                                    ; $638b: $02
    ld a, b                                       ; $638c: $78
    rst $38                                       ; $638d: $ff

    db $00, $78

    rst $38                                       ; $6390: $ff

    db $01, $78

    rst $38                                       ; $6393: $ff

    db $02, $78

    rst $38                                       ; $6396: $ff

    db $01, $78

    rst $38                                       ; $6399: $ff

    db $02, $78

    rst $38                                       ; $639c: $ff
    nop                                           ; $639d: $00
    ld a, b                                       ; $639e: $78
    rst $38                                       ; $639f: $ff
    nop                                           ; $63a0: $00
    ld a, b                                       ; $63a1: $78
    rst $38                                       ; $63a2: $ff
    ld bc, $ff78                                  ; $63a3: $01 $78 $ff
    ld [bc], a                                    ; $63a6: $02
    ld a, b                                       ; $63a7: $78
    rst $38                                       ; $63a8: $ff
    call nz, $ff01                                ; $63a9: $c4 $01 $ff
    ld a, a                                       ; $63ac: $7f
    rra                                           ; $63ad: $1f
    ld hl, $0000                                  ; $63ae: $21 $00 $00
    call nz, $ff01                                ; $63b1: $c4 $01 $ff
    ld a, a                                       ; $63b4: $7f
    rra                                           ; $63b5: $1f
    ld hl, $0000                                  ; $63b6: $21 $00 $00
    call nz, $ff01                                ; $63b9: $c4 $01 $ff
    ld a, a                                       ; $63bc: $7f
    rra                                           ; $63bd: $1f
    ld hl, $0000                                  ; $63be: $21 $00 $00
    call nz, $ff01                                ; $63c1: $c4 $01 $ff
    ld a, a                                       ; $63c4: $7f
    rra                                           ; $63c5: $1f
    ld hl, $0000                                  ; $63c6: $21 $00 $00
    inc e                                         ; $63c9: $1c
    ld d, a                                       ; $63ca: $57
    rst $38                                       ; $63cb: $ff
    ld a, a                                       ; $63cc: $7f
    ld b, b                                       ; $63cd: $40
    ld a, l                                       ; $63ce: $7d
    nop                                           ; $63cf: $00
    nop                                           ; $63d0: $00
    inc e                                         ; $63d1: $1c
    ld d, a                                       ; $63d2: $57
    rst $38                                       ; $63d3: $ff
    ld a, a                                       ; $63d4: $7f
    ld d, $7d                                     ; $63d5: $16 $7d
    nop                                           ; $63d7: $00
    nop                                           ; $63d8: $00
    inc e                                         ; $63d9: $1c
    ld d, a                                       ; $63da: $57
    rst $38                                       ; $63db: $ff
    ld a, a                                       ; $63dc: $7f
    ld e, d                                       ; $63dd: $5a
    ld a, l                                       ; $63de: $7d
    nop                                           ; $63df: $00
    nop                                           ; $63e0: $00
    inc e                                         ; $63e1: $1c
    ld d, a                                       ; $63e2: $57
    rst $38                                       ; $63e3: $ff
    ld a, a                                       ; $63e4: $7f
    sub a                                         ; $63e5: $97
    ld a, l                                       ; $63e6: $7d
    nop                                           ; $63e7: $00
    nop                                           ; $63e8: $00
    inc e                                         ; $63e9: $1c
    ld d, a                                       ; $63ea: $57
    rst $38                                       ; $63eb: $ff
    ld a, a                                       ; $63ec: $7f
    ret c                                         ; $63ed: $d8

    ld a, [de]                                    ; $63ee: $1a
    nop                                           ; $63ef: $00
    nop                                           ; $63f0: $00
    inc e                                         ; $63f1: $1c
    ld d, a                                       ; $63f2: $57
    rst $38                                       ; $63f3: $ff
    ld a, a                                       ; $63f4: $7f
    call c, $001a                                 ; $63f5: $dc $1a $00
    nop                                           ; $63f8: $00
    inc e                                         ; $63f9: $1c
    ld d, a                                       ; $63fa: $57
    rst $38                                       ; $63fb: $ff
    ld a, a                                       ; $63fc: $7f
    sub h                                         ; $63fd: $94
    ld [hl-], a                                   ; $63fe: $32
    nop                                           ; $63ff: $00
    nop                                           ; $6400: $00
    inc e                                         ; $6401: $1c
    ld d, a                                       ; $6402: $57
    rst $38                                       ; $6403: $ff
    ld a, a                                       ; $6404: $7f
    ret c                                         ; $6405: $d8

    ld [hl+], a                                   ; $6406: $22
    nop                                           ; $6407: $00
    nop                                           ; $6408: $00
    inc e                                         ; $6409: $1c
    ld d, a                                       ; $640a: $57
    rst $38                                       ; $640b: $ff
    ld a, a                                       ; $640c: $7f
    ret c                                         ; $640d: $d8

    ld a, [de]                                    ; $640e: $1a
    nop                                           ; $640f: $00
    nop                                           ; $6410: $00
    inc e                                         ; $6411: $1c
    ld d, a                                       ; $6412: $57
    rst $38                                       ; $6413: $ff
    ld a, a                                       ; $6414: $7f
    call c, $001a                                 ; $6415: $dc $1a $00
    nop                                           ; $6418: $00
    inc e                                         ; $6419: $1c
    ld d, a                                       ; $641a: $57
    rst $38                                       ; $641b: $ff
    ld a, a                                       ; $641c: $7f
    sub h                                         ; $641d: $94
    ld [hl-], a                                   ; $641e: $32
    nop                                           ; $641f: $00
    nop                                           ; $6420: $00
    inc e                                         ; $6421: $1c
    ld d, a                                       ; $6422: $57
    rst $38                                       ; $6423: $ff
    ld a, a                                       ; $6424: $7f
    ret c                                         ; $6425: $d8

    ld [hl+], a                                   ; $6426: $22
    nop                                           ; $6427: $00
    nop                                           ; $6428: $00
    inc e                                         ; $6429: $1c
    ld d, a                                       ; $642a: $57
    rst $38                                       ; $642b: $ff
    ld a, a                                       ; $642c: $7f
    ret c                                         ; $642d: $d8

    ld a, [de]                                    ; $642e: $1a
    nop                                           ; $642f: $00
    nop                                           ; $6430: $00
    inc e                                         ; $6431: $1c
    ld d, a                                       ; $6432: $57
    rst $38                                       ; $6433: $ff
    ld a, a                                       ; $6434: $7f
    call c, $001a                                 ; $6435: $dc $1a $00
    nop                                           ; $6438: $00
    inc e                                         ; $6439: $1c
    ld d, a                                       ; $643a: $57
    rst $38                                       ; $643b: $ff
    ld a, a                                       ; $643c: $7f
    sub h                                         ; $643d: $94
    ld [hl-], a                                   ; $643e: $32
    nop                                           ; $643f: $00
    nop                                           ; $6440: $00
    inc e                                         ; $6441: $1c
    ld d, a                                       ; $6442: $57
    rst $38                                       ; $6443: $ff
    ld a, a                                       ; $6444: $7f
    ret c                                         ; $6445: $d8

    ld [hl+], a                                   ; $6446: $22
    nop                                           ; $6447: $00
    nop                                           ; $6448: $00

    db $1c, $57, $ff, $7f, $86, $03, $00, $00

    inc e                                         ; $6451: $1c
    ld d, a                                       ; $6452: $57
    rst $38                                       ; $6453: $ff
    ld a, a                                       ; $6454: $7f
    ld c, d                                       ; $6455: $4a
    inc bc                                        ; $6456: $03
    nop                                           ; $6457: $00
    nop                                           ; $6458: $00
    inc e                                         ; $6459: $1c
    ld d, a                                       ; $645a: $57
    rst $38                                       ; $645b: $ff
    ld a, a                                       ; $645c: $7f
    ld b, d                                       ; $645d: $42
    inc hl                                        ; $645e: $23
    nop                                           ; $645f: $00
    nop                                           ; $6460: $00
    inc e                                         ; $6461: $1c
    ld d, a                                       ; $6462: $57
    rst $38                                       ; $6463: $ff
    ld a, a                                       ; $6464: $7f
    ld d, b                                       ; $6465: $50
    inc bc                                        ; $6466: $03
    nop                                           ; $6467: $00
    nop                                           ; $6468: $00

    db $1c, $57, $ff, $7f, $86, $03, $00, $00

    inc e                                         ; $6471: $1c
    ld d, a                                       ; $6472: $57
    rst $38                                       ; $6473: $ff
    ld a, a                                       ; $6474: $7f
    ld c, d                                       ; $6475: $4a
    inc bc                                        ; $6476: $03
    nop                                           ; $6477: $00
    nop                                           ; $6478: $00
    inc e                                         ; $6479: $1c
    ld d, a                                       ; $647a: $57
    rst $38                                       ; $647b: $ff
    ld a, a                                       ; $647c: $7f
    ld b, d                                       ; $647d: $42
    inc hl                                        ; $647e: $23
    nop                                           ; $647f: $00
    nop                                           ; $6480: $00
    inc e                                         ; $6481: $1c
    ld d, a                                       ; $6482: $57
    rst $38                                       ; $6483: $ff
    ld a, a                                       ; $6484: $7f
    ld d, b                                       ; $6485: $50
    inc bc                                        ; $6486: $03
    nop                                           ; $6487: $00
    nop                                           ; $6488: $00

    db $1c, $57, $ff, $7f, $86, $03, $00, $00

    inc e                                         ; $6491: $1c
    ld d, a                                       ; $6492: $57
    rst $38                                       ; $6493: $ff
    ld a, a                                       ; $6494: $7f
    ld c, d                                       ; $6495: $4a
    inc bc                                        ; $6496: $03
    nop                                           ; $6497: $00
    nop                                           ; $6498: $00
    inc e                                         ; $6499: $1c
    ld d, a                                       ; $649a: $57
    rst $38                                       ; $649b: $ff
    ld a, a                                       ; $649c: $7f
    ld b, d                                       ; $649d: $42
    inc hl                                        ; $649e: $23
    nop                                           ; $649f: $00
    nop                                           ; $64a0: $00
    inc e                                         ; $64a1: $1c
    ld d, a                                       ; $64a2: $57
    rst $38                                       ; $64a3: $ff
    ld a, a                                       ; $64a4: $7f
    ld d, b                                       ; $64a5: $50
    inc bc                                        ; $64a6: $03
    nop                                           ; $64a7: $00
    nop                                           ; $64a8: $00

    db $1c, $57, $ff, $7f, $40, $02, $00, $00

    inc e                                         ; $64b1: $1c
    ld d, a                                       ; $64b2: $57
    rst $38                                       ; $64b3: $ff
    ld a, a                                       ; $64b4: $7f
    adc [hl]                                      ; $64b5: $8e
    ld bc, $0000                                  ; $64b6: $01 $00 $00
    inc e                                         ; $64b9: $1c
    ld d, a                                       ; $64ba: $57
    rst $38                                       ; $64bb: $ff
    ld a, a                                       ; $64bc: $7f
    ret nz                                        ; $64bd: $c0

    ld c, c                                       ; $64be: $49
    nop                                           ; $64bf: $00
    nop                                           ; $64c0: $00
    inc e                                         ; $64c1: $1c
    ld d, a                                       ; $64c2: $57
    rst $38                                       ; $64c3: $ff
    ld a, a                                       ; $64c4: $7f
    ret nz                                        ; $64c5: $c0

    ld [bc], a                                    ; $64c6: $02
    nop                                           ; $64c7: $00
    nop                                           ; $64c8: $00

    db $1c, $57, $ff, $7f, $40, $02, $00, $00

    inc e                                         ; $64d1: $1c
    ld d, a                                       ; $64d2: $57
    rst $38                                       ; $64d3: $ff
    ld a, a                                       ; $64d4: $7f
    adc [hl]                                      ; $64d5: $8e
    ld bc, $0000                                  ; $64d6: $01 $00 $00
    inc e                                         ; $64d9: $1c
    ld d, a                                       ; $64da: $57
    rst $38                                       ; $64db: $ff
    ld a, a                                       ; $64dc: $7f
    ret nz                                        ; $64dd: $c0

    ld c, c                                       ; $64de: $49
    nop                                           ; $64df: $00
    nop                                           ; $64e0: $00
    inc e                                         ; $64e1: $1c
    ld d, a                                       ; $64e2: $57
    rst $38                                       ; $64e3: $ff
    ld a, a                                       ; $64e4: $7f
    ret nz                                        ; $64e5: $c0

    ld [bc], a                                    ; $64e6: $02
    nop                                           ; $64e7: $00
    nop                                           ; $64e8: $00
    inc e                                         ; $64e9: $1c
    ld d, a                                       ; $64ea: $57
    rst $38                                       ; $64eb: $ff
    ld a, a                                       ; $64ec: $7f
    ld b, b                                       ; $64ed: $40
    ld [bc], a                                    ; $64ee: $02
    nop                                           ; $64ef: $00
    nop                                           ; $64f0: $00
    inc e                                         ; $64f1: $1c
    ld d, a                                       ; $64f2: $57
    rst $38                                       ; $64f3: $ff
    ld a, a                                       ; $64f4: $7f
    adc [hl]                                      ; $64f5: $8e
    ld bc, $0000                                  ; $64f6: $01 $00 $00
    inc e                                         ; $64f9: $1c
    ld d, a                                       ; $64fa: $57
    rst $38                                       ; $64fb: $ff
    ld a, a                                       ; $64fc: $7f
    ret nz                                        ; $64fd: $c0

    ld c, c                                       ; $64fe: $49
    nop                                           ; $64ff: $00
    nop                                           ; $6500: $00
    inc e                                         ; $6501: $1c
    ld d, a                                       ; $6502: $57
    rst $38                                       ; $6503: $ff
    ld a, a                                       ; $6504: $7f
    ret nz                                        ; $6505: $c0

    ld [bc], a                                    ; $6506: $02
    nop                                           ; $6507: $00
    nop                                           ; $6508: $00
    inc e                                         ; $6509: $1c
    ld d, a                                       ; $650a: $57
    rst $38                                       ; $650b: $ff
    ld a, a                                       ; $650c: $7f
    ld b, b                                       ; $650d: $40
    ld [bc], a                                    ; $650e: $02
    nop                                           ; $650f: $00
    nop                                           ; $6510: $00
    inc e                                         ; $6511: $1c
    ld d, a                                       ; $6512: $57
    rst $38                                       ; $6513: $ff
    ld a, a                                       ; $6514: $7f
    adc [hl]                                      ; $6515: $8e
    ld bc, $0000                                  ; $6516: $01 $00 $00
    inc e                                         ; $6519: $1c
    ld d, a                                       ; $651a: $57
    rst $38                                       ; $651b: $ff
    ld a, a                                       ; $651c: $7f
    ret nz                                        ; $651d: $c0

    ld c, c                                       ; $651e: $49
    nop                                           ; $651f: $00
    nop                                           ; $6520: $00
    inc e                                         ; $6521: $1c
    ld d, a                                       ; $6522: $57
    rst $38                                       ; $6523: $ff
    ld a, a                                       ; $6524: $7f
    ret nz                                        ; $6525: $c0

    ld [bc], a                                    ; $6526: $02
    nop                                           ; $6527: $00
    nop                                           ; $6528: $00
    inc e                                         ; $6529: $1c
    ld d, a                                       ; $652a: $57
    rst $38                                       ; $652b: $ff
    ld a, a                                       ; $652c: $7f
    ld b, b                                       ; $652d: $40
    ld [bc], a                                    ; $652e: $02
    nop                                           ; $652f: $00
    nop                                           ; $6530: $00
    inc e                                         ; $6531: $1c
    ld d, a                                       ; $6532: $57
    rst $38                                       ; $6533: $ff
    ld a, a                                       ; $6534: $7f
    adc [hl]                                      ; $6535: $8e
    ld bc, $0000                                  ; $6536: $01 $00 $00
    inc e                                         ; $6539: $1c
    ld d, a                                       ; $653a: $57
    rst $38                                       ; $653b: $ff
    ld a, a                                       ; $653c: $7f
    ret nz                                        ; $653d: $c0

    ld c, c                                       ; $653e: $49
    nop                                           ; $653f: $00
    nop                                           ; $6540: $00
    inc e                                         ; $6541: $1c
    ld d, a                                       ; $6542: $57
    rst $38                                       ; $6543: $ff
    ld a, a                                       ; $6544: $7f
    ret nz                                        ; $6545: $c0

    ld [bc], a                                    ; $6546: $02
    nop                                           ; $6547: $00
    nop                                           ; $6548: $00
    inc e                                         ; $6549: $1c
    ld d, a                                       ; $654a: $57
    rst $38                                       ; $654b: $ff
    ld a, a                                       ; $654c: $7f
    ld b, b                                       ; $654d: $40
    ld [bc], a                                    ; $654e: $02
    nop                                           ; $654f: $00
    nop                                           ; $6550: $00
    inc e                                         ; $6551: $1c
    ld d, a                                       ; $6552: $57
    rst $38                                       ; $6553: $ff
    ld a, a                                       ; $6554: $7f
    adc [hl]                                      ; $6555: $8e
    ld bc, $0000                                  ; $6556: $01 $00 $00
    inc e                                         ; $6559: $1c
    ld d, a                                       ; $655a: $57
    rst $38                                       ; $655b: $ff
    ld a, a                                       ; $655c: $7f
    ret nz                                        ; $655d: $c0

    ld c, c                                       ; $655e: $49
    nop                                           ; $655f: $00
    nop                                           ; $6560: $00
    inc e                                         ; $6561: $1c
    ld d, a                                       ; $6562: $57
    rst $38                                       ; $6563: $ff
    ld a, a                                       ; $6564: $7f
    ret nz                                        ; $6565: $c0

    ld [bc], a                                    ; $6566: $02
    nop                                           ; $6567: $00
    nop                                           ; $6568: $00
    sub b                                         ; $6569: $90
    ld h, l                                       ; $656a: $65
    sub b                                         ; $656b: $90
    ld l, b                                       ; $656c: $68
    sub b                                         ; $656d: $90
    ld [hl], h                                    ; $656e: $74
    sub b                                         ; $656f: $90
    ld [hl], h                                    ; $6570: $74
    sub b                                         ; $6571: $90
    ld [hl], h                                    ; $6572: $74

    db $d0, $76, $10, $79, $10, $79, $d0, $76, $d0, $76

    db $10                                        ; $657d: $10
    ld a, c                                       ; $657e: $79
    ld d, b                                       ; $657f: $50
    ld a, e                                       ; $6580: $7b
    ld d, b                                       ; $6581: $50
    ld a, e                                       ; $6582: $7b
    ld d, b                                       ; $6583: $50
    ld a, e                                       ; $6584: $7b
    nop                                           ; $6585: $00
    nop                                           ; $6586: $00
    nop                                           ; $6587: $00
    nop                                           ; $6588: $00
    nop                                           ; $6589: $00
    nop                                           ; $658a: $00
    nop                                           ; $658b: $00
    nop                                           ; $658c: $00
    nop                                           ; $658d: $00
    nop                                           ; $658e: $00
    nop                                           ; $658f: $00
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
    nop                                           ; $659a: $00
    nop                                           ; $659b: $00
    nop                                           ; $659c: $00
    nop                                           ; $659d: $00
    nop                                           ; $659e: $00
    nop                                           ; $659f: $00
    ccf                                           ; $65a0: $3f
    ccf                                           ; $65a1: $3f
    ld e, a                                       ; $65a2: $5f
    ld h, b                                       ; $65a3: $60
    xor a                                         ; $65a4: $af
    rst $18                                       ; $65a5: $df
    ret nc                                        ; $65a6: $d0

    cp a                                          ; $65a7: $bf
    db $e3                                        ; $65a8: $e3
    cp a                                          ; $65a9: $bf
    xor $bd                                       ; $65aa: $ee $bd
    or $b9                                        ; $65ac: $f6 $b9
    db $e3                                        ; $65ae: $e3
    cp h                                          ; $65af: $bc
    db $e3                                        ; $65b0: $e3
    cp h                                          ; $65b1: $bc
    rst $20                                       ; $65b2: $e7
    cp b                                          ; $65b3: $b8
    rst $38                                       ; $65b4: $ff
    and c                                         ; $65b5: $a1
    cp $b3                                        ; $65b6: $fe $b3
    xor $bf                                       ; $65b8: $ee $bf
    ld [c], a                                     ; $65ba: $e2
    cp a                                          ; $65bb: $bf
    db $e3                                        ; $65bc: $e3
    cp a                                          ; $65bd: $bf
    rst $20                                       ; $65be: $e7
    cp l                                          ; $65bf: $bd
    rst $28                                       ; $65c0: $ef
    cp c                                          ; $65c1: $b9
    xor $bb                                       ; $65c2: $ee $bb
    rst $20                                       ; $65c4: $e7
    cp a                                          ; $65c5: $bf
    ld [$d8bd], a                                 ; $65c6: $ea $bd $d8
    cp a                                          ; $65c9: $bf
    xor a                                         ; $65ca: $af
    rst $18                                       ; $65cb: $df
    ld e, a                                       ; $65cc: $5f
    ld h, b                                       ; $65cd: $60
    ccf                                           ; $65ce: $3f
    ccf                                           ; $65cf: $3f
    nop                                           ; $65d0: $00
    nop                                           ; $65d1: $00
    nop                                           ; $65d2: $00
    nop                                           ; $65d3: $00
    nop                                           ; $65d4: $00
    nop                                           ; $65d5: $00
    nop                                           ; $65d6: $00
    nop                                           ; $65d7: $00
    nop                                           ; $65d8: $00
    nop                                           ; $65d9: $00
    nop                                           ; $65da: $00
    nop                                           ; $65db: $00
    nop                                           ; $65dc: $00
    nop                                           ; $65dd: $00
    nop                                           ; $65de: $00
    nop                                           ; $65df: $00
    rst $38                                       ; $65e0: $ff
    rst $38                                       ; $65e1: $ff
    rst $38                                       ; $65e2: $ff

jr_04f_65e3:
    nop                                           ; $65e3: $00
    rst $38                                       ; $65e4: $ff
    rst $38                                       ; $65e5: $ff
    nop                                           ; $65e6: $00
    rst $38                                       ; $65e7: $ff
    ldh a, [rIE]                                  ; $65e8: $f0 $ff
    ld [$0cff], sp                                ; $65ea: $08 $ff $0c
    rst $30                                       ; $65ed: $f7
    ld a, [de]                                    ; $65ee: $1a
    rst $20                                       ; $65ef: $e7
    ld a, [$fe07]                                 ; $65f0: $fa $07 $fe
    di                                            ; $65f3: $f3
    ld a, [hl]                                    ; $65f4: $7e
    adc e                                         ; $65f5: $8b
    db $fc                                        ; $65f6: $fc
    ld e, a                                       ; $65f7: $5f
    ld sp, hl                                     ; $65f8: $f9
    rrca                                          ; $65f9: $0f
    sbc $2f                                       ; $65fa: $de $2f
    ld a, [hl]                                    ; $65fc: $7e
    sbc e                                         ; $65fd: $9b
    cp $f3                                        ; $65fe: $fe $f3
    inc l                                         ; $6600: $2c
    rst $38                                       ; $6601: $ff
    jr z, jr_04f_65e3                             ; $6602: $28 $df

    db $fc                                        ; $6604: $fc
    rra                                           ; $6605: $1f
    and $fb                                       ; $6606: $e6 $fb
    and d                                         ; $6608: $a2
    rst $38                                       ; $6609: $ff
    rst $38                                       ; $660a: $ff
    rst $38                                       ; $660b: $ff
    rst $38                                       ; $660c: $ff
    nop                                           ; $660d: $00
    rst $38                                       ; $660e: $ff
    rst $38                                       ; $660f: $ff
    nop                                           ; $6610: $00
    nop                                           ; $6611: $00
    nop                                           ; $6612: $00
    nop                                           ; $6613: $00
    nop                                           ; $6614: $00
    nop                                           ; $6615: $00
    nop                                           ; $6616: $00
    nop                                           ; $6617: $00
    nop                                           ; $6618: $00
    nop                                           ; $6619: $00
    nop                                           ; $661a: $00
    nop                                           ; $661b: $00
    nop                                           ; $661c: $00
    nop                                           ; $661d: $00
    nop                                           ; $661e: $00
    nop                                           ; $661f: $00
    db $fc                                        ; $6620: $fc
    db $fc                                        ; $6621: $fc
    ld a, [$f506]                                 ; $6622: $fa $06 $f5
    ei                                            ; $6625: $fb
    dec bc                                        ; $6626: $0b
    db $fd                                        ; $6627: $fd
    rlca                                          ; $6628: $07
    db $fd                                        ; $6629: $fd
    rlca                                          ; $662a: $07
    db $fd                                        ; $662b: $fd
    add a                                         ; $662c: $87
    ld a, l                                       ; $662d: $7d
    rst $20                                       ; $662e: $e7
    dec e                                         ; $662f: $1d
    rst $20                                       ; $6630: $e7
    dec e                                         ; $6631: $1d
    rst $20                                       ; $6632: $e7
    dec a                                         ; $6633: $3d
    rst $00                                       ; $6634: $c7
    ld a, l                                       ; $6635: $7d
    add a                                         ; $6636: $87
    db $fd                                        ; $6637: $fd
    rlca                                          ; $6638: $07
    db $fd                                        ; $6639: $fd
    rlca                                          ; $663a: $07
    db $fd                                        ; $663b: $fd
    rlca                                          ; $663c: $07
    db $fd                                        ; $663d: $fd
    rlca                                          ; $663e: $07
    db $fd                                        ; $663f: $fd
    rlca                                          ; $6640: $07
    db $fd                                        ; $6641: $fd
    rlca                                          ; $6642: $07
    db $fd                                        ; $6643: $fd
    rlca                                          ; $6644: $07
    db $fd                                        ; $6645: $fd
    rlca                                          ; $6646: $07
    db $fd                                        ; $6647: $fd
    dec bc                                        ; $6648: $0b
    db $fd                                        ; $6649: $fd
    push af                                       ; $664a: $f5
    ei                                            ; $664b: $fb
    ld a, [$fc06]                                 ; $664c: $fa $06 $fc
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
    nop                                           ; $665a: $00
    nop                                           ; $665b: $00
    nop                                           ; $665c: $00
    nop                                           ; $665d: $00
    nop                                           ; $665e: $00
    nop                                           ; $665f: $00
    ccf                                           ; $6660: $3f
    ccf                                           ; $6661: $3f
    ld e, a                                       ; $6662: $5f
    ld h, b                                       ; $6663: $60
    xor a                                         ; $6664: $af
    rst $18                                       ; $6665: $df
    ret nc                                        ; $6666: $d0

    cp a                                          ; $6667: $bf
    db $e3                                        ; $6668: $e3
    cp a                                          ; $6669: $bf
    xor $bd                                       ; $666a: $ee $bd
    or $b9                                        ; $666c: $f6 $b9
    db $e3                                        ; $666e: $e3
    cp h                                          ; $666f: $bc
    db $e3                                        ; $6670: $e3
    cp h                                          ; $6671: $bc
    rst $20                                       ; $6672: $e7
    cp b                                          ; $6673: $b8
    rst $38                                       ; $6674: $ff
    and c                                         ; $6675: $a1
    cp $b3                                        ; $6676: $fe $b3
    xor $bf                                       ; $6678: $ee $bf
    ld [c], a                                     ; $667a: $e2
    cp a                                          ; $667b: $bf
    rst $20                                       ; $667c: $e7
    cp a                                          ; $667d: $bf
    rst $28                                       ; $667e: $ef
    cp c                                          ; $667f: $b9
    cp $b3                                        ; $6680: $fe $b3
    xor $bf                                       ; $6682: $ee $bf
    rst $20                                       ; $6684: $e7
    cp a                                          ; $6685: $bf
    ld [$d8bd], a                                 ; $6686: $ea $bd $d8
    cp a                                          ; $6689: $bf
    xor a                                         ; $668a: $af
    rst $18                                       ; $668b: $df
    ld e, a                                       ; $668c: $5f
    ld h, b                                       ; $668d: $60
    ccf                                           ; $668e: $3f
    ccf                                           ; $668f: $3f
    nop                                           ; $6690: $00
    nop                                           ; $6691: $00
    nop                                           ; $6692: $00
    nop                                           ; $6693: $00
    nop                                           ; $6694: $00
    nop                                           ; $6695: $00
    nop                                           ; $6696: $00
    nop                                           ; $6697: $00
    nop                                           ; $6698: $00
    nop                                           ; $6699: $00
    nop                                           ; $669a: $00
    nop                                           ; $669b: $00
    nop                                           ; $669c: $00
    nop                                           ; $669d: $00
    nop                                           ; $669e: $00
    nop                                           ; $669f: $00
    rst $38                                       ; $66a0: $ff
    rst $38                                       ; $66a1: $ff
    rst $38                                       ; $66a2: $ff

jr_04f_66a3:
    nop                                           ; $66a3: $00
    rst $38                                       ; $66a4: $ff
    rst $38                                       ; $66a5: $ff
    nop                                           ; $66a6: $00
    rst $38                                       ; $66a7: $ff
    ldh a, [rIE]                                  ; $66a8: $f0 $ff
    ld [$0cff], sp                                ; $66aa: $08 $ff $0c
    rst $30                                       ; $66ad: $f7
    ld a, [de]                                    ; $66ae: $1a
    rst $20                                       ; $66af: $e7
    ld a, [$fe07]                                 ; $66b0: $fa $07 $fe
    di                                            ; $66b3: $f3
    ld a, [hl]                                    ; $66b4: $7e
    adc e                                         ; $66b5: $8b
    db $fc                                        ; $66b6: $fc
    ld e, a                                       ; $66b7: $5f
    ld hl, sp+$0f                                 ; $66b8: $f8 $0f
    ret c                                         ; $66ba: $d8

    cpl                                           ; $66bb: $2f
    ld a, [hl]                                    ; $66bc: $7e
    sbc a                                         ; $66bd: $9f
    rst $38                                       ; $66be: $ff
    pop af                                        ; $66bf: $f1
    ld l, $ff                                     ; $66c0: $2e $ff
    jr z, jr_04f_66a3                             ; $66c2: $28 $df

    db $fc                                        ; $66c4: $fc
    rra                                           ; $66c5: $1f
    and $fb                                       ; $66c6: $e6 $fb
    and d                                         ; $66c8: $a2
    rst $38                                       ; $66c9: $ff
    rst $38                                       ; $66ca: $ff
    rst $38                                       ; $66cb: $ff
    rst $38                                       ; $66cc: $ff
    nop                                           ; $66cd: $00
    rst $38                                       ; $66ce: $ff
    rst $38                                       ; $66cf: $ff
    nop                                           ; $66d0: $00
    nop                                           ; $66d1: $00
    nop                                           ; $66d2: $00
    nop                                           ; $66d3: $00
    nop                                           ; $66d4: $00
    nop                                           ; $66d5: $00
    nop                                           ; $66d6: $00
    nop                                           ; $66d7: $00
    nop                                           ; $66d8: $00
    nop                                           ; $66d9: $00
    nop                                           ; $66da: $00
    nop                                           ; $66db: $00
    nop                                           ; $66dc: $00
    nop                                           ; $66dd: $00
    nop                                           ; $66de: $00
    nop                                           ; $66df: $00
    db $fc                                        ; $66e0: $fc
    db $fc                                        ; $66e1: $fc
    ld a, [$f506]                                 ; $66e2: $fa $06 $f5
    ei                                            ; $66e5: $fb
    dec bc                                        ; $66e6: $0b
    db $fd                                        ; $66e7: $fd
    rlca                                          ; $66e8: $07
    db $fd                                        ; $66e9: $fd
    rlca                                          ; $66ea: $07
    db $fd                                        ; $66eb: $fd
    rlca                                          ; $66ec: $07
    db $fd                                        ; $66ed: $fd
    rlca                                          ; $66ee: $07
    db $fd                                        ; $66ef: $fd
    rlca                                          ; $66f0: $07
    db $fd                                        ; $66f1: $fd
    ld b, a                                       ; $66f2: $47
    cp l                                          ; $66f3: $bd
    ld b, a                                       ; $66f4: $47
    cp l                                          ; $66f5: $bd
    ld h, a                                       ; $66f6: $67
    sbc l                                         ; $66f7: $9d
    rst $20                                       ; $66f8: $e7
    dec e                                         ; $66f9: $1d
    rst $30                                       ; $66fa: $f7
    dec c                                         ; $66fb: $0d
    rst $30                                       ; $66fc: $f7
    dec c                                         ; $66fd: $0d
    rst $30                                       ; $66fe: $f7
    db $fd                                        ; $66ff: $fd
    rlca                                          ; $6700: $07
    db $fd                                        ; $6701: $fd
    rlca                                          ; $6702: $07
    db $fd                                        ; $6703: $fd
    rlca                                          ; $6704: $07
    db $fd                                        ; $6705: $fd
    rlca                                          ; $6706: $07
    db $fd                                        ; $6707: $fd
    dec bc                                        ; $6708: $0b
    db $fd                                        ; $6709: $fd
    push af                                       ; $670a: $f5
    ei                                            ; $670b: $fb
    ld a, [$fc06]                                 ; $670c: $fa $06 $fc
    db $fc                                        ; $670f: $fc
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
    ccf                                           ; $6720: $3f
    ccf                                           ; $6721: $3f
    ld e, a                                       ; $6722: $5f
    ld h, b                                       ; $6723: $60
    xor a                                         ; $6724: $af
    rst $18                                       ; $6725: $df
    ret nc                                        ; $6726: $d0

    cp a                                          ; $6727: $bf
    db $e3                                        ; $6728: $e3
    cp a                                          ; $6729: $bf
    xor $bd                                       ; $672a: $ee $bd
    or $b9                                        ; $672c: $f6 $b9
    db $e3                                        ; $672e: $e3
    cp h                                          ; $672f: $bc
    db $e3                                        ; $6730: $e3
    cp h                                          ; $6731: $bc
    rst $20                                       ; $6732: $e7
    cp b                                          ; $6733: $b8
    rst $38                                       ; $6734: $ff
    and c                                         ; $6735: $a1
    cp $b3                                        ; $6736: $fe $b3
    xor $bf                                       ; $6738: $ee $bf
    ld [c], a                                     ; $673a: $e2
    cp a                                          ; $673b: $bf
    rst $20                                       ; $673c: $e7
    cp a                                          ; $673d: $bf
    rst $28                                       ; $673e: $ef
    cp c                                          ; $673f: $b9
    cp $b3                                        ; $6740: $fe $b3
    xor $bf                                       ; $6742: $ee $bf
    rst $20                                       ; $6744: $e7
    cp a                                          ; $6745: $bf
    ld [$d8bd], a                                 ; $6746: $ea $bd $d8
    cp a                                          ; $6749: $bf
    xor a                                         ; $674a: $af
    rst $18                                       ; $674b: $df
    ld e, a                                       ; $674c: $5f
    ld h, b                                       ; $674d: $60
    ccf                                           ; $674e: $3f
    ccf                                           ; $674f: $3f
    nop                                           ; $6750: $00
    nop                                           ; $6751: $00
    nop                                           ; $6752: $00
    nop                                           ; $6753: $00
    nop                                           ; $6754: $00
    nop                                           ; $6755: $00
    nop                                           ; $6756: $00
    nop                                           ; $6757: $00
    nop                                           ; $6758: $00
    nop                                           ; $6759: $00
    nop                                           ; $675a: $00
    nop                                           ; $675b: $00
    nop                                           ; $675c: $00
    nop                                           ; $675d: $00
    nop                                           ; $675e: $00
    nop                                           ; $675f: $00
    rst $38                                       ; $6760: $ff
    rst $38                                       ; $6761: $ff
    rst $38                                       ; $6762: $ff

jr_04f_6763:
    nop                                           ; $6763: $00
    rst $38                                       ; $6764: $ff
    rst $38                                       ; $6765: $ff
    nop                                           ; $6766: $00
    rst $38                                       ; $6767: $ff
    ldh a, [rIE]                                  ; $6768: $f0 $ff
    ld [$0cff], sp                                ; $676a: $08 $ff $0c
    rst $30                                       ; $676d: $f7
    ld a, [de]                                    ; $676e: $1a
    rst $20                                       ; $676f: $e7
    ld a, [$fe07]                                 ; $6770: $fa $07 $fe
    di                                            ; $6773: $f3
    ld a, [hl]                                    ; $6774: $7e
    adc e                                         ; $6775: $8b
    db $fc                                        ; $6776: $fc
    ld e, a                                       ; $6777: $5f
    ld hl, sp+$0f                                 ; $6778: $f8 $0f
    rst $18                                       ; $677a: $df
    cpl                                           ; $677b: $2f
    ld a, a                                       ; $677c: $7f
    sbc c                                         ; $677d: $99
    cp $f3                                        ; $677e: $fe $f3
    inc l                                         ; $6780: $2c
    rst $38                                       ; $6781: $ff
    jr z, jr_04f_6763                             ; $6782: $28 $df

    db $fc                                        ; $6784: $fc
    rra                                           ; $6785: $1f
    and $fb                                       ; $6786: $e6 $fb
    and d                                         ; $6788: $a2
    rst $38                                       ; $6789: $ff
    rst $38                                       ; $678a: $ff
    rst $38                                       ; $678b: $ff
    rst $38                                       ; $678c: $ff
    nop                                           ; $678d: $00
    rst $38                                       ; $678e: $ff
    rst $38                                       ; $678f: $ff
    nop                                           ; $6790: $00
    nop                                           ; $6791: $00
    nop                                           ; $6792: $00
    nop                                           ; $6793: $00
    nop                                           ; $6794: $00
    nop                                           ; $6795: $00
    nop                                           ; $6796: $00
    nop                                           ; $6797: $00
    nop                                           ; $6798: $00
    nop                                           ; $6799: $00
    nop                                           ; $679a: $00
    nop                                           ; $679b: $00
    nop                                           ; $679c: $00
    nop                                           ; $679d: $00
    nop                                           ; $679e: $00
    nop                                           ; $679f: $00
    db $fc                                        ; $67a0: $fc
    db $fc                                        ; $67a1: $fc
    ld a, [$f506]                                 ; $67a2: $fa $06 $f5
    ei                                            ; $67a5: $fb
    dec bc                                        ; $67a6: $0b
    db $fd                                        ; $67a7: $fd
    rlca                                          ; $67a8: $07
    db $fd                                        ; $67a9: $fd
    rlca                                          ; $67aa: $07
    db $fd                                        ; $67ab: $fd
    rlca                                          ; $67ac: $07
    db $fd                                        ; $67ad: $fd
    rlca                                          ; $67ae: $07
    db $fd                                        ; $67af: $fd
    rlca                                          ; $67b0: $07
    db $fd                                        ; $67b1: $fd
    rlca                                          ; $67b2: $07
    db $fd                                        ; $67b3: $fd
    rlca                                          ; $67b4: $07
    db $fd                                        ; $67b5: $fd
    rla                                           ; $67b6: $17
    db $fd                                        ; $67b7: $fd
    ld [hl], a                                    ; $67b8: $77
    db $ed                                        ; $67b9: $ed
    rst $30                                       ; $67ba: $f7
    adc l                                         ; $67bb: $8d
    rst $20                                       ; $67bc: $e7
    dec e                                         ; $67bd: $1d
    ld h, a                                       ; $67be: $67
    sbc l                                         ; $67bf: $9d
    daa                                           ; $67c0: $27
    db $dd                                        ; $67c1: $dd
    rlca                                          ; $67c2: $07
    db $fd                                        ; $67c3: $fd
    rlca                                          ; $67c4: $07
    db $fd                                        ; $67c5: $fd
    rlca                                          ; $67c6: $07
    db $fd                                        ; $67c7: $fd
    dec bc                                        ; $67c8: $0b
    db $fd                                        ; $67c9: $fd
    push af                                       ; $67ca: $f5
    ei                                            ; $67cb: $fb
    ld a, [$fc06]                                 ; $67cc: $fa $06 $fc
    db $fc                                        ; $67cf: $fc
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
    nop                                           ; $67da: $00
    nop                                           ; $67db: $00
    nop                                           ; $67dc: $00
    nop                                           ; $67dd: $00
    nop                                           ; $67de: $00
    nop                                           ; $67df: $00
    ccf                                           ; $67e0: $3f
    ccf                                           ; $67e1: $3f
    ld e, a                                       ; $67e2: $5f
    ld h, b                                       ; $67e3: $60
    xor a                                         ; $67e4: $af
    rst $18                                       ; $67e5: $df
    ret nc                                        ; $67e6: $d0

    cp a                                          ; $67e7: $bf
    db $e3                                        ; $67e8: $e3
    cp a                                          ; $67e9: $bf
    xor $bd                                       ; $67ea: $ee $bd
    or $b9                                        ; $67ec: $f6 $b9
    db $e3                                        ; $67ee: $e3
    cp h                                          ; $67ef: $bc
    db $e3                                        ; $67f0: $e3
    cp h                                          ; $67f1: $bc
    rst $20                                       ; $67f2: $e7
    cp b                                          ; $67f3: $b8
    rst $38                                       ; $67f4: $ff
    and c                                         ; $67f5: $a1
    cp $b3                                        ; $67f6: $fe $b3
    xor $bf                                       ; $67f8: $ee $bf
    ld [c], a                                     ; $67fa: $e2
    cp a                                          ; $67fb: $bf
    db $e3                                        ; $67fc: $e3
    cp a                                          ; $67fd: $bf
    rst $20                                       ; $67fe: $e7
    cp l                                          ; $67ff: $bd
    rst $28                                       ; $6800: $ef
    cp c                                          ; $6801: $b9
    xor $bb                                       ; $6802: $ee $bb
    rst $20                                       ; $6804: $e7
    cp a                                          ; $6805: $bf
    ld [$d8bd], a                                 ; $6806: $ea $bd $d8
    cp a                                          ; $6809: $bf
    xor a                                         ; $680a: $af
    rst $18                                       ; $680b: $df
    ld e, a                                       ; $680c: $5f
    ld h, b                                       ; $680d: $60
    ccf                                           ; $680e: $3f
    ccf                                           ; $680f: $3f
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
    nop                                           ; $681a: $00
    nop                                           ; $681b: $00
    nop                                           ; $681c: $00
    nop                                           ; $681d: $00
    nop                                           ; $681e: $00
    nop                                           ; $681f: $00
    rst $38                                       ; $6820: $ff
    rst $38                                       ; $6821: $ff
    rst $38                                       ; $6822: $ff

jr_04f_6823:
    nop                                           ; $6823: $00
    rst $38                                       ; $6824: $ff
    rst $38                                       ; $6825: $ff
    nop                                           ; $6826: $00
    rst $38                                       ; $6827: $ff
    ldh a, [rIE]                                  ; $6828: $f0 $ff
    ld [$0cff], sp                                ; $682a: $08 $ff $0c
    rst $30                                       ; $682d: $f7
    ld a, [de]                                    ; $682e: $1a
    rst $20                                       ; $682f: $e7
    ld a, [$fe07]                                 ; $6830: $fa $07 $fe
    di                                            ; $6833: $f3
    ld a, [hl]                                    ; $6834: $7e
    adc e                                         ; $6835: $8b
    db $fd                                        ; $6836: $fd
    ld e, a                                       ; $6837: $5f
    db $fd                                        ; $6838: $fd
    rrca                                          ; $6839: $0f
    sbc $2b                                       ; $683a: $de $2b
    ld a, [hl]                                    ; $683c: $7e
    sub e                                         ; $683d: $93
    db $fc                                        ; $683e: $fc
    rst $30                                       ; $683f: $f7
    jr z, @+$01                                   ; $6840: $28 $ff

    jr z, jr_04f_6823                             ; $6842: $28 $df

    db $fc                                        ; $6844: $fc
    rra                                           ; $6845: $1f
    and $fb                                       ; $6846: $e6 $fb
    and d                                         ; $6848: $a2
    rst $38                                       ; $6849: $ff
    rst $38                                       ; $684a: $ff
    rst $38                                       ; $684b: $ff
    rst $38                                       ; $684c: $ff
    nop                                           ; $684d: $00
    rst $38                                       ; $684e: $ff
    rst $38                                       ; $684f: $ff
    nop                                           ; $6850: $00
    nop                                           ; $6851: $00
    nop                                           ; $6852: $00
    nop                                           ; $6853: $00
    nop                                           ; $6854: $00
    nop                                           ; $6855: $00
    nop                                           ; $6856: $00
    nop                                           ; $6857: $00
    nop                                           ; $6858: $00
    nop                                           ; $6859: $00
    nop                                           ; $685a: $00
    nop                                           ; $685b: $00
    nop                                           ; $685c: $00
    nop                                           ; $685d: $00
    nop                                           ; $685e: $00
    nop                                           ; $685f: $00
    db $fc                                        ; $6860: $fc
    db $fc                                        ; $6861: $fc
    ld a, [$f506]                                 ; $6862: $fa $06 $f5
    ei                                            ; $6865: $fb
    dec bc                                        ; $6866: $0b
    db $fd                                        ; $6867: $fd
    rlca                                          ; $6868: $07
    db $fd                                        ; $6869: $fd
    rlca                                          ; $686a: $07
    db $fd                                        ; $686b: $fd
    rlca                                          ; $686c: $07
    db $fd                                        ; $686d: $fd
    ld b, a                                       ; $686e: $47
    db $fd                                        ; $686f: $fd
    ld h, a                                       ; $6870: $67
    db $dd                                        ; $6871: $dd
    rst $20                                       ; $6872: $e7
    sbc l                                         ; $6873: $9d
    rst $30                                       ; $6874: $f7
    adc l                                         ; $6875: $8d
    rst $30                                       ; $6876: $f7
    dec c                                         ; $6877: $0d
    ld [hl], a                                    ; $6878: $77
    adc l                                         ; $6879: $8d
    scf                                           ; $687a: $37
    call $ed17                                    ; $687b: $cd $17 $ed
    rlca                                          ; $687e: $07
    db $fd                                        ; $687f: $fd
    rlca                                          ; $6880: $07
    db $fd                                        ; $6881: $fd
    rlca                                          ; $6882: $07
    db $fd                                        ; $6883: $fd
    rlca                                          ; $6884: $07
    db $fd                                        ; $6885: $fd
    rlca                                          ; $6886: $07
    db $fd                                        ; $6887: $fd
    dec bc                                        ; $6888: $0b
    db $fd                                        ; $6889: $fd
    push af                                       ; $688a: $f5
    ei                                            ; $688b: $fb
    ld a, [$fc06]                                 ; $688c: $fa $06 $fc
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
    nop                                           ; $689a: $00
    nop                                           ; $689b: $00
    nop                                           ; $689c: $00
    nop                                           ; $689d: $00
    nop                                           ; $689e: $00
    nop                                           ; $689f: $00
    ccf                                           ; $68a0: $3f
    ccf                                           ; $68a1: $3f
    ld e, a                                       ; $68a2: $5f
    ld h, b                                       ; $68a3: $60
    xor a                                         ; $68a4: $af
    rst $18                                       ; $68a5: $df
    ret nc                                        ; $68a6: $d0

    cp a                                          ; $68a7: $bf
    ldh [$bf], a                                  ; $68a8: $e0 $bf
    ldh [$bf], a                                  ; $68aa: $e0 $bf
    ldh [$bf], a                                  ; $68ac: $e0 $bf
    ldh [$bf], a                                  ; $68ae: $e0 $bf
    ldh [$bf], a                                  ; $68b0: $e0 $bf
    ldh [$bf], a                                  ; $68b2: $e0 $bf
    ldh [$bf], a                                  ; $68b4: $e0 $bf
    ldh [$bf], a                                  ; $68b6: $e0 $bf
    ldh [$bf], a                                  ; $68b8: $e0 $bf
    ldh [$bf], a                                  ; $68ba: $e0 $bf
    ldh [$bf], a                                  ; $68bc: $e0 $bf
    ldh [$bf], a                                  ; $68be: $e0 $bf
    ldh [$bf], a                                  ; $68c0: $e0 $bf
    ldh [$bf], a                                  ; $68c2: $e0 $bf
    ldh [$bf], a                                  ; $68c4: $e0 $bf
    ldh [$bf], a                                  ; $68c6: $e0 $bf
    ret nc                                        ; $68c8: $d0

    cp a                                          ; $68c9: $bf
    xor a                                         ; $68ca: $af
    rst $18                                       ; $68cb: $df
    ld e, a                                       ; $68cc: $5f
    ld h, b                                       ; $68cd: $60
    ccf                                           ; $68ce: $3f
    ccf                                           ; $68cf: $3f
    nop                                           ; $68d0: $00
    nop                                           ; $68d1: $00
    nop                                           ; $68d2: $00
    nop                                           ; $68d3: $00
    nop                                           ; $68d4: $00
    nop                                           ; $68d5: $00
    nop                                           ; $68d6: $00
    nop                                           ; $68d7: $00
    nop                                           ; $68d8: $00
    nop                                           ; $68d9: $00
    nop                                           ; $68da: $00
    nop                                           ; $68db: $00
    nop                                           ; $68dc: $00
    nop                                           ; $68dd: $00
    nop                                           ; $68de: $00
    nop                                           ; $68df: $00
    rst $38                                       ; $68e0: $ff
    rst $38                                       ; $68e1: $ff
    rst $38                                       ; $68e2: $ff
    nop                                           ; $68e3: $00
    rst $38                                       ; $68e4: $ff
    rst $38                                       ; $68e5: $ff
    nop                                           ; $68e6: $00
    rst $38                                       ; $68e7: $ff
    inc e                                         ; $68e8: $1c
    rst $38                                       ; $68e9: $ff
    ld a, [hl+]                                   ; $68ea: $2a
    rst $30                                       ; $68eb: $f7
    ld a, $e3                                     ; $68ec: $3e $e3
    ld a, [hl+]                                   ; $68ee: $2a
    rst $30                                       ; $68ef: $f7
    inc e                                         ; $68f0: $1c
    rst $38                                       ; $68f1: $ff
    nop                                           ; $68f2: $00
    rst $38                                       ; $68f3: $ff
    nop                                           ; $68f4: $00
    rst $38                                       ; $68f5: $ff
    nop                                           ; $68f6: $00
    rst $38                                       ; $68f7: $ff
    nop                                           ; $68f8: $00
    rst $38                                       ; $68f9: $ff
    inc d                                         ; $68fa: $14
    rst $38                                       ; $68fb: $ff
    ld a, [hl+]                                   ; $68fc: $2a
    rst $38                                       ; $68fd: $ff
    inc d                                         ; $68fe: $14
    rst $38                                       ; $68ff: $ff
    nop                                           ; $6900: $00
    rst $38                                       ; $6901: $ff
    nop                                           ; $6902: $00
    rst $38                                       ; $6903: $ff
    nop                                           ; $6904: $00
    rst $38                                       ; $6905: $ff
    nop                                           ; $6906: $00
    rst $38                                       ; $6907: $ff
    nop                                           ; $6908: $00
    rst $38                                       ; $6909: $ff
    rst $38                                       ; $690a: $ff
    rst $38                                       ; $690b: $ff
    rst $38                                       ; $690c: $ff
    nop                                           ; $690d: $00
    rst $38                                       ; $690e: $ff
    rst $38                                       ; $690f: $ff
    nop                                           ; $6910: $00
    nop                                           ; $6911: $00
    nop                                           ; $6912: $00
    nop                                           ; $6913: $00
    nop                                           ; $6914: $00
    nop                                           ; $6915: $00
    nop                                           ; $6916: $00
    nop                                           ; $6917: $00
    nop                                           ; $6918: $00
    nop                                           ; $6919: $00
    nop                                           ; $691a: $00
    nop                                           ; $691b: $00
    nop                                           ; $691c: $00
    nop                                           ; $691d: $00
    nop                                           ; $691e: $00
    nop                                           ; $691f: $00
    db $fc                                        ; $6920: $fc
    db $fc                                        ; $6921: $fc
    ld a, [$f506]                                 ; $6922: $fa $06 $f5
    ei                                            ; $6925: $fb
    dec bc                                        ; $6926: $0b
    db $fd                                        ; $6927: $fd
    rlca                                          ; $6928: $07
    db $fd                                        ; $6929: $fd
    rlca                                          ; $692a: $07
    db $fd                                        ; $692b: $fd
    rlca                                          ; $692c: $07
    db $fd                                        ; $692d: $fd
    rlca                                          ; $692e: $07
    db $fd                                        ; $692f: $fd
    rlca                                          ; $6930: $07
    db $fd                                        ; $6931: $fd
    rlca                                          ; $6932: $07
    db $fd                                        ; $6933: $fd
    rlca                                          ; $6934: $07
    db $fd                                        ; $6935: $fd
    rlca                                          ; $6936: $07
    db $fd                                        ; $6937: $fd
    rlca                                          ; $6938: $07
    db $fd                                        ; $6939: $fd
    rlca                                          ; $693a: $07
    db $fd                                        ; $693b: $fd
    rlca                                          ; $693c: $07
    db $fd                                        ; $693d: $fd
    rlca                                          ; $693e: $07
    db $fd                                        ; $693f: $fd
    rlca                                          ; $6940: $07
    db $fd                                        ; $6941: $fd
    rlca                                          ; $6942: $07
    db $fd                                        ; $6943: $fd
    rlca                                          ; $6944: $07
    db $fd                                        ; $6945: $fd
    rlca                                          ; $6946: $07
    db $fd                                        ; $6947: $fd
    dec bc                                        ; $6948: $0b
    db $fd                                        ; $6949: $fd
    push af                                       ; $694a: $f5
    ei                                            ; $694b: $fb
    ld a, [$fc06]                                 ; $694c: $fa $06 $fc
    db $fc                                        ; $694f: $fc
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
    nop                                           ; $695a: $00
    nop                                           ; $695b: $00
    nop                                           ; $695c: $00
    nop                                           ; $695d: $00
    nop                                           ; $695e: $00
    nop                                           ; $695f: $00
    ccf                                           ; $6960: $3f
    ccf                                           ; $6961: $3f
    ld e, a                                       ; $6962: $5f
    ld h, b                                       ; $6963: $60
    xor a                                         ; $6964: $af
    rst $18                                       ; $6965: $df
    ret nc                                        ; $6966: $d0

    cp a                                          ; $6967: $bf
    ldh [$bf], a                                  ; $6968: $e0 $bf
    ldh [$bf], a                                  ; $696a: $e0 $bf
    ldh [$bf], a                                  ; $696c: $e0 $bf
    ldh [$bf], a                                  ; $696e: $e0 $bf
    ldh [$bf], a                                  ; $6970: $e0 $bf
    ldh [$bf], a                                  ; $6972: $e0 $bf
    ldh [$bf], a                                  ; $6974: $e0 $bf
    ldh [$bf], a                                  ; $6976: $e0 $bf
    pop hl                                        ; $6978: $e1
    cp [hl]                                       ; $6979: $be
    ldh [$bf], a                                  ; $697a: $e0 $bf
    ldh [$bf], a                                  ; $697c: $e0 $bf
    ldh [$bf], a                                  ; $697e: $e0 $bf
    ldh [$bf], a                                  ; $6980: $e0 $bf
    ldh [$bf], a                                  ; $6982: $e0 $bf
    ldh [$bf], a                                  ; $6984: $e0 $bf
    ldh [$bf], a                                  ; $6986: $e0 $bf
    ret nc                                        ; $6988: $d0

    cp a                                          ; $6989: $bf
    xor a                                         ; $698a: $af
    rst $18                                       ; $698b: $df
    ld e, a                                       ; $698c: $5f
    ld h, b                                       ; $698d: $60
    ccf                                           ; $698e: $3f
    ccf                                           ; $698f: $3f
    nop                                           ; $6990: $00
    nop                                           ; $6991: $00
    nop                                           ; $6992: $00
    nop                                           ; $6993: $00
    nop                                           ; $6994: $00
    nop                                           ; $6995: $00
    nop                                           ; $6996: $00
    nop                                           ; $6997: $00
    nop                                           ; $6998: $00
    nop                                           ; $6999: $00
    nop                                           ; $699a: $00
    nop                                           ; $699b: $00
    nop                                           ; $699c: $00
    nop                                           ; $699d: $00
    nop                                           ; $699e: $00
    nop                                           ; $699f: $00
    rst $38                                       ; $69a0: $ff
    rst $38                                       ; $69a1: $ff
    rst $38                                       ; $69a2: $ff
    nop                                           ; $69a3: $00
    rst $38                                       ; $69a4: $ff
    rst $38                                       ; $69a5: $ff
    nop                                           ; $69a6: $00
    rst $38                                       ; $69a7: $ff
    nop                                           ; $69a8: $00
    rst $38                                       ; $69a9: $ff
    nop                                           ; $69aa: $00
    rst $38                                       ; $69ab: $ff
    nop                                           ; $69ac: $00
    rst $38                                       ; $69ad: $ff
    nop                                           ; $69ae: $00
    rst $38                                       ; $69af: $ff
    nop                                           ; $69b0: $00
    rst $38                                       ; $69b1: $ff
    ld b, b                                       ; $69b2: $40
    cp a                                          ; $69b3: $bf
    nop                                           ; $69b4: $00
    rst $38                                       ; $69b5: $ff
    ld a, [hl+]                                   ; $69b6: $2a
    push de                                       ; $69b7: $d5
    ld a, $c1                                     ; $69b8: $3e $c1
    cp $01                                        ; $69ba: $fe $01
    ld a, a                                       ; $69bc: $7f
    sbc b                                         ; $69bd: $98
    ld a, [hl]                                    ; $69be: $7e
    add l                                         ; $69bf: $85
    inc e                                         ; $69c0: $1c
    db $e3                                        ; $69c1: $e3
    ld [$00ff], sp                                ; $69c2: $08 $ff $00
    rst $38                                       ; $69c5: $ff
    nop                                           ; $69c6: $00
    rst $38                                       ; $69c7: $ff
    nop                                           ; $69c8: $00
    rst $38                                       ; $69c9: $ff
    rst $38                                       ; $69ca: $ff
    rst $38                                       ; $69cb: $ff
    rst $38                                       ; $69cc: $ff
    nop                                           ; $69cd: $00
    rst $38                                       ; $69ce: $ff
    rst $38                                       ; $69cf: $ff
    nop                                           ; $69d0: $00
    nop                                           ; $69d1: $00
    nop                                           ; $69d2: $00
    nop                                           ; $69d3: $00
    nop                                           ; $69d4: $00
    nop                                           ; $69d5: $00
    nop                                           ; $69d6: $00
    nop                                           ; $69d7: $00
    nop                                           ; $69d8: $00
    nop                                           ; $69d9: $00
    nop                                           ; $69da: $00
    nop                                           ; $69db: $00
    nop                                           ; $69dc: $00
    nop                                           ; $69dd: $00
    nop                                           ; $69de: $00
    nop                                           ; $69df: $00
    db $fc                                        ; $69e0: $fc
    db $fc                                        ; $69e1: $fc
    ld a, [$f506]                                 ; $69e2: $fa $06 $f5
    ei                                            ; $69e5: $fb
    dec bc                                        ; $69e6: $0b
    db $fd                                        ; $69e7: $fd
    rlca                                          ; $69e8: $07
    db $fd                                        ; $69e9: $fd
    rlca                                          ; $69ea: $07
    db $fd                                        ; $69eb: $fd
    rlca                                          ; $69ec: $07
    db $fd                                        ; $69ed: $fd
    rlca                                          ; $69ee: $07
    db $fd                                        ; $69ef: $fd
    rlca                                          ; $69f0: $07
    db $fd                                        ; $69f1: $fd
    rlca                                          ; $69f2: $07
    db $fd                                        ; $69f3: $fd
    add a                                         ; $69f4: $87
    ld a, l                                       ; $69f5: $7d
    rlca                                          ; $69f6: $07
    db $fd                                        ; $69f7: $fd
    rlca                                          ; $69f8: $07
    db $fd                                        ; $69f9: $fd
    add a                                         ; $69fa: $87
    ld a, l                                       ; $69fb: $7d
    rlca                                          ; $69fc: $07
    db $fd                                        ; $69fd: $fd
    rlca                                          ; $69fe: $07
    db $fd                                        ; $69ff: $fd
    rlca                                          ; $6a00: $07
    db $fd                                        ; $6a01: $fd
    rlca                                          ; $6a02: $07
    db $fd                                        ; $6a03: $fd
    rlca                                          ; $6a04: $07
    db $fd                                        ; $6a05: $fd
    rlca                                          ; $6a06: $07
    db $fd                                        ; $6a07: $fd
    dec bc                                        ; $6a08: $0b
    db $fd                                        ; $6a09: $fd
    push af                                       ; $6a0a: $f5
    ei                                            ; $6a0b: $fb
    ld a, [$fc06]                                 ; $6a0c: $fa $06 $fc
    db $fc                                        ; $6a0f: $fc
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
    nop                                           ; $6a1c: $00
    nop                                           ; $6a1d: $00
    nop                                           ; $6a1e: $00
    nop                                           ; $6a1f: $00
    ccf                                           ; $6a20: $3f
    ccf                                           ; $6a21: $3f
    ld e, a                                       ; $6a22: $5f
    ld h, b                                       ; $6a23: $60
    xor a                                         ; $6a24: $af
    rst $18                                       ; $6a25: $df
    ret nc                                        ; $6a26: $d0

    cp a                                          ; $6a27: $bf
    ldh [$bf], a                                  ; $6a28: $e0 $bf
    ldh [$bf], a                                  ; $6a2a: $e0 $bf
    ldh [$bf], a                                  ; $6a2c: $e0 $bf
    ldh [$bf], a                                  ; $6a2e: $e0 $bf
    db $e4                                        ; $6a30: $e4
    cp e                                          ; $6a31: $bb
    ldh [$bf], a                                  ; $6a32: $e0 $bf
    ldh [$bf], a                                  ; $6a34: $e0 $bf
    ldh [$bf], a                                  ; $6a36: $e0 $bf
    ldh [$bf], a                                  ; $6a38: $e0 $bf
    ldh [$bf], a                                  ; $6a3a: $e0 $bf
    ld [c], a                                     ; $6a3c: $e2
    cp l                                          ; $6a3d: $bd
    ldh [$bf], a                                  ; $6a3e: $e0 $bf
    pop hl                                        ; $6a40: $e1
    cp [hl]                                       ; $6a41: $be
    ldh [$bf], a                                  ; $6a42: $e0 $bf
    ldh [$bf], a                                  ; $6a44: $e0 $bf
    ldh [$bf], a                                  ; $6a46: $e0 $bf
    ret nc                                        ; $6a48: $d0

    cp a                                          ; $6a49: $bf
    xor a                                         ; $6a4a: $af
    rst $18                                       ; $6a4b: $df
    ld e, a                                       ; $6a4c: $5f
    ld h, b                                       ; $6a4d: $60
    ccf                                           ; $6a4e: $3f
    ccf                                           ; $6a4f: $3f
    nop                                           ; $6a50: $00
    nop                                           ; $6a51: $00
    nop                                           ; $6a52: $00
    nop                                           ; $6a53: $00
    nop                                           ; $6a54: $00
    nop                                           ; $6a55: $00
    nop                                           ; $6a56: $00
    nop                                           ; $6a57: $00
    nop                                           ; $6a58: $00
    nop                                           ; $6a59: $00
    nop                                           ; $6a5a: $00
    nop                                           ; $6a5b: $00
    nop                                           ; $6a5c: $00
    nop                                           ; $6a5d: $00
    nop                                           ; $6a5e: $00
    nop                                           ; $6a5f: $00
    rst $38                                       ; $6a60: $ff
    rst $38                                       ; $6a61: $ff
    rst $38                                       ; $6a62: $ff
    nop                                           ; $6a63: $00
    rst $38                                       ; $6a64: $ff
    rst $38                                       ; $6a65: $ff
    nop                                           ; $6a66: $00
    rst $38                                       ; $6a67: $ff
    nop                                           ; $6a68: $00
    rst $38                                       ; $6a69: $ff
    nop                                           ; $6a6a: $00

jr_04f_6a6b:
    rst $38                                       ; $6a6b: $ff
    nop                                           ; $6a6c: $00
    rst $38                                       ; $6a6d: $ff
    nop                                           ; $6a6e: $00
    rst $38                                       ; $6a6f: $ff
    ld [$08f7], sp                                ; $6a70: $08 $f7 $08
    rst $30                                       ; $6a73: $f7
    ld [$18f7], sp                                ; $6a74: $08 $f7 $18
    rst $20                                       ; $6a77: $e7
    inc e                                         ; $6a78: $1c
    db $e3                                        ; $6a79: $e3
    cp h                                          ; $6a7a: $bc
    ld b, e                                       ; $6a7b: $43
    ld a, l                                       ; $6a7c: $7d
    add d                                         ; $6a7d: $82
    ld a, $c1                                     ; $6a7e: $3e $c1
    ld a, [hl]                                    ; $6a80: $7e
    add c                                         ; $6a81: $81
    jr jr_04f_6a6b                                ; $6a82: $18 $e7

    nop                                           ; $6a84: $00
    rst $38                                       ; $6a85: $ff
    nop                                           ; $6a86: $00
    rst $38                                       ; $6a87: $ff
    nop                                           ; $6a88: $00
    rst $38                                       ; $6a89: $ff
    rst $38                                       ; $6a8a: $ff
    rst $38                                       ; $6a8b: $ff
    rst $38                                       ; $6a8c: $ff
    nop                                           ; $6a8d: $00
    rst $38                                       ; $6a8e: $ff
    rst $38                                       ; $6a8f: $ff
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
    nop                                           ; $6a9a: $00
    nop                                           ; $6a9b: $00
    nop                                           ; $6a9c: $00
    nop                                           ; $6a9d: $00
    nop                                           ; $6a9e: $00
    nop                                           ; $6a9f: $00
    db $fc                                        ; $6aa0: $fc
    db $fc                                        ; $6aa1: $fc
    ld a, [$f506]                                 ; $6aa2: $fa $06 $f5
    ei                                            ; $6aa5: $fb
    dec bc                                        ; $6aa6: $0b
    db $fd                                        ; $6aa7: $fd
    rlca                                          ; $6aa8: $07
    db $fd                                        ; $6aa9: $fd
    rlca                                          ; $6aaa: $07
    db $fd                                        ; $6aab: $fd
    rlca                                          ; $6aac: $07
    db $fd                                        ; $6aad: $fd
    rlca                                          ; $6aae: $07
    db $fd                                        ; $6aaf: $fd
    rlca                                          ; $6ab0: $07
    db $fd                                        ; $6ab1: $fd
    rla                                           ; $6ab2: $17
    db $ed                                        ; $6ab3: $ed
    rlca                                          ; $6ab4: $07
    db $fd                                        ; $6ab5: $fd
    rlca                                          ; $6ab6: $07
    db $fd                                        ; $6ab7: $fd
    rlca                                          ; $6ab8: $07
    db $fd                                        ; $6ab9: $fd
    rlca                                          ; $6aba: $07
    db $fd                                        ; $6abb: $fd
    rlca                                          ; $6abc: $07
    db $fd                                        ; $6abd: $fd
    rla                                           ; $6abe: $17
    db $ed                                        ; $6abf: $ed
    rlca                                          ; $6ac0: $07
    db $fd                                        ; $6ac1: $fd
    daa                                           ; $6ac2: $27
    db $dd                                        ; $6ac3: $dd
    rlca                                          ; $6ac4: $07
    db $fd                                        ; $6ac5: $fd
    rlca                                          ; $6ac6: $07
    db $fd                                        ; $6ac7: $fd
    dec bc                                        ; $6ac8: $0b
    db $fd                                        ; $6ac9: $fd
    push af                                       ; $6aca: $f5
    ei                                            ; $6acb: $fb
    ld a, [$fc06]                                 ; $6acc: $fa $06 $fc
    db $fc                                        ; $6acf: $fc
    nop                                           ; $6ad0: $00
    nop                                           ; $6ad1: $00
    nop                                           ; $6ad2: $00
    nop                                           ; $6ad3: $00
    nop                                           ; $6ad4: $00
    nop                                           ; $6ad5: $00
    nop                                           ; $6ad6: $00
    nop                                           ; $6ad7: $00
    nop                                           ; $6ad8: $00
    nop                                           ; $6ad9: $00
    nop                                           ; $6ada: $00
    nop                                           ; $6adb: $00
    nop                                           ; $6adc: $00
    nop                                           ; $6add: $00
    nop                                           ; $6ade: $00
    nop                                           ; $6adf: $00
    ccf                                           ; $6ae0: $3f
    ccf                                           ; $6ae1: $3f
    ld e, a                                       ; $6ae2: $5f
    ld h, b                                       ; $6ae3: $60
    xor a                                         ; $6ae4: $af
    rst $18                                       ; $6ae5: $df
    ret nc                                        ; $6ae6: $d0

    cp a                                          ; $6ae7: $bf
    ldh [$bf], a                                  ; $6ae8: $e0 $bf
    ldh [$bf], a                                  ; $6aea: $e0 $bf
    ldh [$bf], a                                  ; $6aec: $e0 $bf
    ldh [$bf], a                                  ; $6aee: $e0 $bf
    ldh [$bf], a                                  ; $6af0: $e0 $bf
    ldh [$bf], a                                  ; $6af2: $e0 $bf
    ldh [$bf], a                                  ; $6af4: $e0 $bf
    ldh [$bf], a                                  ; $6af6: $e0 $bf
    ldh [$bf], a                                  ; $6af8: $e0 $bf
    add sp, -$49                                  ; $6afa: $e8 $b7
    pop hl                                        ; $6afc: $e1
    cp [hl]                                       ; $6afd: $be
    pop hl                                        ; $6afe: $e1
    cp [hl]                                       ; $6aff: $be
    ldh [$bf], a                                  ; $6b00: $e0 $bf
    db $e4                                        ; $6b02: $e4
    cp e                                          ; $6b03: $bb
    ldh [$bf], a                                  ; $6b04: $e0 $bf
    ldh [$bf], a                                  ; $6b06: $e0 $bf
    ret nc                                        ; $6b08: $d0

    cp a                                          ; $6b09: $bf
    xor a                                         ; $6b0a: $af
    rst $18                                       ; $6b0b: $df
    ld e, a                                       ; $6b0c: $5f
    ld h, b                                       ; $6b0d: $60
    ccf                                           ; $6b0e: $3f
    ccf                                           ; $6b0f: $3f
    nop                                           ; $6b10: $00
    nop                                           ; $6b11: $00
    nop                                           ; $6b12: $00
    nop                                           ; $6b13: $00
    nop                                           ; $6b14: $00
    nop                                           ; $6b15: $00
    nop                                           ; $6b16: $00
    nop                                           ; $6b17: $00
    nop                                           ; $6b18: $00
    nop                                           ; $6b19: $00
    nop                                           ; $6b1a: $00
    nop                                           ; $6b1b: $00
    nop                                           ; $6b1c: $00
    nop                                           ; $6b1d: $00
    nop                                           ; $6b1e: $00
    nop                                           ; $6b1f: $00
    rst $38                                       ; $6b20: $ff
    rst $38                                       ; $6b21: $ff
    rst $38                                       ; $6b22: $ff
    nop                                           ; $6b23: $00
    rst $38                                       ; $6b24: $ff
    rst $38                                       ; $6b25: $ff
    nop                                           ; $6b26: $00
    rst $38                                       ; $6b27: $ff
    nop                                           ; $6b28: $00
    rst $38                                       ; $6b29: $ff
    nop                                           ; $6b2a: $00
    rst $38                                       ; $6b2b: $ff
    nop                                           ; $6b2c: $00
    rst $38                                       ; $6b2d: $ff
    nop                                           ; $6b2e: $00
    rst $38                                       ; $6b2f: $ff
    nop                                           ; $6b30: $00
    rst $38                                       ; $6b31: $ff
    nop                                           ; $6b32: $00
    rst $38                                       ; $6b33: $ff
    ld [$00f7], sp                                ; $6b34: $08 $f7 $00
    rst $38                                       ; $6b37: $ff
    nop                                           ; $6b38: $00
    rst $38                                       ; $6b39: $ff
    add b                                         ; $6b3a: $80
    ld a, a                                       ; $6b3b: $7f
    ld [$1cf7], sp                                ; $6b3c: $08 $f7 $1c
    db $e3                                        ; $6b3f: $e3
    pop bc                                        ; $6b40: $c1
    ld a, $3e                                     ; $6b41: $3e $3e
    pop bc                                        ; $6b43: $c1
    nop                                           ; $6b44: $00
    rst $38                                       ; $6b45: $ff
    add b                                         ; $6b46: $80
    ld a, a                                       ; $6b47: $7f
    nop                                           ; $6b48: $00
    rst $38                                       ; $6b49: $ff
    rst $38                                       ; $6b4a: $ff
    rst $38                                       ; $6b4b: $ff
    rst $38                                       ; $6b4c: $ff
    nop                                           ; $6b4d: $00
    rst $38                                       ; $6b4e: $ff
    rst $38                                       ; $6b4f: $ff
    nop                                           ; $6b50: $00
    nop                                           ; $6b51: $00
    nop                                           ; $6b52: $00
    nop                                           ; $6b53: $00
    nop                                           ; $6b54: $00
    nop                                           ; $6b55: $00
    nop                                           ; $6b56: $00
    nop                                           ; $6b57: $00
    nop                                           ; $6b58: $00
    nop                                           ; $6b59: $00
    nop                                           ; $6b5a: $00
    nop                                           ; $6b5b: $00
    nop                                           ; $6b5c: $00
    nop                                           ; $6b5d: $00
    nop                                           ; $6b5e: $00
    nop                                           ; $6b5f: $00
    db $fc                                        ; $6b60: $fc
    db $fc                                        ; $6b61: $fc
    ld a, [$f506]                                 ; $6b62: $fa $06 $f5
    ei                                            ; $6b65: $fb
    dec bc                                        ; $6b66: $0b
    db $fd                                        ; $6b67: $fd
    rlca                                          ; $6b68: $07
    db $fd                                        ; $6b69: $fd
    rlca                                          ; $6b6a: $07
    db $fd                                        ; $6b6b: $fd
    rlca                                          ; $6b6c: $07
    db $fd                                        ; $6b6d: $fd
    rlca                                          ; $6b6e: $07
    db $fd                                        ; $6b6f: $fd
    rlca                                          ; $6b70: $07
    db $fd                                        ; $6b71: $fd
    rlca                                          ; $6b72: $07
    db $fd                                        ; $6b73: $fd
    rlca                                          ; $6b74: $07
    db $fd                                        ; $6b75: $fd
    rlca                                          ; $6b76: $07
    db $fd                                        ; $6b77: $fd
    rlca                                          ; $6b78: $07
    db $fd                                        ; $6b79: $fd
    adc a                                         ; $6b7a: $8f
    ld [hl], l                                    ; $6b7b: $75
    ld b, a                                       ; $6b7c: $47
    cp l                                          ; $6b7d: $bd
    ld b, a                                       ; $6b7e: $47
    cp l                                          ; $6b7f: $bd
    add a                                         ; $6b80: $87
    ld a, l                                       ; $6b81: $7d
    rlca                                          ; $6b82: $07
    db $fd                                        ; $6b83: $fd
    rlca                                          ; $6b84: $07
    db $fd                                        ; $6b85: $fd
    add a                                         ; $6b86: $87
    ld a, l                                       ; $6b87: $7d
    dec bc                                        ; $6b88: $0b
    db $fd                                        ; $6b89: $fd
    push af                                       ; $6b8a: $f5
    ei                                            ; $6b8b: $fb
    ld a, [$fc06]                                 ; $6b8c: $fa $06 $fc
    db $fc                                        ; $6b8f: $fc
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
    ccf                                           ; $6ba0: $3f
    ccf                                           ; $6ba1: $3f
    ld e, a                                       ; $6ba2: $5f
    ld h, b                                       ; $6ba3: $60
    xor a                                         ; $6ba4: $af
    rst $18                                       ; $6ba5: $df
    ret nc                                        ; $6ba6: $d0

    cp a                                          ; $6ba7: $bf
    ldh [$bf], a                                  ; $6ba8: $e0 $bf
    ldh [$bf], a                                  ; $6baa: $e0 $bf
    ldh [$bf], a                                  ; $6bac: $e0 $bf
    ldh [$bf], a                                  ; $6bae: $e0 $bf
    ldh [$bf], a                                  ; $6bb0: $e0 $bf
    ldh [$bf], a                                  ; $6bb2: $e0 $bf
    ldh [$bf], a                                  ; $6bb4: $e0 $bf
    ldh [$bf], a                                  ; $6bb6: $e0 $bf
    ldh [$bf], a                                  ; $6bb8: $e0 $bf
    pop hl                                        ; $6bba: $e1
    cp [hl]                                       ; $6bbb: $be
    ld [c], a                                     ; $6bbc: $e2
    cp l                                          ; $6bbd: $bd
    ld [c], a                                     ; $6bbe: $e2
    cp l                                          ; $6bbf: $bd
    pop hl                                        ; $6bc0: $e1
    cp [hl]                                       ; $6bc1: $be
    ldh [$bf], a                                  ; $6bc2: $e0 $bf
    ldh [$bf], a                                  ; $6bc4: $e0 $bf
    ldh [$bf], a                                  ; $6bc6: $e0 $bf
    ret nc                                        ; $6bc8: $d0

    cp a                                          ; $6bc9: $bf
    xor a                                         ; $6bca: $af
    rst $18                                       ; $6bcb: $df
    ld e, a                                       ; $6bcc: $5f
    ld h, b                                       ; $6bcd: $60
    ccf                                           ; $6bce: $3f
    ccf                                           ; $6bcf: $3f
    nop                                           ; $6bd0: $00
    nop                                           ; $6bd1: $00
    nop                                           ; $6bd2: $00
    nop                                           ; $6bd3: $00
    nop                                           ; $6bd4: $00
    nop                                           ; $6bd5: $00
    nop                                           ; $6bd6: $00
    nop                                           ; $6bd7: $00
    nop                                           ; $6bd8: $00
    nop                                           ; $6bd9: $00
    nop                                           ; $6bda: $00
    nop                                           ; $6bdb: $00
    nop                                           ; $6bdc: $00
    nop                                           ; $6bdd: $00
    nop                                           ; $6bde: $00
    nop                                           ; $6bdf: $00
    rst $38                                       ; $6be0: $ff
    rst $38                                       ; $6be1: $ff
    rst $38                                       ; $6be2: $ff
    nop                                           ; $6be3: $00
    rst $38                                       ; $6be4: $ff
    rst $38                                       ; $6be5: $ff
    nop                                           ; $6be6: $00
    rst $38                                       ; $6be7: $ff
    nop                                           ; $6be8: $00
    rst $38                                       ; $6be9: $ff
    nop                                           ; $6bea: $00
    rst $38                                       ; $6beb: $ff
    nop                                           ; $6bec: $00
    rst $38                                       ; $6bed: $ff
    nop                                           ; $6bee: $00
    rst $38                                       ; $6bef: $ff
    nop                                           ; $6bf0: $00
    rst $38                                       ; $6bf1: $ff
    nop                                           ; $6bf2: $00
    rst $38                                       ; $6bf3: $ff
    nop                                           ; $6bf4: $00
    rst $38                                       ; $6bf5: $ff
    nop                                           ; $6bf6: $00
    rst $38                                       ; $6bf7: $ff
    nop                                           ; $6bf8: $00
    rst $38                                       ; $6bf9: $ff
    nop                                           ; $6bfa: $00
    rst $38                                       ; $6bfb: $ff
    ld [$00f7], sp                                ; $6bfc: $08 $f7 $00
    rst $38                                       ; $6bff: $ff
    nop                                           ; $6c00: $00
    rst $38                                       ; $6c01: $ff
    nop                                           ; $6c02: $00
    rst $38                                       ; $6c03: $ff
    inc e                                         ; $6c04: $1c
    db $e3                                        ; $6c05: $e3
    nop                                           ; $6c06: $00
    rst $38                                       ; $6c07: $ff
    nop                                           ; $6c08: $00
    rst $38                                       ; $6c09: $ff
    rst $38                                       ; $6c0a: $ff
    rst $38                                       ; $6c0b: $ff
    rst $38                                       ; $6c0c: $ff
    nop                                           ; $6c0d: $00
    rst $38                                       ; $6c0e: $ff
    rst $38                                       ; $6c0f: $ff
    nop                                           ; $6c10: $00
    nop                                           ; $6c11: $00
    nop                                           ; $6c12: $00
    nop                                           ; $6c13: $00
    nop                                           ; $6c14: $00
    nop                                           ; $6c15: $00
    nop                                           ; $6c16: $00
    nop                                           ; $6c17: $00
    nop                                           ; $6c18: $00
    nop                                           ; $6c19: $00
    nop                                           ; $6c1a: $00
    nop                                           ; $6c1b: $00
    nop                                           ; $6c1c: $00
    nop                                           ; $6c1d: $00
    nop                                           ; $6c1e: $00
    nop                                           ; $6c1f: $00
    db $fc                                        ; $6c20: $fc
    db $fc                                        ; $6c21: $fc
    ld a, [$f506]                                 ; $6c22: $fa $06 $f5
    ei                                            ; $6c25: $fb
    dec bc                                        ; $6c26: $0b
    db $fd                                        ; $6c27: $fd
    rlca                                          ; $6c28: $07
    db $fd                                        ; $6c29: $fd
    rlca                                          ; $6c2a: $07
    db $fd                                        ; $6c2b: $fd
    rlca                                          ; $6c2c: $07
    db $fd                                        ; $6c2d: $fd
    rlca                                          ; $6c2e: $07
    db $fd                                        ; $6c2f: $fd
    rlca                                          ; $6c30: $07
    db $fd                                        ; $6c31: $fd
    rlca                                          ; $6c32: $07
    db $fd                                        ; $6c33: $fd
    rlca                                          ; $6c34: $07
    db $fd                                        ; $6c35: $fd
    rlca                                          ; $6c36: $07
    db $fd                                        ; $6c37: $fd
    rlca                                          ; $6c38: $07
    db $fd                                        ; $6c39: $fd
    rlca                                          ; $6c3a: $07
    db $fd                                        ; $6c3b: $fd
    daa                                           ; $6c3c: $27
    db $dd                                        ; $6c3d: $dd
    daa                                           ; $6c3e: $27
    db $dd                                        ; $6c3f: $dd
    rlca                                          ; $6c40: $07
    db $fd                                        ; $6c41: $fd
    add a                                         ; $6c42: $87
    ld a, l                                       ; $6c43: $7d
    rlca                                          ; $6c44: $07
    db $fd                                        ; $6c45: $fd
    rlca                                          ; $6c46: $07
    db $fd                                        ; $6c47: $fd
    dec bc                                        ; $6c48: $0b
    db $fd                                        ; $6c49: $fd
    push af                                       ; $6c4a: $f5
    ei                                            ; $6c4b: $fb
    ld a, [$fc06]                                 ; $6c4c: $fa $06 $fc
    db $fc                                        ; $6c4f: $fc
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
    ccf                                           ; $6c60: $3f
    ccf                                           ; $6c61: $3f
    ld e, a                                       ; $6c62: $5f
    ld h, b                                       ; $6c63: $60
    xor a                                         ; $6c64: $af
    rst $18                                       ; $6c65: $df
    ret nc                                        ; $6c66: $d0

    cp a                                          ; $6c67: $bf
    ldh [$bf], a                                  ; $6c68: $e0 $bf
    ldh [$bf], a                                  ; $6c6a: $e0 $bf
    ldh [$bf], a                                  ; $6c6c: $e0 $bf
    ldh [$bf], a                                  ; $6c6e: $e0 $bf
    ldh [$bf], a                                  ; $6c70: $e0 $bf
    ldh [$bf], a                                  ; $6c72: $e0 $bf
    ldh [$bf], a                                  ; $6c74: $e0 $bf
    ldh [$bf], a                                  ; $6c76: $e0 $bf
    ldh [$bf], a                                  ; $6c78: $e0 $bf
    ldh [$bf], a                                  ; $6c7a: $e0 $bf

Call_04f_6c7c:
    ldh [$bf], a                                  ; $6c7c: $e0 $bf
    ldh [$bf], a                                  ; $6c7e: $e0 $bf
    db $e4                                        ; $6c80: $e4
    cp e                                          ; $6c81: $bb
    ld [c], a                                     ; $6c82: $e2
    cp l                                          ; $6c83: $bd
    ldh [$bf], a                                  ; $6c84: $e0 $bf
    ldh [$bf], a                                  ; $6c86: $e0 $bf
    ret nc                                        ; $6c88: $d0

    cp a                                          ; $6c89: $bf
    xor a                                         ; $6c8a: $af
    rst $18                                       ; $6c8b: $df
    ld e, a                                       ; $6c8c: $5f
    ld h, b                                       ; $6c8d: $60
    ccf                                           ; $6c8e: $3f
    ccf                                           ; $6c8f: $3f
    nop                                           ; $6c90: $00
    nop                                           ; $6c91: $00
    nop                                           ; $6c92: $00
    nop                                           ; $6c93: $00
    nop                                           ; $6c94: $00
    nop                                           ; $6c95: $00
    nop                                           ; $6c96: $00
    nop                                           ; $6c97: $00
    nop                                           ; $6c98: $00
    nop                                           ; $6c99: $00
    nop                                           ; $6c9a: $00
    nop                                           ; $6c9b: $00
    nop                                           ; $6c9c: $00
    nop                                           ; $6c9d: $00
    nop                                           ; $6c9e: $00
    nop                                           ; $6c9f: $00
    rst $38                                       ; $6ca0: $ff
    rst $38                                       ; $6ca1: $ff
    rst $38                                       ; $6ca2: $ff
    nop                                           ; $6ca3: $00
    rst $38                                       ; $6ca4: $ff
    rst $38                                       ; $6ca5: $ff
    nop                                           ; $6ca6: $00
    rst $38                                       ; $6ca7: $ff
    nop                                           ; $6ca8: $00
    rst $38                                       ; $6ca9: $ff
    nop                                           ; $6caa: $00
    rst $38                                       ; $6cab: $ff
    nop                                           ; $6cac: $00
    rst $38                                       ; $6cad: $ff
    nop                                           ; $6cae: $00
    rst $38                                       ; $6caf: $ff
    nop                                           ; $6cb0: $00
    rst $38                                       ; $6cb1: $ff
    nop                                           ; $6cb2: $00
    rst $38                                       ; $6cb3: $ff
    nop                                           ; $6cb4: $00
    rst $38                                       ; $6cb5: $ff
    nop                                           ; $6cb6: $00
    rst $38                                       ; $6cb7: $ff
    nop                                           ; $6cb8: $00
    rst $38                                       ; $6cb9: $ff
    nop                                           ; $6cba: $00
    rst $38                                       ; $6cbb: $ff
    nop                                           ; $6cbc: $00
    rst $38                                       ; $6cbd: $ff
    nop                                           ; $6cbe: $00
    rst $38                                       ; $6cbf: $ff
    nop                                           ; $6cc0: $00
    rst $38                                       ; $6cc1: $ff
    nop                                           ; $6cc2: $00
    rst $38                                       ; $6cc3: $ff
    nop                                           ; $6cc4: $00
    rst $38                                       ; $6cc5: $ff
    inc b                                         ; $6cc6: $04
    ei                                            ; $6cc7: $fb
    nop                                           ; $6cc8: $00
    rst $38                                       ; $6cc9: $ff
    rst $38                                       ; $6cca: $ff
    rst $38                                       ; $6ccb: $ff
    rst $38                                       ; $6ccc: $ff
    nop                                           ; $6ccd: $00
    rst $38                                       ; $6cce: $ff
    rst $38                                       ; $6ccf: $ff
    nop                                           ; $6cd0: $00
    nop                                           ; $6cd1: $00
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
    db $fc                                        ; $6ce0: $fc
    db $fc                                        ; $6ce1: $fc
    ld a, [$f506]                                 ; $6ce2: $fa $06 $f5
    ei                                            ; $6ce5: $fb
    dec bc                                        ; $6ce6: $0b
    db $fd                                        ; $6ce7: $fd
    rlca                                          ; $6ce8: $07
    db $fd                                        ; $6ce9: $fd
    rlca                                          ; $6cea: $07
    db $fd                                        ; $6ceb: $fd
    rlca                                          ; $6cec: $07
    db $fd                                        ; $6ced: $fd
    rlca                                          ; $6cee: $07
    db $fd                                        ; $6cef: $fd
    rlca                                          ; $6cf0: $07
    db $fd                                        ; $6cf1: $fd
    rlca                                          ; $6cf2: $07
    db $fd                                        ; $6cf3: $fd
    rlca                                          ; $6cf4: $07
    db $fd                                        ; $6cf5: $fd
    rlca                                          ; $6cf6: $07
    db $fd                                        ; $6cf7: $fd
    rlca                                          ; $6cf8: $07
    db $fd                                        ; $6cf9: $fd
    rlca                                          ; $6cfa: $07
    db $fd                                        ; $6cfb: $fd
    rlca                                          ; $6cfc: $07
    db $fd                                        ; $6cfd: $fd
    rlca                                          ; $6cfe: $07
    db $fd                                        ; $6cff: $fd
    rrca                                          ; $6d00: $0f
    push af                                       ; $6d01: $f5
    rlca                                          ; $6d02: $07
    db $fd                                        ; $6d03: $fd
    rlca                                          ; $6d04: $07
    db $fd                                        ; $6d05: $fd
    rlca                                          ; $6d06: $07
    db $fd                                        ; $6d07: $fd
    dec bc                                        ; $6d08: $0b
    db $fd                                        ; $6d09: $fd
    push af                                       ; $6d0a: $f5
    ei                                            ; $6d0b: $fb
    ld a, [$fc06]                                 ; $6d0c: $fa $06 $fc
    db $fc                                        ; $6d0f: $fc
    nop                                           ; $6d10: $00
    nop                                           ; $6d11: $00
    nop                                           ; $6d12: $00
    nop                                           ; $6d13: $00
    nop                                           ; $6d14: $00
    nop                                           ; $6d15: $00
    nop                                           ; $6d16: $00
    nop                                           ; $6d17: $00
    nop                                           ; $6d18: $00
    nop                                           ; $6d19: $00
    nop                                           ; $6d1a: $00
    nop                                           ; $6d1b: $00
    nop                                           ; $6d1c: $00
    nop                                           ; $6d1d: $00
    nop                                           ; $6d1e: $00
    nop                                           ; $6d1f: $00
    ccf                                           ; $6d20: $3f
    ccf                                           ; $6d21: $3f
    ld e, a                                       ; $6d22: $5f
    ld h, b                                       ; $6d23: $60
    xor a                                         ; $6d24: $af
    rst $18                                       ; $6d25: $df
    ret nc                                        ; $6d26: $d0

    cp a                                          ; $6d27: $bf
    ldh [$bf], a                                  ; $6d28: $e0 $bf
    ldh [$bf], a                                  ; $6d2a: $e0 $bf
    ldh [$bf], a                                  ; $6d2c: $e0 $bf
    ldh [$bf], a                                  ; $6d2e: $e0 $bf
    ldh [$bf], a                                  ; $6d30: $e0 $bf
    ldh [$bf], a                                  ; $6d32: $e0 $bf
    ldh [$bf], a                                  ; $6d34: $e0 $bf
    ldh [$bf], a                                  ; $6d36: $e0 $bf
    ldh [$bf], a                                  ; $6d38: $e0 $bf
    ldh [$bf], a                                  ; $6d3a: $e0 $bf
    ldh [$bf], a                                  ; $6d3c: $e0 $bf
    ldh [$bf], a                                  ; $6d3e: $e0 $bf
    ldh [$bf], a                                  ; $6d40: $e0 $bf
    ldh [$bf], a                                  ; $6d42: $e0 $bf
    ldh [$bf], a                                  ; $6d44: $e0 $bf
    ldh [$bf], a                                  ; $6d46: $e0 $bf
    ret nc                                        ; $6d48: $d0

    cp a                                          ; $6d49: $bf
    xor a                                         ; $6d4a: $af
    rst $18                                       ; $6d4b: $df
    ld e, a                                       ; $6d4c: $5f
    ld h, b                                       ; $6d4d: $60
    ccf                                           ; $6d4e: $3f
    ccf                                           ; $6d4f: $3f
    nop                                           ; $6d50: $00
    nop                                           ; $6d51: $00
    nop                                           ; $6d52: $00
    nop                                           ; $6d53: $00
    nop                                           ; $6d54: $00
    nop                                           ; $6d55: $00
    nop                                           ; $6d56: $00
    nop                                           ; $6d57: $00
    nop                                           ; $6d58: $00
    nop                                           ; $6d59: $00
    nop                                           ; $6d5a: $00
    nop                                           ; $6d5b: $00
    nop                                           ; $6d5c: $00
    nop                                           ; $6d5d: $00
    nop                                           ; $6d5e: $00
    nop                                           ; $6d5f: $00
    rst $38                                       ; $6d60: $ff
    rst $38                                       ; $6d61: $ff
    rst $38                                       ; $6d62: $ff
    nop                                           ; $6d63: $00
    rst $38                                       ; $6d64: $ff
    rst $38                                       ; $6d65: $ff
    nop                                           ; $6d66: $00
    rst $38                                       ; $6d67: $ff
    nop                                           ; $6d68: $00
    rst $38                                       ; $6d69: $ff
    nop                                           ; $6d6a: $00
    rst $38                                       ; $6d6b: $ff
    nop                                           ; $6d6c: $00
    rst $38                                       ; $6d6d: $ff
    nop                                           ; $6d6e: $00
    rst $38                                       ; $6d6f: $ff
    nop                                           ; $6d70: $00
    rst $38                                       ; $6d71: $ff
    nop                                           ; $6d72: $00
    rst $38                                       ; $6d73: $ff
    nop                                           ; $6d74: $00
    rst $38                                       ; $6d75: $ff
    nop                                           ; $6d76: $00
    rst $38                                       ; $6d77: $ff
    nop                                           ; $6d78: $00
    rst $38                                       ; $6d79: $ff
    nop                                           ; $6d7a: $00
    rst $38                                       ; $6d7b: $ff
    nop                                           ; $6d7c: $00
    rst $38                                       ; $6d7d: $ff
    nop                                           ; $6d7e: $00
    rst $38                                       ; $6d7f: $ff
    ld d, h                                       ; $6d80: $54
    rst $38                                       ; $6d81: $ff
    xor d                                         ; $6d82: $aa
    rst $38                                       ; $6d83: $ff
    ld d, h                                       ; $6d84: $54
    rst $38                                       ; $6d85: $ff
    nop                                           ; $6d86: $00
    rst $38                                       ; $6d87: $ff
    nop                                           ; $6d88: $00
    rst $38                                       ; $6d89: $ff
    rst $38                                       ; $6d8a: $ff
    rst $38                                       ; $6d8b: $ff
    rst $38                                       ; $6d8c: $ff
    nop                                           ; $6d8d: $00
    rst $38                                       ; $6d8e: $ff
    rst $38                                       ; $6d8f: $ff
    nop                                           ; $6d90: $00
    nop                                           ; $6d91: $00
    nop                                           ; $6d92: $00
    nop                                           ; $6d93: $00
    nop                                           ; $6d94: $00
    nop                                           ; $6d95: $00
    nop                                           ; $6d96: $00
    nop                                           ; $6d97: $00
    nop                                           ; $6d98: $00
    nop                                           ; $6d99: $00
    nop                                           ; $6d9a: $00
    nop                                           ; $6d9b: $00
    nop                                           ; $6d9c: $00
    nop                                           ; $6d9d: $00
    nop                                           ; $6d9e: $00
    nop                                           ; $6d9f: $00
    db $fc                                        ; $6da0: $fc
    db $fc                                        ; $6da1: $fc
    ld a, [$f506]                                 ; $6da2: $fa $06 $f5
    ei                                            ; $6da5: $fb
    dec bc                                        ; $6da6: $0b
    db $fd                                        ; $6da7: $fd
    rlca                                          ; $6da8: $07
    db $fd                                        ; $6da9: $fd
    rlca                                          ; $6daa: $07
    db $fd                                        ; $6dab: $fd
    rlca                                          ; $6dac: $07
    db $fd                                        ; $6dad: $fd
    rlca                                          ; $6dae: $07
    db $fd                                        ; $6daf: $fd
    rlca                                          ; $6db0: $07
    db $fd                                        ; $6db1: $fd
    rlca                                          ; $6db2: $07
    db $fd                                        ; $6db3: $fd
    rlca                                          ; $6db4: $07
    db $fd                                        ; $6db5: $fd
    rlca                                          ; $6db6: $07
    db $fd                                        ; $6db7: $fd
    rlca                                          ; $6db8: $07
    db $fd                                        ; $6db9: $fd
    rlca                                          ; $6dba: $07
    db $fd                                        ; $6dbb: $fd
    rlca                                          ; $6dbc: $07
    db $fd                                        ; $6dbd: $fd
    rlca                                          ; $6dbe: $07
    db $fd                                        ; $6dbf: $fd
    rlca                                          ; $6dc0: $07
    db $fd                                        ; $6dc1: $fd
    rlca                                          ; $6dc2: $07
    db $fd                                        ; $6dc3: $fd
    rlca                                          ; $6dc4: $07
    db $fd                                        ; $6dc5: $fd
    rlca                                          ; $6dc6: $07
    db $fd                                        ; $6dc7: $fd
    dec bc                                        ; $6dc8: $0b
    db $fd                                        ; $6dc9: $fd
    push af                                       ; $6dca: $f5
    ei                                            ; $6dcb: $fb
    ld a, [$fc06]                                 ; $6dcc: $fa $06 $fc
    db $fc                                        ; $6dcf: $fc
    nop                                           ; $6dd0: $00
    nop                                           ; $6dd1: $00
    nop                                           ; $6dd2: $00
    nop                                           ; $6dd3: $00
    nop                                           ; $6dd4: $00
    nop                                           ; $6dd5: $00
    nop                                           ; $6dd6: $00
    nop                                           ; $6dd7: $00
    nop                                           ; $6dd8: $00
    nop                                           ; $6dd9: $00
    nop                                           ; $6dda: $00
    nop                                           ; $6ddb: $00
    nop                                           ; $6ddc: $00
    nop                                           ; $6ddd: $00
    nop                                           ; $6dde: $00
    nop                                           ; $6ddf: $00
    ccf                                           ; $6de0: $3f
    ccf                                           ; $6de1: $3f
    ld e, a                                       ; $6de2: $5f
    ld h, b                                       ; $6de3: $60
    xor a                                         ; $6de4: $af
    rst $18                                       ; $6de5: $df
    ret nc                                        ; $6de6: $d0

    cp a                                          ; $6de7: $bf
    ldh [$bf], a                                  ; $6de8: $e0 $bf
    ldh [$bf], a                                  ; $6dea: $e0 $bf
    ldh [$bf], a                                  ; $6dec: $e0 $bf
    ldh [$bf], a                                  ; $6dee: $e0 $bf
    ldh [$bf], a                                  ; $6df0: $e0 $bf
    ldh [$bf], a                                  ; $6df2: $e0 $bf
    ldh [$bf], a                                  ; $6df4: $e0 $bf
    ldh [$bf], a                                  ; $6df6: $e0 $bf
    ldh [$bf], a                                  ; $6df8: $e0 $bf
    ldh [$bf], a                                  ; $6dfa: $e0 $bf
    push hl                                       ; $6dfc: $e5
    cp e                                          ; $6dfd: $bb
    db $eb                                        ; $6dfe: $eb
    or [hl]                                       ; $6dff: $b6
    add sp, -$49                                  ; $6e00: $e8 $b7
    add sp, -$49                                  ; $6e02: $e8 $b7
    db $e4                                        ; $6e04: $e4
    cp e                                          ; $6e05: $bb
    ldh [$bf], a                                  ; $6e06: $e0 $bf
    ret nc                                        ; $6e08: $d0

    cp a                                          ; $6e09: $bf
    xor a                                         ; $6e0a: $af
    rst $18                                       ; $6e0b: $df
    ld e, a                                       ; $6e0c: $5f
    ld h, b                                       ; $6e0d: $60
    ccf                                           ; $6e0e: $3f
    ccf                                           ; $6e0f: $3f
    nop                                           ; $6e10: $00
    nop                                           ; $6e11: $00
    nop                                           ; $6e12: $00
    nop                                           ; $6e13: $00
    nop                                           ; $6e14: $00
    nop                                           ; $6e15: $00
    nop                                           ; $6e16: $00
    nop                                           ; $6e17: $00
    nop                                           ; $6e18: $00
    nop                                           ; $6e19: $00
    nop                                           ; $6e1a: $00
    nop                                           ; $6e1b: $00
    nop                                           ; $6e1c: $00
    nop                                           ; $6e1d: $00
    nop                                           ; $6e1e: $00
    nop                                           ; $6e1f: $00
    rst $38                                       ; $6e20: $ff
    rst $38                                       ; $6e21: $ff
    rst $38                                       ; $6e22: $ff
    nop                                           ; $6e23: $00
    rst $38                                       ; $6e24: $ff
    rst $38                                       ; $6e25: $ff
    nop                                           ; $6e26: $00
    rst $38                                       ; $6e27: $ff
    nop                                           ; $6e28: $00
    rst $38                                       ; $6e29: $ff
    nop                                           ; $6e2a: $00
    rst $38                                       ; $6e2b: $ff
    nop                                           ; $6e2c: $00
    rst $38                                       ; $6e2d: $ff
    nop                                           ; $6e2e: $00
    rst $38                                       ; $6e2f: $ff
    nop                                           ; $6e30: $00
    rst $38                                       ; $6e31: $ff
    nop                                           ; $6e32: $00
    rst $38                                       ; $6e33: $ff
    nop                                           ; $6e34: $00
    rst $38                                       ; $6e35: $ff
    jr @+$01                                      ; $6e36: $18 $ff

    ld a, [hl]                                    ; $6e38: $7e
    rst $20                                       ; $6e39: $e7
    rst $38                                       ; $6e3a: $ff
    add c                                         ; $6e3b: $81
    rst $38                                       ; $6e3c: $ff
    nop                                           ; $6e3d: $00
    rst $38                                       ; $6e3e: $ff
    nop                                           ; $6e3f: $00
    rst $38                                       ; $6e40: $ff
    nop                                           ; $6e41: $00
    nop                                           ; $6e42: $00
    rst $38                                       ; $6e43: $ff
    nop                                           ; $6e44: $00
    rst $38                                       ; $6e45: $ff
    adc [hl]                                      ; $6e46: $8e
    ld [hl], c                                    ; $6e47: $71
    nop                                           ; $6e48: $00
    rst $38                                       ; $6e49: $ff
    rst $38                                       ; $6e4a: $ff
    rst $38                                       ; $6e4b: $ff
    rst $38                                       ; $6e4c: $ff
    nop                                           ; $6e4d: $00
    rst $38                                       ; $6e4e: $ff
    rst $38                                       ; $6e4f: $ff
    nop                                           ; $6e50: $00
    nop                                           ; $6e51: $00
    nop                                           ; $6e52: $00
    nop                                           ; $6e53: $00
    nop                                           ; $6e54: $00
    nop                                           ; $6e55: $00
    nop                                           ; $6e56: $00
    nop                                           ; $6e57: $00
    nop                                           ; $6e58: $00
    nop                                           ; $6e59: $00
    nop                                           ; $6e5a: $00
    nop                                           ; $6e5b: $00
    nop                                           ; $6e5c: $00
    nop                                           ; $6e5d: $00
    nop                                           ; $6e5e: $00
    nop                                           ; $6e5f: $00
    db $fc                                        ; $6e60: $fc
    db $fc                                        ; $6e61: $fc
    ld a, [$f506]                                 ; $6e62: $fa $06 $f5
    ei                                            ; $6e65: $fb
    dec bc                                        ; $6e66: $0b
    db $fd                                        ; $6e67: $fd
    rlca                                          ; $6e68: $07
    db $fd                                        ; $6e69: $fd
    rlca                                          ; $6e6a: $07
    db $fd                                        ; $6e6b: $fd
    rlca                                          ; $6e6c: $07
    db $fd                                        ; $6e6d: $fd
    rlca                                          ; $6e6e: $07
    db $fd                                        ; $6e6f: $fd
    rlca                                          ; $6e70: $07
    db $fd                                        ; $6e71: $fd
    rlca                                          ; $6e72: $07
    db $fd                                        ; $6e73: $fd
    rlca                                          ; $6e74: $07
    db $fd                                        ; $6e75: $fd
    rlca                                          ; $6e76: $07
    db $fd                                        ; $6e77: $fd
    rlca                                          ; $6e78: $07
    db $fd                                        ; $6e79: $fd
    rlca                                          ; $6e7a: $07
    db $fd                                        ; $6e7b: $fd
    and a                                         ; $6e7c: $a7
    db $dd                                        ; $6e7d: $dd
    rst $10                                       ; $6e7e: $d7
    ld l, l                                       ; $6e7f: $6d
    rla                                           ; $6e80: $17
    db $ed                                        ; $6e81: $ed
    rla                                           ; $6e82: $17
    db $ed                                        ; $6e83: $ed
    daa                                           ; $6e84: $27
    db $dd                                        ; $6e85: $dd
    add a                                         ; $6e86: $87
    ld a, l                                       ; $6e87: $7d
    dec bc                                        ; $6e88: $0b
    db $fd                                        ; $6e89: $fd
    push af                                       ; $6e8a: $f5
    ei                                            ; $6e8b: $fb
    ld a, [$fc06]                                 ; $6e8c: $fa $06 $fc
    db $fc                                        ; $6e8f: $fc
    nop                                           ; $6e90: $00
    nop                                           ; $6e91: $00
    nop                                           ; $6e92: $00
    nop                                           ; $6e93: $00
    nop                                           ; $6e94: $00
    nop                                           ; $6e95: $00
    nop                                           ; $6e96: $00
    nop                                           ; $6e97: $00
    nop                                           ; $6e98: $00
    nop                                           ; $6e99: $00
    nop                                           ; $6e9a: $00
    nop                                           ; $6e9b: $00
    nop                                           ; $6e9c: $00
    nop                                           ; $6e9d: $00
    nop                                           ; $6e9e: $00
    nop                                           ; $6e9f: $00
    ccf                                           ; $6ea0: $3f
    ccf                                           ; $6ea1: $3f
    ld e, a                                       ; $6ea2: $5f
    ld h, b                                       ; $6ea3: $60
    xor a                                         ; $6ea4: $af
    rst $18                                       ; $6ea5: $df
    ret nc                                        ; $6ea6: $d0

    cp a                                          ; $6ea7: $bf
    ldh [$bf], a                                  ; $6ea8: $e0 $bf
    ldh [$bf], a                                  ; $6eaa: $e0 $bf
    ldh [$bf], a                                  ; $6eac: $e0 $bf
    ldh [$bf], a                                  ; $6eae: $e0 $bf
    ldh [$bf], a                                  ; $6eb0: $e0 $bf
    ldh [$bf], a                                  ; $6eb2: $e0 $bf
    pop hl                                        ; $6eb4: $e1
    cp a                                          ; $6eb5: $bf
    db $e3                                        ; $6eb6: $e3
    cp [hl]                                       ; $6eb7: $be
    rst $20                                       ; $6eb8: $e7
    cp h                                          ; $6eb9: $bc
    rst $28                                       ; $6eba: $ef
    cp b                                          ; $6ebb: $b8
    rst $28                                       ; $6ebc: $ef
    cp e                                          ; $6ebd: $bb
    rst $20                                       ; $6ebe: $e7
    cp [hl]                                       ; $6ebf: $be
    db $e3                                        ; $6ec0: $e3
    cp [hl]                                       ; $6ec1: $be
    rst $20                                       ; $6ec2: $e7
    cp l                                          ; $6ec3: $bd
    ldh [$bf], a                                  ; $6ec4: $e0 $bf
    db $e4                                        ; $6ec6: $e4
    cp e                                          ; $6ec7: $bb
    ret nc                                        ; $6ec8: $d0

    cp a                                          ; $6ec9: $bf
    xor a                                         ; $6eca: $af
    rst $18                                       ; $6ecb: $df
    ld e, a                                       ; $6ecc: $5f
    ld h, b                                       ; $6ecd: $60
    ccf                                           ; $6ece: $3f
    ccf                                           ; $6ecf: $3f
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
    rst $38                                       ; $6ee0: $ff
    rst $38                                       ; $6ee1: $ff
    rst $38                                       ; $6ee2: $ff
    nop                                           ; $6ee3: $00
    rst $38                                       ; $6ee4: $ff
    rst $38                                       ; $6ee5: $ff
    nop                                           ; $6ee6: $00
    rst $38                                       ; $6ee7: $ff
    nop                                           ; $6ee8: $00
    rst $38                                       ; $6ee9: $ff
    nop                                           ; $6eea: $00
    rst $38                                       ; $6eeb: $ff
    nop                                           ; $6eec: $00
    rst $38                                       ; $6eed: $ff
    jr @+$01                                      ; $6eee: $18 $ff

    ld a, [hl]                                    ; $6ef0: $7e
    rst $20                                       ; $6ef1: $e7
    rst $38                                       ; $6ef2: $ff
    add c                                         ; $6ef3: $81
    rst $38                                       ; $6ef4: $ff
    nop                                           ; $6ef5: $00
    rst $38                                       ; $6ef6: $ff
    nop                                           ; $6ef7: $00
    rst $38                                       ; $6ef8: $ff
    nop                                           ; $6ef9: $00
    rst $38                                       ; $6efa: $ff
    rst $38                                       ; $6efb: $ff
    rst $38                                       ; $6efc: $ff
    inc a                                         ; $6efd: $3c
    rst $38                                       ; $6efe: $ff
    db $db                                        ; $6eff: $db
    rst $38                                       ; $6f00: $ff
    db $db                                        ; $6f01: $db
    rst $38                                       ; $6f02: $ff
    inc a                                         ; $6f03: $3c
    rst $38                                       ; $6f04: $ff
    jp $ff00                                      ; $6f05: $c3 $00 $ff


    nop                                           ; $6f08: $00
    rst $38                                       ; $6f09: $ff
    rst $38                                       ; $6f0a: $ff
    rst $38                                       ; $6f0b: $ff
    rst $38                                       ; $6f0c: $ff
    nop                                           ; $6f0d: $00
    rst $38                                       ; $6f0e: $ff
    rst $38                                       ; $6f0f: $ff
    nop                                           ; $6f10: $00
    nop                                           ; $6f11: $00
    nop                                           ; $6f12: $00
    nop                                           ; $6f13: $00
    nop                                           ; $6f14: $00
    nop                                           ; $6f15: $00
    nop                                           ; $6f16: $00
    nop                                           ; $6f17: $00
    nop                                           ; $6f18: $00
    nop                                           ; $6f19: $00
    nop                                           ; $6f1a: $00
    nop                                           ; $6f1b: $00
    nop                                           ; $6f1c: $00
    nop                                           ; $6f1d: $00
    nop                                           ; $6f1e: $00
    nop                                           ; $6f1f: $00
    db $fc                                        ; $6f20: $fc
    db $fc                                        ; $6f21: $fc
    ld a, [$f506]                                 ; $6f22: $fa $06 $f5
    ei                                            ; $6f25: $fb
    dec bc                                        ; $6f26: $0b
    db $fd                                        ; $6f27: $fd
    rlca                                          ; $6f28: $07
    db $fd                                        ; $6f29: $fd
    rlca                                          ; $6f2a: $07
    db $fd                                        ; $6f2b: $fd
    rlca                                          ; $6f2c: $07
    db $fd                                        ; $6f2d: $fd
    rlca                                          ; $6f2e: $07
    db $fd                                        ; $6f2f: $fd
    rlca                                          ; $6f30: $07
    db $fd                                        ; $6f31: $fd
    rlca                                          ; $6f32: $07
    db $fd                                        ; $6f33: $fd
    add a                                         ; $6f34: $87
    db $fd                                        ; $6f35: $fd
    rst $00                                       ; $6f36: $c7
    ld a, l                                       ; $6f37: $7d
    rst $20                                       ; $6f38: $e7
    dec a                                         ; $6f39: $3d
    rst $30                                       ; $6f3a: $f7
    dec e                                         ; $6f3b: $1d
    rst $30                                       ; $6f3c: $f7
    db $dd                                        ; $6f3d: $dd
    rst $30                                       ; $6f3e: $f7
    ld a, l                                       ; $6f3f: $7d
    rst $20                                       ; $6f40: $e7
    ld a, l                                       ; $6f41: $7d
    rst $20                                       ; $6f42: $e7
    cp l                                          ; $6f43: $bd
    rlca                                          ; $6f44: $07
    db $fd                                        ; $6f45: $fd
    rlca                                          ; $6f46: $07
    db $fd                                        ; $6f47: $fd
    ld c, e                                       ; $6f48: $4b
    cp l                                          ; $6f49: $bd
    push af                                       ; $6f4a: $f5
    ei                                            ; $6f4b: $fb
    ld a, [$fc06]                                 ; $6f4c: $fa $06 $fc
    db $fc                                        ; $6f4f: $fc
    nop                                           ; $6f50: $00
    nop                                           ; $6f51: $00
    nop                                           ; $6f52: $00
    nop                                           ; $6f53: $00
    nop                                           ; $6f54: $00
    nop                                           ; $6f55: $00
    nop                                           ; $6f56: $00
    nop                                           ; $6f57: $00
    nop                                           ; $6f58: $00
    nop                                           ; $6f59: $00
    nop                                           ; $6f5a: $00
    nop                                           ; $6f5b: $00
    nop                                           ; $6f5c: $00
    nop                                           ; $6f5d: $00
    nop                                           ; $6f5e: $00
    nop                                           ; $6f5f: $00
    ccf                                           ; $6f60: $3f
    ccf                                           ; $6f61: $3f
    ld e, a                                       ; $6f62: $5f
    ld h, b                                       ; $6f63: $60
    xor a                                         ; $6f64: $af
    rst $18                                       ; $6f65: $df
    ret nc                                        ; $6f66: $d0

    cp a                                          ; $6f67: $bf
    ldh [$bf], a                                  ; $6f68: $e0 $bf
    ldh [$bf], a                                  ; $6f6a: $e0 $bf
    ldh [$bf], a                                  ; $6f6c: $e0 $bf
    ldh [$bf], a                                  ; $6f6e: $e0 $bf
    pop hl                                        ; $6f70: $e1
    cp a                                          ; $6f71: $bf
    db $e3                                        ; $6f72: $e3
    cp [hl]                                       ; $6f73: $be
    rst $20                                       ; $6f74: $e7
    cp h                                          ; $6f75: $bc
    rst $28                                       ; $6f76: $ef
    cp b                                          ; $6f77: $b8
    rst $28                                       ; $6f78: $ef
    cp e                                          ; $6f79: $bb
    rst $20                                       ; $6f7a: $e7
    cp [hl]                                       ; $6f7b: $be
    db $e3                                        ; $6f7c: $e3
    cp [hl]                                       ; $6f7d: $be
    rst $20                                       ; $6f7e: $e7
    cp l                                          ; $6f7f: $bd
    rst $20                                       ; $6f80: $e7
    cp h                                          ; $6f81: $bc
    db $e3                                        ; $6f82: $e3
    cp [hl]                                       ; $6f83: $be
    ldh [$bf], a                                  ; $6f84: $e0 $bf
    ldh [$bf], a                                  ; $6f86: $e0 $bf
    ret nc                                        ; $6f88: $d0

    cp a                                          ; $6f89: $bf
    xor a                                         ; $6f8a: $af
    rst $18                                       ; $6f8b: $df
    ld e, a                                       ; $6f8c: $5f
    ld h, b                                       ; $6f8d: $60
    ccf                                           ; $6f8e: $3f
    ccf                                           ; $6f8f: $3f
    nop                                           ; $6f90: $00
    nop                                           ; $6f91: $00
    nop                                           ; $6f92: $00
    nop                                           ; $6f93: $00
    nop                                           ; $6f94: $00
    nop                                           ; $6f95: $00
    nop                                           ; $6f96: $00
    nop                                           ; $6f97: $00
    nop                                           ; $6f98: $00
    nop                                           ; $6f99: $00
    nop                                           ; $6f9a: $00
    nop                                           ; $6f9b: $00
    nop                                           ; $6f9c: $00
    nop                                           ; $6f9d: $00
    nop                                           ; $6f9e: $00
    nop                                           ; $6f9f: $00
    rst $38                                       ; $6fa0: $ff
    rst $38                                       ; $6fa1: $ff
    rst $38                                       ; $6fa2: $ff
    nop                                           ; $6fa3: $00
    rst $38                                       ; $6fa4: $ff
    rst $38                                       ; $6fa5: $ff
    nop                                           ; $6fa6: $00
    rst $38                                       ; $6fa7: $ff
    nop                                           ; $6fa8: $00
    rst $38                                       ; $6fa9: $ff
    jr @+$01                                      ; $6faa: $18 $ff

    ld a, [hl]                                    ; $6fac: $7e
    rst $20                                       ; $6fad: $e7
    rst $38                                       ; $6fae: $ff
    add c                                         ; $6faf: $81
    rst $38                                       ; $6fb0: $ff
    nop                                           ; $6fb1: $00
    rst $38                                       ; $6fb2: $ff
    nop                                           ; $6fb3: $00
    rst $38                                       ; $6fb4: $ff
    nop                                           ; $6fb5: $00
    rst $38                                       ; $6fb6: $ff
    rst $38                                       ; $6fb7: $ff
    rst $38                                       ; $6fb8: $ff
    inc a                                         ; $6fb9: $3c
    rst $38                                       ; $6fba: $ff
    db $db                                        ; $6fbb: $db
    rst $38                                       ; $6fbc: $ff
    db $db                                        ; $6fbd: $db
    rst $38                                       ; $6fbe: $ff
    inc a                                         ; $6fbf: $3c
    rst $38                                       ; $6fc0: $ff
    jp $dbff                                      ; $6fc1: $c3 $ff $db


    nop                                           ; $6fc4: $00
    rst $38                                       ; $6fc5: $ff
    nop                                           ; $6fc6: $00
    rst $38                                       ; $6fc7: $ff
    nop                                           ; $6fc8: $00
    rst $38                                       ; $6fc9: $ff
    rst $38                                       ; $6fca: $ff
    rst $38                                       ; $6fcb: $ff
    rst $38                                       ; $6fcc: $ff
    nop                                           ; $6fcd: $00
    rst $38                                       ; $6fce: $ff
    rst $38                                       ; $6fcf: $ff
    nop                                           ; $6fd0: $00
    nop                                           ; $6fd1: $00
    nop                                           ; $6fd2: $00
    nop                                           ; $6fd3: $00
    nop                                           ; $6fd4: $00
    nop                                           ; $6fd5: $00
    nop                                           ; $6fd6: $00
    nop                                           ; $6fd7: $00
    nop                                           ; $6fd8: $00
    nop                                           ; $6fd9: $00
    nop                                           ; $6fda: $00
    nop                                           ; $6fdb: $00
    nop                                           ; $6fdc: $00
    nop                                           ; $6fdd: $00
    nop                                           ; $6fde: $00
    nop                                           ; $6fdf: $00
    db $fc                                        ; $6fe0: $fc
    db $fc                                        ; $6fe1: $fc
    ld a, [$f506]                                 ; $6fe2: $fa $06 $f5
    ei                                            ; $6fe5: $fb
    dec bc                                        ; $6fe6: $0b
    db $fd                                        ; $6fe7: $fd
    rlca                                          ; $6fe8: $07
    db $fd                                        ; $6fe9: $fd
    rlca                                          ; $6fea: $07
    db $fd                                        ; $6feb: $fd
    rlca                                          ; $6fec: $07
    db $fd                                        ; $6fed: $fd
    rlca                                          ; $6fee: $07
    db $fd                                        ; $6fef: $fd
    add a                                         ; $6ff0: $87
    db $fd                                        ; $6ff1: $fd
    rst $00                                       ; $6ff2: $c7
    ld a, l                                       ; $6ff3: $7d
    rst $20                                       ; $6ff4: $e7
    dec a                                         ; $6ff5: $3d
    rst $30                                       ; $6ff6: $f7
    dec e                                         ; $6ff7: $1d
    rst $30                                       ; $6ff8: $f7
    db $dd                                        ; $6ff9: $dd
    rst $20                                       ; $6ffa: $e7
    ld a, l                                       ; $6ffb: $7d
    rst $00                                       ; $6ffc: $c7
    ld a, l                                       ; $6ffd: $7d
    rst $20                                       ; $6ffe: $e7
    cp l                                          ; $6fff: $bd
    rst $20                                       ; $7000: $e7
    dec a                                         ; $7001: $3d
    rst $00                                       ; $7002: $c7
    ld a, l                                       ; $7003: $7d
    rlca                                          ; $7004: $07
    db $fd                                        ; $7005: $fd
    rlca                                          ; $7006: $07
    db $fd                                        ; $7007: $fd
    dec bc                                        ; $7008: $0b
    db $fd                                        ; $7009: $fd
    push af                                       ; $700a: $f5
    ei                                            ; $700b: $fb
    ld a, [$fc06]                                 ; $700c: $fa $06 $fc
    db $fc                                        ; $700f: $fc
    nop                                           ; $7010: $00
    nop                                           ; $7011: $00
    nop                                           ; $7012: $00
    nop                                           ; $7013: $00
    nop                                           ; $7014: $00
    nop                                           ; $7015: $00
    nop                                           ; $7016: $00
    nop                                           ; $7017: $00
    nop                                           ; $7018: $00
    nop                                           ; $7019: $00
    nop                                           ; $701a: $00
    nop                                           ; $701b: $00
    nop                                           ; $701c: $00
    nop                                           ; $701d: $00
    nop                                           ; $701e: $00
    nop                                           ; $701f: $00
    ccf                                           ; $7020: $3f
    ccf                                           ; $7021: $3f
    ld e, a                                       ; $7022: $5f
    ld h, b                                       ; $7023: $60
    xor a                                         ; $7024: $af
    rst $18                                       ; $7025: $df
    ret nc                                        ; $7026: $d0

    cp a                                          ; $7027: $bf
    ldh [$bf], a                                  ; $7028: $e0 $bf
    ldh [$bf], a                                  ; $702a: $e0 $bf
    ldh [$bf], a                                  ; $702c: $e0 $bf
    ldh [$bf], a                                  ; $702e: $e0 $bf
    pop hl                                        ; $7030: $e1
    cp a                                          ; $7031: $bf
    db $e3                                        ; $7032: $e3
    cp [hl]                                       ; $7033: $be
    rst $20                                       ; $7034: $e7
    cp h                                          ; $7035: $bc
    rst $28                                       ; $7036: $ef
    cp b                                          ; $7037: $b8
    rst $28                                       ; $7038: $ef
    cp e                                          ; $7039: $bb
    rst $20                                       ; $703a: $e7
    cp [hl]                                       ; $703b: $be
    db $e3                                        ; $703c: $e3
    cp [hl]                                       ; $703d: $be
    rst $20                                       ; $703e: $e7
    cp l                                          ; $703f: $bd
    rst $20                                       ; $7040: $e7
    cp h                                          ; $7041: $bc
    db $e3                                        ; $7042: $e3
    cp [hl]                                       ; $7043: $be
    ldh [$bf], a                                  ; $7044: $e0 $bf
    ldh [$bf], a                                  ; $7046: $e0 $bf
    ret nc                                        ; $7048: $d0

    cp a                                          ; $7049: $bf
    xor a                                         ; $704a: $af
    rst $18                                       ; $704b: $df
    ld e, a                                       ; $704c: $5f
    ld h, b                                       ; $704d: $60
    ccf                                           ; $704e: $3f
    ccf                                           ; $704f: $3f
    nop                                           ; $7050: $00
    nop                                           ; $7051: $00
    nop                                           ; $7052: $00
    nop                                           ; $7053: $00
    nop                                           ; $7054: $00
    nop                                           ; $7055: $00
    nop                                           ; $7056: $00
    nop                                           ; $7057: $00
    nop                                           ; $7058: $00
    nop                                           ; $7059: $00
    nop                                           ; $705a: $00
    nop                                           ; $705b: $00
    nop                                           ; $705c: $00
    nop                                           ; $705d: $00
    nop                                           ; $705e: $00
    nop                                           ; $705f: $00
    rst $38                                       ; $7060: $ff
    rst $38                                       ; $7061: $ff
    rst $38                                       ; $7062: $ff
    nop                                           ; $7063: $00
    rst $38                                       ; $7064: $ff
    rst $38                                       ; $7065: $ff
    nop                                           ; $7066: $00
    rst $38                                       ; $7067: $ff
    nop                                           ; $7068: $00
    rst $38                                       ; $7069: $ff
    dec de                                        ; $706a: $1b
    rst $38                                       ; $706b: $ff
    ld a, h                                       ; $706c: $7c
    rst $20                                       ; $706d: $e7
    db $fd                                        ; $706e: $fd
    add d                                         ; $706f: $82
    cp $01                                        ; $7070: $fe $01
    rst $38                                       ; $7072: $ff
    nop                                           ; $7073: $00
    rst $38                                       ; $7074: $ff
    nop                                           ; $7075: $00
    rst $38                                       ; $7076: $ff
    rst $38                                       ; $7077: $ff
    rst $38                                       ; $7078: $ff
    inc a                                         ; $7079: $3c
    rst $38                                       ; $707a: $ff
    db $db                                        ; $707b: $db
    rst $38                                       ; $707c: $ff
    db $db                                        ; $707d: $db
    rst $38                                       ; $707e: $ff
    inc a                                         ; $707f: $3c
    rst $38                                       ; $7080: $ff
    jp $dbff                                      ; $7081: $c3 $ff $db


    nop                                           ; $7084: $00
    rst $38                                       ; $7085: $ff
    nop                                           ; $7086: $00
    rst $38                                       ; $7087: $ff
    nop                                           ; $7088: $00
    rst $38                                       ; $7089: $ff
    rst $38                                       ; $708a: $ff
    rst $38                                       ; $708b: $ff
    rst $38                                       ; $708c: $ff
    nop                                           ; $708d: $00
    rst $38                                       ; $708e: $ff
    rst $38                                       ; $708f: $ff
    nop                                           ; $7090: $00
    nop                                           ; $7091: $00
    nop                                           ; $7092: $00
    nop                                           ; $7093: $00
    nop                                           ; $7094: $00
    nop                                           ; $7095: $00
    nop                                           ; $7096: $00
    nop                                           ; $7097: $00
    nop                                           ; $7098: $00
    nop                                           ; $7099: $00
    nop                                           ; $709a: $00
    nop                                           ; $709b: $00
    nop                                           ; $709c: $00
    nop                                           ; $709d: $00
    nop                                           ; $709e: $00
    nop                                           ; $709f: $00
    db $fc                                        ; $70a0: $fc
    db $fc                                        ; $70a1: $fc
    ld a, [$f506]                                 ; $70a2: $fa $06 $f5
    ei                                            ; $70a5: $fb
    dec bc                                        ; $70a6: $0b
    db $fd                                        ; $70a7: $fd
    rlca                                          ; $70a8: $07
    db $fd                                        ; $70a9: $fd
    add a                                         ; $70aa: $87
    db $fd                                        ; $70ab: $fd
    ld b, a                                       ; $70ac: $47
    db $fd                                        ; $70ad: $fd
    ld b, a                                       ; $70ae: $47
    db $fd                                        ; $70af: $fd
    add a                                         ; $70b0: $87
    db $fd                                        ; $70b1: $fd
    rst $00                                       ; $70b2: $c7
    ld a, l                                       ; $70b3: $7d
    rst $20                                       ; $70b4: $e7
    dec a                                         ; $70b5: $3d
    rst $30                                       ; $70b6: $f7
    dec e                                         ; $70b7: $1d
    rst $30                                       ; $70b8: $f7
    db $dd                                        ; $70b9: $dd
    rst $20                                       ; $70ba: $e7
    ld a, l                                       ; $70bb: $7d
    rst $00                                       ; $70bc: $c7
    ld a, l                                       ; $70bd: $7d
    rst $20                                       ; $70be: $e7
    cp l                                          ; $70bf: $bd
    rst $20                                       ; $70c0: $e7
    dec a                                         ; $70c1: $3d
    rst $00                                       ; $70c2: $c7
    ld a, l                                       ; $70c3: $7d
    rlca                                          ; $70c4: $07
    db $fd                                        ; $70c5: $fd
    rlca                                          ; $70c6: $07
    db $fd                                        ; $70c7: $fd
    dec bc                                        ; $70c8: $0b
    db $fd                                        ; $70c9: $fd
    push af                                       ; $70ca: $f5
    ei                                            ; $70cb: $fb
    ld a, [$fc06]                                 ; $70cc: $fa $06 $fc
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
    ccf                                           ; $70e0: $3f
    ccf                                           ; $70e1: $3f
    ld e, a                                       ; $70e2: $5f
    ld h, b                                       ; $70e3: $60
    xor a                                         ; $70e4: $af
    rst $18                                       ; $70e5: $df
    ret nc                                        ; $70e6: $d0

    cp a                                          ; $70e7: $bf
    ldh [$bf], a                                  ; $70e8: $e0 $bf
    ldh [$bf], a                                  ; $70ea: $e0 $bf
    ldh [$bf], a                                  ; $70ec: $e0 $bf
    ldh [$bf], a                                  ; $70ee: $e0 $bf
    pop hl                                        ; $70f0: $e1
    cp a                                          ; $70f1: $bf
    db $e3                                        ; $70f2: $e3
    cp [hl]                                       ; $70f3: $be
    rst $20                                       ; $70f4: $e7
    cp h                                          ; $70f5: $bc
    rst $28                                       ; $70f6: $ef
    cp b                                          ; $70f7: $b8
    rst $28                                       ; $70f8: $ef
    cp e                                          ; $70f9: $bb
    rst $20                                       ; $70fa: $e7
    cp [hl]                                       ; $70fb: $be
    db $e3                                        ; $70fc: $e3
    cp [hl]                                       ; $70fd: $be
    rst $20                                       ; $70fe: $e7
    cp l                                          ; $70ff: $bd
    rst $20                                       ; $7100: $e7
    cp h                                          ; $7101: $bc
    db $e3                                        ; $7102: $e3
    cp [hl]                                       ; $7103: $be
    ldh [$bf], a                                  ; $7104: $e0 $bf
    ldh [$bf], a                                  ; $7106: $e0 $bf
    ret nc                                        ; $7108: $d0

    cp a                                          ; $7109: $bf
    xor a                                         ; $710a: $af
    rst $18                                       ; $710b: $df
    ld e, a                                       ; $710c: $5f
    ld h, b                                       ; $710d: $60
    ccf                                           ; $710e: $3f
    ccf                                           ; $710f: $3f
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
    rst $38                                       ; $7120: $ff
    rst $38                                       ; $7121: $ff
    rst $38                                       ; $7122: $ff
    nop                                           ; $7123: $00
    rst $38                                       ; $7124: $ff
    rst $38                                       ; $7125: $ff
    nop                                           ; $7126: $00
    rst $38                                       ; $7127: $ff
    ld bc, $1aff                                  ; $7128: $01 $ff $1a
    rst $38                                       ; $712b: $ff
    ld a, l                                       ; $712c: $7d
    and $fd                                       ; $712d: $e6 $fd
    add d                                         ; $712f: $82
    rst $38                                       ; $7130: $ff
    nop                                           ; $7131: $00
    rst $38                                       ; $7132: $ff
    nop                                           ; $7133: $00
    rst $38                                       ; $7134: $ff
    nop                                           ; $7135: $00
    rst $38                                       ; $7136: $ff
    rst $38                                       ; $7137: $ff
    rst $38                                       ; $7138: $ff
    inc a                                         ; $7139: $3c
    rst $38                                       ; $713a: $ff
    db $db                                        ; $713b: $db
    rst $38                                       ; $713c: $ff
    db $db                                        ; $713d: $db
    rst $38                                       ; $713e: $ff
    inc a                                         ; $713f: $3c
    rst $38                                       ; $7140: $ff
    jp $dbff                                      ; $7141: $c3 $ff $db


    nop                                           ; $7144: $00
    rst $38                                       ; $7145: $ff
    nop                                           ; $7146: $00
    rst $38                                       ; $7147: $ff
    nop                                           ; $7148: $00
    rst $38                                       ; $7149: $ff
    rst $38                                       ; $714a: $ff
    rst $38                                       ; $714b: $ff
    rst $38                                       ; $714c: $ff
    nop                                           ; $714d: $00
    rst $38                                       ; $714e: $ff
    rst $38                                       ; $714f: $ff
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
    db $fc                                        ; $7160: $fc
    db $fc                                        ; $7161: $fc
    ld a, [$f506]                                 ; $7162: $fa $06 $f5
    ei                                            ; $7165: $fb
    dec bc                                        ; $7166: $0b
    db $fd                                        ; $7167: $fd
    rst $00                                       ; $7168: $c7
    db $fd                                        ; $7169: $fd
    and a                                         ; $716a: $a7
    ld a, l                                       ; $716b: $7d
    rst $20                                       ; $716c: $e7
    dec a                                         ; $716d: $3d
    and a                                         ; $716e: $a7
    ld a, l                                       ; $716f: $7d
    ld b, a                                       ; $7170: $47
    db $fd                                        ; $7171: $fd
    rst $00                                       ; $7172: $c7
    ld a, l                                       ; $7173: $7d
    rst $20                                       ; $7174: $e7
    dec a                                         ; $7175: $3d
    rst $20                                       ; $7176: $e7
    dec e                                         ; $7177: $1d
    rst $20                                       ; $7178: $e7
    db $dd                                        ; $7179: $dd
    rst $20                                       ; $717a: $e7
    ld a, l                                       ; $717b: $7d
    rst $00                                       ; $717c: $c7
    ld a, l                                       ; $717d: $7d
    rst $20                                       ; $717e: $e7
    cp l                                          ; $717f: $bd
    rst $20                                       ; $7180: $e7
    dec a                                         ; $7181: $3d
    rst $00                                       ; $7182: $c7
    ld a, l                                       ; $7183: $7d
    rlca                                          ; $7184: $07
    db $fd                                        ; $7185: $fd
    rlca                                          ; $7186: $07
    db $fd                                        ; $7187: $fd
    dec bc                                        ; $7188: $0b
    db $fd                                        ; $7189: $fd
    push af                                       ; $718a: $f5
    ei                                            ; $718b: $fb
    ld a, [$fc06]                                 ; $718c: $fa $06 $fc
    db $fc                                        ; $718f: $fc
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
    ccf                                           ; $71a0: $3f
    ccf                                           ; $71a1: $3f
    ld e, a                                       ; $71a2: $5f
    ld h, b                                       ; $71a3: $60
    xor a                                         ; $71a4: $af
    rst $18                                       ; $71a5: $df
    ret nc                                        ; $71a6: $d0

    cp a                                          ; $71a7: $bf
    ldh [$bf], a                                  ; $71a8: $e0 $bf
    ldh [$bf], a                                  ; $71aa: $e0 $bf
    ldh [$bf], a                                  ; $71ac: $e0 $bf
    ldh [$bf], a                                  ; $71ae: $e0 $bf
    pop hl                                        ; $71b0: $e1
    cp a                                          ; $71b1: $bf
    db $e3                                        ; $71b2: $e3
    cp [hl]                                       ; $71b3: $be
    rst $20                                       ; $71b4: $e7
    cp h                                          ; $71b5: $bc
    rst $28                                       ; $71b6: $ef
    cp b                                          ; $71b7: $b8
    rst $28                                       ; $71b8: $ef
    cp e                                          ; $71b9: $bb
    rst $20                                       ; $71ba: $e7
    cp [hl]                                       ; $71bb: $be
    db $e3                                        ; $71bc: $e3
    cp [hl]                                       ; $71bd: $be
    rst $20                                       ; $71be: $e7
    cp l                                          ; $71bf: $bd
    rst $20                                       ; $71c0: $e7
    cp h                                          ; $71c1: $bc
    db $e3                                        ; $71c2: $e3
    cp [hl]                                       ; $71c3: $be
    ldh [$bf], a                                  ; $71c4: $e0 $bf
    ldh [$bf], a                                  ; $71c6: $e0 $bf
    ret nc                                        ; $71c8: $d0

    cp a                                          ; $71c9: $bf
    xor a                                         ; $71ca: $af
    rst $18                                       ; $71cb: $df
    ld e, a                                       ; $71cc: $5f
    ld h, b                                       ; $71cd: $60
    ccf                                           ; $71ce: $3f
    ccf                                           ; $71cf: $3f
    nop                                           ; $71d0: $00
    nop                                           ; $71d1: $00
    nop                                           ; $71d2: $00
    nop                                           ; $71d3: $00
    nop                                           ; $71d4: $00
    nop                                           ; $71d5: $00
    nop                                           ; $71d6: $00
    nop                                           ; $71d7: $00
    nop                                           ; $71d8: $00
    nop                                           ; $71d9: $00
    nop                                           ; $71da: $00
    nop                                           ; $71db: $00
    nop                                           ; $71dc: $00
    nop                                           ; $71dd: $00
    nop                                           ; $71de: $00
    nop                                           ; $71df: $00
    rst $38                                       ; $71e0: $ff
    rst $38                                       ; $71e1: $ff
    rst $38                                       ; $71e2: $ff
    nop                                           ; $71e3: $00
    rst $38                                       ; $71e4: $ff
    rst $38                                       ; $71e5: $ff
    ld bc, $03ff                                  ; $71e6: $01 $ff $03
    cp $1f                                        ; $71e9: $fe $1f
    db $fc                                        ; $71eb: $fc
    ld a, a                                       ; $71ec: $7f
    db $e4                                        ; $71ed: $e4
    ei                                            ; $71ee: $fb
    add h                                         ; $71ef: $84
    rst $38                                       ; $71f0: $ff
    nop                                           ; $71f1: $00
    rst $38                                       ; $71f2: $ff
    nop                                           ; $71f3: $00
    rst $38                                       ; $71f4: $ff
    nop                                           ; $71f5: $00
    rst $38                                       ; $71f6: $ff
    rst $38                                       ; $71f7: $ff
    rst $38                                       ; $71f8: $ff
    inc a                                         ; $71f9: $3c
    rst $38                                       ; $71fa: $ff
    db $db                                        ; $71fb: $db
    rst $38                                       ; $71fc: $ff
    db $db                                        ; $71fd: $db
    rst $38                                       ; $71fe: $ff
    inc a                                         ; $71ff: $3c
    rst $38                                       ; $7200: $ff
    jp $dbff                                      ; $7201: $c3 $ff $db


    nop                                           ; $7204: $00
    rst $38                                       ; $7205: $ff
    nop                                           ; $7206: $00
    rst $38                                       ; $7207: $ff
    nop                                           ; $7208: $00
    rst $38                                       ; $7209: $ff
    rst $38                                       ; $720a: $ff
    rst $38                                       ; $720b: $ff
    rst $38                                       ; $720c: $ff
    nop                                           ; $720d: $00
    rst $38                                       ; $720e: $ff
    rst $38                                       ; $720f: $ff
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
    db $fc                                        ; $7220: $fc
    db $fc                                        ; $7221: $fc
    ld a, [$f506]                                 ; $7222: $fa $06 $f5
    ei                                            ; $7225: $fb
    set 7, l                                      ; $7226: $cb $fd
    rst $20                                       ; $7228: $e7
    dec a                                         ; $7229: $3d
    rst $30                                       ; $722a: $f7
    dec e                                         ; $722b: $1d
    rst $30                                       ; $722c: $f7
    dec e                                         ; $722d: $1d
    rst $30                                       ; $722e: $f7
    dec e                                         ; $722f: $1d
    rst $20                                       ; $7230: $e7
    dec a                                         ; $7231: $3d
    ld b, a                                       ; $7232: $47
    db $fd                                        ; $7233: $fd
    rst $20                                       ; $7234: $e7
    dec a                                         ; $7235: $3d
    rst $30                                       ; $7236: $f7
    dec e                                         ; $7237: $1d
    rst $30                                       ; $7238: $f7
    db $dd                                        ; $7239: $dd
    rst $20                                       ; $723a: $e7
    ld a, l                                       ; $723b: $7d
    rst $00                                       ; $723c: $c7
    ld a, l                                       ; $723d: $7d
    rst $20                                       ; $723e: $e7
    cp l                                          ; $723f: $bd
    rst $20                                       ; $7240: $e7
    dec a                                         ; $7241: $3d
    rst $00                                       ; $7242: $c7
    ld a, l                                       ; $7243: $7d
    rlca                                          ; $7244: $07
    db $fd                                        ; $7245: $fd
    rlca                                          ; $7246: $07
    db $fd                                        ; $7247: $fd
    dec bc                                        ; $7248: $0b
    db $fd                                        ; $7249: $fd
    push af                                       ; $724a: $f5
    ei                                            ; $724b: $fb
    ld a, [$fc06]                                 ; $724c: $fa $06 $fc
    db $fc                                        ; $724f: $fc
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
    ccf                                           ; $7260: $3f
    ccf                                           ; $7261: $3f
    ld e, a                                       ; $7262: $5f
    ld h, b                                       ; $7263: $60
    xor a                                         ; $7264: $af
    rst $18                                       ; $7265: $df
    ret nc                                        ; $7266: $d0

    cp a                                          ; $7267: $bf
    ldh [$bf], a                                  ; $7268: $e0 $bf
    ldh [$bf], a                                  ; $726a: $e0 $bf
    ldh [$bf], a                                  ; $726c: $e0 $bf
    ldh [$bf], a                                  ; $726e: $e0 $bf
    pop hl                                        ; $7270: $e1
    cp a                                          ; $7271: $bf
    db $e3                                        ; $7272: $e3
    cp [hl]                                       ; $7273: $be
    rst $20                                       ; $7274: $e7
    cp h                                          ; $7275: $bc
    rst $28                                       ; $7276: $ef
    cp b                                          ; $7277: $b8
    rst $28                                       ; $7278: $ef
    cp e                                          ; $7279: $bb
    rst $20                                       ; $727a: $e7
    cp [hl]                                       ; $727b: $be
    db $e3                                        ; $727c: $e3
    cp [hl]                                       ; $727d: $be
    rst $20                                       ; $727e: $e7
    cp l                                          ; $727f: $bd
    rst $20                                       ; $7280: $e7
    cp h                                          ; $7281: $bc
    db $e3                                        ; $7282: $e3
    cp [hl]                                       ; $7283: $be
    ldh [$bf], a                                  ; $7284: $e0 $bf
    ldh [$bf], a                                  ; $7286: $e0 $bf
    ret nc                                        ; $7288: $d0

    cp a                                          ; $7289: $bf
    xor a                                         ; $728a: $af
    rst $18                                       ; $728b: $df
    ld e, a                                       ; $728c: $5f
    ld h, b                                       ; $728d: $60
    ccf                                           ; $728e: $3f
    ccf                                           ; $728f: $3f
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
    rst $38                                       ; $72a0: $ff
    rst $38                                       ; $72a1: $ff
    rst $38                                       ; $72a2: $ff
    nop                                           ; $72a3: $00
    rst $38                                       ; $72a4: $ff
    rst $38                                       ; $72a5: $ff
    ld bc, $03ff                                  ; $72a6: $01 $ff $03
    cp $1f                                        ; $72a9: $fe $1f
    db $fc                                        ; $72ab: $fc
    ld a, a                                       ; $72ac: $7f
    db $e4                                        ; $72ad: $e4
    ei                                            ; $72ae: $fb
    add h                                         ; $72af: $84
    rst $38                                       ; $72b0: $ff
    nop                                           ; $72b1: $00
    rst $38                                       ; $72b2: $ff
    nop                                           ; $72b3: $00
    rst $38                                       ; $72b4: $ff
    nop                                           ; $72b5: $00
    rst $38                                       ; $72b6: $ff
    rst $38                                       ; $72b7: $ff
    rst $38                                       ; $72b8: $ff
    ld a, [hl]                                    ; $72b9: $7e
    rst $38                                       ; $72ba: $ff
    cp l                                          ; $72bb: $bd
    rst $38                                       ; $72bc: $ff
    db $db                                        ; $72bd: $db
    rst $38                                       ; $72be: $ff
    inc a                                         ; $72bf: $3c
    rst $38                                       ; $72c0: $ff
    jp $dbff                                      ; $72c1: $c3 $ff $db


    nop                                           ; $72c4: $00
    rst $38                                       ; $72c5: $ff
    nop                                           ; $72c6: $00
    rst $38                                       ; $72c7: $ff
    nop                                           ; $72c8: $00
    rst $38                                       ; $72c9: $ff
    rst $38                                       ; $72ca: $ff
    rst $38                                       ; $72cb: $ff
    rst $38                                       ; $72cc: $ff
    nop                                           ; $72cd: $00
    rst $38                                       ; $72ce: $ff
    rst $38                                       ; $72cf: $ff
    nop                                           ; $72d0: $00
    nop                                           ; $72d1: $00
    nop                                           ; $72d2: $00
    nop                                           ; $72d3: $00
    nop                                           ; $72d4: $00
    nop                                           ; $72d5: $00
    nop                                           ; $72d6: $00
    nop                                           ; $72d7: $00
    nop                                           ; $72d8: $00
    nop                                           ; $72d9: $00
    nop                                           ; $72da: $00
    nop                                           ; $72db: $00
    nop                                           ; $72dc: $00
    nop                                           ; $72dd: $00
    nop                                           ; $72de: $00
    nop                                           ; $72df: $00
    db $fc                                        ; $72e0: $fc
    db $fc                                        ; $72e1: $fc
    ld a, [$f506]                                 ; $72e2: $fa $06 $f5
    ei                                            ; $72e5: $fb
    set 7, l                                      ; $72e6: $cb $fd
    rst $20                                       ; $72e8: $e7
    dec a                                         ; $72e9: $3d
    rst $30                                       ; $72ea: $f7
    dec e                                         ; $72eb: $1d
    rst $30                                       ; $72ec: $f7
    dec e                                         ; $72ed: $1d
    rst $30                                       ; $72ee: $f7
    dec e                                         ; $72ef: $1d
    rst $20                                       ; $72f0: $e7
    dec a                                         ; $72f1: $3d
    ld b, a                                       ; $72f2: $47
    db $fd                                        ; $72f3: $fd
    rst $20                                       ; $72f4: $e7
    dec a                                         ; $72f5: $3d
    rst $30                                       ; $72f6: $f7
    dec e                                         ; $72f7: $1d
    rst $30                                       ; $72f8: $f7
    db $dd                                        ; $72f9: $dd
    rst $20                                       ; $72fa: $e7
    ld a, l                                       ; $72fb: $7d
    rst $00                                       ; $72fc: $c7
    ld a, l                                       ; $72fd: $7d
    rst $20                                       ; $72fe: $e7
    cp l                                          ; $72ff: $bd
    rst $20                                       ; $7300: $e7
    dec a                                         ; $7301: $3d
    rst $00                                       ; $7302: $c7
    ld a, l                                       ; $7303: $7d
    rlca                                          ; $7304: $07
    db $fd                                        ; $7305: $fd
    rlca                                          ; $7306: $07
    db $fd                                        ; $7307: $fd
    dec bc                                        ; $7308: $0b
    db $fd                                        ; $7309: $fd
    push af                                       ; $730a: $f5
    ei                                            ; $730b: $fb
    ld a, [$fc06]                                 ; $730c: $fa $06 $fc
    db $fc                                        ; $730f: $fc
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
    ccf                                           ; $7320: $3f
    ccf                                           ; $7321: $3f
    ld e, a                                       ; $7322: $5f
    ld h, b                                       ; $7323: $60
    xor a                                         ; $7324: $af
    rst $18                                       ; $7325: $df
    ret nc                                        ; $7326: $d0

    cp a                                          ; $7327: $bf
    ldh [$bf], a                                  ; $7328: $e0 $bf
    ldh [$bf], a                                  ; $732a: $e0 $bf
    ldh [$bf], a                                  ; $732c: $e0 $bf
    ldh [$bf], a                                  ; $732e: $e0 $bf
    pop hl                                        ; $7330: $e1
    cp a                                          ; $7331: $bf
    db $e3                                        ; $7332: $e3
    cp [hl]                                       ; $7333: $be
    rst $20                                       ; $7334: $e7
    cp h                                          ; $7335: $bc
    rst $28                                       ; $7336: $ef
    cp b                                          ; $7337: $b8
    rst $28                                       ; $7338: $ef
    cp e                                          ; $7339: $bb
    rst $20                                       ; $733a: $e7
    cp [hl]                                       ; $733b: $be
    db $e3                                        ; $733c: $e3
    cp [hl]                                       ; $733d: $be
    rst $20                                       ; $733e: $e7
    cp l                                          ; $733f: $bd
    rst $20                                       ; $7340: $e7
    cp h                                          ; $7341: $bc
    db $e3                                        ; $7342: $e3
    cp [hl]                                       ; $7343: $be
    ldh [$bf], a                                  ; $7344: $e0 $bf
    ldh [$bf], a                                  ; $7346: $e0 $bf
    ret nc                                        ; $7348: $d0

    cp a                                          ; $7349: $bf
    xor a                                         ; $734a: $af
    rst $18                                       ; $734b: $df
    ld e, a                                       ; $734c: $5f
    ld h, b                                       ; $734d: $60
    ccf                                           ; $734e: $3f
    ccf                                           ; $734f: $3f
    nop                                           ; $7350: $00
    nop                                           ; $7351: $00
    nop                                           ; $7352: $00
    nop                                           ; $7353: $00
    nop                                           ; $7354: $00
    nop                                           ; $7355: $00
    nop                                           ; $7356: $00
    nop                                           ; $7357: $00
    nop                                           ; $7358: $00
    nop                                           ; $7359: $00
    nop                                           ; $735a: $00
    nop                                           ; $735b: $00
    nop                                           ; $735c: $00
    nop                                           ; $735d: $00
    nop                                           ; $735e: $00
    nop                                           ; $735f: $00
    rst $38                                       ; $7360: $ff
    rst $38                                       ; $7361: $ff
    rst $38                                       ; $7362: $ff
    nop                                           ; $7363: $00
    rst $38                                       ; $7364: $ff
    rst $38                                       ; $7365: $ff
    ld bc, $03ff                                  ; $7366: $01 $ff $03
    cp $1f                                        ; $7369: $fe $1f
    db $fc                                        ; $736b: $fc
    ld a, a                                       ; $736c: $7f
    db $e4                                        ; $736d: $e4
    ei                                            ; $736e: $fb
    add h                                         ; $736f: $84
    rst $38                                       ; $7370: $ff
    nop                                           ; $7371: $00
    rst $38                                       ; $7372: $ff
    nop                                           ; $7373: $00
    rst $38                                       ; $7374: $ff
    nop                                           ; $7375: $00
    rst $38                                       ; $7376: $ff
    rst $38                                       ; $7377: $ff
    rst $38                                       ; $7378: $ff
    ld a, [hl]                                    ; $7379: $7e
    rst $38                                       ; $737a: $ff
    cp l                                          ; $737b: $bd
    rst $38                                       ; $737c: $ff
    db $db                                        ; $737d: $db
    rst $38                                       ; $737e: $ff
    inc a                                         ; $737f: $3c
    rst $38                                       ; $7380: $ff
    jp $dbff                                      ; $7381: $c3 $ff $db


    nop                                           ; $7384: $00
    rst $38                                       ; $7385: $ff
    nop                                           ; $7386: $00
    rst $38                                       ; $7387: $ff
    nop                                           ; $7388: $00
    rst $38                                       ; $7389: $ff
    rst $38                                       ; $738a: $ff
    rst $38                                       ; $738b: $ff
    rst $38                                       ; $738c: $ff
    nop                                           ; $738d: $00
    rst $38                                       ; $738e: $ff
    rst $38                                       ; $738f: $ff
    nop                                           ; $7390: $00
    nop                                           ; $7391: $00
    nop                                           ; $7392: $00
    nop                                           ; $7393: $00
    nop                                           ; $7394: $00
    nop                                           ; $7395: $00
    nop                                           ; $7396: $00
    nop                                           ; $7397: $00
    nop                                           ; $7398: $00
    nop                                           ; $7399: $00
    nop                                           ; $739a: $00
    nop                                           ; $739b: $00
    nop                                           ; $739c: $00
    nop                                           ; $739d: $00
    nop                                           ; $739e: $00
    nop                                           ; $739f: $00
    db $fc                                        ; $73a0: $fc
    db $fc                                        ; $73a1: $fc
    ld a, [$f506]                                 ; $73a2: $fa $06 $f5
    ei                                            ; $73a5: $fb
    set 7, l                                      ; $73a6: $cb $fd
    rst $20                                       ; $73a8: $e7
    dec a                                         ; $73a9: $3d
    rst $30                                       ; $73aa: $f7
    dec e                                         ; $73ab: $1d
    rst $30                                       ; $73ac: $f7
    dec e                                         ; $73ad: $1d
    rst $30                                       ; $73ae: $f7
    dec e                                         ; $73af: $1d
    rst $20                                       ; $73b0: $e7
    dec a                                         ; $73b1: $3d
    ld b, a                                       ; $73b2: $47
    db $fd                                        ; $73b3: $fd
    rst $20                                       ; $73b4: $e7
    dec a                                         ; $73b5: $3d
    rst $30                                       ; $73b6: $f7
    dec e                                         ; $73b7: $1d
    rst $30                                       ; $73b8: $f7
    db $dd                                        ; $73b9: $dd
    rst $20                                       ; $73ba: $e7
    ld a, l                                       ; $73bb: $7d
    rst $08                                       ; $73bc: $cf
    ld a, l                                       ; $73bd: $7d
    rst $38                                       ; $73be: $ff
    or l                                          ; $73bf: $b5
    rst $38                                       ; $73c0: $ff
    dec b                                         ; $73c1: $05
    rst $38                                       ; $73c2: $ff
    adc l                                         ; $73c3: $8d
    ld [hl], a                                    ; $73c4: $77
    db $fd                                        ; $73c5: $fd
    rlca                                          ; $73c6: $07
    db $fd                                        ; $73c7: $fd
    dec bc                                        ; $73c8: $0b
    db $fd                                        ; $73c9: $fd
    push af                                       ; $73ca: $f5
    ei                                            ; $73cb: $fb
    ld a, [$fc06]                                 ; $73cc: $fa $06 $fc
    db $fc                                        ; $73cf: $fc
    nop                                           ; $73d0: $00
    nop                                           ; $73d1: $00
    nop                                           ; $73d2: $00
    nop                                           ; $73d3: $00
    nop                                           ; $73d4: $00
    nop                                           ; $73d5: $00
    nop                                           ; $73d6: $00
    nop                                           ; $73d7: $00
    nop                                           ; $73d8: $00
    nop                                           ; $73d9: $00
    nop                                           ; $73da: $00
    nop                                           ; $73db: $00
    nop                                           ; $73dc: $00
    nop                                           ; $73dd: $00
    nop                                           ; $73de: $00
    nop                                           ; $73df: $00
    ccf                                           ; $73e0: $3f
    ccf                                           ; $73e1: $3f
    ld e, a                                       ; $73e2: $5f
    ld h, b                                       ; $73e3: $60
    xor a                                         ; $73e4: $af
    rst $18                                       ; $73e5: $df
    ret nc                                        ; $73e6: $d0

    cp a                                          ; $73e7: $bf
    ldh [$bf], a                                  ; $73e8: $e0 $bf
    ldh [$bf], a                                  ; $73ea: $e0 $bf
    ldh [$bf], a                                  ; $73ec: $e0 $bf
    ldh [$bf], a                                  ; $73ee: $e0 $bf
    pop hl                                        ; $73f0: $e1
    cp a                                          ; $73f1: $bf
    db $e3                                        ; $73f2: $e3
    cp [hl]                                       ; $73f3: $be
    rst $20                                       ; $73f4: $e7
    cp h                                          ; $73f5: $bc
    rst $28                                       ; $73f6: $ef
    cp b                                          ; $73f7: $b8
    rst $28                                       ; $73f8: $ef
    cp e                                          ; $73f9: $bb
    rst $20                                       ; $73fa: $e7
    cp [hl]                                       ; $73fb: $be
    db $e3                                        ; $73fc: $e3
    cp [hl]                                       ; $73fd: $be
    rst $20                                       ; $73fe: $e7
    cp l                                          ; $73ff: $bd
    rst $20                                       ; $7400: $e7
    cp h                                          ; $7401: $bc
    db $e3                                        ; $7402: $e3
    cp [hl]                                       ; $7403: $be
    ldh [$bf], a                                  ; $7404: $e0 $bf
    ldh [$bf], a                                  ; $7406: $e0 $bf
    ret nc                                        ; $7408: $d0

    cp a                                          ; $7409: $bf
    xor a                                         ; $740a: $af
    rst $18                                       ; $740b: $df
    ld e, a                                       ; $740c: $5f
    ld h, b                                       ; $740d: $60
    ccf                                           ; $740e: $3f
    ccf                                           ; $740f: $3f
    nop                                           ; $7410: $00
    nop                                           ; $7411: $00
    nop                                           ; $7412: $00
    nop                                           ; $7413: $00
    nop                                           ; $7414: $00
    nop                                           ; $7415: $00
    nop                                           ; $7416: $00
    nop                                           ; $7417: $00
    nop                                           ; $7418: $00
    nop                                           ; $7419: $00
    nop                                           ; $741a: $00
    nop                                           ; $741b: $00
    nop                                           ; $741c: $00
    nop                                           ; $741d: $00
    nop                                           ; $741e: $00
    nop                                           ; $741f: $00
    rst $38                                       ; $7420: $ff
    rst $38                                       ; $7421: $ff
    rst $38                                       ; $7422: $ff
    nop                                           ; $7423: $00
    rst $38                                       ; $7424: $ff
    rst $38                                       ; $7425: $ff
    ld bc, $03ff                                  ; $7426: $01 $ff $03
    cp $1f                                        ; $7429: $fe $1f
    db $fc                                        ; $742b: $fc
    ld a, a                                       ; $742c: $7f
    db $e4                                        ; $742d: $e4
    ei                                            ; $742e: $fb
    add h                                         ; $742f: $84
    rst $38                                       ; $7430: $ff
    nop                                           ; $7431: $00
    rst $38                                       ; $7432: $ff
    nop                                           ; $7433: $00
    rst $38                                       ; $7434: $ff
    nop                                           ; $7435: $00
    rst $38                                       ; $7436: $ff
    rst $38                                       ; $7437: $ff
    rst $38                                       ; $7438: $ff
    ld a, [hl]                                    ; $7439: $7e
    rst $38                                       ; $743a: $ff
    cp l                                          ; $743b: $bd
    rst $38                                       ; $743c: $ff
    db $db                                        ; $743d: $db
    rst $38                                       ; $743e: $ff
    inc a                                         ; $743f: $3c
    rst $38                                       ; $7440: $ff
    jp $dbff                                      ; $7441: $c3 $ff $db


    nop                                           ; $7444: $00
    rst $38                                       ; $7445: $ff
    nop                                           ; $7446: $00
    rst $38                                       ; $7447: $ff
    nop                                           ; $7448: $00
    rst $38                                       ; $7449: $ff
    rst $38                                       ; $744a: $ff
    rst $38                                       ; $744b: $ff
    rst $38                                       ; $744c: $ff
    nop                                           ; $744d: $00
    rst $38                                       ; $744e: $ff
    rst $38                                       ; $744f: $ff
    nop                                           ; $7450: $00
    nop                                           ; $7451: $00
    nop                                           ; $7452: $00
    nop                                           ; $7453: $00
    nop                                           ; $7454: $00
    nop                                           ; $7455: $00
    nop                                           ; $7456: $00
    nop                                           ; $7457: $00
    nop                                           ; $7458: $00
    nop                                           ; $7459: $00
    nop                                           ; $745a: $00
    nop                                           ; $745b: $00
    nop                                           ; $745c: $00
    nop                                           ; $745d: $00
    nop                                           ; $745e: $00
    nop                                           ; $745f: $00
    db $fc                                        ; $7460: $fc
    db $fc                                        ; $7461: $fc
    ld a, [$f506]                                 ; $7462: $fa $06 $f5
    ei                                            ; $7465: $fb
    set 7, l                                      ; $7466: $cb $fd
    rst $20                                       ; $7468: $e7
    dec a                                         ; $7469: $3d
    rst $30                                       ; $746a: $f7
    dec e                                         ; $746b: $1d
    rst $30                                       ; $746c: $f7
    dec e                                         ; $746d: $1d
    rst $30                                       ; $746e: $f7
    dec e                                         ; $746f: $1d
    rst $20                                       ; $7470: $e7
    dec a                                         ; $7471: $3d
    ld b, a                                       ; $7472: $47
    db $fd                                        ; $7473: $fd
    rst $20                                       ; $7474: $e7
    dec a                                         ; $7475: $3d
    rst $30                                       ; $7476: $f7
    dec e                                         ; $7477: $1d
    rst $38                                       ; $7478: $ff
    db $dd                                        ; $7479: $dd
    rst $38                                       ; $747a: $ff
    ld [hl], l                                    ; $747b: $75
    rst $38                                       ; $747c: $ff
    ld h, l                                       ; $747d: $65
    rst $38                                       ; $747e: $ff
    adc l                                         ; $747f: $8d
    rst $30                                       ; $7480: $f7
    dec e                                         ; $7481: $1d
    rst $20                                       ; $7482: $e7
    db $fd                                        ; $7483: $fd
    rlca                                          ; $7484: $07
    db $fd                                        ; $7485: $fd
    rlca                                          ; $7486: $07
    db $fd                                        ; $7487: $fd
    dec bc                                        ; $7488: $0b
    db $fd                                        ; $7489: $fd
    push af                                       ; $748a: $f5
    ei                                            ; $748b: $fb
    ld a, [$fc06]                                 ; $748c: $fa $06 $fc
    db $fc                                        ; $748f: $fc
    nop                                           ; $7490: $00
    nop                                           ; $7491: $00
    nop                                           ; $7492: $00
    nop                                           ; $7493: $00
    nop                                           ; $7494: $00
    nop                                           ; $7495: $00
    nop                                           ; $7496: $00
    nop                                           ; $7497: $00
    nop                                           ; $7498: $00
    nop                                           ; $7499: $00
    nop                                           ; $749a: $00
    nop                                           ; $749b: $00
    nop                                           ; $749c: $00
    nop                                           ; $749d: $00
    nop                                           ; $749e: $00
    nop                                           ; $749f: $00
    ccf                                           ; $74a0: $3f
    ccf                                           ; $74a1: $3f
    ld e, a                                       ; $74a2: $5f
    ld h, b                                       ; $74a3: $60
    xor a                                         ; $74a4: $af
    rst $18                                       ; $74a5: $df
    ret nc                                        ; $74a6: $d0

    cp a                                          ; $74a7: $bf
    ldh [$bf], a                                  ; $74a8: $e0 $bf
    ldh [$bf], a                                  ; $74aa: $e0 $bf
    ldh [$bf], a                                  ; $74ac: $e0 $bf
    pop hl                                        ; $74ae: $e1
    cp a                                          ; $74af: $bf
    ld [c], a                                     ; $74b0: $e2
    cp a                                          ; $74b1: $bf
    db $e3                                        ; $74b2: $e3
    cp [hl]                                       ; $74b3: $be
    push hl                                       ; $74b4: $e5
    cp [hl]                                       ; $74b5: $be
    rst $20                                       ; $74b6: $e7
    cp h                                          ; $74b7: $bc
    rst $20                                       ; $74b8: $e7
    cp h                                          ; $74b9: $bc
    push hl                                       ; $74ba: $e5
    cp [hl]                                       ; $74bb: $be
    db $e3                                        ; $74bc: $e3
    cp [hl]                                       ; $74bd: $be
    ld [c], a                                     ; $74be: $e2
    cp a                                          ; $74bf: $bf
    pop hl                                        ; $74c0: $e1
    cp a                                          ; $74c1: $bf
    ldh [$bf], a                                  ; $74c2: $e0 $bf
    pop hl                                        ; $74c4: $e1
    cp a                                          ; $74c5: $bf
    ldh [$bf], a                                  ; $74c6: $e0 $bf
    ret nc                                        ; $74c8: $d0

    cp a                                          ; $74c9: $bf
    xor a                                         ; $74ca: $af
    rst $18                                       ; $74cb: $df
    ld e, a                                       ; $74cc: $5f
    ld h, b                                       ; $74cd: $60
    ccf                                           ; $74ce: $3f
    ccf                                           ; $74cf: $3f
    nop                                           ; $74d0: $00
    nop                                           ; $74d1: $00
    nop                                           ; $74d2: $00
    nop                                           ; $74d3: $00
    nop                                           ; $74d4: $00
    nop                                           ; $74d5: $00
    nop                                           ; $74d6: $00
    nop                                           ; $74d7: $00
    nop                                           ; $74d8: $00
    nop                                           ; $74d9: $00
    nop                                           ; $74da: $00
    nop                                           ; $74db: $00
    nop                                           ; $74dc: $00
    nop                                           ; $74dd: $00
    nop                                           ; $74de: $00
    nop                                           ; $74df: $00
    rst $38                                       ; $74e0: $ff
    rst $38                                       ; $74e1: $ff
    rst $38                                       ; $74e2: $ff
    nop                                           ; $74e3: $00
    rst $38                                       ; $74e4: $ff
    rst $38                                       ; $74e5: $ff
    nop                                           ; $74e6: $00
    rst $38                                       ; $74e7: $ff
    nop                                           ; $74e8: $00
    rst $38                                       ; $74e9: $ff
    inc a                                         ; $74ea: $3c
    rst $38                                       ; $74eb: $ff
    db $db                                        ; $74ec: $db
    rst $20                                       ; $74ed: $e7
    ld a, [hl]                                    ; $74ee: $7e
    add c                                         ; $74ef: $81
    rst $38                                       ; $74f0: $ff
    nop                                           ; $74f1: $00
    db $fd                                        ; $74f2: $fd
    ld [bc], a                                    ; $74f3: $02
    rst $38                                       ; $74f4: $ff
    nop                                           ; $74f5: $00
    ld a, [$ff05]                                 ; $74f6: $fa $05 $ff
    nop                                           ; $74f9: $00
    call nc, $fe2b                                ; $74fa: $d4 $2b $fe
    ld bc, $57a8                                  ; $74fd: $01 $a8 $57
    ld bc, $e3ff                                  ; $7500: $01 $ff $e3
    rst $38                                       ; $7503: $ff
    inc e                                         ; $7504: $1c
    rst $38                                       ; $7505: $ff
    nop                                           ; $7506: $00
    rst $38                                       ; $7507: $ff
    nop                                           ; $7508: $00
    rst $38                                       ; $7509: $ff
    rst $38                                       ; $750a: $ff
    rst $38                                       ; $750b: $ff
    rst $38                                       ; $750c: $ff
    nop                                           ; $750d: $00
    rst $38                                       ; $750e: $ff
    rst $38                                       ; $750f: $ff
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
    db $fc                                        ; $7520: $fc
    db $fc                                        ; $7521: $fc
    ld a, [$f506]                                 ; $7522: $fa $06 $f5
    ei                                            ; $7525: $fb
    dec bc                                        ; $7526: $0b
    db $fd                                        ; $7527: $fd
    rlca                                          ; $7528: $07
    db $fd                                        ; $7529: $fd
    rlca                                          ; $752a: $07
    db $fd                                        ; $752b: $fd
    rlca                                          ; $752c: $07
    db $fd                                        ; $752d: $fd
    add a                                         ; $752e: $87
    db $fd                                        ; $752f: $fd
    ld b, a                                       ; $7530: $47
    db $fd                                        ; $7531: $fd
    ld b, a                                       ; $7532: $47
    db $fd                                        ; $7533: $fd
    daa                                           ; $7534: $27
    db $fd                                        ; $7535: $fd
    daa                                           ; $7536: $27
    db $fd                                        ; $7537: $fd
    daa                                           ; $7538: $27
    db $fd                                        ; $7539: $fd
    ld h, a                                       ; $753a: $67
    db $fd                                        ; $753b: $fd
    ld b, a                                       ; $753c: $47
    db $fd                                        ; $753d: $fd
    rst $00                                       ; $753e: $c7
    db $fd                                        ; $753f: $fd
    add a                                         ; $7540: $87
    db $fd                                        ; $7541: $fd
    rst $00                                       ; $7542: $c7
    db $fd                                        ; $7543: $fd
    rlca                                          ; $7544: $07
    db $fd                                        ; $7545: $fd
    rlca                                          ; $7546: $07
    db $fd                                        ; $7547: $fd
    dec bc                                        ; $7548: $0b
    db $fd                                        ; $7549: $fd
    push af                                       ; $754a: $f5
    ei                                            ; $754b: $fb
    ld a, [$fc06]                                 ; $754c: $fa $06 $fc
    db $fc                                        ; $754f: $fc
    nop                                           ; $7550: $00
    nop                                           ; $7551: $00
    nop                                           ; $7552: $00
    nop                                           ; $7553: $00
    nop                                           ; $7554: $00
    nop                                           ; $7555: $00
    nop                                           ; $7556: $00
    nop                                           ; $7557: $00
    nop                                           ; $7558: $00
    nop                                           ; $7559: $00
    nop                                           ; $755a: $00
    nop                                           ; $755b: $00
    nop                                           ; $755c: $00
    nop                                           ; $755d: $00
    nop                                           ; $755e: $00
    nop                                           ; $755f: $00
    ccf                                           ; $7560: $3f
    ccf                                           ; $7561: $3f
    ld e, a                                       ; $7562: $5f
    ld h, b                                       ; $7563: $60
    xor a                                         ; $7564: $af
    rst $18                                       ; $7565: $df
    ret nc                                        ; $7566: $d0

    cp a                                          ; $7567: $bf
    ldh [$bf], a                                  ; $7568: $e0 $bf
    ldh [$bf], a                                  ; $756a: $e0 $bf
    ldh [$bf], a                                  ; $756c: $e0 $bf
    ldh [$bf], a                                  ; $756e: $e0 $bf
    ldh [$bf], a                                  ; $7570: $e0 $bf
    pop hl                                        ; $7572: $e1
    cp a                                          ; $7573: $bf
    ld [c], a                                     ; $7574: $e2
    cp a                                          ; $7575: $bf
    db $e3                                        ; $7576: $e3
    cp [hl]                                       ; $7577: $be
    push hl                                       ; $7578: $e5
    cp [hl]                                       ; $7579: $be
    rst $20                                       ; $757a: $e7
    cp h                                          ; $757b: $bc
    rst $20                                       ; $757c: $e7
    cp h                                          ; $757d: $bc
    db $ed                                        ; $757e: $ed
    cp [hl]                                       ; $757f: $be
    db $e3                                        ; $7580: $e3
    cp a                                          ; $7581: $bf
    db $e4                                        ; $7582: $e4
    cp a                                          ; $7583: $bf
    ldh [$bf], a                                  ; $7584: $e0 $bf
    ldh [$bf], a                                  ; $7586: $e0 $bf
    ret nc                                        ; $7588: $d0

    cp a                                          ; $7589: $bf
    xor a                                         ; $758a: $af
    rst $18                                       ; $758b: $df
    ld e, a                                       ; $758c: $5f
    ld h, b                                       ; $758d: $60
    ccf                                           ; $758e: $3f
    ccf                                           ; $758f: $3f
    nop                                           ; $7590: $00
    nop                                           ; $7591: $00
    nop                                           ; $7592: $00
    nop                                           ; $7593: $00
    nop                                           ; $7594: $00
    nop                                           ; $7595: $00
    nop                                           ; $7596: $00
    nop                                           ; $7597: $00
    nop                                           ; $7598: $00
    nop                                           ; $7599: $00
    nop                                           ; $759a: $00
    nop                                           ; $759b: $00
    nop                                           ; $759c: $00
    nop                                           ; $759d: $00
    nop                                           ; $759e: $00
    nop                                           ; $759f: $00
    rst $38                                       ; $75a0: $ff
    rst $38                                       ; $75a1: $ff
    rst $38                                       ; $75a2: $ff
    nop                                           ; $75a3: $00
    rst $38                                       ; $75a4: $ff
    rst $38                                       ; $75a5: $ff
    nop                                           ; $75a6: $00
    rst $38                                       ; $75a7: $ff
    nop                                           ; $75a8: $00
    rst $38                                       ; $75a9: $ff
    nop                                           ; $75aa: $00
    rst $38                                       ; $75ab: $ff
    nop                                           ; $75ac: $00
    rst $38                                       ; $75ad: $ff
    inc a                                         ; $75ae: $3c
    rst $38                                       ; $75af: $ff
    db $db                                        ; $75b0: $db
    rst $20                                       ; $75b1: $e7
    ld a, [hl]                                    ; $75b2: $7e
    add c                                         ; $75b3: $81
    rst $38                                       ; $75b4: $ff
    nop                                           ; $75b5: $00
    db $fd                                        ; $75b6: $fd
    ld [bc], a                                    ; $75b7: $02
    rst $38                                       ; $75b8: $ff
    nop                                           ; $75b9: $00
    ld a, [$ff05]                                 ; $75ba: $fa $05 $ff
    nop                                           ; $75bd: $00
    ld d, h                                       ; $75be: $54
    xor e                                         ; $75bf: $ab
    add c                                         ; $75c0: $81
    rst $38                                       ; $75c1: $ff
    ld a, [hl]                                    ; $75c2: $7e
    rst $38                                       ; $75c3: $ff
    inc b                                         ; $75c4: $04
    rst $38                                       ; $75c5: $ff
    nop                                           ; $75c6: $00
    rst $38                                       ; $75c7: $ff
    nop                                           ; $75c8: $00
    rst $38                                       ; $75c9: $ff
    rst $38                                       ; $75ca: $ff
    rst $38                                       ; $75cb: $ff
    rst $38                                       ; $75cc: $ff
    nop                                           ; $75cd: $00
    rst $38                                       ; $75ce: $ff
    rst $38                                       ; $75cf: $ff
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
    db $fc                                        ; $75e0: $fc
    db $fc                                        ; $75e1: $fc
    ld a, [$f506]                                 ; $75e2: $fa $06 $f5
    ei                                            ; $75e5: $fb
    dec bc                                        ; $75e6: $0b
    db $fd                                        ; $75e7: $fd
    rlca                                          ; $75e8: $07
    db $fd                                        ; $75e9: $fd
    rlca                                          ; $75ea: $07
    db $fd                                        ; $75eb: $fd
    rlca                                          ; $75ec: $07
    db $fd                                        ; $75ed: $fd
    rlca                                          ; $75ee: $07
    db $fd                                        ; $75ef: $fd
    rlca                                          ; $75f0: $07
    db $fd                                        ; $75f1: $fd
    add a                                         ; $75f2: $87
    db $fd                                        ; $75f3: $fd
    ld b, a                                       ; $75f4: $47
    db $fd                                        ; $75f5: $fd
    ld b, a                                       ; $75f6: $47
    db $fd                                        ; $75f7: $fd
    daa                                           ; $75f8: $27
    db $fd                                        ; $75f9: $fd
    daa                                           ; $75fa: $27
    db $fd                                        ; $75fb: $fd
    daa                                           ; $75fc: $27
    db $fd                                        ; $75fd: $fd
    ld [hl], a                                    ; $75fe: $77
    db $fd                                        ; $75ff: $fd
    add a                                         ; $7600: $87
    db $fd                                        ; $7601: $fd
    rlca                                          ; $7602: $07
    db $fd                                        ; $7603: $fd
    rlca                                          ; $7604: $07
    db $fd                                        ; $7605: $fd
    rlca                                          ; $7606: $07
    db $fd                                        ; $7607: $fd
    dec bc                                        ; $7608: $0b
    db $fd                                        ; $7609: $fd
    push af                                       ; $760a: $f5
    ei                                            ; $760b: $fb
    ld a, [$fc06]                                 ; $760c: $fa $06 $fc
    db $fc                                        ; $760f: $fc
    nop                                           ; $7610: $00
    nop                                           ; $7611: $00
    nop                                           ; $7612: $00
    nop                                           ; $7613: $00
    nop                                           ; $7614: $00
    nop                                           ; $7615: $00
    nop                                           ; $7616: $00
    nop                                           ; $7617: $00
    nop                                           ; $7618: $00
    nop                                           ; $7619: $00
    nop                                           ; $761a: $00
    nop                                           ; $761b: $00
    nop                                           ; $761c: $00
    nop                                           ; $761d: $00
    nop                                           ; $761e: $00
    nop                                           ; $761f: $00
    ccf                                           ; $7620: $3f
    ccf                                           ; $7621: $3f
    ld e, a                                       ; $7622: $5f
    ld h, b                                       ; $7623: $60
    xor a                                         ; $7624: $af
    rst $18                                       ; $7625: $df
    ret nc                                        ; $7626: $d0

    cp a                                          ; $7627: $bf
    ldh [$bf], a                                  ; $7628: $e0 $bf
    ldh [$bf], a                                  ; $762a: $e0 $bf
    ldh [$bf], a                                  ; $762c: $e0 $bf
    ldh [$bf], a                                  ; $762e: $e0 $bf
    ldh [$bf], a                                  ; $7630: $e0 $bf
    ldh [$bf], a                                  ; $7632: $e0 $bf
    ldh [$bf], a                                  ; $7634: $e0 $bf
    pop hl                                        ; $7636: $e1
    cp a                                          ; $7637: $bf
    ld [c], a                                     ; $7638: $e2
    cp a                                          ; $7639: $bf
    db $e3                                        ; $763a: $e3
    cp [hl]                                       ; $763b: $be
    push hl                                       ; $763c: $e5
    cp [hl]                                       ; $763d: $be
    db $ed                                        ; $763e: $ed
    cp [hl]                                       ; $763f: $be
    db $e3                                        ; $7640: $e3
    cp a                                          ; $7641: $bf
    db $e4                                        ; $7642: $e4
    cp a                                          ; $7643: $bf
    ldh [$bf], a                                  ; $7644: $e0 $bf
    ldh [$bf], a                                  ; $7646: $e0 $bf
    ret nc                                        ; $7648: $d0

    cp a                                          ; $7649: $bf
    xor a                                         ; $764a: $af
    rst $18                                       ; $764b: $df
    ld e, a                                       ; $764c: $5f
    ld h, b                                       ; $764d: $60
    ccf                                           ; $764e: $3f
    ccf                                           ; $764f: $3f
    nop                                           ; $7650: $00
    nop                                           ; $7651: $00
    nop                                           ; $7652: $00
    nop                                           ; $7653: $00
    nop                                           ; $7654: $00
    nop                                           ; $7655: $00
    nop                                           ; $7656: $00
    nop                                           ; $7657: $00
    nop                                           ; $7658: $00
    nop                                           ; $7659: $00
    nop                                           ; $765a: $00
    nop                                           ; $765b: $00
    nop                                           ; $765c: $00
    nop                                           ; $765d: $00
    nop                                           ; $765e: $00
    nop                                           ; $765f: $00
    rst $38                                       ; $7660: $ff
    rst $38                                       ; $7661: $ff
    rst $38                                       ; $7662: $ff
    nop                                           ; $7663: $00
    rst $38                                       ; $7664: $ff
    rst $38                                       ; $7665: $ff
    nop                                           ; $7666: $00
    rst $38                                       ; $7667: $ff
    nop                                           ; $7668: $00
    rst $38                                       ; $7669: $ff
    nop                                           ; $766a: $00
    rst $38                                       ; $766b: $ff
    nop                                           ; $766c: $00
    rst $38                                       ; $766d: $ff
    nop                                           ; $766e: $00
    rst $38                                       ; $766f: $ff
    nop                                           ; $7670: $00
    rst $38                                       ; $7671: $ff
    inc a                                         ; $7672: $3c
    rst $38                                       ; $7673: $ff
    db $db                                        ; $7674: $db
    rst $20                                       ; $7675: $e7
    ld a, [hl]                                    ; $7676: $7e
    add c                                         ; $7677: $81
    rst $38                                       ; $7678: $ff
    nop                                           ; $7679: $00
    db $fd                                        ; $767a: $fd
    ld [bc], a                                    ; $767b: $02
    rst $38                                       ; $767c: $ff
    nop                                           ; $767d: $00
    ld a, [$9105]                                 ; $767e: $fa $05 $91
    rst $28                                       ; $7681: $ef
    ld a, [hl]                                    ; $7682: $7e
    rst $38                                       ; $7683: $ff
    inc b                                         ; $7684: $04
    rst $38                                       ; $7685: $ff
    nop                                           ; $7686: $00
    rst $38                                       ; $7687: $ff
    nop                                           ; $7688: $00
    rst $38                                       ; $7689: $ff
    rst $38                                       ; $768a: $ff
    rst $38                                       ; $768b: $ff
    rst $38                                       ; $768c: $ff
    nop                                           ; $768d: $00
    rst $38                                       ; $768e: $ff
    rst $38                                       ; $768f: $ff
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
    db $fc                                        ; $76a0: $fc
    db $fc                                        ; $76a1: $fc
    ld a, [$f506]                                 ; $76a2: $fa $06 $f5
    ei                                            ; $76a5: $fb
    dec bc                                        ; $76a6: $0b
    db $fd                                        ; $76a7: $fd
    rlca                                          ; $76a8: $07
    db $fd                                        ; $76a9: $fd
    rlca                                          ; $76aa: $07
    db $fd                                        ; $76ab: $fd
    rlca                                          ; $76ac: $07
    db $fd                                        ; $76ad: $fd
    rlca                                          ; $76ae: $07
    db $fd                                        ; $76af: $fd
    rlca                                          ; $76b0: $07
    db $fd                                        ; $76b1: $fd
    rlca                                          ; $76b2: $07
    db $fd                                        ; $76b3: $fd
    rlca                                          ; $76b4: $07
    db $fd                                        ; $76b5: $fd
    add a                                         ; $76b6: $87
    db $fd                                        ; $76b7: $fd
    ld b, a                                       ; $76b8: $47
    db $fd                                        ; $76b9: $fd
    ld b, a                                       ; $76ba: $47
    db $fd                                        ; $76bb: $fd
    daa                                           ; $76bc: $27
    db $fd                                        ; $76bd: $fd
    ld [hl], a                                    ; $76be: $77
    db $fd                                        ; $76bf: $fd
    add a                                         ; $76c0: $87
    db $fd                                        ; $76c1: $fd
    ld b, a                                       ; $76c2: $47
    db $fd                                        ; $76c3: $fd
    rlca                                          ; $76c4: $07
    db $fd                                        ; $76c5: $fd
    rlca                                          ; $76c6: $07
    db $fd                                        ; $76c7: $fd
    dec bc                                        ; $76c8: $0b
    db $fd                                        ; $76c9: $fd
    push af                                       ; $76ca: $f5
    ei                                            ; $76cb: $fb
    ld a, [$fc06]                                 ; $76cc: $fa $06 $fc
    db $fc                                        ; $76cf: $fc
    nop                                           ; $76d0: $00
    nop                                           ; $76d1: $00
    nop                                           ; $76d2: $00
    nop                                           ; $76d3: $00
    nop                                           ; $76d4: $00
    nop                                           ; $76d5: $00
    nop                                           ; $76d6: $00
    nop                                           ; $76d7: $00
    nop                                           ; $76d8: $00
    nop                                           ; $76d9: $00
    nop                                           ; $76da: $00
    nop                                           ; $76db: $00
    nop                                           ; $76dc: $00
    nop                                           ; $76dd: $00
    nop                                           ; $76de: $00
    nop                                           ; $76df: $00
    ccf                                           ; $76e0: $3f
    ccf                                           ; $76e1: $3f
    ld e, a                                       ; $76e2: $5f
    ld h, b                                       ; $76e3: $60
    xor a                                         ; $76e4: $af
    rst $18                                       ; $76e5: $df
    ret nc                                        ; $76e6: $d0

    cp a                                          ; $76e7: $bf
    ldh [$bf], a                                  ; $76e8: $e0 $bf
    ldh [$bf], a                                  ; $76ea: $e0 $bf
    ldh [$bf], a                                  ; $76ec: $e0 $bf
    pop hl                                        ; $76ee: $e1
    cp a                                          ; $76ef: $bf
    ld [c], a                                     ; $76f0: $e2
    cp a                                          ; $76f1: $bf
    db $e3                                        ; $76f2: $e3
    cp [hl]                                       ; $76f3: $be
    push hl                                       ; $76f4: $e5
    cp [hl]                                       ; $76f5: $be
    rst $20                                       ; $76f6: $e7
    cp h                                          ; $76f7: $bc
    rst $20                                       ; $76f8: $e7
    cp h                                          ; $76f9: $bc
    push hl                                       ; $76fa: $e5
    cp [hl]                                       ; $76fb: $be
    db $e3                                        ; $76fc: $e3
    cp [hl]                                       ; $76fd: $be
    ld [c], a                                     ; $76fe: $e2
    cp a                                          ; $76ff: $bf
    pop hl                                        ; $7700: $e1
    cp a                                          ; $7701: $bf
    ld [c], a                                     ; $7702: $e2
    cp l                                          ; $7703: $bd
    ldh [$bf], a                                  ; $7704: $e0 $bf
    ldh [$bf], a                                  ; $7706: $e0 $bf
    ret nc                                        ; $7708: $d0

    cp a                                          ; $7709: $bf
    xor a                                         ; $770a: $af
    rst $18                                       ; $770b: $df
    ld e, a                                       ; $770c: $5f
    ld h, b                                       ; $770d: $60
    ccf                                           ; $770e: $3f
    ccf                                           ; $770f: $3f
    nop                                           ; $7710: $00
    nop                                           ; $7711: $00
    nop                                           ; $7712: $00
    nop                                           ; $7713: $00
    nop                                           ; $7714: $00
    nop                                           ; $7715: $00
    nop                                           ; $7716: $00
    nop                                           ; $7717: $00
    nop                                           ; $7718: $00
    nop                                           ; $7719: $00
    nop                                           ; $771a: $00
    nop                                           ; $771b: $00
    nop                                           ; $771c: $00
    nop                                           ; $771d: $00
    nop                                           ; $771e: $00
    nop                                           ; $771f: $00
    rst $38                                       ; $7720: $ff
    rst $38                                       ; $7721: $ff
    rst $38                                       ; $7722: $ff
    nop                                           ; $7723: $00
    rst $38                                       ; $7724: $ff
    rst $38                                       ; $7725: $ff
    nop                                           ; $7726: $00
    rst $38                                       ; $7727: $ff
    nop                                           ; $7728: $00
    rst $38                                       ; $7729: $ff
    inc a                                         ; $772a: $3c
    rst $38                                       ; $772b: $ff
    db $db                                        ; $772c: $db
    rst $20                                       ; $772d: $e7
    ld a, [hl]                                    ; $772e: $7e
    add c                                         ; $772f: $81
    rst $38                                       ; $7730: $ff
    nop                                           ; $7731: $00
    db $fd                                        ; $7732: $fd
    ld [bc], a                                    ; $7733: $02
    rst $38                                       ; $7734: $ff
    nop                                           ; $7735: $00
    ld a, [$ff05]                                 ; $7736: $fa $05 $ff
    nop                                           ; $7739: $00
    call nc, $fe2b                                ; $773a: $d4 $2b $fe
    ld bc, $57a8                                  ; $773d: $01 $a8 $57
    nop                                           ; $7740: $00
    rst $38                                       ; $7741: $ff
    jp Jump_000_3fff                              ; $7742: $c3 $ff $3f


    rst $38                                       ; $7745: $ff
    nop                                           ; $7746: $00
    rst $38                                       ; $7747: $ff
    nop                                           ; $7748: $00
    rst $38                                       ; $7749: $ff
    rst $38                                       ; $774a: $ff
    rst $38                                       ; $774b: $ff
    rst $38                                       ; $774c: $ff
    nop                                           ; $774d: $00
    rst $38                                       ; $774e: $ff
    rst $38                                       ; $774f: $ff
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
    nop                                           ; $775e: $00
    nop                                           ; $775f: $00
    db $fc                                        ; $7760: $fc
    db $fc                                        ; $7761: $fc
    ld a, [$f506]                                 ; $7762: $fa $06 $f5
    ei                                            ; $7765: $fb
    dec bc                                        ; $7766: $0b
    db $fd                                        ; $7767: $fd
    rlca                                          ; $7768: $07
    db $fd                                        ; $7769: $fd
    rlca                                          ; $776a: $07
    db $fd                                        ; $776b: $fd
    rlca                                          ; $776c: $07
    db $fd                                        ; $776d: $fd
    add a                                         ; $776e: $87
    db $fd                                        ; $776f: $fd
    ld b, a                                       ; $7770: $47
    db $fd                                        ; $7771: $fd
    ld b, a                                       ; $7772: $47
    db $fd                                        ; $7773: $fd
    daa                                           ; $7774: $27
    db $fd                                        ; $7775: $fd
    daa                                           ; $7776: $27
    db $fd                                        ; $7777: $fd
    daa                                           ; $7778: $27
    db $fd                                        ; $7779: $fd
    daa                                           ; $777a: $27
    db $fd                                        ; $777b: $fd
    ld b, a                                       ; $777c: $47
    db $fd                                        ; $777d: $fd
    ld b, a                                       ; $777e: $47
    db $fd                                        ; $777f: $fd
    add a                                         ; $7780: $87
    db $fd                                        ; $7781: $fd
    rst $00                                       ; $7782: $c7
    db $fd                                        ; $7783: $fd
    rlca                                          ; $7784: $07
    db $fd                                        ; $7785: $fd
    rlca                                          ; $7786: $07
    db $fd                                        ; $7787: $fd
    dec bc                                        ; $7788: $0b
    db $fd                                        ; $7789: $fd
    push af                                       ; $778a: $f5
    ei                                            ; $778b: $fb
    ld a, [$fc06]                                 ; $778c: $fa $06 $fc
    db $fc                                        ; $778f: $fc
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
    nop                                           ; $779a: $00
    nop                                           ; $779b: $00
    nop                                           ; $779c: $00
    nop                                           ; $779d: $00
    nop                                           ; $779e: $00
    nop                                           ; $779f: $00
    ccf                                           ; $77a0: $3f
    ccf                                           ; $77a1: $3f
    ld e, a                                       ; $77a2: $5f
    ld h, b                                       ; $77a3: $60
    xor a                                         ; $77a4: $af
    rst $18                                       ; $77a5: $df
    jp nc, $fdbf                                  ; $77a6: $d2 $bf $fd

    cp a                                          ; $77a9: $bf
    db $eb                                        ; $77aa: $eb
    cp a                                          ; $77ab: $bf
    db $e4                                        ; $77ac: $e4
    cp a                                          ; $77ad: $bf
    rst $30                                       ; $77ae: $f7
    cp a                                          ; $77af: $bf
    ld [$ebbf], a                                 ; $77b0: $ea $bf $eb
    cp [hl]                                       ; $77b3: $be
    push af                                       ; $77b4: $f5
    cp [hl]                                       ; $77b5: $be
    rst $28                                       ; $77b6: $ef
    cp h                                          ; $77b7: $bc
    rst $30                                       ; $77b8: $f7
    cp h                                          ; $77b9: $bc
    xor $bd                                       ; $77ba: $ee $bd
    push hl                                       ; $77bc: $e5
    cp a                                          ; $77bd: $bf
    xor $bf                                       ; $77be: $ee $bf
    ld a, [c]                                     ; $77c0: $f2
    cp a                                          ; $77c1: $bf
    db $ed                                        ; $77c2: $ed
    cp a                                          ; $77c3: $bf
    push af                                       ; $77c4: $f5
    cp a                                          ; $77c5: $bf
    db $eb                                        ; $77c6: $eb
    cp a                                          ; $77c7: $bf
    jp nc, $afbf                                  ; $77c8: $d2 $bf $af

    rst $18                                       ; $77cb: $df
    ld e, a                                       ; $77cc: $5f
    ld h, b                                       ; $77cd: $60
    ccf                                           ; $77ce: $3f
    ccf                                           ; $77cf: $3f
    nop                                           ; $77d0: $00
    nop                                           ; $77d1: $00
    nop                                           ; $77d2: $00
    nop                                           ; $77d3: $00
    nop                                           ; $77d4: $00
    nop                                           ; $77d5: $00
    nop                                           ; $77d6: $00
    nop                                           ; $77d7: $00
    nop                                           ; $77d8: $00
    nop                                           ; $77d9: $00
    nop                                           ; $77da: $00
    nop                                           ; $77db: $00
    nop                                           ; $77dc: $00
    nop                                           ; $77dd: $00
    nop                                           ; $77de: $00
    nop                                           ; $77df: $00
    rst $38                                       ; $77e0: $ff
    rst $38                                       ; $77e1: $ff
    rst $38                                       ; $77e2: $ff
    nop                                           ; $77e3: $00
    rst $38                                       ; $77e4: $ff
    rst $38                                       ; $77e5: $ff
    and d                                         ; $77e6: $a2
    rst $38                                       ; $77e7: $ff
    ld d, l                                       ; $77e8: $55
    rst $38                                       ; $77e9: $ff
    dec a                                         ; $77ea: $3d
    rst $38                                       ; $77eb: $ff
    db $db                                        ; $77ec: $db
    rst $20                                       ; $77ed: $e7
    ld a, [hl]                                    ; $77ee: $7e
    add c                                         ; $77ef: $81
    rst $38                                       ; $77f0: $ff
    nop                                           ; $77f1: $00
    db $fd                                        ; $77f2: $fd
    ld [bc], a                                    ; $77f3: $02
    rst $38                                       ; $77f4: $ff
    nop                                           ; $77f5: $00
    ld a, [$ff05]                                 ; $77f6: $fa $05 $ff
    nop                                           ; $77f9: $00
    push de                                       ; $77fa: $d5
    dec hl                                        ; $77fb: $2b
    ld a, c                                       ; $77fc: $79
    add a                                         ; $77fd: $87
    and d                                         ; $77fe: $a2
    rst $18                                       ; $77ff: $df
    sbc [hl]                                      ; $7800: $9e
    rst $38                                       ; $7801: $ff
    ld h, l                                       ; $7802: $65
    rst $38                                       ; $7803: $ff
    ld e, c                                       ; $7804: $59
    rst $38                                       ; $7805: $ff
    and [hl]                                      ; $7806: $a6
    rst $38                                       ; $7807: $ff
    ld c, d                                       ; $7808: $4a
    rst $38                                       ; $7809: $ff
    rst $38                                       ; $780a: $ff
    rst $38                                       ; $780b: $ff
    rst $38                                       ; $780c: $ff
    nop                                           ; $780d: $00
    rst $38                                       ; $780e: $ff
    rst $38                                       ; $780f: $ff
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
    nop                                           ; $781a: $00
    nop                                           ; $781b: $00
    nop                                           ; $781c: $00
    nop                                           ; $781d: $00
    nop                                           ; $781e: $00
    nop                                           ; $781f: $00
    db $fc                                        ; $7820: $fc
    db $fc                                        ; $7821: $fc
    ld a, [$f506]                                 ; $7822: $fa $06 $f5
    ei                                            ; $7825: $fb
    xor e                                         ; $7826: $ab
    db $fd                                        ; $7827: $fd
    scf                                           ; $7828: $37
    db $fd                                        ; $7829: $fd
    ld c, a                                       ; $782a: $4f
    db $fd                                        ; $782b: $fd
    cpl                                           ; $782c: $2f
    db $fd                                        ; $782d: $fd
    rst $10                                       ; $782e: $d7
    db $fd                                        ; $782f: $fd
    ld d, a                                       ; $7830: $57
    db $fd                                        ; $7831: $fd
    ld l, a                                       ; $7832: $6f
    db $fd                                        ; $7833: $fd
    scf                                           ; $7834: $37
    db $fd                                        ; $7835: $fd
    cpl                                           ; $7836: $2f
    db $fd                                        ; $7837: $fd
    cp a                                          ; $7838: $bf
    db $fd                                        ; $7839: $fd
    ld h, a                                       ; $783a: $67
    db $fd                                        ; $783b: $fd
    ld c, a                                       ; $783c: $4f
    db $fd                                        ; $783d: $fd
    or a                                          ; $783e: $b7
    db $fd                                        ; $783f: $fd
    and a                                         ; $7840: $a7
    db $fd                                        ; $7841: $fd
    ld e, a                                       ; $7842: $5f
    db $fd                                        ; $7843: $fd
    ld l, a                                       ; $7844: $6f
    db $fd                                        ; $7845: $fd
    sub a                                         ; $7846: $97
    db $fd                                        ; $7847: $fd
    ld l, e                                       ; $7848: $6b
    db $fd                                        ; $7849: $fd
    push af                                       ; $784a: $f5
    ei                                            ; $784b: $fb
    ld a, [$fc06]                                 ; $784c: $fa $06 $fc
    db $fc                                        ; $784f: $fc
    nop                                           ; $7850: $00
    nop                                           ; $7851: $00
    nop                                           ; $7852: $00
    nop                                           ; $7853: $00
    nop                                           ; $7854: $00
    nop                                           ; $7855: $00
    nop                                           ; $7856: $00
    nop                                           ; $7857: $00
    nop                                           ; $7858: $00
    nop                                           ; $7859: $00
    nop                                           ; $785a: $00
    nop                                           ; $785b: $00
    nop                                           ; $785c: $00
    nop                                           ; $785d: $00
    nop                                           ; $785e: $00
    nop                                           ; $785f: $00
    ccf                                           ; $7860: $3f
    ccf                                           ; $7861: $3f
    ld e, a                                       ; $7862: $5f
    ld h, b                                       ; $7863: $60
    xor a                                         ; $7864: $af
    rst $18                                       ; $7865: $df
    jp nc, $fdbf                                  ; $7866: $d2 $bf $fd

    cp a                                          ; $7869: $bf
    db $eb                                        ; $786a: $eb
    cp a                                          ; $786b: $bf
    db $e4                                        ; $786c: $e4
    cp a                                          ; $786d: $bf
    push af                                       ; $786e: $f5
    cp a                                          ; $786f: $bf
    ld [$edbf], a                                 ; $7870: $ea $bf $ed
    cp a                                          ; $7873: $bf
    push af                                       ; $7874: $f5
    cp a                                          ; $7875: $bf
    ld [$f7bf], a                                 ; $7876: $ea $bf $f7
    cp [hl]                                       ; $7879: $be
    db $ec                                        ; $787a: $ec
    cp a                                          ; $787b: $bf
    rst $20                                       ; $787c: $e7
    cp a                                          ; $787d: $bf
    xor $bf                                       ; $787e: $ee $bf
    ld a, [c]                                     ; $7880: $f2
    cp a                                          ; $7881: $bf
    db $ed                                        ; $7882: $ed
    cp a                                          ; $7883: $bf
    push af                                       ; $7884: $f5
    cp a                                          ; $7885: $bf
    db $eb                                        ; $7886: $eb
    cp a                                          ; $7887: $bf
    jp nc, $afbf                                  ; $7888: $d2 $bf $af

    rst $18                                       ; $788b: $df
    ld e, a                                       ; $788c: $5f
    ld h, b                                       ; $788d: $60
    ccf                                           ; $788e: $3f
    ccf                                           ; $788f: $3f
    nop                                           ; $7890: $00
    nop                                           ; $7891: $00
    nop                                           ; $7892: $00
    nop                                           ; $7893: $00
    nop                                           ; $7894: $00
    nop                                           ; $7895: $00
    nop                                           ; $7896: $00
    nop                                           ; $7897: $00
    nop                                           ; $7898: $00
    nop                                           ; $7899: $00
    nop                                           ; $789a: $00
    nop                                           ; $789b: $00
    nop                                           ; $789c: $00
    nop                                           ; $789d: $00
    nop                                           ; $789e: $00
    nop                                           ; $789f: $00
    rst $38                                       ; $78a0: $ff
    rst $38                                       ; $78a1: $ff
    rst $38                                       ; $78a2: $ff
    nop                                           ; $78a3: $00
    rst $38                                       ; $78a4: $ff
    rst $38                                       ; $78a5: $ff
    and d                                         ; $78a6: $a2
    rst $38                                       ; $78a7: $ff
    ld d, l                                       ; $78a8: $55

jr_04f_78a9:
    rst $38                                       ; $78a9: $ff
    ld e, l                                       ; $78aa: $5d
    rst $38                                       ; $78ab: $ff
    xor e                                         ; $78ac: $ab
    rst $38                                       ; $78ad: $ff
    ld d, d                                       ; $78ae: $52
    rst $38                                       ; $78af: $ff
    cp l                                          ; $78b0: $bd
    rst $38                                       ; $78b1: $ff
    db $db                                        ; $78b2: $db
    rst $20                                       ; $78b3: $e7
    ld a, [hl]                                    ; $78b4: $7e
    add c                                         ; $78b5: $81
    rst $38                                       ; $78b6: $ff
    nop                                           ; $78b7: $00
    rst $10                                       ; $78b8: $d7
    jr c, jr_04f_78a9                             ; $78b9: $38 $ee

    dec sp                                        ; $78bb: $3b
    push de                                       ; $78bc: $d5
    ld a, a                                       ; $78bd: $7f
    cp e                                          ; $78be: $bb
    xor $be                                       ; $78bf: $ee $be
    rst $38                                       ; $78c1: $ff
    ld h, l                                       ; $78c2: $65
    rst $38                                       ; $78c3: $ff
    ld e, c                                       ; $78c4: $59
    rst $38                                       ; $78c5: $ff
    and [hl]                                      ; $78c6: $a6
    rst $38                                       ; $78c7: $ff
    ld c, d                                       ; $78c8: $4a
    rst $38                                       ; $78c9: $ff
    rst $38                                       ; $78ca: $ff
    rst $38                                       ; $78cb: $ff
    rst $38                                       ; $78cc: $ff
    nop                                           ; $78cd: $00
    rst $38                                       ; $78ce: $ff
    rst $38                                       ; $78cf: $ff
    nop                                           ; $78d0: $00
    nop                                           ; $78d1: $00
    nop                                           ; $78d2: $00
    nop                                           ; $78d3: $00
    nop                                           ; $78d4: $00
    nop                                           ; $78d5: $00
    nop                                           ; $78d6: $00
    nop                                           ; $78d7: $00
    nop                                           ; $78d8: $00
    nop                                           ; $78d9: $00
    nop                                           ; $78da: $00
    nop                                           ; $78db: $00
    nop                                           ; $78dc: $00
    nop                                           ; $78dd: $00
    nop                                           ; $78de: $00
    nop                                           ; $78df: $00
    db $fc                                        ; $78e0: $fc
    db $fc                                        ; $78e1: $fc
    ld a, [$f506]                                 ; $78e2: $fa $06 $f5
    ei                                            ; $78e5: $fb
    xor e                                         ; $78e6: $ab
    db $fd                                        ; $78e7: $fd
    scf                                           ; $78e8: $37
    db $fd                                        ; $78e9: $fd
    ld c, a                                       ; $78ea: $4f
    db $fd                                        ; $78eb: $fd
    cpl                                           ; $78ec: $2f
    db $fd                                        ; $78ed: $fd
    rst $10                                       ; $78ee: $d7
    db $fd                                        ; $78ef: $fd
    ld d, a                                       ; $78f0: $57
    db $fd                                        ; $78f1: $fd
    cpl                                           ; $78f2: $2f
    db $fd                                        ; $78f3: $fd
    or a                                          ; $78f4: $b7
    db $fd                                        ; $78f5: $fd
    ld l, a                                       ; $78f6: $6f
    db $fd                                        ; $78f7: $fd
    cp a                                          ; $78f8: $bf
    db $fd                                        ; $78f9: $fd
    rst $20                                       ; $78fa: $e7
    db $fd                                        ; $78fb: $fd
    ld c, a                                       ; $78fc: $4f
    db $fd                                        ; $78fd: $fd
    or a                                          ; $78fe: $b7
    db $fd                                        ; $78ff: $fd
    and a                                         ; $7900: $a7
    db $fd                                        ; $7901: $fd
    ld e, a                                       ; $7902: $5f
    db $fd                                        ; $7903: $fd
    ld l, a                                       ; $7904: $6f
    db $fd                                        ; $7905: $fd
    sub a                                         ; $7906: $97
    db $fd                                        ; $7907: $fd
    ld l, e                                       ; $7908: $6b
    db $fd                                        ; $7909: $fd
    push af                                       ; $790a: $f5
    ei                                            ; $790b: $fb
    ld a, [$fc06]                                 ; $790c: $fa $06 $fc
    db $fc                                        ; $790f: $fc
    nop                                           ; $7910: $00
    nop                                           ; $7911: $00
    nop                                           ; $7912: $00
    nop                                           ; $7913: $00
    nop                                           ; $7914: $00
    nop                                           ; $7915: $00
    nop                                           ; $7916: $00
    nop                                           ; $7917: $00
    nop                                           ; $7918: $00
    nop                                           ; $7919: $00
    nop                                           ; $791a: $00
    nop                                           ; $791b: $00
    nop                                           ; $791c: $00
    nop                                           ; $791d: $00
    nop                                           ; $791e: $00
    nop                                           ; $791f: $00
    ccf                                           ; $7920: $3f
    ccf                                           ; $7921: $3f
    ld e, a                                       ; $7922: $5f
    ld h, b                                       ; $7923: $60
    xor a                                         ; $7924: $af
    rst $18                                       ; $7925: $df
    jp nc, $fdbf                                  ; $7926: $d2 $bf $fd

    cp a                                          ; $7929: $bf
    db $eb                                        ; $792a: $eb
    cp a                                          ; $792b: $bf
    db $e4                                        ; $792c: $e4
    cp a                                          ; $792d: $bf
    push af                                       ; $792e: $f5
    cp a                                          ; $792f: $bf
    ld [$edbf], a                                 ; $7930: $ea $bf $ed
    cp a                                          ; $7933: $bf
    push af                                       ; $7934: $f5
    cp a                                          ; $7935: $bf
    ld [$f7bf], a                                 ; $7936: $ea $bf $f7
    cp a                                          ; $7939: $bf
    db $ed                                        ; $793a: $ed
    cp a                                          ; $793b: $bf
    and $bf                                       ; $793c: $e6 $bf
    xor $bf                                       ; $793e: $ee $bf
    ld a, [c]                                     ; $7940: $f2
    cp a                                          ; $7941: $bf
    db $ed                                        ; $7942: $ed
    cp a                                          ; $7943: $bf
    push af                                       ; $7944: $f5
    cp a                                          ; $7945: $bf
    db $eb                                        ; $7946: $eb
    cp a                                          ; $7947: $bf
    jp nc, $afbf                                  ; $7948: $d2 $bf $af

    rst $18                                       ; $794b: $df
    ld e, a                                       ; $794c: $5f
    ld h, b                                       ; $794d: $60
    ccf                                           ; $794e: $3f
    ccf                                           ; $794f: $3f
    nop                                           ; $7950: $00
    nop                                           ; $7951: $00
    nop                                           ; $7952: $00
    nop                                           ; $7953: $00
    nop                                           ; $7954: $00
    nop                                           ; $7955: $00
    nop                                           ; $7956: $00
    nop                                           ; $7957: $00
    nop                                           ; $7958: $00
    nop                                           ; $7959: $00
    nop                                           ; $795a: $00
    nop                                           ; $795b: $00
    nop                                           ; $795c: $00
    nop                                           ; $795d: $00
    nop                                           ; $795e: $00
    nop                                           ; $795f: $00
    rst $38                                       ; $7960: $ff
    rst $38                                       ; $7961: $ff
    rst $38                                       ; $7962: $ff
    nop                                           ; $7963: $00
    rst $38                                       ; $7964: $ff
    rst $38                                       ; $7965: $ff
    and d                                         ; $7966: $a2
    rst $38                                       ; $7967: $ff
    ld d, l                                       ; $7968: $55
    rst $38                                       ; $7969: $ff
    ld e, l                                       ; $796a: $5d
    rst $38                                       ; $796b: $ff
    xor e                                         ; $796c: $ab
    rst $38                                       ; $796d: $ff
    ld d, d                                       ; $796e: $52
    rst $38                                       ; $796f: $ff
    cp l                                          ; $7970: $bd
    rst $38                                       ; $7971: $ff
    db $eb                                        ; $7972: $eb
    rst $38                                       ; $7973: $ff
    ld l, $f5                                     ; $7974: $2e $f5
    push de                                       ; $7976: $d5
    cp $fb                                        ; $7977: $fe $fb
    ld l, [hl]                                    ; $7979: $6e
    ld l, d                                       ; $797a: $6a
    rst $38                                       ; $797b: $ff
    rst $10                                       ; $797c: $d7
    db $fd                                        ; $797d: $fd
    cp e                                          ; $797e: $bb
    rst $28                                       ; $797f: $ef
    cp [hl]                                       ; $7980: $be
    rst $38                                       ; $7981: $ff
    ld h, l                                       ; $7982: $65
    rst $38                                       ; $7983: $ff
    ld e, c                                       ; $7984: $59
    rst $38                                       ; $7985: $ff
    and [hl]                                      ; $7986: $a6
    rst $38                                       ; $7987: $ff
    ld c, d                                       ; $7988: $4a
    rst $38                                       ; $7989: $ff
    rst $38                                       ; $798a: $ff
    rst $38                                       ; $798b: $ff
    rst $38                                       ; $798c: $ff
    nop                                           ; $798d: $00
    rst $38                                       ; $798e: $ff
    rst $38                                       ; $798f: $ff
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
    nop                                           ; $799a: $00
    nop                                           ; $799b: $00
    nop                                           ; $799c: $00
    nop                                           ; $799d: $00
    nop                                           ; $799e: $00
    nop                                           ; $799f: $00
    db $fc                                        ; $79a0: $fc
    db $fc                                        ; $79a1: $fc
    ld a, [$f506]                                 ; $79a2: $fa $06 $f5
    ei                                            ; $79a5: $fb
    xor e                                         ; $79a6: $ab
    db $fd                                        ; $79a7: $fd
    scf                                           ; $79a8: $37
    db $fd                                        ; $79a9: $fd
    ld c, a                                       ; $79aa: $4f
    db $fd                                        ; $79ab: $fd
    cpl                                           ; $79ac: $2f
    db $fd                                        ; $79ad: $fd
    rst $10                                       ; $79ae: $d7
    db $fd                                        ; $79af: $fd
    ld d, a                                       ; $79b0: $57
    db $fd                                        ; $79b1: $fd
    cpl                                           ; $79b2: $2f
    db $fd                                        ; $79b3: $fd
    or a                                          ; $79b4: $b7
    db $fd                                        ; $79b5: $fd
    ld l, a                                       ; $79b6: $6f
    db $fd                                        ; $79b7: $fd
    cp a                                          ; $79b8: $bf
    db $fd                                        ; $79b9: $fd
    rst $20                                       ; $79ba: $e7
    db $fd                                        ; $79bb: $fd
    ld c, a                                       ; $79bc: $4f
    db $fd                                        ; $79bd: $fd
    or a                                          ; $79be: $b7
    db $fd                                        ; $79bf: $fd
    and a                                         ; $79c0: $a7
    db $fd                                        ; $79c1: $fd
    ld e, a                                       ; $79c2: $5f
    db $fd                                        ; $79c3: $fd
    ld l, a                                       ; $79c4: $6f
    db $fd                                        ; $79c5: $fd
    sub a                                         ; $79c6: $97
    db $fd                                        ; $79c7: $fd
    ld l, e                                       ; $79c8: $6b
    db $fd                                        ; $79c9: $fd
    push af                                       ; $79ca: $f5
    ei                                            ; $79cb: $fb
    ld a, [$fc06]                                 ; $79cc: $fa $06 $fc
    db $fc                                        ; $79cf: $fc
    nop                                           ; $79d0: $00
    nop                                           ; $79d1: $00
    nop                                           ; $79d2: $00
    nop                                           ; $79d3: $00
    nop                                           ; $79d4: $00
    nop                                           ; $79d5: $00
    nop                                           ; $79d6: $00
    nop                                           ; $79d7: $00
    nop                                           ; $79d8: $00
    nop                                           ; $79d9: $00
    nop                                           ; $79da: $00
    nop                                           ; $79db: $00
    nop                                           ; $79dc: $00
    nop                                           ; $79dd: $00
    nop                                           ; $79de: $00
    nop                                           ; $79df: $00
    ccf                                           ; $79e0: $3f
    ccf                                           ; $79e1: $3f
    ld e, a                                       ; $79e2: $5f
    ld h, b                                       ; $79e3: $60
    xor a                                         ; $79e4: $af
    rst $18                                       ; $79e5: $df
    ret nc                                        ; $79e6: $d0

    cp a                                          ; $79e7: $bf
    ldh [$bf], a                                  ; $79e8: $e0 $bf
    ldh [$bf], a                                  ; $79ea: $e0 $bf
    ldh [$bf], a                                  ; $79ec: $e0 $bf
    ldh [$bf], a                                  ; $79ee: $e0 $bf
    pop hl                                        ; $79f0: $e1
    cp a                                          ; $79f1: $bf
    ld [c], a                                     ; $79f2: $e2
    cp a                                          ; $79f3: $bf
    db $e3                                        ; $79f4: $e3
    cp [hl]                                       ; $79f5: $be
    push hl                                       ; $79f6: $e5
    cp [hl]                                       ; $79f7: $be
    rst $20                                       ; $79f8: $e7
    cp h                                          ; $79f9: $bc
    rst $20                                       ; $79fa: $e7
    cp h                                          ; $79fb: $bc
    push hl                                       ; $79fc: $e5
    cp [hl]                                       ; $79fd: $be
    db $e3                                        ; $79fe: $e3
    cp [hl]                                       ; $79ff: $be
    and $bf                                       ; $7a00: $e6 $bf
    push hl                                       ; $7a02: $e5
    cp e                                          ; $7a03: $bb
    ld [c], a                                     ; $7a04: $e2
    cp l                                          ; $7a05: $bd
    ldh [$bf], a                                  ; $7a06: $e0 $bf
    ret nc                                        ; $7a08: $d0

    cp a                                          ; $7a09: $bf
    xor a                                         ; $7a0a: $af
    rst $18                                       ; $7a0b: $df
    ld e, a                                       ; $7a0c: $5f
    ld h, b                                       ; $7a0d: $60
    ccf                                           ; $7a0e: $3f
    ccf                                           ; $7a0f: $3f
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
    nop                                           ; $7a1a: $00
    nop                                           ; $7a1b: $00
    nop                                           ; $7a1c: $00
    nop                                           ; $7a1d: $00
    nop                                           ; $7a1e: $00
    nop                                           ; $7a1f: $00
    rst $38                                       ; $7a20: $ff
    rst $38                                       ; $7a21: $ff
    rst $38                                       ; $7a22: $ff
    nop                                           ; $7a23: $00
    rst $38                                       ; $7a24: $ff
    rst $38                                       ; $7a25: $ff
    nop                                           ; $7a26: $00
    rst $38                                       ; $7a27: $ff
    nop                                           ; $7a28: $00
    rst $38                                       ; $7a29: $ff
    nop                                           ; $7a2a: $00
    rst $38                                       ; $7a2b: $ff
    inc a                                         ; $7a2c: $3c
    rst $38                                       ; $7a2d: $ff
    db $db                                        ; $7a2e: $db
    rst $20                                       ; $7a2f: $e7
    ld a, [hl]                                    ; $7a30: $7e
    add c                                         ; $7a31: $81
    rst $38                                       ; $7a32: $ff
    nop                                           ; $7a33: $00
    db $fd                                        ; $7a34: $fd
    ld [bc], a                                    ; $7a35: $02
    rst $38                                       ; $7a36: $ff
    nop                                           ; $7a37: $00
    ld a, [$ff05]                                 ; $7a38: $fa $05 $ff
    nop                                           ; $7a3b: $00
    call nc, $fe2b                                ; $7a3c: $d4 $2b $fe
    ld bc, $57aa                                  ; $7a3f: $01 $aa $57
    and l                                         ; $7a42: $a5
    rst $38                                       ; $7a43: $ff
    ld e, b                                       ; $7a44: $58
    rst $38                                       ; $7a45: $ff
    nop                                           ; $7a46: $00
    rst $38                                       ; $7a47: $ff
    nop                                           ; $7a48: $00
    rst $38                                       ; $7a49: $ff
    rst $38                                       ; $7a4a: $ff
    rst $38                                       ; $7a4b: $ff
    rst $38                                       ; $7a4c: $ff
    nop                                           ; $7a4d: $00
    rst $38                                       ; $7a4e: $ff
    rst $38                                       ; $7a4f: $ff
    nop                                           ; $7a50: $00
    nop                                           ; $7a51: $00
    nop                                           ; $7a52: $00
    nop                                           ; $7a53: $00
    nop                                           ; $7a54: $00
    nop                                           ; $7a55: $00
    nop                                           ; $7a56: $00
    nop                                           ; $7a57: $00
    nop                                           ; $7a58: $00
    nop                                           ; $7a59: $00
    nop                                           ; $7a5a: $00
    nop                                           ; $7a5b: $00
    nop                                           ; $7a5c: $00
    nop                                           ; $7a5d: $00
    nop                                           ; $7a5e: $00
    nop                                           ; $7a5f: $00
    db $fc                                        ; $7a60: $fc
    db $fc                                        ; $7a61: $fc
    ld a, [$f506]                                 ; $7a62: $fa $06 $f5
    ei                                            ; $7a65: $fb
    dec bc                                        ; $7a66: $0b
    db $fd                                        ; $7a67: $fd
    rlca                                          ; $7a68: $07
    db $fd                                        ; $7a69: $fd
    rlca                                          ; $7a6a: $07
    db $fd                                        ; $7a6b: $fd
    rlca                                          ; $7a6c: $07
    db $fd                                        ; $7a6d: $fd
    rlca                                          ; $7a6e: $07
    db $fd                                        ; $7a6f: $fd
    add a                                         ; $7a70: $87
    db $fd                                        ; $7a71: $fd
    ld b, a                                       ; $7a72: $47
    db $fd                                        ; $7a73: $fd
    ld b, a                                       ; $7a74: $47
    db $fd                                        ; $7a75: $fd
    daa                                           ; $7a76: $27
    db $fd                                        ; $7a77: $fd
    daa                                           ; $7a78: $27
    db $fd                                        ; $7a79: $fd
    daa                                           ; $7a7a: $27
    db $fd                                        ; $7a7b: $fd
    daa                                           ; $7a7c: $27
    db $fd                                        ; $7a7d: $fd
    ld b, a                                       ; $7a7e: $47
    db $fd                                        ; $7a7f: $fd
    ld h, a                                       ; $7a80: $67
    db $fd                                        ; $7a81: $fd
    rst $00                                       ; $7a82: $c7
    db $fd                                        ; $7a83: $fd
    add a                                         ; $7a84: $87
    ld a, l                                       ; $7a85: $7d
    rlca                                          ; $7a86: $07
    db $fd                                        ; $7a87: $fd
    dec bc                                        ; $7a88: $0b
    db $fd                                        ; $7a89: $fd
    push af                                       ; $7a8a: $f5
    ei                                            ; $7a8b: $fb
    ld a, [$fc06]                                 ; $7a8c: $fa $06 $fc
    db $fc                                        ; $7a8f: $fc
    nop                                           ; $7a90: $00
    nop                                           ; $7a91: $00
    nop                                           ; $7a92: $00
    nop                                           ; $7a93: $00
    nop                                           ; $7a94: $00
    nop                                           ; $7a95: $00
    nop                                           ; $7a96: $00
    nop                                           ; $7a97: $00
    nop                                           ; $7a98: $00
    nop                                           ; $7a99: $00
    nop                                           ; $7a9a: $00
    nop                                           ; $7a9b: $00
    nop                                           ; $7a9c: $00
    nop                                           ; $7a9d: $00
    nop                                           ; $7a9e: $00
    nop                                           ; $7a9f: $00
    ccf                                           ; $7aa0: $3f
    ccf                                           ; $7aa1: $3f
    ld e, a                                       ; $7aa2: $5f
    ld h, b                                       ; $7aa3: $60
    xor a                                         ; $7aa4: $af
    rst $18                                       ; $7aa5: $df
    ret nc                                        ; $7aa6: $d0

    cp a                                          ; $7aa7: $bf
    ldh [$bf], a                                  ; $7aa8: $e0 $bf
    ldh [$bf], a                                  ; $7aaa: $e0 $bf
    pop hl                                        ; $7aac: $e1
    cp a                                          ; $7aad: $bf
    ld [c], a                                     ; $7aae: $e2
    cp a                                          ; $7aaf: $bf
    db $e3                                        ; $7ab0: $e3
    cp [hl]                                       ; $7ab1: $be
    push hl                                       ; $7ab2: $e5
    cp [hl]                                       ; $7ab3: $be
    rst $28                                       ; $7ab4: $ef
    cp h                                          ; $7ab5: $bc
    rst $20                                       ; $7ab6: $e7
    cp h                                          ; $7ab7: $bc
    db $ed                                        ; $7ab8: $ed
    cp [hl]                                       ; $7ab9: $be
    rst $28                                       ; $7aba: $ef
    cp [hl]                                       ; $7abb: $be
    ld [$f7bf], a                                 ; $7abc: $ea $bf $f7
    cp a                                          ; $7abf: $bf
    rst $30                                       ; $7ac0: $f7
    cp a                                          ; $7ac1: $bf
    push hl                                       ; $7ac2: $e5
    cp a                                          ; $7ac3: $bf
    db $e3                                        ; $7ac4: $e3
    cp a                                          ; $7ac5: $bf
    pop hl                                        ; $7ac6: $e1
    cp a                                          ; $7ac7: $bf
    ret nc                                        ; $7ac8: $d0

    cp a                                          ; $7ac9: $bf
    xor a                                         ; $7aca: $af
    rst $18                                       ; $7acb: $df
    ld e, a                                       ; $7acc: $5f
    ld h, b                                       ; $7acd: $60
    ccf                                           ; $7ace: $3f
    ccf                                           ; $7acf: $3f
    nop                                           ; $7ad0: $00
    nop                                           ; $7ad1: $00
    nop                                           ; $7ad2: $00
    nop                                           ; $7ad3: $00
    nop                                           ; $7ad4: $00
    nop                                           ; $7ad5: $00
    nop                                           ; $7ad6: $00
    nop                                           ; $7ad7: $00
    nop                                           ; $7ad8: $00
    nop                                           ; $7ad9: $00
    nop                                           ; $7ada: $00
    nop                                           ; $7adb: $00
    nop                                           ; $7adc: $00
    nop                                           ; $7add: $00
    nop                                           ; $7ade: $00
    nop                                           ; $7adf: $00
    rst $38                                       ; $7ae0: $ff
    rst $38                                       ; $7ae1: $ff
    rst $38                                       ; $7ae2: $ff
    nop                                           ; $7ae3: $00
    rst $38                                       ; $7ae4: $ff
    rst $38                                       ; $7ae5: $ff
    nop                                           ; $7ae6: $00
    rst $38                                       ; $7ae7: $ff
    inc a                                         ; $7ae8: $3c
    rst $38                                       ; $7ae9: $ff
    db $db                                        ; $7aea: $db
    rst $20                                       ; $7aeb: $e7
    ld a, [hl]                                    ; $7aec: $7e
    add c                                         ; $7aed: $81
    rst $38                                       ; $7aee: $ff
    nop                                           ; $7aef: $00
    db $fd                                        ; $7af0: $fd
    ld [bc], a                                    ; $7af1: $02
    rst $38                                       ; $7af2: $ff
    nop                                           ; $7af3: $00
    ld a, [$ff05]                                 ; $7af4: $fa $05 $ff
    nop                                           ; $7af7: $00
    call nc, $fe2b                                ; $7af8: $d4 $2b $fe
    ld bc, $57a8                                  ; $7afb: $01 $a8 $57
    nop                                           ; $7afe: $00
    rst $38                                       ; $7aff: $ff
    jp $ffff                                      ; $7b00: $c3 $ff $ff


    rst $38                                       ; $7b03: $ff
    ld a, l                                       ; $7b04: $7d
    rst $38                                       ; $7b05: $ff
    db $dd                                        ; $7b06: $dd
    rst $38                                       ; $7b07: $ff
    ld c, d                                       ; $7b08: $4a
    rst $38                                       ; $7b09: $ff
    rst $38                                       ; $7b0a: $ff
    rst $38                                       ; $7b0b: $ff
    rst $38                                       ; $7b0c: $ff
    nop                                           ; $7b0d: $00
    rst $38                                       ; $7b0e: $ff
    rst $38                                       ; $7b0f: $ff
    nop                                           ; $7b10: $00
    nop                                           ; $7b11: $00
    nop                                           ; $7b12: $00
    nop                                           ; $7b13: $00
    nop                                           ; $7b14: $00
    nop                                           ; $7b15: $00
    nop                                           ; $7b16: $00
    nop                                           ; $7b17: $00
    nop                                           ; $7b18: $00
    nop                                           ; $7b19: $00
    nop                                           ; $7b1a: $00
    nop                                           ; $7b1b: $00
    nop                                           ; $7b1c: $00
    nop                                           ; $7b1d: $00
    nop                                           ; $7b1e: $00
    nop                                           ; $7b1f: $00
    db $fc                                        ; $7b20: $fc
    db $fc                                        ; $7b21: $fc
    ld a, [$f506]                                 ; $7b22: $fa $06 $f5
    ei                                            ; $7b25: $fb
    dec bc                                        ; $7b26: $0b
    db $fd                                        ; $7b27: $fd
    rlca                                          ; $7b28: $07
    db $fd                                        ; $7b29: $fd
    rlca                                          ; $7b2a: $07
    db $fd                                        ; $7b2b: $fd
    add a                                         ; $7b2c: $87
    db $fd                                        ; $7b2d: $fd
    ld b, a                                       ; $7b2e: $47
    db $fd                                        ; $7b2f: $fd
    ld b, a                                       ; $7b30: $47
    db $fd                                        ; $7b31: $fd
    daa                                           ; $7b32: $27
    db $fd                                        ; $7b33: $fd
    daa                                           ; $7b34: $27
    db $fd                                        ; $7b35: $fd
    scf                                           ; $7b36: $37
    db $fd                                        ; $7b37: $fd
    daa                                           ; $7b38: $27
    db $fd                                        ; $7b39: $fd
    ld [hl], a                                    ; $7b3a: $77
    db $fd                                        ; $7b3b: $fd
    ld d, a                                       ; $7b3c: $57
    db $fd                                        ; $7b3d: $fd
    rst $30                                       ; $7b3e: $f7
    db $fd                                        ; $7b3f: $fd
    and a                                         ; $7b40: $a7
    db $fd                                        ; $7b41: $fd
    or a                                          ; $7b42: $b7
    db $fd                                        ; $7b43: $fd
    ld d, a                                       ; $7b44: $57
    db $fd                                        ; $7b45: $fd
    rst $00                                       ; $7b46: $c7
    db $fd                                        ; $7b47: $fd
    adc e                                         ; $7b48: $8b
    db $fd                                        ; $7b49: $fd
    push af                                       ; $7b4a: $f5
    ei                                            ; $7b4b: $fb
    ld a, [$fc06]                                 ; $7b4c: $fa $06 $fc
    db $fc                                        ; $7b4f: $fc
    nop                                           ; $7b50: $00
    nop                                           ; $7b51: $00
    nop                                           ; $7b52: $00
    nop                                           ; $7b53: $00
    nop                                           ; $7b54: $00
    nop                                           ; $7b55: $00
    nop                                           ; $7b56: $00
    nop                                           ; $7b57: $00
    nop                                           ; $7b58: $00
    nop                                           ; $7b59: $00
    nop                                           ; $7b5a: $00
    nop                                           ; $7b5b: $00
    nop                                           ; $7b5c: $00
    nop                                           ; $7b5d: $00
    nop                                           ; $7b5e: $00
    nop                                           ; $7b5f: $00
    ccf                                           ; $7b60: $3f
    ccf                                           ; $7b61: $3f
    ld e, a                                       ; $7b62: $5f
    ld h, b                                       ; $7b63: $60
    xor a                                         ; $7b64: $af
    rst $18                                       ; $7b65: $df
    ret nc                                        ; $7b66: $d0

    cp a                                          ; $7b67: $bf
    ldh [$bf], a                                  ; $7b68: $e0 $bf
    ldh [$bf], a                                  ; $7b6a: $e0 $bf
    db $e4                                        ; $7b6c: $e4
    cp a                                          ; $7b6d: $bf
    pop hl                                        ; $7b6e: $e1
    cp a                                          ; $7b6f: $bf
    ld [c], a                                     ; $7b70: $e2
    cp a                                          ; $7b71: $bf
    db $e3                                        ; $7b72: $e3
    cp [hl]                                       ; $7b73: $be
    push hl                                       ; $7b74: $e5
    cp [hl]                                       ; $7b75: $be
    rst $30                                       ; $7b76: $f7
    cp h                                          ; $7b77: $bc
    rst $20                                       ; $7b78: $e7
    cp h                                          ; $7b79: $bc
    push hl                                       ; $7b7a: $e5
    cp [hl]                                       ; $7b7b: $be
    db $eb                                        ; $7b7c: $eb
    cp [hl]                                       ; $7b7d: $be
    ld [c], a                                     ; $7b7e: $e2
    cp a                                          ; $7b7f: $bf
    pop hl                                        ; $7b80: $e1
    cp a                                          ; $7b81: $bf
    add sp, -$41                                  ; $7b82: $e8 $bf
    push af                                       ; $7b84: $f5
    cp a                                          ; $7b85: $bf
    db $ec                                        ; $7b86: $ec
    cp a                                          ; $7b87: $bf
    ret nc                                        ; $7b88: $d0

    cp a                                          ; $7b89: $bf
    xor a                                         ; $7b8a: $af
    rst $18                                       ; $7b8b: $df
    ld e, a                                       ; $7b8c: $5f
    ld h, b                                       ; $7b8d: $60
    ccf                                           ; $7b8e: $3f
    ccf                                           ; $7b8f: $3f
    nop                                           ; $7b90: $00
    nop                                           ; $7b91: $00
    nop                                           ; $7b92: $00
    nop                                           ; $7b93: $00
    nop                                           ; $7b94: $00
    nop                                           ; $7b95: $00
    nop                                           ; $7b96: $00
    nop                                           ; $7b97: $00
    nop                                           ; $7b98: $00
    nop                                           ; $7b99: $00
    nop                                           ; $7b9a: $00
    nop                                           ; $7b9b: $00
    nop                                           ; $7b9c: $00
    nop                                           ; $7b9d: $00
    nop                                           ; $7b9e: $00
    nop                                           ; $7b9f: $00
    rst $38                                       ; $7ba0: $ff
    rst $38                                       ; $7ba1: $ff
    rst $38                                       ; $7ba2: $ff
    nop                                           ; $7ba3: $00
    rst $38                                       ; $7ba4: $ff
    rst $38                                       ; $7ba5: $ff
    nop                                           ; $7ba6: $00
    rst $38                                       ; $7ba7: $ff
    nop                                           ; $7ba8: $00
    rst $38                                       ; $7ba9: $ff
    inc a                                         ; $7baa: $3c
    rst $38                                       ; $7bab: $ff
    db $db                                        ; $7bac: $db
    rst $20                                       ; $7bad: $e7
    ld a, [hl]                                    ; $7bae: $7e
    add c                                         ; $7baf: $81
    rst $38                                       ; $7bb0: $ff
    nop                                           ; $7bb1: $00
    db $fd                                        ; $7bb2: $fd
    ld [bc], a                                    ; $7bb3: $02
    rst $38                                       ; $7bb4: $ff
    nop                                           ; $7bb5: $00
    ld a, [$ff05]                                 ; $7bb6: $fa $05 $ff
    nop                                           ; $7bb9: $00
    call nc, $fe2b                                ; $7bba: $d4 $2b $fe
    ld bc, $57a8                                  ; $7bbd: $01 $a8 $57
    ld bc, $e3ff                                  ; $7bc0: $01 $ff $e3
    rst $38                                       ; $7bc3: $ff
    inc e                                         ; $7bc4: $1c
    rst $38                                       ; $7bc5: $ff
    add c                                         ; $7bc6: $81
    rst $38                                       ; $7bc7: $ff
    ld [bc], a                                    ; $7bc8: $02
    rst $38                                       ; $7bc9: $ff
    rst $38                                       ; $7bca: $ff
    rst $38                                       ; $7bcb: $ff
    rst $38                                       ; $7bcc: $ff
    nop                                           ; $7bcd: $00
    rst $38                                       ; $7bce: $ff
    rst $38                                       ; $7bcf: $ff
    nop                                           ; $7bd0: $00
    nop                                           ; $7bd1: $00
    nop                                           ; $7bd2: $00
    nop                                           ; $7bd3: $00
    nop                                           ; $7bd4: $00
    nop                                           ; $7bd5: $00
    nop                                           ; $7bd6: $00
    nop                                           ; $7bd7: $00
    nop                                           ; $7bd8: $00
    nop                                           ; $7bd9: $00
    nop                                           ; $7bda: $00
    nop                                           ; $7bdb: $00
    nop                                           ; $7bdc: $00
    nop                                           ; $7bdd: $00
    nop                                           ; $7bde: $00
    nop                                           ; $7bdf: $00
    db $fc                                        ; $7be0: $fc
    db $fc                                        ; $7be1: $fc
    ld a, [$f506]                                 ; $7be2: $fa $06 $f5
    ei                                            ; $7be5: $fb
    dec bc                                        ; $7be6: $0b
    db $fd                                        ; $7be7: $fd
    rlca                                          ; $7be8: $07
    db $fd                                        ; $7be9: $fd
    ld b, a                                       ; $7bea: $47
    db $fd                                        ; $7beb: $fd
    rlca                                          ; $7bec: $07
    db $fd                                        ; $7bed: $fd
    sub a                                         ; $7bee: $97
    db $fd                                        ; $7bef: $fd
    ld b, a                                       ; $7bf0: $47
    db $fd                                        ; $7bf1: $fd
    ld b, a                                       ; $7bf2: $47
    db $fd                                        ; $7bf3: $fd
    daa                                           ; $7bf4: $27
    db $fd                                        ; $7bf5: $fd
    daa                                           ; $7bf6: $27
    db $fd                                        ; $7bf7: $fd
    cpl                                           ; $7bf8: $2f
    db $fd                                        ; $7bf9: $fd
    ld h, a                                       ; $7bfa: $67
    db $fd                                        ; $7bfb: $fd
    ld b, a                                       ; $7bfc: $47
    db $fd                                        ; $7bfd: $fd
    rst $20                                       ; $7bfe: $e7
    db $fd                                        ; $7bff: $fd
    sub a                                         ; $7c00: $97
    db $fd                                        ; $7c01: $fd
    xor a                                         ; $7c02: $af
    db $fd                                        ; $7c03: $fd
    rra                                           ; $7c04: $1f
    db $fd                                        ; $7c05: $fd
    add a                                         ; $7c06: $87
    db $fd                                        ; $7c07: $fd
    set 7, l                                      ; $7c08: $cb $fd
    push af                                       ; $7c0a: $f5
    ei                                            ; $7c0b: $fb
    ld a, [$fc06]                                 ; $7c0c: $fa $06 $fc
    db $fc                                        ; $7c0f: $fc
    nop                                           ; $7c10: $00
    nop                                           ; $7c11: $00
    nop                                           ; $7c12: $00
    nop                                           ; $7c13: $00
    nop                                           ; $7c14: $00
    nop                                           ; $7c15: $00
    nop                                           ; $7c16: $00
    nop                                           ; $7c17: $00
    nop                                           ; $7c18: $00
    nop                                           ; $7c19: $00
    nop                                           ; $7c1a: $00
    nop                                           ; $7c1b: $00
    nop                                           ; $7c1c: $00
    nop                                           ; $7c1d: $00
    nop                                           ; $7c1e: $00
    nop                                           ; $7c1f: $00
    ccf                                           ; $7c20: $3f
    ccf                                           ; $7c21: $3f
    ld e, a                                       ; $7c22: $5f
    ld h, b                                       ; $7c23: $60
    xor a                                         ; $7c24: $af
    rst $18                                       ; $7c25: $df
    ret nc                                        ; $7c26: $d0

    cp a                                          ; $7c27: $bf
    ldh [$bf], a                                  ; $7c28: $e0 $bf
    ldh [$bf], a                                  ; $7c2a: $e0 $bf
    db $e4                                        ; $7c2c: $e4
    cp a                                          ; $7c2d: $bf
    pop hl                                        ; $7c2e: $e1
    cp a                                          ; $7c2f: $bf
    ldh [$bf], a                                  ; $7c30: $e0 $bf
    pop hl                                        ; $7c32: $e1
    cp a                                          ; $7c33: $bf
    ld [c], a                                     ; $7c34: $e2
    cp a                                          ; $7c35: $bf
    di                                            ; $7c36: $f3
    cp [hl]                                       ; $7c37: $be
    push hl                                       ; $7c38: $e5
    cp [hl]                                       ; $7c39: $be
    rst $20                                       ; $7c3a: $e7
    cp h                                          ; $7c3b: $bc
    rst $20                                       ; $7c3c: $e7
    cp h                                          ; $7c3d: $bc
    db $ed                                        ; $7c3e: $ed
    cp [hl]                                       ; $7c3f: $be
    db $e3                                        ; $7c40: $e3
    cp a                                          ; $7c41: $bf
    add sp, -$41                                  ; $7c42: $e8 $bf
    push af                                       ; $7c44: $f5
    cp a                                          ; $7c45: $bf
    db $ec                                        ; $7c46: $ec
    cp a                                          ; $7c47: $bf
    ret nc                                        ; $7c48: $d0

    cp a                                          ; $7c49: $bf
    xor a                                         ; $7c4a: $af
    rst $18                                       ; $7c4b: $df
    ld e, a                                       ; $7c4c: $5f
    ld h, b                                       ; $7c4d: $60
    ccf                                           ; $7c4e: $3f
    ccf                                           ; $7c4f: $3f
    nop                                           ; $7c50: $00
    nop                                           ; $7c51: $00
    nop                                           ; $7c52: $00
    nop                                           ; $7c53: $00
    nop                                           ; $7c54: $00
    nop                                           ; $7c55: $00
    nop                                           ; $7c56: $00
    nop                                           ; $7c57: $00
    nop                                           ; $7c58: $00
    nop                                           ; $7c59: $00
    nop                                           ; $7c5a: $00
    nop                                           ; $7c5b: $00
    nop                                           ; $7c5c: $00
    nop                                           ; $7c5d: $00
    nop                                           ; $7c5e: $00
    nop                                           ; $7c5f: $00
    rst $38                                       ; $7c60: $ff
    rst $38                                       ; $7c61: $ff
    rst $38                                       ; $7c62: $ff
    nop                                           ; $7c63: $00
    rst $38                                       ; $7c64: $ff
    rst $38                                       ; $7c65: $ff
    nop                                           ; $7c66: $00
    rst $38                                       ; $7c67: $ff
    nop                                           ; $7c68: $00
    rst $38                                       ; $7c69: $ff
    nop                                           ; $7c6a: $00
    rst $38                                       ; $7c6b: $ff
    ld [bc], a                                    ; $7c6c: $02
    rst $38                                       ; $7c6d: $ff
    inc a                                         ; $7c6e: $3c
    rst $38                                       ; $7c6f: $ff
    db $db                                        ; $7c70: $db
    rst $20                                       ; $7c71: $e7
    ld a, [hl]                                    ; $7c72: $7e
    add c                                         ; $7c73: $81
    rst $38                                       ; $7c74: $ff
    nop                                           ; $7c75: $00
    db $fd                                        ; $7c76: $fd
    ld [bc], a                                    ; $7c77: $02
    rst $38                                       ; $7c78: $ff
    nop                                           ; $7c79: $00
    ld a, [$ff05]                                 ; $7c7a: $fa $05 $ff
    nop                                           ; $7c7d: $00
    ld d, h                                       ; $7c7e: $54
    xor e                                         ; $7c7f: $ab
    add c                                         ; $7c80: $81
    rst $38                                       ; $7c81: $ff
    ld a, [hl]                                    ; $7c82: $7e
    rst $38                                       ; $7c83: $ff
    inc b                                         ; $7c84: $04
    rst $38                                       ; $7c85: $ff
    add c                                         ; $7c86: $81
    rst $38                                       ; $7c87: $ff
    ld [bc], a                                    ; $7c88: $02
    rst $38                                       ; $7c89: $ff
    rst $38                                       ; $7c8a: $ff
    rst $38                                       ; $7c8b: $ff
    rst $38                                       ; $7c8c: $ff
    nop                                           ; $7c8d: $00
    rst $38                                       ; $7c8e: $ff
    rst $38                                       ; $7c8f: $ff
    nop                                           ; $7c90: $00
    nop                                           ; $7c91: $00
    nop                                           ; $7c92: $00
    nop                                           ; $7c93: $00
    nop                                           ; $7c94: $00
    nop                                           ; $7c95: $00
    nop                                           ; $7c96: $00
    nop                                           ; $7c97: $00
    nop                                           ; $7c98: $00
    nop                                           ; $7c99: $00
    nop                                           ; $7c9a: $00
    nop                                           ; $7c9b: $00
    nop                                           ; $7c9c: $00
    nop                                           ; $7c9d: $00
    nop                                           ; $7c9e: $00
    nop                                           ; $7c9f: $00
    db $fc                                        ; $7ca0: $fc
    db $fc                                        ; $7ca1: $fc
    ld a, [$f506]                                 ; $7ca2: $fa $06 $f5
    ei                                            ; $7ca5: $fb
    dec bc                                        ; $7ca6: $0b
    db $fd                                        ; $7ca7: $fd
    rlca                                          ; $7ca8: $07
    db $fd                                        ; $7ca9: $fd
    ld b, a                                       ; $7caa: $47
    db $fd                                        ; $7cab: $fd
    rlca                                          ; $7cac: $07
    db $fd                                        ; $7cad: $fd
    rla                                           ; $7cae: $17
    db $fd                                        ; $7caf: $fd
    rlca                                          ; $7cb0: $07
    db $fd                                        ; $7cb1: $fd
    add a                                         ; $7cb2: $87
    db $fd                                        ; $7cb3: $fd
    ld b, a                                       ; $7cb4: $47
    db $fd                                        ; $7cb5: $fd
    ld b, a                                       ; $7cb6: $47
    db $fd                                        ; $7cb7: $fd
    cpl                                           ; $7cb8: $2f
    db $fd                                        ; $7cb9: $fd
    daa                                           ; $7cba: $27
    db $fd                                        ; $7cbb: $fd
    daa                                           ; $7cbc: $27
    db $fd                                        ; $7cbd: $fd
    ld [hl], a                                    ; $7cbe: $77
    db $fd                                        ; $7cbf: $fd
    sub a                                         ; $7cc0: $97
    db $fd                                        ; $7cc1: $fd
    cpl                                           ; $7cc2: $2f
    db $fd                                        ; $7cc3: $fd
    rra                                           ; $7cc4: $1f
    db $fd                                        ; $7cc5: $fd
    add a                                         ; $7cc6: $87
    db $fd                                        ; $7cc7: $fd
    set 7, l                                      ; $7cc8: $cb $fd
    push af                                       ; $7cca: $f5
    ei                                            ; $7ccb: $fb
    ld a, [$fc06]                                 ; $7ccc: $fa $06 $fc
    db $fc                                        ; $7ccf: $fc
    nop                                           ; $7cd0: $00
    nop                                           ; $7cd1: $00
    nop                                           ; $7cd2: $00
    nop                                           ; $7cd3: $00
    nop                                           ; $7cd4: $00
    nop                                           ; $7cd5: $00
    nop                                           ; $7cd6: $00
    nop                                           ; $7cd7: $00
    nop                                           ; $7cd8: $00
    nop                                           ; $7cd9: $00
    nop                                           ; $7cda: $00
    nop                                           ; $7cdb: $00
    nop                                           ; $7cdc: $00
    nop                                           ; $7cdd: $00
    nop                                           ; $7cde: $00
    nop                                           ; $7cdf: $00
    ccf                                           ; $7ce0: $3f
    ccf                                           ; $7ce1: $3f
    ld e, a                                       ; $7ce2: $5f
    ld h, b                                       ; $7ce3: $60
    xor a                                         ; $7ce4: $af
    rst $18                                       ; $7ce5: $df
    ret nc                                        ; $7ce6: $d0

    cp a                                          ; $7ce7: $bf
    ldh [$bf], a                                  ; $7ce8: $e0 $bf
    ldh [$bf], a                                  ; $7cea: $e0 $bf
    db $e4                                        ; $7cec: $e4
    cp a                                          ; $7ced: $bf
    pop hl                                        ; $7cee: $e1
    cp a                                          ; $7cef: $bf
    ldh [$bf], a                                  ; $7cf0: $e0 $bf
    ldh [$bf], a                                  ; $7cf2: $e0 $bf
    ldh [$bf], a                                  ; $7cf4: $e0 $bf
    pop af                                        ; $7cf6: $f1
    cp a                                          ; $7cf7: $bf
    ld [c], a                                     ; $7cf8: $e2
    cp a                                          ; $7cf9: $bf
    di                                            ; $7cfa: $f3
    cp [hl]                                       ; $7cfb: $be
    db $ed                                        ; $7cfc: $ed
    cp [hl]                                       ; $7cfd: $be
    push hl                                       ; $7cfe: $e5
    cp [hl]                                       ; $7cff: $be
    db $e3                                        ; $7d00: $e3
    cp a                                          ; $7d01: $bf
    add sp, -$41                                  ; $7d02: $e8 $bf
    push af                                       ; $7d04: $f5
    cp a                                          ; $7d05: $bf
    db $ec                                        ; $7d06: $ec
    cp a                                          ; $7d07: $bf
    ret nc                                        ; $7d08: $d0

    cp a                                          ; $7d09: $bf
    xor a                                         ; $7d0a: $af
    rst $18                                       ; $7d0b: $df
    ld e, a                                       ; $7d0c: $5f
    ld h, b                                       ; $7d0d: $60
    ccf                                           ; $7d0e: $3f
    ccf                                           ; $7d0f: $3f
    nop                                           ; $7d10: $00
    nop                                           ; $7d11: $00
    nop                                           ; $7d12: $00
    nop                                           ; $7d13: $00
    nop                                           ; $7d14: $00
    nop                                           ; $7d15: $00
    nop                                           ; $7d16: $00
    nop                                           ; $7d17: $00
    nop                                           ; $7d18: $00
    nop                                           ; $7d19: $00
    nop                                           ; $7d1a: $00
    nop                                           ; $7d1b: $00
    nop                                           ; $7d1c: $00
    nop                                           ; $7d1d: $00
    nop                                           ; $7d1e: $00
    nop                                           ; $7d1f: $00
    rst $38                                       ; $7d20: $ff
    rst $38                                       ; $7d21: $ff
    rst $38                                       ; $7d22: $ff
    nop                                           ; $7d23: $00
    rst $38                                       ; $7d24: $ff
    rst $38                                       ; $7d25: $ff
    nop                                           ; $7d26: $00
    rst $38                                       ; $7d27: $ff
    nop                                           ; $7d28: $00
    rst $38                                       ; $7d29: $ff
    nop                                           ; $7d2a: $00
    rst $38                                       ; $7d2b: $ff
    nop                                           ; $7d2c: $00
    rst $38                                       ; $7d2d: $ff
    ld [bc], a                                    ; $7d2e: $02
    rst $38                                       ; $7d2f: $ff
    nop                                           ; $7d30: $00
    rst $38                                       ; $7d31: $ff
    inc a                                         ; $7d32: $3c
    rst $38                                       ; $7d33: $ff
    db $db                                        ; $7d34: $db
    rst $20                                       ; $7d35: $e7
    ld a, [hl]                                    ; $7d36: $7e
    add c                                         ; $7d37: $81
    rst $38                                       ; $7d38: $ff
    nop                                           ; $7d39: $00
    db $fd                                        ; $7d3a: $fd
    ld [bc], a                                    ; $7d3b: $02
    rst $38                                       ; $7d3c: $ff
    nop                                           ; $7d3d: $00
    ld a, [$9105]                                 ; $7d3e: $fa $05 $91
    rst $28                                       ; $7d41: $ef
    ld a, [hl]                                    ; $7d42: $7e
    rst $38                                       ; $7d43: $ff
    inc b                                         ; $7d44: $04
    rst $38                                       ; $7d45: $ff
    adc c                                         ; $7d46: $89
    rst $38                                       ; $7d47: $ff
    ld b, $ff                                     ; $7d48: $06 $ff
    rst $38                                       ; $7d4a: $ff
    rst $38                                       ; $7d4b: $ff
    rst $38                                       ; $7d4c: $ff
    nop                                           ; $7d4d: $00
    rst $38                                       ; $7d4e: $ff
    rst $38                                       ; $7d4f: $ff
    nop                                           ; $7d50: $00
    nop                                           ; $7d51: $00
    nop                                           ; $7d52: $00
    nop                                           ; $7d53: $00
    nop                                           ; $7d54: $00
    nop                                           ; $7d55: $00
    nop                                           ; $7d56: $00
    nop                                           ; $7d57: $00
    nop                                           ; $7d58: $00
    nop                                           ; $7d59: $00
    nop                                           ; $7d5a: $00
    nop                                           ; $7d5b: $00
    nop                                           ; $7d5c: $00
    nop                                           ; $7d5d: $00
    nop                                           ; $7d5e: $00
    nop                                           ; $7d5f: $00
    db $fc                                        ; $7d60: $fc
    db $fc                                        ; $7d61: $fc
    ld a, [$f506]                                 ; $7d62: $fa $06 $f5
    ei                                            ; $7d65: $fb
    dec bc                                        ; $7d66: $0b
    db $fd                                        ; $7d67: $fd
    rlca                                          ; $7d68: $07
    db $fd                                        ; $7d69: $fd
    rlca                                          ; $7d6a: $07
    db $fd                                        ; $7d6b: $fd
    ld b, a                                       ; $7d6c: $47
    db $fd                                        ; $7d6d: $fd
    rlca                                          ; $7d6e: $07
    db $fd                                        ; $7d6f: $fd
    rla                                           ; $7d70: $17
    db $fd                                        ; $7d71: $fd
    rlca                                          ; $7d72: $07
    db $fd                                        ; $7d73: $fd
    rlca                                          ; $7d74: $07
    db $fd                                        ; $7d75: $fd
    and a                                         ; $7d76: $a7
    db $fd                                        ; $7d77: $fd
    ld c, a                                       ; $7d78: $4f
    db $fd                                        ; $7d79: $fd
    ld b, a                                       ; $7d7a: $47
    db $fd                                        ; $7d7b: $fd
    daa                                           ; $7d7c: $27
    db $fd                                        ; $7d7d: $fd
    ld [hl], a                                    ; $7d7e: $77
    db $fd                                        ; $7d7f: $fd
    rst $28                                       ; $7d80: $ef
    db $fd                                        ; $7d81: $fd
    ld d, a                                       ; $7d82: $57
    db $fd                                        ; $7d83: $fd
    rrca                                          ; $7d84: $0f
    db $fd                                        ; $7d85: $fd
    add a                                         ; $7d86: $87
    db $fd                                        ; $7d87: $fd
    set 7, l                                      ; $7d88: $cb $fd
    push af                                       ; $7d8a: $f5
    ei                                            ; $7d8b: $fb
    ld a, [$fc06]                                 ; $7d8c: $fa $06 $fc
    db $fc                                        ; $7d8f: $fc
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
