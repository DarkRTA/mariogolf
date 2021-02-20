; Disassembly of "mgolf.gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $05e", ROMX[$4000], BANK[$5e]

    ld b, d                                       ; $4000: $42
    ld l, e                                       ; $4001: $6b
    db $10                                        ; $4002: $10
    ld b, b                                       ; $4003: $40
    ld [$8944], sp                                ; $4004: $08 $44 $89

Call_05e_4007:
    ld d, b                                       ; $4007: $50
    ld h, l                                       ; $4008: $65
    ld e, d                                       ; $4009: $5a
    ld [de], a                                    ; $400a: $12
    ld l, a                                       ; $400b: $6f
    ld d, c                                       ; $400c: $51
    ld [hl], e                                    ; $400d: $73
    add d                                         ; $400e: $82
    ld a, b                                       ; $400f: $78
    jr jr_05e_4052                                ; $4010: $18 $40

    inc hl                                        ; $4012: $23
    ld b, c                                       ; $4013: $41
    rst $28                                       ; $4014: $ef
    ld b, e                                       ; $4015: $43
    dec b                                         ; $4016: $05
    ld b, h                                       ; $4017: $44
    ld bc, $ff0a                                  ; $4018: $01 $0a $ff
    rst $38                                       ; $401b: $ff
    rst $38                                       ; $401c: $ff
    rst $38                                       ; $401d: $ff
    rst $38                                       ; $401e: $ff
    rst $38                                       ; $401f: $ff
    rst $38                                       ; $4020: $ff
    rst $38                                       ; $4021: $ff
    rst $38                                       ; $4022: $ff
    rst $38                                       ; $4023: $ff
    rst $38                                       ; $4024: $ff
    rst $38                                       ; $4025: $ff
    rst $38                                       ; $4026: $ff
    rst $38                                       ; $4027: $ff
    nop                                           ; $4028: $00
    rst $38                                       ; $4029: $ff
    rst $38                                       ; $402a: $ff
    rst $38                                       ; $402b: $ff
    rst $38                                       ; $402c: $ff
    rst $38                                       ; $402d: $ff
    rst $38                                       ; $402e: $ff
    rst $38                                       ; $402f: $ff

Call_05e_4030:
    rst $38                                       ; $4030: $ff

Jump_05e_4031:
    rst $38                                       ; $4031: $ff
    rst $38                                       ; $4032: $ff
    rst $38                                       ; $4033: $ff
    rst $38                                       ; $4034: $ff
    rst $38                                       ; $4035: $ff
    rst $38                                       ; $4036: $ff
    rst $38                                       ; $4037: $ff
    rst $38                                       ; $4038: $ff
    nop                                           ; $4039: $00
    rst $38                                       ; $403a: $ff
    rst $38                                       ; $403b: $ff
    rst $38                                       ; $403c: $ff
    rst $38                                       ; $403d: $ff
    rst $38                                       ; $403e: $ff
    rst $38                                       ; $403f: $ff
    rst $38                                       ; $4040: $ff
    rst $38                                       ; $4041: $ff
    rst $38                                       ; $4042: $ff
    rst $38                                       ; $4043: $ff
    rst $38                                       ; $4044: $ff
    rst $38                                       ; $4045: $ff
    rst $38                                       ; $4046: $ff
    rst $38                                       ; $4047: $ff
    rst $38                                       ; $4048: $ff
    rst $38                                       ; $4049: $ff
    nop                                           ; $404a: $00
    rst $38                                       ; $404b: $ff
    rst $38                                       ; $404c: $ff
    rst $38                                       ; $404d: $ff
    rst $38                                       ; $404e: $ff
    rst $38                                       ; $404f: $ff
    rst $38                                       ; $4050: $ff

Jump_05e_4051:
    rst $38                                       ; $4051: $ff

jr_05e_4052:
    rst $38                                       ; $4052: $ff
    rst $38                                       ; $4053: $ff
    rst $38                                       ; $4054: $ff
    rst $38                                       ; $4055: $ff
    rst $38                                       ; $4056: $ff
    rst $38                                       ; $4057: $ff
    rst $38                                       ; $4058: $ff
    rst $38                                       ; $4059: $ff
    rst $38                                       ; $405a: $ff
    nop                                           ; $405b: $00

Jump_05e_405c:
    rst $38                                       ; $405c: $ff
    rst $38                                       ; $405d: $ff
    rst $38                                       ; $405e: $ff
    rst $38                                       ; $405f: $ff
    rst $38                                       ; $4060: $ff
    rst $38                                       ; $4061: $ff
    rst $38                                       ; $4062: $ff
    rst $38                                       ; $4063: $ff
    rst $38                                       ; $4064: $ff
    rst $38                                       ; $4065: $ff
    rst $38                                       ; $4066: $ff
    rst $38                                       ; $4067: $ff
    rst $38                                       ; $4068: $ff
    rst $38                                       ; $4069: $ff
    rst $38                                       ; $406a: $ff
    rst $38                                       ; $406b: $ff
    nop                                           ; $406c: $00
    rst $38                                       ; $406d: $ff
    rst $38                                       ; $406e: $ff
    rst $38                                       ; $406f: $ff
    rst $38                                       ; $4070: $ff
    rst $38                                       ; $4071: $ff
    rst $38                                       ; $4072: $ff
    rst $38                                       ; $4073: $ff
    rst $38                                       ; $4074: $ff
    rst $38                                       ; $4075: $ff
    rst $38                                       ; $4076: $ff
    rst $38                                       ; $4077: $ff
    rst $38                                       ; $4078: $ff
    rst $38                                       ; $4079: $ff
    rst $38                                       ; $407a: $ff
    rst $38                                       ; $407b: $ff
    rst $38                                       ; $407c: $ff
    nop                                           ; $407d: $00
    rst $38                                       ; $407e: $ff
    rst $38                                       ; $407f: $ff
    rst $38                                       ; $4080: $ff
    rst $38                                       ; $4081: $ff
    rst $38                                       ; $4082: $ff
    rst $38                                       ; $4083: $ff
    rst $38                                       ; $4084: $ff
    rst $38                                       ; $4085: $ff
    rst $38                                       ; $4086: $ff
    rst $38                                       ; $4087: $ff
    rst $38                                       ; $4088: $ff
    rst $38                                       ; $4089: $ff
    rst $38                                       ; $408a: $ff
    rst $38                                       ; $408b: $ff
    rst $38                                       ; $408c: $ff
    rst $38                                       ; $408d: $ff
    nop                                           ; $408e: $00
    rst $38                                       ; $408f: $ff

Jump_05e_4090:
    rst $38                                       ; $4090: $ff
    rst $38                                       ; $4091: $ff
    rst $38                                       ; $4092: $ff
    rst $38                                       ; $4093: $ff
    rst $38                                       ; $4094: $ff
    rst $38                                       ; $4095: $ff
    rst $38                                       ; $4096: $ff
    rst $38                                       ; $4097: $ff
    rst $38                                       ; $4098: $ff
    rst $38                                       ; $4099: $ff
    rst $38                                       ; $409a: $ff
    rst $38                                       ; $409b: $ff
    rst $38                                       ; $409c: $ff
    rst $38                                       ; $409d: $ff
    rst $38                                       ; $409e: $ff
    nop                                           ; $409f: $00
    rst $38                                       ; $40a0: $ff
    rst $38                                       ; $40a1: $ff
    rst $38                                       ; $40a2: $ff
    rst $38                                       ; $40a3: $ff
    rst $38                                       ; $40a4: $ff
    rst $38                                       ; $40a5: $ff
    rst $38                                       ; $40a6: $ff

Jump_05e_40a7:
    rst $38                                       ; $40a7: $ff
    rst $38                                       ; $40a8: $ff
    rst $38                                       ; $40a9: $ff
    rst $38                                       ; $40aa: $ff
    rst $38                                       ; $40ab: $ff
    rst $38                                       ; $40ac: $ff
    rst $38                                       ; $40ad: $ff
    rst $38                                       ; $40ae: $ff
    rst $38                                       ; $40af: $ff
    nop                                           ; $40b0: $00
    rst $38                                       ; $40b1: $ff
    rst $38                                       ; $40b2: $ff
    rst $38                                       ; $40b3: $ff
    rst $38                                       ; $40b4: $ff
    rst $38                                       ; $40b5: $ff
    rst $38                                       ; $40b6: $ff
    rst $38                                       ; $40b7: $ff
    rst $38                                       ; $40b8: $ff
    rst $38                                       ; $40b9: $ff
    rst $38                                       ; $40ba: $ff
    rst $38                                       ; $40bb: $ff
    rst $38                                       ; $40bc: $ff
    rst $38                                       ; $40bd: $ff
    rst $38                                       ; $40be: $ff
    rst $38                                       ; $40bf: $ff
    rst $38                                       ; $40c0: $ff
    nop                                           ; $40c1: $00
    rst $38                                       ; $40c2: $ff
    rst $38                                       ; $40c3: $ff
    rst $38                                       ; $40c4: $ff
    rst $38                                       ; $40c5: $ff
    rst $38                                       ; $40c6: $ff
    rst $38                                       ; $40c7: $ff
    rst $38                                       ; $40c8: $ff
    rst $38                                       ; $40c9: $ff
    rst $38                                       ; $40ca: $ff
    rst $38                                       ; $40cb: $ff
    rst $38                                       ; $40cc: $ff
    rst $38                                       ; $40cd: $ff
    rst $38                                       ; $40ce: $ff
    rst $38                                       ; $40cf: $ff
    rst $38                                       ; $40d0: $ff
    rst $38                                       ; $40d1: $ff
    nop                                           ; $40d2: $00
    rst $38                                       ; $40d3: $ff
    rst $38                                       ; $40d4: $ff
    rst $38                                       ; $40d5: $ff
    rst $38                                       ; $40d6: $ff
    rst $38                                       ; $40d7: $ff
    rst $38                                       ; $40d8: $ff
    rst $38                                       ; $40d9: $ff
    rst $38                                       ; $40da: $ff
    rst $38                                       ; $40db: $ff
    rst $38                                       ; $40dc: $ff
    rst $38                                       ; $40dd: $ff
    rst $38                                       ; $40de: $ff
    rst $38                                       ; $40df: $ff
    rst $38                                       ; $40e0: $ff
    rst $38                                       ; $40e1: $ff
    rst $38                                       ; $40e2: $ff
    inc b                                         ; $40e3: $04
    rst $38                                       ; $40e4: $ff
    rst $38                                       ; $40e5: $ff
    or $f5                                        ; $40e6: $f6 $f5
    ld a, [hl+]                                   ; $40e8: $2a
    db $dd                                        ; $40e9: $dd
    rst $38                                       ; $40ea: $ff
    ret nz                                        ; $40eb: $c0

    rst $38                                       ; $40ec: $ff
    rst $38                                       ; $40ed: $ff
    rst $38                                       ; $40ee: $ff
    ret nz                                        ; $40ef: $c0

Jump_05e_40f0:
    rst $38                                       ; $40f0: $ff
    rst $38                                       ; $40f1: $ff
    rst $38                                       ; $40f2: $ff
    ld b, $c0                                     ; $40f3: $06 $c0
    ld hl, sp+$0b                                 ; $40f5: $f8 $0b
    dec bc                                        ; $40f7: $0b
    pop af                                        ; $40f8: $f1
    di                                            ; $40f9: $f3
    and b                                         ; $40fa: $a0
    rst $38                                       ; $40fb: $ff
    ret nz                                        ; $40fc: $c0

    rst $38                                       ; $40fd: $ff
    ret nz                                        ; $40fe: $c0

Jump_05e_40ff:
    rst $38                                       ; $40ff: $ff
    ret nz                                        ; $4100: $c0

    rst $38                                       ; $4101: $ff
    nop                                           ; $4102: $00
    ret nz                                        ; $4103: $c0

    rst $38                                       ; $4104: $ff
    ret nz                                        ; $4105: $c0

    rst $38                                       ; $4106: $ff
    ret nz                                        ; $4107: $c0

    rst $38                                       ; $4108: $ff
    ret nz                                        ; $4109: $c0

    rst $38                                       ; $410a: $ff
    ret nz                                        ; $410b: $c0

    rst $38                                       ; $410c: $ff
    ret nz                                        ; $410d: $c0

    rst $38                                       ; $410e: $ff
    ret nz                                        ; $410f: $c0

    rst $38                                       ; $4110: $ff
    ret nz                                        ; $4111: $c0

    rst $38                                       ; $4112: $ff
    nop                                           ; $4113: $00
    ret nz                                        ; $4114: $c0

    rst $38                                       ; $4115: $ff
    ret nz                                        ; $4116: $c0

    rst $38                                       ; $4117: $ff
    ret nz                                        ; $4118: $c0

    rst $38                                       ; $4119: $ff
    ret nz                                        ; $411a: $c0

    rst $38                                       ; $411b: $ff
    ret nz                                        ; $411c: $c0

    rst $38                                       ; $411d: $ff
    ld h, b                                       ; $411e: $60
    and h                                         ; $411f: $a4
    nop                                           ; $4120: $00
    nop                                           ; $4121: $00
    nop                                           ; $4122: $00
    rst $28                                       ; $4123: $ef
    ld hl, $4242                                  ; $4124: $21 $42 $42
    ld b, d                                       ; $4127: $42
    db $fc                                        ; $4128: $fc
    ld a, [c]                                     ; $4129: $f2
    add hl, hl                                    ; $412a: $29
    sub d                                         ; $412b: $92
    cpl                                           ; $412c: $2f
    rst $38                                       ; $412d: $ff
    ld h, $27                                     ; $412e: $26 $27
    jr z, jr_05e_415b                             ; $4130: $28 $29

    ld a, [hl+]                                   ; $4132: $2a
    dec hl                                        ; $4133: $2b
    inc l                                         ; $4134: $2c
    dec l                                         ; $4135: $2d
    rst $20                                       ; $4136: $e7
    sub d                                         ; $4137: $92
    cpl                                           ; $4138: $2f
    add hl, hl                                    ; $4139: $29
    call c, $c4f3                                 ; $413a: $dc $f3 $c4
    ldh [rSTAT], a                                ; $413d: $e0 $41
    inc hl                                        ; $413f: $23
    inc hl                                        ; $4140: $23
    db $fd                                        ; $4141: $fd
    inc hl                                        ; $4142: $23
    db $fc                                        ; $4143: $fc
    ld a, [c]                                     ; $4144: $f2

Jump_05e_4145:
    add hl, sp                                    ; $4145: $39
    and d                                         ; $4146: $a2
    ccf                                           ; $4147: $3f
    ld [hl], $37                                  ; $4148: $36 $37
    jr c, @+$01                                   ; $414a: $38 $ff

    add hl, sp                                    ; $414c: $39
    ld a, [hl-]                                   ; $414d: $3a
    dec sp                                        ; $414e: $3b
    inc a                                         ; $414f: $3c
    dec a                                         ; $4150: $3d
    and d                                         ; $4151: $a2
    ccf                                           ; $4152: $3f
    add hl, sp                                    ; $4153: $39
    db $fc                                        ; $4154: $fc
    call c, $f8f3                                 ; $4155: $dc $f3 $f8
    ld sp, hl                                     ; $4158: $f9
    ld c, c                                       ; $4159: $49
    or d                                          ; $415a: $b2

jr_05e_415b:
    ld c, a                                       ; $415b: $4f
    ld b, [hl]                                    ; $415c: $46
    ld b, a                                       ; $415d: $47
    ld c, b                                       ; $415e: $48
    rst $38                                       ; $415f: $ff
    ld c, c                                       ; $4160: $49
    ld c, d                                       ; $4161: $4a
    ld c, e                                       ; $4162: $4b
    ld c, h                                       ; $4163: $4c
    ld c, l                                       ; $4164: $4d
    or d                                          ; $4165: $b2
    ld c, a                                       ; $4166: $4f
    ld c, c                                       ; $4167: $49
    db $fc                                        ; $4168: $fc
    ret nc                                        ; $4169: $d0

    rst $38                                       ; $416a: $ff
    ld a, b                                       ; $416b: $78
    db $ed                                        ; $416c: $ed
    add hl, bc                                    ; $416d: $09
    ld [hl], c                                    ; $416e: $71
    rrca                                          ; $416f: $0f
    ld b, $07                                     ; $4170: $06 $07
    ld [$09ff], sp                                ; $4172: $08 $ff $09
    ld a, [bc]                                    ; $4175: $0a
    dec bc                                        ; $4176: $0b
    inc c                                         ; $4177: $0c
    dec c                                         ; $4178: $0d
    ld [hl], c                                    ; $4179: $71
    rrca                                          ; $417a: $0f
    add hl, bc                                    ; $417b: $09
    db $fc                                        ; $417c: $fc
    ret nc                                        ; $417d: $d0

    or $00                                        ; $417e: $f6 $00
    or $19                                        ; $4180: $f6 $19
    add c                                         ; $4182: $81
    rra                                           ; $4183: $1f
    ld d, $17                                     ; $4184: $16 $17
    jr @+$01                                      ; $4186: $18 $ff

    add hl, de                                    ; $4188: $19
    ld a, [de]                                    ; $4189: $1a
    dec de                                        ; $418a: $1b
    inc e                                         ; $418b: $1c
    dec e                                         ; $418c: $1d
    add c                                         ; $418d: $81
    rra                                           ; $418e: $1f
    add hl, de                                    ; $418f: $19
    db $ec                                        ; $4190: $ec
    nop                                           ; $4191: $00
    rst $38                                       ; $4192: $ff
    ld hl, sp-$33                                 ; $4193: $f8 $cd
    add hl, hl                                    ; $4195: $29
    sub c                                         ; $4196: $91
    ret nz                                        ; $4197: $c0

    add $91                                       ; $4198: $c6 $91
    cpl                                           ; $419a: $2f
    add hl, hl                                    ; $419b: $29
    sub h                                         ; $419c: $94
    ld d, b                                       ; $419d: $50
    rst $38                                       ; $419e: $ff
    ret nz                                        ; $419f: $c0

    adc $a1                                       ; $41a0: $ce $a1
    ret nz                                        ; $41a2: $c0

    add $a1                                       ; $41a3: $c6 $a1
    ret nz                                        ; $41a5: $c0

    rst $18                                       ; $41a6: $df
    ret nz                                        ; $41a7: $c0

    ret nc                                        ; $41a8: $d0

    or c                                          ; $41a9: $b1
    or d                                          ; $41aa: $b2
    ret nz                                        ; $41ab: $c0

    add $b1                                       ; $41ac: $c6 $b1
    ret nz                                        ; $41ae: $c0

    ret c                                         ; $41af: $d8

    nop                                           ; $41b0: $00
    sub $09                                       ; $41b1: $d6 $09
    ld [hl], b                                    ; $41b3: $70
    ret nz                                        ; $41b4: $c0

    add $70                                       ; $41b5: $c6 $70
    or e                                          ; $41b7: $b3
    rrca                                          ; $41b8: $0f
    add hl, bc                                    ; $41b9: $09
    nop                                           ; $41ba: $00
    rst $38                                       ; $41bb: $ff
    ld hl, sp-$53                                 ; $41bc: $f8 $ad
    add hl, de                                    ; $41be: $19
    add b                                         ; $41bf: $80
    ret nz                                        ; $41c0: $c0

    add $80                                       ; $41c1: $c6 $80
    ld d, e                                       ; $41c3: $53
    rra                                           ; $41c4: $1f
    add hl, de                                    ; $41c5: $19
    ld d, b                                       ; $41c6: $50
    rst $38                                       ; $41c7: $ff
    ret nz                                        ; $41c8: $c0

    adc $90                                       ; $41c9: $ce $90
    add b                                         ; $41cb: $80
    and [hl]                                      ; $41cc: $a6
    sub b                                         ; $41cd: $90
    ret nz                                        ; $41ce: $c0

    rst $18                                       ; $41cf: $df
    jp z, $b080                                   ; $41d0: $ca $80 $b0

    and b                                         ; $41d3: $a0
    add b                                         ; $41d4: $80
    and [hl]                                      ; $41d5: $a6
    and b                                         ; $41d6: $a0
    ret nz                                        ; $41d7: $c0

    ret c                                         ; $41d8: $d8

    nop                                           ; $41d9: $00
    or [hl]                                       ; $41da: $b6
    ld c, c                                       ; $41db: $49
    or b                                          ; $41dc: $b0
    ld c, [hl]                                    ; $41dd: $4e
    add b                                         ; $41de: $80
    and [hl]                                      ; $41df: $a6
    or b                                          ; $41e0: $b0
    ld c, a                                       ; $41e1: $4f
    ld c, c                                       ; $41e2: $49
    nop                                           ; $41e3: $00
    rst $38                                       ; $41e4: $ff
    add b                                         ; $41e5: $80
    xor [hl]                                      ; $41e6: $ae
    ld a, [hl]                                    ; $41e7: $7e
    add b                                         ; $41e8: $80
    and [hl]                                      ; $41e9: $a6
    add hl, hl                                    ; $41ea: $29
    ld a, [hl]                                    ; $41eb: $7e
    add b                                         ; $41ec: $80
    cp b                                          ; $41ed: $b8
    ret nz                                        ; $41ee: $c0

    rst $10                                       ; $41ef: $d7
    adc [hl]                                      ; $41f0: $8e
    add b                                         ; $41f1: $80
    and [hl]                                      ; $41f2: $a6
    adc [hl]                                      ; $41f3: $8e
    ret nz                                        ; $41f4: $c0

    rst $18                                       ; $41f5: $df
    add b                                         ; $41f6: $80
    or b                                          ; $41f7: $b0
    ld h, l                                       ; $41f8: $65
    sbc [hl]                                      ; $41f9: $9e
    ld b, b                                       ; $41fa: $40
    add [hl]                                      ; $41fb: $86
    sbc [hl]                                      ; $41fc: $9e
    ret nz                                        ; $41fd: $c0

    ret c                                         ; $41fe: $d8

    nop                                           ; $41ff: $00
    sub [hl]                                      ; $4200: $96
    add hl, sp                                    ; $4201: $39
    xor [hl]                                      ; $4202: $ae
    ld b, b                                       ; $4203: $40
    add [hl]                                      ; $4204: $86
    and a                                         ; $4205: $a7
    xor [hl]                                      ; $4206: $ae
    ccf                                           ; $4207: $3f

jr_05e_4208:
    add hl, sp                                    ; $4208: $39
    nop                                           ; $4209: $00
    rst $38                                       ; $420a: $ff
    ld b, b                                       ; $420b: $40
    adc [hl]                                      ; $420c: $8e
    cp [hl]                                       ; $420d: $be
    ld b, b                                       ; $420e: $40
    add [hl]                                      ; $420f: $86
    cp [hl]                                       ; $4210: $be
    sub h                                         ; $4211: $94
    ld b, b                                       ; $4212: $40
    sbc a                                         ; $4213: $9f
    ld b, b                                       ; $4214: $40
    sub b                                         ; $4215: $90
    ld a, l                                       ; $4216: $7d
    ld b, b                                       ; $4217: $40
    add [hl]                                      ; $4218: $86

jr_05e_4219:
    ld a, l                                       ; $4219: $7d
    ret nz                                        ; $421a: $c0

    rst $18                                       ; $421b: $df
    add b                                         ; $421c: $80
    or b                                          ; $421d: $b0
    adc l                                         ; $421e: $8d
    ld d, d                                       ; $421f: $52

jr_05e_4220:
    ld b, b                                       ; $4220: $40
    add [hl]                                      ; $4221: $86
    adc l                                         ; $4222: $8d
    ret nz                                        ; $4223: $c0

    ret c                                         ; $4224: $d8

    nop                                           ; $4225: $00

Jump_05e_4226:
    ld [hl], a                                    ; $4226: $77
    sbc l                                         ; $4227: $9d
    nop                                           ; $4228: $00
    ld h, [hl]                                    ; $4229: $66
    sbc l                                         ; $422a: $9d

jr_05e_422b:
    nop                                           ; $422b: $00
    ld a, a                                       ; $422c: $7f
    ld c, d                                       ; $422d: $4a
    nop                                           ; $422e: $00
    ld [hl], b                                    ; $422f: $70
    xor l                                         ; $4230: $ad
    nop                                           ; $4231: $00
    ld h, [hl]                                    ; $4232: $66
    xor l                                         ; $4233: $ad
    ld b, b                                       ; $4234: $40
    sbc a                                         ; $4235: $9f
    nop                                           ; $4236: $00
    ld [hl], b                                    ; $4237: $70
    cp l                                          ; $4238: $bd
    nop                                           ; $4239: $00
    ld h, [hl]                                    ; $423a: $66
    add hl, hl                                    ; $423b: $29
    cp l                                          ; $423c: $bd
    ret nz                                        ; $423d: $c0

    rst $18                                       ; $423e: $df
    nop                                           ; $423f: $00
    ld [hl], b                                    ; $4240: $70
    ld a, h                                       ; $4241: $7c
    nop                                           ; $4242: $00
    ld h, [hl]                                    ; $4243: $66
    ld a, h                                       ; $4244: $7c
    nop                                           ; $4245: $00
    ld a, a                                       ; $4246: $7f
    nop                                           ; $4247: $00
    ld [hl], b                                    ; $4248: $70
    and l                                         ; $4249: $a5
    adc h                                         ; $424a: $8c
    nop                                           ; $424b: $00
    ld h, [hl]                                    ; $424c: $66
    adc h                                         ; $424d: $8c
    nop                                           ; $424e: $00
    ld a, a                                       ; $424f: $7f
    nop                                           ; $4250: $00
    ld [hl], b                                    ; $4251: $70
    sbc h                                         ; $4252: $9c
    ret nz                                        ; $4253: $c0

    ld h, $9c                                     ; $4254: $26 $9c
    sub h                                         ; $4256: $94
    ld b, b                                       ; $4257: $40
    sbc a                                         ; $4258: $9f
    ret nz                                        ; $4259: $c0

    jr nc, jr_05e_4208                            ; $425a: $30 $ac

    ret nz                                        ; $425c: $c0

    ld h, $ac                                     ; $425d: $26 $ac
    ret nz                                        ; $425f: $c0

    rst $18                                       ; $4260: $df
    ret nz                                        ; $4261: $c0

    jr nc, jr_05e_4220                            ; $4262: $30 $bc

    ld d, d                                       ; $4264: $52
    ret nz                                        ; $4265: $c0

    ld h, $bc                                     ; $4266: $26 $bc
    nop                                           ; $4268: $00
    ld a, a                                       ; $4269: $7f
    nop                                           ; $426a: $00
    ld [hl], b                                    ; $426b: $70
    ld a, e                                       ; $426c: $7b
    ret nz                                        ; $426d: $c0

    ld h, $7b                                     ; $426e: $26 $7b
    nop                                           ; $4270: $00
    ld a, a                                       ; $4271: $7f
    ld c, d                                       ; $4272: $4a
    nop                                           ; $4273: $00
    ld [hl], b                                    ; $4274: $70
    adc e                                         ; $4275: $8b
    ret nz                                        ; $4276: $c0

    ld h, $8b                                     ; $4277: $26 $8b
    ld b, b                                       ; $4279: $40
    sbc a                                         ; $427a: $9f
    ret nz                                        ; $427b: $c0

    jr nc, jr_05e_4219                            ; $427c: $30 $9b

    add b                                         ; $427e: $80
    ld b, $29                                     ; $427f: $06 $29
    sbc e                                         ; $4281: $9b
    ret nz                                        ; $4282: $c0

    rst $18                                       ; $4283: $df

Jump_05e_4284:
    add b                                         ; $4284: $80
    db $10                                        ; $4285: $10
    xor e                                         ; $4286: $ab
    add b                                         ; $4287: $80
    ld b, $ab                                     ; $4288: $06 $ab
    nop                                           ; $428a: $00
    ld a, a                                       ; $428b: $7f
    nop                                           ; $428c: $00
    ld [hl], b                                    ; $428d: $70
    and l                                         ; $428e: $a5
    cp e                                          ; $428f: $bb
    add b                                         ; $4290: $80
    ld b, $bb                                     ; $4291: $06 $bb
    nop                                           ; $4293: $00
    ld a, a                                       ; $4294: $7f
    add b                                         ; $4295: $80
    db $10                                        ; $4296: $10
    ld a, d                                       ; $4297: $7a
    add b                                         ; $4298: $80
    ld b, $7a                                     ; $4299: $06 $7a
    sub h                                         ; $429b: $94
    ld b, b                                       ; $429c: $40
    sbc a                                         ; $429d: $9f
    ret nz                                        ; $429e: $c0

jr_05e_429f:
    jr nc, jr_05e_422b                            ; $429f: $30 $8a

    add b                                         ; $42a1: $80
    ld b, $8a                                     ; $42a2: $06 $8a
    ret nz                                        ; $42a4: $c0

    rst $18                                       ; $42a5: $df
    add b                                         ; $42a6: $80
    db $10                                        ; $42a7: $10
    sbc d                                         ; $42a8: $9a
    ld d, d                                       ; $42a9: $52
    add b                                         ; $42aa: $80
    ld b, $9a                                     ; $42ab: $06 $9a
    nop                                           ; $42ad: $00
    ld a, a                                       ; $42ae: $7f
    nop                                           ; $42af: $00

jr_05e_42b0:
    ld [hl], b                                    ; $42b0: $70
    xor d                                         ; $42b1: $aa
    add b                                         ; $42b2: $80
    ld b, $aa                                     ; $42b3: $06 $aa
    nop                                           ; $42b5: $00
    ld a, a                                       ; $42b6: $7f
    ld c, d                                       ; $42b7: $4a
    add b                                         ; $42b8: $80
    db $10                                        ; $42b9: $10
    cp d                                          ; $42ba: $ba
    add b                                         ; $42bb: $80
    ld b, $ba                                     ; $42bc: $06 $ba
    ld b, b                                       ; $42be: $40
    sbc a                                         ; $42bf: $9f
    ret nz                                        ; $42c0: $c0

    jr nc, jr_05e_433c                            ; $42c1: $30 $79

    add b                                         ; $42c3: $80
    ld b, $29                                     ; $42c4: $06 $29
    ld a, c                                       ; $42c6: $79
    ret nz                                        ; $42c7: $c0

    rst $18                                       ; $42c8: $df
    add b                                         ; $42c9: $80
    db $10                                        ; $42ca: $10
    adc c                                         ; $42cb: $89
    add b                                         ; $42cc: $80
    ld b, $89                                     ; $42cd: $06 $89
    nop                                           ; $42cf: $00
    ld a, a                                       ; $42d0: $7f
    nop                                           ; $42d1: $00
    ld [hl], b                                    ; $42d2: $70

jr_05e_42d3:
    and l                                         ; $42d3: $a5
    sbc c                                         ; $42d4: $99
    add b                                         ; $42d5: $80
    ld b, $99                                     ; $42d6: $06 $99
    nop                                           ; $42d8: $00
    ld a, a                                       ; $42d9: $7f
    add b                                         ; $42da: $80
    db $10                                        ; $42db: $10
    xor c                                         ; $42dc: $a9
    add b                                         ; $42dd: $80
    ld b, $a9                                     ; $42de: $06 $a9
    sub h                                         ; $42e0: $94
    ld b, b                                       ; $42e1: $40
    sbc a                                         ; $42e2: $9f
    ret nz                                        ; $42e3: $c0

    jr nc, jr_05e_429f                            ; $42e4: $30 $b9

Call_05e_42e6:
    add b                                         ; $42e6: $80
    ld b, $b9                                     ; $42e7: $06 $b9
    ret nz                                        ; $42e9: $c0

    rst $18                                       ; $42ea: $df
    add b                                         ; $42eb: $80
    db $10                                        ; $42ec: $10
    ld a, b                                       ; $42ed: $78
    ld d, d                                       ; $42ee: $52
    add b                                         ; $42ef: $80
    ld b, $78                                     ; $42f0: $06 $78
    nop                                           ; $42f2: $00
    ld a, a                                       ; $42f3: $7f
    nop                                           ; $42f4: $00
    ld [hl], b                                    ; $42f5: $70
    adc b                                         ; $42f6: $88
    add b                                         ; $42f7: $80
    ld b, $88                                     ; $42f8: $06 $88
    nop                                           ; $42fa: $00
    ld a, a                                       ; $42fb: $7f
    ld c, d                                       ; $42fc: $4a
    add b                                         ; $42fd: $80
    db $10                                        ; $42fe: $10
    sbc b                                         ; $42ff: $98
    add b                                         ; $4300: $80
    ld b, $98                                     ; $4301: $06 $98
    ld b, b                                       ; $4303: $40
    sbc a                                         ; $4304: $9f
    ret nz                                        ; $4305: $c0

    jr nc, jr_05e_42b0                            ; $4306: $30 $a8

    add b                                         ; $4308: $80
    ld b, $29                                     ; $4309: $06 $29
    xor b                                         ; $430b: $a8
    ret nz                                        ; $430c: $c0

    rst $18                                       ; $430d: $df
    add b                                         ; $430e: $80
    db $10                                        ; $430f: $10
    cp b                                          ; $4310: $b8

Jump_05e_4311:
    add b                                         ; $4311: $80
    ld b, $b8                                     ; $4312: $06 $b8
    nop                                           ; $4314: $00
    ld a, a                                       ; $4315: $7f
    nop                                           ; $4316: $00
    ld [hl], b                                    ; $4317: $70
    and l                                         ; $4318: $a5
    ld [hl], a                                    ; $4319: $77
    add b                                         ; $431a: $80
    ld b, $77                                     ; $431b: $06 $77
    nop                                           ; $431d: $00
    ld a, a                                       ; $431e: $7f
    add b                                         ; $431f: $80
    db $10                                        ; $4320: $10
    add a                                         ; $4321: $87
    add b                                         ; $4322: $80
    ld b, $87                                     ; $4323: $06 $87
    sub h                                         ; $4325: $94
    ld b, b                                       ; $4326: $40
    sbc a                                         ; $4327: $9f
    ret nz                                        ; $4328: $c0

    jr nc, @-$67                                  ; $4329: $30 $97

    add b                                         ; $432b: $80
    ld b, $97                                     ; $432c: $06 $97
    ret nz                                        ; $432e: $c0

    rst $18                                       ; $432f: $df
    add b                                         ; $4330: $80
    db $10                                        ; $4331: $10
    and a                                         ; $4332: $a7
    ld d, d                                       ; $4333: $52
    add b                                         ; $4334: $80
    ld b, $a7                                     ; $4335: $06 $a7
    nop                                           ; $4337: $00
    ld a, a                                       ; $4338: $7f
    nop                                           ; $4339: $00
    ld [hl], b                                    ; $433a: $70
    or a                                          ; $433b: $b7

jr_05e_433c:
    add b                                         ; $433c: $80
    ld b, $b7                                     ; $433d: $06 $b7
    nop                                           ; $433f: $00
    ld a, a                                       ; $4340: $7f
    ld c, d                                       ; $4341: $4a
    add b                                         ; $4342: $80
    db $10                                        ; $4343: $10
    halt                                          ; $4344: $76
    add b                                         ; $4345: $80
    ld b, $76                                     ; $4346: $06 $76
    ld b, b                                       ; $4348: $40
    sbc a                                         ; $4349: $9f
    ret nz                                        ; $434a: $c0

    jr nc, jr_05e_42d3                            ; $434b: $30 $86

    add b                                         ; $434d: $80
    ld bc, $648b                                  ; $434e: $01 $8b $64
    ld h, l                                       ; $4351: $65
    add b                                         ; $4352: $80
    nop                                           ; $4353: $00
    add [hl]                                      ; $4354: $86
    ret nz                                        ; $4355: $c0

    ret nz                                        ; $4356: $c0

    pop af                                        ; $4357: $f1
    db $ec                                        ; $4358: $ec
    ldh [$e5], a                                  ; $4359: $e0 $e5
    add hl, de                                    ; $435b: $19
    ld e, d                                       ; $435c: $5a
    add b                                         ; $435d: $80
    rla                                           ; $435e: $17
    sub [hl]                                      ; $435f: $96
    add b                                         ; $4360: $80
    ld bc, $7574                                  ; $4361: $01 $74 $75
    add b                                         ; $4364: $80
    nop                                           ; $4365: $00
    sub [hl]                                      ; $4366: $96
    ret nz                                        ; $4367: $c0

    ret nz                                        ; $4368: $c0

    call nc, $ecf1                                ; $4369: $d4 $f1 $ec
    ldh [$e5], a                                  ; $436c: $e0 $e5
    add hl, hl                                    ; $436e: $29
    nop                                           ; $436f: $00
    ld [hl], a                                    ; $4370: $77
    and [hl]                                      ; $4371: $a6
    add b                                         ; $4372: $80
    ld bc, $8584                                  ; $4373: $01 $84 $85
    and d                                         ; $4376: $a2
    add b                                         ; $4377: $80
    nop                                           ; $4378: $00
    and [hl]                                      ; $4379: $a6
    nop                                           ; $437a: $00
    ld h, b                                       ; $437b: $60
    pop af                                        ; $437c: $f1
    db $ec                                        ; $437d: $ec
    ldh [$e5], a                                  ; $437e: $e0 $e5
    add hl, sp                                    ; $4380: $39
    add b                                         ; $4381: $80
    rla                                           ; $4382: $17
    or [hl]                                       ; $4383: $b6
    ld d, $80                                     ; $4384: $16 $80
    ld bc, $9594                                  ; $4386: $01 $94 $95
    add b                                         ; $4389: $80
    nop                                           ; $438a: $00
    or [hl]                                       ; $438b: $b6
    ld b, b                                       ; $438c: $40
    add b                                         ; $438d: $80
    pop af                                        ; $438e: $f1
    db $ec                                        ; $438f: $ec
    ldh [$e5], a                                  ; $4390: $e0 $e5
    or l                                          ; $4392: $b5
    ld c, c                                       ; $4393: $49
    ret nz                                        ; $4394: $c0

    scf                                           ; $4395: $37
    ld c, $80                                     ; $4396: $0e $80
    ld bc, $5554                                  ; $4398: $01 $54 $55
    add b                                         ; $439b: $80
    nop                                           ; $439c: $00
    ld c, $a8                                     ; $439d: $0e $a8
    ld b, b                                       ; $439f: $40
    add b                                         ; $43a0: $80
    pop af                                        ; $43a1: $f1
    db $ec                                        ; $43a2: $ec
    ldh [$e5], a                                  ; $43a3: $e0 $e5
    add hl, bc                                    ; $43a5: $09
    add b                                         ; $43a6: $80
    rla                                           ; $43a7: $17
    ld e, $c0                                     ; $43a8: $1e $c0
    add $1e                                       ; $43aa: $c6 $1e
    xor b                                         ; $43ac: $a8
    ret nz                                        ; $43ad: $c0

    pop bc                                        ; $43ae: $c1
    pop af                                        ; $43af: $f1
    db $eb                                        ; $43b0: $eb
    ldh [$e5], a                                  ; $43b1: $e0 $e5
    add hl, de                                    ; $43b3: $19
    nop                                           ; $43b4: $00
    ld [hl], a                                    ; $43b5: $77
    ld l, $c0                                     ; $43b6: $2e $c0
    add $2e                                       ; $43b8: $c6 $2e
    xor b                                         ; $43ba: $a8
    nop                                           ; $43bb: $00
    ld h, b                                       ; $43bc: $60
    pop af                                        ; $43bd: $f1
    db $ec                                        ; $43be: $ec
    ldh [$e5], a                                  ; $43bf: $e0 $e5
    add hl, hl                                    ; $43c1: $29
    add b                                         ; $43c2: $80
    rla                                           ; $43c3: $17
    ld a, $c0                                     ; $43c4: $3e $c0
    add $3e                                       ; $43c6: $c6 $3e
    ld d, b                                       ; $43c8: $50
    ld b, b                                       ; $43c9: $40
    add b                                         ; $43ca: $80
    pop af                                        ; $43cb: $f1
    db $ec                                        ; $43cc: $ec
    ldh [$e5], a                                  ; $43cd: $e0 $e5
    ret nz                                        ; $43cf: $c0

    ret c                                         ; $43d0: $d8

    ld c, [hl]                                    ; $43d1: $4e
    ret nz                                        ; $43d2: $c0

    add $4e                                       ; $43d3: $c6 $4e
    ret nz                                        ; $43d5: $c0

    pop bc                                        ; $43d6: $c1
    ld l, b                                       ; $43d7: $68
    pop af                                        ; $43d8: $f1
    db $eb                                        ; $43d9: $eb
    ldh [$e5], a                                  ; $43da: $e0 $e5
    ret nz                                        ; $43dc: $c0

    rst $10                                       ; $43dd: $d7
    dec b                                         ; $43de: $05
    rst $38                                       ; $43df: $ff
    ld [c], a                                     ; $43e0: $e2
    ld d, h                                       ; $43e1: $54
    ld d, l                                       ; $43e2: $55
    ld hl, sp-$1d                                 ; $43e3: $f8 $e3
    add hl, bc                                    ; $43e5: $09
    inc hl                                        ; $43e6: $23
    pop af                                        ; $43e7: $f1
    db $ec                                        ; $43e8: $ec
    ldh [$e5], a                                  ; $43e9: $e0 $e5
    ld e, c                                       ; $43eb: $59
    nop                                           ; $43ec: $00
    nop                                           ; $43ed: $00
    nop                                           ; $43ee: $00
    ld bc, $ff00                                  ; $43ef: $01 $00 $ff
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
    nop                                           ; $43ff: $00
    rst $38                                       ; $4400: $ff
    xor $00                                       ; $4401: $ee $00
    nop                                           ; $4403: $00
    nop                                           ; $4404: $00
    rst $38                                       ; $4405: $ff
    rst $38                                       ; $4406: $ff
    rst $38                                       ; $4407: $ff
    db $10                                        ; $4408: $10
    ld b, h                                       ; $4409: $44
    ld c, b                                       ; $440a: $48
    ld c, c                                       ; $440b: $49
    rra                                           ; $440c: $1f
    ld d, b                                       ; $440d: $50
    ld a, [hl-]                                   ; $440e: $3a
    ld d, b                                       ; $440f: $50
    dec [hl]                                      ; $4410: $35
    ld c, h                                       ; $4411: $4c
    rst $38                                       ; $4412: $ff
    push hl                                       ; $4413: $e5
    inc c                                         ; $4414: $0c
    rst $38                                       ; $4415: $ff
    ldh [$4c], a                                  ; $4416: $e0 $4c
    inc c                                         ; $4418: $0c
    push af                                       ; $4419: $f5
    db $e3                                        ; $441a: $e3
    di                                            ; $441b: $f3
    ldh [$e2], a                                  ; $441c: $e0 $e2
    add sp, -$20                                  ; $441e: $e8 $e0
    ld l, h                                       ; $4420: $6c
    db $fd                                        ; $4421: $fd
    ldh [$ea], a                                  ; $4422: $e0 $ea
    pop hl                                        ; $4424: $e1
    and $e1                                       ; $4425: $e6 $e1
    ld l, h                                       ; $4427: $6c
    ld l, $0e                                     ; $4428: $2e $0e
    rst $38                                       ; $442a: $ff
    ld c, $0e                                     ; $442b: $0e $0e
    dec c                                         ; $442d: $0d
    dec c                                         ; $442e: $0d
    dec c                                         ; $442f: $0d
    ld c, $0e                                     ; $4430: $0e $0e
    ld l, $00                                     ; $4432: $2e $00
    ld a, [$fde0]                                 ; $4434: $fa $e0 $fd
    push hl                                       ; $4437: $e5
    db $ec                                        ; $4438: $ec
    ldh [$ce], a                                  ; $4439: $e0 $ce
    db $e3                                        ; $443b: $e3
    cp a                                          ; $443c: $bf
    add sp, -$43                                  ; $443d: $e8 $bd
    ldh [$b8], a                                  ; $443f: $e0 $b8
    push hl                                       ; $4441: $e5
    xor h                                         ; $4442: $ac
    ld [c], a                                     ; $4443: $e2
    nop                                           ; $4444: $00
    ret nz                                        ; $4445: $c0

    db $eb                                        ; $4446: $eb
    cp [hl]                                       ; $4447: $be
    db $eb                                        ; $4448: $eb
    xor h                                         ; $4449: $ac
    ldh [$80], a                                  ; $444a: $e0 $80
    add sp, -$03                                  ; $444c: $e8 $fd
    ld [c], a                                     ; $444e: $e2
    ld [hl], b                                    ; $444f: $70
    and $82                                       ; $4450: $e6 $82
    ldh [$81], a                                  ; $4452: $e0 $81
    ld [c], a                                     ; $4454: $e2
    nop                                           ; $4455: $00
    ld a, d                                       ; $4456: $7a
    ldh [$c0], a                                  ; $4457: $e0 $c0
    jp hl                                         ; $4459: $e9


    add b                                         ; $445a: $80
    push hl                                       ; $445b: $e5
    ld [hl], a                                    ; $445c: $77
    ld [c], a                                     ; $445d: $e2
    ret nz                                        ; $445e: $c0

    ld [$eb3e], a                                 ; $445f: $ea $3e $eb
    ld b, c                                       ; $4462: $41
    pop hl                                        ; $4463: $e1
    ld b, a                                       ; $4464: $47
    ld [c], a                                     ; $4465: $e2
    inc bc                                        ; $4466: $03
    ld l, h                                       ; $4467: $6c
    ld a, [bc]                                    ; $4468: $0a
    inc hl                                        ; $4469: $23
    pop hl                                        ; $446a: $e1
    add b                                         ; $446b: $80
    rst $20                                       ; $446c: $e7
    ld b, e                                       ; $446d: $43
    add sp, $2c                                   ; $446e: $e8 $2c
    pop hl                                        ; $4470: $e1
    nop                                           ; $4471: $00
    and $53                                       ; $4472: $e6 $53
    db $e3                                        ; $4474: $e3
    ld hl, sp-$02                                 ; $4475: $f8 $fe
    jp $e42b                                      ; $4477: $c3 $2b $e4


    ld [bc], a                                    ; $447a: $02
    pop hl                                        ; $447b: $e1
    ld c, h                                       ; $447c: $4c
    dec hl                                        ; $447d: $2b
    dec bc                                        ; $447e: $0b
    dec hl                                        ; $447f: $2b
    dec bc                                        ; $4480: $0b
    ld b, $f4                                     ; $4481: $06 $f4
    ret nz                                        ; $4483: $c0

    ld c, [hl]                                    ; $4484: $4e
    ld l, $85                                     ; $4485: $2e $85
    push hl                                       ; $4487: $e5
    ld [hl], a                                    ; $4488: $77
    db $eb                                        ; $4489: $eb
    sub $c2                                       ; $448a: $d6 $c2
    inc de                                        ; $448c: $13
    db $ec                                        ; $448d: $ec
    inc sp                                        ; $448e: $33
    ld [c], a                                     ; $448f: $e2
    halt                                          ; $4490: $76
    xor l                                         ; $4491: $ad
    push bc                                       ; $4492: $c5
    dec bc                                        ; $4493: $0b
    dec bc                                        ; $4494: $0b
    cp a                                          ; $4495: $bf
    ldh [$0b], a                                  ; $4496: $e0 $0b
    dec c                                         ; $4498: $0d
    dec bc                                        ; $4499: $0b
    cp a                                          ; $449a: $bf
    ldh [$80], a                                  ; $449b: $e0 $80
    call Call_05e_77c4                            ; $449d: $cd $c4 $77
    rst $20                                       ; $44a0: $e7
    or e                                          ; $44a1: $b3
    ret nz                                        ; $44a2: $c0

    ret nz                                        ; $44a3: $c0

    rst $20                                       ; $44a4: $e7
    jp nc, $c1c5                                  ; $44a5: $d2 $c5 $c1

    call nz, $e308                                ; $44a8: $c4 $08 $e3
    inc c                                         ; $44ab: $0c
    rst $38                                       ; $44ac: $ff
    inc l                                         ; $44ad: $2c
    ld c, e                                       ; $44ae: $4b
    ld c, e                                       ; $44af: $4b
    ld c, e                                       ; $44b0: $4b
    dec bc                                        ; $44b1: $0b
    dec hl                                        ; $44b2: $2b
    ld a, [bc]                                    ; $44b3: $0a
    dec c                                         ; $44b4: $0d
    add b                                         ; $44b5: $80
    cp a                                          ; $44b6: $bf
    push hl                                       ; $44b7: $e5
    ret nz                                        ; $44b8: $c0

    rst $20                                       ; $44b9: $e7
    ld [hl], l                                    ; $44ba: $75
    jp $e9c0                                      ; $44bb: $c3 $c0 $e9


    dec a                                         ; $44be: $3d
    and $41                                       ; $44bf: $e6 $41
    pop bc                                        ; $44c1: $c1
    ret nz                                        ; $44c2: $c0

    call nz, $ff2c                                ; $44c3: $c4 $2c $ff
    inc c                                         ; $44c6: $0c
    inc l                                         ; $44c7: $2c
    inc l                                         ; $44c8: $2c
    ld c, e                                       ; $44c9: $4b
    ld l, e                                       ; $44ca: $6b
    dec bc                                        ; $44cb: $0b
    dec hl                                        ; $44cc: $2b
    dec c                                         ; $44cd: $0d
    inc bc                                        ; $44ce: $03
    dec bc                                        ; $44cf: $0b
    dec c                                         ; $44d0: $0d
    ld a, $e0                                     ; $44d1: $3e $e0
    rst $38                                       ; $44d3: $ff
    db $e4                                        ; $44d4: $e4
    cp $c7                                        ; $44d5: $fe $c7
    ld b, b                                       ; $44d7: $40
    rst $20                                       ; $44d8: $e7
    ld bc, $fbc2                                  ; $44d9: $01 $c2 $fb
    db $e3                                        ; $44dc: $e3
    ld a, [c]                                     ; $44dd: $f2
    ld [hl], e                                    ; $44de: $73
    jp nz, Jump_05e_7f6c                          ; $44df: $c2 $6c $7f

    pop bc                                        ; $44e2: $c1
    inc b                                         ; $44e3: $04
    jp Jump_05e_6b0a                              ; $44e4: $c3 $0a $6b


    ld l, e                                       ; $44e7: $6b
    ld l, e                                       ; $44e8: $6b
    inc hl                                        ; $44e9: $23
    dec bc                                        ; $44ea: $0b
    dec c                                         ; $44eb: $0d
    ret nz                                        ; $44ec: $c0

    db $e3                                        ; $44ed: $e3
    ld c, b                                       ; $44ee: $48
    push hl                                       ; $44ef: $e5
    ld a, [c]                                     ; $44f0: $f2
    and h                                         ; $44f1: $a4
    ld c, $40                                     ; $44f2: $0e $40
    db $ed                                        ; $44f4: $ed
    inc bc                                        ; $44f5: $03
    rst $00                                       ; $44f6: $c7
    dec d                                         ; $44f7: $15
    ld l, h                                       ; $44f8: $6c
    dec a                                         ; $44f9: $3d
    ld [c], a                                     ; $44fa: $e2
    inc l                                         ; $44fb: $2c
    call nz, $0ba0                                ; $44fc: $c4 $a0 $0b
    ret nz                                        ; $44ff: $c0

    jp hl                                         ; $4500: $e9


    cp d                                          ; $4501: $ba

Jump_05e_4502:
    add $c0                                       ; $4502: $c6 $c0
    push hl                                       ; $4504: $e5
    ret nc                                        ; $4505: $d0

    cp a                                          ; $4506: $bf
    rst $08                                       ; $4507: $cf
    ld [hl], h                                    ; $4508: $74
    ld [c], a                                     ; $4509: $e2
    ld a, a                                       ; $450a: $7f
    ldh [$fd], a                                  ; $450b: $e0 $fd
    and c                                         ; $450d: $a1
    inc l                                         ; $450e: $2c
    ccf                                           ; $450f: $3f
    pop hl                                        ; $4510: $e1
    dec hl                                        ; $4511: $2b
    ld c, e                                       ; $4512: $4b
    inc bc                                        ; $4513: $03
    ld a, [bc]                                    ; $4514: $0a
    dec hl                                        ; $4515: $2b
    ld b, b                                       ; $4516: $40
    db $e4                                        ; $4517: $e4
    add l                                         ; $4518: $85
    and a                                         ; $4519: $a7
    or l                                          ; $451a: $b5
    jp $e6c0                                      ; $451b: $c3 $c0 $e6


    ld de, $81c3                                  ; $451e: $11 $c3 $81
    jp Jump_05e_40f0                              ; $4521: $c3 $f0 $40


    db $e3                                        ; $4524: $e3
    add $a2                                       ; $4525: $c6 $a2
    add b                                         ; $4527: $80
    ldh [$fc], a                                  ; $4528: $e0 $fc
    ret nz                                        ; $452a: $c0

    ld l, e                                       ; $452b: $6b
    dec hl                                        ; $452c: $2b
    dec hl                                        ; $452d: $2b
    ld a, [bc]                                    ; $452e: $0a
    ld bc, $c00b                                  ; $452f: $01 $0b $c0
    push bc                                       ; $4532: $c5
    ld b, d                                       ; $4533: $42
    xor b                                         ; $4534: $a8
    ld b, b                                       ; $4535: $40

Jump_05e_4536:
    rst $28                                       ; $4536: $ef
    ld b, b                                       ; $4537: $40
    push bc                                       ; $4538: $c5
    rst $38                                       ; $4539: $ff
    ret nz                                        ; $453a: $c0

    db $eb                                        ; $453b: $eb
    ret z                                         ; $453c: $c8

    ret nz                                        ; $453d: $c0

    ldh [rSB], a                                  ; $453e: $e0 $01
    dec bc                                        ; $4540: $0b

Call_05e_4541:
    ret nz                                        ; $4541: $c0

    ldh a, [$ef]                                  ; $4542: $f0 $ef
    add b                                         ; $4544: $80
    ret nz                                        ; $4545: $c0

Jump_05e_4546:
    and a                                         ; $4546: $a7
    ret nz                                        ; $4547: $c0

    db $eb                                        ; $4548: $eb
    ld b, b                                       ; $4549: $40
    pop hl                                        ; $454a: $e1
    rst $38                                       ; $454b: $ff
    add [hl]                                      ; $454c: $86
    ld a, l                                       ; $454d: $7d
    ret nz                                        ; $454e: $c0

    rlca                                          ; $454f: $07
    dec hl                                        ; $4550: $2b
    dec bc                                        ; $4551: $0b
    ld a, [bc]                                    ; $4552: $0a
    cp $a2                                        ; $4553: $fe $a2
    ld b, b                                       ; $4555: $40
    call $a741                                    ; $4556: $cd $41 $a7
    ld a, a                                       ; $4559: $7f
    and l                                         ; $455a: $a5
    push bc                                       ; $455b: $c5
    and h                                         ; $455c: $a4
    db $ec                                        ; $455d: $ec
    cp $83                                        ; $455e: $fe $83
    cp a                                          ; $4560: $bf
    push hl                                       ; $4561: $e5
    inc c                                         ; $4562: $0c
    ld c, e                                       ; $4563: $4b
    ld a, [hl]                                    ; $4564: $7e
    ldh [$4e], a                                  ; $4565: $e0 $4e
    ld c, [hl]                                    ; $4567: $4e
    ld c, [hl]                                    ; $4568: $4e

jr_05e_4569:
    ld [$8179], sp                                ; $4569: $08 $79 $81
    ld [hl], a                                    ; $456c: $77
    add c                                         ; $456d: $81
    ei                                            ; $456e: $fb
    db $e4                                        ; $456f: $e4
    ld l, $80                                     ; $4570: $2e $80
    db $f4                                        ; $4572: $f4
    ccf                                           ; $4573: $3f
    add [hl]                                      ; $4574: $86
    ld [bc], a                                    ; $4575: $02
    ld [c], a                                     ; $4576: $e2
    dec h                                         ; $4577: $25
    add c                                         ; $4578: $81
    rrca                                          ; $4579: $0f
    ld c, e                                       ; $457a: $4b
    ld c, e                                       ; $457b: $4b
    ld l, e                                       ; $457c: $6b
    ld c, e                                       ; $457d: $4b
    ld [hl], l                                    ; $457e: $75
    and b                                         ; $457f: $a0
    ld a, d                                       ; $4580: $7a
    and c                                         ; $4581: $a1
    ret nz                                        ; $4582: $c0

    push hl                                       ; $4583: $e5
    add b                                         ; $4584: $80
    ld [$0160], a                                 ; $4585: $ea $60 $01
    db $ed                                        ; $4588: $ed
    adc b                                         ; $4589: $88
    add b                                         ; $458a: $80
    cp $a7                                        ; $458b: $fe $a7
    ld a, $e1                                     ; $458d: $3e $e1
    cp c                                          ; $458f: $b9
    ld [c], a                                     ; $4590: $e2
    inc l                                         ; $4591: $2c
    inc l                                         ; $4592: $2c
    add hl, sp                                    ; $4593: $39
    and a                                         ; $4594: $a7
    nop                                           ; $4595: $00
    ld hl, sp+$63                                 ; $4596: $f8 $63
    jp nz, Jump_000_00cf                          ; $4598: $c2 $cf $00

    and d                                         ; $459b: $a2
    add hl, sp                                    ; $459c: $39
    add a                                         ; $459d: $87
    cp [hl]                                       ; $459e: $be
    ld h, [hl]                                    ; $459f: $66
    ld sp, $39c4                                  ; $45a0: $31 $c4 $39
    and [hl]                                      ; $45a3: $a6
    ret nz                                        ; $45a4: $c0

    db $eb                                        ; $45a5: $eb
    jr jr_05e_4569                                ; $45a6: $18 $c1

    db $eb                                        ; $45a8: $eb
    xor d                                         ; $45a9: $aa
    ld h, a                                       ; $45aa: $67
    jp hl                                         ; $45ab: $e9


    add a                                         ; $45ac: $87
    dec bc                                        ; $45ad: $0b

Jump_05e_45ae:
    ld a, [bc]                                    ; $45ae: $0a
    or l                                          ; $45af: $b5
    add b                                         ; $45b0: $80
    cp a                                          ; $45b1: $bf
    pop hl                                        ; $45b2: $e1
    rst $38                                       ; $45b3: $ff
    ld [$8324], a                                 ; $45b4: $ea $24 $83
    xor $80                                       ; $45b7: $ee $80
    push af                                       ; $45b9: $f5
    ld c, h                                       ; $45ba: $4c
    cp [hl]                                       ; $45bb: $be
    ret nz                                        ; $45bc: $c0

    cp e                                          ; $45bd: $bb
    and b                                         ; $45be: $a0
    ld c, h                                       ; $45bf: $4c
    pop af                                        ; $45c0: $f1
    jp $cbd4                                      ; $45c1: $c3 $d4 $cb


    ld [c], a                                     ; $45c4: $e2
    pop bc                                        ; $45c5: $c1
    jp hl                                         ; $45c6: $e9


    inc l                                         ; $45c7: $2c
    ld a, a                                       ; $45c8: $7f
    adc b                                         ; $45c9: $88
    inc a                                         ; $45ca: $3c
    ld l, d                                       ; $45cb: $6a
    ld a, [hl]                                    ; $45cc: $7e
    ret nz                                        ; $45cd: $c0

    ld a, [bc]                                    ; $45ce: $0a
    ld c, e                                       ; $45cf: $4b
    dec c                                         ; $45d0: $0d
    ld b, b                                       ; $45d1: $40
    ld [hl], b                                    ; $45d2: $70
    ld h, c                                       ; $45d3: $61
    cp $e9                                        ; $45d4: $fe $e9
    add [hl]                                      ; $45d6: $86
    db $eb                                        ; $45d7: $eb
    ld a, l                                       ; $45d8: $7d
    xor b                                         ; $45d9: $a8
    pop bc                                        ; $45da: $c1
    db $ed                                        ; $45db: $ed
    ld a, [hl]                                    ; $45dc: $7e
    pop bc                                        ; $45dd: $c1
    ld l, e                                       ; $45de: $6b
    or [hl]                                       ; $45df: $b6
    ld b, c                                       ; $45e0: $41
    nop                                           ; $45e1: $00
    ld a, e                                       ; $45e2: $7b
    add l                                         ; $45e3: $85
    ld [hl], e                                    ; $45e4: $73
    add e                                         ; $45e5: $83
    call nz, Call_000_00f2                        ; $45e6: $c4 $f2 $00
    ld h, l                                       ; $45e9: $65
    cp l                                          ; $45ea: $bd
    ld b, [hl]                                    ; $45eb: $46
    ld [hl], e                                    ; $45ec: $73
    add b                                         ; $45ed: $80
    ld a, a                                       ; $45ee: $7f
    pop bc                                        ; $45ef: $c1
    ld h, h                                       ; $45f0: $64
    ldh [$83], a                                  ; $45f1: $e0 $83
    ld l, h                                       ; $45f3: $6c
    ld c, e                                       ; $45f4: $4b
    cp d                                          ; $45f5: $ba

jr_05e_45f6:
    and e                                         ; $45f6: $a3
    ret nz                                        ; $45f7: $c0

    ld h, a                                       ; $45f8: $67
    add h                                         ; $45f9: $84
    ldh a, [rSB]                                  ; $45fa: $f0 $01
    add h                                         ; $45fc: $84
    db $ed                                        ; $45fd: $ed
    ld h, [hl]                                    ; $45fe: $66
    ld l, h                                       ; $45ff: $6c
    add hl, de                                    ; $4600: $19
    ld l, h                                       ; $4601: $6c
    ld d, a                                       ; $4602: $57

Jump_05e_4603:
    and d                                         ; $4603: $a2
    xor [hl]                                      ; $4604: $ae
    add b                                         ; $4605: $80
    ld l, h                                       ; $4606: $6c
    ld l, h                                       ; $4607: $6c

Call_05e_4608:
    ld sp, hl                                     ; $4608: $f9
    add b                                         ; $4609: $80
    rlca                                          ; $460a: $07
    ld h, c                                       ; $460b: $61
    ld a, [hl-]                                   ; $460c: $3a
    ld b, l                                       ; $460d: $45
    ret nz                                        ; $460e: $c0

    ld b, b                                       ; $460f: $40
    db $ec                                        ; $4610: $ec
    ld [bc], a                                    ; $4611: $02
    pop hl                                        ; $4612: $e1
    ld b, c                                       ; $4613: $41
    add sp, $02                                   ; $4614: $e8 $02
    ld b, l                                       ; $4616: $45
    ld b, $40                                     ; $4617: $06 $40
    ld a, e                                       ; $4619: $7b
    ld h, c                                       ; $461a: $61
    dec bc                                        ; $461b: $0b
    dec bc                                        ; $461c: $0b
    inc hl                                        ; $461d: $23
    inc l                                         ; $461e: $2c
    ld c, h                                       ; $461f: $4c
    cp c                                          ; $4620: $b9
    add d                                         ; $4621: $82
    or h                                          ; $4622: $b4
    ld b, l                                       ; $4623: $45
    ld b, b                                       ; $4624: $40
    db $ed                                        ; $4625: $ed
    inc l                                         ; $4626: $2c
    ld d, c                                       ; $4627: $51
    ld b, d                                       ; $4628: $42
    or h                                          ; $4629: $b4
    jr nz, jr_05e_45f6                            ; $462a: $20 $ca

    jp $4ccb                                      ; $462c: $c3 $cb $4c


    add $e0                                       ; $462f: $c6 $e0
    ld l, e                                       ; $4631: $6b
    ld a, $80                                     ; $4632: $3e $80
    ld [hl-], a                                   ; $4634: $32
    ld b, c                                       ; $4635: $41
    ld c, $6e                                     ; $4636: $0e $6e
    add b                                         ; $4638: $80
    ld sp, hl                                     ; $4639: $f9
    ld b, l                                       ; $463a: $45
    ccf                                           ; $463b: $3f
    ld b, d                                       ; $463c: $42
    ld [hl], c                                    ; $463d: $71
    call z, Call_05e_643c                         ; $463e: $cc $3c $64
    xor d                                         ; $4641: $aa
    ld b, l                                       ; $4642: $45
    inc b                                         ; $4643: $04
    add $44                                       ; $4644: $c6 $44

Jump_05e_4646:
    ret nz                                        ; $4646: $c0

    ld l, e                                       ; $4647: $6b
    ld bc, $324b                                  ; $4648: $01 $4b $32
    ld b, c                                       ; $464b: $41
    pop bc                                        ; $464c: $c1
    ldh [$ba], a                                  ; $464d: $e0 $ba
    ld h, d                                       ; $464f: $62
    ld bc, $c0a3                                  ; $4650: $01 $a3 $c0
    ld [$a317], a                                 ; $4653: $ea $17 $a3
    ld c, l                                       ; $4656: $4d
    inc hl                                        ; $4657: $23
    ld a, h                                       ; $4658: $7c
    ld b, d                                       ; $4659: $42
    jp $c62c                                      ; $465a: $c3 $2c $c6


    ld l, e                                       ; $465d: $6b
    ld l, e                                       ; $465e: $6b
    ld c, e                                       ; $465f: $4b
    ld l, e                                       ; $4660: $6b
    ld a, [bc]                                    ; $4661: $0a
    halt                                          ; $4662: $76
    ld h, c                                       ; $4663: $61
    nop                                           ; $4664: $00
    add d                                         ; $4665: $82
    pop hl                                        ; $4666: $e1
    ret nz                                        ; $4667: $c0

    db $e4                                        ; $4668: $e4
    ld [hl], $23                                  ; $4669: $36 $23
    ld b, $c9                                     ; $466b: $06 $c9
    ld sp, hl                                     ; $466d: $f9
    ld b, $02                                     ; $466e: $06 $02
    db $eb                                        ; $4670: $eb
    ld [bc], a                                    ; $4671: $02
    and [hl]                                      ; $4672: $a6
    ld b, l                                       ; $4673: $45
    ret nz                                        ; $4674: $c0

    nop                                           ; $4675: $00
    ld b, e                                       ; $4676: $43
    pop hl                                        ; $4677: $e1
    or [hl]                                       ; $4678: $b6
    ld a, [hl+]                                   ; $4679: $2a
    add e                                         ; $467a: $83
    add sp, -$7a                                  ; $467b: $e8 $86
    ld h, $ee                                     ; $467d: $26 $ee
    dec hl                                        ; $467f: $2b
    jr c, jr_05e_46e5                             ; $4680: $38 $63

    jr nc, jr_05e_46e5                            ; $4682: $30 $61

    ld b, h                                       ; $4684: $44
    and $80                                       ; $4685: $e6 $80
    jp nz, $c0c6                                  ; $4687: $c2 $c6 $c0

    ld hl, $611e                                  ; $468a: $21 $1e $61
    xor d                                         ; $468d: $aa
    and h                                         ; $468e: $a4
    ld de, $8723                                  ; $468f: $11 $23 $87
    ld [bc], a                                    ; $4692: $02
    ld l, [hl]                                    ; $4693: $6e
    daa                                           ; $4694: $27
    ld l, h                                       ; $4695: $6c
    call z, $6005                                 ; $4696: $cc $05 $60
    ld a, e                                       ; $4699: $7b
    jr nz, @+$0c                                  ; $469a: $20 $0a

    ld a, [bc]                                    ; $469c: $0a
    ld b, h                                       ; $469d: $44
    push hl                                       ; $469e: $e5
    ld b, d                                       ; $469f: $42

Call_05e_46a0:
    ld l, b                                       ; $46a0: $68
    dec c                                         ; $46a1: $0d
    dec c                                         ; $46a2: $0d
    or b                                          ; $46a3: $b0
    ret nz                                        ; $46a4: $c0

    call $a861                                    ; $46a5: $cd $61 $a8
    ld b, e                                       ; $46a8: $43
    nop                                           ; $46a9: $00
    ld a, [hl-]                                   ; $46aa: $3a
    ld b, c                                       ; $46ab: $41
    inc l                                         ; $46ac: $2c
    inc c                                         ; $46ad: $0c

Jump_05e_46ae:
    ret nz                                        ; $46ae: $c0

    ldh [$0a], a                                  ; $46af: $e0 $0a
    rlca                                          ; $46b1: $07
    ld c, e                                       ; $46b2: $4b
    ld a, [bc]                                    ; $46b3: $0a
    ld a, [bc]                                    ; $46b4: $0a
    call nz, $8763                                ; $46b5: $c4 $63 $87
    jp Jump_000_2677                              ; $46b8: $c3 $77 $26


    ld b, c                                       ; $46bb: $41
    dec hl                                        ; $46bc: $2b
    ld a, [bc]                                    ; $46bd: $0a
    and [hl]                                      ; $46be: $a6
    ld e, [hl]                                    ; $46bf: $5e
    ld [hl], d                                    ; $46c0: $72
    push hl                                       ; $46c1: $e5
    ld l, h                                       ; $46c2: $6c
    dec bc                                        ; $46c3: $0b
    dec hl                                        ; $46c4: $2b
    ld l, h                                       ; $46c5: $6c
    add h                                         ; $46c6: $84
    ld h, c                                       ; $46c7: $61
    dec hl                                        ; $46c8: $2b
    jp $8060                                      ; $46c9: $c3 $60 $80


    ret nz                                        ; $46cc: $c0

    db $e4                                        ; $46cd: $e4
    add h                                         ; $46ce: $84
    rlca                                          ; $46cf: $07
    nop                                           ; $46d0: $00
    add e                                         ; $46d1: $83
    ld de, $4783                                  ; $46d2: $11 $83 $47
    push bc                                       ; $46d5: $c5
    cp a                                          ; $46d6: $bf
    add sp, $49                                   ; $46d7: $e8 $49
    ld bc, $372b                                  ; $46d9: $01 $2b $37
    dec hl                                        ; $46dc: $2b
    dec c                                         ; $46dd: $0d
    ld l, h                                       ; $46de: $6c
    ld a, a                                       ; $46df: $7f
    ld hl, $4b6b                                  ; $46e0: $21 $6b $4b
    add b                                         ; $46e3: $80
    ld b, b                                       ; $46e4: $40

jr_05e_46e5:
    dec a                                         ; $46e5: $3d
    ld a, [bc]                                    ; $46e6: $0a
    ldh a, [$c0]                                  ; $46e7: $f0 $c0
    and $c3                                       ; $46e9: $e6 $c3
    ld a, [bc]                                    ; $46eb: $0a
    dec b                                         ; $46ec: $05
    xor b                                         ; $46ed: $a8
    adc [hl]                                      ; $46ee: $8e
    jp nz, Jump_000_2b6b                          ; $46ef: $c2 $6b $2b

    dec c                                         ; $46f2: $0d
    dec hl                                        ; $46f3: $2b
    inc c                                         ; $46f4: $0c
    db $fc                                        ; $46f5: $fc
    jr nz, jr_05e_46fd                            ; $46f6: $20 $05

    add c                                         ; $46f8: $81
    ld c, $6e                                     ; $46f9: $0e $6e
    ld b, h                                       ; $46fb: $44
    dec hl                                        ; $46fc: $2b

jr_05e_46fd:
    nop                                           ; $46fd: $00
    dec h                                         ; $46fe: $25
    call nz, Call_05e_71aa                        ; $46ff: $c4 $aa $71
    ld c, h                                       ; $4702: $4c
    ld d, $87                                     ; $4703: $16 $87
    and b                                         ; $4705: $a0
    dec hl                                        ; $4706: $2b
    ld a, [bc]                                    ; $4707: $0a
    cp a                                          ; $4708: $bf
    ldh [$0c], a                                  ; $4709: $e0 $0c
    pop bc                                        ; $470b: $c1
    pop hl                                        ; $470c: $e1
    add c                                         ; $470d: $81
    ld a, [bc]                                    ; $470e: $0a
    ret nz                                        ; $470f: $c0

    ld b, l                                       ; $4710: $45
    ret nc                                        ; $4711: $d0

    adc e                                         ; $4712: $8b
    jr z, jr_05e_471b                             ; $4713: $28 $06

    and [hl]                                      ; $4715: $a6
    ld b, $27                                     ; $4716: $06 $27
    ld b, a                                       ; $4718: $47
    and b                                         ; $4719: $a0
    ld l, e                                       ; $471a: $6b

jr_05e_471b:
    ld b, a                                       ; $471b: $47
    and b                                         ; $471c: $a0
    ld l, h                                       ; $471d: $6c
    inc c                                         ; $471e: $0c
    nop                                           ; $471f: $00
    add d                                         ; $4720: $82
    pop hl                                        ; $4721: $e1
    ld b, c                                       ; $4722: $41
    ld b, [hl]                                    ; $4723: $46
    adc b                                         ; $4724: $88
    and c                                         ; $4725: $a1
    ld [hl], $25                                  ; $4726: $36 $25
    sub c                                         ; $4728: $91
    add h                                         ; $4729: $84
    ret z                                         ; $472a: $c8

    and h                                         ; $472b: $a4
    jr @-$3b                                      ; $472c: $18 $c3

    pop bc                                        ; $472e: $c1
    and $17                                       ; $472f: $e6 $17
    ld l, h                                       ; $4731: $6c
    dec bc                                        ; $4732: $0b
    dec bc                                        ; $4733: $0b
    call nz, Call_05e_4b01                        ; $4734: $c4 $01 $4b
    adc d                                         ; $4737: $8a
    add d                                         ; $4738: $82
    ld b, $e4                                     ; $4739: $06 $e4
    ld b, c                                       ; $473b: $41
    ld b, h                                       ; $473c: $44
    ret nz                                        ; $473d: $c0

    cp [hl]                                       ; $473e: $be
    and l                                         ; $473f: $a5
    or h                                          ; $4740: $b4
    ld l, d                                       ; $4741: $6a
    jp $c1e4                                      ; $4742: $c3 $e4 $c1


    rst $20                                       ; $4745: $e7
    ld a, [bc]                                    ; $4746: $0a
    and b                                         ; $4747: $a0
    push bc                                       ; $4748: $c5
    pop bc                                        ; $4749: $c1
    dec hl                                        ; $474a: $2b
    inc c                                         ; $474b: $0c
    add b                                         ; $474c: $80
    adc d                                         ; $474d: $8a

jr_05e_474e:
    add e                                         ; $474e: $83
    cp a                                          ; $474f: $bf
    inc h                                         ; $4750: $24
    ret nz                                        ; $4751: $c0

    push af                                       ; $4752: $f5
    inc c                                         ; $4753: $0c
    add l                                         ; $4754: $85
    push bc                                       ; $4755: $c5
    jp $e182                                      ; $4756: $c3 $82 $e1


    adc b                                         ; $4759: $88
    pop bc                                        ; $475a: $c1
    ld a, [bc]                                    ; $475b: $0a
    nop                                           ; $475c: $00
    jp $c080                                      ; $475d: $c3 $80 $c0


    pop hl                                        ; $4760: $e1
    adc c                                         ; $4761: $89
    xor d                                         ; $4762: $aa
    ccf                                           ; $4763: $3f
    and [hl]                                      ; $4764: $a6
    ld [hl-], a                                   ; $4765: $32
    ld l, e                                       ; $4766: $6b
    adc [hl]                                      ; $4767: $8e
    ld l, c                                       ; $4768: $69
    adc l                                         ; $4769: $8d
    ret nz                                        ; $476a: $c0

    adc d                                         ; $476b: $8a
    ret nz                                        ; $476c: $c0

    nop                                           ; $476d: $00
    ret nz                                        ; $476e: $c0

    db $ec                                        ; $476f: $ec
    ld b, b                                       ; $4770: $40
    and h                                         ; $4771: $a4
    add hl, sp                                    ; $4772: $39
    ld b, $c0                                     ; $4773: $06 $c0
    xor $fe                                       ; $4775: $ee $fe
    ld b, [hl]                                    ; $4777: $46
    pop bc                                        ; $4778: $c1
    db $e3                                        ; $4779: $e3
    adc e                                         ; $477a: $8b
    jr nz, @+$81                                  ; $477b: $20 $7f

    ret nz                                        ; $477d: $c0

    db $10                                        ; $477e: $10
    ret nz                                        ; $477f: $c0

    ldh a, [rPCM34]                               ; $4780: $f0 $77
    push hl                                       ; $4782: $e5
    add c                                         ; $4783: $81
    db $f4                                        ; $4784: $f4
    ret nz                                        ; $4785: $c0

    ld [c], a                                     ; $4786: $e2
    ld a, [bc]                                    ; $4787: $0a
    ld c, h                                       ; $4788: $4c
    jr nz, jr_05e_474e                            ; $4789: $20 $c3

    ldh [rOBP0], a                                ; $478b: $e0 $48
    ld b, b                                       ; $478d: $40
    ld bc, $0a0c                                  ; $478e: $01 $0c $0a
    ld h, b                                       ; $4791: $60
    ld [$0127], sp                                ; $4792: $08 $27 $01
    ld h, [hl]                                    ; $4795: $66
    cp [hl]                                       ; $4796: $be
    and b                                         ; $4797: $a0
    ld e, d                                       ; $4798: $5a
    ld b, l                                       ; $4799: $45
    dec c                                         ; $479a: $0d
    inc h                                         ; $479b: $24
    add hl, sp                                    ; $479c: $39
    ld b, a                                       ; $479d: $47
    ld b, $4f                                     ; $479e: $06 $4f
    and b                                         ; $47a0: $a0
    ld l, e                                       ; $47a1: $6b
    ld c, e                                       ; $47a2: $4b
    call $9f60                                    ; $47a3: $cd $60 $9f
    add h                                         ; $47a6: $84
    ld c, b                                       ; $47a7: $48
    dec l                                         ; $47a8: $2d
    nop                                           ; $47a9: $00
    and l                                         ; $47aa: $a5
    add hl, sp                                    ; $47ab: $39
    ld d, c                                       ; $47ac: $51
    nop                                           ; $47ad: $00
    rlca                                          ; $47ae: $07
    ld hl, $a14b                                  ; $47af: $21 $4b $a1
    ld sp, $43a2                                  ; $47b2: $31 $a2 $43
    add d                                         ; $47b5: $82
    rst $38                                       ; $47b6: $ff
    and b                                         ; $47b7: $a0
    adc c                                         ; $47b8: $89
    ld hl, $43c5                                  ; $47b9: $21 $c5 $43
    ld b, c                                       ; $47bc: $41
    dec b                                         ; $47bd: $05
    ld c, b                                       ; $47be: $48
    dec a                                         ; $47bf: $3d
    ld h, d                                       ; $47c0: $62
    nop                                           ; $47c1: $00
    ld d, b                                       ; $47c2: $50
    add hl, bc                                    ; $47c3: $09
    pop bc                                        ; $47c4: $c1
    dec hl                                        ; $47c5: $2b
    dec a                                         ; $47c6: $3d
    ld [bc], a                                    ; $47c7: $02
    cp e                                          ; $47c8: $bb
    jp nz, $f42b                                  ; $47c9: $c2 $2b $f4

    ldh [rP1], a                                  ; $47cc: $e0 $00
    db $fc                                        ; $47ce: $fc
    add b                                         ; $47cf: $80
    rst $18                                       ; $47d0: $df
    ld h, b                                       ; $47d1: $60
    add d                                         ; $47d2: $82
    inc b                                         ; $47d3: $04
    inc a                                         ; $47d4: $3c

Call_05e_47d5:
    push hl                                       ; $47d5: $e5
    add hl, sp                                    ; $47d6: $39
    ld [bc], a                                    ; $47d7: $02
    rrca                                          ; $47d8: $0f
    ld h, [hl]                                    ; $47d9: $66
    ret c                                         ; $47da: $d8

    ld [$c288], sp                                ; $47db: $08 $88 $c2
    nop                                           ; $47de: $00
    add c                                         ; $47df: $81
    jp nz, $8450                                  ; $47e0: $c2 $50 $84

    xor d                                         ; $47e3: $aa
    and e                                         ; $47e4: $a3
    ld a, d                                       ; $47e5: $7a
    ld h, b                                       ; $47e6: $60
    ld a, l                                       ; $47e7: $7d
    ldh [$c0], a                                  ; $47e8: $e0 $c0
    jp hl                                         ; $47ea: $e9


    ld b, b                                       ; $47eb: $40
    and d                                         ; $47ec: $a2
    sbc l                                         ; $47ed: $9d
    inc h                                         ; $47ee: $24
    db $e4                                        ; $47ef: $e4
    rst $30                                       ; $47f0: $f7
    ld b, h                                       ; $47f1: $44
    jp nz, Jump_05e_6be4                          ; $47f2: $c2 $e4 $6b

    db $d3                                        ; $47f5: $d3
    ld bc, $a40c                                  ; $47f6: $01 $0c $a4
    dec c                                         ; $47f9: $0d
    ld c, [hl]                                    ; $47fa: $4e
    ld l, $3d                                     ; $47fb: $2e $3d
    dec bc                                        ; $47fd: $0b
    xor l                                         ; $47fe: $ad

Jump_05e_47ff:
    inc hl                                        ; $47ff: $23
    inc l                                         ; $4800: $2c
    inc l                                         ; $4801: $2c
    dec bc                                        ; $4802: $0b
    ld c, [hl]                                    ; $4803: $4e
    cp e                                          ; $4804: $bb
    adc c                                         ; $4805: $89
    nop                                           ; $4806: $00
    ld c, h                                       ; $4807: $4c
    ld a, b                                       ; $4808: $78
    ld [$92e1], sp                                ; $4809: $08 $e1 $92
    ld h, b                                       ; $480c: $60
    jp z, Jump_05e_4ba1                           ; $480d: $ca $a1 $4b

    ld c, e                                       ; $4810: $4b
    dec bc                                        ; $4811: $0b
    ld a, [bc]                                    ; $4812: $0a
    ld [de], a                                    ; $4813: $12
    ld h, c                                       ; $4814: $61
    and b                                         ; $4815: $a0
    jp nc, $bf83                                  ; $4816: $d2 $83 $bf

    ldh [$84], a                                  ; $4819: $e0 $84
    ld bc, $0141                                  ; $481b: $01 $41 $01
    add c                                         ; $481e: $81
    inc c                                         ; $481f: $0c
    ld c, [hl]                                    ; $4820: $4e
    ld [hl+], a                                   ; $4821: $22
    ld a, [bc]                                    ; $4822: $0a
    dec c                                         ; $4823: $0d
    ld b, d                                       ; $4824: $42
    ld h, b                                       ; $4825: $60
    nop                                           ; $4826: $00
    inc c                                         ; $4827: $0c
    add h                                         ; $4828: $84
    db $e4                                        ; $4829: $e4
    adc a                                         ; $482a: $8f
    add e                                         ; $482b: $83
    sub d                                         ; $482c: $92
    add h                                         ; $482d: $84
    adc d                                         ; $482e: $8a
    ld [c], a                                     ; $482f: $e2
    ld l, $f7                                     ; $4830: $2e $f7
    jp nz, $cf6c                                  ; $4832: $c2 $6c $cf

    ld [de], a                                    ; $4835: $12
    dec d                                         ; $4836: $15
    and d                                         ; $4837: $a2
    dec bc                                        ; $4838: $0b

Jump_05e_4839:
    dec bc                                        ; $4839: $0b
    reti                                          ; $483a: $d9


    jr nz, jr_05e_48a9                            ; $483b: $20 $6c

    inc c                                         ; $483d: $0c
    ld e, d                                       ; $483e: $5a
    nop                                           ; $483f: $00
    nop                                           ; $4840: $00
    ld c, h                                       ; $4841: $4c
    and b                                         ; $4842: $a0
    ld d, [hl]                                    ; $4843: $56
    ld b, c                                       ; $4844: $41
    sub b                                         ; $4845: $90
    ld h, a                                       ; $4846: $67
    cp e                                          ; $4847: $bb
    db $e3                                        ; $4848: $e3
    add hl, sp                                    ; $4849: $39
    db $e4                                        ; $484a: $e4
    add b                                         ; $484b: $80
    rrca                                          ; $484c: $0f
    ld e, c                                       ; $484d: $59
    ld h, c                                       ; $484e: $61
    adc h                                         ; $484f: $8c
    ret nz                                        ; $4850: $c0

    nop                                           ; $4851: $00
    ld c, [hl]                                    ; $4852: $4e
    and c                                         ; $4853: $a1
    inc e                                         ; $4854: $1c
    pop hl                                        ; $4855: $e1
    ret nz                                        ; $4856: $c0

    ld [c], a                                     ; $4857: $e2
    sub l                                         ; $4858: $95
    push bc                                       ; $4859: $c5
    ret nz                                        ; $485a: $c0

    rst $20                                       ; $485b: $e7
    add hl, sp                                    ; $485c: $39
    db $e3                                        ; $485d: $e3
    add c                                         ; $485e: $81
    dec bc                                        ; $485f: $0b
    ld b, b                                       ; $4860: $40
    jr nz, jr_05e_4863                            ; $4861: $20 $00

jr_05e_4863:
    ld b, l                                       ; $4863: $45
    pop hl                                        ; $4864: $e1
    call nz, $05e3                                ; $4865: $c4 $e3 $05
    ldh [$d3], a                                  ; $4868: $e0 $d3
    ld h, h                                       ; $486a: $64
    sub c                                         ; $486b: $91
    ld h, b                                       ; $486c: $60
    dec e                                         ; $486d: $1d
    ld h, [hl]                                    ; $486e: $66
    dec c                                         ; $486f: $0d
    rst $00                                       ; $4870: $c7
    add hl, sp                                    ; $4871: $39

jr_05e_4872:
    ld [c], a                                     ; $4872: $e2
    ld b, b                                       ; $4873: $40
    xor l                                         ; $4874: $ad
    jp $89c0                                      ; $4875: $c3 $c0 $89


    call nc, $85c0                                ; $4878: $d4 $c0 $85
    pop hl                                        ; $487b: $e1
    inc e                                         ; $487c: $1c
    jr nz, jr_05e_48fa                            ; $487d: $20 $7b

    pop hl                                        ; $487f: $e1
    dec c                                         ; $4880: $0d
    call nc, Call_000_01a0                        ; $4881: $d4 $a0 $01
    ld a, [bc]                                    ; $4884: $0a
    ld [hl], $e0                                  ; $4885: $36 $e0
    db $dd                                        ; $4887: $dd
    ld b, h                                       ; $4888: $44
    add b                                         ; $4889: $80
    jp hl                                         ; $488a: $e9


    ld b, [hl]                                    ; $488b: $46
    ld b, [hl]                                    ; $488c: $46
    add hl, sp                                    ; $488d: $39
    ld c, e                                       ; $488e: $4b
    and e                                         ; $488f: $a3
    ret nz                                        ; $4890: $c0

    ld b, l                                       ; $4891: $45
    ld [c], a                                     ; $4892: $e2
    adc b                                         ; $4893: $88
    ld a, [hl]                                    ; $4894: $7e
    db $e3                                        ; $4895: $e3
    ret nc                                        ; $4896: $d0

    ld b, c                                       ; $4897: $41
    or $c1                                        ; $4898: $f6 $c1
    ld l, $59                                     ; $489a: $2e $59
    ld b, a                                       ; $489c: $47
    set 5, h                                      ; $489d: $cb $ec
    ret nz                                        ; $489f: $c0

    db $eb                                        ; $48a0: $eb
    ld l, $18                                     ; $48a1: $2e $18
    ld hl, $99c1                                  ; $48a3: $21 $c1 $99
    add b                                         ; $48a6: $80
    ld a, [hl]                                    ; $48a7: $7e
    push hl                                       ; $48a8: $e5

jr_05e_48a9:
    ld c, e                                       ; $48a9: $4b
    dec c                                         ; $48aa: $0d
    ret nc                                        ; $48ab: $d0

    ld b, b                                       ; $48ac: $40
    pop de                                        ; $48ad: $d1
    ld b, b                                       ; $48ae: $40
    rrca                                          ; $48af: $0f
    and a                                         ; $48b0: $a7
    add b                                         ; $48b1: $80
    adc [hl]                                      ; $48b2: $8e
    ld h, l                                       ; $48b3: $65
    ld hl, sp-$19                                 ; $48b4: $f8 $e7
    cp c                                          ; $48b6: $b9
    adc e                                         ; $48b7: $8b
    cp a                                          ; $48b8: $bf
    and $9b                                       ; $48b9: $e6 $9b
    ld [bc], a                                    ; $48bb: $02
    ld a, e                                       ; $48bc: $7b
    ret nz                                        ; $48bd: $c0

    sub [hl]                                      ; $48be: $96
    and c                                         ; $48bf: $a1
    dec bc                                        ; $48c0: $0b
    nop                                           ; $48c1: $00
    jp z, $12a0                                   ; $48c2: $ca $a0 $12

    ld h, h                                       ; $48c5: $64
    ret nz                                        ; $48c6: $c0

    db $ed                                        ; $48c7: $ed
    cp c                                          ; $48c8: $b9
    add [hl]                                      ; $48c9: $86
    jr c, jr_05e_4872                             ; $48ca: $38 $a6

    ld a, [hl]                                    ; $48cc: $7e
    db $e4                                        ; $48cd: $e4
    pop bc                                        ; $48ce: $c1
    ld [c], a                                     ; $48cf: $e2
    sub $a3                                       ; $48d0: $d6 $a3
    rrca                                          ; $48d2: $0f
    inc l                                         ; $48d3: $2c
    inc c                                         ; $48d4: $0c
    dec c                                         ; $48d5: $0d
    dec c                                         ; $48d6: $0d
    ret nz                                        ; $48d7: $c0

    db $e4                                        ; $48d8: $e4
    inc e                                         ; $48d9: $1c
    db $e3                                        ; $48da: $e3
    ld b, [hl]                                    ; $48db: $46
    ld l, a                                       ; $48dc: $6f
    ret nz                                        ; $48dd: $c0

    add sp, $00                                   ; $48de: $e8 $00
    dec a                                         ; $48e0: $3d
    db $e4                                        ; $48e1: $e4
    add d                                         ; $48e2: $82
    pop hl                                        ; $48e3: $e1
    ld e, a                                       ; $48e4: $5f

Call_05e_48e5:
    inc hl                                        ; $48e5: $23
    adc [hl]                                      ; $48e6: $8e
    ld b, c                                       ; $48e7: $41
    ret nz                                        ; $48e8: $c0

    push hl                                       ; $48e9: $e5
    sub d                                         ; $48ea: $92
    ld b, c                                       ; $48eb: $41
    sub e                                         ; $48ec: $93
    ld h, h                                       ; $48ed: $64
    ld [$d842], sp                                ; $48ee: $08 $42 $d8
    db $f4                                        ; $48f1: $f4
    rst $20                                       ; $48f2: $e7
    ld l, $88                                     ; $48f3: $2e $88
    db $fc                                        ; $48f5: $fc
    jp nz, Jump_05e_4b6b                          ; $48f6: $c2 $6b $4b

    ld h, c                                       ; $48f9: $61

jr_05e_48fa:
    call nz, Call_000_2e4e                        ; $48fa: $c4 $4e $2e
    nop                                           ; $48fd: $00
    adc [hl]                                      ; $48fe: $8e
    ld b, b                                       ; $48ff: $40
    ld d, h                                       ; $4900: $54
    add hl, bc                                    ; $4901: $09
    inc c                                         ; $4902: $0c
    ld h, $be                                     ; $4903: $26 $be
    db $e4                                        ; $4905: $e4
    ld a, $08                                     ; $4906: $3e $08
    and e                                         ; $4908: $a3
    and a                                         ; $4909: $a7
    pop bc                                        ; $490a: $c1
    ldh [rIF], a                                  ; $490b: $e0 $0f
    and b                                         ; $490d: $a0
    ld c, $17                                     ; $490e: $0e $17
    ld h, d                                       ; $4910: $62
    ld c, [hl]                                    ; $4911: $4e
    ld l, $4c                                     ; $4912: $2e $4c
    sub d                                         ; $4914: $92
    dec b                                         ; $4915: $05
    adc d                                         ; $4916: $8a
    ld h, d                                       ; $4917: $62
    inc de                                        ; $4918: $13
    ld h, h                                       ; $4919: $64
    db $f4                                        ; $491a: $f4
    and $30                                       ; $491b: $e6 $30
    cp [hl]                                       ; $491d: $be
    add a                                         ; $491e: $87
    push af                                       ; $491f: $f5

jr_05e_4920:
    inc bc                                        ; $4920: $03
    db $e4                                        ; $4921: $e4
    xor b                                         ; $4922: $a8
    xor b                                         ; $4923: $a8
    inc bc                                        ; $4924: $03
    ld c, $0c                                     ; $4925: $0e $0c
    ld b, b                                       ; $4927: $40
    pop bc                                        ; $4928: $c1
    rst $38                                       ; $4929: $ff
    and h                                         ; $492a: $a4
    nop                                           ; $492b: $00
    call c, Call_05e_42e6                         ; $492c: $dc $e6 $42
    jr z, jr_05e_4920                             ; $492f: $28 $ef

    xor h                                         ; $4931: $ac
    ld [hl-], a                                   ; $4932: $32
    rst $00                                       ; $4933: $c7
    ret nz                                        ; $4934: $c0

    and $1c                                       ; $4935: $e6 $1c
    add l                                         ; $4937: $85
    call nc, $fe47                                ; $4938: $d4 $47 $fe
    push af                                       ; $493b: $f5
    nop                                           ; $493c: $00
    cpl                                           ; $493d: $2f
    ld c, d                                       ; $493e: $4a
    ret nz                                        ; $493f: $c0

    db $ed                                        ; $4940: $ed
    adc [hl]                                      ; $4941: $8e
    ld a, [c]                                     ; $4942: $f2
    nop                                           ; $4943: $00
    add a                                         ; $4944: $87
    nop                                           ; $4945: $00
    nop                                           ; $4946: $00
    nop                                           ; $4947: $00
    rst $38                                       ; $4948: $ff
    sub a                                         ; $4949: $97
    sub a                                         ; $494a: $97
    sub a                                         ; $494b: $97
    sub l                                         ; $494c: $95
    sub l                                         ; $494d: $95
    sub [hl]                                      ; $494e: $96
    sub [hl]                                      ; $494f: $96
    sub a                                         ; $4950: $97
    rst $38                                       ; $4951: $ff
    sub a                                         ; $4952: $97
    sbc b                                         ; $4953: $98
    sbc c                                         ; $4954: $99
    sbc c                                         ; $4955: $99
    sbc c                                         ; $4956: $99
    sbc b                                         ; $4957: $98
    sbc b                                         ; $4958: $98
    sub a                                         ; $4959: $97
    rra                                           ; $495a: $1f
    sub a                                         ; $495b: $97
    sub [hl]                                      ; $495c: $96
    sub [hl]                                      ; $495d: $96
    sub [hl]                                      ; $495e: $96
    sub l                                         ; $495f: $95
    rst $38                                       ; $4960: $ff
    pop hl                                        ; $4961: $e1
    ld hl, sp-$20                                 ; $4962: $f8 $e0
    db $eb                                        ; $4964: $eb
    ldh [rIE], a                                  ; $4965: $e0 $ff
    sbc b                                         ; $4967: $98
    sbc b                                         ; $4968: $98
    sbc c                                         ; $4969: $99
    nop                                           ; $496a: $00
    ld bc, $0100                                  ; $496b: $01 $00 $01
    sbc c                                         ; $496e: $99
    rst $38                                       ; $496f: $ff
    ld [$d69e], sp                                ; $4970: $08 $9e $d6
    rst $10                                       ; $4973: $d7
    ret c                                         ; $4974: $d8

    and b                                         ; $4975: $a0
    and b                                         ; $4976: $a0
    and b                                         ; $4977: $a0
    rlca                                          ; $4978: $07
    call nc, $d4d5                                ; $4979: $d4 $d5 $d4
    ld a, [$fde0]                                 ; $497c: $fa $e0 $fd
    push hl                                       ; $497f: $e5
    db $ec                                        ; $4980: $ec
    ldh [$ce], a                                  ; $4981: $e0 $ce
    pop hl                                        ; $4983: $e1
    cp a                                          ; $4984: $bf
    db $eb                                        ; $4985: $eb
    ldh [$f0], a                                  ; $4986: $e0 $f0
    pop hl                                        ; $4988: $e1
    pop bc                                        ; $4989: $c1
    rst $20                                       ; $498a: $e7
    xor c                                         ; $498b: $a9
    ldh [$c1], a                                  ; $498c: $e0 $c1
    ldh [$c0], a                                  ; $498e: $e0 $c0
    ldh [$d9], a                                  ; $4990: $e0 $d9
    jp c, Jump_000_08db                           ; $4992: $da $db $08

    add $e2                                       ; $4995: $c6 $e2
    cp [hl]                                       ; $4997: $be
    jp hl                                         ; $4998: $e9


    db $ec                                        ; $4999: $ec
    ldh [$98], a                                  ; $499a: $e0 $98
    pop bc                                        ; $499c: $c1
    and $c0                                       ; $499d: $e6 $c0
    rst $20                                       ; $499f: $e7
    ld a, a                                       ; $49a0: $7f
    pop hl                                        ; $49a1: $e1
    add c                                         ; $49a2: $81
    and $f7                                       ; $49a3: $e6 $f7
    rrca                                          ; $49a5: $0f
    rlca                                          ; $49a6: $07
    rrca                                          ; $49a7: $0f
    ld h, [hl]                                    ; $49a8: $66
    ldh [$08], a                                  ; $49a9: $e0 $08
    sbc [hl]                                      ; $49ab: $9e
    call c, $01dd                                 ; $49ac: $dc $dd $01
    sbc $c1                                       ; $49af: $de $c1
    ld [c], a                                     ; $49b1: $e2
    add b                                         ; $49b2: $80
    db $e4                                        ; $49b3: $e4
    ld [hl], a                                    ; $49b4: $77
    ld [c], a                                     ; $49b5: $e2
    db $ec                                        ; $49b6: $ec
    ldh [$82], a                                  ; $49b7: $e0 $82
    push hl                                       ; $49b9: $e5
    ld d, l                                       ; $49ba: $55
    ld [c], a                                     ; $49bb: $e2
    ld a, $e5                                     ; $49bc: $3e $e5
    db $fc                                        ; $49be: $fc
    ld b, c                                       ; $49bf: $41
    db $e4                                        ; $49c0: $e4
    add c                                         ; $49c1: $81
    pop hl                                        ; $49c2: $e1
    rrca                                          ; $49c3: $0f
    ld [bc], a                                    ; $49c4: $02
    jp Jump_000_0403                              ; $49c5: $c3 $03 $04


    rrca                                          ; $49c8: $0f
    ld c, $40                                     ; $49c9: $0e $40
    ldh [$df], a                                  ; $49cb: $e0 $df
    ldh [$e1], a                                  ; $49cd: $e0 $e1
    ld b, [hl]                                    ; $49cf: $46
    add sp, $35                                   ; $49d0: $e8 $35
    db $e3                                        ; $49d2: $e3
    db $ec                                        ; $49d3: $ec
    ldh [rLCDC], a                                ; $49d4: $e0 $40
    add sp, -$04                                  ; $49d6: $e8 $fc
    ccf                                           ; $49d8: $3f
    jp hl                                         ; $49d9: $e9


    ld [bc], a                                    ; $49da: $02
    and $06                                       ; $49db: $e6 $06
    ld b, l                                       ; $49dd: $45
    dec hl                                        ; $49de: $2b
    dec hl                                        ; $49df: $2b
    ld b, l                                       ; $49e0: $45
    ld [bc], a                                    ; $49e1: $02
    rrca                                          ; $49e2: $0f
    rlca                                          ; $49e3: $07
    ld [bc], a                                    ; $49e4: $02
    sbc h                                         ; $49e5: $9c

Call_05e_49e6:
    sbc a                                         ; $49e6: $9f
    add l                                         ; $49e7: $85
    push hl                                       ; $49e8: $e5
    rst $30                                       ; $49e9: $f7
    jp $e577                                      ; $49ea: $c3 $77 $e5


    call $e0c2                                    ; $49ed: $cd $c2 $e0
    cp [hl]                                       ; $49f0: $be
    ret nz                                        ; $49f1: $c0

    ccf                                           ; $49f2: $3f
    db $e4                                        ; $49f3: $e4
    cp l                                          ; $49f4: $bd

jr_05e_49f5:
    jp $c2c1                                      ; $49f5: $c3 $c1 $c2


    jp nz, Jump_000_05c3                          ; $49f8: $c2 $c3 $05

    ld a, [hl+]                                   ; $49fb: $2a
    jr nz, jr_05e_4a3d                            ; $49fc: $20 $3f

    jr nz, @+$2c                                  ; $49fe: $20 $2a

    ld b, l                                       ; $4a00: $45
    ld b, [hl]                                    ; $4a01: $46
    xor [hl]                                      ; $4a02: $ae
    ld b, [hl]                                    ; $4a03: $46
    cp a                                          ; $4a04: $bf
    ldh [$c6], a                                  ; $4a05: $e0 $c6
    pop bc                                        ; $4a07: $c1
    inc bc                                        ; $4a08: $03
    ld [c], a                                     ; $4a09: $e2
    db $e3                                        ; $4a0a: $e3
    rst $30                                       ; $4a0b: $f7
    push bc                                       ; $4a0c: $c5
    inc sp                                        ; $4a0d: $33
    db $e3                                        ; $4a0e: $e3
    ret nz                                        ; $4a0f: $c0

    push hl                                       ; $4a10: $e5
    ld a, [hl]                                    ; $4a11: $7e
    call nz, $e5c0                                ; $4a12: $c4 $c0 $e5
    add d                                         ; $4a15: $82
    call nz, $99ff                                ; $4a16: $c4 $ff $99
    sbc c                                         ; $4a19: $99
    ld [bc], a                                    ; $4a1a: $02
    dec hl                                        ; $4a1b: $2b
    ld sp, $202c                                  ; $4a1c: $31 $2c $20
    ld a, [hl+]                                   ; $4a1f: $2a
    dec de                                        ; $4a20: $1b
    jp $bfaf                                      ; $4a21: $c3 $af $bf


    push hl                                       ; $4a24: $e5
    db $e4                                        ; $4a25: $e4
    push hl                                       ; $4a26: $e5
    rst $30                                       ; $4a27: $f7
    call nz, $c475                                ; $4a28: $c4 $75 $c4
    ret nz                                        ; $4a2b: $c0

    jp hl                                         ; $4a2c: $e9


    ld hl, sp+$3d                                 ; $4a2d: $f8 $3d
    add $80                                       ; $4a2f: $c6 $80
    db $e4                                        ; $4a31: $e4
    ld b, c                                       ; $4a32: $41
    pop bc                                        ; $4a33: $c1
    rrca                                          ; $4a34: $0f
    rlca                                          ; $4a35: $07
    inc b                                         ; $4a36: $04
    inc bc                                        ; $4a37: $03
    ld a, [hl+]                                   ; $4a38: $2a
    ld a, a                                       ; $4a39: $7f
    ld hl, $373d                                  ; $4a3a: $21 $3d $37

jr_05e_4a3d:
    xor a                                         ; $4a3d: $af
    ld b, [hl]                                    ; $4a3e: $46
    xor [hl]                                      ; $4a3f: $ae
    sbc [hl]                                      ; $4a40: $9e
    ld d, b                                       ; $4a41: $50
    pop bc                                        ; $4a42: $c1
    inc bc                                        ; $4a43: $03
    and $e7                                       ; $4a44: $e6 $e7
    rst $30                                       ; $4a46: $f7
    rst $00                                       ; $4a47: $c7
    inc sp                                        ; $4a48: $33
    pop bc                                        ; $4a49: $c1
    dec c                                         ; $4a4a: $0d
    pop bc                                        ; $4a4b: $c1
    ld d, c                                       ; $4a4c: $51
    and $40                                       ; $4a4d: $e6 $40
    add sp, -$55                                  ; $4a4f: $e8 $ab
    ret z                                         ; $4a51: $c8

    rst $38                                       ; $4a52: $ff
    ld [$3ac3], sp                                ; $4a53: $08 $c3 $3a
    dec [hl]                                      ; $4a56: $35
    dec [hl]                                      ; $4a57: $35
    add hl, sp                                    ; $4a58: $39
    xor [hl]                                      ; $4a59: $ae
    xor a                                         ; $4a5a: $af
    add hl, de                                    ; $4a5b: $19
    sbc [hl]                                      ; $4a5c: $9e
    ld d, b                                       ; $4a5d: $50
    pop bc                                        ; $4a5e: $c1
    ld c, b                                       ; $4a5f: $48
    push hl                                       ; $4a60: $e5
    ld [c], a                                     ; $4a61: $e2
    db $e3                                        ; $4a62: $e3
    nop                                           ; $4a63: $00
    call nz, $f180                                ; $4a64: $c4 $80 $f1
    rst $38                                       ; $4a67: $ff
    call nz, $2afe                                ; $4a68: $c4 $fe $2a
    call nz, Call_05e_4608                        ; $4a6b: $c4 $08 $46
    add hl, sp                                    ; $4a6e: $39
    dec [hl]                                      ; $4a6f: $35
    dec [hl]                                      ; $4a70: $35
    ld a, [hl-]                                   ; $4a71: $3a
    xor a                                         ; $4a72: $af
    jr jr_05e_49f5                                ; $4a73: $18 $80

    ldh [$3c], a                                  ; $4a75: $e0 $3c
    pop bc                                        ; $4a77: $c1
    ccf                                           ; $4a78: $3f
    call nz, $e5e4                                ; $4a79: $c4 $e4 $e5
    nop                                           ; $4a7c: $00
    call nz, $e37f                                ; $4a7d: $c4 $7f $e3
    ld b, b                                       ; $4a80: $40
    rst $28                                       ; $4a81: $ef
    db $fc                                        ; $4a82: $fc
    ld a, a                                       ; $4a83: $7f
    and e                                         ; $4a84: $a3
    jp hl                                         ; $4a85: $e9


    and c                                         ; $4a86: $a1
    rrca                                          ; $4a87: $0f
    ld [bc], a                                    ; $4a88: $02
    ld b, h                                       ; $4a89: $44
    inc a                                         ; $4a8a: $3c
    jp $193c                                      ; $4a8b: $c3 $3c $19


    ld b, h                                       ; $4a8e: $44
    add b                                         ; $4a8f: $80
    ldh [$3c], a                                  ; $4a90: $e0 $3c
    ret z                                         ; $4a92: $c8

    and $e7                                       ; $4a93: $e6 $e7
    or l                                          ; $4a95: $b5
    ret nz                                        ; $4a96: $c0

    db $ec                                        ; $4a97: $ec
    and b                                         ; $4a98: $a0
    ret nz                                        ; $4a99: $c0

    ldh a, [$fc]                                  ; $4a9a: $f0 $fc
    ld a, $a3                                     ; $4a9c: $3e $a3
    ld b, b                                       ; $4a9e: $40
    xor b                                         ; $4a9f: $a8
    ld c, $05                                     ; $4aa0: $0e $05
    ld a, [hl-]                                   ; $4aa2: $3a
    dec [hl]                                      ; $4aa3: $35
    inc a                                         ; $4aa4: $3c
    jp Jump_05e_4603                              ; $4aa5: $c3 $03 $46


    sbc [hl]                                      ; $4aa8: $9e
    ld b, d                                       ; $4aa9: $42
    ret z                                         ; $4aaa: $c8

    or l                                          ; $4aab: $b5
    jp $c100                                      ; $4aac: $c3 $00 $c1


    ld c, [hl]                                    ; $4aaf: $4e
    and c                                         ; $4ab0: $a1
    nop                                           ; $4ab1: $00
    ld sp, hl                                     ; $4ab2: $f9
    add sp, -$7f                                  ; $4ab3: $e8 $81
    push bc                                       ; $4ab5: $c5
    ld b, $3f                                     ; $4ab6: $06 $3f
    ldh [$39], a                                  ; $4ab8: $e0 $39
    ret nz                                        ; $4aba: $c0

    db $e3                                        ; $4abb: $e3
    ld b, d                                       ; $4abc: $42
    ret z                                         ; $4abd: $c8

    ld a, l                                       ; $4abe: $7d
    ldh [$a0], a                                  ; $4abf: $e0 $a0
    and b                                         ; $4ac1: $a0
    ldh a, [$c0]                                  ; $4ac2: $f0 $c0
    add b                                         ; $4ac4: $80
    nop                                           ; $4ac5: $00
    di                                            ; $4ac6: $f3
    cp $a5                                        ; $4ac7: $fe $a5
    xor b                                         ; $4ac9: $a8
    add c                                         ; $4aca: $81
    rrca                                          ; $4acb: $0f
    ld [bc], a                                    ; $4acc: $02
    ld [hl], $35                                  ; $4acd: $36 $35
    inc bc                                        ; $4acf: $03
    ld a, [hl-]                                   ; $4ad0: $3a
    jp $a2fe                                      ; $4ad1: $c3 $fe $a2


    add hl, sp                                    ; $4ad4: $39
    and b                                         ; $4ad5: $a0
    push bc                                       ; $4ad6: $c5
    jp nz, $85b5                                  ; $4ad7: $c2 $b5 $85

    ld de, $15a5                                  ; $4ada: $11 $a5 $15
    db $e3                                        ; $4add: $e3
    db $fc                                        ; $4ade: $fc
    ld b, b                                       ; $4adf: $40
    db $ed                                        ; $4ae0: $ed
    ld a, a                                       ; $4ae1: $7f
    push hl                                       ; $4ae2: $e5
    ld c, $05                                     ; $4ae3: $0e $05
    inc a                                         ; $4ae5: $3c
    dec [hl]                                      ; $4ae6: $35
    ld [hl], $45                                  ; $4ae7: $36 $45
    rrca                                          ; $4ae9: $0f
    sbc h                                         ; $4aea: $9c
    sbc l                                         ; $4aeb: $9d
    sbc l                                         ; $4aec: $9d
    sbc a                                         ; $4aed: $9f
    add hl, sp                                    ; $4aee: $39
    and b                                         ; $4aef: $a0
    push bc                                       ; $4af0: $c5
    pop bc                                        ; $4af1: $c1
    ld [hl], d                                    ; $4af2: $72
    add d                                         ; $4af3: $82
    ld [hl], e                                    ; $4af4: $73
    add c                                         ; $4af5: $81
    ld hl, sp-$6c                                 ; $4af6: $f8 $94
    rst $20                                       ; $4af8: $e7
    add b                                         ; $4af9: $80
    rst $28                                       ; $4afa: $ef
    ld a, a                                       ; $4afb: $7f
    rst $20                                       ; $4afc: $e7
    sbc c                                         ; $4afd: $99
    ld b, $36                                     ; $4afe: $06 $36
    dec sp                                        ; $4b00: $3b

Call_05e_4b01:
    ld [hl], $07                                  ; $4b01: $36 $07
    ld b, l                                       ; $4b03: $45
    ld b, [hl]                                    ; $4b04: $46
    ld b, [hl]                                    ; $4b05: $46
    ld a, d                                       ; $4b06: $7a
    and d                                         ; $4b07: $a2
    ld c, b                                       ; $4b08: $48

Call_05e_4b09:
    pop hl                                        ; $4b09: $e1
    ld [hl], d                                    ; $4b0a: $72
    add c                                         ; $4b0b: $81
    or l                                          ; $4b0c: $b5
    add d                                         ; $4b0d: $82
    inc d                                         ; $4b0e: $14
    add h                                         ; $4b0f: $84
    ldh a, [$81]                                  ; $4b10: $f0 $81
    push hl                                       ; $4b12: $e5
    ret nz                                        ; $4b13: $c0

    call nz, $acfe                                ; $4b14: $c4 $fe $ac
    ld a, $e0                                     ; $4b17: $3e $e0
    inc b                                         ; $4b19: $04
    add hl, bc                                    ; $4b1a: $09
    inc b                                         ; $4b1b: $04
    rlca                                          ; $4b1c: $07
    ld bc, $b407                                  ; $4b1d: $01 $07 $b4
    and b                                         ; $4b20: $a0
    add hl, sp                                    ; $4b21: $39
    and h                                         ; $4b22: $a4
    ld a, e                                       ; $4b23: $7b
    and l                                         ; $4b24: $a5
    add b                                         ; $4b25: $80
    ldh [$d1], a                                  ; $4b26: $e0 $d1
    pop hl                                        ; $4b28: $e1
    rst $10                                       ; $4b29: $d7
    rst $20                                       ; $4b2a: $e7
    cp l                                          ; $4b2b: $bd
    ld l, b                                       ; $4b2c: $68
    inc a                                         ; $4b2d: $3c
    db $fd                                        ; $4b2e: $fd
    ld h, a                                       ; $4b2f: $67
    cp $61                                        ; $4b30: $fe $61
    rrca                                          ; $4b32: $0f
    inc b                                         ; $4b33: $04
    inc bc                                        ; $4b34: $03
    dec bc                                        ; $4b35: $0b
    halt                                          ; $4b36: $76
    add b                                         ; $4b37: $80
    or a                                          ; $4b38: $b7
    add c                                         ; $4b39: $81
    add b                                         ; $4b3a: $80
    cp b                                          ; $4b3b: $b8
    ld h, b                                       ; $4b3c: $60
    ld [hl], d                                    ; $4b3d: $72
    add [hl]                                      ; $4b3e: $86
    jp nz, $c1e4                                  ; $4b3f: $c2 $e4 $c1

    rst $20                                       ; $4b42: $e7
    add b                                         ; $4b43: $80
    rst $20                                       ; $4b44: $e7
    cp h                                          ; $4b45: $bc
    add [hl]                                      ; $4b46: $86
    rst $38                                       ; $4b47: $ff
    ld [c], a                                     ; $4b48: $e2
    ld b, $bf                                     ; $4b49: $06 $bf
    ld [hl], $c3                                  ; $4b4b: $36 $c3
    dec sp                                        ; $4b4d: $3b
    dec sp                                        ; $4b4e: $3b
    add hl, sp                                    ; $4b4f: $39
    ld [bc], a                                    ; $4b50: $02
    cp a                                          ; $4b51: $bf
    ldh [$9d], a                                  ; $4b52: $e0 $9d
    add b                                         ; $4b54: $80
    rst $38                                       ; $4b55: $ff
    jp hl                                         ; $4b56: $e9


    add b                                         ; $4b57: $80
    pop bc                                        ; $4b58: $c1
    add hl, de                                    ; $4b59: $19
    rst $20                                       ; $4b5a: $e7
    ret nz                                        ; $4b5b: $c0

    ld [c], a                                     ; $4b5c: $e2
    dec a                                         ; $4b5d: $3d
    ld l, b                                       ; $4b5e: $68
    ld a, $62                                     ; $4b5f: $3e $62
    add b                                         ; $4b61: $80
    ld h, c                                       ; $4b62: $61
    nop                                           ; $4b63: $00
    add hl, sp                                    ; $4b64: $39
    ld bc, $c0be                                  ; $4b65: $01 $be $c0
    ld a, d                                       ; $4b68: $7a
    and b                                         ; $4b69: $a0
    xor [hl]                                      ; $4b6a: $ae

Jump_05e_4b6b:
    ld [bc], a                                    ; $4b6b: $02
    rrca                                          ; $4b6c: $0f
    add hl, sp                                    ; $4b6d: $39
    ldh [$fd], a                                  ; $4b6e: $e0 $fd
    add sp, -$20                                  ; $4b70: $e8 $e0
    dec de                                        ; $4b72: $1b
    call nz, $ecc1                                ; $4b73: $c4 $c1 $ec
    dec a                                         ; $4b76: $3d
    ld l, d                                       ; $4b77: $6a
    add b                                         ; $4b78: $80
    db $e3                                        ; $4b79: $e3
    ret nz                                        ; $4b7a: $c0

    pop hl                                        ; $4b7b: $e1
    jp $af3b                                      ; $4b7c: $c3 $3b $af


    inc bc                                        ; $4b7f: $03
    ld [bc], a                                    ; $4b80: $02
    ld c, $c0                                     ; $4b81: $0e $c0
    db $eb                                        ; $4b83: $eb
    jp Jump_05e_5ce3                              ; $4b84: $c3 $e3 $5c


    db $e4                                        ; $4b87: $e4
    add c                                         ; $4b88: $81
    ld [$c83f], a                                 ; $4b89: $ea $3f $c8
    cp $41                                        ; $4b8c: $fe $41
    ld [hl], $7e                                  ; $4b8e: $36 $7e
    ret nz                                        ; $4b90: $c0

    jr c, jr_05e_4bca                             ; $4b91: $38 $37

    rst $38                                       ; $4b93: $ff
    pop bc                                        ; $4b94: $c1
    ret nc                                        ; $4b95: $d0

    pop de                                        ; $4b96: $d1
    rst $38                                       ; $4b97: $ff
    jp hl                                         ; $4b98: $e9


    jp nz, $f0e9                                  ; $4b99: $c2 $e9 $f0

    ld [bc], a                                    ; $4b9c: $02
    pop hl                                        ; $4b9d: $e1
    ld b, c                                       ; $4b9e: $41
    and c                                         ; $4b9f: $a1
    inc bc                                        ; $4ba0: $03

Jump_05e_4ba1:
    and b                                         ; $4ba1: $a0
    rst $38                                       ; $4ba2: $ff
    xor d                                         ; $4ba3: $aa
    sbc b                                         ; $4ba4: $98
    sbc c                                         ; $4ba5: $99
    dec c                                         ; $4ba6: $0d
    inc b                                         ; $4ba7: $04
    ld e, [hl]                                    ; $4ba8: $5e
    add $c0                                       ; $4ba9: $c6 $c0
    inc bc                                        ; $4bab: $03
    inc b                                         ; $4bac: $04
    rlca                                          ; $4bad: $07
    ld c, $b3                                     ; $4bae: $0e $b3
    add b                                         ; $4bb0: $80
    jp nc, Jump_05e_62ba                          ; $4bb1: $d2 $ba $62

    ldh [$c0], a                                  ; $4bb4: $e0 $c0
    ld h, a                                       ; $4bb6: $67
    jp $c1e5                                      ; $4bb7: $c3 $e5 $c1


    db $e4                                        ; $4bba: $e4
    ld b, c                                       ; $4bbb: $41
    push bc                                       ; $4bbc: $c5
    ret nz                                        ; $4bbd: $c0

    xor c                                         ; $4bbe: $a9
    rrca                                          ; $4bbf: $0f
    ld [bc], a                                    ; $4bc0: $02
    xor [hl]                                      ; $4bc1: $ae
    cp e                                          ; $4bc2: $bb
    xor [hl]                                      ; $4bc3: $ae
    ld [bc], a                                    ; $4bc4: $02
    ld b, d                                       ; $4bc5: $42
    pop bc                                        ; $4bc6: $c1
    dec bc                                        ; $4bc7: $0b
    ld b, $08                                     ; $4bc8: $06 $08

jr_05e_4bca:
    ld sp, hl                                     ; $4bca: $f9
    add b                                         ; $4bcb: $80
    call nc, $d4c1                                ; $4bcc: $d4 $c1 $d4
    add d                                         ; $4bcf: $82
    add d                                         ; $4bd0: $82
    scf                                           ; $4bd1: $37
    ld b, d                                       ; $4bd2: $42
    jp nz, $c1e7                                  ; $4bd3: $c2 $e7 $c1

    db $eb                                        ; $4bd6: $eb
    nop                                           ; $4bd7: $00
    xor d                                         ; $4bd8: $aa
    ld [$ffae], sp                                ; $4bd9: $08 $ae $ff
    xor a                                         ; $4bdc: $af
    xor a                                         ; $4bdd: $af
    scf                                           ; $4bde: $37
    scf                                           ; $4bdf: $37
    jp Jump_05e_46ae                              ; $4be0: $c3 $ae $46


    ld b, [hl]                                    ; $4be3: $46
    inc bc                                        ; $4be4: $03
    ld b, $06                                     ; $4be5: $06 $06
    cp c                                          ; $4be7: $b9
    add d                                         ; $4be8: $82
    dec b                                         ; $4be9: $05
    and d                                         ; $4bea: $a2
    ld [hl-], a                                   ; $4beb: $32
    ld h, d                                       ; $4bec: $62
    add e                                         ; $4bed: $83
    ld [$4342], a                                 ; $4bee: $ea $42 $43
    ld [bc], a                                    ; $4bf1: $02
    db $eb                                        ; $4bf2: $eb
    sbc [hl]                                      ; $4bf3: $9e
    add d                                         ; $4bf4: $82
    and d                                         ; $4bf5: $a2
    xor a                                         ; $4bf6: $af
    ld [hl], $3b                                  ; $4bf7: $36 $3b
    dec [hl]                                      ; $4bf9: $35
    ld a, $80                                     ; $4bfa: $3e $80
    halt                                          ; $4bfc: $76
    ld b, b                                       ; $4bfd: $40
    dec b                                         ; $4bfe: $05
    ld l, l                                       ; $4bff: $6d
    ret nc                                        ; $4c00: $d0

    ld hl, sp+$42                                 ; $4c01: $f8 $42
    ld [c], a                                     ; $4c03: $e2
    db $e3                                        ; $4c04: $e3
    or [hl]                                       ; $4c05: $b6
    ld [hl+], a                                   ; $4c06: $22
    db $e4                                        ; $4c07: $e4
    push hl                                       ; $4c08: $e5
    jp nz, $b0e9                                  ; $4c09: $c2 $e9 $b0

    pop bc                                        ; $4c0c: $c1
    db $e4                                        ; $4c0d: $e4
    add c                                         ; $4c0e: $81
    ld h, a                                       ; $4c0f: $67
    db $eb                                        ; $4c10: $eb
    ld [hl+], a                                   ; $4c11: $22
    add d                                         ; $4c12: $82
    jr nz, jr_05e_4c1a                            ; $4c13: $20 $05

    ld [hl], $44                                  ; $4c15: $36 $44
    ret nz                                        ; $4c17: $c0

    ld [hl], $1b                                  ; $4c18: $36 $1b

jr_05e_4c1a:
    ld b, l                                       ; $4c1a: $45
    ld [bc], a                                    ; $4c1b: $02
    cp h                                          ; $4c1c: $bc
    and b                                         ; $4c1d: $a0
    ret nc                                        ; $4c1e: $d0

    db $d3                                        ; $4c1f: $d3
    ld a, a                                       ; $4c20: $7f
    ld b, d                                       ; $4c21: $42
    pop bc                                        ; $4c22: $c1
    ld h, c                                       ; $4c23: $61
    ld [hl], h                                    ; $4c24: $74
    jr nz, @-$1b                                  ; $4c25: $20 $e3

    and $e7                                       ; $4c27: $e6 $e7
    jp nz, $c3eb                                  ; $4c29: $c2 $eb $c3

    rst $08                                       ; $4c2c: $cf
    jp Jump_000_02a2                              ; $4c2d: $c3 $a2 $02


    ld a, [hl-]                                   ; $4c30: $3a
    dec sp                                        ; $4c31: $3b
    rla                                           ; $4c32: $17
    dec sp                                        ; $4c33: $3b
    ld [hl], $c3                                  ; $4c34: $36 $c3
    call nz, Call_05e_46a0                        ; $4c36: $c4 $a0 $46
    pop bc                                        ; $4c39: $c1
    ldh [$3a], a                                  ; $4c3a: $e0 $3a
    ld h, d                                       ; $4c3c: $62
    pop bc                                        ; $4c3d: $c1
    ld h, b                                       ; $4c3e: $60
    ld h, b                                       ; $4c3f: $60
    or [hl]                                       ; $4c40: $b6
    inc hl                                        ; $4c41: $23
    add h                                         ; $4c42: $84
    and $07                                       ; $4c43: $e6 $07
    call nz, $b004                                ; $4c45: $c4 $04 $b0
    ld b, h                                       ; $4c48: $44
    and a                                         ; $4c49: $a7
    ret nc                                        ; $4c4a: $d0

    pop de                                        ; $4c4b: $d1
    pop bc                                        ; $4c4c: $c1
    ldh [rP1], a                                  ; $4c4d: $e0 $00
    inc b                                         ; $4c4f: $04
    and a                                         ; $4c50: $a7
    nop                                           ; $4c51: $00
    ld b, e                                       ; $4c52: $43
    ld b, l                                       ; $4c53: $45
    db $eb                                        ; $4c54: $eb
    jp $8408                                      ; $4c55: $c3 $08 $84


    and h                                         ; $4c58: $a4
    rlca                                          ; $4c59: $07
    and b                                         ; $4c5a: $a0
    ld b, [hl]                                    ; $4c5b: $46
    ret nz                                        ; $4c5c: $c0

    call nz, Call_000_0081                        ; $4c5d: $c4 $81 $00
    ld b, h                                       ; $4c60: $44
    db $e4                                        ; $4c61: $e4
    halt                                          ; $4c62: $76
    ld h, $bc                                     ; $4c63: $26 $bc
    ld b, c                                       ; $4c65: $41
    ld c, c                                       ; $4c66: $49
    db $e3                                        ; $4c67: $e3
    add h                                         ; $4c68: $84
    and $84                                       ; $4c69: $e6 $84
    inc bc                                        ; $4c6b: $03
    ld [bc], a                                    ; $4c6c: $02
    and $83                                       ; $4c6d: $e6 $83
    jp nz, Jump_05e_40ff                          ; $4c6f: $c2 $ff $40

    dec sp                                        ; $4c72: $3b
    xor h                                         ; $4c73: $ac
    jr c, jr_05e_4cb3                             ; $4c74: $38 $3d

    scf                                           ; $4c76: $37
    add $c7                                       ; $4c77: $c6 $c7
    add b                                         ; $4c79: $80
    ld b, h                                       ; $4c7a: $44
    push hl                                       ; $4c7b: $e5
    add h                                         ; $4c7c: $84
    ld b, $bc                                     ; $4c7d: $06 $bc
    ld b, c                                       ; $4c7f: $41
    nop                                           ; $4c80: $00
    and e                                         ; $4c81: $a3
    rlca                                          ; $4c82: $07
    db $e3                                        ; $4c83: $e3
    pop bc                                        ; $4c84: $c1
    add sp, -$12                                  ; $4c85: $e8 $ee
    dec b                                         ; $4c87: $05
    rrca                                          ; $4c88: $0f
    rst $38                                       ; $4c89: $ff
    ld [bc], a                                    ; $4c8a: $02
    ld [bc], a                                    ; $4c8b: $02
    rrca                                          ; $4c8c: $0f
    dec b                                         ; $4c8d: $05
    inc a                                         ; $4c8e: $3c
    xor l                                         ; $4c8f: $ad
    dec [hl]                                      ; $4c90: $35
    jp Jump_000_3a0f                              ; $4c91: $c3 $0f $3a


    call nz, $d2c5                                ; $4c94: $c4 $c5 $d2
    dec a                                         ; $4c97: $3d
    nop                                           ; $4c98: $00
    cp d                                          ; $4c99: $ba
    nop                                           ; $4c9a: $00
    dec a                                         ; $4c9b: $3d
    inc b                                         ; $4c9c: $04
    ld [hl], b                                    ; $4c9d: $70
    nop                                           ; $4c9e: $00
    ldh [$3f], a                                  ; $4c9f: $e0 $3f
    ld h, c                                       ; $4ca1: $61
    jp nc, $8342                                  ; $4ca2: $d2 $42 $83

    db $eb                                        ; $4ca5: $eb
    add h                                         ; $4ca6: $84
    ld l, b                                       ; $4ca7: $68
    ld b, a                                       ; $4ca8: $47
    ld h, b                                       ; $4ca9: $60
    ld [hl], $06                                  ; $4caa: $36 $06
    ld b, $0e                                     ; $4cac: $06 $0e
    add d                                         ; $4cae: $82
    pop bc                                        ; $4caf: $c1
    add hl, sp                                    ; $4cb0: $39
    ld b, [hl]                                    ; $4cb1: $46
    ld b, [hl]                                    ; $4cb2: $46

jr_05e_4cb3:
    dec a                                         ; $4cb3: $3d
    ld bc, $02ba                                  ; $4cb4: $01 $ba $02
    add h                                         ; $4cb7: $84
    dec b                                         ; $4cb8: $05
    nop                                           ; $4cb9: $00
    add a                                         ; $4cba: $87
    ld hl, sp-$7d                                 ; $4cbb: $f8 $83
    jp hl                                         ; $4cbd: $e9


    ld a, b                                       ; $4cbe: $78
    ld [c], a                                     ; $4cbf: $e2
    dec l                                         ; $4cc0: $2d
    add h                                         ; $4cc1: $84
    ld [$3539], sp                                ; $4cc2: $08 $39 $35
    xor h                                         ; $4cc5: $ac
    dec b                                         ; $4cc6: $05
    ld c, $02                                     ; $4cc7: $0e $02
    ld h, b                                       ; $4cc9: $60
    jr c, jr_05e_4d03                             ; $4cca: $38 $37

    ld b, l                                       ; $4ccc: $45
    add b                                         ; $4ccd: $80
    ld b, b                                       ; $4cce: $40
    dec a                                         ; $4ccf: $3d
    ld a, [bc]                                    ; $4cd0: $0a
    ld [hl], b                                    ; $4cd1: $70
    inc b                                         ; $4cd2: $04
    rrca                                          ; $4cd3: $0f
    and $b0                                       ; $4cd4: $e6 $b0
    add h                                         ; $4cd6: $84
    push hl                                       ; $4cd7: $e5
    ret nz                                        ; $4cd8: $c0

    and $e8                                       ; $4cd9: $e6 $e8
    add c                                         ; $4cdb: $81
    ret nz                                        ; $4cdc: $c0

    ldh [$ad], a                                  ; $4cdd: $e0 $ad
    ld [hl], $0c                                  ; $4cdf: $36 $0c

Jump_05e_4ce1:
    add b                                         ; $4ce1: $80
    jp Jump_05e_4502                              ; $4ce2: $c3 $02 $45


    ld h, b                                       ; $4ce5: $60
    ret nc                                        ; $4ce6: $d0

    inc b                                         ; $4ce7: $04
    ld h, c                                       ; $4ce8: $61
    call nz, $bf44                                ; $4ce9: $c4 $44 $bf
    and [hl]                                      ; $4cec: $a6
    ld b, b                                       ; $4ced: $40
    ld h, e                                       ; $4cee: $63
    ei                                            ; $4cef: $fb
    jp hl                                         ; $4cf0: $e9


    ld [hl], b                                    ; $4cf1: $70
    ld h, l                                       ; $4cf2: $65
    ld e, [hl]                                    ; $4cf3: $5e

jr_05e_4cf4:
    ld b, d                                       ; $4cf4: $42
    inc bc                                        ; $4cf5: $03
    xor [hl]                                      ; $4cf6: $ae
    inc a                                         ; $4cf7: $3c
    dec [hl]                                      ; $4cf8: $35
    jp $e0bf                                      ; $4cf9: $c3 $bf $e0


    dec b                                         ; $4cfc: $05
    pop bc                                        ; $4cfd: $c1
    ldh [$80], a                                  ; $4cfe: $e0 $80
    ld b, l                                       ; $4d00: $45
    pop bc                                        ; $4d01: $c1
    pop bc                                        ; $4d02: $c1

jr_05e_4d03:
    nop                                           ; $4d03: $00
    ld b, c                                       ; $4d04: $41
    inc b                                         ; $4d05: $04
    cp a                                          ; $4d06: $bf
    and h                                         ; $4d07: $a4
    ret nz                                        ; $4d08: $c0

    db $ed                                        ; $4d09: $ed
    ld sp, $3368                                  ; $4d0a: $31 $68 $33
    jr nz, jr_05e_4d1c                            ; $4d0d: $20 $0d

    db $db                                        ; $4d0f: $db
    dec b                                         ; $4d10: $05
    xor a                                         ; $4d11: $af
    jp z, Jump_000_3c60                           ; $4d12: $ca $60 $3c

    ld b, h                                       ; $4d15: $44
    ld a, [bc]                                    ; $4d16: $0a
    and b                                         ; $4d17: $a0
    ret nc                                        ; $4d18: $d0

    db $d3                                        ; $4d19: $d3
    or $d0                                        ; $4d1a: $f6 $d0

jr_05e_4d1c:
    and d                                         ; $4d1c: $a2
    and $e7                                       ; $4d1d: $e6 $e7
    db $fc                                        ; $4d1f: $fc
    nop                                           ; $4d20: $00
    call nc, $e2d4                                ; $4d21: $d4 $d4 $e2
    db $e3                                        ; $4d24: $e3
    ld [hl], b                                    ; $4d25: $70
    cp a                                          ; $4d26: $bf
    and l                                         ; $4d27: $a5
    pop bc                                        ; $4d28: $c1
    pop af                                        ; $4d29: $f1
    db $f4                                        ; $4d2a: $f4
    inc bc                                        ; $4d2b: $03
    jp nz, Jump_000_37c1                          ; $4d2c: $c2 $c1 $37

    jr c, jr_05e_4cf4                             ; $4d2f: $38 $c3

    ld b, a                                       ; $4d31: $47
    and c                                         ; $4d32: $a1
    ld bc, $4a05                                  ; $4d33: $01 $05 $4a
    add e                                         ; $4d36: $83
    adc l                                         ; $4d37: $8d
    and d                                         ; $4d38: $a2
    ld b, c                                       ; $4d39: $41
    ld [bc], a                                    ; $4d3a: $02
    add b                                         ; $4d3b: $80
    add a                                         ; $4d3c: $87
    ld d, $21                                     ; $4d3d: $16 $21
    ld [bc], a                                    ; $4d3f: $02
    and $c1                                       ; $4d40: $e6 $c1
    add sp, $5a                                   ; $4d42: $e8 $5a
    or h                                          ; $4d44: $b4
    nop                                           ; $4d45: $00
    dec c                                         ; $4d46: $0d
    jp z, Jump_000_3520                           ; $4d47: $ca $20 $35

    dec [hl]                                      ; $4d4a: $35
    push bc                                       ; $4d4b: $c5
    jp nz, Jump_05e_4311                          ; $4d4c: $c2 $11 $43

    ld [hl+], a                                   ; $4d4f: $22
    add b                                         ; $4d50: $80
    ld c, [hl]                                    ; $4d51: $4e
    and d                                         ; $4d52: $a2
    add $42                                       ; $4d53: $c6 $42
    add b                                         ; $4d55: $80
    add l                                         ; $4d56: $85
    ld b, b                                       ; $4d57: $40
    ld b, b                                       ; $4d58: $40
    rst $00                                       ; $4d59: $c7
    and a                                         ; $4d5a: $a7
    ld [hl], l                                    ; $4d5b: $75
    ld b, [hl]                                    ; $4d5c: $46
    ld b, $c3                                     ; $4d5d: $06 $c3
    inc b                                         ; $4d5f: $04
    dec e                                         ; $4d60: $1d
    inc bc                                        ; $4d61: $03
    jp z, Jump_000_3a81                           ; $4d62: $ca $81 $3a

    add $c7                                       ; $4d65: $c6 $c7
    add hl, bc                                    ; $4d67: $09
    ld b, b                                       ; $4d68: $40
    ret nz                                        ; $4d69: $c0

    pop hl                                        ; $4d6a: $e1
    ld b, $26                                     ; $4d6b: $06 $26
    and b                                         ; $4d6d: $a0
    cp h                                          ; $4d6e: $bc
    add $40                                       ; $4d6f: $c6 $40
    ret z                                         ; $4d71: $c8

    ld sp, hl                                     ; $4d72: $f9
    and $78                                       ; $4d73: $e6 $78
    dec h                                         ; $4d75: $25
    ld c, l                                       ; $4d76: $4d
    jr nz, @+$3d                                  ; $4d77: $20 $3b

    rst $08                                       ; $4d79: $cf
    ld b, b                                       ; $4d7a: $40
    dec [hl]                                      ; $4d7b: $35
    rlca                                          ; $4d7c: $07
    add hl, sp                                    ; $4d7d: $39
    call nz, $c0c5                                ; $4d7e: $c4 $c5 $c0
    db $e4                                        ; $4d81: $e4
    add l                                         ; $4d82: $85
    and d                                         ; $4d83: $a2
    add h                                         ; $4d84: $84
    add e                                         ; $4d85: $83
    ld a, $20                                     ; $4d86: $3e $20
    add hl, sp                                    ; $4d88: $39
    inc b                                         ; $4d89: $04
    ld h, b                                       ; $4d8a: $60
    ret nz                                        ; $4d8b: $c0

    db $ed                                        ; $4d8c: $ed
    ld c, d                                       ; $4d8d: $4a
    and c                                         ; $4d8e: $a1
    ld de, $c264                                  ; $4d8f: $11 $64 $c2
    pop hl                                        ; $4d92: $e1
    ld c, e                                       ; $4d93: $4b
    jr nz, jr_05e_4ddc                            ; $4d94: $20 $46

    ld b, [hl]                                    ; $4d96: $46
    ld b, e                                       ; $4d97: $43
    ret nz                                        ; $4d98: $c0

    nop                                           ; $4d99: $00
    ld b, b                                       ; $4d9a: $40
    pop hl                                        ; $4d9b: $e1
    ret                                           ; $4d9c: $c9


    add d                                         ; $4d9d: $82
    add h                                         ; $4d9e: $84
    add e                                         ; $4d9f: $83
    add c                                         ; $4da0: $81
    ld h, h                                       ; $4da1: $64
    rst $30                                       ; $4da2: $f7
    ld bc, $f0c1                                  ; $4da3: $01 $c1 $f0
    ret nc                                        ; $4da6: $d0

    ld [hl+], a                                   ; $4da7: $22
    sub c                                         ; $4da8: $91
    ld b, e                                       ; $4da9: $43
    ld bc, $c936                                  ; $4daa: $01 $36 $c9
    and b                                         ; $4dad: $a0
    rst $38                                       ; $4dae: $ff
    pop hl                                        ; $4daf: $e1
    nop                                           ; $4db0: $00
    pop hl                                        ; $4db1: $e1
    call $8422                                    ; $4db2: $cd $22 $84
    add e                                         ; $4db5: $83
    add c                                         ; $4db6: $81
    ld h, h                                       ; $4db7: $64
    ld a, [hl-]                                   ; $4db8: $3a
    ld h, c                                       ; $4db9: $61
    ld [hl], b                                    ; $4dba: $70
    adc [hl]                                      ; $4dbb: $8e
    push bc                                       ; $4dbc: $c5
    cp e                                          ; $4dbd: $bb
    ld [hl+], a                                   ; $4dbe: $22
    or $28                                        ; $4dbf: $f6 $28
    call nz, Call_000_36c1                        ; $4dc1: $c4 $c1 $36
    ld b, e                                       ; $4dc4: $43
    ld b, l                                       ; $4dc5: $45
    add [hl]                                      ; $4dc6: $86
    add c                                         ; $4dc7: $81
    rra                                           ; $4dc8: $1f
    inc b                                         ; $4dc9: $04
    inc bc                                        ; $4dca: $03
    ld [bc], a                                    ; $4dcb: $02
    ld c, $05                                     ; $4dcc: $0e $05
    ld c, b                                       ; $4dce: $48
    inc h                                         ; $4dcf: $24
    adc b                                         ; $4dd0: $88
    ld h, $c0                                     ; $4dd1: $26 $c0
    add c                                         ; $4dd3: $81
    nop                                           ; $4dd4: $00
    ccf                                           ; $4dd5: $3f
    ld bc, $00dc                                  ; $4dd6: $01 $dc $00
    ld a, l                                       ; $4dd9: $7d
    dec h                                         ; $4dda: $25
    or a                                          ; $4ddb: $b7

jr_05e_4ddc:
    ld h, $13                                     ; $4ddc: $26 $13
    ld hl, $c044                                  ; $4dde: $21 $44 $c0
    ld d, d                                       ; $4de1: $52
    ld b, b                                       ; $4de2: $40
    ld c, $21                                     ; $4de3: $0e $21
    inc d                                         ; $4de5: $14
    ld c, e                                       ; $4de6: $4b
    ld h, b                                       ; $4de7: $60
    add d                                         ; $4de8: $82
    jr nz, jr_05e_4e31                            ; $4de9: $20 $46

    adc c                                         ; $4deb: $89
    ld hl, $cb9f                                  ; $4dec: $21 $9f $cb
    ld h, b                                       ; $4def: $60
    cp c                                          ; $4df0: $b9
    push bc                                       ; $4df1: $c5
    ld hl, sp-$5f                                 ; $4df2: $f8 $a1
    ldh [$3e], a                                  ; $4df4: $e0 $3e
    nop                                           ; $4df6: $00
    rst $00                                       ; $4df7: $c7
    and $fe                                       ; $4df8: $e6 $fe
    db $e3                                        ; $4dfa: $e3
    ld b, d                                       ; $4dfb: $42
    pop hl                                        ; $4dfc: $e1
    ld c, b                                       ; $4dfd: $48
    ret nz                                        ; $4dfe: $c0

    dec sp                                        ; $4dff: $3b
    ld [hl], $02                                  ; $4e00: $36 $02

jr_05e_4e02:
    ld h, a                                       ; $4e02: $67
    rlca                                          ; $4e03: $07
    inc de                                        ; $4e04: $13
    inc de                                        ; $4e05: $13
    adc a                                         ; $4e06: $8f
    ld b, b                                       ; $4e07: $40
    ld b, d                                       ; $4e08: $42
    ld [c], a                                     ; $4e09: $e2
    ld [bc], a                                    ; $4e0a: $02
    dec c                                         ; $4e0b: $0d
    ld [bc], a                                    ; $4e0c: $02
    ld [hl+], a                                   ; $4e0d: $22
    ld h, c                                       ; $4e0e: $61
    dec bc                                        ; $4e0f: $0b
    add d                                         ; $4e10: $82
    ld [bc], a                                    ; $4e11: $02
    ld a, $80                                     ; $4e12: $3e $80
    ld b, d                                       ; $4e14: $42
    ld b, d                                       ; $4e15: $42
    cp d                                          ; $4e16: $ba
    ld h, d                                       ; $4e17: $62
    call nc, $c7d5                                ; $4e18: $d4 $d5 $c7
    ld [c], a                                     ; $4e1b: $e2
    ret z                                         ; $4e1c: $c8

    ld a, l                                       ; $4e1d: $7d
    inc h                                         ; $4e1e: $24
    ld d, h                                       ; $4e1f: $54
    ld b, e                                       ; $4e20: $43
    ld c, b                                       ; $4e21: $48
    jp Jump_000_0840                              ; $4e22: $c3 $40 $08


    ld [c], a                                     ; $4e25: $e2
    call nc, $d023                                ; $4e26: $d4 $23 $d0
    inc bc                                        ; $4e29: $03
    ld l, e                                       ; $4e2a: $6b
    inc b                                         ; $4e2b: $04
    dec c                                         ; $4e2c: $0d
    dec h                                         ; $4e2d: $25
    nop                                           ; $4e2e: $00
    ld c, $82                                     ; $4e2f: $0e $82

jr_05e_4e31:
    nop                                           ; $4e31: $00
    sbc l                                         ; $4e32: $9d
    sbc a                                         ; $4e33: $9f
    add d                                         ; $4e34: $82
    ld h, b                                       ; $4e35: $60
    ret nz                                        ; $4e36: $c0

    ld b, d                                       ; $4e37: $42
    ld b, d                                       ; $4e38: $42
    cp [hl]                                       ; $4e39: $be
    ld bc, $4100                                  ; $4e3a: $01 $00 $41
    call nz, Call_05e_48e5                        ; $4e3d: $c4 $e5 $48
    rst $00                                       ; $4e40: $c7
    jr @+$22                                      ; $4e41: $18 $20

    dec sp                                        ; $4e43: $3b
    jr c, jr_05e_4e02                             ; $4e44: $38 $bc

    ret z                                         ; $4e46: $c8

    jp nz, $a30c                                  ; $4e47: $c2 $0c $a3

    and b                                         ; $4e4a: $a0
    db $d3                                        ; $4e4b: $d3
    ret nc                                        ; $4e4c: $d0

    ld b, [hl]                                    ; $4e4d: $46
    ld a, [hl]                                    ; $4e4e: $7e
    ld h, c                                       ; $4e4f: $61
    dec c                                         ; $4e50: $0d
    rra                                           ; $4e51: $1f
    sbc c                                         ; $4e52: $99
    ld c, $02                                     ; $4e53: $0e $02
    ld b, [hl]                                    ; $4e55: $46
    sbc h                                         ; $4e56: $9c
    add [hl]                                      ; $4e57: $86
    nop                                           ; $4e58: $00
    jp nz, Jump_05e_40a7                          ; $4e59: $c2 $a7 $40

    ld h, [hl]                                    ; $4e5c: $66
    db $ec                                        ; $4e5d: $ec
    sbc h                                         ; $4e5e: $9c
    ld [bc], a                                    ; $4e5f: $02
    sbc d                                         ; $4e60: $9a
    ld hl, $4408                                  ; $4e61: $21 $08 $44
    adc l                                         ; $4e64: $8d
    and c                                         ; $4e65: $a1
    ld b, e                                       ; $4e66: $43
    ld b, e                                       ; $4e67: $43
    ld b, l                                       ; $4e68: $45
    inc bc                                        ; $4e69: $03
    ld b, [hl]                                    ; $4e6a: $46
    jp Jump_05e_6112                              ; $4e6b: $c3 $12 $61


    jp nc, $bf83                                  ; $4e6e: $d2 $83 $bf

    ldh [$72], a                                  ; $4e71: $e0 $72
    ldh [rSCY], a                                 ; $4e73: $e0 $42
    ld b, b                                       ; $4e75: $40
    ld a, a                                       ; $4e76: $7f
    ld b, b                                       ; $4e77: $40
    ld [hl], d                                    ; $4e78: $72
    add c                                         ; $4e79: $81
    dec bc                                        ; $4e7a: $0b
    sbc l                                         ; $4e7b: $9d
    add b                                         ; $4e7c: $80
    inc h                                         ; $4e7d: $24
    jr nz, @-$1c                                  ; $4e7e: $20 $e2

    dec bc                                        ; $4e80: $0b
    xor [hl]                                      ; $4e81: $ae
    ld b, [hl]                                    ; $4e82: $46
    sub d                                         ; $4e83: $92
    ld h, b                                       ; $4e84: $60
    db $10                                        ; $4e85: $10
    rst $10                                       ; $4e86: $d7
    jr nz, jr_05e_4ecd                            ; $4e87: $20 $44

    db $e3                                        ; $4e89: $e3
    call nc, $5041                                ; $4e8a: $d4 $41 $50
    ld h, h                                       ; $4e8d: $64
    db $d3                                        ; $4e8e: $d3
    add hl, sp                                    ; $4e8f: $39
    ld [c], a                                     ; $4e90: $e2
    rst $30                                       ; $4e91: $f7
    pop bc                                        ; $4e92: $c1
    pop bc                                        ; $4e93: $c1
    inc c                                         ; $4e94: $0c
    ld sp, hl                                     ; $4e95: $f9
    rlca                                          ; $4e96: $07
    jr nz, jr_05e_4edb                            ; $4e97: $20 $42

    sub d                                         ; $4e99: $92
    and b                                         ; $4e9a: $a0
    ld b, [hl]                                    ; $4e9b: $46
    ld b, l                                       ; $4e9c: $45
    ld b, c                                       ; $4e9d: $41
    ld b, l                                       ; $4e9e: $45
    ld b, [hl]                                    ; $4e9f: $46
    dec c                                         ; $4ea0: $0d
    xor a                                         ; $4ea1: $af
    sbc a                                         ; $4ea2: $9f
    ld [hl+], a                                   ; $4ea3: $22
    ld b, [hl]                                    ; $4ea4: $46
    ld b, [hl]                                    ; $4ea5: $46
    ld c, h                                       ; $4ea6: $4c
    and c                                         ; $4ea7: $a1
    rla                                           ; $4ea8: $17
    ld b, e                                       ; $4ea9: $43
    sub h                                         ; $4eaa: $94
    ld b, d                                       ; $4eab: $42
    ld c, l                                       ; $4eac: $4d
    add h                                         ; $4ead: $84
    ldh a, [$39]                                  ; $4eae: $f0 $39
    db $e4                                        ; $4eb0: $e4
    ld b, b                                       ; $4eb1: $40
    dec bc                                        ; $4eb2: $0b
    and l                                         ; $4eb3: $a5
    ld bc, $80d6                                  ; $4eb4: $01 $d6 $80
    ld b, [hl]                                    ; $4eb7: $46
    ld b, l                                       ; $4eb8: $45
    ld [hl], $a6                                  ; $4eb9: $36 $a6
    ld a, [de]                                    ; $4ebb: $1a
    sub h                                         ; $4ebc: $94
    and c                                         ; $4ebd: $a1
    ld b, [hl]                                    ; $4ebe: $46
    sub d                                         ; $4ebf: $92
    ld h, b                                       ; $4ec0: $60
    ld b, [hl]                                    ; $4ec1: $46
    ld b, [hl]                                    ; $4ec2: $46
    ld c, h                                       ; $4ec3: $4c
    and c                                         ; $4ec4: $a1
    reti                                          ; $4ec5: $d9


    nop                                           ; $4ec6: $00
    ld d, b                                       ; $4ec7: $50
    ld h, l                                       ; $4ec8: $65
    ld l, b                                       ; $4ec9: $68
    bit 0, l                                      ; $4eca: $cb $45
    add hl, sp                                    ; $4ecc: $39

jr_05e_4ecd:
    ld [c], a                                     ; $4ecd: $e2
    add c                                         ; $4ece: $81
    dec bc                                        ; $4ecf: $0b
    pop de                                        ; $4ed0: $d1
    ld a, [bc]                                    ; $4ed1: $0a
    pop hl                                        ; $4ed2: $e1
    inc bc                                        ; $4ed3: $03
    dec bc                                        ; $4ed4: $0b
    pop bc                                        ; $4ed5: $c1
    ldh [rNR22], a                                ; $4ed6: $e0 $17
    ld h, d                                       ; $4ed8: $62
    and a                                         ; $4ed9: $a7
    ld h, [hl]                                    ; $4eda: $66

jr_05e_4edb:
    ld d, e                                       ; $4edb: $53
    and b                                         ; $4edc: $a0
    jp $e13e                                      ; $4edd: $c3 $3e $e1


    adc l                                         ; $4ee0: $8d
    and d                                         ; $4ee1: $a2
    add hl, de                                    ; $4ee2: $19
    jr nz, jr_05e_4eeb                            ; $4ee3: $20 $06

    rla                                           ; $4ee5: $17
    ld b, e                                       ; $4ee6: $43
    call nc, $0fd4                                ; $4ee7: $d4 $d4 $0f
    ld b, [hl]                                    ; $4eea: $46

jr_05e_4eeb:
    add hl, sp                                    ; $4eeb: $39
    pop hl                                        ; $4eec: $e1
    xor l                                         ; $4eed: $ad
    jp Jump_000_26ff                              ; $4eee: $c3 $ff $26


    ld a, [bc]                                    ; $4ef1: $0a
    ldh [$dc], a                                  ; $4ef2: $e0 $dc
    ld d, a                                       ; $4ef4: $57
    ret nz                                        ; $4ef5: $c0

    pop bc                                        ; $4ef6: $c1
    ldh [$67], a                                  ; $4ef7: $e0 $67
    and e                                         ; $4ef9: $a3
    ld l, b                                       ; $4efa: $68
    cp a                                          ; $4efb: $bf
    pop hl                                        ; $4efc: $e1
    ld b, [hl]                                    ; $4efd: $46
    xor [hl]                                      ; $4efe: $ae
    ld c, $dd                                     ; $4eff: $0e $dd
    nop                                           ; $4f01: $00
    jp $ae46                                      ; $4f02: $c3 $46 $ae


    reti                                          ; $4f05: $d9


    ld bc, $611d                                  ; $4f06: $01 $1d $61
    ld d, [hl]                                    ; $4f09: $56
    ld bc, $a78b                                  ; $4f0a: $01 $8b $a7
    db $f4                                        ; $4f0d: $f4
    add hl, bc                                    ; $4f0e: $09
    ld b, l                                       ; $4f0f: $45
    ld [hl], h                                    ; $4f10: $74
    add [hl]                                      ; $4f11: $86
    and b                                         ; $4f12: $a0
    add sp, -$3e                                  ; $4f13: $e8 $c2
    ld b, [hl]                                    ; $4f15: $46
    ld b, d                                       ; $4f16: $42
    xor b                                         ; $4f17: $a8
    xor c                                         ; $4f18: $a9
    rst $10                                       ; $4f19: $d7
    ld l, h                                       ; $4f1a: $6c
    dec [hl]                                      ; $4f1b: $35
    dec [hl]                                      ; $4f1c: $35
    cp a                                          ; $4f1d: $bf
    ld [c], a                                     ; $4f1e: $e2
    xor a                                         ; $4f1f: $af
    ld a, $e2                                     ; $4f20: $3e $e2
    xor a                                         ; $4f22: $af
    ld b, [hl]                                    ; $4f23: $46
    ld bc, $609e                                  ; $4f24: $01 $9e $60
    inc hl                                        ; $4f27: $23
    sub e                                         ; $4f28: $93
    add d                                         ; $4f29: $82
    set 5, e                                      ; $4f2a: $cb $eb
    ld b, e                                       ; $4f2c: $43
    nop                                           ; $4f2d: $00
    ld sp, hl                                     ; $4f2e: $f9
    daa                                           ; $4f2f: $27
    ld a, [hl-]                                   ; $4f30: $3a
    jr nz, jr_05e_4f54                            ; $4f31: $20 $21

    ret nz                                        ; $4f33: $c0

    rst $38                                       ; $4f34: $ff
    ld b, l                                       ; $4f35: $45
    ld [hl], $6e                                  ; $4f36: $36 $6e
    ld l, a                                       ; $4f38: $6f
    ld l, h                                       ; $4f39: $6c
    dec [hl]                                      ; $4f3a: $35
    and e                                         ; $4f3b: $a3
    xor d                                         ; $4f3c: $aa
    dec d                                         ; $4f3d: $15
    xor e                                         ; $4f3e: $ab
    sub b                                         ; $4f3f: $90
    add b                                         ; $4f40: $80
    xor [hl]                                      ; $4f41: $ae
    jr jr_05e_4f65                                ; $4f42: $18 $21

    ld b, [hl]                                    ; $4f44: $46
    sub h                                         ; $4f45: $94
    and d                                         ; $4f46: $a2
    ld d, [hl]                                    ; $4f47: $56
    ld [bc], a                                    ; $4f48: $02
    cp [hl]                                       ; $4f49: $be
    db $e3                                        ; $4f4a: $e3
    ret nz                                        ; $4f4b: $c0

    set 4, l                                      ; $4f4c: $cb $e5
    cp a                                          ; $4f4e: $bf
    ld b, b                                       ; $4f4f: $40
    inc b                                         ; $4f50: $04
    jr nz, jr_05e_4f90                            ; $4f51: $20 $3d

    inc hl                                        ; $4f53: $23

jr_05e_4f54:
    or e                                          ; $4f54: $b3
    ld b, l                                       ; $4f55: $45
    cp a                                          ; $4f56: $bf
    push hl                                       ; $4f57: $e5
    ld l, h                                       ; $4f58: $6c
    ld l, a                                       ; $4f59: $6f
    pop de                                        ; $4f5a: $d1
    ld l, [hl]                                    ; $4f5b: $6e
    ld a, a                                       ; $4f5c: $7f
    pop hl                                        ; $4f5d: $e1
    dec sp                                        ; $4f5e: $3b
    ret nz                                        ; $4f5f: $c0

    ld b, a                                       ; $4f60: $47
    and b                                         ; $4f61: $a0
    xor [hl]                                      ; $4f62: $ae
    adc $80                                       ; $4f63: $ce $80

jr_05e_4f65:
    ld [c], a                                     ; $4f65: $e2
    db $e3                                        ; $4f66: $e3
    nop                                           ; $4f67: $00
    jp c, Jump_05e_5282                           ; $4f68: $da $82 $52

    ld h, c                                       ; $4f6b: $61
    set 4, l                                      ; $4f6c: $cb $e5
    ld b, [hl]                                    ; $4f6e: $46
    ld h, e                                       ; $4f6f: $63
    ld b, e                                       ; $4f70: $43
    ld b, e                                       ; $4f71: $43
    ld a, [hl-]                                   ; $4f72: $3a
    ld h, d                                       ; $4f73: $62
    or b                                          ; $4f74: $b0
    ld b, c                                       ; $4f75: $41
    ld a, [hl]                                    ; $4f76: $7e
    db $e4                                        ; $4f77: $e4
    inc a                                         ; $4f78: $3c
    pop bc                                        ; $4f79: $c1
    ld [c], a                                     ; $4f7a: $e2
    sub $a4                                       ; $4f7b: $d6 $a4
    dec b                                         ; $4f7d: $05
    xor a                                         ; $4f7e: $af
    xor [hl]                                      ; $4f7f: $ae
    sbc [hl]                                      ; $4f80: $9e
    sub d                                         ; $4f81: $92
    ld b, b                                       ; $4f82: $40
    ld d, b                                       ; $4f83: $50
    ld [hl+], a                                   ; $4f84: $22
    inc bc                                        ; $4f85: $03
    and $e7                                       ; $4f86: $e6 $e7
    ld b, [hl]                                    ; $4f88: $46
    ld [hl], c                                    ; $4f89: $71
    ld a, [hl-]                                   ; $4f8a: $3a
    ld h, h                                       ; $4f8b: $64
    ld l, $22                                     ; $4f8c: $2e $22
    dec a                                         ; $4f8e: $3d
    db $e3                                        ; $4f8f: $e3

jr_05e_4f90:
    add d                                         ; $4f90: $82
    pop hl                                        ; $4f91: $e1
    ld c, $a2                                     ; $4f92: $0e $a2
    ld c, l                                       ; $4f94: $4d
    ret nc                                        ; $4f95: $d0

    ld sp, hl                                     ; $4f96: $f9
    and c                                         ; $4f97: $a1
    xor a                                         ; $4f98: $af
    sbc [hl]                                      ; $4f99: $9e
    ld e, d                                       ; $4f9a: $5a
    nop                                           ; $4f9b: $00
    ld d, b                                       ; $4f9c: $50
    ld hl, $4ed4                                  ; $4f9d: $21 $d4 $4e
    inc h                                         ; $4fa0: $24
    ld h, b                                       ; $4fa1: $60
    db $10                                        ; $4fa2: $10
    db $e3                                        ; $4fa3: $e3
    db $f4                                        ; $4fa4: $f4
    add sp, $7a                                   ; $4fa5: $e8 $7a
    ld [bc], a                                    ; $4fa7: $02
    ld [hl], d                                    ; $4fa8: $72
    inc bc                                        ; $4fa9: $03
    db $fc                                        ; $4faa: $fc
    jp nz, Jump_05e_4536                          ; $4fab: $c2 $36 $45

    ld e, a                                       ; $4fae: $5f
    inc bc                                        ; $4faf: $03
    inc b                                         ; $4fb0: $04
    rrca                                          ; $4fb1: $0f
    and b                                         ; $4fb2: $a0
    adc [hl]                                      ; $4fb3: $8e
    ld b, b                                       ; $4fb4: $40
    ret nc                                        ; $4fb5: $d0

    ld c, $81                                     ; $4fb6: $0e $81
    sbc d                                         ; $4fb8: $9a
    inc h                                         ; $4fb9: $24
    inc c                                         ; $4fba: $0c
    inc h                                         ; $4fbb: $24
    jp nz, $c822                                  ; $4fbc: $c2 $22 $c8

    ld hl, $fd88                                  ; $4fbf: $21 $88 $fd
    ld c, b                                       ; $4fc2: $48
    ld a, b                                       ; $4fc3: $78
    inc h                                         ; $4fc4: $24
    cp e                                          ; $4fc5: $bb
    pop bc                                        ; $4fc6: $c1
    ld b, l                                       ; $4fc7: $45
    ld e, a                                       ; $4fc8: $5f
    nop                                           ; $4fc9: $00
    dec hl                                        ; $4fca: $2b
    ld b, b                                       ; $4fcb: $40
    sbc $20                                       ; $4fcc: $de $20
    db $d3                                        ; $4fce: $d3
    inc bc                                        ; $4fcf: $03
    ret nc                                        ; $4fd0: $d0

    ld de, $0192                                  ; $4fd1: $11 $92 $01
    call nc, $8e21                                ; $4fd4: $d4 $21 $8e
    ld hl, $6513                                  ; $4fd7: $21 $13 $65
    sla d                                         ; $4fda: $cb $22
    ld a, [bc]                                    ; $4fdc: $0a
    ld b, c                                       ; $4fdd: $41
    or b                                          ; $4fde: $b0
    ld b, b                                       ; $4fdf: $40
    ld b, a                                       ; $4fe0: $47
    ei                                            ; $4fe1: $fb
    ld hl, $226b                                  ; $4fe2: $21 $6b $22
    db $e4                                        ; $4fe5: $e4
    and l                                         ; $4fe6: $a5
    ld [c], a                                     ; $4fe7: $e2
    db $e3                                        ; $4fe8: $e3
    ld e, h                                       ; $4fe9: $5c
    ld bc, $03d2                                  ; $4fea: $01 $d2 $03
    ld de, $e1d2                                  ; $4fed: $11 $d2 $e1
    jr nz, jr_05e_5044                            ; $4ff0: $20 $52

    ld bc, $4015                                  ; $4ff2: $01 $15 $40
    call c, Call_05e_49e6                         ; $4ff5: $dc $e6 $49
    ld b, [hl]                                    ; $4ff8: $46
    ld a, [hl]                                    ; $4ff9: $7e
    adc c                                         ; $4ffa: $89
    ld [hl], $b2                                  ; $4ffb: $36 $b2
    db $ec                                        ; $4ffd: $ec
    db $e4                                        ; $4ffe: $e4
    push hl                                       ; $4fff: $e5
    and [hl]                                      ; $5000: $a6
    ld bc, $119e                                  ; $5001: $01 $9e $11
    rrca                                          ; $5004: $0f
    ld b, c                                       ; $5005: $41
    sbc h                                         ; $5006: $9c
    ld bc, $1418                                  ; $5007: $01 $18 $14
    ld l, b                                       ; $500a: $68
    cp $f5                                        ; $500b: $fe $f5
    or d                                          ; $500d: $b2
    ld [$e7e6], a                                 ; $500e: $ea $e6 $e7
    and [hl]                                      ; $5011: $a6
    ld bc, $e3c0                                  ; $5012: $01 $c0 $e3
    add a                                         ; $5015: $87
    xor b                                         ; $5016: $a8
    nop                                           ; $5017: $00
    adc [hl]                                      ; $5018: $8e
    db $eb                                        ; $5019: $eb
    nop                                           ; $501a: $00
    ld b, a                                       ; $501b: $47
    nop                                           ; $501c: $00
    nop                                           ; $501d: $00
    nop                                           ; $501e: $00
    pop bc                                        ; $501f: $c1
    nop                                           ; $5020: $00
    rst $38                                       ; $5021: $ff
    rst $38                                       ; $5022: $ff
    rst $38                                       ; $5023: $ff
    rst $38                                       ; $5024: $ff
    rst $38                                       ; $5025: $ff
    rst $38                                       ; $5026: $ff
    rst $38                                       ; $5027: $ff
    rst $38                                       ; $5028: $ff
    rst $38                                       ; $5029: $ff
    rst $38                                       ; $502a: $ff
    nop                                           ; $502b: $00
    nop                                           ; $502c: $00
    ld bc, $fe80                                  ; $502d: $01 $80 $fe
    ldh [rIE], a                                  ; $5030: $e0 $ff
    rst $38                                       ; $5032: $ff
    rst $38                                       ; $5033: $ff
    rst $38                                       ; $5034: $ff
    rst $38                                       ; $5035: $ff
    add sp, $00                                   ; $5036: $e8 $00
    nop                                           ; $5038: $00
    nop                                           ; $5039: $00
    ld [bc], a                                    ; $503a: $02
    nop                                           ; $503b: $00
    daa                                           ; $503c: $27
    ld b, $02                                     ; $503d: $06 $02
    ld bc, $0728                                  ; $503f: $01 $28 $07
    ld [bc], a                                    ; $5042: $02
    ld [bc], a                                    ; $5043: $02

jr_05e_5044:
    ld a, [hl+]                                   ; $5044: $2a
    ld [$0302], sp                                ; $5045: $08 $02 $03
    add hl, hl                                    ; $5048: $29
    add hl, bc                                    ; $5049: $09
    ld [bc], a                                    ; $504a: $02
    inc b                                         ; $504b: $04
    ld a, [hl+]                                   ; $504c: $2a
    ld a, [bc]                                    ; $504d: $0a
    ld [bc], a                                    ; $504e: $02
    dec b                                         ; $504f: $05
    cpl                                           ; $5050: $2f
    inc d                                         ; $5051: $14
    ld [bc], a                                    ; $5052: $02
    ld b, $27                                     ; $5053: $06 $27
    jr @+$04                                      ; $5055: $18 $02

    rlca                                          ; $5057: $07
    jr z, jr_05e_5072                             ; $5058: $28 $18

    ld [bc], a                                    ; $505a: $02
    ld [$1926], sp                                ; $505b: $08 $26 $19
    ld [bc], a                                    ; $505e: $02
    add hl, bc                                    ; $505f: $09
    inc l                                         ; $5060: $2c
    add hl, de                                    ; $5061: $19
    ld [bc], a                                    ; $5062: $02
    ld a, [bc]                                    ; $5063: $0a
    dec h                                         ; $5064: $25
    rra                                           ; $5065: $1f
    ld [bc], a                                    ; $5066: $02
    dec bc                                        ; $5067: $0b
    ld hl, $0222                                  ; $5068: $21 $22 $02
    inc c                                         ; $506b: $0c
    rra                                           ; $506c: $1f
    inc h                                         ; $506d: $24
    ld [bc], a                                    ; $506e: $02
    dec c                                         ; $506f: $0d
    dec c                                         ; $5070: $0d
    ld [hl-], a                                   ; $5071: $32

jr_05e_5072:
    ld [bc], a                                    ; $5072: $02
    ld c, $11                                     ; $5073: $0e $11
    ld [hl], $02                                  ; $5075: $36 $02
    rrca                                          ; $5077: $0f
    rla                                           ; $5078: $17
    ld [hl], $02                                  ; $5079: $36 $02
    db $10                                        ; $507b: $10
    ld [de], a                                    ; $507c: $12
    jr c, @+$04                                   ; $507d: $38 $02

    ld de, $3919                                  ; $507f: $11 $19 $39
    ld [bc], a                                    ; $5082: $02
    ld [de], a                                    ; $5083: $12
    ld a, [de]                                    ; $5084: $1a
    ld a, [hl-]                                   ; $5085: $3a
    rst $38                                       ; $5086: $ff
    rst $38                                       ; $5087: $ff
    rst $38                                       ; $5088: $ff
    sub c                                         ; $5089: $91
    ld d, b                                       ; $508a: $50
    pop de                                        ; $508b: $d1
    ld d, e                                       ; $508c: $53
    rlca                                          ; $508d: $07
    ld e, d                                       ; $508e: $5a
    ld [hl+], a                                   ; $508f: $22
    ld e, d                                       ; $5090: $5a
    pop bc                                        ; $5091: $c1
    inc c                                         ; $5092: $0c
    rst $38                                       ; $5093: $ff
    rst $38                                       ; $5094: $ff
    rst $38                                       ; $5095: $ff
    rst $38                                       ; $5096: $ff
    rst $38                                       ; $5097: $ff
    rst $38                                       ; $5098: $ff
    rst $38                                       ; $5099: $ff
    rst $38                                       ; $509a: $ff
    ld hl, sp-$09                                 ; $509b: $f8 $f7
    ld l, h                                       ; $509d: $6c
    ld c, h                                       ; $509e: $4c
    ld hl, sp-$01                                 ; $509f: $f8 $ff
    ldh [$d9], a                                  ; $50a1: $e0 $d9
    rst $38                                       ; $50a3: $ff
    jp nz, Jump_05e_6cf5                          ; $50a4: $c2 $f5 $6c

    ld l, h                                       ; $50a7: $6c
    dec hl                                        ; $50a8: $2b
    ld a, [bc]                                    ; $50a9: $0a
    ld a, [bc]                                    ; $50aa: $0a
    pop af                                        ; $50ab: $f1
    ld a, [bc]                                    ; $50ac: $0a
    cp [hl]                                       ; $50ad: $be
    rst $38                                       ; $50ae: $ff
    pop bc                                        ; $50af: $c1
    push af                                       ; $50b0: $f5
    jp nz, $0ae1                                  ; $50b1: $c2 $e1 $0a

    ld a, [bc]                                    ; $50b4: $0a
    ld a, [hl+]                                   ; $50b5: $2a
    ld a, [hl+]                                   ; $50b6: $2a
    inc a                                         ; $50b7: $3c
    cp a                                          ; $50b8: $bf
    rst $38                                       ; $50b9: $ff
    pop bc                                        ; $50ba: $c1
    ld sp, hl                                     ; $50bb: $f9
    ld a, [bc]                                    ; $50bc: $0a
    ld a, [bc]                                    ; $50bd: $0a
    ld c, d                                       ; $50be: $4a
    ld l, h                                       ; $50bf: $6c
    pop de                                        ; $50c0: $d1
    rst $38                                       ; $50c1: $ff
    db $ec                                        ; $50c2: $ec
    db $eb                                        ; $50c3: $eb
    ld a, e                                       ; $50c4: $7b
    inc l                                         ; $50c5: $2c
    inc l                                         ; $50c6: $2c
    add d                                         ; $50c7: $82
    and $2b                                       ; $50c8: $e6 $2b
    ld a, [bc]                                    ; $50ca: $0a
    ld a, [hl+]                                   ; $50cb: $2a
    dec bc                                        ; $50cc: $0b
    rst $08                                       ; $50cd: $cf
    rst $38                                       ; $50ce: $ff
    add [hl]                                      ; $50cf: $86
    ld b, e                                       ; $50d0: $43
    push af                                       ; $50d1: $f5
    ld a, [bc]                                    ; $50d2: $0a
    ld c, e                                       ; $50d3: $4b
    inc a                                         ; $50d4: $3c
    pop hl                                        ; $50d5: $e1
    or b                                          ; $50d6: $b0
    ldh [$cd], a                                  ; $50d7: $e0 $cd
    rst $38                                       ; $50d9: $ff
    db $eb                                        ; $50da: $eb
    ld [$8c4c], a                                 ; $50db: $ea $4c $8c
    pop bc                                        ; $50de: $c1
    db $e4                                        ; $50df: $e4
    ret nz                                        ; $50e0: $c0

    pop hl                                        ; $50e1: $e1
    ld c, e                                       ; $50e2: $4b
    ld c, e                                       ; $50e3: $4b
    jp nz, Jump_05e_47ff                          ; $50e4: $c2 $ff $47

    adc $c1                                       ; $50e7: $ce $c1
    db $e4                                        ; $50e9: $e4
    ld a, [bc]                                    ; $50ea: $0a
    adc $7e                                       ; $50eb: $ce $7e
    ret nz                                        ; $50ed: $c0

    ld c, e                                       ; $50ee: $4b
    ld c, e                                       ; $50ef: $4b
    ld c, h                                       ; $50f0: $4c
    scf                                           ; $50f1: $37
    rst $18                                       ; $50f2: $df
    add c                                         ; $50f3: $81
    db $f4                                        ; $50f4: $f4
    ld c, d                                       ; $50f5: $4a
    ld l, e                                       ; $50f6: $6b
    ld b, $78                                     ; $50f7: $06 $78
    db $e4                                        ; $50f9: $e4
    ld a, [hl+]                                   ; $50fa: $2a
    dec bc                                        ; $50fb: $0b
    cp e                                          ; $50fc: $bb
    rst $18                                       ; $50fd: $df
    add c                                         ; $50fe: $81
    ldh a, [$c1]                                  ; $50ff: $f0 $c1
    ret nz                                        ; $5101: $c0

    ld a, $c1                                     ; $5102: $3e $c1
    ld a, [hl-]                                   ; $5104: $3a
    ret nz                                        ; $5105: $c0

    add c                                         ; $5106: $81
    ld c, d                                       ; $5107: $4a
    ret                                           ; $5108: $c9


    rst $38                                       ; $5109: $ff
    adc d                                         ; $510a: $8a
    and [hl]                                      ; $510b: $a6
    jp $43c5                                      ; $510c: $c3 $c5 $43


    pop bc                                        ; $510f: $c1
    nop                                           ; $5110: $00
    ret nz                                        ; $5111: $c0

    cp h                                          ; $5112: $bc
    jp nz, $1c0a                                  ; $5113: $c2 $0a $1c

    ei                                            ; $5116: $fb
    rst $18                                       ; $5117: $df
    ld b, a                                       ; $5118: $47
    call nz, Call_000_2b6c                        ; $5119: $c4 $6c $2b
    dec bc                                        ; $511c: $0b
    ld c, d                                       ; $511d: $4a
    db $e3                                        ; $511e: $e3
    adc b                                         ; $511f: $88
    ld [c], a                                     ; $5120: $e2
    ret nz                                        ; $5121: $c0

    and b                                         ; $5122: $a0
    add c                                         ; $5123: $81
    ld c, d                                       ; $5124: $4a
    ei                                            ; $5125: $fb
    pop hl                                        ; $5126: $e1
    call nz, $86ff                                ; $5127: $c4 $ff $86
    rst $00                                       ; $512a: $c7
    ld c, a                                       ; $512b: $4f
    pop hl                                        ; $512c: $e1
    add e                                         ; $512d: $83
    db $e3                                        ; $512e: $e3
    ret nz                                        ; $512f: $c0

    and c                                         ; $5130: $a1
    ld c, d                                       ; $5131: $4a
    add b                                         ; $5132: $80
    ei                                            ; $5133: $fb
    ret nz                                        ; $5134: $c0

    db $ec                                        ; $5135: $ec
    and d                                         ; $5136: $a2
    jp $86ff                                      ; $5137: $c3 $ff $86


    push bc                                       ; $513a: $c5
    rrca                                          ; $513b: $0f
    pop hl                                        ; $513c: $e1
    cp h                                          ; $513d: $bc
    push hl                                       ; $513e: $e5
    ld a, a                                       ; $513f: $7f
    and b                                         ; $5140: $a0
    inc l                                         ; $5141: $2c
    or c                                          ; $5142: $b1
    inc c                                         ; $5143: $0c
    add b                                         ; $5144: $80
    rst $18                                       ; $5145: $df
    add [hl]                                      ; $5146: $86
    and l                                         ; $5147: $a5
    ret z                                         ; $5148: $c8

    and h                                         ; $5149: $a4
    ld a, [hl+]                                   ; $514a: $2a
    dec bc                                        ; $514b: $0b
    add $c5                                       ; $514c: $c6 $c5
    ld c, d                                       ; $514e: $4a
    rra                                           ; $514f: $1f
    ld c, d                                       ; $5150: $4a
    ld c, d                                       ; $5151: $4a
    ld a, [bc]                                    ; $5152: $0a
    ld c, h                                       ; $5153: $4c
    dec bc                                        ; $5154: $0b
    cp b                                          ; $5155: $b8
    add c                                         ; $5156: $81
    cp [hl]                                       ; $5157: $be
    rst $38                                       ; $5158: $ff
    ld b, [hl]                                    ; $5159: $46
    and b                                         ; $515a: $a0
    ld a, $0c                                     ; $515b: $3e $0c
    and e                                         ; $515d: $a3
    ld a, [hl+]                                   ; $515e: $2a
    dec bc                                        ; $515f: $0b
    dec bc                                        ; $5160: $0b
    dec hl                                        ; $5161: $2b
    ld c, d                                       ; $5162: $4a
    scf                                           ; $5163: $37
    push hl                                       ; $5164: $e5
    ld a, $df                                     ; $5165: $3e $df
    jr c, jr_05e_516f                             ; $5167: $38 $06

    xor b                                         ; $5169: $a8
    rrca                                          ; $516a: $0f
    ret nz                                        ; $516b: $c0

    ld d, c                                       ; $516c: $51
    pop bc                                        ; $516d: $c1
    ld c, e                                       ; $516e: $4b

jr_05e_516f:
    ld c, e                                       ; $516f: $4b
    ld c, e                                       ; $5170: $4b
    add e                                         ; $5171: $83
    jp $e082                                      ; $5172: $c3 $82 $e0


    ldh [$7c], a                                  ; $5175: $e0 $7c
    add c                                         ; $5177: $81
    cp $e0                                        ; $5178: $fe $e0
    ld a, $df                                     ; $517a: $3e $df
    add $82                                       ; $517c: $c6 $82
    adc $a2                                       ; $517e: $ce $a2
    ld a, [hl+]                                   ; $5180: $2a
    ld c, d                                       ; $5181: $4a
    ld l, e                                       ; $5182: $6b
    pop bc                                        ; $5183: $c1
    dec bc                                        ; $5184: $0b
    ld c, h                                       ; $5185: $4c
    ldh [$7e], a                                  ; $5186: $e0 $7e
    rst $20                                       ; $5188: $e7
    cp [hl]                                       ; $5189: $be
    ldh [$bb], a                                  ; $518a: $e0 $bb
    pop bc                                        ; $518c: $c1
    rst $38                                       ; $518d: $ff
    rst $38                                       ; $518e: $ff
    inc l                                         ; $518f: $2c
    inc c                                         ; $5190: $0c
    cpl                                           ; $5191: $2f
    inc l                                         ; $5192: $2c
    ld c, d                                       ; $5193: $4a
    ld a, [hl+]                                   ; $5194: $2a
    ld c, e                                       ; $5195: $4b
    ret nz                                        ; $5196: $c0

    ldh [rWX], a                                  ; $5197: $e0 $4b
    push bc                                       ; $5199: $c5
    and d                                         ; $519a: $a2
    ld a, d                                       ; $519b: $7a
    call nz, $c07c                                ; $519c: $c4 $7c $c0
    rst $38                                       ; $519f: $ff
    db $fd                                        ; $51a0: $fd
    ret                                           ; $51a1: $c9


    ld a, [hl+]                                   ; $51a2: $2a
    ld l, d                                       ; $51a3: $6a
    ld a, [hl+]                                   ; $51a4: $2a
    ld a, [bc]                                    ; $51a5: $0a
    ld l, d                                       ; $51a6: $6a
    cp e                                          ; $51a7: $bb
    ldh [rSCX], a                                 ; $51a8: $e0 $43
    ld a, [bc]                                    ; $51aa: $0a
    ld a, [bc]                                    ; $51ab: $0a
    ld b, c                                       ; $51ac: $41
    and l                                         ; $51ad: $a5
    cp c                                          ; $51ae: $b9
    and d                                         ; $51af: $a2
    ccf                                           ; $51b0: $3f
    rst $18                                       ; $51b1: $df
    db $e4                                        ; $51b2: $e4
    db $e3                                        ; $51b3: $e3
    ld c, d                                       ; $51b4: $4a
    ld bc, $7ce0                                  ; $51b5: $01 $e0 $7c
    db $fc                                        ; $51b8: $fc
    ldh [$c6], a                                  ; $51b9: $e0 $c6
    ld h, c                                       ; $51bb: $61
    dec bc                                        ; $51bc: $0b
    ld c, e                                       ; $51bd: $4b
    ld l, e                                       ; $51be: $6b
    ld c, e                                       ; $51bf: $4b
    ld c, e                                       ; $51c0: $4b
    ld l, $e3                                     ; $51c1: $2e $e3
    ld bc, $c74b                                  ; $51c3: $01 $4b $c7
    rst $38                                       ; $51c6: $ff
    push hl                                       ; $51c7: $e5
    db $e4                                        ; $51c8: $e4
    adc e                                         ; $51c9: $8b
    ret                                           ; $51ca: $c9


    cp b                                          ; $51cb: $b8
    ret nz                                        ; $51cc: $c0

    or l                                          ; $51cd: $b5
    ret nz                                        ; $51ce: $c0

    cp a                                          ; $51cf: $bf
    and d                                         ; $51d0: $a2
    rst $38                                       ; $51d1: $ff
    rst $38                                       ; $51d2: $ff
    db $10                                        ; $51d3: $10

jr_05e_51d4:
    inc b                                         ; $51d4: $04
    add h                                         ; $51d5: $84
    adc h                                         ; $51d6: $8c
    add d                                         ; $51d7: $82
    adc c                                         ; $51d8: $89
    pop bc                                        ; $51d9: $c1
    ret nz                                        ; $51da: $c0

    ld h, d                                       ; $51db: $62
    dec bc                                        ; $51dc: $0b
    cp l                                          ; $51dd: $bd
    ld [c], a                                     ; $51de: $e2
    ret                                           ; $51df: $c9


    rst $38                                       ; $51e0: $ff
    nop                                           ; $51e1: $00
    jp hl                                         ; $51e2: $e9


    adc c                                         ; $51e3: $89
    ld a, [hl+]                                   ; $51e4: $2a
    adc b                                         ; $51e5: $88
    ld h, e                                       ; $51e6: $63
    add hl, sp                                    ; $51e7: $39
    and e                                         ; $51e8: $a3
    dec bc                                        ; $51e9: $0b
    ld b, h                                       ; $51ea: $44
    rst $38                                       ; $51eb: $ff
    db $ec                                        ; $51ec: $ec
    db $eb                                        ; $51ed: $eb
    ld c, $a0                                     ; $51ee: $0e $a0
    ld a, [hl+]                                   ; $51f0: $2a
    inc bc                                        ; $51f1: $03
    dec hl                                        ; $51f2: $2b
    ld l, e                                       ; $51f3: $6b
    adc l                                         ; $51f4: $8d
    jp nz, $8579                                  ; $51f5: $c2 $79 $85

    set 7, a                                      ; $51f8: $cb $ff
    add b                                         ; $51fa: $80
    db $eb                                        ; $51fb: $eb
    ld b, d                                       ; $51fc: $42
    ret nz                                        ; $51fd: $c0

    cp b                                          ; $51fe: $b8
    add c                                         ; $51ff: $81
    ld [hl], b                                    ; $5200: $70
    db $f4                                        ; $5201: $f4
    add l                                         ; $5202: $85
    set 7, a                                      ; $5203: $cb $ff
    add l                                         ; $5205: $85
    ld c, c                                       ; $5206: $49
    inc a                                         ; $5207: $3c
    and c                                         ; $5208: $a1
    ld l, d                                       ; $5209: $6a
    ld c, e                                       ; $520a: $4b
    ld a, [bc]                                    ; $520b: $0a
    cp [hl]                                       ; $520c: $be
    pop hl                                        ; $520d: $e1
    jr nc, jr_05e_51d4                            ; $520e: $30 $c4

    pop hl                                        ; $5210: $e1
    ld c, c                                       ; $5211: $49
    rst $18                                       ; $5212: $df
    adc c                                         ; $5213: $89
    inc l                                         ; $5214: $2c
    ret                                           ; $5215: $c9


    ld [hl+], a                                   ; $5216: $22
    ld l, d                                       ; $5217: $6a
    ld c, e                                       ; $5218: $4b
    db $fd                                        ; $5219: $fd
    add b                                         ; $521a: $80
    ld a, e                                       ; $521b: $7b
    ldh [$f1], a                                  ; $521c: $e0 $f1
    ld a, [hl+]                                   ; $521e: $2a
    ret                                           ; $521f: $c9


    sbc a                                         ; $5220: $9f
    pop bc                                        ; $5221: $c1
    pop af                                        ; $5222: $f1
    dec b                                         ; $5223: $05
    ld h, d                                       ; $5224: $62
    dec bc                                        ; $5225: $0b
    dec c                                         ; $5226: $0d
    dec bc                                        ; $5227: $0b
    ld c, d                                       ; $5228: $4a
    rrca                                          ; $5229: $0f
    ld a, [bc]                                    ; $522a: $0a
    ld l, d                                       ; $522b: $6a
    ld c, h                                       ; $522c: $4c
    ld c, h                                       ; $522d: $4c
    dec b                                         ; $522e: $05
    sbc a                                         ; $522f: $9f
    ld b, [hl]                                    ; $5230: $46
    ld c, b                                       ; $5231: $48
    sub d                                         ; $5232: $92
    add h                                         ; $5233: $84
    jp z, Jump_000_2160                           ; $5234: $ca $60 $21

    dec bc                                        ; $5237: $0b
    ret nz                                        ; $5238: $c0

    ldh [$81], a                                  ; $5239: $e0 $81
    ccf                                           ; $523b: $3f
    ccf                                           ; $523c: $3f
    sub c                                         ; $523d: $91
    ld b, a                                       ; $523e: $47
    inc hl                                        ; $523f: $23
    dec bc                                        ; $5240: $0b
    ld a, a                                       ; $5241: $7f
    pop hl                                        ; $5242: $e1
    ld [hl], l                                    ; $5243: $75
    add b                                         ; $5244: $80
    ld h, c                                       ; $5245: $61
    ld l, h                                       ; $5246: $6c
    ld a, $ff                                     ; $5247: $3e $ff
    ld b, d                                       ; $5249: $42
    xor c                                         ; $524a: $a9
    ld c, a                                       ; $524b: $4f
    add c                                         ; $524c: $81
    inc b                                         ; $524d: $04

jr_05e_524e:
    add c                                         ; $524e: $81
    ld a, [bc]                                    ; $524f: $0a
    dec bc                                        ; $5250: $0b
    ld a, a                                       ; $5251: $7f
    ldh [$a1], a                                  ; $5252: $e0 $a1
    dec hl                                        ; $5254: $2b
    ei                                            ; $5255: $fb
    ldh [rTAC], a                                 ; $5256: $e0 $07
    sbc a                                         ; $5258: $9f
    add b                                         ; $5259: $80
    adc d                                         ; $525a: $8a
    add [hl]                                      ; $525b: $86
    and h                                         ; $525c: $a4
    ld a, [bc]                                    ; $525d: $0a
    push bc                                       ; $525e: $c5
    pop hl                                        ; $525f: $e1
    dec hl                                        ; $5260: $2b
    add e                                         ; $5261: $83
    dec hl                                        ; $5262: $2b
    ld l, e                                       ; $5263: $6b
    cp h                                          ; $5264: $bc
    ldh [$ca], a                                  ; $5265: $e0 $ca
    rst $38                                       ; $5267: $ff
    call nz, Call_05e_4b09                        ; $5268: $c4 $09 $4b
    ld b, d                                       ; $526b: $42
    add l                                         ; $526c: $85
    add b                                         ; $526d: $80
    dec bc                                        ; $526e: $0b
    dec bc                                        ; $526f: $0b
    ld l, e                                       ; $5270: $6b
    dec bc                                        ; $5271: $0b
    inc a                                         ; $5272: $3c
    ret nz                                        ; $5273: $c0

    dec hl                                        ; $5274: $2b
    cp e                                          ; $5275: $bb
    ret nz                                        ; $5276: $c0

    ccf                                           ; $5277: $3f
    rst $38                                       ; $5278: $ff
    ld bc, $cfac                                  ; $5279: $01 $ac $cf
    ld hl, $6a15                                  ; $527c: $21 $15 $6a
    add l                                         ; $527f: $85
    add d                                         ; $5280: $82
    ld c, e                                       ; $5281: $4b

Jump_05e_5282:
    ld a, h                                       ; $5282: $7c
    ret nz                                        ; $5283: $c0

    dec bc                                        ; $5284: $0b
    ld a, a                                       ; $5285: $7f
    rra                                           ; $5286: $1f
    cp a                                          ; $5287: $bf
    ld c, a                                       ; $5288: $4f
    ld b, h                                       ; $5289: $44
    ld hl, $45c0                                  ; $528a: $21 $c0 $45
    add b                                         ; $528d: $80
    ld a, h                                       ; $528e: $7c
    ret nz                                        ; $528f: $c0

    cp a                                          ; $5290: $bf
    ldh [$c9], a                                  ; $5291: $e0 $c9
    rst $38                                       ; $5293: $ff
    add b                                         ; $5294: $80
    ld l, b                                       ; $5295: $68
    add l                                         ; $5296: $85
    add l                                         ; $5297: $85
    ld c, d                                       ; $5298: $4a
    ld l, e                                       ; $5299: $6b
    ld c, b                                       ; $529a: $48
    jp $c0c2                                      ; $529b: $c3 $c2 $c0


    rst $38                                       ; $529e: $ff
    ld b, c                                       ; $529f: $41
    xor e                                         ; $52a0: $ab
    inc c                                         ; $52a1: $0c
    adc l                                         ; $52a2: $8d
    ld b, [hl]                                    ; $52a3: $46
    add h                                         ; $52a4: $84
    ret nz                                        ; $52a5: $c0

    dec c                                         ; $52a6: $0d
    pop bc                                        ; $52a7: $c1
    ldh [rSTAT], a                                ; $52a8: $e0 $41
    dec c                                         ; $52aa: $0d
    add a                                         ; $52ab: $87
    ld a, a                                       ; $52ac: $7f
    rst $38                                       ; $52ad: $ff
    adc d                                         ; $52ae: $8a
    adc [hl]                                      ; $52af: $8e
    ld b, d                                       ; $52b0: $42
    ret nz                                        ; $52b1: $c0

    push hl                                       ; $52b2: $e5
    rst $38                                       ; $52b3: $ff
    pop hl                                        ; $52b4: $e1
    ld c, e                                       ; $52b5: $4b
    pop bc                                        ; $52b6: $c1
    rst $18                                       ; $52b7: $df
    inc l                                         ; $52b8: $2c
    cp a                                          ; $52b9: $bf
    adc d                                         ; $52ba: $8a

jr_05e_52bb:
    nop                                           ; $52bb: $00
    and e                                         ; $52bc: $a3
    ld l, d                                       ; $52bd: $6a
    ld a, [hl+]                                   ; $52be: $2a
    ret nz                                        ; $52bf: $c0

    db $e4                                        ; $52c0: $e4
    ld l, e                                       ; $52c1: $6b
    add b                                         ; $52c2: $80
    rst $38                                       ; $52c3: $ff
    ld a, l                                       ; $52c4: $7d
    dec l                                         ; $52c5: $2d
    ld c, a                                       ; $52c6: $4f
    ld c, d                                       ; $52c7: $4a
    ld l, d                                       ; $52c8: $6a
    ld c, d                                       ; $52c9: $4a
    ld l, d                                       ; $52ca: $6a
    cp l                                          ; $52cb: $bd
    jr nz, jr_05e_524e                            ; $52cc: $20 $80

    ld [c], a                                     ; $52ce: $e2
    ld l, e                                       ; $52cf: $6b
    jp Jump_000_167f                              ; $52d0: $c3 $7f $16


    ld a, l                                       ; $52d3: $7d
    cpl                                           ; $52d4: $2f
    ld l, d                                       ; $52d5: $6a
    ld c, d                                       ; $52d6: $4a
    pop bc                                        ; $52d7: $c1
    db $e3                                        ; $52d8: $e3
    dec bc                                        ; $52d9: $0b
    pop bc                                        ; $52da: $c1
    rst $38                                       ; $52db: $ff
    ccf                                           ; $52dc: $3f
    ld a, [c]                                     ; $52dd: $f2
    add e                                         ; $52de: $83
    ld [c], a                                     ; $52df: $e2
    ld [bc], a                                    ; $52e0: $02

jr_05e_52e1:
    ret nz                                        ; $52e1: $c0

    add b                                         ; $52e2: $80
    ld l, e                                       ; $52e3: $6b
    add c                                         ; $52e4: $81
    ld b, b                                       ; $52e5: $40
    add [hl]                                      ; $52e6: $86
    rra                                           ; $52e7: $1f
    cp l                                          ; $52e8: $bd
    ld l, $0a                                     ; $52e9: $2e $0a
    and d                                         ; $52eb: $a2
    ld b, d                                       ; $52ec: $42
    add b                                         ; $52ed: $80
    cp e                                          ; $52ee: $bb
    jr nz, jr_05e_52e1                            ; $52ef: $20 $f0

    add c                                         ; $52f1: $81
    rst $38                                       ; $52f2: $ff
    pop af                                        ; $52f3: $f1
    ldh a, [rSCX]                                 ; $52f4: $f0 $43
    jr nz, jr_05e_52bb                            ; $52f6: $20 $c3

    add c                                         ; $52f8: $81
    ld c, e                                       ; $52f9: $4b
    dec bc                                        ; $52fa: $0b
    dec hl                                        ; $52fb: $2b
    dec bc                                        ; $52fc: $0b
    ldh a, [$c3]                                  ; $52fd: $f0 $c3
    ret nz                                        ; $52ff: $c0

    add c                                         ; $5300: $81
    rst $38                                       ; $5301: $ff
    db $fc                                        ; $5302: $fc
    ld l, l                                       ; $5303: $6d
    add b                                         ; $5304: $80
    db $e3                                        ; $5305: $e3
    dec bc                                        ; $5306: $0b
    dec hl                                        ; $5307: $2b
    ld c, e                                       ; $5308: $4b
    dec hl                                        ; $5309: $2b
    rlca                                          ; $530a: $07
    dec bc                                        ; $530b: $0b
    dec hl                                        ; $530c: $2b
    ld c, h                                       ; $530d: $4c
    pop bc                                        ; $530e: $c1
    rst $38                                       ; $530f: $ff
    push bc                                       ; $5310: $c5
    and [hl]                                      ; $5311: $a6
    db $fc                                        ; $5312: $fc
    ld b, l                                       ; $5313: $45
    ld [bc], a                                    ; $5314: $02
    db $e3                                        ; $5315: $e3
    ret nz                                        ; $5316: $c0

    ldh [rNR11], a                                ; $5317: $e0 $11
    dec bc                                        ; $5319: $0b
    add b                                         ; $531a: $80
    pop hl                                        ; $531b: $e1
    rst $38                                       ; $531c: $ff
    rst $38                                       ; $531d: $ff
    ld a, [bc]                                    ; $531e: $0a
    ld h, b                                       ; $531f: $60
    ld c, h                                       ; $5320: $4c
    rst $38                                       ; $5321: $ff
    ldh [$c0], a                                  ; $5322: $e0 $c0
    db $ed                                        ; $5324: $ed
    ret nz                                        ; $5325: $c0

    add d                                         ; $5326: $82
    inc b                                         ; $5327: $04
    pop bc                                        ; $5328: $c1
    rst $18                                       ; $5329: $df
    call z, Call_05e_6c41                         ; $532a: $cc $41 $6c
    db $d3                                        ; $532d: $d3
    ld h, b                                       ; $532e: $60
    cp [hl]                                       ; $532f: $be
    rst $20                                       ; $5330: $e7
    nop                                           ; $5331: $00
    db $e3                                        ; $5332: $e3
    ld [bc], a                                    ; $5333: $02
    ldh [$80], a                                  ; $5334: $e0 $80
    add b                                         ; $5336: $80
    nop                                           ; $5337: $00
    xor b                                         ; $5338: $a8
    add sp, -$73                                  ; $5339: $e8 $8d
    ld d, a                                       ; $533b: $57
    rst $10                                       ; $533c: $d7
    ret nz                                        ; $533d: $c0

    sub a                                         ; $533e: $97
    ld h, c                                       ; $533f: $61
    push de                                       ; $5340: $d5
    db $e4                                        ; $5341: $e4
    nop                                           ; $5342: $00
    pop hl                                        ; $5343: $e1
    rst $00                                       ; $5344: $c7
    ld [bc], a                                    ; $5345: $02
    cp l                                          ; $5346: $bd
    pop hl                                        ; $5347: $e1
    sra e                                         ; $5348: $cb $2b
    dec hl                                        ; $534a: $2b
    cp a                                          ; $534b: $bf
    cp $4c                                        ; $534c: $fe $4c
    pop bc                                        ; $534e: $c1
    pop hl                                        ; $534f: $e1
    ld d, [hl]                                    ; $5350: $56
    ld l, b                                       ; $5351: $68
    ld c, h                                       ; $5352: $4c
    dec bc                                        ; $5353: $0b
    ld c, e                                       ; $5354: $4b
    ld l, e                                       ; $5355: $6b
    ld l, e                                       ; $5356: $6b
    xor [hl]                                      ; $5357: $ae
    db $e3                                        ; $5358: $e3
    dec hl                                        ; $5359: $2b
    db $fd                                        ; $535a: $fd
    pop bc                                        ; $535b: $c1
    ld b, b                                       ; $535c: $40
    ld a, l                                       ; $535d: $7d
    ld l, h                                       ; $535e: $6c
    sub b                                         ; $535f: $90
    jp $1500                                      ; $5360: $c3 $00 $15


    ld h, c                                       ; $5363: $61
    sub [hl]                                      ; $5364: $96
    ld h, h                                       ; $5365: $64
    ld b, b                                       ; $5366: $40
    db $e4                                        ; $5367: $e4
    cp e                                          ; $5368: $bb
    and d                                         ; $5369: $a2

jr_05e_536a:
    or [hl]                                       ; $536a: $b6
    ldh [rIF], a                                  ; $536b: $e0 $0f
    cp [hl]                                       ; $536d: $be
    ld d, l                                       ; $536e: $55
    and d                                         ; $536f: $a2
    inc a                                         ; $5370: $3c
    ld [c], a                                     ; $5371: $e2
    nop                                           ; $5372: $00
    rst $28                                       ; $5373: $ef
    rst $20                                       ; $5374: $e7
    ld a, h                                       ; $5375: $7c
    rst $00                                       ; $5376: $c7
    ld a, l                                       ; $5377: $7d
    db $dd                                        ; $5378: $dd
    pop de                                        ; $5379: $d1
    and $93                                       ; $537a: $e6 $93
    ld b, b                                       ; $537c: $40
    inc a                                         ; $537d: $3c
    inc hl                                        ; $537e: $23
    ret nz                                        ; $537f: $c0

    and e                                         ; $5380: $a3
    ld b, l                                       ; $5381: $45
    pop hl                                        ; $5382: $e1
    ld b, h                                       ; $5383: $44
    ld a, h                                       ; $5384: $7c
    ret nz                                        ; $5385: $c0

    jp nz, Jump_000_2c7e                          ; $5386: $c2 $7e $2c

    ld a, [de]                                    ; $5389: $1a

jr_05e_538a:
    ld h, b                                       ; $538a: $60
    ld a, [hl]                                    ; $538b: $7e
    push hl                                       ; $538c: $e5
    ld d, $c3                                     ; $538d: $16 $c3
    ld c, e                                       ; $538f: $4b
    ld b, [hl]                                    ; $5390: $46
    ld h, c                                       ; $5391: $61
    sbc b                                         ; $5392: $98
    ei                                            ; $5393: $fb
    ldh [$3c], a                                  ; $5394: $e0 $3c
    pop bc                                        ; $5396: $c1
    inc b                                         ; $5397: $04
    rst $18                                       ; $5398: $df
    inc l                                         ; $5399: $2c
    inc c                                         ; $539a: $0c
    cp a                                          ; $539b: $bf
    ld [c], a                                     ; $539c: $e2
    ld [de], a                                    ; $539d: $12
    jr nz, jr_05e_540b                            ; $539e: $20 $6b

    nop                                           ; $53a0: $00
    dec d                                         ; $53a1: $15
    jp $df0e                                      ; $53a2: $c3 $0e $df


    db $ed                                        ; $53a5: $ed
    db $ec                                        ; $53a6: $ec
    jr jr_05e_536a                                ; $53a7: $18 $c1

    inc d                                         ; $53a9: $14
    ld b, c                                       ; $53aa: $41
    sub e                                         ; $53ab: $93
    and h                                         ; $53ac: $a4
    ret nz                                        ; $53ad: $c0

    rst $38                                       ; $53ae: $ff
    ld c, h                                       ; $53af: $4c
    dec c                                         ; $53b0: $0d
    jr nz, jr_05e_538a                            ; $53b1: $20 $d7

    and c                                         ; $53b3: $a1
    pop bc                                        ; $53b4: $c1
    ldh [$d5], a                                  ; $53b5: $e0 $d5
    rst $38                                       ; $53b7: $ff
    dec b                                         ; $53b8: $05
    or l                                          ; $53b9: $b5
    db $fc                                        ; $53ba: $fc
    ret nz                                        ; $53bb: $c0

    ld l, e                                       ; $53bc: $6b
    ret c                                         ; $53bd: $d8

    rst $38                                       ; $53be: $ff
    inc c                                         ; $53bf: $0c
    sbc c                                         ; $53c0: $99
    nop                                           ; $53c1: $00
    rst $38                                       ; $53c2: $ff
    rst $38                                       ; $53c3: $ff
    rst $38                                       ; $53c4: $ff
    rst $38                                       ; $53c5: $ff
    rst $38                                       ; $53c6: $ff
    rst $38                                       ; $53c7: $ff
    rst $38                                       ; $53c8: $ff
    rst $38                                       ; $53c9: $ff
    rst $38                                       ; $53ca: $ff
    rst $38                                       ; $53cb: $ff
    jp nz, Jump_000_0043                          ; $53cc: $c2 $43 $00

    nop                                           ; $53cf: $00
    nop                                           ; $53d0: $00
    db $fd                                        ; $53d1: $fd
    sbc c                                         ; $53d2: $99
    rst $38                                       ; $53d3: $ff
    db $eb                                        ; $53d4: $eb
    sbc b                                         ; $53d5: $98
    sbc b                                         ; $53d6: $98
    sbc b                                         ; $53d7: $98
    sub a                                         ; $53d8: $97
    sub a                                         ; $53d9: $97
    sub a                                         ; $53da: $97
    adc a                                         ; $53db: $8f
    sub [hl]                                      ; $53dc: $96
    sub [hl]                                      ; $53dd: $96
    sub [hl]                                      ; $53de: $96
    sub l                                         ; $53df: $95
    rst $38                                       ; $53e0: $ff
    ld [c], a                                     ; $53e1: $e2
    rst $30                                       ; $53e2: $f7
    ldh [$f1], a                                  ; $53e3: $e0 $f1
    ldh [$98], a                                  ; $53e5: $e0 $98
    ld bc, $e798                                  ; $53e7: $01 $98 $e7
    pop hl                                        ; $53ea: $e1
    ld [$ede0], a                                 ; $53eb: $ea $e0 $ed
    db $e4                                        ; $53ee: $e4
    db $eb                                        ; $53ef: $eb
    and $fe                                       ; $53f0: $e6 $fe
    db $ed                                        ; $53f2: $ed
    jp nz, $c1e0                                  ; $53f3: $c2 $e0 $c1

    db $ec                                        ; $53f6: $ec
    ld a, $c2                                     ; $53f7: $3e $c2
    ld [c], a                                     ; $53f9: $e2
    sbc b                                         ; $53fa: $98
    sbc c                                         ; $53fb: $99
    nop                                           ; $53fc: $00
    ld bc, $a899                                  ; $53fd: $01 $99 $a8
    ldh [$a9], a                                  ; $5400: $e0 $a9
    db $e3                                        ; $5402: $e3
    ldh [$bf], a                                  ; $5403: $e0 $bf
    db $e4                                        ; $5405: $e4
    ret nz                                        ; $5406: $c0

    ldh a, [$c1]                                  ; $5407: $f0 $c1
    db $e4                                        ; $5409: $e4
    sub a                                         ; $540a: $97

jr_05e_540b:
    db $e3                                        ; $540b: $e3
    reti                                          ; $540c: $d9


    and $98                                       ; $540d: $e6 $98
    dec c                                         ; $540f: $0d
    rlca                                          ; $5410: $07
    nop                                           ; $5411: $00
    rst $38                                       ; $5412: $ff
    ldh [$65], a                                  ; $5413: $e0 $65
    ldh [$67], a                                  ; $5415: $e0 $67
    pop hl                                        ; $5417: $e1
    xor b                                         ; $5418: $a8
    rst $20                                       ; $5419: $e7
    xor c                                         ; $541a: $a9
    pop hl                                        ; $541b: $e1
    ld b, h                                       ; $541c: $44
    pop af                                        ; $541d: $f1
    ld b, d                                       ; $541e: $42
    db $e4                                        ; $541f: $e4
    ld b, a                                       ; $5420: $47
    ld [c], a                                     ; $5421: $e2
    cp $45                                        ; $5422: $fe $45
    pop hl                                        ; $5424: $e1
    rrca                                          ; $5425: $0f
    inc b                                         ; $5426: $04
    inc bc                                        ; $5427: $03
    ld b, l                                       ; $5428: $45
    ld d, b                                       ; $5429: $50
    ld d, b                                       ; $542a: $50
    ld d, b                                       ; $542b: $50
    ld b, e                                       ; $542c: $43
    inc bc                                        ; $542d: $03
    inc b                                         ; $542e: $04
    ld a, [hl]                                    ; $542f: $7e
    rst $20                                       ; $5430: $e7
    ld l, b                                       ; $5431: $68
    rst $20                                       ; $5432: $e7
    inc b                                         ; $5433: $04
    db $ec                                        ; $5434: $ec
    pop bc                                        ; $5435: $c1
    rst $20                                       ; $5436: $e7
    sub l                                         ; $5437: $95
    add l                                         ; $5438: $85
    db $e3                                        ; $5439: $e3
    cp $c1                                        ; $543a: $fe $c1
    ldh [rSC], a                                  ; $543c: $e0 $02
    ld b, l                                       ; $543e: $45
    ld c, b                                       ; $543f: $48
    ld c, c                                       ; $5440: $49
    ld e, l                                       ; $5441: $5d
    ld e, l                                       ; $5442: $5d
    ld e, l                                       ; $5443: $5d
    rlca                                          ; $5444: $07
    ld c, c                                       ; $5445: $49
    ld c, b                                       ; $5446: $48
    ld [bc], a                                    ; $5447: $02
    ld a, [hl]                                    ; $5448: $7e
    db $e3                                        ; $5449: $e3
    dec a                                         ; $544a: $3d
    db $e4                                        ; $544b: $e4
    cp a                                          ; $544c: $bf
    rst $28                                       ; $544d: $ef
    push bc                                       ; $544e: $c5
    add $81                                       ; $544f: $c6 $81
    db $e4                                        ; $5451: $e4
    db $fc                                        ; $5452: $fc
    jp z, $c1c2                                   ; $5453: $ca $c2 $c1

    ldh [rBGP], a                                 ; $5456: $e0 $47
    ld h, b                                       ; $5458: $60
    ld h, c                                       ; $5459: $61
    ld h, c                                       ; $545a: $61
    ld h, c                                       ; $545b: $61
    ld d, h                                       ; $545c: $54
    rrca                                          ; $545d: $0f
    ld e, c                                       ; $545e: $59
    ld d, h                                       ; $545f: $54
    ld d, l                                       ; $5460: $55
    ld b, $a3                                     ; $5461: $06 $a3
    jp nz, $c5bb                                  ; $5463: $c2 $bb $c5

    cp l                                          ; $5466: $bd
    call $e7c1                                    ; $5467: $cd $c1 $e7
    call c, $c287                                 ; $546a: $dc $87 $c2
    adc d                                         ; $546d: $8a
    ret nz                                        ; $546e: $c0

    sbc c                                         ; $546f: $99
    ld bc, $c100                                  ; $5470: $01 $00 $c1
    push hl                                       ; $5473: $e5
    ld d, d                                       ; $5474: $52
    ld b, l                                       ; $5475: $45
    rrca                                          ; $5476: $0f
    ld c, [hl]                                    ; $5477: $4e
    ld c, b                                       ; $5478: $48
    ld b, e                                       ; $5479: $43
    ld a, [bc]                                    ; $547a: $0a
    ld a, d                                       ; $547b: $7a
    call nz, $e67e                                ; $547c: $c4 $7e $e6
    db $fd                                        ; $547f: $fd
    jp z, $ce86                                   ; $5480: $ca $86 $ce

    db $fc                                        ; $5483: $fc
    ld c, d                                       ; $5484: $4a
    ret nz                                        ; $5485: $c0

    add d                                         ; $5486: $82
    push hl                                       ; $5487: $e5
    ld d, [hl]                                    ; $5488: $56
    ld b, l                                       ; $5489: $45
    ld c, d                                       ; $548a: $4a
    ld h, b                                       ; $548b: $60
    ld d, h                                       ; $548c: $54
    ld e, d                                       ; $548d: $5a
    add a                                         ; $548e: $87
    ld a, [bc]                                    ; $548f: $0a
    ld bc, $bb00                                  ; $5490: $01 $00 $bb
    rst $00                                       ; $5493: $c7
    inc a                                         ; $5494: $3c
    call $e364                                    ; $5495: $cd $64 $e3
    dec e                                         ; $5498: $1d
    jp z, $fb98                                   ; $5499: $ca $98 $fb

    sbc c                                         ; $549c: $99
    ld b, $43                                     ; $549d: $06 $43
    db $e3                                        ; $549f: $e3
    ld h, c                                       ; $54a0: $61
    ld e, d                                       ; $54a1: $5a
    ld b, [hl]                                    ; $54a2: $46
    ld c, a                                       ; $54a3: $4f
    ld d, [hl]                                    ; $54a4: $56
    rlca                                          ; $54a5: $07
    ld b, e                                       ; $54a6: $43
    ld b, e                                       ; $54a7: $43
    ld b, $e0                                     ; $54a8: $06 $e0
    and h                                         ; $54aa: $a4
    and b                                         ; $54ab: $a0
    call nz, $cb7c                                ; $54ac: $c4 $7c $cb
    ret z                                         ; $54af: $c8

    and h                                         ; $54b0: $a4
    call z, $eea6                                 ; $54b1: $cc $a6 $ee
    jp z, $0ea1                                   ; $54b4: $ca $a1 $0e

    dec b                                         ; $54b7: $05
    ld c, d                                       ; $54b8: $4a
    pop bc                                        ; $54b9: $c1
    ld [c], a                                     ; $54ba: $e2
    ld h, c                                       ; $54bb: $61
    ld e, d                                       ; $54bc: $5a
    ld b, l                                       ; $54bd: $45
    rst $38                                       ; $54be: $ff
    ld c, e                                       ; $54bf: $4b
    ld e, d                                       ; $54c0: $5a

Jump_05e_54c1:
    ld b, [hl]                                    ; $54c1: $46
    ld b, [hl]                                    ; $54c2: $46
    inc bc                                        ; $54c3: $03
    inc bc                                        ; $54c4: $03
    dec bc                                        ; $54c5: $0b
    inc bc                                        ; $54c6: $03
    add e                                         ; $54c7: $83
    inc b                                         ; $54c8: $04
    rrca                                          ; $54c9: $0f
    add hl, sp                                    ; $54ca: $39
    push bc                                       ; $54cb: $c5
    cp e                                          ; $54cc: $bb
    xor h                                         ; $54cd: $ac
    add c                                         ; $54ce: $81
    and $cc                                       ; $54cf: $e6 $cc
    and l                                         ; $54d1: $a5
    adc e                                         ; $54d2: $8b
    and b                                         ; $54d3: $a0
    ld b, $fb                                     ; $54d4: $06 $fb
    ld b, l                                       ; $54d6: $45
    ld c, e                                       ; $54d7: $4b
    pop bc                                        ; $54d8: $c1
    ld [c], a                                     ; $54d9: $e2
    ld h, c                                       ; $54da: $61
    ld d, [hl]                                    ; $54db: $56
    ld b, h                                       ; $54dc: $44
    ld d, h                                       ; $54dd: $54
    ld d, l                                       ; $54de: $55
    ld a, a                                       ; $54df: $7f
    ld c, b                                       ; $54e0: $48
    ld c, [hl]                                    ; $54e1: $4e
    ld c, c                                       ; $54e2: $49
    ld c, h                                       ; $54e3: $4c
    ld e, l                                       ; $54e4: $5d
    ld b, a                                       ; $54e5: $47
    ld b, l                                       ; $54e6: $45
    cp e                                          ; $54e7: $bb
    ret nz                                        ; $54e8: $c0

    add b                                         ; $54e9: $80
    rst $18                                       ; $54ea: $df
    and e                                         ; $54eb: $a3
    cp e                                          ; $54ec: $bb
    xor h                                         ; $54ed: $ac
    jp hl                                         ; $54ee: $e9


    push hl                                       ; $54ef: $e5
    ld b, a                                       ; $54f0: $47
    call nz, $a136                                ; $54f1: $c4 $36 $a1
    add c                                         ; $54f4: $81
    and $c1                                       ; $54f5: $e6 $c1
    ret nz                                        ; $54f7: $c0

    ld c, b                                       ; $54f8: $48
    ld l, a                                       ; $54f9: $6f
    ld c, c                                       ; $54fa: $49
    ld h, b                                       ; $54fb: $60
    ld d, h                                       ; $54fc: $54
    ld d, e                                       ; $54fd: $53
    ei                                            ; $54fe: $fb
    ldh [rHDMA5], a                               ; $54ff: $e0 $55
    ld a, [bc]                                    ; $5501: $0a
    sub [hl]                                      ; $5502: $96
    db $e3                                        ; $5503: $e3
    ld hl, sp-$45                                 ; $5504: $f8 $bb
    and [hl]                                      ; $5506: $a6
    ld bc, $47eb                                  ; $5507: $01 $eb $47
    add $00                                       ; $550a: $c6 $00
    ld bc, $070d                                  ; $550c: $01 $0d $07
    ld [bc], a                                    ; $550f: $02
    cp $81                                        ; $5510: $fe $81
    push hl                                       ; $5512: $e5
    ld d, d                                       ; $5513: $52
    ld c, b                                       ; $5514: $48
    ld c, c                                       ; $5515: $49
    ld d, a                                       ; $5516: $57
    ld d, h                                       ; $5517: $54
    ld d, e                                       ; $5518: $53
    ld b, l                                       ; $5519: $45
    dec b                                         ; $551a: $05
    ld e, a                                       ; $551b: $5f
    scf                                           ; $551c: $37
    ret nz                                        ; $551d: $c0

    ld d, l                                       ; $551e: $55
    ei                                            ; $551f: $fb
    ret nz                                        ; $5520: $c0

    push af                                       ; $5521: $f5
    add h                                         ; $5522: $84
    ret nz                                        ; $5523: $c0

    db $f4                                        ; $5524: $f4
    ld b, a                                       ; $5525: $47
    call nz, $a08a                                ; $5526: $c4 $8a $a0
    rst $30                                       ; $5529: $f7
    ld b, l                                       ; $552a: $45
    ld b, h                                       ; $552b: $44
    ld c, l                                       ; $552c: $4d
    jp Jump_05e_54c1                              ; $552d: $c3 $c1 $54


    ld d, e                                       ; $5530: $53
    ld d, b                                       ; $5531: $50
    ld d, e                                       ; $5532: $53
    cp a                                          ; $5533: $bf
    ld d, e                                       ; $5534: $53
    ld c, b                                       ; $5535: $48
    ld c, b                                       ; $5536: $48
    ld d, [hl]                                    ; $5537: $56
    ld d, l                                       ; $5538: $55
    ld d, [hl]                                    ; $5539: $56
    push af                                       ; $553a: $f5
    ldh [rSC], a                                  ; $553b: $e0 $02
    and c                                         ; $553d: $a1
    rrca                                          ; $553e: $0f
    push af                                       ; $553f: $f5
    add h                                         ; $5540: $84
    add b                                         ; $5541: $80
    db $ec                                        ; $5542: $ec
    ld b, b                                       ; $5543: $40
    and $c7                                       ; $5544: $e6 $c7
    and h                                         ; $5546: $a4
    ld b, $8a                                     ; $5547: $06 $8a
    and b                                         ; $5549: $a0
    ld c, c                                       ; $554a: $49
    ei                                            ; $554b: $fb
    ld c, b                                       ; $554c: $48
    ld e, [hl]                                    ; $554d: $5e
    add e                                         ; $554e: $83
    db $e3                                        ; $554f: $e3
    ld e, l                                       ; $5550: $5d
    ld d, [hl]                                    ; $5551: $56
    ld b, a                                       ; $5552: $47
    ld d, h                                       ; $5553: $54
    ld e, c                                       ; $5554: $59
    rrca                                          ; $5555: $0f
    ld c, e                                       ; $5556: $4b
    ld d, [hl]                                    ; $5557: $56
    ld b, l                                       ; $5558: $45
    ld e, e                                       ; $5559: $5b
    pop bc                                        ; $555a: $c1
    ret nz                                        ; $555b: $c0

    inc a                                         ; $555c: $3c
    pop bc                                        ; $555d: $c1
    add b                                         ; $555e: $80
    ldh a, [rP1]                                  ; $555f: $f0 $00
    db $ec                                        ; $5561: $ec
    and [hl]                                      ; $5562: $a6
    add [hl]                                      ; $5563: $86
    jp Jump_05e_6060                              ; $5564: $c3 $60 $60


    add e                                         ; $5567: $83
    ldh [$81], a                                  ; $5568: $e0 $81
    and c                                         ; $556a: $a1
    ld c, e                                       ; $556b: $4b
    cp a                                          ; $556c: $bf
    ldh [rVBK], a                                 ; $556d: $e0 $4f
    bit 3, b                                      ; $556f: $cb $58
    rla                                           ; $5571: $17
    cp b                                          ; $5572: $b8
    add c                                         ; $5573: $81
    dec c                                         ; $5574: $0d
    nop                                           ; $5575: $00
    di                                            ; $5576: $f3
    add b                                         ; $5577: $80
    jp z, $9998                                   ; $5578: $ca $98 $99

    db $dd                                        ; $557b: $dd
    ld [$c486], sp                                ; $557c: $08 $86 $c4
    ld d, d                                       ; $557f: $52
    ld a, [hl+]                                   ; $5580: $2a
    ld [hl-], a                                   ; $5581: $32
    inc a                                         ; $5582: $3c
    pop hl                                        ; $5583: $e1
    ld h, b                                       ; $5584: $60
    ld e, d                                       ; $5585: $5a
    ld a, a                                       ; $5586: $7f
    ld d, [hl]                                    ; $5587: $56
    add sp, $4a                                   ; $5588: $e8 $4a
    ld h, b                                       ; $558a: $60
    ld e, h                                       ; $558b: $5c
    dec bc                                        ; $558c: $0b
    ld b, e                                       ; $558d: $43
    cp b                                          ; $558e: $b8
    add c                                         ; $558f: $81
    ret nc                                        ; $5590: $d0

    ld a, $c1                                     ; $5591: $3e $c1
    add b                                         ; $5593: $80
    db $d3                                        ; $5594: $d3
    ld a, a                                       ; $5595: $7f
    push bc                                       ; $5596: $c5
    ret nz                                        ; $5597: $c0

    ldh [rHDMA1], a                               ; $5598: $e0 $51
    ld b, l                                       ; $559a: $45
    ldh [rHDMA4], a                               ; $559b: $e0 $54
    ld d, h                                       ; $559d: $54
    rst $28                                       ; $559e: $ef
    ld d, d                                       ; $559f: $52
    ld a, [hl+]                                   ; $55a0: $2a
    jr nz, jr_05e_55d5                            ; $55a1: $20 $32

    dec a                                         ; $55a3: $3d
    jp nz, Jump_05e_5a5a                          ; $55a4: $c2 $5a $5a

    ld e, d                                       ; $55a7: $5a
    rlca                                          ; $55a8: $07
    ld d, c                                       ; $55a9: $51
    ld e, [hl]                                    ; $55aa: $5e
    ld c, b                                       ; $55ab: $48
    ccf                                           ; $55ac: $3f
    ret nz                                        ; $55ad: $c0

    ld a, $c4                                     ; $55ae: $3e $c4
    add b                                         ; $55b0: $80
    pop af                                        ; $55b1: $f1
    rst $38                                       ; $55b2: $ff
    and [hl]                                      ; $55b3: $a6
    sub b                                         ; $55b4: $90
    ld h, b                                       ; $55b5: $60
    rst $30                                       ; $55b6: $f7
    ld [$5245], sp                                ; $55b7: $08 $45 $52
    adc d                                         ; $55ba: $8a
    ret nz                                        ; $55bb: $c0

    ld c, [hl]                                    ; $55bc: $4e
    ld c, b                                       ; $55bd: $48
    ld a, [hl+]                                   ; $55be: $2a
    ld h, $7b                                     ; $55bf: $26 $7b
    inc h                                         ; $55c1: $24
    ld d, l                                       ; $55c2: $55
    ld a, a                                       ; $55c3: $7f
    and c                                         ; $55c4: $a1
    ld c, e                                       ; $55c5: $4b
    ld d, [hl]                                    ; $55c6: $56
    ld d, [hl]                                    ; $55c7: $56
    ld c, d                                       ; $55c8: $4a
    ld [hl-], a                                   ; $55c9: $32
    ldh [$c0], a                                  ; $55ca: $e0 $c0
    ld [hl], h                                    ; $55cc: $74
    and c                                         ; $55cd: $a1
    ld a, $c1                                     ; $55ce: $3e $c1
    nop                                           ; $55d0: $00
    ldh a, [$7f]                                  ; $55d1: $f0 $7f
    and a                                         ; $55d3: $a7
    and h                                         ; $55d4: $a4

jr_05e_55d5:
    ld h, c                                       ; $55d5: $61
    ld c, d                                       ; $55d6: $4a
    add b                                         ; $55d7: $80
    ld e, e                                       ; $55d8: $5b
    ld b, a                                       ; $55d9: $47
    rst $38                                       ; $55da: $ff
    ld h, b                                       ; $55db: $60
    ld d, a                                       ; $55dc: $57
    ld h, b                                       ; $55dd: $60
    ld d, l                                       ; $55de: $55
    add hl, sp                                    ; $55df: $39
    dec [hl]                                      ; $55e0: $35
    add hl, sp                                    ; $55e1: $39
    ld d, d                                       ; $55e2: $52
    jr jr_05e_5624                                ; $55e3: $18 $3f

    pop hl                                        ; $55e5: $e1
    add b                                         ; $55e6: $80
    add b                                         ; $55e7: $80
    or l                                          ; $55e8: $b5
    and e                                         ; $55e9: $a3
    ld h, c                                       ; $55ea: $61
    ld e, d                                       ; $55eb: $5a
    ret nz                                        ; $55ec: $c0

    pop hl                                        ; $55ed: $e1
    add b                                         ; $55ee: $80
    rst $08                                       ; $55ef: $cf
    cp $ac                                        ; $55f0: $fe $ac
    rst $38                                       ; $55f2: $ff
    rrca                                          ; $55f3: $0f
    rlca                                          ; $55f4: $07
    inc c                                         ; $55f5: $0c
    ld e, [hl]                                    ; $55f6: $5e
    ld d, e                                       ; $55f7: $53
    ld b, e                                       ; $55f8: $43
    ld d, [hl]                                    ; $55f9: $56
    ld d, [hl]                                    ; $55fa: $56
    cp a                                          ; $55fb: $bf
    ld b, l                                       ; $55fc: $45
    jr c, @+$40                                   ; $55fd: $38 $3e

    ld c, d                                       ; $55ff: $4a
    ld h, c                                       ; $5600: $61
    ld d, [hl]                                    ; $5601: $56
    ld a, h                                       ; $5602: $7c
    ldh [$5d], a                                  ; $5603: $e0 $5d
    pop af                                        ; $5605: $f1
    ld e, l                                       ; $5606: $5d
    ret nz                                        ; $5607: $c0

    db $e4                                        ; $5608: $e4
    add b                                         ; $5609: $80
    cp $c5                                        ; $560a: $fe $c5
    ld h, e                                       ; $560c: $63
    sbc c                                         ; $560d: $99
    inc c                                         ; $560e: $0c
    ld c, l                                       ; $560f: $4d
    ld c, h                                       ; $5610: $4c
    ld a, a                                       ; $5611: $7f
    ld d, d                                       ; $5612: $52
    ld d, l                                       ; $5613: $55
    ld h, c                                       ; $5614: $61
    ld d, h                                       ; $5615: $54
    ld c, b                                       ; $5616: $48
    ld b, e                                       ; $5617: $43
    ld d, l                                       ; $5618: $55
    ld bc, $0fa0                                  ; $5619: $01 $a0 $0f
    ld d, e                                       ; $561c: $53
    ld d, h                                       ; $561d: $54
    ld d, a                                       ; $561e: $57
    ld e, d                                       ; $561f: $5a
    ld a, b                                       ; $5620: $78
    pop hl                                        ; $5621: $e1
    ld [hl], $81                                  ; $5622: $36 $81

jr_05e_5624:
    nop                                           ; $5624: $00
    di                                            ; $5625: $f3
    ld a, a                                       ; $5626: $7f
    set 7, [hl]                                   ; $5627: $cb $fe
    adc a                                         ; $5629: $8f
    ld b, b                                       ; $562a: $40
    dec b                                         ; $562b: $05
    ld c, e                                       ; $562c: $4b
    ld h, c                                       ; $562d: $61
    ld c, c                                       ; $562e: $49
    ld b, [hl]                                    ; $562f: $46
    ld c, l                                       ; $5630: $4d
    ld h, c                                       ; $5631: $61
    rst $30                                       ; $5632: $f7
    ld h, b                                       ; $5633: $60
    ld c, c                                       ; $5634: $49
    ld c, c                                       ; $5635: $49
    ld b, c                                       ; $5636: $41
    add b                                         ; $5637: $80
    ld b, [hl]                                    ; $5638: $46
    ld b, l                                       ; $5639: $45
    ld b, e                                       ; $563a: $43
    ld b, e                                       ; $563b: $43
    ld a, $bb                                     ; $563c: $3e $bb
    ldh [$61], a                                  ; $563e: $e0 $61
    ld d, a                                       ; $5640: $57
    ld d, d                                       ; $5641: $52
    ld b, l                                       ; $5642: $45
    ld [bc], a                                    ; $5643: $02
    add b                                         ; $5644: $80
    db $d3                                        ; $5645: $d3
    rst $38                                       ; $5646: $ff
    adc e                                         ; $5647: $8b
    ld [hl], d                                    ; $5648: $72
    adc a                                         ; $5649: $8f
    ld b, b                                       ; $564a: $40
    ld b, $c7                                     ; $564b: $06 $c7
    ret nz                                        ; $564d: $c0

    nop                                           ; $564e: $00
    and l                                         ; $564f: $a5
    ld c, c                                       ; $5650: $49
    ld b, h                                       ; $5651: $44
    ld b, [hl]                                    ; $5652: $46
    rst $38                                       ; $5653: $ff
    pop hl                                        ; $5654: $e1
    inc hl                                        ; $5655: $23
    ld b, l                                       ; $5656: $45
    ld e, e                                       ; $5657: $5b
    ld a, a                                       ; $5658: $7f
    add d                                         ; $5659: $82
    ld b, c                                       ; $565a: $41
    and a                                         ; $565b: $a7
    add b                                         ; $565c: $80
    ld sp, hl                                     ; $565d: $f9
    ld b, $4b                                     ; $565e: $06 $4b
    ldh [$be], a                                  ; $5660: $e0 $be
    ret nz                                        ; $5662: $c0

    ld e, [hl]                                    ; $5663: $5e
    ld b, b                                       ; $5664: $40
    add d                                         ; $5665: $82
    ld e, b                                       ; $5666: $58
    ld b, h                                       ; $5667: $44
    ld d, b                                       ; $5668: $50
    ld b, l                                       ; $5669: $45
    cp [hl]                                       ; $566a: $be
    ld [c], a                                     ; $566b: $e2
    ld [$4536], sp                                ; $566c: $08 $36 $45
    db $fc                                        ; $566f: $fc
    ld a, h                                       ; $5670: $7c
    ld c, a                                       ; $5671: $4f
    nop                                           ; $5672: $00
    db $ed                                        ; $5673: $ed
    ld a, [bc]                                    ; $5674: $0a
    ld b, a                                       ; $5675: $47

jr_05e_5676:
    ld c, c                                       ; $5676: $49
    ld c, b                                       ; $5677: $48
    ld e, e                                       ; $5678: $5b
    ld b, e                                       ; $5679: $43
    ld a, d                                       ; $567a: $7a
    dec bc                                        ; $567b: $0b
    db $e3                                        ; $567c: $e3
    ld h, c                                       ; $567d: $61
    ld b, [hl]                                    ; $567e: $46
    add b                                         ; $567f: $80
    ld b, e                                       ; $5680: $43
    ld c, b                                       ; $5681: $48
    ld c, b                                       ; $5682: $48
    ld b, h                                       ; $5683: $44
    ld b, h                                       ; $5684: $44
    ldh [$f8], a                                  ; $5685: $e0 $f8
    pop bc                                        ; $5687: $c1
    sub e                                         ; $5688: $93
    add a                                         ; $5689: $87
    daa                                           ; $568a: $27
    add l                                         ; $568b: $85
    ld b, [hl]                                    ; $568c: $46
    ld b, $52                                     ; $568d: $06 $52
    ld e, l                                       ; $568f: $5d
    ld h, c                                       ; $5690: $61
    ld d, h                                       ; $5691: $54
    ld sp, hl                                     ; $5692: $f9
    ld b, l                                       ; $5693: $45
    ld hl, sp-$60                                 ; $5694: $f8 $a0
    ld c, b                                       ; $5696: $48
    call nz, Call_05e_604c                        ; $5697: $c4 $4c $60
    ld h, b                                       ; $569a: $60
    ld e, h                                       ; $569b: $5c
    ld [$6db0], sp                                ; $569c: $08 $b0 $6d
    ld b, d                                       ; $569f: $42
    ld b, c                                       ; $56a0: $41
    or c                                          ; $56a1: $b1
    ret nz                                        ; $56a2: $c0

    xor c                                         ; $56a3: $a9
    add l                                         ; $56a4: $85
    ld b, e                                       ; $56a5: $43
    ld [$4d51], sp                                ; $56a6: $08 $51 $4d
    add b                                         ; $56a9: $80
    jr c, @+$75                                   ; $56aa: $38 $73

    jr c, jr_05e_56e5                             ; $56ac: $38 $37

    jp z, $7ac0                                   ; $56ae: $ca $c0 $7a

    add d                                         ; $56b1: $82
    ld d, h                                       ; $56b2: $54
    ld d, a                                       ; $56b3: $57
    ld d, d                                       ; $56b4: $52
    push bc                                       ; $56b5: $c5
    jp nz, $dad0                                  ; $56b6: $c2 $d0 $da

    and l                                         ; $56b9: $a5
    ld a, h                                       ; $56ba: $7c
    dec l                                         ; $56bb: $2d
    ret nz                                        ; $56bc: $c0

    res 0, l                                      ; $56bd: $cb $85
    ld b, b                                       ; $56bf: $40
    inc c                                         ; $56c0: $0c
    ld d, b                                       ; $56c1: $50
    and b                                         ; $56c2: $a0
    ld d, d                                       ; $56c3: $52
    ld [hl], $fd                                  ; $56c4: $36 $fd
    jp $e0be                                      ; $56c6: $c3 $be $e0


    ld e, c                                       ; $56c9: $59
    ld e, c                                       ; $56ca: $59
    ld e, c                                       ; $56cb: $59
    ld d, e                                       ; $56cc: $53
    inc bc                                        ; $56cd: $03
    inc bc                                        ; $56ce: $03
    or b                                          ; $56cf: $b0
    push bc                                       ; $56d0: $c5
    push bc                                       ; $56d1: $c5
    ld a, [hl-]                                   ; $56d2: $3a
    dec h                                         ; $56d3: $25
    db $fc                                        ; $56d4: $fc
    inc c                                         ; $56d5: $0c
    ld b, b                                       ; $56d6: $40
    call z, Call_000_020f                         ; $56d7: $cc $0f $02
    ld b, a                                       ; $56da: $47
    ld b, e                                       ; $56db: $43
    ld [hl], $0f                                  ; $56dc: $36 $0f
    dec [hl]                                      ; $56de: $35
    dec [hl]                                      ; $56df: $35
    jr c, jr_05e_5719                             ; $56e0: $38 $37

    ld b, d                                       ; $56e2: $42
    ld b, b                                       ; $56e3: $40
    rlca                                          ; $56e4: $07

jr_05e_56e5:
    add e                                         ; $56e5: $83
    cp e                                          ; $56e6: $bb
    dec b                                         ; $56e7: $05
    ld b, b                                       ; $56e8: $40
    ld d, a                                       ; $56e9: $57
    ld hl, sp-$41                                 ; $56ea: $f8 $bf
    add e                                         ; $56ec: $83
    adc c                                         ; $56ed: $89
    jr nz, jr_05e_5676                            ; $56ee: $20 $86

    ld b, e                                       ; $56f0: $43
    ld h, c                                       ; $56f1: $61
    ld d, l                                       ; $56f2: $55
    ld a, [hl-]                                   ; $56f3: $3a
    jp $0f35                                      ; $56f4: $c3 $35 $0f


    xor h                                         ; $56f7: $ac
    add hl, sp                                    ; $56f8: $39
    ld c, e                                       ; $56f9: $4b
    ld h, c                                       ; $56fa: $61
    ld b, e                                       ; $56fb: $43
    ldh [rSTAT], a                                ; $56fc: $e0 $41
    ld b, e                                       ; $56fe: $43
    ret nz                                        ; $56ff: $c0

    scf                                           ; $5700: $37
    ld a, a                                       ; $5701: $7f
    adc c                                         ; $5702: $89
    db $fd                                        ; $5703: $fd
    ld b, $86                                     ; $5704: $06 $86
    ld b, e                                       ; $5706: $43
    ld d, h                                       ; $5707: $54
    ld h, b                                       ; $5708: $60
    ld d, [hl]                                    ; $5709: $56
    add hl, sp                                    ; $570a: $39
    dec [hl]                                      ; $570b: $35
    dec [hl]                                      ; $570c: $35
    jp Jump_000_3aad                              ; $570d: $c3 $ad $3a


    cp e                                          ; $5710: $bb
    add b                                         ; $5711: $80
    ld b, [hl]                                    ; $5712: $46
    ld l, d                                       ; $5713: $6a
    rst $38                                       ; $5714: $ff
    db $10                                        ; $5715: $10
    rst $38                                       ; $5716: $ff
    ld l, e                                       ; $5717: $6b
    ld a, [bc]                                    ; $5718: $0a

jr_05e_5719:
    ld c, a                                       ; $5719: $4f
    db $ec                                        ; $571a: $ec
    adc b                                         ; $571b: $88
    ld b, d                                       ; $571c: $42
    ld b, h                                       ; $571d: $44
    jr nz, jr_05e_577c                            ; $571e: $20 $5c

    inc a                                         ; $5720: $3c
    ld a, a                                       ; $5721: $7f
    pop hl                                        ; $5722: $e1
    ld e, c                                       ; $5723: $59
    ld d, e                                       ; $5724: $53
    ccf                                           ; $5725: $3f
    jp Jump_000_0e05                              ; $5726: $c3 $05 $0e


    add $47                                       ; $5729: $c6 $47
    ld bc, $7f32                                  ; $572b: $01 $32 $7f
    ld c, c                                       ; $572e: $49
    add b                                         ; $572f: $80
    db $e3                                        ; $5730: $e3
    ld d, [hl]                                    ; $5731: $56
    ld d, d                                       ; $5732: $52
    ld sp, hl                                     ; $5733: $f9
    ld d, a                                       ; $5734: $57
    ret nz                                        ; $5735: $c0

    ldh [$7f], a                                  ; $5736: $e0 $7f
    ldh [$3e], a                                  ; $5738: $e0 $3e
    jr c, @+$3d                                   ; $573a: $38 $3b

    dec [hl]                                      ; $573c: $35
    add hl, sp                                    ; $573d: $39
    sub b                                         ; $573e: $90
    rlca                                          ; $573f: $07
    add d                                         ; $5740: $82
    push bc                                       ; $5741: $c5
    dec h                                         ; $5742: $25
    jp nz, $c612                                  ; $5743: $c2 $12 $c6

    rlca                                          ; $5746: $07
    ld c, $01                                     ; $5747: $0e $01
    and b                                         ; $5749: $a0
    ret                                           ; $574a: $c9


    nop                                           ; $574b: $00
    ld e, h                                       ; $574c: $5c
    rst $38                                       ; $574d: $ff
    ld d, b                                       ; $574e: $50
    ld e, e                                       ; $574f: $5b
    ld b, h                                       ; $5750: $44
    inc a                                         ; $5751: $3c
    rst $08                                       ; $5752: $cf
    call Call_000_3ecf                            ; $5753: $cd $cf $3e
    rrca                                          ; $5756: $0f
    ld a, [hl-]                                   ; $5757: $3a
    dec [hl]                                      ; $5758: $35
    xor h                                         ; $5759: $ac
    ld a, $07                                     ; $575a: $3e $07
    add d                                         ; $575c: $82
    ld b, d                                       ; $575d: $42
    dec d                                         ; $575e: $15
    ld bc, $5a8a                                  ; $575f: $01 $8a $5a
    and b                                         ; $5762: $a0
    db $fd                                        ; $5763: $fd
    ld a, [bc]                                    ; $5764: $0a
    ret z                                         ; $5765: $c8

    ld h, c                                       ; $5766: $61
    ld d, d                                       ; $5767: $52
    ld b, a                                       ; $5768: $47
    ld e, l                                       ; $5769: $5d
    add hl, sp                                    ; $576a: $39
    ld a, [hl-]                                   ; $576b: $3a
    ld a, [hl-]                                   ; $576c: $3a
    scf                                           ; $576d: $37
    adc $c3                                       ; $576e: $ce $c3
    adc $c0                                       ; $5770: $ce $c0
    ldh [$ad], a                                  ; $5772: $e0 $ad
    ld a, [hl-]                                   ; $5774: $3a
    ccf                                           ; $5775: $3f
    ldh [$86], a                                  ; $5776: $e0 $86
    ld sp, $81ee                                  ; $5778: $31 $ee $81
    sub h                                         ; $577b: $94

jr_05e_577c:
    ld b, l                                       ; $577c: $45

jr_05e_577d:
    ld d, e                                       ; $577d: $53
    ld e, c                                       ; $577e: $59
    call nz, Call_05e_6040                        ; $577f: $c4 $40 $60
    ld d, d                                       ; $5782: $52
    ld [hl], $fd                                  ; $5783: $36 $fd
    add hl, sp                                    ; $5785: $39
    add b                                         ; $5786: $80
    ldh [$39], a                                  ; $5787: $e0 $39
    inc a                                         ; $5789: $3c
    xor h                                         ; $578a: $ac
    dec [hl]                                      ; $578b: $35
    dec [hl]                                      ; $578c: $35
    ld b, h                                       ; $578d: $44
    ld hl, $4008                                  ; $578e: $21 $08 $40
    add sp, -$40                                  ; $5791: $e8 $c0
    di                                            ; $5793: $f3
    ld b, l                                       ; $5794: $45
    dec b                                         ; $5795: $05
    ccf                                           ; $5796: $3f
    ld h, b                                       ; $5797: $60
    ld b, a                                       ; $5798: $47
    ld d, b                                       ; $5799: $50
    jr nz, jr_05e_57e1                            ; $579a: $20 $45

    ld bc, $55ff                                  ; $579c: $01 $ff $55
    ld b, l                                       ; $579f: $45
    scf                                           ; $57a0: $37
    dec a                                         ; $57a1: $3d
    scf                                           ; $57a2: $37
    ld [hl], $35                                  ; $57a3: $36 $35
    xor l                                         ; $57a5: $ad
    add a                                         ; $57a6: $87
    xor h                                         ; $57a7: $ac
    dec [hl]                                      ; $57a8: $35
    ld b, b                                       ; $57a9: $40
    ret nz                                        ; $57aa: $c0

    ldh [$86], a                                  ; $57ab: $e0 $86
    jr z, jr_05e_57b0                             ; $57ad: $28 $01

    pop af                                        ; $57af: $f1

jr_05e_57b0:
    nop                                           ; $57b0: $00
    add sp, $52                                   ; $57b1: $e8 $52
    xor $44                                       ; $57b3: $ee $44
    inc h                                         ; $57b5: $24
    ld d, [hl]                                    ; $57b6: $56
    add hl, sp                                    ; $57b7: $39
    jr c, jr_05e_577d                             ; $57b8: $38 $c3

    ret nz                                        ; $57ba: $c0

    dec [hl]                                      ; $57bb: $35
    xor h                                         ; $57bc: $ac
    xor l                                         ; $57bd: $ad
    ldh [$80], a                                  ; $57be: $e0 $80
    ld [c], a                                     ; $57c0: $e2
    add [hl]                                      ; $57c1: $86
    ld c, b                                       ; $57c2: $48

jr_05e_57c3:
    ld b, h                                       ; $57c3: $44
    ld a, [bc]                                    ; $57c4: $0a
    ld [bc], a                                    ; $57c5: $02
    ld h, d                                       ; $57c6: $62
    ld a, a                                       ; $57c7: $7f
    add hl, hl                                    ; $57c8: $29
    ld b, $4a                                     ; $57c9: $06 $4a
    ld e, l                                       ; $57cb: $5d
    ld [de], a                                    ; $57cc: $12
    inc bc                                        ; $57cd: $03
    inc h                                         ; $57ce: $24
    ld b, b                                       ; $57cf: $40
    jp $c1e0                                      ; $57d0: $c3 $e0 $c1


    ldh [$ac], a                                  ; $57d3: $e0 $ac
    nop                                           ; $57d5: $00
    db $e3                                        ; $57d6: $e3
    ld b, $92                                     ; $57d7: $06 $92
    pop bc                                        ; $57d9: $c1
    and $64                                       ; $57da: $e6 $64
    pop bc                                        ; $57dc: $c1
    adc b                                         ; $57dd: $88
    call nz, Call_05e_6105                        ; $57de: $c4 $05 $61

jr_05e_57e1:
    cp a                                          ; $57e1: $bf
    and c                                         ; $57e2: $a1
    pop bc                                        ; $57e3: $c1
    ldh [$ad], a                                  ; $57e4: $e0 $ad
    add hl, sp                                    ; $57e6: $39
    add b                                         ; $57e7: $80
    ret                                           ; $57e8: $c9


    add b                                         ; $57e9: $80
    add c                                         ; $57ea: $81
    ret z                                         ; $57eb: $c8

    add h                                         ; $57ec: $84
    db $e4                                        ; $57ed: $e4
    and $82                                       ; $57ee: $e6 $82
    nop                                           ; $57f0: $00
    and $3f                                       ; $57f1: $e6 $3f
    and b                                         ; $57f3: $a0
    inc b                                         ; $57f4: $04
    ret nz                                        ; $57f5: $c0

    ld a, l                                       ; $57f6: $7d
    jr nz, @+$60                                  ; $57f7: $20 $5e

    dec sp                                        ; $57f9: $3b
    ld d, d                                       ; $57fa: $52
    ld a, [hl-]                                   ; $57fb: $3a
    ld b, e                                       ; $57fc: $43
    pop hl                                        ; $57fd: $e1
    xor h                                         ; $57fe: $ac
    xor l                                         ; $57ff: $ad
    ld [hl], $07                                  ; $5800: $36 $07
    ld b, l                                       ; $5802: $45
    ld b, a                                       ; $5803: $47
    ld c, $70                                     ; $5804: $0e $70
    pop bc                                        ; $5806: $c1
    and $e6                                       ; $5807: $e6 $e6
    add d                                         ; $5809: $82
    ld hl, $7dc4                                  ; $580a: $21 $c4 $7d
    jr nz, jr_05e_585d                            ; $580d: $20 $4e

    ld e, [hl]                                    ; $580f: $5e
    ld h, b                                       ; $5810: $60
    pop bc                                        ; $5811: $c1
    ldh [rDIV], a                                 ; $5812: $e0 $04
    cp a                                          ; $5814: $bf
    add b                                         ; $5815: $80
    add b                                         ; $5816: $80
    pop hl                                        ; $5817: $e1
    ld [hl], $07                                  ; $5818: $36 $07
    ld h, [hl]                                    ; $581a: $66
    ld b, a                                       ; $581b: $47
    db $10                                        ; $581c: $10
    ld l, d                                       ; $581d: $6a
    add [hl]                                      ; $581e: $86
    dec h                                         ; $581f: $25
    and d                                         ; $5820: $a2
    and b                                         ; $5821: $a0
    and c                                         ; $5822: $a1
    sbc $bd                                       ; $5823: $de $bd
    jr nz, jr_05e_5878                            ; $5825: $20 $51

    ld e, [hl]                                    ; $5827: $5e
    ld h, b                                       ; $5828: $60
    ld e, [hl]                                    ; $5829: $5e
    pop bc                                        ; $582a: $c1
    db $e3                                        ; $582b: $e3
    xor h                                         ; $582c: $ac
    dec [hl]                                      ; $582d: $35
    add b                                         ; $582e: $80
    pop bc                                        ; $582f: $c1
    ld [c], a                                     ; $5830: $e2
    ld b, a                                       ; $5831: $47
    inc d                                         ; $5832: $14
    pop bc                                        ; $5833: $c1
    add sp, $66                                   ; $5834: $e8 $66
    and e                                         ; $5836: $a3
    ld [hl-], a                                   ; $5837: $32
    ld [c], a                                     ; $5838: $e2
    ld a, [hl]                                    ; $5839: $7e
    add b                                         ; $583a: $80
    rst $38                                       ; $583b: $ff
    and b                                         ; $583c: $a0
    scf                                           ; $583d: $37
    ld l, l                                       ; $583e: $6d
    jr c, jr_05e_57c3                             ; $583f: $38 $82

    ldh [$35], a                                  ; $5841: $e0 $35
    xor l                                         ; $5843: $ad
    ld a, $80                                     ; $5844: $3e $80
    ld b, [hl]                                    ; $5846: $46
    ld [$8681], sp                                ; $5847: $08 $81 $86
    ld b, b                                       ; $584a: $40
    ld b, l                                       ; $584b: $45
    adc d                                         ; $584c: $8a
    ld c, c                                       ; $584d: $49
    ld h, $05                                     ; $584e: $26 $05
    call nz, $e104                                ; $5850: $c4 $04 $e1
    halt                                          ; $5853: $76
    jr nz, @+$3f                                  ; $5854: $20 $3d

    jp nz, Jump_05e_4839                          ; $5856: $c2 $39 $48

    ret nz                                        ; $5859: $c0

    ld a, [hl]                                    ; $585a: $7e
    add e                                         ; $585b: $83
    pop bc                                        ; $585c: $c1

jr_05e_585d:
    ld [hl], $45                                  ; $585d: $36 $45
    ld b, l                                       ; $585f: $45
    ccf                                           ; $5860: $3f
    inc c                                         ; $5861: $0c
    ld c, $06                                     ; $5862: $0e $06

jr_05e_5864:
    ld l, d                                       ; $5864: $6a
    add b                                         ; $5865: $80
    ld b, h                                       ; $5866: $44
    add [hl]                                      ; $5867: $86
    ret z                                         ; $5868: $c8

    and a                                         ; $5869: $a7
    xor b                                         ; $586a: $a8
    and a                                         ; $586b: $a7
    dec de                                        ; $586c: $1b
    ld h, c                                       ; $586d: $61
    ld a, $41                                     ; $586e: $3e $41
    ld b, l                                       ; $5870: $45
    add b                                         ; $5871: $80
    inc bc                                        ; $5872: $03
    pop hl                                        ; $5873: $e1
    ld a, [hl-]                                   ; $5874: $3a
    rra                                           ; $5875: $1f
    ld b, h                                       ; $5876: $44
    ld b, l                                       ; $5877: $45

jr_05e_5878:
    ld [hl], $3a                                  ; $5878: $36 $3a
    dec b                                         ; $587a: $05
    ld e, [hl]                                    ; $587b: $5e
    add h                                         ; $587c: $84
    ret c                                         ; $587d: $d8

    jp hl                                         ; $587e: $e9


    ret z                                         ; $587f: $c8

    ld b, d                                       ; $5880: $42
    ldh [$30], a                                  ; $5881: $e0 $30
    ld h, a                                       ; $5883: $67
    db $ed                                        ; $5884: $ed
    ld h, h                                       ; $5885: $64
    ld e, [hl]                                    ; $5886: $5e
    ld b, d                                       ; $5887: $42
    ld a, $42                                     ; $5888: $3e $42
    ret nz                                        ; $588a: $c0

    db $e3                                        ; $588b: $e3
    dec [hl]                                      ; $588c: $35
    ld a, $46                                     ; $588d: $3e $46
    inc bc                                        ; $588f: $03
    add hl, sp                                    ; $5890: $39
    dec [hl]                                      ; $5891: $35
    jp $8680                                      ; $5892: $c3 $80 $86


    ld b, [hl]                                    ; $5895: $46
    ld b, l                                       ; $5896: $45
    ld c, d                                       ; $5897: $4a
    adc d                                         ; $5898: $8a
    rlca                                          ; $5899: $07
    xor e                                         ; $589a: $ab
    add h                                         ; $589b: $84
    sbc d                                         ; $589c: $9a
    ld h, c                                       ; $589d: $61
    ld d, $3f                                     ; $589e: $16 $3f
    db $e3                                        ; $58a0: $e3
    ld a, [bc]                                    ; $58a1: $0a
    ld a, $c0                                     ; $58a2: $3e $c0
    push hl                                       ; $58a4: $e5
    ld a, $43                                     ; $58a5: $3e $43
    add b                                         ; $58a7: $80
    ld b, $47                                     ; $58a8: $06 $47
    ret nz                                        ; $58aa: $c0

    rst $28                                       ; $58ab: $ef
    ld a, $4b                                     ; $58ac: $3e $4b
    ld b, [hl]                                    ; $58ae: $46
    dec c                                         ; $58af: $0d
    rlca                                          ; $58b0: $07
    rlca                                          ; $58b1: $07
    rlca                                          ; $58b2: $07
    dec c                                         ; $58b3: $0d
    dec [hl]                                      ; $58b4: $35
    ld b, e                                       ; $58b5: $43
    ret nz                                        ; $58b6: $c0

    rst $20                                       ; $58b7: $e7
    rra                                           ; $58b8: $1f
    add hl, sp                                    ; $58b9: $39
    ld b, [hl]                                    ; $58ba: $46
    add hl, sp                                    ; $58bb: $39
    dec sp                                        ; $58bc: $3b
    ld b, b                                       ; $58bd: $40
    pop bc                                        ; $58be: $c1
    jp nz, $ea80                                  ; $58bf: $c2 $80 $ea

    ld b, b                                       ; $58c2: $40
    and $06                                       ; $58c3: $e6 $06
    adc e                                         ; $58c5: $8b
    rlca                                          ; $58c6: $07
    inc b                                         ; $58c7: $04
    inc bc                                        ; $58c8: $03
    ld e, b                                       ; $58c9: $58
    jr nz, jr_05e_5864                            ; $58ca: $20 $98

    ld b, e                                       ; $58cc: $43
    cp h                                          ; $58cd: $bc
    ld h, c                                       ; $58ce: $61
    ld b, b                                       ; $58cf: $40
    db $e4                                        ; $58d0: $e4
    pop bc                                        ; $58d1: $c1
    ret nz                                        ; $58d2: $c0

    db $e3                                        ; $58d3: $e3
    ld b, e                                       ; $58d4: $43
    ld b, e                                       ; $58d5: $43
    ld [$00e4], a                                 ; $58d6: $ea $e4 $00
    xor $0a                                       ; $58d9: $ee $0a
    adc b                                         ; $58db: $88
    rrca                                          ; $58dc: $0f
    ld [bc], a                                    ; $58dd: $02
    ld b, [hl]                                    ; $58de: $46
    db $e3                                        ; $58df: $e3
    ld b, l                                       ; $58e0: $45
    ld b, c                                       ; $58e1: $41
    ld e, b                                       ; $58e2: $58
    ld hl, $02dd                                  ; $58e3: $21 $dd $02
    ret nz                                        ; $58e6: $c0

    db $e3                                        ; $58e7: $e3
    dec sp                                        ; $58e8: $3b
    jr c, jr_05e_5928                             ; $58e9: $38 $3d

    rst $38                                       ; $58eb: $ff
    dec a                                         ; $58ec: $3d
    scf                                           ; $58ed: $37
    ld b, e                                       ; $58ee: $43
    ld b, l                                       ; $58ef: $45
    ld b, b                                       ; $58f0: $40
    dec sp                                        ; $58f1: $3b
    jr c, jr_05e_592b                             ; $58f2: $38 $37

    ldh a, [$c0]                                  ; $58f4: $f0 $c0
    xor d                                         ; $58f6: $aa
    ret nz                                        ; $58f7: $c0

    add sp, $01                                   ; $58f8: $e8 $01
    db $e4                                        ; $58fa: $e4
    adc [hl]                                      ; $58fb: $8e
    jr nz, @+$48                                  ; $58fc: $20 $46

    ld b, l                                       ; $58fe: $45
    ld [hl], $a6                                  ; $58ff: $36 $a6
    ld sp, hl                                     ; $5901: $f9
    ld [hl], $17                                  ; $5902: $36 $17
    ld hl, $6156                                  ; $5904: $21 $56 $61
    sbc b                                         ; $5907: $98
    sbc c                                         ; $5908: $99
    dec b                                         ; $5909: $05
    ld a, $38                                     ; $590a: $3e $38
    dec b                                         ; $590c: $05
    scf                                           ; $590d: $37
    rst $38                                       ; $590e: $ff
    ldh [$38], a                                  ; $590f: $e0 $38
    cp e                                          ; $5911: $bb
    ldh [$3f], a                                  ; $5912: $e0 $3f
    add b                                         ; $5914: $80
    ld b, b                                       ; $5915: $40
    ld l, c                                       ; $5916: $69
    add c                                         ; $5917: $81
    ld l, b                                       ; $5918: $68
    adc h                                         ; $5919: $8c
    ld b, a                                       ; $591a: $47
    ld a, a                                       ; $591b: $7f
    ld c, $05                                     ; $591c: $0e $05
    ld b, l                                       ; $591e: $45
    ld [hl], $62                                  ; $591f: $36 $62
    and a                                         ; $5921: $a7
    ld h, [hl]                                    ; $5922: $66
    cp a                                          ; $5923: $bf
    pop hl                                        ; $5924: $e1
    inc h                                         ; $5925: $24
    sub [hl]                                      ; $5926: $96
    ld h, c                                       ; $5927: $61

jr_05e_5928:
    ret nz                                        ; $5928: $c0

    ldh [rSCX], a                                 ; $5929: $e0 $43

jr_05e_592b:
    pop bc                                        ; $592b: $c1
    and e                                         ; $592c: $a3
    db $fc                                        ; $592d: $fc
    jp nz, Jump_05e_7d3a                          ; $592e: $c2 $3a $7d

    pop bc                                        ; $5931: $c1
    add $09                                       ; $5932: $c6 $09
    ld [hl], h                                    ; $5934: $74
    ld b, e                                       ; $5935: $43
    ld h, h                                       ; $5936: $64
    dec bc                                        ; $5937: $0b
    ld h, a                                       ; $5938: $67
    ld [$e0c1], sp                                ; $5939: $08 $c1 $e0
    ld h, a                                       ; $593c: $67
    and e                                         ; $593d: $a3
    ld l, b                                       ; $593e: $68
    cp a                                          ; $593f: $bf
    ld [c], a                                     ; $5940: $e2
    ld b, $17                                     ; $5941: $06 $17
    ld hl, $0a99                                  ; $5943: $21 $99 $0a

jr_05e_5946:
    ld b, b                                       ; $5946: $40
    call nz, $c23c                                ; $5947: $c4 $3c $c2
    ld a, l                                       ; $594a: $7d
    pop bc                                        ; $594b: $c1
    add $11                                       ; $594c: $c6 $11
    dec bc                                        ; $594e: $0b
    add a                                         ; $594f: $87
    ld a, a                                       ; $5950: $7f
    ld [$a842], sp                                ; $5951: $08 $42 $a8
    xor c                                         ; $5954: $a9
    ld l, h                                       ; $5955: $6c
    dec [hl]                                      ; $5956: $35
    dec [hl]                                      ; $5957: $35
    cp a                                          ; $5958: $bf
    ld [c], a                                     ; $5959: $e2
    sbc h                                         ; $595a: $9c
    ret nz                                        ; $595b: $c0

    jp hl                                         ; $595c: $e9


    ld a, e                                       ; $595d: $7b
    and d                                         ; $595e: $a2
    add hl, sp                                    ; $595f: $39
    ld b, e                                       ; $5960: $43

jr_05e_5961:
    ccf                                           ; $5961: $3f
    ret nz                                        ; $5962: $c0

    sub e                                         ; $5963: $93
    add b                                         ; $5964: $80
    ld [$ff6e], a                                 ; $5965: $ea $6e $ff
    ld l, a                                       ; $5968: $6f
    ld l, h                                       ; $5969: $6c
    dec [hl]                                      ; $596a: $35
    and e                                         ; $596b: $a3
    xor d                                         ; $596c: $aa
    xor e                                         ; $596d: $ab
    ld [hl], $45                                  ; $596e: $36 $45
    db $f4                                        ; $5970: $f4
    ld d, $60                                     ; $5971: $16 $60
    cp h                                          ; $5973: $bc
    jr nz, jr_05e_59bc                            ; $5974: $20 $46

    ld b, [hl]                                    ; $5976: $46
    ld h, b                                       ; $5977: $60
    ccf                                           ; $5978: $3f
    ld b, c                                       ; $5979: $41
    ld b, e                                       ; $597a: $43
    ld b, c                                       ; $597b: $41
    ccf                                           ; $597c: $3f
    ccf                                           ; $597d: $3f
    ccf                                           ; $597e: $3f
    ccf                                           ; $597f: $3f
    ld b, l                                       ; $5980: $45
    ld [bc], a                                    ; $5981: $02
    rlca                                          ; $5982: $07
    add b                                         ; $5983: $80
    push bc                                       ; $5984: $c5
    ld bc, $3c6b                                  ; $5985: $01 $6b $3c
    nop                                           ; $5988: $00
    db $eb                                        ; $5989: $eb
    cp a                                          ; $598a: $bf
    ldh [$6c], a                                  ; $598b: $e0 $6c
    ld l, a                                       ; $598d: $6f
    ld l, [hl]                                    ; $598e: $6e
    ld [hl], $00                                  ; $598f: $36 $00
    ld [c], a                                     ; $5991: $e2
    ld sp, $07c0                                  ; $5992: $31 $c0 $07
    add hl, bc                                    ; $5995: $09
    add hl, bc                                    ; $5996: $09
    inc b                                         ; $5997: $04
    rst $28                                       ; $5998: $ef
    and b                                         ; $5999: $a0
    db $fd                                        ; $599a: $fd
    ld [c], a                                     ; $599b: $e2
    ld bc, $c625                                  ; $599c: $01 $25 $c6
    dec c                                         ; $599f: $0d
    add b                                         ; $59a0: $80
    call z, Call_05e_6e03                         ; $59a1: $cc $03 $6e
    ld l, a                                       ; $59a4: $6f
    pop bc                                        ; $59a5: $c1
    ldh [$d6], a                                  ; $59a6: $e0 $d6
    ld h, c                                       ; $59a8: $61
    halt                                          ; $59a9: $76
    and e                                         ; $59aa: $a3
    ld h, h                                       ; $59ab: $64
    ld h, e                                       ; $59ac: $63
    ld e, a                                       ; $59ad: $5f
    ld h, d                                       ; $59ae: $62
    nop                                           ; $59af: $00
    and l                                         ; $59b0: $a5
    inc c                                         ; $59b1: $0c
    add $0c                                       ; $59b2: $c6 $0c
    nop                                           ; $59b4: $00
    call z, Call_05e_6e36                         ; $59b5: $cc $36 $6e
    pop bc                                        ; $59b8: $c1
    ldh [$15], a                                  ; $59b9: $e0 $15
    add d                                         ; $59bb: $82

jr_05e_59bc:
    or a                                          ; $59bc: $b7
    add h                                         ; $59bd: $84
    jr nc, jr_05e_5946                            ; $59be: $30 $86

    jr c, jr_05e_5961                             ; $59c0: $38 $9f

    dec h                                         ; $59c2: $25
    add $0c                                       ; $59c3: $c6 $0c
    add b                                         ; $59c5: $80
    xor h                                         ; $59c6: $ac
    ld b, l                                       ; $59c7: $45
    ld [hl], $36                                  ; $59c8: $36 $36
    add b                                         ; $59ca: $80
    and b                                         ; $59cb: $a0
    cp l                                          ; $59cc: $bd
    add h                                         ; $59cd: $84
    nop                                           ; $59ce: $00
    and l                                         ; $59cf: $a5
    ld h, a                                       ; $59d0: $67
    jp hl                                         ; $59d1: $e9


    ld h, h                                       ; $59d2: $64
    pop bc                                        ; $59d3: $c1
    ld [c], a                                     ; $59d4: $e2
    ld [bc], a                                    ; $59d5: $02
    ld l, h                                       ; $59d6: $6c
    nop                                           ; $59d7: $00
    or c                                          ; $59d8: $b1
    ld [hl], c                                    ; $59d9: $71
    inc h                                         ; $59da: $24
    ld a, [hl+]                                   ; $59db: $2a
    ld h, a                                       ; $59dc: $67
    dec c                                         ; $59dd: $0d
    ld hl, $9c00                                  ; $59de: $21 $00 $9c
    ld h, e                                       ; $59e1: $63
    add e                                         ; $59e2: $83
    ld c, [hl]                                    ; $59e3: $4e
    adc c                                         ; $59e4: $89
    ld b, a                                       ; $59e5: $47
    call nz, Call_000_0e63                        ; $59e6: $c4 $63 $0e
    db $e4                                        ; $59e9: $e4
    add a                                         ; $59ea: $87
    push hl                                       ; $59eb: $e5
    and a                                         ; $59ec: $a7
    ld h, e                                       ; $59ed: $63
    rlc d                                         ; $59ee: $cb $02
    nop                                           ; $59f0: $00
    call c, $c068                                 ; $59f1: $dc $68 $c0
    ld [$852b], a                                 ; $59f4: $ea $2b $85
    ld b, h                                       ; $59f7: $44
    ld h, [hl]                                    ; $59f8: $66
    ld d, h                                       ; $59f9: $54
    push hl                                       ; $59fa: $e5
    push bc                                       ; $59fb: $c5
    and $bb                                       ; $59fc: $e6 $bb
    push hl                                       ; $59fe: $e5
    add l                                         ; $59ff: $85
    ld b, $00                                     ; $5a00: $06 $00
    inc b                                         ; $5a02: $04
    daa                                           ; $5a03: $27
    nop                                           ; $5a04: $00
    nop                                           ; $5a05: $00
    nop                                           ; $5a06: $00
    pop bc                                        ; $5a07: $c1
    nop                                           ; $5a08: $00
    rst $38                                       ; $5a09: $ff
    rst $38                                       ; $5a0a: $ff
    rst $38                                       ; $5a0b: $ff
    rst $38                                       ; $5a0c: $ff
    rst $38                                       ; $5a0d: $ff
    rst $38                                       ; $5a0e: $ff
    rst $38                                       ; $5a0f: $ff
    rst $38                                       ; $5a10: $ff
    rst $38                                       ; $5a11: $ff
    rst $38                                       ; $5a12: $ff
    nop                                           ; $5a13: $00
    nop                                           ; $5a14: $00
    ld bc, $fe80                                  ; $5a15: $01 $80 $fe
    ldh [rIE], a                                  ; $5a18: $e0 $ff
    rst $38                                       ; $5a1a: $ff
    rst $38                                       ; $5a1b: $ff
    rst $38                                       ; $5a1c: $ff
    rst $38                                       ; $5a1d: $ff
    add sp, $00                                   ; $5a1e: $e8 $00
    nop                                           ; $5a20: $00
    nop                                           ; $5a21: $00
    ld [bc], a                                    ; $5a22: $02
    nop                                           ; $5a23: $00
    inc h                                         ; $5a24: $24
    rra                                           ; $5a25: $1f
    ld [bc], a                                    ; $5a26: $02
    ld bc, $2125                                  ; $5a27: $01 $25 $21
    ld [bc], a                                    ; $5a2a: $02
    ld [bc], a                                    ; $5a2b: $02
    add hl, hl                                    ; $5a2c: $29
    inc hl                                        ; $5a2d: $23
    ld [bc], a                                    ; $5a2e: $02
    inc bc                                        ; $5a2f: $03
    jr z, jr_05e_5a57                             ; $5a30: $28 $25

    ld [bc], a                                    ; $5a32: $02
    inc b                                         ; $5a33: $04
    add hl, hl                                    ; $5a34: $29
    ld h, $02                                     ; $5a35: $26 $02
    dec b                                         ; $5a37: $05
    jr z, jr_05e_5a61                             ; $5a38: $28 $27

    ld [bc], a                                    ; $5a3a: $02
    ld b, $25                                     ; $5a3b: $06 $25
    jr z, jr_05e_5a41                             ; $5a3d: $28 $02

    rlca                                          ; $5a3f: $07
    daa                                           ; $5a40: $27

jr_05e_5a41:
    jr z, @+$04                                   ; $5a41: $28 $02

    ld [$2829], sp                                ; $5a43: $08 $29 $28
    ld [bc], a                                    ; $5a46: $02
    add hl, bc                                    ; $5a47: $09
    ld h, $29                                     ; $5a48: $26 $29
    ld [bc], a                                    ; $5a4a: $02
    ld a, [bc]                                    ; $5a4b: $0a
    jr z, jr_05e_5a77                             ; $5a4c: $28 $29

    ld [bc], a                                    ; $5a4e: $02
    dec bc                                        ; $5a4f: $0b
    dec h                                         ; $5a50: $25
    ld a, [hl+]                                   ; $5a51: $2a
    ld [bc], a                                    ; $5a52: $02
    inc c                                         ; $5a53: $0c
    daa                                           ; $5a54: $27
    ld a, [hl+]                                   ; $5a55: $2a
    ld [bc], a                                    ; $5a56: $02

jr_05e_5a57:
    dec c                                         ; $5a57: $0d
    ld h, $2b                                     ; $5a58: $26 $2b

Jump_05e_5a5a:
    ld [bc], a                                    ; $5a5a: $02
    ld c, $24                                     ; $5a5b: $0e $24
    inc l                                         ; $5a5d: $2c
    ld [bc], a                                    ; $5a5e: $02
    rrca                                          ; $5a5f: $0f
    ld [hl+], a                                   ; $5a60: $22

jr_05e_5a61:
    ld l, $ff                                     ; $5a61: $2e $ff
    rst $38                                       ; $5a63: $ff
    rst $38                                       ; $5a64: $ff
    ld l, l                                       ; $5a65: $6d
    ld e, d                                       ; $5a66: $5a
    push bc                                       ; $5a67: $c5
    ld h, b                                       ; $5a68: $60
    ld a, h                                       ; $5a69: $7c
    ld l, c                                       ; $5a6a: $69
    sub a                                         ; $5a6b: $97
    ld l, c                                       ; $5a6c: $69
    dec h                                         ; $5a6d: $25
    ld c, $ff                                     ; $5a6e: $0e $ff
    ldh [$0d], a                                  ; $5a70: $e0 $0d
    ei                                            ; $5a72: $fb
    pop hl                                        ; $5a73: $e1
    rst $30                                       ; $5a74: $f7
    ld [c], a                                     ; $5a75: $e2
    dec c                                         ; $5a76: $0d

jr_05e_5a77:
    push af                                       ; $5a77: $f5
    ld [c], a                                     ; $5a78: $e2
    ldh a, [$e0]                                  ; $5a79: $f0 $e0
    nop                                           ; $5a7b: $00
    db $ed                                        ; $5a7c: $ed
    and $e2                                       ; $5a7d: $e6 $e2
    db $e3                                        ; $5a7f: $e3
    add sp, -$1d                                  ; $5a80: $e8 $e3
    rst $20                                       ; $5a82: $e7
    ld [c], a                                     ; $5a83: $e2
    db $dd                                        ; $5a84: $dd
    db $e4                                        ; $5a85: $e4
    push af                                       ; $5a86: $f5
    rst $20                                       ; $5a87: $e7
    ret                                           ; $5a88: $c9


    ld [c], a                                     ; $5a89: $e2
    rst $18                                       ; $5a8a: $df
    push hl                                       ; $5a8b: $e5
    nop                                           ; $5a8c: $00
    sbc $e3                                       ; $5a8d: $de $e3
    db $fd                                        ; $5a8f: $fd
    push hl                                       ; $5a90: $e5
    cp e                                          ; $5a91: $bb
    db $eb                                        ; $5a92: $eb
    ret nz                                        ; $5a93: $c0

    push hl                                       ; $5a94: $e5
    pop hl                                        ; $5a95: $e1
    ld [$e38d], a                                 ; $5a96: $ea $8d $e3
    call nc, $b4e7                                ; $5a99: $d4 $e7 $b4
    ld [c], a                                     ; $5a9c: $e2
    and a                                         ; $5a9d: $a7
    ld c, l                                       ; $5a9e: $4d
    ld c, l                                       ; $5a9f: $4d
    dec l                                         ; $5aa0: $2d
    xor h                                         ; $5aa1: $ac
    push hl                                       ; $5aa2: $e5
    and a                                         ; $5aa3: $a7
    di                                            ; $5aa4: $f3
    ld c, l                                       ; $5aa5: $4d
    rst $38                                       ; $5aa6: $ff
    ldh [$2d], a                                  ; $5aa7: $e0 $2d
    ld a, b                                       ; $5aa9: $78
    sub h                                         ; $5aaa: $94
    db $e4                                        ; $5aab: $e4
    ld a, l                                       ; $5aac: $7d
    rst $20                                       ; $5aad: $e7
    ld l, e                                       ; $5aae: $6b
    db $e4                                        ; $5aaf: $e4
    ld c, l                                       ; $5ab0: $4d
    ld l, l                                       ; $5ab1: $6d
    dec bc                                        ; $5ab2: $0b
    dec c                                         ; $5ab3: $0d
    cp a                                          ; $5ab4: $bf
    ld [c], a                                     ; $5ab5: $e2
    ld hl, sp-$1a                                 ; $5ab6: $f8 $e6
    jp hl                                         ; $5ab8: $e9


    ld b, l                                       ; $5ab9: $45
    ld [c], a                                     ; $5aba: $e2
    xor b                                         ; $5abb: $a8
    db $e4                                        ; $5abc: $e4

jr_05e_5abd:
    ld l, l                                       ; $5abd: $6d
    dec hl                                        ; $5abe: $2b
    dec bc                                        ; $5abf: $0b
    dec bc                                        ; $5ac0: $0b
    dec hl                                        ; $5ac1: $2b
    or c                                          ; $5ac2: $b1
    dec bc                                        ; $5ac3: $0b
    sbc h                                         ; $5ac4: $9c
    pop hl                                        ; $5ac5: $e1
    ld h, $e6                                     ; $5ac6: $26 $e6
    dec l                                         ; $5ac8: $2d
    rst $20                                       ; $5ac9: $e7
    ld l, l                                       ; $5aca: $6d
    dec hl                                        ; $5acb: $2b
    rst $38                                       ; $5acc: $ff
    ldh [$0d], a                                  ; $5acd: $e0 $0d
    ld bc, $e22b                                  ; $5acf: $01 $2b $e2
    db $e3                                        ; $5ad2: $e3
    jr nz, jr_05e_5abd                            ; $5ad3: $20 $e8

    push hl                                       ; $5ad5: $e5
    db $e3                                        ; $5ad6: $e3
    add a                                         ; $5ad7: $87
    pop hl                                        ; $5ad8: $e1
    pop bc                                        ; $5ad9: $c1
    pop hl                                        ; $5ada: $e1
    cp a                                          ; $5adb: $bf
    db $e4                                        ; $5adc: $e4
    ld [c], a                                     ; $5add: $e2
    rst $08                                       ; $5ade: $cf
    pop hl                                        ; $5adf: $e1
    ld l, l                                       ; $5ae0: $6d
    db $e4                                        ; $5ae1: $e4
    pop hl                                        ; $5ae2: $e1
    pop hl                                        ; $5ae3: $e1
    pop hl                                        ; $5ae4: $e1
    dec a                                         ; $5ae5: $3d
    rst $20                                       ; $5ae6: $e7
    db $ed                                        ; $5ae7: $ed
    push bc                                       ; $5ae8: $c5
    ld l, l                                       ; $5ae9: $6d
    dec hl                                        ; $5aea: $2b
    inc c                                         ; $5aeb: $0c
    add e                                         ; $5aec: $83
    inc l                                         ; $5aed: $2c
    inc l                                         ; $5aee: $2c
    and e                                         ; $5aef: $a3
    pop hl                                        ; $5af0: $e1
    sbc $e4                                       ; $5af1: $de $e4
    cp a                                          ; $5af3: $bf
    db $e3                                        ; $5af4: $e3
    ld [c], a                                     ; $5af5: $e2
    ret z                                         ; $5af6: $c8

    cp b                                          ; $5af7: $b8
    pop bc                                        ; $5af8: $c1
    ld l, e                                       ; $5af9: $6b
    and $c0                                       ; $5afa: $e6 $c0
    push hl                                       ; $5afc: $e5
    ld c, e                                       ; $5afd: $4b
    dec l                                         ; $5afe: $2d
    and c                                         ; $5aff: $a1
    push hl                                       ; $5b00: $e5
    ld h, [hl]                                    ; $5b01: $66
    jp $0b6d                                      ; $5b02: $c3 $6d $0b


    dec hl                                        ; $5b05: $2b
    dec de                                        ; $5b06: $1b
    inc c                                         ; $5b07: $0c
    inc c                                         ; $5b08: $0c
    cp a                                          ; $5b09: $bf
    ldh [$0c], a                                  ; $5b0a: $e0 $0c
    inc l                                         ; $5b0c: $2c
    ret nz                                        ; $5b0d: $c0

    db $e4                                        ; $5b0e: $e4
    dec a                                         ; $5b0f: $3d
    ldh [$c0], a                                  ; $5b10: $e0 $c0
    push hl                                       ; $5b12: $e5
    ldh [rNR24], a                                ; $5b13: $e0 $19
    add sp, $64                                   ; $5b15: $e8 $64
    ld [c], a                                     ; $5b17: $e2
    ld a, h                                       ; $5b18: $7c
    ld [c], a                                     ; $5b19: $e2
    and d                                         ; $5b1a: $a2
    push hl                                       ; $5b1b: $e5
    jp hl                                         ; $5b1c: $e9


    jp $0d6d                                      ; $5b1d: $c3 $6d $0d


    inc l                                         ; $5b20: $2c
    inc e                                         ; $5b21: $1c
    pop bc                                        ; $5b22: $c1
    ldh [$fd], a                                  ; $5b23: $e0 $fd
    pop hl                                        ; $5b25: $e1
    inc l                                         ; $5b26: $2c
    inc l                                         ; $5b27: $2c
    ld c, e                                       ; $5b28: $4b
    ld e, h                                       ; $5b29: $5c
    push hl                                       ; $5b2a: $e5
    sbc d                                         ; $5b2b: $9a
    jp $cabe                                      ; $5b2c: $c3 $be $ca


    ret z                                         ; $5b2f: $c8

    push hl                                       ; $5b30: $e5
    ret nz                                        ; $5b31: $c0

    ld h, b                                       ; $5b32: $60
    ldh [$5d], a                                  ; $5b33: $e0 $5d
    pop hl                                        ; $5b35: $e1
    dec c                                         ; $5b36: $0d
    cp $c7                                        ; $5b37: $fe $c7
    xor b                                         ; $5b39: $a8
    pop hl                                        ; $5b3a: $e1
    dec c                                         ; $5b3b: $0d
    inc l                                         ; $5b3c: $2c
    inc h                                         ; $5b3d: $24
    add h                                         ; $5b3e: $84
    ldh [$c0], a                                  ; $5b3f: $e0 $c0
    db $e3                                        ; $5b41: $e3
    ld l, e                                       ; $5b42: $6b
    cp a                                          ; $5b43: $bf
    pop hl                                        ; $5b44: $e1
    reti                                          ; $5b45: $d9


    ret nz                                        ; $5b46: $c0

    ld l, e                                       ; $5b47: $6b
    ld a, l                                       ; $5b48: $7d
    ret nz                                        ; $5b49: $c0

    db $db                                        ; $5b4a: $db
    call Call_05e_4030                            ; $5b4b: $cd $30 $40
    rst $20                                       ; $5b4e: $e7
    ret nz                                        ; $5b4f: $c0

    ld [$e342], a                                 ; $5b50: $ea $42 $e3
    add c                                         ; $5b53: $81
    db $e3                                        ; $5b54: $e3
    ld c, h                                       ; $5b55: $4c
    dec bc                                        ; $5b56: $0b
    cp a                                          ; $5b57: $bf
    pop hl                                        ; $5b58: $e1
    pop bc                                        ; $5b59: $c1
    ldh [$f9], a                                  ; $5b5a: $e0 $f9
    ld c, e                                       ; $5b5c: $4b
    nop                                           ; $5b5d: $00
    and $44                                       ; $5b5e: $e6 $44
    add $6d                                       ; $5b60: $c6 $6d
    ld l, e                                       ; $5b62: $6b
    ld c, e                                       ; $5b63: $4b
    ld l, e                                       ; $5b64: $6b
    dec bc                                        ; $5b65: $0b
    add l                                         ; $5b66: $85
    ld l, e                                       ; $5b67: $6b
    db $fd                                        ; $5b68: $fd
    pop hl                                        ; $5b69: $e1
    ld c, e                                       ; $5b6a: $4b
    ld c, l                                       ; $5b6b: $4d
    ldh [$e5], a                                  ; $5b6c: $e0 $e5
    and h                                         ; $5b6e: $a4
    push bc                                       ; $5b6f: $c5
    jp nz, $e5ff                                  ; $5b70: $c2 $ff $e5

    ld l, h                                       ; $5b73: $6c
    dec bc                                        ; $5b74: $0b
    ld c, h                                       ; $5b75: $4c
    ld c, h                                       ; $5b76: $4c
    push bc                                       ; $5b77: $c5
    pop hl                                        ; $5b78: $e1
    dec bc                                        ; $5b79: $0b
    pop bc                                        ; $5b7a: $c1
    ldh [$de], a                                  ; $5b7b: $e0 $de
    db $e4                                        ; $5b7d: $e4
    ld l, b                                       ; $5b7e: $68
    and h                                         ; $5b7f: $a4
    add d                                         ; $5b80: $82
    jp nz, Jump_05e_6b10                          ; $5b81: $c2 $10 $6b

    ldh [rIE], a                                  ; $5b84: $e0 $ff
    db $e3                                        ; $5b86: $e3
    db $e3                                        ; $5b87: $e3
    add sp, -$3f                                  ; $5b88: $e8 $c1
    db $eb                                        ; $5b8a: $eb
    ld l, h                                       ; $5b8b: $6c
    db $dd                                        ; $5b8c: $dd
    jp nz, $e099                                  ; $5b8d: $c2 $99 $e0

    sbc a                                         ; $5b90: $9f
    pop hl                                        ; $5b91: $e1
    xor b                                         ; $5b92: $a8
    ld h, $a4                                     ; $5b93: $26 $a4
    halt                                          ; $5b95: $76
    and l                                         ; $5b96: $a5
    inc b                                         ; $5b97: $04
    ret nz                                        ; $5b98: $c0

    ld a, [bc]                                    ; $5b99: $0a
    daa                                           ; $5b9a: $27
    pop hl                                        ; $5b9b: $e1
    dec c                                         ; $5b9c: $0d
    cp $a0                                        ; $5b9d: $fe $a0
    ld l, l                                       ; $5b9f: $6d

Call_05e_5ba0:
    ld a, [hl-]                                   ; $5ba0: $3a
    ret nz                                        ; $5ba1: $c0

    add sp, $2b                                   ; $5ba2: $e8 $2b
    call nz, $0cc5                                ; $5ba4: $c4 $c5 $0c

jr_05e_5ba7:
    inc c                                         ; $5ba7: $0c
    ld c, h                                       ; $5ba8: $4c
    db $e4                                        ; $5ba9: $e4
    jp nz, $e0bf                                  ; $5baa: $c2 $bf $e0

    ld hl, sp-$47                                 ; $5bad: $f8 $b9
    and b                                         ; $5baf: $a0
    ei                                            ; $5bb0: $fb
    add d                                         ; $5bb1: $82
    ld [$6da8], sp                                ; $5bb2: $08 $a8 $6d
    dec hl                                        ; $5bb5: $2b
    ld l, e                                       ; $5bb6: $6b
    ld a, [bc]                                    ; $5bb7: $0a
    ld a, [bc]                                    ; $5bb8: $0a
    rst $20                                       ; $5bb9: $e7
    ld c, d                                       ; $5bba: $4a
    dec bc                                        ; $5bbb: $0b
    dec hl                                        ; $5bbc: $2b
    sbc h                                         ; $5bbd: $9c
    and d                                         ; $5bbe: $a2
    ld b, e                                       ; $5bbf: $43
    rst $20                                       ; $5bc0: $e7
    dec c                                         ; $5bc1: $0d
    dec c                                         ; $5bc2: $0d
    dec bc                                        ; $5bc3: $0b
    ld hl, sp-$3b                                 ; $5bc4: $f8 $c5
    call nz, $e142                                ; $5bc6: $c4 $42 $e1
    add [hl]                                      ; $5bc9: $86
    and b                                         ; $5bca: $a0
    dec bc                                        ; $5bcb: $0b
    dec bc                                        ; $5bcc: $0b
    ld c, e                                       ; $5bcd: $4b
    ld c, e                                       ; $5bce: $4b
    dec c                                         ; $5bcf: $0d
    ld hl, sp-$5f                                 ; $5bd0: $f8 $a1
    pop bc                                        ; $5bd2: $c1
    ld b, c                                       ; $5bd3: $41
    xor e                                         ; $5bd4: $ab
    add [hl]                                      ; $5bd5: $86
    and b                                         ; $5bd6: $a0
    dec bc                                        ; $5bd7: $0b
    dec hl                                        ; $5bd8: $2b
    ld a, [bc]                                    ; $5bd9: $0a
    ld a, [hl+]                                   ; $5bda: $2a
    ld c, d                                       ; $5bdb: $4a
    ret c                                         ; $5bdc: $d8

    ret nz                                        ; $5bdd: $c0

    ldh [rTIMA], a                                ; $5bde: $e0 $05
    ldh [$28], a                                  ; $5be0: $e0 $28
    xor c                                         ; $5be2: $a9
    dec bc                                        ; $5be3: $0b
    ld l, h                                       ; $5be4: $6c
    ld bc, $2ce5                                  ; $5be5: $01 $e5 $2c
    inc c                                         ; $5be8: $0c
    adc $1e                                       ; $5be9: $ce $1e
    pop bc                                        ; $5beb: $c1
    ld c, e                                       ; $5bec: $4b
    ld c, e                                       ; $5bed: $4b
    dec bc                                        ; $5bee: $0b
    ret nz                                        ; $5bef: $c0

    and $08                                       ; $5bf0: $e6 $08
    and [hl]                                      ; $5bf2: $a6

jr_05e_5bf3:
    ld l, l                                       ; $5bf3: $6d
    dec c                                         ; $5bf4: $0d
    ei                                            ; $5bf5: $fb
    dec hl                                        ; $5bf6: $2b
    ld a, [bc]                                    ; $5bf7: $0a
    ld h, $c0                                     ; $5bf8: $26 $c0
    ld a, [hl+]                                   ; $5bfa: $2a
    ld a, [bc]                                    ; $5bfb: $0a
    dec hl                                        ; $5bfc: $2b
    dec hl                                        ; $5bfd: $2b
    dec l                                         ; $5bfe: $2d
    or l                                          ; $5bff: $b5
    ld c, l                                       ; $5c00: $4d
    ret nz                                        ; $5c01: $c0

    db $ed                                        ; $5c02: $ed
    ld c, h                                       ; $5c03: $4c
    inc b                                         ; $5c04: $04
    push bc                                       ; $5c05: $c5
    inc c                                         ; $5c06: $0c
    dec c                                         ; $5c07: $0d
    and c                                         ; $5c08: $a1
    ret nz                                        ; $5c09: $c0

    ld l, e                                       ; $5c0a: $6b
    db $e3                                        ; $5c0b: $e3
    ld c, e                                       ; $5c0c: $4b
    dec hl                                        ; $5c0d: $2b
    db $dd                                        ; $5c0e: $dd
    add e                                         ; $5c0f: $83
    ld h, h                                       ; $5c10: $64
    add a                                         ; $5c11: $87
    ld e, e                                       ; $5c12: $5b
    ldh [$0d], a                                  ; $5c13: $e0 $0d
    ld l, e                                       ; $5c15: $6b
    ld a, [hl+]                                   ; $5c16: $2a
    ld h, e                                       ; $5c17: $63
    ld a, [hl+]                                   ; $5c18: $2a
    ld c, e                                       ; $5c19: $4b
    and $e0                                       ; $5c1a: $e6 $e0
    ret nz                                        ; $5c1c: $c0

    db $e4                                        ; $5c1d: $e4
    jr c, jr_05e_5ba7                             ; $5c1e: $38 $87

    ld l, l                                       ; $5c20: $6d
    dec bc                                        ; $5c21: $0b
    pop bc                                        ; $5c22: $c1
    ret z                                         ; $5c23: $c8

    ld d, $21                                     ; $5c24: $16 $21
    ldh [$0b], a                                  ; $5c26: $e0 $0b
    dec bc                                        ; $5c28: $0b
    or h                                          ; $5c29: $b4
    and b                                         ; $5c2a: $a0
    inc l                                         ; $5c2b: $2c
    ld b, c                                       ; $5c2c: $41
    and a                                         ; $5c2d: $a7
    cp $63                                        ; $5c2e: $fe $63
    ld l, $c1                                     ; $5c30: $2e $c1
    inc hl                                        ; $5c32: $23
    ld a, [hl+]                                   ; $5c33: $2a
    ld c, d                                       ; $5c34: $4a
    inc b                                         ; $5c35: $04
    xor c                                         ; $5c36: $a9
    ld d, [hl]                                    ; $5c37: $56
    add h                                         ; $5c38: $84
    sub c                                         ; $5c39: $91
    add b                                         ; $5c3a: $80
    ld l, h                                       ; $5c3b: $6c
    rst $38                                       ; $5c3c: $ff
    push bc                                       ; $5c3d: $c5
    ld bc, $c5e0                                  ; $5c3e: $01 $e0 $c5
    ld l, e                                       ; $5c41: $6b
    ret nz                                        ; $5c42: $c0

    db $e4                                        ; $5c43: $e4
    inc c                                         ; $5c44: $0c
    ld b, c                                       ; $5c45: $41
    and [hl]                                      ; $5c46: $a6
    or e                                          ; $5c47: $b3
    ld h, e                                       ; $5c48: $63
    xor [hl]                                      ; $5c49: $ae
    and c                                         ; $5c4a: $a1
    ld a, [bc]                                    ; $5c4b: $0a
    ld c, d                                       ; $5c4c: $4a
    ret nc                                        ; $5c4d: $d0

    nop                                           ; $5c4e: $00
    and c                                         ; $5c4f: $a1
    add d                                         ; $5c50: $82
    add e                                         ; $5c51: $83
    push bc                                       ; $5c52: $c5
    ld [c], a                                     ; $5c53: $e2
    call nc, Call_000_2b83                        ; $5c54: $d4 $83 $2b
    ld b, b                                       ; $5c57: $40
    push hl                                       ; $5c58: $e5
    inc c                                         ; $5c59: $0c
    inc c                                         ; $5c5a: $0c
    add e                                         ; $5c5b: $83
    ld c, e                                       ; $5c5c: $4b
    ld l, e                                       ; $5c5d: $6b
    db $fc                                        ; $5c5e: $fc
    ret nz                                        ; $5c5f: $c0

    ld [hl], $a3                                  ; $5c60: $36 $a3
    ld bc, $62a2                                  ; $5c62: $01 $a2 $62
    ld h, l                                       ; $5c65: $65
    add b                                         ; $5c66: $80
    db $e3                                        ; $5c67: $e3
    ld a, [bc]                                    ; $5c68: $0a
    add c                                         ; $5c69: $81
    ld a, [hl+]                                   ; $5c6a: $2a
    ld h, h                                       ; $5c6b: $64
    add c                                         ; $5c6c: $81
    ld b, c                                       ; $5c6d: $41
    ret nz                                        ; $5c6e: $c0

    ld e, c                                       ; $5c6f: $59
    add d                                         ; $5c70: $82
    jr c, jr_05e_5bf3                             ; $5c71: $38 $80

    xor d                                         ; $5c73: $aa
    ld [c], a                                     ; $5c74: $e2
    adc [hl]                                      ; $5c75: $8e
    add b                                         ; $5c76: $80
    ld c, h                                       ; $5c77: $4c
    ret z                                         ; $5c78: $c8

    rst $38                                       ; $5c79: $ff
    rst $00                                       ; $5c7a: $c7
    cp h                                          ; $5c7b: $bc
    ret nz                                        ; $5c7c: $c0

    ld [hl], $a2                                  ; $5c7d: $36 $a2
    ld c, h                                       ; $5c7f: $4c
    pop bc                                        ; $5c80: $c1
    add b                                         ; $5c81: $80
    ccf                                           ; $5c82: $3f
    ld l, b                                       ; $5c83: $68
    ld c, l                                       ; $5c84: $4d
    dec l                                         ; $5c85: $2d
    jr nz, @+$09                                  ; $5c86: $20 $07

    add c                                         ; $5c88: $81
    dec h                                         ; $5c89: $25
    and d                                         ; $5c8a: $a2
    db $fd                                        ; $5c8b: $fd
    and d                                         ; $5c8c: $a2
    ld a, [$94e7]                                 ; $5c8d: $fa $e7 $94
    ret nz                                        ; $5c90: $c0

    dec c                                         ; $5c91: $0d
    add b                                         ; $5c92: $80
    and a                                         ; $5c93: $a7
    ld a, b                                       ; $5c94: $78
    and a                                         ; $5c95: $a7
    add b                                         ; $5c96: $80
    ret nz                                        ; $5c97: $c0

    jp hl                                         ; $5c98: $e9


    cp e                                          ; $5c99: $bb
    ld b, b                                       ; $5c9a: $40
    cp a                                          ; $5c9b: $bf
    pop hl                                        ; $5c9c: $e1
    jp $a382                                      ; $5c9d: $c3 $82 $a3


    pop bc                                        ; $5ca0: $c1
    cp e                                          ; $5ca1: $bb
    add b                                         ; $5ca2: $80
    adc l                                         ; $5ca3: $8d
    jp $106c                                      ; $5ca4: $c3 $6c $10


    ret nz                                        ; $5ca7: $c0

    pop hl                                        ; $5ca8: $e1
    xor l                                         ; $5ca9: $ad
    add b                                         ; $5caa: $80
    ld a, $c6                                     ; $5cab: $3e $c6
    ld [hl], $c6                                  ; $5cad: $36 $c6
    dec bc                                        ; $5caf: $0b
    add b                                         ; $5cb0: $80
    pop hl                                        ; $5cb1: $e1
    ld a, [de]                                    ; $5cb2: $1a
    ld h, l                                       ; $5cb3: $65
    add h                                         ; $5cb4: $84
    ld b, d                                       ; $5cb5: $42
    or b                                          ; $5cb6: $b0
    rlca                                          ; $5cb7: $07
    ldh [$7b], a                                  ; $5cb8: $e0 $7b
    ret nz                                        ; $5cba: $c0

    and e                                         ; $5cbb: $a3
    ld h, c                                       ; $5cbc: $61
    db $dd                                        ; $5cbd: $dd
    ld h, b                                       ; $5cbe: $60
    ld c, h                                       ; $5cbf: $4c
    inc l                                         ; $5cc0: $2c
    xor c                                         ; $5cc1: $a9
    ld b, d                                       ; $5cc2: $42
    inc c                                         ; $5cc3: $0c
    nop                                           ; $5cc4: $00
    adc a                                         ; $5cc5: $8f
    ret nz                                        ; $5cc6: $c0

    ld l, [hl]                                    ; $5cc7: $6e
    ld h, c                                       ; $5cc8: $61
    ld a, [hl]                                    ; $5cc9: $7e
    and [hl]                                      ; $5cca: $a6
    ld a, d                                       ; $5ccb: $7a
    add e                                         ; $5ccc: $83
    ld [hl], e                                    ; $5ccd: $73
    add c                                         ; $5cce: $81
    nop                                           ; $5ccf: $00
    db $e3                                        ; $5cd0: $e3
    ld h, [hl]                                    ; $5cd1: $66
    ld b, a                                       ; $5cd2: $47
    bit 0, b                                      ; $5cd3: $cb $40
    inc b                                         ; $5cd5: $04
    daa                                           ; $5cd6: $27
    ld h, b                                       ; $5cd7: $60
    cp a                                          ; $5cd8: $bf
    ld h, e                                       ; $5cd9: $63
    ld c, h                                       ; $5cda: $4c
    ld h, b                                       ; $5cdb: $60
    ret nz                                        ; $5cdc: $c0

    or h                                          ; $5cdd: $b4
    ld h, b                                       ; $5cde: $60
    ld [hl], l                                    ; $5cdf: $75
    and b                                         ; $5ce0: $a0
    ret z                                         ; $5ce1: $c8

    db $eb                                        ; $5ce2: $eb

Jump_05e_5ce3:
    jp nz, $c080                                  ; $5ce3: $c2 $80 $c0

    cp $e0                                        ; $5ce6: $fe $e0
    cp h                                          ; $5ce8: $bc
    add b                                         ; $5ce9: $80
    ld b, b                                       ; $5cea: $40
    db $e3                                        ; $5ceb: $e3
    ld h, $4b                                     ; $5cec: $26 $4b
    db $fd                                        ; $5cee: $fd
    ret nz                                        ; $5cef: $c0

    dec b                                         ; $5cf0: $05
    add e                                         ; $5cf1: $83
    ld l, e                                       ; $5cf2: $6b
    ld c, e                                       ; $5cf3: $4b
    dec c                                         ; $5cf4: $0d
    inc c                                         ; $5cf5: $0c
    rst $38                                       ; $5cf6: $ff
    ld h, c                                       ; $5cf7: $61
    dec c                                         ; $5cf8: $0d
    ld c, e                                       ; $5cf9: $4b
    ld a, [hl-]                                   ; $5cfa: $3a
    add b                                         ; $5cfb: $80
    ld l, h                                       ; $5cfc: $6c
    and b                                         ; $5cfd: $a0
    db $fc                                        ; $5cfe: $fc
    pop bc                                        ; $5cff: $c1
    ret z                                         ; $5d00: $c8

    pop hl                                        ; $5d01: $e1
    inc b                                         ; $5d02: $04
    jp nz, Jump_000_2f82                          ; $5d03: $c2 $82 $2f

    and e                                         ; $5d06: $a3
    ld c, h                                       ; $5d07: $4c
    rst $30                                       ; $5d08: $f7
    and b                                         ; $5d09: $a0
    ret nz                                        ; $5d0a: $c0

    add h                                         ; $5d0b: $84
    ld d, a                                       ; $5d0c: $57
    ld b, [hl]                                    ; $5d0d: $46
    cp h                                          ; $5d0e: $bc
    pop bc                                        ; $5d0f: $c1
    jp nz, $0762                                  ; $5d10: $c2 $62 $07

    dec hl                                        ; $5d13: $2b
    ld c, e                                       ; $5d14: $4b
    dec bc                                        ; $5d15: $0b
    sbc c                                         ; $5d16: $99
    and b                                         ; $5d17: $a0
    ld [$1e21], a                                 ; $5d18: $ea $21 $1e
    add b                                         ; $5d1b: $80
    db $d3                                        ; $5d1c: $d3
    ld b, c                                       ; $5d1d: $41
    sub b                                         ; $5d1e: $90
    ld b, d                                       ; $5d1f: $42
    ld [bc], a                                    ; $5d20: $02
    ei                                            ; $5d21: $fb
    and c                                         ; $5d22: $a1
    ld c, h                                       ; $5d23: $4c
    db $f4                                        ; $5d24: $f4
    add b                                         ; $5d25: $80
    add h                                         ; $5d26: $84
    ld b, b                                       ; $5d27: $40
    ld a, [$c0e2]                                 ; $5d28: $fa $e2 $c0
    add a                                         ; $5d2b: $87
    dec a                                         ; $5d2c: $3d
    ld c, b                                       ; $5d2d: $48
    ld h, [hl]                                    ; $5d2e: $66
    add c                                         ; $5d2f: $81
    ld b, d                                       ; $5d30: $42
    add h                                         ; $5d31: $84
    ld h, c                                       ; $5d32: $61
    inc c                                         ; $5d33: $0c
    cp d                                          ; $5d34: $ba
    inc h                                         ; $5d35: $24

jr_05e_5d36:
    ei                                            ; $5d36: $fb
    ld b, b                                       ; $5d37: $40
    ld a, a                                       ; $5d38: $7f
    pop hl                                        ; $5d39: $e1
    sub b                                         ; $5d3a: $90
    ld b, d                                       ; $5d3b: $42
    ld l, h                                       ; $5d3c: $6c
    ld c, b                                       ; $5d3d: $48
    ldh [rTMA], a                                 ; $5d3e: $e0 $06
    ld l, h                                       ; $5d40: $6c
    ldh [rWX], a                                  ; $5d41: $e0 $4b
    ld c, e                                       ; $5d43: $4b
    adc b                                         ; $5d44: $88
    ld h, b                                       ; $5d45: $60
    nop                                           ; $5d46: $00
    and b                                         ; $5d47: $a0
    call c, $9d81                                 ; $5d48: $dc $81 $9d
    ld a, [hl+]                                   ; $5d4b: $2a
    ret nz                                        ; $5d4c: $c0

    db $e3                                        ; $5d4d: $e3
    ld b, b                                       ; $5d4e: $40
    and e                                         ; $5d4f: $a3
    ld h, b                                       ; $5d50: $60
    and d                                         ; $5d51: $a2
    add b                                         ; $5d52: $80
    ret nz                                        ; $5d53: $c0

    db $e3                                        ; $5d54: $e3
    dec [hl]                                      ; $5d55: $35
    ld b, e                                       ; $5d56: $43
    db $ed                                        ; $5d57: $ed
    and d                                         ; $5d58: $a2

jr_05e_5d59:
    ld c, $41                                     ; $5d59: $0e $41
    ld c, h                                       ; $5d5b: $4c
    ld c, h                                       ; $5d5c: $4c
    ldh [$60], a                                  ; $5d5d: $e0 $60
    xor d                                         ; $5d5f: $aa
    push hl                                       ; $5d60: $e5
    jp nz, $80e3                                  ; $5d61: $c2 $e3 $80

    ld b, a                                       ; $5d64: $47
    inc bc                                        ; $5d65: $03
    ld b, h                                       ; $5d66: $44
    ld [bc], a                                    ; $5d67: $02
    ld h, d                                       ; $5d68: $62
    ld l, e                                       ; $5d69: $6b
    ld c, e                                       ; $5d6a: $4b
    add e                                         ; $5d6b: $83
    call nz, Call_05e_7d00                        ; $5d6c: $c4 $00 $7d
    db $e3                                        ; $5d6f: $e3
    xor l                                         ; $5d70: $ad
    ld b, l                                       ; $5d71: $45
    push hl                                       ; $5d72: $e5
    ld b, d                                       ; $5d73: $42
    jr z, jr_05e_5d59                             ; $5d74: $28 $e3

    inc b                                         ; $5d76: $04
    add h                                         ; $5d77: $84
    pop de                                        ; $5d78: $d1
    nop                                           ; $5d79: $00
    ld b, c                                       ; $5d7a: $41
    add $fe                                       ; $5d7b: $c6 $fe
    and c                                         ; $5d7d: $a1
    nop                                           ; $5d7e: $00
    pop bc                                        ; $5d7f: $c1
    pop hl                                        ; $5d80: $e1
    rlca                                          ; $5d81: $07
    jp nz, Jump_05e_405c                          ; $5d82: $c2 $5c $40

    ei                                            ; $5d85: $fb
    ld h, h                                       ; $5d86: $64
    inc [hl]                                      ; $5d87: $34
    ld hl, $4290                                  ; $5d88: $21 $90 $42
    xor a                                         ; $5d8b: $af
    and c                                         ; $5d8c: $a1
    dec l                                         ; $5d8d: $2d

jr_05e_5d8e:
    db $e3                                        ; $5d8e: $e3

jr_05e_5d8f:
    sub b                                         ; $5d8f: $90
    inc b                                         ; $5d90: $04
    daa                                           ; $5d91: $27
    rst $20                                       ; $5d92: $e7
    dec bc                                        ; $5d93: $0b
    push bc                                       ; $5d94: $c5
    ld [hl+], a                                   ; $5d95: $22
    ld d, l                                       ; $5d96: $55
    and b                                         ; $5d97: $a0
    inc l                                         ; $5d98: $2c
    ld sp, hl                                     ; $5d99: $f9
    ld h, b                                       ; $5d9a: $60
    or d                                          ; $5d9b: $b2
    add b                                         ; $5d9c: $80
    dec c                                         ; $5d9d: $0d
    rlca                                          ; $5d9e: $07
    dec bc                                        ; $5d9f: $0b
    dec l                                         ; $5da0: $2d
    ld c, l                                       ; $5da1: $4d
    jr nc, @+$25                                  ; $5da2: $30 $23

    cp a                                          ; $5da4: $bf
    ld [c], a                                     ; $5da5: $e2
    sub b                                         ; $5da6: $90
    ld b, c                                       ; $5da7: $41
    ret nz                                        ; $5da8: $c0

    push hl                                       ; $5da9: $e5
    ld c, $66                                     ; $5daa: $0e $66
    nop                                           ; $5dac: $00
    and a                                         ; $5dad: $a7
    add hl, bc                                    ; $5dae: $09
    ld a, [bc]                                    ; $5daf: $0a
    jr nz, jr_05e_5d36                            ; $5db0: $20 $84

    ld [hl+], a                                   ; $5db2: $22
    ld b, l                                       ; $5db3: $45
    pop bc                                        ; $5db4: $c1
    pop hl                                        ; $5db5: $e1
    daa                                           ; $5db6: $27
    adc a                                         ; $5db7: $8f
    ld [c], a                                     ; $5db8: $e2
    sub b                                         ; $5db9: $90
    ld b, l                                       ; $5dba: $45
    dec de                                        ; $5dbb: $1b
    add c                                         ; $5dbc: $81
    ld d, b                                       ; $5dbd: $50
    adc c                                         ; $5dbe: $89
    call Call_000_2662                            ; $5dbf: $cd $62 $26
    ld c, h                                       ; $5dc2: $4c
    and c                                         ; $5dc3: $a1
    ret nz                                        ; $5dc4: $c0

    ld [$f94b], a                                 ; $5dc5: $ea $4b $f9
    ld h, l                                       ; $5dc8: $65
    ld l, l                                       ; $5dc9: $6d
    ld c, a                                       ; $5dca: $4f
    ld b, c                                       ; $5dcb: $41
    jr nz, jr_05e_5d8f                            ; $5dcc: $20 $c1

    db $e4                                        ; $5dce: $e4
    ld c, e                                       ; $5dcf: $4b
    and h                                         ; $5dd0: $a4
    ld c, c                                       ; $5dd1: $49
    ld b, [hl]                                    ; $5dd2: $46
    ld h, c                                       ; $5dd3: $61
    daa                                           ; $5dd4: $27
    add c                                         ; $5dd5: $81
    ld h, b                                       ; $5dd6: $60
    ld a, [hl+]                                   ; $5dd7: $2a
    add b                                         ; $5dd8: $80
    db $e4                                        ; $5dd9: $e4
    ld e, $20                                     ; $5dda: $1e $20
    ld [$a0f6], sp                                ; $5ddc: $08 $f6 $a0

jr_05e_5ddf:
    and b                                         ; $5ddf: $a0
    add e                                         ; $5de0: $83
    sub c                                         ; $5de1: $91
    inc bc                                        ; $5de2: $03
    dec c                                         ; $5de3: $0d
    sub b                                         ; $5de4: $90
    ld b, c                                       ; $5de5: $41
    ret nz                                        ; $5de6: $c0

    ld [c], a                                     ; $5de7: $e2
    and a                                         ; $5de8: $a7
    ld [$e9c0], sp                                ; $5de9: $08 $c0 $e9
    adc [hl]                                      ; $5dec: $8e
    xor l                                         ; $5ded: $ad
    nop                                           ; $5dee: $00
    ld a, [bc]                                    ; $5def: $0a
    ld c, d                                       ; $5df0: $4a
    ld a, [hl+]                                   ; $5df1: $2a
    db $e3                                        ; $5df2: $e3
    ld b, c                                       ; $5df3: $41
    ld b, b                                       ; $5df4: $40
    push hl                                       ; $5df5: $e5
    ldh [$80], a                                  ; $5df6: $e0 $80
    ld c, l                                       ; $5df8: $4d
    ld h, h                                       ; $5df9: $64
    jr z, jr_05e_5ddf                             ; $5dfa: $28 $e3

    ld d, e                                       ; $5dfc: $53
    nop                                           ; $5dfd: $00
    dec c                                         ; $5dfe: $0d
    jp z, $e160                                   ; $5dff: $ca $60 $e1

    and d                                         ; $5e02: $a2
    ld c, e                                       ; $5e03: $4b
    ld c, e                                       ; $5e04: $4b
    adc c                                         ; $5e05: $89
    inc bc                                        ; $5e06: $03
    jr c, jr_05e_5d8e                             ; $5e07: $38 $85

    ld b, $9d                                     ; $5e09: $06 $9d
    ld b, l                                       ; $5e0b: $45
    ret nz                                        ; $5e0c: $c0

    ldh [$0a], a                                  ; $5e0d: $e0 $0a
    dec hl                                        ; $5e0f: $2b
    dec bc                                        ; $5e10: $0b
    dec h                                         ; $5e11: $25
    jr nz, @+$42                                  ; $5e12: $20 $40

    add sp, $10                                   ; $5e14: $e8 $10
    ld b, e                                       ; $5e16: $43
    ld h, e                                       ; $5e17: $63
    ld d, e                                       ; $5e18: $53
    ld [bc], a                                    ; $5e19: $02
    push af                                       ; $5e1a: $f5
    ld h, c                                       ; $5e1b: $61
    add a                                         ; $5e1c: $87
    ld [bc], a                                    ; $5e1d: $02
    ld c, e                                       ; $5e1e: $4b
    rlca                                          ; $5e1f: $07
    ld h, d                                       ; $5e20: $62
    rst $00                                       ; $5e21: $c7
    xor b                                         ; $5e22: $a8
    add h                                         ; $5e23: $84
    add h                                         ; $5e24: $84
    cpl                                           ; $5e25: $2f
    dec bc                                        ; $5e26: $0b
    dec bc                                        ; $5e27: $0b
    ld c, d                                       ; $5e28: $4a
    ld a, [bc]                                    ; $5e29: $0a
    pop bc                                        ; $5e2a: $c1
    pop hl                                        ; $5e2b: $e1
    dec bc                                        ; $5e2c: $0b
    sbc l                                         ; $5e2d: $9d
    ld h, b                                       ; $5e2e: $60
    ld a, [hl]                                    ; $5e2f: $7e
    inc hl                                        ; $5e30: $23
    db $10                                        ; $5e31: $10
    ld a, d                                       ; $5e32: $7a
    ld b, d                                       ; $5e33: $42
    jr nc, @+$06                                  ; $5e34: $30 $04

    jp hl                                         ; $5e36: $e9


    inc bc                                        ; $5e37: $03
    ld [c], a                                     ; $5e38: $e2
    jr nz, jr_05e_5e48                            ; $5e39: $20 $0d

    ld b, [hl]                                    ; $5e3b: $46
    ld b, b                                       ; $5e3c: $40
    ld a, [hl]                                    ; $5e3d: $7e
    and $04                                       ; $5e3e: $e6 $04
    daa                                           ; $5e40: $27
    ld b, $06                                     ; $5e41: $06 $06
    and c                                         ; $5e43: $a1
    ld l, e                                       ; $5e44: $6b
    dec hl                                        ; $5e45: $2b
    ld l, b                                       ; $5e46: $68
    ld b, b                                       ; $5e47: $40

jr_05e_5e48:
    add b                                         ; $5e48: $80
    ret nz                                        ; $5e49: $c0

    ld a, [hl]                                    ; $5e4a: $7e
    inc h                                         ; $5e4b: $24
    pop bc                                        ; $5e4c: $c1
    and $7a                                       ; $5e4d: $e6 $7a
    and b                                         ; $5e4f: $a0
    ld a, [bc]                                    ; $5e50: $0a
    xor l                                         ; $5e51: $ad
    jp nz, $610d                                  ; $5e52: $c2 $0d $61

    ld h, b                                       ; $5e55: $60
    ld c, e                                       ; $5e56: $4b
    and e                                         ; $5e57: $a3
    ld [bc], a                                    ; $5e58: $02
    ld a, $e9                                     ; $5e59: $3e $e9
    inc e                                         ; $5e5b: $1c
    ld b, [hl]                                    ; $5e5c: $46
    sub [hl]                                      ; $5e5d: $96
    ld h, c                                       ; $5e5e: $61
    ld [hl-], a                                   ; $5e5f: $32
    ld a, [bc]                                    ; $5e60: $0a
    jr nz, @+$0d                                  ; $5e61: $20 $0b

    ld c, $80                                     ; $5e63: $0e $80
    jp Jump_000_0ea3                              ; $5e65: $c3 $a3 $0e


    ld c, $18                                     ; $5e68: $0e $18
    and b                                         ; $5e6a: $a0
    sub [hl]                                      ; $5e6b: $96
    inc bc                                        ; $5e6c: $03
    ld b, $13                                     ; $5e6d: $06 $13
    ld hl, $0d0b                                  ; $5e6f: $21 $0b $0d
    rra                                           ; $5e72: $1f
    ldh [$b5], a                                  ; $5e73: $e0 $b5
    db $e3                                        ; $5e75: $e3
    db $fd                                        ; $5e76: $fd
    jp Jump_000_0949                              ; $5e77: $c3 $49 $09


    add $82                                       ; $5e7a: $c6 $82
    or b                                          ; $5e7c: $b0
    ld h, l                                       ; $5e7d: $65
    ld b, c                                       ; $5e7e: $41
    sub e                                         ; $5e7f: $93
    jr nz, jr_05e_5ec6                            ; $5e80: $20 $44

    add b                                         ; $5e82: $80
    rst $38                                       ; $5e83: $ff
    inc h                                         ; $5e84: $24
    dec l                                         ; $5e85: $2d
    dec c                                         ; $5e86: $0d
    ld d, [hl]                                    ; $5e87: $56
    dec b                                         ; $5e88: $05
    ld c, e                                       ; $5e89: $4b
    ld a, [hl]                                    ; $5e8a: $7e
    ld c, d                                       ; $5e8b: $4a
    ld b, c                                       ; $5e8c: $41
    ld c, d                                       ; $5e8d: $4a
    ld a, [bc]                                    ; $5e8e: $0a
    ld l, e                                       ; $5e8f: $6b
    dec hl                                        ; $5e90: $2b
    ld a, [bc]                                    ; $5e91: $0a
    ld l, d                                       ; $5e92: $6a
    dec e                                         ; $5e93: $1d
    add c                                         ; $5e94: $81
    inc bc                                        ; $5e95: $03
    ld c, l                                       ; $5e96: $4d
    dec l                                         ; $5e97: $2d
    ld b, d                                       ; $5e98: $42
    and e                                         ; $5e99: $a3
    ld a, [$1ce4]                                 ; $5e9a: $fa $e4 $1c
    ld b, d                                       ; $5e9d: $42

jr_05e_5e9e:
    xor b                                         ; $5e9e: $a8
    ld hl, $c21e                                  ; $5e9f: $21 $1e $c2
    ret nz                                        ; $5ea2: $c0

    pop hl                                        ; $5ea3: $e1
    nop                                           ; $5ea4: $00
    ld h, $84                                     ; $5ea5: $26 $84
    add l                                         ; $5ea7: $85
    and d                                         ; $5ea8: $a2
    ld [$cb45], a                                 ; $5ea9: $ea $45 $cb
    ld bc, $2060                                  ; $5eac: $01 $60 $20
    add h                                         ; $5eaf: $84
    ld hl, $c23a                                  ; $5eb0: $21 $3a $c2
    ld b, c                                       ; $5eb3: $41
    add hl, hl                                    ; $5eb4: $29
    nop                                           ; $5eb5: $00
    ld d, a                                       ; $5eb6: $57
    ld b, b                                       ; $5eb7: $40
    ret nz                                        ; $5eb8: $c0

    db $e3                                        ; $5eb9: $e3
    scf                                           ; $5eba: $37
    ret nz                                        ; $5ebb: $c0

    ret nz                                        ; $5ebc: $c0

    push hl                                       ; $5ebd: $e5
    xor l                                         ; $5ebe: $ad
    ld h, e                                       ; $5ebf: $63
    ld d, [hl]                                    ; $5ec0: $56
    ld [bc], a                                    ; $5ec1: $02
    ld l, [hl]                                    ; $5ec2: $6e
    ld h, d                                       ; $5ec3: $62
    dec [hl]                                      ; $5ec4: $35

jr_05e_5ec5:
    ld h, b                                       ; $5ec5: $60

jr_05e_5ec6:
    ld bc, $456b                                  ; $5ec6: $01 $6b $45
    ld [hl+], a                                   ; $5ec9: $22
    sbc h                                         ; $5eca: $9c
    ld h, c                                       ; $5ecb: $61
    jp hl                                         ; $5ecc: $e9


    add b                                         ; $5ecd: $80
    ld a, c                                       ; $5ece: $79
    add $54                                       ; $5ecf: $c6 $54
    add h                                         ; $5ed1: $84
    adc l                                         ; $5ed2: $8d
    ld h, d                                       ; $5ed3: $62
    ret nz                                        ; $5ed4: $c0

    db $e3                                        ; $5ed5: $e3
    ld [$22bf], sp                                ; $5ed6: $08 $bf $22
    inc bc                                        ; $5ed9: $03
    and l                                         ; $5eda: $a5
    ld b, e                                       ; $5edb: $43
    ld [c], a                                     ; $5edc: $e2
    ld c, h                                       ; $5edd: $4c
    ret nc                                        ; $5ede: $d0

    ld b, b                                       ; $5edf: $40
    adc c                                         ; $5ee0: $89
    ld b, d                                       ; $5ee1: $42
    ld e, [hl]                                    ; $5ee2: $5e
    ld h, e                                       ; $5ee3: $63
    ld a, [$80c4]                                 ; $5ee4: $fa $c4 $80
    ret nz                                        ; $5ee7: $c0

    rst $20                                       ; $5ee8: $e7
    sbc c                                         ; $5ee9: $99
    ld h, d                                       ; $5eea: $62
    dec a                                         ; $5eeb: $3d
    and e                                         ; $5eec: $a3
    cp a                                          ; $5eed: $bf
    pop bc                                        ; $5eee: $c1
    call nz, $e020                                ; $5eef: $c4 $20 $e0
    ld b, $70                                     ; $5ef2: $06 $70
    ld b, d                                       ; $5ef4: $42
    ld c, h                                       ; $5ef5: $4c
    ld [bc], a                                    ; $5ef6: $02
    ld a, d                                       ; $5ef7: $7a
    jp nz, Jump_000_362b                          ; $5ef8: $c2 $2b $36

    jr nz, jr_05e_5e9e                            ; $5efb: $20 $a1

    ret nz                                        ; $5efd: $c0

    cp a                                          ; $5efe: $bf
    jp hl                                         ; $5eff: $e9


    add l                                         ; $5f00: $85
    ld b, h                                       ; $5f01: $44
    ld c, $c0                                     ; $5f02: $0e $c0
    ld h, $22                                     ; $5f04: $26 $22
    ld h, b                                       ; $5f06: $60
    cp [hl]                                       ; $5f07: $be
    add d                                         ; $5f08: $82
    ld a, l                                       ; $5f09: $7d
    pop bc                                        ; $5f0a: $c1
    cp l                                          ; $5f0b: $bd
    jr nz, jr_05e_5f6c                            ; $5f0c: $20 $5e

    inc b                                         ; $5f0e: $04
    ld c, [hl]                                    ; $5f0f: $4e
    ld bc, $2c4c                                  ; $5f10: $01 $4c $2c

jr_05e_5f13:
    db $ed                                        ; $5f13: $ed
    and b                                         ; $5f14: $a0
    ld b, $60                                     ; $5f15: $06 $60
    jr nz, jr_05e_5f83                            ; $5f17: $20 $6a

    ld l, d                                       ; $5f19: $6a
    ld h, b                                       ; $5f1a: $60
    jp nz, $83dd                                  ; $5f1b: $c2 $dd $83

    sbc a                                         ; $5f1e: $9f
    and e                                         ; $5f1f: $a3
    ld b, l                                       ; $5f20: $45
    add h                                         ; $5f21: $84
    ld b, a                                       ; $5f22: $47
    jr nz, jr_05e_5ec5                            ; $5f23: $20 $a0

    ld a, [hl+]                                   ; $5f25: $2a
    nop                                           ; $5f26: $00
    call nz, $dd84                                ; $5f27: $c4 $84 $dd
    inc h                                         ; $5f2a: $24
    ld hl, sp+$02                                 ; $5f2b: $f8 $02
    ld b, c                                       ; $5f2d: $41
    ld h, d                                       ; $5f2e: $62
    ld c, h                                       ; $5f2f: $4c
    ld h, a                                       ; $5f30: $67
    ld b, d                                       ; $5f31: $42
    dec hl                                        ; $5f32: $2b
    rrca                                          ; $5f33: $0f
    ld a, [bc]                                    ; $5f34: $0a
    ld a, [bc]                                    ; $5f35: $0a
    ld a, [bc]                                    ; $5f36: $0a
    ld c, d                                       ; $5f37: $4a
    or e                                          ; $5f38: $b3
    rlca                                          ; $5f39: $07
    ld h, [hl]                                    ; $5f3a: $66
    ld b, c                                       ; $5f3b: $41
    adc c                                         ; $5f3c: $89
    ld h, l                                       ; $5f3d: $65
    add c                                         ; $5f3e: $81
    push bc                                       ; $5f3f: $c5
    add b                                         ; $5f40: $80
    inc bc                                        ; $5f41: $03
    ld b, d                                       ; $5f42: $42
    ld h, $04                                     ; $5f43: $26 $04
    cp [hl]                                       ; $5f45: $be
    pop hl                                        ; $5f46: $e1
    xor h                                         ; $5f47: $ac
    ld h, b                                       ; $5f48: $60
    add e                                         ; $5f49: $83
    add c                                         ; $5f4a: $81
    ret nz                                        ; $5f4b: $c0

    pop hl                                        ; $5f4c: $e1
    and d                                         ; $5f4d: $a2
    and c                                         ; $5f4e: $a1
    dec hl                                        ; $5f4f: $2b
    nop                                           ; $5f50: $00
    sbc [hl]                                      ; $5f51: $9e
    inc bc                                        ; $5f52: $03
    db $fd                                        ; $5f53: $fd
    call nz, $859f                                ; $5f54: $c4 $9f $85
    ld c, e                                       ; $5f57: $4b
    ld h, d                                       ; $5f58: $62
    adc [hl]                                      ; $5f59: $8e

jr_05e_5f5a:
    and b                                         ; $5f5a: $a0
    jp nc, $b303                                  ; $5f5b: $d2 $03 $b3

    and e                                         ; $5f5e: $a3
    ret c                                         ; $5f5f: $d8

    ld h, b                                       ; $5f60: $60
    dec e                                         ; $5f61: $1d
    ld c, l                                       ; $5f62: $4d
    inc bc                                        ; $5f63: $03
    ld b, h                                       ; $5f64: $44
    ld l, h                                       ; $5f65: $6c
    ld c, e                                       ; $5f66: $4b
    ld l, e                                       ; $5f67: $6b
    add b                                         ; $5f68: $80
    ldh [$a3], a                                  ; $5f69: $e0 $a3

jr_05e_5f6b:
    nop                                           ; $5f6b: $00

jr_05e_5f6c:
    push bc                                       ; $5f6c: $c5
    ld b, b                                       ; $5f6d: $40
    add b                                         ; $5f6e: $80
    ld b, b                                       ; $5f6f: $40
    pop bc                                        ; $5f70: $c1
    dec de                                        ; $5f71: $1b
    ld b, e                                       ; $5f72: $43
    sub c                                         ; $5f73: $91
    jr nz, jr_05e_5f13                            ; $5f74: $20 $9d

    and b                                         ; $5f76: $a0
    dec bc                                        ; $5f77: $0b
    ld l, b                                       ; $5f78: $68
    ld b, h                                       ; $5f79: $44
    ld h, c                                       ; $5f7a: $61
    cp a                                          ; $5f7b: $bf
    db $e4                                        ; $5f7c: $e4
    ld c, e                                       ; $5f7d: $4b
    ret nz                                        ; $5f7e: $c0

    ret z                                         ; $5f7f: $c8

    ld b, b                                       ; $5f80: $40
    ld a, l                                       ; $5f81: $7d
    ld [bc], a                                    ; $5f82: $02

jr_05e_5f83:
    ld a, [hl]                                    ; $5f83: $7e
    ld b, b                                       ; $5f84: $40
    adc b                                         ; $5f85: $88
    jp nz, $21b2                                  ; $5f86: $c2 $b2 $21

    ld b, e                                       ; $5f89: $43
    ldh [rOCPS], a                                ; $5f8a: $e0 $6a
    ld a, [bc]                                    ; $5f8c: $0a
    ld bc, $df0a                                  ; $5f8d: $01 $0a $df
    dec b                                         ; $5f90: $05
    add hl, sp                                    ; $5f91: $39
    and [hl]                                      ; $5f92: $a6
    ld [hl], c                                    ; $5f93: $71
    push bc                                       ; $5f94: $c5
    jr z, jr_05e_5f5a                             ; $5f95: $28 $c3

    ld a, a                                       ; $5f97: $7f
    db $e4                                        ; $5f98: $e4
    ld bc, $22a0                                  ; $5f99: $01 $a0 $22
    inc h                                         ; $5f9c: $24
    jr @-$12                                      ; $5f9d: $18 $ec

    ld hl, $242d                                  ; $5f9f: $21 $2d $24
    nop                                           ; $5fa2: $00
    and b                                         ; $5fa3: $a0
    ld a, [bc]                                    ; $5fa4: $0a
    ld a, [bc]                                    ; $5fa5: $0a
    or l                                          ; $5fa6: $b5
    ld b, l                                       ; $5fa7: $45
    db $ec                                        ; $5fa8: $ec
    jr nz, jr_05e_5f6b                            ; $5fa9: $20 $c0

    xor $00                                       ; $5fab: $ee $00
    dec h                                         ; $5fad: $25
    push hl                                       ; $5fae: $e5
    jp c, Jump_05e_6342                           ; $5faf: $da $42 $63

    push bc                                       ; $5fb2: $c5
    xor e                                         ; $5fb3: $ab
    jr nz, jr_05e_5fc4                            ; $5fb4: $20 $0e

    push bc                                       ; $5fb6: $c5
    ld a, a                                       ; $5fb7: $7f
    and b                                         ; $5fb8: $a0
    push af                                       ; $5fb9: $f5
    ld b, c                                       ; $5fba: $41
    cpl                                           ; $5fbb: $2f
    ret nz                                        ; $5fbc: $c0

    nop                                           ; $5fbd: $00
    jr nz, jr_05e_6022                            ; $5fbe: $20 $62

    ld a, [hl-]                                   ; $5fc0: $3a
    and e                                         ; $5fc1: $a3
    sbc a                                         ; $5fc2: $9f
    push hl                                       ; $5fc3: $e5

jr_05e_5fc4:
    rst $20                                       ; $5fc4: $e7
    and h                                         ; $5fc5: $a4
    cp l                                          ; $5fc6: $bd
    jp Jump_000_20c7                              ; $5fc7: $c3 $c7 $20


    cp h                                          ; $5fca: $bc
    and a                                         ; $5fcb: $a7
    adc $a6                                       ; $5fcc: $ce $a6
    nop                                           ; $5fce: $00
    dec e                                         ; $5fcf: $1d
    ld h, h                                       ; $5fd0: $64
    cpl                                           ; $5fd1: $2f
    ld b, c                                       ; $5fd2: $41
    ld d, [hl]                                    ; $5fd3: $56
    jr nz, @-$1f                                  ; $5fd4: $20 $df

    ld b, d                                       ; $5fd6: $42
    ret c                                         ; $5fd7: $d8

    inc hl                                        ; $5fd8: $23
    ld a, a                                       ; $5fd9: $7f
    add sp, $12                                   ; $5fda: $e8 $12
    ld b, l                                       ; $5fdc: $45
    ld hl, $00e6                                  ; $5fdd: $21 $e6 $00
    ld a, $c4                                     ; $5fe0: $3e $c4
    and [hl]                                      ; $5fe2: $a6
    call nz, $22b7                                ; $5fe3: $c4 $b7 $22
    inc l                                         ; $5fe6: $2c
    add l                                         ; $5fe7: $85
    ld a, a                                       ; $5fe8: $7f
    inc bc                                        ; $5fe9: $03
    add $40                                       ; $5fea: $c6 $40
    jp z, $65e6                                   ; $5fec: $ca $e6 $65

    db $e3                                        ; $5fef: $e3
    db $10                                        ; $5ff0: $10
    ld [hl], h                                    ; $5ff1: $74
    and e                                         ; $5ff2: $a3
    ei                                            ; $5ff3: $fb
    add [hl]                                      ; $5ff4: $86
    cp a                                          ; $5ff5: $bf
    daa                                           ; $5ff6: $27
    pop af                                        ; $5ff7: $f1
    and l                                         ; $5ff8: $a5
    dec l                                         ; $5ff9: $2d
    inc l                                         ; $5ffa: $2c
    add d                                         ; $5ffb: $82
    ld [hl], l                                    ; $5ffc: $75
    ld b, d                                       ; $5ffd: $42
    add d                                         ; $5ffe: $82
    db $e4                                        ; $5fff: $e4
    nop                                           ; $6000: $00
    ld a, l                                       ; $6001: $7d
    push hl                                       ; $6002: $e5
    sub e                                         ; $6003: $93
    jr z, jr_05e_6068                             ; $6004: $28 $62

    and [hl]                                      ; $6006: $a6
    ld a, a                                       ; $6007: $7f
    ld h, $c4                                     ; $6008: $26 $c4
    add c                                         ; $600a: $81
    rst $18                                       ; $600b: $df
    inc bc                                        ; $600c: $03
    pop bc                                        ; $600d: $c1
    db $e4                                        ; $600e: $e4
    ld b, l                                       ; $600f: $45
    ld h, l                                       ; $6010: $65
    nop                                           ; $6011: $00
    ld a, [hl]                                    ; $6012: $7e
    push hl                                       ; $6013: $e5
    ld hl, sp-$7e                                 ; $6014: $f8 $82
    add d                                         ; $6016: $82
    ld b, h                                       ; $6017: $44
    ld [hl+], a                                   ; $6018: $22
    call nz, $e360                                ; $6019: $c4 $60 $e3
    ld l, [hl]                                    ; $601c: $6e
    ld b, h                                       ; $601d: $44
    add hl, sp                                    ; $601e: $39
    add h                                         ; $601f: $84
    ld a, [c]                                     ; $6020: $f2
    ld [hl+], a                                   ; $6021: $22

jr_05e_6022:
    add b                                         ; $6022: $80
    inc a                                         ; $6023: $3c
    ld h, $21                                     ; $6024: $26 $21
    daa                                           ; $6026: $27
    ret nz                                        ; $6027: $c0

    db $e3                                        ; $6028: $e3
    add d                                         ; $6029: $82
    ld b, l                                       ; $602a: $45
    ld [$1e06], a                                 ; $602b: $ea $06 $1e
    add $67                                       ; $602e: $c6 $67
    ld h, e                                       ; $6030: $63
    dec l                                         ; $6031: $2d
    add b                                         ; $6032: $80
    ld a, [c]                                     ; $6033: $f2
    inc hl                                        ; $6034: $23
    and b                                         ; $6035: $a0
    add a                                         ; $6036: $87
    ld hl, $4025                                  ; $6037: $21 $25 $40
    jp hl                                         ; $603a: $e9


    rst $10                                       ; $603b: $d7
    inc h                                         ; $603c: $24
    db $db                                        ; $603d: $db
    ld [bc], a                                    ; $603e: $02
    ld b, b                                       ; $603f: $40

Call_05e_6040:
    rst $20                                       ; $6040: $e7
    dec c                                         ; $6041: $0d
    dec b                                         ; $6042: $05
    ld l, l                                       ; $6043: $6d
    xor l                                         ; $6044: $ad
    jr nz, @+$4f                                  ; $6045: $20 $4d

    cp a                                          ; $6047: $bf
    ldh [$ae], a                                  ; $6048: $e0 $ae
    ld h, b                                       ; $604a: $60
    or a                                          ; $604b: $b7

Call_05e_604c:
    inc h                                         ; $604c: $24
    call nc, Call_05e_5ba0                        ; $604d: $d4 $a0 $5b
    ld h, [hl]                                    ; $6050: $66
    nop                                           ; $6051: $00
    add h                                         ; $6052: $84
    ld [bc], a                                    ; $6053: $02
    add d                                         ; $6054: $82
    ld b, e                                       ; $6055: $43
    ld e, b                                       ; $6056: $58
    inc h                                         ; $6057: $24
    and l                                         ; $6058: $a5
    ld b, d                                       ; $6059: $42
    db $ec                                        ; $605a: $ec
    push hl                                       ; $605b: $e5
    xor l                                         ; $605c: $ad
    ld b, e                                       ; $605d: $43
    cp a                                          ; $605e: $bf
    ld [c], a                                     ; $605f: $e2

Jump_05e_6060:
    ld b, e                                       ; $6060: $43
    and c                                         ; $6061: $a1
    nop                                           ; $6062: $00
    db $fc                                        ; $6063: $fc
    inc hl                                        ; $6064: $23
    or c                                          ; $6065: $b1
    ld [c], a                                     ; $6066: $e2
    ld e, e                                       ; $6067: $5b

jr_05e_6068:
    ld h, h                                       ; $6068: $64
    cp e                                          ; $6069: $bb
    ld b, c                                       ; $606a: $41
    add d                                         ; $606b: $82
    ld b, [hl]                                    ; $606c: $46
    ld h, h                                       ; $606d: $64
    ld c, b                                       ; $606e: $48
    ld [hl], e                                    ; $606f: $73
    ld b, b                                       ; $6070: $40
    pop hl                                        ; $6071: $e1
    add d                                         ; $6072: $82
    nop                                           ; $6073: $00
    xor $c5                                       ; $6074: $ee $c5
    ld h, $81                                     ; $6076: $26 $81
    ld h, h                                       ; $6078: $64
    ld bc, $0449                                  ; $6079: $01 $49 $04
    cpl                                           ; $607c: $2f
    db $e4                                        ; $607d: $e4
    push de                                       ; $607e: $d5
    ld bc, $a63f                                  ; $607f: $01 $3f $a6
    and h                                         ; $6082: $a4
    pop bc                                        ; $6083: $c1

Jump_05e_6084:
    nop                                           ; $6084: $00
    dec de                                        ; $6085: $1b
    dec h                                         ; $6086: $25
    ld a, [hl]                                    ; $6087: $7e
    and e                                         ; $6088: $a3
    ret nc                                        ; $6089: $d0

    add $6c                                       ; $608a: $c6 $6c
    and c                                         ; $608c: $a1
    add h                                         ; $608d: $84
    push bc                                       ; $608e: $c5
    dec de                                        ; $608f: $1b
    ld h, e                                       ; $6090: $63
    cp [hl]                                       ; $6091: $be
    dec b                                         ; $6092: $05
    or $e6                                        ; $6093: $f6 $e6
    ld bc, $464d                                  ; $6095: $01 $4d $46
    ld bc, $6266                                  ; $6098: $01 $66 $62
    ld a, $03                                     ; $609b: $3e $03
    sbc a                                         ; $609d: $9f
    inc bc                                        ; $609e: $03
    sla [hl]                                      ; $609f: $cb $26
    cp l                                          ; $60a1: $bd
    ld a, [bc]                                    ; $60a2: $0a
    pop bc                                        ; $60a3: $c1
    ld [hl+], a                                   ; $60a4: $22
    ld bc, $954d                                  ; $60a5: $01 $4d $95
    inc b                                         ; $60a8: $04
    ld hl, sp-$1f                                 ; $60a9: $f8 $e1
    jp $63e5                                      ; $60ab: $c3 $e5 $63


    daa                                           ; $60ae: $27
    jp hl                                         ; $60af: $e9


    ld [c], a                                     ; $60b0: $e2
    pop af                                        ; $60b1: $f1
    db $e4                                        ; $60b2: $e4
    xor d                                         ; $60b3: $aa
    db $e4                                        ; $60b4: $e4
    nop                                           ; $60b5: $00
    db $f4                                        ; $60b6: $f4
    db $ec                                        ; $60b7: $ec
    add hl, sp                                    ; $60b8: $39
    ld h, h                                       ; $60b9: $64
    ld e, [hl]                                    ; $60ba: $5e
    rst $20                                       ; $60bb: $e7
    sub [hl]                                      ; $60bc: $96
    jp hl                                         ; $60bd: $e9


    sbc b                                         ; $60be: $98
    ld c, b                                       ; $60bf: $48
    ret nz                                        ; $60c0: $c0

    xor $00                                       ; $60c1: $ee $00
    nop                                           ; $60c3: $00
    nop                                           ; $60c4: $00
    rst $38                                       ; $60c5: $ff
    sbc $df                                       ; $60c6: $de $df
    ldh [$e1], a                                  ; $60c8: $e0 $e1
    and b                                         ; $60ca: $a0
    ld [c], a                                     ; $60cb: $e2
    db $e3                                        ; $60cc: $e3
    db $e4                                        ; $60cd: $e4
    rst $38                                       ; $60ce: $ff
    push hl                                       ; $60cf: $e5
    and $da                                       ; $60d0: $e6 $da
    db $db                                        ; $60d2: $db
    call c, $a0a0                                 ; $60d3: $dc $a0 $a0
    and b                                         ; $60d6: $a0
    sbc a                                         ; $60d7: $9f
    ret nc                                        ; $60d8: $d0

    pop de                                        ; $60d9: $d1
    jp nc, $a0d3                                  ; $60da: $d2 $d3 $a0

    db $fd                                        ; $60dd: $fd
    ldh [$ed], a                                  ; $60de: $e0 $ed
    ld [c], a                                     ; $60e0: $e2
    db $dd                                        ; $60e1: $dd
    ld hl, sp-$1e                                 ; $60e2: $f8 $e2
    ld [c], a                                     ; $60e4: $e2
    rst $20                                       ; $60e5: $e7
    ld [c], a                                     ; $60e6: $e2
    push af                                       ; $60e7: $f5
    db $e3                                        ; $60e8: $e3
    ret nc                                        ; $60e9: $d0

    pop de                                        ; $60ea: $d1
    and b                                         ; $60eb: $a0
    call nc, Call_000_03d5                        ; $60ec: $d4 $d5 $03
    jp nc, $ddd3                                  ; $60ef: $d2 $d3 $dd

    ldh [$dc], a                                  ; $60f2: $e0 $dc
    pop hl                                        ; $60f4: $e1
    jp nc, $c6e1                                  ; $60f5: $d2 $e1 $c6

    pop hl                                        ; $60f8: $e1
    ret                                           ; $60f9: $c9


Jump_05e_60fa:
    ldh [$df], a                                  ; $60fa: $e0 $df
    push hl                                       ; $60fc: $e5
    inc e                                         ; $60fd: $1c
    jp hl                                         ; $60fe: $e9


    db $e3                                        ; $60ff: $e3
    rst $28                                       ; $6100: $ef
    pop hl                                        ; $6101: $e1
    call nc, $a0d5                                ; $6102: $d4 $d5 $a0

Call_05e_6105:
    cp e                                          ; $6105: $bb
    jp hl                                         ; $6106: $e9


    sbc l                                         ; $6107: $9d
    ld [c], a                                     ; $6108: $e2
    and a                                         ; $6109: $a7
    pop hl                                        ; $610a: $e1
    inc de                                        ; $610b: $13
    sub $d7                                       ; $610c: $d6 $d7
    rst $18                                       ; $610e: $df
    db $e4                                        ; $610f: $e4
    sub h                                         ; $6110: $94
    db $e4                                        ; $6111: $e4

Jump_05e_6112:
    and b                                         ; $6112: $a0
    and b                                         ; $6113: $a0
    db $e3                                        ; $6114: $e3
    ld a, h                                       ; $6115: $7c
    db $e3                                        ; $6116: $e3
    and b                                         ; $6117: $a0
    ldh [rNR34], a                                ; $6118: $e0 $1e
    ld a, h                                       ; $611a: $7c
    ldh [$9f], a                                  ; $611b: $e0 $9f
    sbc l                                         ; $611d: $9d
    sbc l                                         ; $611e: $9d
    sbc a                                         ; $611f: $9f
    ret c                                         ; $6120: $d8

    ld [c], a                                     ; $6121: $e2
    ld l, l                                       ; $6122: $6d
    ld [c], a                                     ; $6123: $e2
    add $e3                                       ; $6124: $c6 $e3
    db $fc                                        ; $6126: $fc
    add l                                         ; $6127: $85
    pop hl                                        ; $6128: $e1
    sbc b                                         ; $6129: $98
    ld [c], a                                     ; $612a: $e2
    ret c                                         ; $612b: $d8

    reti                                          ; $612c: $d9


    and b                                         ; $612d: $a0
    sbc a                                         ; $612e: $9f
    and d                                         ; $612f: $a2
    sbc l                                         ; $6130: $9d
    add d                                         ; $6131: $82
    rst $38                                       ; $6132: $ff
    ldh [$9f], a                                  ; $6133: $e0 $9f
    sub h                                         ; $6135: $94
    db $e4                                        ; $6136: $e4
    add a                                         ; $6137: $87
    db $e4                                        ; $6138: $e4
    ld a, e                                       ; $6139: $7b
    ld [c], a                                     ; $613a: $e2
    ld b, h                                       ; $613b: $44
    ldh [$e3], a                                  ; $613c: $e0 $e3
    ldh [$9c], a                                  ; $613e: $e0 $9c
    rrca                                          ; $6140: $0f
    ld b, [hl]                                    ; $6141: $46
    xor [hl]                                      ; $6142: $ae
    sbc h                                         ; $6143: $9c
    sbc a                                         ; $6144: $9f
    ret c                                         ; $6145: $d8

    ldh [$e6], a                                  ; $6146: $e0 $e6
    rst $20                                       ; $6148: $e7
    ld [hl], e                                    ; $6149: $73
    ldh [$e5], a                                  ; $614a: $e0 $e5
    pop hl                                        ; $614c: $e1
    db $fc                                        ; $614d: $fc
    xor b                                         ; $614e: $a8
    pop hl                                        ; $614f: $e1
    and c                                         ; $6150: $a1
    ldh [$9c], a                                  ; $6151: $e0 $9c
    ld b, l                                       ; $6153: $45
    ld [hl], $a6                                  ; $6154: $36 $a6
    ld [hl], $45                                  ; $6156: $36 $45
    pop hl                                        ; $6158: $e1
    sbc h                                         ; $6159: $9c
    db $f4                                        ; $615a: $f4
    ldh [$90], a                                  ; $615b: $e0 $90
    pop hl                                        ; $615d: $e1
    inc bc                                        ; $615e: $03
    rst $20                                       ; $615f: $e7
    add d                                         ; $6160: $82
    pop hl                                        ; $6161: $e1
    sbc a                                         ; $6162: $9f
    sbc h                                         ; $6163: $9c
    ld b, e                                       ; $6164: $43
    rra                                           ; $6165: $1f
    ld b, c                                       ; $6166: $41
    ld b, e                                       ; $6167: $43
    ld b, e                                       ; $6168: $43
    xor a                                         ; $6169: $af
    ld b, e                                       ; $616a: $43
    ld [c], a                                     ; $616b: $e2
    pop hl                                        ; $616c: $e1
    jp hl                                         ; $616d: $e9


    rst $00                                       ; $616e: $c7
    ld c, e                                       ; $616f: $4b
    ld [c], a                                     ; $6170: $e2
    sbc a                                         ; $6171: $9f
    sbc a                                         ; $6172: $9f
    sbc h                                         ; $6173: $9c
    ld b, [hl]                                    ; $6174: $46
    ld b, [hl]                                    ; $6175: $46
    sbc h                                         ; $6176: $9c
    add [hl]                                      ; $6177: $86
    ldh [$c1], a                                  ; $6178: $e0 $c1
    ldh [$62], a                                  ; $617a: $e0 $62
    jp Jump_05e_66a7                              ; $617c: $c3 $a7 $66


    cp a                                          ; $617f: $bf
    ld [c], a                                     ; $6180: $e2
    call nc, $e2c0                                ; $6181: $d4 $c0 $e2
    ret z                                         ; $6184: $c8

    add d                                         ; $6185: $82
    pop hl                                        ; $6186: $e1
    sbc h                                         ; $6187: $9c
    ld [hl], $17                                  ; $6188: $36 $17
    dec sp                                        ; $618a: $3b
    dec [hl]                                      ; $618b: $35
    dec sp                                        ; $618c: $3b
    db $fd                                        ; $618d: $fd
    ldh [$36], a                                  ; $618e: $e0 $36
    and c                                         ; $6190: $a1
    pop hl                                        ; $6191: $e1
    jp hl                                         ; $6192: $e9


    add $4b                                       ; $6193: $c6 $4b
    ld [c], a                                     ; $6195: $e2
    rst $38                                       ; $6196: $ff
    sbc h                                         ; $6197: $9c
    ld b, [hl]                                    ; $6198: $46
    ld [bc], a                                    ; $6199: $02
    inc b                                         ; $619a: $04
    inc bc                                        ; $619b: $03
    ld b, [hl]                                    ; $619c: $46
    ld b, [hl]                                    ; $619d: $46
    ld b, [hl]                                    ; $619e: $46
    cp a                                          ; $619f: $bf
    xor [hl]                                      ; $61a0: $ae
    ld [hl], $62                                  ; $61a1: $36 $62
    ld h, a                                       ; $61a3: $67
    dec [hl]                                      ; $61a4: $35
    ld l, b                                       ; $61a5: $68
    cp a                                          ; $61a6: $bf
    db $e3                                        ; $61a7: $e3
    ret nc                                        ; $61a8: $d0

    ld a, h                                       ; $61a9: $7c
    ld [c], a                                     ; $61aa: $e2
    ret                                           ; $61ab: $c9


    add c                                         ; $61ac: $81
    ret nz                                        ; $61ad: $c0

    sbc [hl]                                      ; $61ae: $9e
    ld b, h                                       ; $61af: $44
    inc a                                         ; $61b0: $3c
    and h                                         ; $61b1: $a4
    ld h, h                                       ; $61b2: $64
    rst $38                                       ; $61b3: $ff
    ldh [$8f], a                                  ; $61b4: $e0 $8f
    and l                                         ; $61b6: $a5
    inc a                                         ; $61b7: $3c
    ld b, h                                       ; $61b8: $44
    sbc [hl]                                      ; $61b9: $9e
    inc c                                         ; $61ba: $0c
    ld [c], a                                     ; $61bb: $e2
    jp hl                                         ; $61bc: $e9


    push bc                                       ; $61bd: $c5
    add e                                         ; $61be: $83
    pop hl                                        ; $61bf: $e1
    ld [bc], a                                    ; $61c0: $02
    rst $38                                       ; $61c1: $ff
    rrca                                          ; $61c2: $0f
    sbc b                                         ; $61c3: $98
    dec c                                         ; $61c4: $0d
    inc b                                         ; $61c5: $04
    inc b                                         ; $61c6: $04
    ld [bc], a                                    ; $61c7: $02
    xor a                                         ; $61c8: $af
    xor b                                         ; $61c9: $a8
    ld [hl], a                                    ; $61ca: $77
    xor c                                         ; $61cb: $a9
    ret z                                         ; $61cc: $c8

    dec [hl]                                      ; $61cd: $35
    cp a                                          ; $61ce: $bf
    ld [c], a                                     ; $61cf: $e2
    sbc [hl]                                      ; $61d0: $9e
    and b                                         ; $61d1: $a0
    jp nc, $c845                                  ; $61d2: $d2 $45 $c8

    cp [hl]                                       ; $61d5: $be
    adc l                                         ; $61d6: $8d
    pop bc                                        ; $61d7: $c1
    sbc [hl]                                      ; $61d8: $9e
    ld b, d                                       ; $61d9: $42
    dec [hl]                                      ; $61da: $35
    ld l, c                                       ; $61db: $69
    dec [hl]                                      ; $61dc: $35
    rst $38                                       ; $61dd: $ff
    ldh [rOCPS], a                                ; $61de: $e0 $6a
    di                                            ; $61e0: $f3
    dec [hl]                                      ; $61e1: $35
    ld b, d                                       ; $61e2: $42
    ld h, c                                       ; $61e3: $61
    ld [c], a                                     ; $61e4: $e2
    dec hl                                        ; $61e5: $2b
    jp $d3d2                                      ; $61e6: $c3 $d2 $d3


    sbc a                                         ; $61e9: $9f
    sbc h                                         ; $61ea: $9c
    rst $18                                       ; $61eb: $df
    xor [hl]                                      ; $61ec: $ae
    dec b                                         ; $61ed: $05
    rlca                                          ; $61ee: $07
    rrca                                          ; $61ef: $0f
    sbc b                                         ; $61f0: $98
    rst $38                                       ; $61f1: $ff
    pop hl                                        ; $61f2: $e1
    rrca                                          ; $61f3: $0f
    ld [bc], a                                    ; $61f4: $02
    rst $38                                       ; $61f5: $ff
    ld [hl], $6e                                  ; $61f6: $36 $6e
    ld l, a                                       ; $61f8: $6f
    ld l, h                                       ; $61f9: $6c
    dec [hl]                                      ; $61fa: $35
    dec [hl]                                      ; $61fb: $35
    xor d                                         ; $61fc: $aa
    xor e                                         ; $61fd: $ab
    pop hl                                        ; $61fe: $e1
    ld [hl], $9d                                  ; $61ff: $36 $9d
    ldh [$be], a                                  ; $6201: $e0 $be
    ret                                           ; $6203: $c9


    ld h, l                                       ; $6204: $65
    ret nz                                        ; $6205: $c0

    ret nz                                        ; $6206: $c0

    pop hl                                        ; $6207: $e1
    and e                                         ; $6208: $a3
    dec [hl]                                      ; $6209: $35
    dec [hl]                                      ; $620a: $35
    push bc                                       ; $620b: $c5
    and e                                         ; $620c: $a3
    ret nz                                        ; $620d: $c0

    ldh [$ae], a                                  ; $620e: $e0 $ae
    ld a, a                                       ; $6210: $7f
    ldh [rIE], a                                  ; $6211: $e0 $ff
    and d                                         ; $6213: $a2
    ld l, e                                       ; $6214: $6b
    pop bc                                        ; $6215: $c1
    sbc [hl]                                      ; $6216: $9e
    ld b, [hl]                                    ; $6217: $46
    rst $38                                       ; $6218: $ff
    xor a                                         ; $6219: $af
    ld b, $01                                     ; $621a: $06 $01
    nop                                           ; $621c: $00
    sbc c                                         ; $621d: $99
    sbc b                                         ; $621e: $98
    sub a                                         ; $621f: $97
    sbc b                                         ; $6220: $98
    rst $28                                       ; $6221: $ef
    sbc c                                         ; $6222: $99
    sbc e                                         ; $6223: $9b
    ld [$bf45], sp                                ; $6224: $08 $45 $bf
    ldh [$c8], a                                  ; $6227: $e0 $c8
    ld l, h                                       ; $6229: $6c
    ld l, a                                       ; $622a: $6f
    add l                                         ; $622b: $85
    ld l, [hl]                                    ; $622c: $6e
    ret nz                                        ; $622d: $c0

    ldh [$d0], a                                  ; $622e: $e0 $d0
    ld [c], a                                     ; $6230: $e2
    and c                                         ; $6231: $a1
    ld b, d                                       ; $6232: $42
    push hl                                       ; $6233: $e5
    ld h, l                                       ; $6234: $65
    ret nz                                        ; $6235: $c0

    ld b, b                                       ; $6236: $40
    ldh [rOCPD], a                                ; $6237: $e0 $6b
    ld a, l                                       ; $6239: $7d
    ld [hl], c                                    ; $623a: $71
    rst $38                                       ; $623b: $ff
    ldh [$6d], a                                  ; $623c: $e0 $6d
    inc a                                         ; $623e: $3c
    ld b, h                                       ; $623f: $44
    xor a                                         ; $6240: $af
    and c                                         ; $6241: $a1
    rst $38                                       ; $6242: $ff
    and h                                         ; $6243: $a4
    sbc $e9                                       ; $6244: $de $e9
    jp nz, Jump_05e_4646                          ; $6246: $c2 $46 $46

    ld [$c199], sp                                ; $6249: $08 $99 $c1
    ld [c], a                                     ; $624c: $e2
    ld bc, $f300                                  ; $624d: $01 $00 $f3
    ld b, $46                                     ; $6250: $06 $46
    cp a                                          ; $6252: $bf
    pop hl                                        ; $6253: $e1
    pop bc                                        ; $6254: $c1
    ldh [rLYC], a                                 ; $6255: $e0 $45
    and c                                         ; $6257: $a1
    and b                                         ; $6258: $a0
    jp nc, Jump_05e_4284                          ; $6259: $d2 $84 $42

    rst $00                                       ; $625c: $c7
    add d                                         ; $625d: $82
    jp $c045                                      ; $625e: $c3 $45 $c0


jr_05e_6261:
    push bc                                       ; $6261: $c5
    ld h, b                                       ; $6262: $60
    jp nz, $e427                                  ; $6263: $c2 $27 $e4

    add [hl]                                      ; $6266: $86
    ret nz                                        ; $6267: $c0

    inc bc                                        ; $6268: $03
    db $fd                                        ; $6269: $fd
    inc b                                         ; $626a: $04
    ld b, d                                       ; $626b: $42
    ldh [$97], a                                  ; $626c: $e0 $97
    sub [hl]                                      ; $626e: $96
    sub a                                         ; $626f: $97
    sbc b                                         ; $6270: $98
    rrca                                          ; $6271: $0f
    rlca                                          ; $6272: $07
    rlca                                          ; $6273: $07
    dec b                                         ; $6274: $05
    ld b, [hl]                                    ; $6275: $46
    ld b, l                                       ; $6276: $45
    ld a, [hl]                                    ; $6277: $7e
    ldh [$c1], a                                  ; $6278: $e0 $c1
    ldh [$5c], a                                  ; $627a: $e0 $5c
    add $e3                                       ; $627c: $c6 $e3
    and d                                         ; $627e: $a2
    sbc c                                         ; $627f: $99
    db $e4                                        ; $6280: $e4
    adc l                                         ; $6281: $8d
    ld b, l                                       ; $6282: $45
    ld b, b                                       ; $6283: $40
    pop bc                                        ; $6284: $c1
    ld b, c                                       ; $6285: $41
    ld b, e                                       ; $6286: $43
    ld hl, $6cc2                                  ; $6287: $21 $c2 $6c
    and h                                         ; $628a: $a4
    ld b, a                                       ; $628b: $47
    ret nz                                        ; $628c: $c0

    ld [bc], a                                    ; $628d: $02
    ld sp, hl                                     ; $628e: $f9
    dec c                                         ; $628f: $0d
    jp nz, $c1e0                                  ; $6290: $c2 $e0 $c1

    ld [c], a                                     ; $6293: $e2
    ld [bc], a                                    ; $6294: $02
    xor [hl]                                      ; $6295: $ae
    ld b, l                                       ; $6296: $45
    scf                                           ; $6297: $37
    jr c, jr_05e_6261                             ; $6298: $38 $c7

    add hl, sp                                    ; $629a: $39
    ld b, l                                       ; $629b: $45
    ld [hl], $81                                  ; $629c: $36 $81
    jp $a090                                      ; $629e: $c3 $90 $a0


    ld [$d2a1], sp                                ; $62a1: $08 $a1 $d2
    db $d3                                        ; $62a4: $d3
    ld e, $04                                     ; $62a5: $1e $04
    jp Jump_05e_4546                              ; $62a7: $c3 $46 $45


    ld d, b                                       ; $62aa: $50
    ld b, l                                       ; $62ab: $45
    ld e, [hl]                                    ; $62ac: $5e
    pop bc                                        ; $62ad: $c1
    rla                                           ; $62ae: $17
    ret nz                                        ; $62af: $c0

    sub $a1                                       ; $62b0: $d6 $a1
    ld e, [hl]                                    ; $62b2: $5e
    add l                                         ; $62b3: $85
    and h                                         ; $62b4: $a4
    and c                                         ; $62b5: $a1
    ld b, [hl]                                    ; $62b6: $46
    dec b                                         ; $62b7: $05
    ld c, $c2                                     ; $62b8: $0e $c2

Jump_05e_62ba:
    pop hl                                        ; $62ba: $e1
    sub [hl]                                      ; $62bb: $96
    add c                                         ; $62bc: $81
    ldh [rIE], a                                  ; $62bd: $e0 $ff
    ld b, $46                                     ; $62bf: $06 $46
    xor a                                         ; $62c1: $af
    ld [hl], $35                                  ; $62c2: $36 $35
    dec [hl]                                      ; $62c4: $35
    ld a, [hl-]                                   ; $62c5: $3a
    ld b, l                                       ; $62c6: $45
    pop hl                                        ; $62c7: $e1
    ld b, l                                       ; $62c8: $45
    sbc l                                         ; $62c9: $9d
    and b                                         ; $62ca: $a0
    push af                                       ; $62cb: $f5
    add c                                         ; $62cc: $81
    ld [$e0a8], sp                                ; $62cd: $08 $a8 $e0
    and b                                         ; $62d0: $a0
    ld b, h                                       ; $62d1: $44
    ld c, c                                       ; $62d2: $49
    ld e, l                                       ; $62d3: $5d
    ccf                                           ; $62d4: $3f
    ld d, l                                       ; $62d5: $55
    ld b, l                                       ; $62d6: $45
    ld b, [hl]                                    ; $62d7: $46
    xor [hl]                                      ; $62d8: $ae
    xor a                                         ; $62d9: $af
    sbc h                                         ; $62da: $9c
    sub a                                         ; $62db: $97
    and c                                         ; $62dc: $a1
    xor a                                         ; $62dd: $af
    add e                                         ; $62de: $83
    xor [hl]                                      ; $62df: $ae
    ld l, e                                       ; $62e0: $6b
    pop bc                                        ; $62e1: $c1
    ld b, [hl]                                    ; $62e2: $46
    ld b, $9a                                     ; $62e3: $06 $9a
    ld b, h                                       ; $62e5: $44
    ldh [$95], a                                  ; $62e6: $e0 $95
    ld b, d                                       ; $62e8: $42
    ldh [$0e], a                                  ; $62e9: $e0 $0e
    rst $30                                       ; $62eb: $f7
    dec b                                         ; $62ec: $05
    ld b, [hl]                                    ; $62ed: $46
    add hl, sp                                    ; $62ee: $39
    ld h, b                                       ; $62ef: $60
    ret nz                                        ; $62f0: $c0

    ld a, [hl-]                                   ; $62f1: $3a
    ld b, l                                       ; $62f2: $45
    xor [hl]                                      ; $62f3: $ae
    xor a                                         ; $62f4: $af
    pop af                                        ; $62f5: $f1
    sbc [hl]                                      ; $62f6: $9e
    push af                                       ; $62f7: $f5
    add e                                         ; $62f8: $83
    dec b                                         ; $62f9: $05
    add $a1                                       ; $62fa: $c6 $a1
    and b                                         ; $62fc: $a0
    ld b, e                                       ; $62fd: $43
    ld a, [hl+]                                   ; $62fe: $2a
    ld a, [hl+]                                   ; $62ff: $2a
    ld d, d                                       ; $6300: $52
    adc a                                         ; $6301: $8f
    ld h, b                                       ; $6302: $60
    ld d, l                                       ; $6303: $55
    ld b, [hl]                                    ; $6304: $46
    xor a                                         ; $6305: $af
    call nz, $afa2                                ; $6306: $c4 $a2 $af
    add h                                         ; $6309: $84
    ld l, e                                       ; $630a: $6b
    pop bc                                        ; $630b: $c1
    ld b, [hl]                                    ; $630c: $46
    ld sp, hl                                     ; $630d: $f9
    ld b, $86                                     ; $630e: $06 $86
    ret nz                                        ; $6310: $c0

    add d                                         ; $6311: $82
    pop hl                                        ; $6312: $e1
    sbc c                                         ; $6313: $99
    rrca                                          ; $6314: $0f
    dec b                                         ; $6315: $05
    xor [hl]                                      ; $6316: $ae
    ld a, [hl-]                                   ; $6317: $3a
    ccf                                           ; $6318: $3f
    dec [hl]                                      ; $6319: $35
    dec [hl]                                      ; $631a: $35
    dec sp                                        ; $631b: $3b
    add hl, sp                                    ; $631c: $39
    ld b, [hl]                                    ; $631d: $46
    xor a                                         ; $631e: $af
    ld h, c                                       ; $631f: $61
    ret nz                                        ; $6320: $c0

    push af                                       ; $6321: $f5
    add b                                         ; $6322: $80
    db $fc                                        ; $6323: $fc
    or [hl]                                       ; $6324: $b6
    add [hl]                                      ; $6325: $86
    ld a, [hl+]                                   ; $6326: $2a
    and b                                         ; $6327: $a0
    xor [hl]                                      ; $6328: $ae
    ld b, l                                       ; $6329: $45
    ld c, e                                       ; $632a: $4b
    ld a, [hl+]                                   ; $632b: $2a
    jr nz, @+$2f                                  ; $632c: $20 $2d

    rra                                           ; $632e: $1f
    ld d, [hl]                                    ; $632f: $56
    ld d, l                                       ; $6330: $55
    ld b, [hl]                                    ; $6331: $46
    ld b, [hl]                                    ; $6332: $46
    sbc [hl]                                      ; $6333: $9e
    add d                                         ; $6334: $82
    add c                                         ; $6335: $81
    ret z                                         ; $6336: $c8

    add h                                         ; $6337: $84
    ld l, e                                       ; $6338: $6b
    pop bc                                        ; $6339: $c1
    ld hl, sp+$40                                 ; $633a: $f8 $40
    ld [c], a                                     ; $633c: $e2
    pop bc                                        ; $633d: $c1
    pop hl                                        ; $633e: $e1
    add e                                         ; $633f: $83
    ret nz                                        ; $6340: $c0

    xor a                                         ; $6341: $af

Jump_05e_6342:
    inc a                                         ; $6342: $3c
    jr c, jr_05e_637c                             ; $6343: $38 $37

    ld b, e                                       ; $6345: $43
    call z, $e01b                                 ; $6346: $cc $1b $e0
    sbc e                                         ; $6349: $9b
    ld [c], a                                     ; $634a: $e2
    ret nc                                        ; $634b: $d0

    pop de                                        ; $634c: $d1
    ld a, [bc]                                    ; $634d: $0a
    add c                                         ; $634e: $81
    inc c                                         ; $634f: $0c
    add d                                         ; $6350: $82
    and c                                         ; $6351: $a1
    ld b, [hl]                                    ; $6352: $46
    ld a, a                                       ; $6353: $7f
    xor a                                         ; $6354: $af
    ld b, l                                       ; $6355: $45
    ld d, [hl]                                    ; $6356: $56
    ld c, c                                       ; $6357: $49
    ld a, [hl+]                                   ; $6358: $2a
    inc h                                         ; $6359: $24
    ld [hl], $ff                                  ; $635a: $36 $ff
    ret nz                                        ; $635c: $c0

    ret                                           ; $635d: $c9


    and c                                         ; $635e: $a1
    ld e, d                                       ; $635f: $5a
    adc c                                         ; $6360: $89
    pop bc                                        ; $6361: $c1
    jp nz, Jump_05e_7f0f                          ; $6362: $c2 $0f $7f

    pop hl                                        ; $6365: $e1
    add b                                         ; $6366: $80
    pop hl                                        ; $6367: $e1
    ld [bc], a                                    ; $6368: $02
    ld [hl], $bd                                  ; $6369: $36 $bd
    inc a                                         ; $636b: $3c
    ld [c], a                                     ; $636c: $e2
    ret nz                                        ; $636d: $c0

    dec b                                         ; $636e: $05
    rlca                                          ; $636f: $07
    rlca                                          ; $6370: $07
    ld [bc], a                                    ; $6371: $02
    db $dd                                        ; $6372: $dd
    pop bc                                        ; $6373: $c1
    jp nc, $d3e9                                  ; $6374: $d2 $e9 $d3

    ret nz                                        ; $6377: $c0

    ld h, c                                       ; $6378: $61
    push af                                       ; $6379: $f5
    ld h, d                                       ; $637a: $62
    sbc [hl]                                      ; $637b: $9e

jr_05e_637c:
    ld h, $a0                                     ; $637c: $26 $a0
    ld b, e                                       ; $637e: $43
    ld d, [hl]                                    ; $637f: $56
    ld d, l                                       ; $6380: $55
    ld bc, $e43c                                  ; $6381: $01 $3c $e4
    ret nz                                        ; $6384: $c0

    jp Jump_05e_65c0                              ; $6385: $c3 $c0 $65


    db $e4                                        ; $6388: $e4
    ld d, [hl]                                    ; $6389: $56
    add d                                         ; $638a: $82
    ret                                           ; $638b: $c9


    add b                                         ; $638c: $80
    call nz, $c1a3                                ; $638d: $c4 $a3 $c1
    pop bc                                        ; $6390: $c1
    ld l, a                                       ; $6391: $6f
    ld a, [hl+]                                   ; $6392: $2a
    ld hl, $af36                                  ; $6393: $21 $36 $af
    ldh a, [$e0]                                  ; $6396: $f0 $e0
    sbc c                                         ; $6398: $99
    sbc d                                         ; $6399: $9a
    or $c0                                        ; $639a: $f6 $c0
    ld [hl], b                                    ; $639c: $70
    pop bc                                        ; $639d: $c1
    and b                                         ; $639e: $a0
    ret nz                                        ; $639f: $c0

    ld h, h                                       ; $63a0: $64
    xor b                                         ; $63a1: $a8
    ld h, b                                       ; $63a2: $60
    ret nz                                        ; $63a3: $c0

    pop hl                                        ; $63a4: $e1
    ld b, l                                       ; $63a5: $45
    ld c, e                                       ; $63a6: $4b
    ld d, [hl]                                    ; $63a7: $56
    ld [hl+], a                                   ; $63a8: $22
    ldh [$33], a                                  ; $63a9: $e0 $33
    ld b, b                                       ; $63ab: $40
    xor [hl]                                      ; $63ac: $ae
    add d                                         ; $63ad: $82
    jp nz, Jump_05e_60fa                          ; $63ae: $c2 $fa $60

    sbc l                                         ; $63b1: $9d
    sbc h                                         ; $63b2: $9c
    halt                                          ; $63b3: $76
    ret nz                                        ; $63b4: $c0

    cp $e1                                        ; $63b5: $fe $e1
    ei                                            ; $63b7: $fb
    dec b                                         ; $63b8: $05
    ld c, $ff                                     ; $63b9: $0e $ff
    call nz, Call_000_2a06                        ; $63bb: $c4 $06 $2a
    ld a, [hl+]                                   ; $63be: $2a
    ld [bc], a                                    ; $63bf: $02
    ld [bc], a                                    ; $63c0: $02
    ld c, $f4                                     ; $63c1: $0e $f4
    and c                                         ; $63c3: $a1
    sbc c                                         ; $63c4: $99
    sbc e                                         ; $63c5: $9b
    ld b, $19                                     ; $63c6: $06 $19
    ldh [$80], a                                  ; $63c8: $e0 $80
    add l                                         ; $63ca: $85
    ld c, h                                       ; $63cb: $4c
    ld h, b                                       ; $63cc: $60
    ret nz                                        ; $63cd: $c0

    ld [c], a                                     ; $63ce: $e2
    dec bc                                        ; $63cf: $0b
    ld d, e                                       ; $63d0: $53
    ld d, e                                       ; $63d1: $53
    ld [c], a                                     ; $63d2: $e2
    ret nz                                        ; $63d3: $c0

    add hl, sp                                    ; $63d4: $39
    sbc a                                         ; $63d5: $9f
    ldh [$58], a                                  ; $63d6: $e0 $58
    add b                                         ; $63d8: $80
    ld d, d                                       ; $63d9: $52
    add b                                         ; $63da: $80
    halt                                          ; $63db: $76
    ret nz                                        ; $63dc: $c0

    ld a, [c]                                     ; $63dd: $f2
    ret nz                                        ; $63de: $c0

    ld [c], a                                     ; $63df: $e2
    xor [hl]                                      ; $63e0: $ae
    push bc                                       ; $63e1: $c5
    add c                                         ; $63e2: $81
    cp a                                          ; $63e3: $bf
    jp nz, Jump_000_040f                          ; $63e4: $c2 $0f $04

    inc b                                         ; $63e7: $04
    rrca                                          ; $63e8: $0f
    dec bc                                        ; $63e9: $0b
    rrca                                          ; $63ea: $0f
    dec c                                         ; $63eb: $0d
    ld [hl], $a1                                  ; $63ec: $36 $a1
    sbc c                                         ; $63ee: $99
    ret nz                                        ; $63ef: $c0

    pop hl                                        ; $63f0: $e1
    add b                                         ; $63f1: $80
    add l                                         ; $63f2: $85
    ld [hl+], a                                   ; $63f3: $22
    add h                                         ; $63f4: $84
    jp nz, $f0a0                                  ; $63f5: $c2 $a0 $f0

    inc hl                                        ; $63f8: $23
    jp nz, $a3fd                                  ; $63f9: $c2 $fd $a3

    ld d, l                                       ; $63fc: $55
    add b                                         ; $63fd: $80
    pop bc                                        ; $63fe: $c1
    db $e4                                        ; $63ff: $e4
    xor a                                         ; $6400: $af
    xor [hl]                                      ; $6401: $ae
    ld b, [hl]                                    ; $6402: $46
    ld [$7f00], sp                                ; $6403: $08 $00 $7f
    jp $e3ff                                      ; $6406: $c3 $ff $e3


    ld [hl], $a0                                  ; $6409: $36 $a0
    ld [hl], $c1                                  ; $640b: $36 $c1
    rra                                           ; $640d: $1f
    and b                                         ; $640e: $a0
    add b                                         ; $640f: $80
    add e                                         ; $6410: $83
    ld a, a                                       ; $6411: $7f
    call nz, $e295                                ; $6412: $c4 $95 $e2
    cp a                                          ; $6415: $bf
    inc a                                         ; $6416: $3c
    dec [hl]                                      ; $6417: $35
    dec [hl]                                      ; $6418: $35
    ld [hl], $45                                  ; $6419: $36 $45
    xor [hl]                                      ; $641b: $ae
    add $e0                                       ; $641c: $c6 $e0
    ld [de], a                                    ; $641e: $12
    ld [hl], l                                    ; $641f: $75
    inc de                                        ; $6420: $13
    rst $38                                       ; $6421: $ff
    pop hl                                        ; $6422: $e1
    ld [de], a                                    ; $6423: $12
    cp d                                          ; $6424: $ba
    ld [c], a                                     ; $6425: $e2
    xor a                                         ; $6426: $af
    ld b, [hl]                                    ; $6427: $46
    ld b, $42                                     ; $6428: $06 $42
    and c                                         ; $642a: $a1
    inc hl                                        ; $642b: $23
    sub [hl]                                      ; $642c: $96
    sub a                                         ; $642d: $97
    ret nz                                        ; $642e: $c0

    add b                                         ; $642f: $80
    call nz, $bee0                                ; $6430: $c4 $e0 $be
    pop hl                                        ; $6433: $e1
    ld [$c159], sp                                ; $6434: $08 $59 $c1
    add $42                                       ; $6437: $c6 $42
    ret z                                         ; $6439: $c8

    ld a, a                                       ; $643a: $7f
    and e                                         ; $643b: $a3

Call_05e_643c:
    sbc h                                         ; $643c: $9c
    add c                                         ; $643d: $81
    adc b                                         ; $643e: $88
    and b                                         ; $643f: $a0
    xor a                                         ; $6440: $af
    ld hl, $3ec0                                  ; $6441: $21 $c0 $3e
    ld [c], a                                     ; $6444: $e2
    ld [de], a                                    ; $6445: $12
    ld [de], a                                    ; $6446: $12
    ccf                                           ; $6447: $3f
    ld a, c                                       ; $6448: $79
    ld a, d                                       ; $6449: $7a
    ld a, e                                       ; $644a: $7b
    ld a, h                                       ; $644b: $7c
    ld a, l                                       ; $644c: $7d
    ld [de], a                                    ; $644d: $12
    cp a                                          ; $644e: $bf
    pop hl                                        ; $644f: $e1
    bit 4, b                                      ; $6450: $cb $60
    add c                                         ; $6452: $81
    ld b, $c2                                     ; $6453: $06 $c2
    add c                                         ; $6455: $81
    pop bc                                        ; $6456: $c1
    pop hl                                        ; $6457: $e1
    ld a, d                                       ; $6458: $7a
    add c                                         ; $6459: $81
    cp d                                          ; $645a: $ba
    add c                                         ; $645b: $81
    ret nz                                        ; $645c: $c0

    call nz, $4866                                ; $645d: $c4 $66 $48
    sbc a                                         ; $6460: $9f
    jp hl                                         ; $6461: $e9


    sbc h                                         ; $6462: $9c
    ld [de], a                                    ; $6463: $12
    pop hl                                        ; $6464: $e1
    and c                                         ; $6465: $a1
    and e                                         ; $6466: $a3
    ld [de], a                                    ; $6467: $12
    add a                                         ; $6468: $87
    ldh [$80], a                                  ; $6469: $e0 $80
    dec l                                         ; $646b: $2d
    cpl                                           ; $646c: $2f
    rla                                           ; $646d: $17
    ld a, [hl+]                                   ; $646e: $2a
    ld a, a                                       ; $646f: $7f
    ld a, l                                       ; $6470: $7d
    ld a, c                                       ; $6471: $79
    db $e3                                        ; $6472: $e3
    inc de                                        ; $6473: $13
    ret z                                         ; $6474: $c8

    db $e3                                        ; $6475: $e3
    jp nz, $ff80                                  ; $6476: $c2 $80 $ff

    pop hl                                        ; $6479: $e1
    add [hl]                                      ; $647a: $86
    ei                                            ; $647b: $fb
    ret nz                                        ; $647c: $c0

    sbc c                                         ; $647d: $99
    db $10                                        ; $647e: $10
    add b                                         ; $647f: $80
    pop bc                                        ; $6480: $c1
    scf                                           ; $6481: $37
    ld b, c                                       ; $6482: $41
    ld h, [hl]                                    ; $6483: $66
    ld b, [hl]                                    ; $6484: $46
    db $fd                                        ; $6485: $fd
    jp $eeae                                      ; $6486: $c3 $ae $ee


    pop bc                                        ; $6489: $c1
    ld h, b                                       ; $648a: $60
    ld [hl], $45                                  ; $648b: $36 $45
    ld de, $6058                                  ; $648d: $11 $58 $60
    add d                                         ; $6490: $82
    add e                                         ; $6491: $83
    ld a, [hl+]                                   ; $6492: $2a
    rst $30                                       ; $6493: $f7
    jr nc, jr_05e_64da                            ; $6494: $30 $44

    add c                                         ; $6496: $81
    ld a, a                                       ; $6497: $7f
    jp nz, Jump_05e_4145                          ; $6498: $c2 $45 $41

    inc bc                                        ; $649b: $03
    inc b                                         ; $649c: $04
    rlca                                          ; $649d: $07
    rlca                                          ; $649e: $07
    rrca                                          ; $649f: $0f
    sbc c                                         ; $64a0: $99
    ld bc, $6bc0                                  ; $64a1: $01 $c0 $6b
    ldh [rOCPS], a                                ; $64a4: $e0 $6a
    ldh [$36], a                                  ; $64a6: $e0 $36
    ld h, d                                       ; $64a8: $62
    ret nz                                        ; $64a9: $c0

    add h                                         ; $64aa: $84
    ld hl, sp+$3d                                 ; $64ab: $f8 $3d
    push hl                                       ; $64ad: $e5
    and $20                                       ; $64ae: $e6 $20
    sbc $41                                       ; $64b0: $de $41
    xor a                                         ; $64b2: $af
    inc a                                         ; $64b3: $3c
    dec [hl]                                      ; $64b4: $35
    inc a                                         ; $64b5: $3c
    ld b, h                                       ; $64b6: $44
    rst $38                                       ; $64b7: $ff
    ld b, [hl]                                    ; $64b8: $46
    ld de, $46ae                                  ; $64b9: $11 $ae $46
    xor [hl]                                      ; $64bc: $ae
    add l                                         ; $64bd: $85
    add [hl]                                      ; $64be: $86
    add e                                         ; $64bf: $83
    rst $00                                       ; $64c0: $c7
    dec hl                                        ; $64c1: $2b
    add e                                         ; $64c2: $83
    add h                                         ; $64c3: $84
    xor d                                         ; $64c4: $aa
    jp Jump_05e_4090                              ; $64c5: $c3 $90 $40


    ei                                            ; $64c8: $fb
    and c                                         ; $64c9: $a1
    ld b, $79                                     ; $64ca: $06 $79
    rlca                                          ; $64cc: $07
    ld a, [hl]                                    ; $64cd: $7e
    ld a, [hl+]                                   ; $64ce: $2a
    cpl                                           ; $64cf: $2f
    ld l, d                                       ; $64d0: $6a
    pop hl                                        ; $64d1: $e1
    ld sp, hl                                     ; $64d2: $f9
    ld b, b                                       ; $64d3: $40
    ret nz                                        ; $64d4: $c0

    add h                                         ; $64d5: $84
    adc c                                         ; $64d6: $89
    ld hl, $2398                                  ; $64d7: $21 $98 $23

jr_05e_64da:
    cp h                                          ; $64da: $bc
    ld d, $a2                                     ; $64db: $16 $a2
    ld a, [hl]                                    ; $64dd: $7e
    jp nz, $ae39                                  ; $64de: $c2 $39 $ae

    ld de, $8baf                                  ; $64e1: $11 $af $8b
    ret nz                                        ; $64e4: $c0

    add l                                         ; $64e5: $85
    rst $08                                       ; $64e6: $cf
    add a                                         ; $64e7: $87
    adc b                                         ; $64e8: $88
    add a                                         ; $64e9: $87
    add l                                         ; $64ea: $85
    ld [hl], h                                    ; $64eb: $74
    add b                                         ; $64ec: $80
    sub b                                         ; $64ed: $90
    ld b, h                                       ; $64ee: $44
    dec b                                         ; $64ef: $05

jr_05e_64f0:
    ld c, $03                                     ; $64f0: $0e $03
    ld c, $05                                     ; $64f2: $0e $05
    ld l, h                                       ; $64f4: $6c
    ldh [$c0], a                                  ; $64f5: $e0 $c0
    ldh [$aa], a                                  ; $64f7: $e0 $aa
    ldh [$9e], a                                  ; $64f9: $e0 $9e
    add c                                         ; $64fb: $81
    or l                                          ; $64fc: $b5
    ld hl, $225d                                  ; $64fd: $21 $5d $22
    ld h, h                                       ; $6500: $64
    and e                                         ; $6501: $a3
    inc hl                                        ; $6502: $23
    and $20                                       ; $6503: $e6 $20
    and c                                         ; $6505: $a1
    cp e                                          ; $6506: $bb
    and c                                         ; $6507: $a1
    ld hl, $af80                                  ; $6508: $21 $80 $af
    ld de, $c04c                                  ; $650b: $11 $4c $c0
    ret c                                         ; $650e: $d8

    ld c, d                                       ; $650f: $4a
    ret nz                                        ; $6510: $c0

    dec a                                         ; $6511: $3d
    jp nz, Jump_05e_4051                          ; $6512: $c2 $51 $40

    ld h, a                                       ; $6515: $67
    and e                                         ; $6516: $a3
    sub b                                         ; $6517: $90
    ld b, c                                       ; $6518: $41
    ld [bc], a                                    ; $6519: $02
    ld [bc], a                                    ; $651a: $02
    sbc c                                         ; $651b: $99
    ld b, [hl]                                    ; $651c: $46
    xor l                                         ; $651d: $ad
    ldh [rIE], a                                  ; $651e: $e0 $ff
    ldh [$87], a                                  ; $6520: $e0 $87
    add l                                         ; $6522: $85
    ld h, d                                       ; $6523: $62
    ld b, d                                       ; $6524: $42

jr_05e_6525:
    or l                                          ; $6525: $b5
    jr nz, @-$2e                                  ; $6526: $20 $d0

    ld a, b                                       ; $6528: $78
    ret nz                                        ; $6529: $c0

    ld h, [hl]                                    ; $652a: $66
    rst $38                                       ; $652b: $ff
    ld h, h                                       ; $652c: $64
    inc b                                         ; $652d: $04
    add c                                         ; $652e: $81
    ld b, l                                       ; $652f: $45
    ld b, l                                       ; $6530: $45
    ld [de], a                                    ; $6531: $12
    ld [de], a                                    ; $6532: $12
    add b                                         ; $6533: $80
    pop hl                                        ; $6534: $e1
    inc e                                         ; $6535: $1c
    add hl, sp                                    ; $6536: $39
    add b                                         ; $6537: $80
    ld de, $4241                                  ; $6538: $11 $41 $42
    xor b                                         ; $653b: $a8
    xor c                                         ; $653c: $a9
    pop de                                        ; $653d: $d1
    ld b, b                                       ; $653e: $40
    ld c, a                                       ; $653f: $4f
    ld b, c                                       ; $6540: $41
    rst $20                                       ; $6541: $e7
    ld h, b                                       ; $6542: $60
    ld [$a064], sp                                ; $6543: $08 $64 $a0
    add e                                         ; $6546: $83
    inc hl                                        ; $6547: $23
    ld l, a                                       ; $6548: $6f
    inc hl                                        ; $6549: $23
    jp nc, $c641                                  ; $654a: $d2 $41 $c6

    sbc h                                         ; $654d: $9c
    ld b, b                                       ; $654e: $40
    ld d, $a1                                     ; $654f: $16 $a1
    adc [hl]                                      ; $6551: $8e
    and b                                         ; $6552: $a0
    add d                                         ; $6553: $82
    rlca                                          ; $6554: $07
    ret nz                                        ; $6555: $c0

    ld [de], a                                    ; $6556: $12
    rst $38                                       ; $6557: $ff
    and b                                         ; $6558: $a0
    ld a, [$fd60]                                 ; $6559: $fa $60 $fd
    ld [hl+], a                                   ; $655c: $22
    db $ed                                        ; $655d: $ed
    jr nz, jr_05e_64f0                            ; $655e: $20 $90

    ld b, c                                       ; $6560: $41
    and e                                         ; $6561: $a3
    add b                                         ; $6562: $80
    sub b                                         ; $6563: $90
    ld b, b                                       ; $6564: $40
    ld l, e                                       ; $6565: $6b
    ld [c], a                                     ; $6566: $e2
    jp hl                                         ; $6567: $e9


    ld b, b                                       ; $6568: $40
    sbc b                                         ; $6569: $98
    dec b                                         ; $656a: $05
    inc b                                         ; $656b: $04
    rst $20                                       ; $656c: $e7
    ret nz                                        ; $656d: $c0

    and [hl]                                      ; $656e: $a6
    ret z                                         ; $656f: $c8

    and b                                         ; $6570: $a0
    ld [de], a                                    ; $6571: $12
    ld [bc], a                                    ; $6572: $02
    ld a, [hl]                                    ; $6573: $7e
    jr nz, jr_05e_6525                            ; $6574: $20 $af

    db $fd                                        ; $6576: $fd
    ldh [rNR41], a                                ; $6577: $e0 $20
    jp $c1aa                                      ; $6579: $c3 $aa $c1


    ld c, a                                       ; $657c: $4f
    ld b, c                                       ; $657d: $41
    sub b                                         ; $657e: $90
    ld b, c                                       ; $657f: $41
    ld l, e                                       ; $6580: $6b
    ld [c], a                                     ; $6581: $e2
    rlca                                          ; $6582: $07
    sbc [hl]                                      ; $6583: $9e
    call nc, Call_05e_79d5                        ; $6584: $d4 $d5 $79
    nop                                           ; $6587: $00
    ld a, l                                       ; $6588: $7d
    ld bc, $0161                                  ; $6589: $01 $61 $01
    and a                                         ; $658c: $a7
    ld b, $62                                     ; $658d: $06 $62
    jr nz, jr_05e_65b3                            ; $658f: $20 $22

    db $d3                                        ; $6591: $d3
    add e                                         ; $6592: $83
    ld de, $46be                                  ; $6593: $11 $be $46
    ldh [$82], a                                  ; $6596: $e0 $82
    sub b                                         ; $6598: $90
    nop                                           ; $6599: $00
    and c                                         ; $659a: $a1
    sub b                                         ; $659b: $90
    ld b, l                                       ; $659c: $45
    pop af                                        ; $659d: $f1
    add b                                         ; $659e: $80
    ld b, $a4                                     ; $659f: $06 $a4
    ld h, b                                       ; $65a1: $60
    sub $d7                                       ; $65a2: $d6 $d7
    ld c, c                                       ; $65a4: $49
    inc h                                         ; $65a5: $24
    call nz, $c521                                ; $65a6: $c4 $21 $c5
    inc h                                         ; $65a9: $24
    pop bc                                        ; $65aa: $c1
    ld h, c                                       ; $65ab: $61
    ld [de], a                                    ; $65ac: $12
    and h                                         ; $65ad: $a4
    add hl, de                                    ; $65ae: $19
    ld de, $267e                                  ; $65af: $11 $7e $26
    ld d, [hl]                                    ; $65b2: $56

jr_05e_65b3:
    ld [c], a                                     ; $65b3: $e2
    ret c                                         ; $65b4: $d8

    reti                                          ; $65b5: $d9


    jp hl                                         ; $65b6: $e9


    ld b, c                                       ; $65b7: $41
    sub b                                         ; $65b8: $90
    ld b, d                                       ; $65b9: $42
    or d                                          ; $65ba: $b2
    add b                                         ; $65bb: $80
    pop bc                                        ; $65bc: $c1
    xor [hl]                                      ; $65bd: $ae
    and h                                         ; $65be: $a4
    ld h, b                                       ; $65bf: $60

Jump_05e_65c0:
    adc c                                         ; $65c0: $89
    ld h, c                                       ; $65c1: $61
    adc e                                         ; $65c2: $8b
    ld b, $df                                     ; $65c3: $06 $df
    inc h                                         ; $65c5: $24
    db $e4                                        ; $65c6: $e4
    nop                                           ; $65c7: $00
    xor a                                         ; $65c8: $af
    ld b, l                                       ; $65c9: $45
    bit 1, b                                      ; $65ca: $cb $48
    ld c, b                                       ; $65cc: $48
    jp Jump_000_1141                              ; $65cd: $c3 $41 $11


    cp [hl]                                       ; $65d0: $be
    ld h, $3e                                     ; $65d1: $26 $3e

Jump_05e_65d3:
    inc hl                                        ; $65d3: $23
    sbc a                                         ; $65d4: $9f
    sbc h                                         ; $65d5: $9c
    pop de                                        ; $65d6: $d1
    ld b, c                                       ; $65d7: $41
    db $ed                                        ; $65d8: $ed
    ld b, b                                       ; $65d9: $40
    sub b                                         ; $65da: $90
    ld b, b                                       ; $65db: $40
    cp c                                          ; $65dc: $b9
    add c                                         ; $65dd: $81
    xor a                                         ; $65de: $af
    and a                                         ; $65df: $a7
    ld b, d                                       ; $65e0: $42
    ret nc                                        ; $65e1: $d0

    pop de                                        ; $65e2: $d1
    ld hl, sp+$0f                                 ; $65e3: $f8 $0f
    ld h, $df                                     ; $65e5: $26 $df
    inc h                                         ; $65e7: $24
    ld b, a                                       ; $65e8: $47
    pop bc                                        ; $65e9: $c1
    ld d, c                                       ; $65ea: $51
    ld e, [hl]                                    ; $65eb: $5e
    ld d, h                                       ; $65ec: $54
    dec hl                                        ; $65ed: $2b
    cp l                                          ; $65ee: $bd
    jr nz, @-$3e                                  ; $65ef: $20 $c0

    ld [c], a                                     ; $65f1: $e2
    ld a, $24                                     ; $65f2: $3e $24
    cp $00                                        ; $65f4: $fe $00
    ld b, [hl]                                    ; $65f6: $46
    ld hl, $0153                                  ; $65f7: $21 $53 $01
    xor a                                         ; $65fa: $af
    xor l                                         ; $65fb: $ad
    add c                                         ; $65fc: $81
    ld [hl-], a                                   ; $65fd: $32
    add e                                         ; $65fe: $83
    ldh a, [$89]                                  ; $65ff: $f0 $89
    inc bc                                        ; $6601: $03
    push hl                                       ; $6602: $e5
    pop bc                                        ; $6603: $c1
    ld b, h                                       ; $6604: $44
    push hl                                       ; $6605: $e5
    add d                                         ; $6606: $82
    ld h, h                                       ; $6607: $64
    ld c, d                                       ; $6608: $4a
    ld h, b                                       ; $6609: $60
    ld l, $20                                     ; $660a: $2e $20
    ld bc, $402d                                  ; $660c: $01 $2d $40
    pop hl                                        ; $660f: $e1
    ld a, [hl]                                    ; $6610: $7e
    dec h                                         ; $6611: $25
    ld hl, $6f21                                  ; $6612: $21 $21 $6f
    nop                                           ; $6615: $00
    ld d, e                                       ; $6616: $53
    ld [bc], a                                    ; $6617: $02
    rst $08                                       ; $6618: $cf

jr_05e_6619:
    ld b, b                                       ; $6619: $40
    ld [hl-], a                                   ; $661a: $32
    add l                                         ; $661b: $85
    add $66                                       ; $661c: $c6 $66
    inc bc                                        ; $661e: $03
    jp nc, Jump_05e_65d3                          ; $661f: $d2 $d3 $65

    ld [bc], a                                    ; $6622: $02
    ld bc, $c062                                  ; $6623: $01 $62 $c0
    db $e4                                        ; $6626: $e4
    ld d, [hl]                                    ; $6627: $56
    jr nc, jr_05e_662d                            ; $6628: $30 $03

    dec h                                         ; $662a: $25
    ld b, d                                       ; $662b: $42
    ret nz                                        ; $662c: $c0

jr_05e_662d:
    ret z                                         ; $662d: $c8

    ld a, e                                       ; $662e: $7b
    ld h, d                                       ; $662f: $62
    pop bc                                        ; $6630: $c1
    ldh [rHDMA3], a                               ; $6631: $e0 $53
    inc bc                                        ; $6633: $03
    db $f4                                        ; $6634: $f4
    ld h, c                                       ; $6635: $61
    ld [c], a                                     ; $6636: $e2
    jr nz, jr_05e_6619                            ; $6637: $20 $e0

    daa                                           ; $6639: $27
    pop bc                                        ; $663a: $c1
    rst $00                                       ; $663b: $c7
    inc h                                         ; $663c: $24
    add l                                         ; $663d: $85
    ld [bc], a                                    ; $663e: $02
    ld bc, $0662                                  ; $663f: $01 $62 $06
    and e                                         ; $6642: $a3
    ld b, l                                       ; $6643: $45
    add hl, sp                                    ; $6644: $39
    ld hl, $24f1                                  ; $6645: $21 $f1 $24
    ret nz                                        ; $6648: $c0

    pop hl                                        ; $6649: $e1
    ld a, [hl]                                    ; $664a: $7e
    inc h                                         ; $664b: $24
    pop bc                                        ; $664c: $c1
    rst $20                                       ; $664d: $e7
    dec [hl]                                      ; $664e: $35
    ret z                                         ; $664f: $c8

    or a                                          ; $6650: $b7
    cp b                                          ; $6651: $b8
    ld a, $a7                                     ; $6652: $3e $a7
    ldh [$ae], a                                  ; $6654: $e0 $ae
    ld b, h                                       ; $6656: $44
    ld c, c                                       ; $6657: $49
    ld d, h                                       ; $6658: $54
    ld b, h                                       ; $6659: $44
    inc bc                                        ; $665a: $03
    ld h, b                                       ; $665b: $60
    daa                                           ; $665c: $27
    pop bc                                        ; $665d: $c1
    adc b                                         ; $665e: $88
    ld a, $e6                                     ; $665f: $3e $e6
    inc bc                                        ; $6661: $03
    ld b, d                                       ; $6662: $42
    ld b, $a4                                     ; $6663: $06 $a4
    ld a, [hl-]                                   ; $6665: $3a
    add $62                                       ; $6666: $c6 $62
    ld c, $81                                     ; $6668: $0e $81
    add a                                         ; $666a: $87
    and c                                         ; $666b: $a1
    sbc a                                         ; $666c: $9f
    ld a, $eb                                     ; $666d: $3e $eb
    ld b, c                                       ; $666f: $41
    ld [hl], $b9                                  ; $6670: $36 $b9
    cp d                                          ; $6672: $ba
    dec [hl]                                      ; $6673: $35
    dec [hl]                                      ; $6674: $35
    sub l                                         ; $6675: $95
    ld bc, $61ad                                  ; $6676: $01 $ad $61
    ld b, $1f                                     ; $6679: $06 $1f
    ldh [$2a], a                                  ; $667b: $e0 $2a
    ld b, l                                       ; $667d: $45
    ld h, b                                       ; $667e: $60

jr_05e_667f:
    ld hl, $2346                                  ; $667f: $21 $46 $23
    ld a, $e2                                     ; $6682: $3e $e2
    ccf                                           ; $6684: $3f
    ld [bc], a                                    ; $6685: $02
    inc e                                         ; $6686: $1c
    ld b, d                                       ; $6687: $42
    rlca                                          ; $6688: $07
    ld b, [hl]                                    ; $6689: $46
    ld b, h                                       ; $668a: $44
    inc a                                         ; $668b: $3c
    ld h, l                                       ; $668c: $65
    ld b, b                                       ; $668d: $40
    ld d, l                                       ; $668e: $55
    ld h, b                                       ; $668f: $60
    ld b, h                                       ; $6690: $44
    add b                                         ; $6691: $80
    sbc h                                         ; $6692: $9c
    and d                                         ; $6693: $a2
    dec hl                                        ; $6694: $2b
    ld b, c                                       ; $6695: $41
    ld a, [c]                                     ; $6696: $f2
    add l                                         ; $6697: $85
    and c                                         ; $6698: $a1
    ret z                                         ; $6699: $c8

    sub l                                         ; $669a: $95
    ld bc, $6135                                  ; $669b: $01 $35 $61
    ld c, d                                       ; $669e: $4a
    ld d, [hl]                                    ; $669f: $56
    ld l, $30                                     ; $66a0: $2e $30
    dec de                                        ; $66a2: $1b

jr_05e_66a3:
    ld c, d                                       ; $66a3: $4a
    ld d, d                                       ; $66a4: $52
    ld a, [hl-]                                   ; $66a5: $3a
    and c                                         ; $66a6: $a1

Jump_05e_66a7:
    sbc h                                         ; $66a7: $9c
    sbc a                                         ; $66a8: $9f
    ld c, h                                       ; $66a9: $4c
    ld b, d                                       ; $66aa: $42
    ld h, c                                       ; $66ab: $61
    nop                                           ; $66ac: $00
    add a                                         ; $66ad: $87

jr_05e_66ae:
    ld b, $02                                     ; $66ae: $06 $02
    dec b                                         ; $66b0: $05
    ld h, c                                       ; $66b1: $61
    ld a, [hl-]                                   ; $66b2: $3a
    ld e, [hl]                                    ; $66b3: $5e
    jp nz, $8004                                  ; $66b4: $c2 $04 $80

    and [hl]                                      ; $66b7: $a6
    ld h, e                                       ; $66b8: $63
    ld b, h                                       ; $66b9: $44
    and h                                         ; $66ba: $a4
    pop bc                                        ; $66bb: $c1
    ld [c], a                                     ; $66bc: $e2
    db $e3                                        ; $66bd: $e3
    ld b, d                                       ; $66be: $42
    rrca                                          ; $66bf: $0f
    ld b, e                                       ; $66c0: $43
    dec l                                         ; $66c1: $2d
    jr nc, jr_05e_6713                            ; $66c2: $30 $4f

    ret nz                                        ; $66c4: $c0

    ldh [$f1], a                                  ; $66c5: $e0 $f1
    ld b, b                                       ; $66c7: $40
    dec h                                         ; $66c8: $25
    and e                                         ; $66c9: $a3
    ld b, e                                       ; $66ca: $43
    ld h, e                                       ; $66cb: $63
    ld a, [bc]                                    ; $66cc: $0a
    add a                                         ; $66cd: $87
    ld [bc], a                                    ; $66ce: $02
    xor [hl]                                      ; $66cf: $ae
    jr z, jr_05e_66f3                             ; $66d0: $28 $21

    add hl, sp                                    ; $66d2: $39
    adc h                                         ; $66d3: $8c
    add d                                         ; $66d4: $82
    ret nz                                        ; $66d5: $c0

    ld [c], a                                     ; $66d6: $e2
    xor $80                                       ; $66d7: $ee $80
    xor [hl]                                      ; $66d9: $ae
    add e                                         ; $66da: $83
    jr c, jr_05e_66a3                             ; $66db: $38 $c6

    and d                                         ; $66dd: $a2
    xor b                                         ; $66de: $a8
    ld h, b                                       ; $66df: $60
    ld [$4681], a                                 ; $66e0: $ea $81 $46
    ld b, l                                       ; $66e3: $45
    inc sp                                        ; $66e4: $33
    add l                                         ; $66e5: $85
    jr nz, jr_05e_667f                            ; $66e6: $20 $97

    and d                                         ; $66e8: $a2
    or a                                          ; $66e9: $b7
    sbc h                                         ; $66ea: $9c
    sbc l                                         ; $66eb: $9d
    and d                                         ; $66ec: $a2
    inc e                                         ; $66ed: $1c
    ld b, b                                       ; $66ee: $40
    call nc, $c2d5                                ; $66ef: $d4 $d5 $c2
    inc bc                                        ; $66f2: $03

jr_05e_66f3:
    sbc [hl]                                      ; $66f3: $9e
    dec de                                        ; $66f4: $1b
    xor [hl]                                      ; $66f5: $ae
    xor a                                         ; $66f6: $af
    ld [bc], a                                    ; $66f7: $02
    ldh [$35], a                                  ; $66f8: $e0 $35
    ld b, b                                       ; $66fa: $40
    dec e                                         ; $66fb: $1d
    jp nz, Jump_05e_6084                          ; $66fc: $c2 $84 $60

    add d                                         ; $66ff: $82
    ld [bc], a                                    ; $6700: $02
    jr c, jr_05e_66ae                             ; $6701: $38 $ab

    add b                                         ; $6703: $80
    inc bc                                        ; $6704: $03
    and d                                         ; $6705: $a2

jr_05e_6706:
    adc b                                         ; $6706: $88
    add d                                         ; $6707: $82
    ld [de], a                                    ; $6708: $12
    ld [de], a                                    ; $6709: $12
    ld b, l                                       ; $670a: $45
    xor [hl]                                      ; $670b: $ae
    ld b, d                                       ; $670c: $42
    or b                                          ; $670d: $b0
    ld b, b                                       ; $670e: $40
    ld l, h                                       ; $670f: $6c
    inc l                                         ; $6710: $2c
    ld b, e                                       ; $6711: $43
    ld e, l                                       ; $6712: $5d

jr_05e_6713:
    ld [bc], a                                    ; $6713: $02
    sub $d7                                       ; $6714: $d6 $d7
    jp nz, $9e03                                  ; $6716: $c2 $03 $9e

    xor a                                         ; $6719: $af
    ld b, a                                       ; $671a: $47
    ld b, c                                       ; $671b: $41
    and b                                         ; $671c: $a0
    ld bc, $96e1                                  ; $671d: $01 $e1 $96
    pop hl                                        ; $6720: $e1
    cp a                                          ; $6721: $bf
    jp $8183                                      ; $6722: $c3 $83 $81


    jp $ae01                                      ; $6725: $c3 $01 $ae


    inc de                                        ; $6728: $13
    ld hl, $1f46                                  ; $6729: $21 $46 $1f
    ld de, $3842                                  ; $672c: $11 $42 $38
    scf                                           ; $672f: $37
    ld b, l                                       ; $6730: $45
    ld h, $81                                     ; $6731: $26 $81
    ld l, [hl]                                    ; $6733: $6e
    ld b, d                                       ; $6734: $42
    cp a                                          ; $6735: $bf
    push hl                                       ; $6736: $e5
    ld [$01be], sp                                ; $6737: $08 $be $01
    ld bc, $81c3                                  ; $673a: $01 $c3 $81
    pop hl                                        ; $673d: $e1
    inc a                                         ; $673e: $3c
    and [hl]                                      ; $673f: $a6
    db $e4                                        ; $6740: $e4
    call c, Call_000_3ce3                         ; $6741: $dc $e3 $3c
    ld bc, $01c3                                  ; $6744: $01 $c3 $01
    ld a, [c]                                     ; $6747: $f2
    cp a                                          ; $6748: $bf
    ld h, b                                       ; $6749: $60
    ld b, e                                       ; $674a: $43
    rst $28                                       ; $674b: $ef
    ld h, b                                       ; $674c: $60
    ld h, d                                       ; $674d: $62
    pop bc                                        ; $674e: $c1
    ld b, e                                       ; $674f: $43
    ld b, a                                       ; $6750: $47
    ld d, h                                       ; $6751: $54
    ld d, e                                       ; $6752: $53
    nop                                           ; $6753: $00
    db $e4                                        ; $6754: $e4
    ld h, b                                       ; $6755: $60
    cp a                                          ; $6756: $bf
    and $3f                                       ; $6757: $e6 $3f
    ld b, d                                       ; $6759: $42
    ld bc, $88e2                                  ; $675a: $01 $e2 $88
    ld b, d                                       ; $675d: $42
    ld a, [hl+]                                   ; $675e: $2a
    nop                                           ; $675f: $00
    ld h, l                                       ; $6760: $65
    db $e4                                        ; $6761: $e4
    inc b                                         ; $6762: $04
    ld b, h                                       ; $6763: $44
    ld a, [hl]                                    ; $6764: $7e
    reti                                          ; $6765: $d9


    ld h, c                                       ; $6766: $61
    and c                                         ; $6767: $a1
    ld b, [hl]                                    ; $6768: $46
    ld b, l                                       ; $6769: $45
    ld a, [hl+]                                   ; $676a: $2a
    cpl                                           ; $676b: $2f
    dec l                                         ; $676c: $2d
    or b                                          ; $676d: $b0
    ld b, b                                       ; $676e: $40
    ld a, $e0                                     ; $676f: $3e $e0
    ret nz                                        ; $6771: $c0

    ld [hl], $54                                  ; $6772: $36 $54
    ld h, c                                       ; $6774: $61
    ld h, c                                       ; $6775: $61
    ld d, l                                       ; $6776: $55
    rst $20                                       ; $6777: $e7
    inc h                                         ; $6778: $24
    ei                                            ; $6779: $fb
    db $e4                                        ; $677a: $e4
    jr nc, jr_05e_6706                            ; $677b: $30 $89

    ld h, l                                       ; $677d: $65
    pop bc                                        ; $677e: $c1
    call nz, $2352                                ; $677f: $c4 $52 $23
    ld b, $42                                     ; $6782: $06 $42
    sbc h                                         ; $6784: $9c
    sbc l                                         ; $6785: $9d
    dec sp                                        ; $6786: $3b
    ld b, b                                       ; $6787: $40
    jp nz, $cf01                                  ; $6788: $c2 $01 $cf

    ld b, l                                       ; $678b: $45
    ld a, [hl+]                                   ; $678c: $2a
    jr nz, jr_05e_67c1                            ; $678d: $20 $32

    ld [hl], b                                    ; $678f: $70
    ld b, b                                       ; $6790: $40
    jr z, jr_05e_67f3                             ; $6791: $28 $60

    inc hl                                        ; $6793: $23
    cpl                                           ; $6794: $2f
    add a                                         ; $6795: $87
    ld a, [hl+]                                   ; $6796: $2a
    ld d, [hl]                                    ; $6797: $56
    ld d, [hl]                                    ; $6798: $56
    ld h, d                                       ; $6799: $62
    daa                                           ; $679a: $27
    ccf                                           ; $679b: $3f
    ld hl, $e382                                  ; $679c: $21 $82 $e3
    ld d, $60                                     ; $679f: $16 $60
    add hl, sp                                    ; $67a1: $39
    db $eb                                        ; $67a2: $eb
    jr c, jr_05e_67dc                             ; $67a3: $38 $37

    ld [de], a                                    ; $67a5: $12
    inc h                                         ; $67a6: $24
    xor a                                         ; $67a7: $af
    sbc e                                         ; $67a8: $9b
    ld b, c                                       ; $67a9: $41
    ld a, [hl+]                                   ; $67aa: $2a
    add c                                         ; $67ab: $81
    sbc [hl]                                      ; $67ac: $9e
    db $ec                                        ; $67ad: $ec
    cp [hl]                                       ; $67ae: $be
    nop                                           ; $67af: $00
    ld a, h                                       ; $67b0: $7c
    inc h                                         ; $67b1: $24
    dec hl                                        ; $67b2: $2b
    cp l                                          ; $67b3: $bd
    ret nz                                        ; $67b4: $c0

    pop hl                                        ; $67b5: $e1
    ld c, e                                       ; $67b6: $4b
    ld d, [hl]                                    ; $67b7: $56
    dec hl                                        ; $67b8: $2b
    rlca                                          ; $67b9: $07
    inc l                                         ; $67ba: $2c
    ld a, [hl+]                                   ; $67bb: $2a
    ld c, e                                       ; $67bc: $4b
    nop                                           ; $67bd: $00
    ret nz                                        ; $67be: $c0

    jr z, jr_05e_67e4                             ; $67bf: $28 $23

jr_05e_67c1:
    sbc d                                         ; $67c1: $9a
    ld bc, $650b                                  ; $67c2: $01 $0b $65
    inc h                                         ; $67c5: $24
    and c                                         ; $67c6: $a1
    ld a, h                                       ; $67c7: $7c
    db $dd                                        ; $67c8: $dd
    add d                                         ; $67c9: $82
    sub c                                         ; $67ca: $91
    ld [bc], a                                    ; $67cb: $02
    add d                                         ; $67cc: $82
    add e                                         ; $67cd: $83
    dec hl                                        ; $67ce: $2b
    cp [hl]                                       ; $67cf: $be
    jr nc, @-$3e                                  ; $67d0: $30 $c0

    ldh [$f8], a                                  ; $67d2: $e0 $f8
    cpl                                           ; $67d4: $2f
    ld b, b                                       ; $67d5: $40
    ld b, d                                       ; $67d6: $42
    ld [bc], a                                    ; $67d7: $02
    ld b, l                                       ; $67d8: $45
    jp nz, Jump_05e_45ae                          ; $67d9: $c2 $ae $45

jr_05e_67dc:
    ld d, e                                       ; $67dc: $53
    ld d, h                                       ; $67dd: $54
    ld e, l                                       ; $67de: $5d
    inc de                                        ; $67df: $13
    ld d, h                                       ; $67e0: $54
    ld c, c                                       ; $67e1: $49
    add c                                         ; $67e2: $81
    ld [c], a                                     ; $67e3: $e2

jr_05e_67e4:
    rst $28                                       ; $67e4: $ef
    ld hl, $3945                                  ; $67e5: $21 $45 $39
    and l                                         ; $67e8: $a5
    ld b, l                                       ; $67e9: $45
    add c                                         ; $67ea: $81
    sbc d                                         ; $67eb: $9a
    inc b                                         ; $67ec: $04
    inc a                                         ; $67ed: $3c
    ld h, [hl]                                    ; $67ee: $66
    call nz, Call_05e_4007                        ; $67ef: $c4 $07 $40
    dec l                                         ; $67f2: $2d

jr_05e_67f3:
    ld a, [hl+]                                   ; $67f3: $2a
    add c                                         ; $67f4: $81
    and c                                         ; $67f5: $a1
    ld h, b                                       ; $67f6: $60
    ld b, d                                       ; $67f7: $42
    xor b                                         ; $67f8: $a8
    inc b                                         ; $67f9: $04
    ld e, $9d                                     ; $67fa: $1e $9d
    db $e3                                        ; $67fc: $e3
    ld d, d                                       ; $67fd: $52
    ld d, h                                       ; $67fe: $54
    ld d, h                                       ; $67ff: $54
    ld d, l                                       ; $6800: $55
    or b                                          ; $6801: $b0
    inc hl                                        ; $6802: $23
    rst $28                                       ; $6803: $ef
    ld [hl+], a                                   ; $6804: $22
    jr nz, jr_05e_6868                            ; $6805: $20 $61

    ld h, e                                       ; $6807: $63
    call nc, Call_05e_47d5                        ; $6808: $d4 $d5 $47
    ld bc, $0993                                  ; $680b: $01 $93 $09
    cp a                                          ; $680e: $bf
    db $e3                                        ; $680f: $e3
    add e                                         ; $6810: $83
    add h                                         ; $6811: $84
    sub a                                         ; $6812: $97
    ld h, d                                       ; $6813: $62
    add h                                         ; $6814: $84
    and l                                         ; $6815: $a5
    ld h, e                                       ; $6816: $63
    xor c                                         ; $6817: $a9
    push bc                                       ; $6818: $c5
    ld b, l                                       ; $6819: $45
    rst $38                                       ; $681a: $ff
    ldh [$5a], a                                  ; $681b: $e0 $5a
    inc bc                                        ; $681d: $03
    rst $28                                       ; $681e: $ef
    ld [hl+], a                                   ; $681f: $22
    ld a, [hl-]                                   ; $6820: $3a
    and c                                         ; $6821: $a1
    sub $31                                       ; $6822: $d6 $31
    rst $10                                       ; $6824: $d7
    sbc a                                         ; $6825: $9f
    push hl                                       ; $6826: $e5
    ld c, h                                       ; $6827: $4c
    inc b                                         ; $6828: $04
    ld a, h                                       ; $6829: $7c
    ld [c], a                                     ; $682a: $e2
    add l                                         ; $682b: $85
    add a                                         ; $682c: $87
    dec e                                         ; $682d: $1d
    ld b, h                                       ; $682e: $44
    xor b                                         ; $682f: $a8
    inc bc                                        ; $6830: $03
    ld b, b                                       ; $6831: $40
    adc $a5                                       ; $6832: $ce $a5
    ld b, c                                       ; $6834: $41
    ld b, c                                       ; $6835: $41
    pop bc                                        ; $6836: $c1
    db $e3                                        ; $6837: $e3
    rst $28                                       ; $6838: $ef
    inc hl                                        ; $6839: $23
    sbc a                                         ; $683a: $9f
    ld b, b                                       ; $683b: $40
    ld e, $c1                                     ; $683c: $1e $c1
    xor [hl]                                      ; $683e: $ae
    ld [hl-], a                                   ; $683f: $32
    ldh [rP1], a                                  ; $6840: $e0 $00
    ld a, a                                       ; $6842: $7f
    and $42                                       ; $6843: $e6 $42
    add h                                         ; $6845: $84
    sub b                                         ; $6846: $90
    ld h, b                                       ; $6847: $60
    ei                                            ; $6848: $fb
    add l                                         ; $6849: $85
    db $e3                                        ; $684a: $e3
    and b                                         ; $684b: $a0
    db $ec                                        ; $684c: $ec
    db $e4                                        ; $684d: $e4
    xor h                                         ; $684e: $ac
    inc hl                                        ; $684f: $23
    or b                                          ; $6850: $b0
    ld hl, $6b00                                  ; $6851: $21 $00 $6b
    add b                                         ; $6854: $80
    inc l                                         ; $6855: $2c
    add b                                         ; $6856: $80
    sbc a                                         ; $6857: $9f
    ld b, b                                       ; $6858: $40
    adc c                                         ; $6859: $89
    ld [bc], a                                    ; $685a: $02
    ld hl, $5d22                                  ; $685b: $21 $22 $5d
    db $e4                                        ; $685e: $e4
    jp nz, Jump_000_1a65                          ; $685f: $c2 $65 $1a

    add h                                         ; $6862: $84
    ld d, b                                       ; $6863: $50
    dec de                                        ; $6864: $1b
    add b                                         ; $6865: $80
    add c                                         ; $6866: $81
    ld b, b                                       ; $6867: $40

jr_05e_6868:
    ld l, [hl]                                    ; $6868: $6e
    ld b, l                                       ; $6869: $45
    dec a                                         ; $686a: $3d
    ld h, c                                       ; $686b: $61
    ld b, l                                       ; $686c: $45
    inc l                                         ; $686d: $2c
    add b                                         ; $686e: $80
    and e                                         ; $686f: $a3
    inc l                                         ; $6870: $2c
    add d                                         ; $6871: $82
    ld c, [hl]                                    ; $6872: $4e
    ld a, e                                       ; $6873: $7b
    ld hl, $a0d3                                  ; $6874: $21 $d3 $a0
    sbc [hl]                                      ; $6877: $9e
    ld hl, $6324                                  ; $6878: $21 $24 $63
    ld h, e                                       ; $687b: $63
    ld b, h                                       ; $687c: $44
    add d                                         ; $687d: $82

jr_05e_687e:
    ld b, [hl]                                    ; $687e: $46
    ld b, d                                       ; $687f: $42
    and d                                         ; $6880: $a2
    and [hl]                                      ; $6881: $a6
    sbc [hl]                                      ; $6882: $9e
    db $ec                                        ; $6883: $ec
    add sp, $7b                                   ; $6884: $e8 $7b
    ld h, c                                       ; $6886: $61
    ld a, [c]                                     ; $6887: $f2
    dec h                                         ; $6888: $25
    add b                                         ; $6889: $80
    inc b                                         ; $688a: $04
    sbc [hl]                                      ; $688b: $9e
    ld hl, $0625                                  ; $688c: $21 $25 $06
    ld b, e                                       ; $688f: $43
    ld bc, $42af                                  ; $6890: $01 $af $42
    add d                                         ; $6893: $82
    ld b, [hl]                                    ; $6894: $46
    ld [hl+], a                                   ; $6895: $22
    jp Jump_05e_4226                              ; $6896: $c3 $26 $42


    ld l, [hl]                                    ; $6899: $6e
    ld b, [hl]                                    ; $689a: $46
    add e                                         ; $689b: $83
    call nz, $2c0c                                ; $689c: $c4 $0c $2c
    add d                                         ; $689f: $82
    add b                                         ; $68a0: $80
    inc b                                         ; $68a1: $04
    and b                                         ; $68a2: $a0
    sbc [hl]                                      ; $68a3: $9e
    ld hl, $2427                                  ; $68a4: $21 $27 $24
    ld h, b                                       ; $68a7: $60
    ret nz                                        ; $68a8: $c0

    ldh [$82], a                                  ; $68a9: $e0 $82
    ld b, [hl]                                    ; $68ab: $46
    db $10                                        ; $68ac: $10
    inc a                                         ; $68ad: $3c
    add e                                         ; $68ae: $83
    ld h, h                                       ; $68af: $64
    add b                                         ; $68b0: $80
    ld l, [hl]                                    ; $68b1: $6e
    ld b, [hl]                                    ; $68b2: $46
    inc bc                                        ; $68b3: $03
    ld [hl+], a                                   ; $68b4: $22
    sbc h                                         ; $68b5: $9c
    ld a, [c]                                     ; $68b6: $f2
    inc hl                                        ; $68b7: $23
    jr nz, jr_05e_687e                            ; $68b8: $20 $c4

    ld e, h                                       ; $68ba: $5c
    ld h, b                                       ; $68bb: $60
    or h                                          ; $68bc: $b4
    ld hl, $9725                                  ; $68bd: $21 $25 $97
    add c                                         ; $68c0: $81
    ld b, h                                       ; $68c1: $44
    add d                                         ; $68c2: $82
    ld b, h                                       ; $68c3: $44
    xor h                                         ; $68c4: $ac
    ld b, d                                       ; $68c5: $42
    ld a, h                                       ; $68c6: $7c
    ld h, l                                       ; $68c7: $65
    sbc [hl]                                      ; $68c8: $9e
    ld h, $ec                                     ; $68c9: $26 $ec
    and $3c                                       ; $68cb: $e6 $3c
    ld b, h                                       ; $68cd: $44
    adc c                                         ; $68ce: $89
    nop                                           ; $68cf: $00
    call nc, Call_05e_4541                        ; $68d0: $d4 $41 $45
    inc l                                         ; $68d3: $2c
    add c                                         ; $68d4: $81
    or a                                          ; $68d5: $b7
    inc hl                                        ; $68d6: $23
    db $10                                        ; $68d7: $10
    inc e                                         ; $68d8: $1c
    ld h, b                                       ; $68d9: $60
    cpl                                           ; $68da: $2f
    and $c1                                       ; $68db: $e6 $c1
    add c                                         ; $68dd: $81
    ret nz                                        ; $68de: $c0

    push bc                                       ; $68df: $c5
    xor l                                         ; $68e0: $ad
    ld e, [hl]                                    ; $68e1: $5e
    ld bc, $421f                                  ; $68e2: $01 $1f $42
    pop de                                        ; $68e5: $d1
    pop hl                                        ; $68e6: $e1
    nop                                           ; $68e7: $00
    ld l, [hl]                                    ; $68e8: $6e
    ld c, b                                       ; $68e9: $48
    dec l                                         ; $68ea: $2d
    add b                                         ; $68eb: $80
    cp a                                          ; $68ec: $bf
    ldh [$7e], a                                  ; $68ed: $e0 $7e
    ld h, e                                       ; $68ef: $63
    cp [hl]                                       ; $68f0: $be
    ld b, b                                       ; $68f1: $40
    add h                                         ; $68f2: $84
    ld h, c                                       ; $68f3: $61
    ld hl, $1f25                                  ; $68f4: $21 $25 $1f
    ld b, d                                       ; $68f7: $42
    ld h, [hl]                                    ; $68f8: $66
    add d                                         ; $68f9: $82
    ld b, [hl]                                    ; $68fa: $46
    ret nc                                        ; $68fb: $d0

    pop de                                        ; $68fc: $d1
    ld e, e                                       ; $68fd: $5b
    inc h                                         ; $68fe: $24
    sub b                                         ; $68ff: $90
    ldh [rSCX], a                                 ; $6900: $e0 $43
    xor [hl]                                      ; $6902: $ae
    ld l, [hl]                                    ; $6903: $6e
    ld b, b                                       ; $6904: $40
    nop                                           ; $6905: $00
    cpl                                           ; $6906: $2f
    add b                                         ; $6907: $80
    adc l                                         ; $6908: $8d
    ld b, b                                       ; $6909: $40
    ld b, d                                       ; $690a: $42
    ld hl, $c04d                                  ; $690b: $21 $4d $c0
    sbc [hl]                                      ; $690e: $9e
    ld h, l                                       ; $690f: $65
    ld e, a                                       ; $6910: $5f
    ld [hl+], a                                   ; $6911: $22
    ld hl, $cc23                                  ; $6912: $21 $23 $cc
    ld h, b                                       ; $6915: $60
    inc c                                         ; $6916: $0c
    ld d, h                                       ; $6917: $54
    and h                                         ; $6918: $a4
    jp nz, $d262                                  ; $6919: $c2 $62 $d2

    db $d3                                        ; $691c: $d3
    ld e, e                                       ; $691d: $5b
    dec h                                         ; $691e: $25
    inc hl                                        ; $691f: $23
    ld hl, $636c                                  ; $6920: $21 $6c $63
    jp z, $0042                                   ; $6923: $ca $42 $00

    inc l                                         ; $6926: $2c
    ld hl, $8026                                  ; $6927: $21 $26 $80
    and d                                         ; $692a: $a2
    jp $a19f                                      ; $692b: $c3 $9f $a1


    jp c, $fe80                                   ; $692e: $da $80 $fe

    pop hl                                        ; $6931: $e1
    or b                                          ; $6932: $b0
    ret nz                                        ; $6933: $c0

    or $e5                                        ; $6934: $f6 $e5
    nop                                           ; $6936: $00
    ld h, c                                       ; $6937: $61
    daa                                           ; $6938: $27
    ld a, $03                                     ; $6939: $3e $03
    db $eb                                        ; $693b: $eb
    db $e3                                        ; $693c: $e3
    inc d                                         ; $693d: $14
    add c                                         ; $693e: $81
    ret nc                                        ; $693f: $d0

    ld b, e                                       ; $6940: $43
    ld a, a                                       ; $6941: $7f
    inc hl                                        ; $6942: $23
    ld b, b                                       ; $6943: $40
    inc hl                                        ; $6944: $23
    ld e, d                                       ; $6945: $5a
    jp $f400                                      ; $6946: $c3 $00 $f4


    ld bc, $c3b0                                  ; $6949: $01 $b0 $c3
    ld l, [hl]                                    ; $694c: $6e
    ld b, e                                       ; $694d: $43
    ld h, c                                       ; $694e: $61
    inc h                                         ; $694f: $24
    ld a, $04                                     ; $6950: $3e $04
    db $eb                                        ; $6952: $eb
    db $e3                                        ; $6953: $e3
    or c                                          ; $6954: $b1
    and b                                         ; $6955: $a0
    adc b                                         ; $6956: $88
    inc b                                         ; $6957: $04
    inc sp                                        ; $6958: $33
    ret nc                                        ; $6959: $d0

    pop de                                        ; $695a: $d1
    jp Jump_05e_7c20                              ; $695b: $c3 $20 $7c


    inc b                                         ; $695e: $04
    jp nc, Jump_000_18d3                          ; $695f: $d2 $d3 $18

    jp nz, $e425                                  ; $6962: $c2 $25 $e4

    ret nz                                        ; $6965: $c0

    inc c                                         ; $6966: $0c
    jp nz, $4523                                  ; $6967: $c2 $23 $45

    sbc l                                         ; $696a: $9d
    inc bc                                        ; $696b: $03
    ld d, b                                       ; $696c: $50
    ld bc, $e3c2                                  ; $696d: $01 $c2 $e3
    db $eb                                        ; $6970: $eb
    and $d2                                       ; $6971: $e6 $d2
    db $d3                                        ; $6973: $d3
    nop                                           ; $6974: $00
    ld h, l                                       ; $6975: $65
    and b                                         ; $6976: $a0
    ld a, h                                       ; $6977: $7c
    ld [bc], a                                    ; $6978: $02
    nop                                           ; $6979: $00
    nop                                           ; $697a: $00
    nop                                           ; $697b: $00
    pop bc                                        ; $697c: $c1
    nop                                           ; $697d: $00
    rst $38                                       ; $697e: $ff
    rst $38                                       ; $697f: $ff
    rst $38                                       ; $6980: $ff
    rst $38                                       ; $6981: $ff
    rst $38                                       ; $6982: $ff
    rst $38                                       ; $6983: $ff
    rst $38                                       ; $6984: $ff
    rst $38                                       ; $6985: $ff
    rst $38                                       ; $6986: $ff
    rst $38                                       ; $6987: $ff
    nop                                           ; $6988: $00
    nop                                           ; $6989: $00
    ld bc, $fe80                                  ; $698a: $01 $80 $fe
    ldh [rIE], a                                  ; $698d: $e0 $ff
    rst $38                                       ; $698f: $ff
    rst $38                                       ; $6990: $ff
    rst $38                                       ; $6991: $ff
    rst $38                                       ; $6992: $ff
    add sp, $00                                   ; $6993: $e8 $00
    nop                                           ; $6995: $00
    nop                                           ; $6996: $00
    ld [bc], a                                    ; $6997: $02
    nop                                           ; $6998: $00
    ld d, $04                                     ; $6999: $16 $04
    ld [bc], a                                    ; $699b: $02
    ld bc, $0633                                  ; $699c: $01 $33 $06
    ld [bc], a                                    ; $699f: $02
    ld [bc], a                                    ; $69a0: $02
    add hl, hl                                    ; $69a1: $29
    ld [$0302], sp                                ; $69a2: $08 $02 $03
    ld a, [de]                                    ; $69a5: $1a
    add hl, bc                                    ; $69a6: $09
    ld [bc], a                                    ; $69a7: $02
    inc b                                         ; $69a8: $04
    ld [hl-], a                                   ; $69a9: $32
    inc c                                         ; $69aa: $0c
    ld [bc], a                                    ; $69ab: $02
    dec b                                         ; $69ac: $05
    dec d                                         ; $69ad: $15
    dec c                                         ; $69ae: $0d
    ld [bc], a                                    ; $69af: $02
    ld b, $39                                     ; $69b0: $06 $39
    dec c                                         ; $69b2: $0d
    ld [bc], a                                    ; $69b3: $02
    rlca                                          ; $69b4: $07
    inc d                                         ; $69b5: $14
    ld c, $02                                     ; $69b6: $0e $02
    ld [$0e38], sp                                ; $69b8: $08 $38 $0e
    ld [bc], a                                    ; $69bb: $02
    add hl, bc                                    ; $69bc: $09
    ld sp, $020f                                  ; $69bd: $31 $0f $02
    ld a, [bc]                                    ; $69c0: $0a
    add hl, sp                                    ; $69c1: $39
    rrca                                          ; $69c2: $0f
    ld [bc], a                                    ; $69c3: $02
    dec bc                                        ; $69c4: $0b
    dec bc                                        ; $69c5: $0b
    db $10                                        ; $69c6: $10
    ld [bc], a                                    ; $69c7: $02
    inc c                                         ; $69c8: $0c
    inc sp                                        ; $69c9: $33
    ld de, $0d02                                  ; $69ca: $11 $02 $0d
    inc d                                         ; $69cd: $14
    inc de                                        ; $69ce: $13
    ld [bc], a                                    ; $69cf: $02
    ld c, $1f                                     ; $69d0: $0e $1f
    inc de                                        ; $69d2: $13
    ld [bc], a                                    ; $69d3: $02
    rrca                                          ; $69d4: $0f
    ld e, $14                                     ; $69d5: $1e $14
    ld [bc], a                                    ; $69d7: $02
    db $10                                        ; $69d8: $10
    dec h                                         ; $69d9: $25
    inc d                                         ; $69da: $14
    ld [bc], a                                    ; $69db: $02
    ld de, $1518                                  ; $69dc: $11 $18 $15
    ld [bc], a                                    ; $69df: $02
    ld [de], a                                    ; $69e0: $12
    inc h                                         ; $69e1: $24
    dec d                                         ; $69e2: $15
    ld [bc], a                                    ; $69e3: $02
    inc de                                        ; $69e4: $13
    ld h, $15                                     ; $69e5: $26 $15
    ld [bc], a                                    ; $69e7: $02
    inc d                                         ; $69e8: $14
    db $10                                        ; $69e9: $10
    ld d, $02                                     ; $69ea: $16 $02
    dec d                                         ; $69ec: $15
    ld d, $16                                     ; $69ed: $16 $16
    ld [bc], a                                    ; $69ef: $02
    ld d, $0d                                     ; $69f0: $16 $0d
    rla                                           ; $69f2: $17
    ld [bc], a                                    ; $69f3: $02
    rla                                           ; $69f4: $17
    ld de, $0219                                  ; $69f5: $11 $19 $02
    jr jr_05e_6a12                                ; $69f8: $18 $18

    ld a, [de]                                    ; $69fa: $1a
    ld [bc], a                                    ; $69fb: $02
    add hl, de                                    ; $69fc: $19
    ld a, [de]                                    ; $69fd: $1a
    ld a, [de]                                    ; $69fe: $1a
    ld [bc], a                                    ; $69ff: $02
    ld a, [de]                                    ; $6a00: $1a
    ld d, $1b                                     ; $6a01: $16 $1b
    ld [bc], a                                    ; $6a03: $02
    dec de                                        ; $6a04: $1b
    add hl, de                                    ; $6a05: $19
    dec de                                        ; $6a06: $1b
    ld [bc], a                                    ; $6a07: $02
    inc e                                         ; $6a08: $1c
    dec de                                        ; $6a09: $1b
    dec de                                        ; $6a0a: $1b
    ld [bc], a                                    ; $6a0b: $02
    dec e                                         ; $6a0c: $1d
    ld hl, $021b                                  ; $6a0d: $21 $1b $02
    ld e, $18                                     ; $6a10: $1e $18

jr_05e_6a12:
    inc e                                         ; $6a12: $1c
    ld [bc], a                                    ; $6a13: $02
    rra                                           ; $6a14: $1f
    ld a, [de]                                    ; $6a15: $1a
    inc e                                         ; $6a16: $1c
    ld [bc], a                                    ; $6a17: $02
    jr nz, jr_05e_6a36                            ; $6a18: $20 $1c

    inc e                                         ; $6a1a: $1c
    ld [bc], a                                    ; $6a1b: $02
    ld hl, $1d11                                  ; $6a1c: $21 $11 $1d
    ld [bc], a                                    ; $6a1f: $02
    ld [hl+], a                                   ; $6a20: $22
    add hl, de                                    ; $6a21: $19
    dec e                                         ; $6a22: $1d
    ld [bc], a                                    ; $6a23: $02
    inc hl                                        ; $6a24: $23
    dec de                                        ; $6a25: $1b
    dec e                                         ; $6a26: $1d
    ld [bc], a                                    ; $6a27: $02
    inc h                                         ; $6a28: $24
    ld l, $1d                                     ; $6a29: $2e $1d
    ld [bc], a                                    ; $6a2b: $02
    dec h                                         ; $6a2c: $25
    jr nc, jr_05e_6a4c                            ; $6a2d: $30 $1d

    ld [bc], a                                    ; $6a2f: $02
    ld h, $10                                     ; $6a30: $26 $10
    ld e, $02                                     ; $6a32: $1e $02
    daa                                           ; $6a34: $27
    rla                                           ; $6a35: $17

jr_05e_6a36:
    ld e, $02                                     ; $6a36: $1e $02
    jr z, jr_05e_6a54                             ; $6a38: $28 $1a

    ld e, $02                                     ; $6a3a: $1e $02
    add hl, hl                                    ; $6a3c: $29
    dec l                                         ; $6a3d: $2d
    ld e, $02                                     ; $6a3e: $1e $02
    ld a, [hl+]                                   ; $6a40: $2a
    cpl                                           ; $6a41: $2f
    ld e, $02                                     ; $6a42: $1e $02
    dec hl                                        ; $6a44: $2b
    ld sp, $021e                                  ; $6a45: $31 $1e $02
    inc l                                         ; $6a48: $2c
    ld l, $1f                                     ; $6a49: $2e $1f
    ld [bc], a                                    ; $6a4b: $02

jr_05e_6a4c:
    dec l                                         ; $6a4c: $2d
    jr nc, jr_05e_6a6e                            ; $6a4d: $30 $1f

    ld [bc], a                                    ; $6a4f: $02
    ld l, $0c                                     ; $6a50: $2e $0c
    jr nz, jr_05e_6a56                            ; $6a52: $20 $02

jr_05e_6a54:
    cpl                                           ; $6a54: $2f
    dec l                                         ; $6a55: $2d

jr_05e_6a56:
    jr nz, jr_05e_6a5a                            ; $6a56: $20 $02

    jr nc, @+$0c                                  ; $6a58: $30 $0a

jr_05e_6a5a:
    ld hl, $3102                                  ; $6a5a: $21 $02 $31
    inc l                                         ; $6a5d: $2c
    ld hl, $3202                                  ; $6a5e: $21 $02 $32
    cpl                                           ; $6a61: $2f
    ld hl, $3302                                  ; $6a62: $21 $02 $33
    daa                                           ; $6a65: $27
    ld [hl+], a                                   ; $6a66: $22
    ld [bc], a                                    ; $6a67: $02
    inc [hl]                                      ; $6a68: $34
    dec hl                                        ; $6a69: $2b
    ld [hl+], a                                   ; $6a6a: $22
    ld [bc], a                                    ; $6a6b: $02
    dec [hl]                                      ; $6a6c: $35
    dec l                                         ; $6a6d: $2d

jr_05e_6a6e:
    ld [hl+], a                                   ; $6a6e: $22
    ld [bc], a                                    ; $6a6f: $02
    ld [hl], $29                                  ; $6a70: $36 $29
    inc hl                                        ; $6a72: $23
    ld [bc], a                                    ; $6a73: $02
    scf                                           ; $6a74: $37
    inc l                                         ; $6a75: $2c
    inc hl                                        ; $6a76: $23
    ld [bc], a                                    ; $6a77: $02
    jr c, jr_05e_6aa4                             ; $6a78: $38 $2a

    inc h                                         ; $6a7a: $24
    ld [bc], a                                    ; $6a7b: $02
    add hl, sp                                    ; $6a7c: $39
    ld [hl-], a                                   ; $6a7d: $32
    inc h                                         ; $6a7e: $24
    ld [bc], a                                    ; $6a7f: $02
    ld a, [hl-]                                   ; $6a80: $3a
    jr nc, jr_05e_6aa8                            ; $6a81: $30 $25

    ld [bc], a                                    ; $6a83: $02
    dec sp                                        ; $6a84: $3b
    inc sp                                        ; $6a85: $33
    dec h                                         ; $6a86: $25
    ld [bc], a                                    ; $6a87: $02
    inc a                                         ; $6a88: $3c
    dec hl                                        ; $6a89: $2b
    ld h, $02                                     ; $6a8a: $26 $02
    dec a                                         ; $6a8c: $3d
    db $10                                        ; $6a8d: $10
    daa                                           ; $6a8e: $27
    ld [bc], a                                    ; $6a8f: $02
    ld a, $29                                     ; $6a90: $3e $29
    daa                                           ; $6a92: $27
    ld [bc], a                                    ; $6a93: $02
    ccf                                           ; $6a94: $3f
    ld c, $28                                     ; $6a95: $0e $28
    ld [bc], a                                    ; $6a97: $02
    ld b, b                                       ; $6a98: $40
    ld de, $0228                                  ; $6a99: $11 $28 $02
    ld b, c                                       ; $6a9c: $41
    inc [hl]                                      ; $6a9d: $34
    jr z, jr_05e_6aa2                             ; $6a9e: $28 $02

    ld b, d                                       ; $6aa0: $42
    rrca                                          ; $6aa1: $0f

jr_05e_6aa2:
    add hl, hl                                    ; $6aa2: $29
    ld [bc], a                                    ; $6aa3: $02

jr_05e_6aa4:
    ld b, e                                       ; $6aa4: $43
    dec [hl]                                      ; $6aa5: $35
    add hl, hl                                    ; $6aa6: $29
    ld [bc], a                                    ; $6aa7: $02

jr_05e_6aa8:
    ld b, h                                       ; $6aa8: $44
    ld [$022a], sp                                ; $6aa9: $08 $2a $02
    ld b, l                                       ; $6aac: $45
    ld c, $2a                                     ; $6aad: $0e $2a
    ld [bc], a                                    ; $6aaf: $02
    ld b, [hl]                                    ; $6ab0: $46
    db $10                                        ; $6ab1: $10
    ld a, [hl+]                                   ; $6ab2: $2a
    ld [bc], a                                    ; $6ab3: $02
    ld b, a                                       ; $6ab4: $47
    inc sp                                        ; $6ab5: $33
    ld a, [hl+]                                   ; $6ab6: $2a
    ld [bc], a                                    ; $6ab7: $02
    ld c, b                                       ; $6ab8: $48
    rlca                                          ; $6ab9: $07
    dec hl                                        ; $6aba: $2b
    ld [bc], a                                    ; $6abb: $02
    ld c, c                                       ; $6abc: $49
    rrca                                          ; $6abd: $0f
    dec hl                                        ; $6abe: $2b
    ld [bc], a                                    ; $6abf: $02
    ld c, d                                       ; $6ac0: $4a
    ld h, $2b                                     ; $6ac1: $26 $2b
    ld [bc], a                                    ; $6ac3: $02
    ld c, e                                       ; $6ac4: $4b
    dec c                                         ; $6ac5: $0d
    inc l                                         ; $6ac6: $2c
    ld [bc], a                                    ; $6ac7: $02
    ld c, h                                       ; $6ac8: $4c
    ld [hl+], a                                   ; $6ac9: $22
    inc l                                         ; $6aca: $2c
    ld [bc], a                                    ; $6acb: $02
    ld c, l                                       ; $6acc: $4d
    ld c, $2e                                     ; $6acd: $0e $2e
    ld [bc], a                                    ; $6acf: $02
    ld c, [hl]                                    ; $6ad0: $4e
    dec c                                         ; $6ad1: $0d
    cpl                                           ; $6ad2: $2f
    ld [bc], a                                    ; $6ad3: $02
    ld c, a                                       ; $6ad4: $4f
    inc de                                        ; $6ad5: $13
    cpl                                           ; $6ad6: $2f
    ld [bc], a                                    ; $6ad7: $02
    ld d, b                                       ; $6ad8: $50
    ld [hl], $2f                                  ; $6ad9: $36 $2f
    ld [bc], a                                    ; $6adb: $02
    ld d, c                                       ; $6adc: $51
    ld b, $30                                     ; $6add: $06 $30
    ld [bc], a                                    ; $6adf: $02
    ld d, d                                       ; $6ae0: $52
    inc c                                         ; $6ae1: $0c
    jr nc, jr_05e_6ae6                            ; $6ae2: $30 $02

    ld d, e                                       ; $6ae4: $53
    ld a, [hl-]                                   ; $6ae5: $3a

jr_05e_6ae6:
    jr nc, jr_05e_6aea                            ; $6ae6: $30 $02

    ld d, h                                       ; $6ae8: $54
    dec c                                         ; $6ae9: $0d

jr_05e_6aea:
    ld sp, $5502                                  ; $6aea: $31 $02 $55
    add hl, hl                                    ; $6aed: $29
    ld sp, $5602                                  ; $6aee: $31 $02 $56
    dec bc                                        ; $6af1: $0b
    ld [hl-], a                                   ; $6af2: $32
    ld [bc], a                                    ; $6af3: $02
    ld d, a                                       ; $6af4: $57
    ld de, $0233                                  ; $6af5: $11 $33 $02
    ld e, b                                       ; $6af8: $58
    dec h                                         ; $6af9: $25
    inc sp                                        ; $6afa: $33
    ld [bc], a                                    ; $6afb: $02
    ld e, c                                       ; $6afc: $59
    inc c                                         ; $6afd: $0c
    inc [hl]                                      ; $6afe: $34
    ld [bc], a                                    ; $6aff: $02
    ld e, d                                       ; $6b00: $5a
    dec l                                         ; $6b01: $2d
    inc [hl]                                      ; $6b02: $34
    ld [bc], a                                    ; $6b03: $02
    ld e, e                                       ; $6b04: $5b

Jump_05e_6b05:
    cpl                                           ; $6b05: $2f
    inc [hl]                                      ; $6b06: $34
    ld [bc], a                                    ; $6b07: $02
    ld e, h                                       ; $6b08: $5c
    inc b                                         ; $6b09: $04

Jump_05e_6b0a:
    dec [hl]                                      ; $6b0a: $35
    ld [bc], a                                    ; $6b0b: $02
    ld e, l                                       ; $6b0c: $5d
    add hl, de                                    ; $6b0d: $19
    dec [hl]                                      ; $6b0e: $35
    ld [bc], a                                    ; $6b0f: $02

Jump_05e_6b10:
    ld e, [hl]                                    ; $6b10: $5e
    ld l, $35                                     ; $6b11: $2e $35
    ld [bc], a                                    ; $6b13: $02
    ld e, a                                       ; $6b14: $5f
    jr nc, @+$37                                  ; $6b15: $30 $35

    ld [bc], a                                    ; $6b17: $02
    ld h, b                                       ; $6b18: $60
    cpl                                           ; $6b19: $2f
    ld [hl], $02                                  ; $6b1a: $36 $02
    ld h, c                                       ; $6b1c: $61
    rrca                                          ; $6b1d: $0f
    scf                                           ; $6b1e: $37
    ld [bc], a                                    ; $6b1f: $02
    ld h, d                                       ; $6b20: $62
    ld c, $38                                     ; $6b21: $0e $38
    ld [bc], a                                    ; $6b23: $02
    ld h, e                                       ; $6b24: $63
    inc h                                         ; $6b25: $24
    jr c, jr_05e_6b2a                             ; $6b26: $38 $02

    ld h, h                                       ; $6b28: $64
    rrca                                          ; $6b29: $0f

jr_05e_6b2a:
    add hl, sp                                    ; $6b2a: $39
    ld [bc], a                                    ; $6b2b: $02
    ld h, l                                       ; $6b2c: $65
    inc hl                                        ; $6b2d: $23
    add hl, sp                                    ; $6b2e: $39
    ld [bc], a                                    ; $6b2f: $02
    ld h, [hl]                                    ; $6b30: $66
    jr jr_05e_6b6d                                ; $6b31: $18 $3a

    ld [bc], a                                    ; $6b33: $02
    ld h, a                                       ; $6b34: $67
    dec c                                         ; $6b35: $0d
    dec sp                                        ; $6b36: $3b
    ld [bc], a                                    ; $6b37: $02
    ld l, b                                       ; $6b38: $68
    scf                                           ; $6b39: $37
    dec sp                                        ; $6b3a: $3b
    ld [bc], a                                    ; $6b3b: $02
    ld l, c                                       ; $6b3c: $69
    daa                                           ; $6b3d: $27
    inc a                                         ; $6b3e: $3c
    rst $38                                       ; $6b3f: $ff
    rst $38                                       ; $6b40: $ff
    rst $38                                       ; $6b41: $ff
    ld c, d                                       ; $6b42: $4a
    ld l, e                                       ; $6b43: $6b
    ld a, d                                       ; $6b44: $7a
    ld l, e                                       ; $6b45: $6b
    add hl, bc                                    ; $6b46: $09
    ld l, l                                       ; $6b47: $6d
    sbc $6e                                       ; $6b48: $de $6e
    ld [$c503], a                                 ; $6b4a: $ea $03 $c5
    ld b, $e2                                     ; $6b4d: $06 $e2
    ld bc, $00a0                                  ; $6b4f: $01 $a0 $00
    ld [$f003], a                                 ; $6b52: $ea $03 $f0
    inc bc                                        ; $6b55: $03
    push bc                                       ; $6b56: $c5
    ld b, $e2                                     ; $6b57: $06 $e2
    ld bc, $023f                                  ; $6b59: $01 $3f $02
    xor e                                         ; $6b5c: $ab
    nop                                           ; $6b5d: $00
    inc sp                                        ; $6b5e: $33
    ld bc, $06c5                                  ; $6b5f: $01 $c5 $06
    ld [$0825], sp                                ; $6b62: $08 $25 $08
    dec h                                         ; $6b65: $25
    ld [$0825], sp                                ; $6b66: $08 $25 $08
    dec h                                         ; $6b69: $25
    ld [$0825], sp                                ; $6b6a: $08 $25 $08

jr_05e_6b6d:
    dec h                                         ; $6b6d: $25
    ld [$0825], sp                                ; $6b6e: $08 $25 $08
    dec h                                         ; $6b71: $25
    ld [$0825], sp                                ; $6b72: $08 $25 $08
    dec h                                         ; $6b75: $25
    ld [$0825], sp                                ; $6b76: $08 $25 $08
    dec h                                         ; $6b79: $25
    dec hl                                        ; $6b7a: $2b
    ld a, [bc]                                    ; $6b7b: $0a
    dec bc                                        ; $6b7c: $0b
    rst $38                                       ; $6b7d: $ff
    ld [$f14b], a                                 ; $6b7e: $ea $4b $f1
    pop hl                                        ; $6b81: $e1
    inc c                                         ; $6b82: $0c
    rst $38                                       ; $6b83: $ff
    rst $38                                       ; $6b84: $ff
    rst $20                                       ; $6b85: $e7
    and $f7                                       ; $6b86: $e6 $f7
    dec bc                                        ; $6b88: $0b
    dec bc                                        ; $6b89: $0b
    ld l, e                                       ; $6b8a: $6b
    db $fd                                        ; $6b8b: $fd
    ldh [rOCPD], a                                ; $6b8c: $e0 $6b
    ld c, e                                       ; $6b8e: $4b
    ld l, e                                       ; $6b8f: $6b
    ld c, e                                       ; $6b90: $4b
    ld h, b                                       ; $6b91: $60
    rst $38                                       ; $6b92: $ff
    pop hl                                        ; $6b93: $e1
    ret nz                                        ; $6b94: $c0

    ldh [$af], a                                  ; $6b95: $e0 $af
    ldh [$ca], a                                  ; $6b97: $e0 $ca
    rst $38                                       ; $6b99: $ff
    ret nz                                        ; $6b9a: $c0

    add sp, $0a                                   ; $6b9b: $e8 $0a
    ld l, e                                       ; $6b9d: $6b
    pop bc                                        ; $6b9e: $c1
    ldh [$f9], a                                  ; $6b9f: $e0 $f9
    dec bc                                        ; $6ba1: $0b
    call nz, $82e1                                ; $6ba2: $c4 $e1 $82
    ldh [rWX], a                                  ; $6ba5: $e0 $4b
    dec bc                                        ; $6ba7: $0b
    dec hl                                        ; $6ba8: $2b
    dec bc                                        ; $6ba9: $0b
    ld a, [bc]                                    ; $6baa: $0a
    add hl, bc                                    ; $6bab: $09
    ld a, [bc]                                    ; $6bac: $0a
    jp z, $80ff                                   ; $6bad: $ca $ff $80

    jp hl                                         ; $6bb0: $e9


    dec hl                                        ; $6bb1: $2b
    ld a, [hl]                                    ; $6bb2: $7e
    pop hl                                        ; $6bb3: $e1
    call nz, $81e2                                ; $6bb4: $c4 $e2 $81
    pop hl                                        ; $6bb7: $e1
    ld b, b                                       ; $6bb8: $40
    rst $38                                       ; $6bb9: $ff
    ret nz                                        ; $6bba: $c0

    ret nz                                        ; $6bbb: $c0

    rst $28                                       ; $6bbc: $ef
    db $fc                                        ; $6bbd: $fc
    db $e3                                        ; $6bbe: $e3
    ld b, c                                       ; $6bbf: $41
    pop hl                                        ; $6bc0: $e1
    or [hl]                                       ; $6bc1: $b6
    ld [c], a                                     ; $6bc2: $e2
    ret nz                                        ; $6bc3: $c0

    rst $38                                       ; $6bc4: $ff
    ld b, b                                       ; $6bc5: $40
    ld [$0b2b], a                                 ; $6bc6: $ea $2b $0b
    ld d, e                                       ; $6bc9: $53
    ld c, e                                       ; $6bca: $4b
    dec hl                                        ; $6bcb: $2b
    cp h                                          ; $6bcc: $bc
    pop hl                                        ; $6bcd: $e1
    inc a                                         ; $6bce: $3c
    pop hl                                        ; $6bcf: $e1
    dec hl                                        ; $6bd0: $2b
    call nz, Call_000_2ce1                        ; $6bd1: $c4 $e1 $2c
    jp z, Jump_000_0eff                           ; $6bd4: $ca $ff $0e

    add sp, -$19                                  ; $6bd7: $e8 $e7
    ld a, [bc]                                    ; $6bd9: $0a
    dec bc                                        ; $6bda: $0b
    dec hl                                        ; $6bdb: $2b
    ret                                           ; $6bdc: $c9


    ldh [$c0], a                                  ; $6bdd: $e0 $c0
    ld [c], a                                     ; $6bdf: $e2
    ld bc, $c0e1                                  ; $6be0: $01 $e1 $c0
    rst $38                                       ; $6be3: $ff

Jump_05e_6be4:
    ld [hl], b                                    ; $6be4: $70
    add b                                         ; $6be5: $80
    rst $28                                       ; $6be6: $ef
    set 0, b                                      ; $6be7: $cb $c0
    ret nz                                        ; $6be9: $c0

    db $e3                                        ; $6bea: $e3
    ld [hl], l                                    ; $6beb: $75
    pop bc                                        ; $6bec: $c1
    inc c                                         ; $6bed: $0c
    inc c                                         ; $6bee: $0c
    ld c, h                                       ; $6bef: $4c
    set 7, a                                      ; $6bf0: $cb $ff
    nop                                           ; $6bf2: $00
    ret nz                                        ; $6bf3: $c0

    set 0, b                                      ; $6bf4: $cb $c0
    pop hl                                        ; $6bf6: $e1
    add c                                         ; $6bf7: $81
    jp nz, $c1b8                                  ; $6bf8: $c2 $b8 $c1

    ret nz                                        ; $6bfb: $c0

    rst $38                                       ; $6bfc: $ff
    ret nz                                        ; $6bfd: $c0

    pop af                                        ; $6bfe: $f1
    ld b, l                                       ; $6bff: $45
    jp nz, $e282                                  ; $6c00: $c2 $82 $e2

    db $10                                        ; $6c03: $10
    rst $38                                       ; $6c04: $ff
    rst $38                                       ; $6c05: $ff
    add b                                         ; $6c06: $80
    ret nc                                        ; $6c07: $d0

    call nz, $c3a2                                ; $6c08: $c4 $a2 $c3
    ret nz                                        ; $6c0b: $c0

    ld l, h                                       ; $6c0c: $6c
    ret nc                                        ; $6c0d: $d0

    rst $38                                       ; $6c0e: $ff
    ret nz                                        ; $6c0f: $c0

    ret nc                                        ; $6c10: $d0

    cp [hl]                                       ; $6c11: $be
    pop bc                                        ; $6c12: $c1
    nop                                           ; $6c13: $00
    add e                                         ; $6c14: $83
    and d                                         ; $6c15: $a2
    add c                                         ; $6c16: $81
    rst $38                                       ; $6c17: $ff
    ret nz                                        ; $6c18: $c0

    di                                            ; $6c19: $f3
    cp a                                          ; $6c1a: $bf
    db $e3                                        ; $6c1b: $e3
    add l                                         ; $6c1c: $85
    and b                                         ; $6c1d: $a0
    pop de                                        ; $6c1e: $d1
    db $e3                                        ; $6c1f: $e3
    add b                                         ; $6c20: $80
    rst $18                                       ; $6c21: $df
    ret nz                                        ; $6c22: $c0

    xor l                                         ; $6c23: $ad
    adc b                                         ; $6c24: $88
    nop                                           ; $6c25: $00
    ret nz                                        ; $6c26: $c0

    cp d                                          ; $6c27: $ba
    pop hl                                        ; $6c28: $e1
    add b                                         ; $6c29: $80
    db $e3                                        ; $6c2a: $e3
    ld l, h                                       ; $6c2b: $6c
    ld a, [hl-]                                   ; $6c2c: $3a
    rst $38                                       ; $6c2d: $ff
    ret nz                                        ; $6c2e: $c0

    xor h                                         ; $6c2f: $ac
    ld a, l                                       ; $6c30: $7d
    add h                                         ; $6c31: $84
    dec hl                                        ; $6c32: $2b
    pop hl                                        ; $6c33: $e1
    dec bc                                        ; $6c34: $0b
    add l                                         ; $6c35: $85
    jp nz, $ffc1                                  ; $6c36: $c2 $c1 $ff

    ld b, b                                       ; $6c39: $40
    xor $c0                                       ; $6c3a: $ee $c0
    push hl                                       ; $6c3c: $e5
    dec bc                                        ; $6c3d: $0b
    inc l                                         ; $6c3e: $2c
    inc l                                         ; $6c3f: $2c
    nop                                           ; $6c40: $00

Call_05e_6c41:
    ld b, d                                       ; $6c41: $42
    ret nz                                        ; $6c42: $c0

    ld sp, hl                                     ; $6c43: $f9
    rst $18                                       ; $6c44: $df
    rst $38                                       ; $6c45: $ff
    rst $38                                       ; $6c46: $ff
    rst $38                                       ; $6c47: $ff
    rst $38                                       ; $6c48: $ff
    rst $38                                       ; $6c49: $ff
    rst $38                                       ; $6c4a: $ff
    rst $38                                       ; $6c4b: $ff
    rst $38                                       ; $6c4c: $ff
    rst $38                                       ; $6c4d: $ff
    rst $38                                       ; $6c4e: $ff
    rst $38                                       ; $6c4f: $ff
    rst $38                                       ; $6c50: $ff
    nop                                           ; $6c51: $00
    rst $38                                       ; $6c52: $ff
    rst $38                                       ; $6c53: $ff
    rst $38                                       ; $6c54: $ff
    rst $38                                       ; $6c55: $ff
    rst $38                                       ; $6c56: $ff
    rst $38                                       ; $6c57: $ff
    rst $38                                       ; $6c58: $ff
    rst $38                                       ; $6c59: $ff
    rst $38                                       ; $6c5a: $ff
    rst $38                                       ; $6c5b: $ff
    rst $38                                       ; $6c5c: $ff
    rst $38                                       ; $6c5d: $ff
    rst $38                                       ; $6c5e: $ff
    rst $38                                       ; $6c5f: $ff
    rst $38                                       ; $6c60: $ff
    rst $38                                       ; $6c61: $ff
    nop                                           ; $6c62: $00
    rst $38                                       ; $6c63: $ff
    rst $38                                       ; $6c64: $ff
    rst $38                                       ; $6c65: $ff
    rst $38                                       ; $6c66: $ff
    rst $38                                       ; $6c67: $ff
    rst $38                                       ; $6c68: $ff
    rst $38                                       ; $6c69: $ff
    rst $38                                       ; $6c6a: $ff
    rst $38                                       ; $6c6b: $ff

Jump_05e_6c6c:
    rst $38                                       ; $6c6c: $ff
    rst $38                                       ; $6c6d: $ff
    rst $38                                       ; $6c6e: $ff
    rst $38                                       ; $6c6f: $ff
    rst $38                                       ; $6c70: $ff
    rst $38                                       ; $6c71: $ff
    rst $38                                       ; $6c72: $ff
    nop                                           ; $6c73: $00
    rst $38                                       ; $6c74: $ff
    rst $38                                       ; $6c75: $ff
    rst $38                                       ; $6c76: $ff
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
    nop                                           ; $6c84: $00
    rst $38                                       ; $6c85: $ff
    rst $38                                       ; $6c86: $ff
    rst $38                                       ; $6c87: $ff
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
    nop                                           ; $6c95: $00
    rst $38                                       ; $6c96: $ff
    rst $38                                       ; $6c97: $ff
    rst $38                                       ; $6c98: $ff
    rst $38                                       ; $6c99: $ff
    rst $38                                       ; $6c9a: $ff
    rst $38                                       ; $6c9b: $ff
    rst $38                                       ; $6c9c: $ff
    rst $38                                       ; $6c9d: $ff
    rst $38                                       ; $6c9e: $ff
    rst $38                                       ; $6c9f: $ff
    rst $38                                       ; $6ca0: $ff
    rst $38                                       ; $6ca1: $ff
    rst $38                                       ; $6ca2: $ff
    rst $38                                       ; $6ca3: $ff
    rst $38                                       ; $6ca4: $ff
    rst $38                                       ; $6ca5: $ff
    nop                                           ; $6ca6: $00
    rst $38                                       ; $6ca7: $ff
    rst $38                                       ; $6ca8: $ff
    rst $38                                       ; $6ca9: $ff
    rst $38                                       ; $6caa: $ff
    rst $38                                       ; $6cab: $ff
    rst $38                                       ; $6cac: $ff
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
    nop                                           ; $6cb7: $00
    rst $38                                       ; $6cb8: $ff
    rst $38                                       ; $6cb9: $ff
    rst $38                                       ; $6cba: $ff
    rst $38                                       ; $6cbb: $ff
    rst $38                                       ; $6cbc: $ff
    rst $38                                       ; $6cbd: $ff
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
    nop                                           ; $6cc8: $00
    rst $38                                       ; $6cc9: $ff
    rst $38                                       ; $6cca: $ff
    rst $38                                       ; $6ccb: $ff
    rst $38                                       ; $6ccc: $ff
    rst $38                                       ; $6ccd: $ff
    rst $38                                       ; $6cce: $ff
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
    nop                                           ; $6cd9: $00
    rst $38                                       ; $6cda: $ff
    rst $38                                       ; $6cdb: $ff
    rst $38                                       ; $6cdc: $ff
    rst $38                                       ; $6cdd: $ff
    rst $38                                       ; $6cde: $ff
    rst $38                                       ; $6cdf: $ff
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
    nop                                           ; $6cea: $00
    rst $38                                       ; $6ceb: $ff
    rst $38                                       ; $6cec: $ff
    rst $38                                       ; $6ced: $ff
    rst $38                                       ; $6cee: $ff
    rst $38                                       ; $6cef: $ff
    rst $38                                       ; $6cf0: $ff
    rst $38                                       ; $6cf1: $ff
    rst $38                                       ; $6cf2: $ff
    rst $38                                       ; $6cf3: $ff
    rst $38                                       ; $6cf4: $ff

Jump_05e_6cf5:
    rst $38                                       ; $6cf5: $ff
    rst $38                                       ; $6cf6: $ff
    rst $38                                       ; $6cf7: $ff
    rst $38                                       ; $6cf8: $ff
    rst $38                                       ; $6cf9: $ff
    rst $38                                       ; $6cfa: $ff
    nop                                           ; $6cfb: $00
    rst $38                                       ; $6cfc: $ff
    rst $38                                       ; $6cfd: $ff
    rst $38                                       ; $6cfe: $ff
    rst $38                                       ; $6cff: $ff
    rst $38                                       ; $6d00: $ff
    rst $38                                       ; $6d01: $ff
    rst $38                                       ; $6d02: $ff
    rst $38                                       ; $6d03: $ff
    rst $38                                       ; $6d04: $ff
    db $f4                                        ; $6d05: $f4
    nop                                           ; $6d06: $00
    nop                                           ; $6d07: $00
    nop                                           ; $6d08: $00
    rst $18                                       ; $6d09: $df
    ld e, d                                       ; $6d0a: $5a
    ld e, e                                       ; $6d0b: $5b
    ld e, e                                       ; $6d0c: $5b
    ld h, b                                       ; $6d0d: $60
    ld sp, $e7ff                                  ; $6d0e: $31 $ff $e7
    ld e, a                                       ; $6d11: $5f
    ld e, e                                       ; $6d12: $5b
    ld a, [c]                                     ; $6d13: $f2
    rst $38                                       ; $6d14: $ff
    ldh [rP1], a                                  ; $6d15: $e0 $00
    rst $38                                       ; $6d17: $ff
    rst $38                                       ; $6d18: $ff
    rst $20                                       ; $6d19: $e7
    and $5b                                       ; $6d1a: $e6 $5b
    ld e, e                                       ; $6d1c: $5b
    ld e, a                                       ; $6d1d: $5f
    ld sp, $31ff                                  ; $6d1e: $31 $ff $31
    ld c, l                                       ; $6d21: $4d
    ld a, [hl-]                                   ; $6d22: $3a
    ld d, l                                       ; $6d23: $55
    ld d, h                                       ; $6d24: $54
    ld d, h                                       ; $6d25: $54
    ld d, l                                       ; $6d26: $55
    ld d, l                                       ; $6d27: $55
    rra                                           ; $6d28: $1f
    dec sp                                        ; $6d29: $3b
    ld c, l                                       ; $6d2a: $4d
    ld sp, $5b5e                                  ; $6d2b: $31 $5e $5b
    xor a                                         ; $6d2e: $af
    ldh [$ca], a                                  ; $6d2f: $e0 $ca
    rst $38                                       ; $6d31: $ff
    ret nz                                        ; $6d32: $c0

    add sp, -$41                                  ; $6d33: $e8 $bf
    ld e, d                                       ; $6d35: $5a
    ld e, [hl]                                    ; $6d36: $5e
    ld sp, $324d                                  ; $6d37: $31 $4d $32
    jr nc, @+$01                                  ; $6d3a: $30 $ff

    db $e3                                        ; $6d3c: $e3
    ld [hl-], a                                   ; $6d3d: $32
    ccf                                           ; $6d3e: $3f
    ld c, l                                       ; $6d3f: $4d
    ld sp, $5b60                                  ; $6d40: $31 $60 $5b
    ld e, d                                       ; $6d43: $5a
    ld e, d                                       ; $6d44: $5a
    jp z, $80ff                                   ; $6d45: $ca $ff $80

    jp hl                                         ; $6d48: $e9


    ld a, a                                       ; $6d49: $7f
    ld h, c                                       ; $6d4a: $61
    ld sp, $3039                                  ; $6d4b: $31 $39 $30
    jr nc, @+$6e                                  ; $6d4e: $30 $6c

    ld l, h                                       ; $6d50: $6c
    cp l                                          ; $6d51: $bd
    ld [c], a                                     ; $6d52: $e2
    ccf                                           ; $6d53: $3f
    add hl, sp                                    ; $6d54: $39
    ld sp, $6231                                  ; $6d55: $31 $31 $62
    ld h, d                                       ; $6d58: $62
    ld h, d                                       ; $6d59: $62
    jp z, $c0ff                                   ; $6d5a: $ca $ff $c0

    db $eb                                        ; $6d5d: $eb
    cp a                                          ; $6d5e: $bf
    ld d, e                                       ; $6d5f: $53
    jr nc, @+$6f                                  ; $6d60: $30 $6d

    ld l, h                                       ; $6d62: $6c
    ld l, h                                       ; $6d63: $6c
    ld l, d                                       ; $6d64: $6a
    ld a, h                                       ; $6d65: $7c
    pop hl                                        ; $6d66: $e1
    ld d, d                                       ; $6d67: $52
    ld a, b                                       ; $6d68: $78
    push af                                       ; $6d69: $f5
    jp nz, $ffca                                  ; $6d6a: $c2 $ca $ff

    ld b, b                                       ; $6d6d: $40
    jp hl                                         ; $6d6e: $e9


    ld h, c                                       ; $6d6f: $61
    ld sp, $6d52                                  ; $6d70: $31 $52 $6d
    ret nz                                        ; $6d73: $c0

    pop hl                                        ; $6d74: $e1
    ld a, [hl]                                    ; $6d75: $7e
    cp a                                          ; $6d76: $bf
    pop hl                                        ; $6d77: $e1
    ld d, d                                       ; $6d78: $52
    ld sp, $1429                                  ; $6d79: $31 $29 $14
    inc d                                         ; $6d7c: $14
    add hl, hl                                    ; $6d7d: $29
    jp z, $e2ff                                   ; $6d7e: $ca $ff $e2

    add sp, -$19                                  ; $6d81: $e8 $e7
    ld e, d                                       ; $6d83: $5a
    ld b, b                                       ; $6d84: $40
    ldh [$c0], a                                  ; $6d85: $e0 $c0
    db $e4                                        ; $6d87: $e4
    ld a, [hl]                                    ; $6d88: $7e
    ldh [$39], a                                  ; $6d89: $e0 $39
    ld sp, $a72b                                  ; $6d8b: $31 $2b $a7
    inc h                                         ; $6d8e: $24
    inc h                                         ; $6d8f: $24
    dec hl                                        ; $6d90: $2b
    jp z, $80ff                                   ; $6d91: $ca $ff $80

    db $eb                                        ; $6d94: $eb
    ld d, e                                       ; $6d95: $53
    ret nz                                        ; $6d96: $c0

    db $e4                                        ; $6d97: $e4
    ld l, d                                       ; $6d98: $6a
    ccf                                           ; $6d99: $3f
    ld b, d                                       ; $6d9a: $42
    scf                                           ; $6d9b: $37
    ld sp, $2c2b                                  ; $6d9c: $31 $2b $2c
    jr nz, @-$33                                  ; $6d9f: $20 $cb

    rst $38                                       ; $6da1: $ff
    nop                                           ; $6da2: $00
    db $ed                                        ; $6da3: $ed
    ld l, a                                       ; $6da4: $6f
    ld l, l                                       ; $6da5: $6d
    ld l, l                                       ; $6da6: $6d
    jr nc, jr_05e_6dd9                            ; $6da7: $30 $30

    pop bc                                        ; $6da9: $c1
    pop hl                                        ; $6daa: $e1
    inc a                                         ; $6dab: $3c
    ld sp, $ffc0                                  ; $6dac: $31 $c0 $ff
    ld [c], a                                     ; $6daf: $e2
    add b                                         ; $6db0: $80
    ret nc                                        ; $6db1: $d0

    ld d, d                                       ; $6db2: $52
    pop bc                                        ; $6db3: $c1
    ldh [$bf], a                                  ; $6db4: $e0 $bf
    ldh [$c1], a                                  ; $6db6: $e0 $c1
    ldh [rNR11], a                                ; $6db8: $e0 $11
    ld [de], a                                    ; $6dba: $12
    ld d, $f1                                     ; $6dbb: $16 $f1
    jr nz, @-$3e                                  ; $6dbd: $20 $c0

    rst $38                                       ; $6dbf: $ff
    ret nz                                        ; $6dc0: $c0

    xor $01                                       ; $6dc1: $ee $01
    jp Jump_000_3152                              ; $6dc3: $c3 $52 $31


    dec d                                         ; $6dc6: $15
    ld d, $b3                                     ; $6dc7: $16 $b3
    jr z, jr_05e_6deb                             ; $6dc9: $28 $20

    ret nz                                        ; $6dcb: $c0

    rst $38                                       ; $6dcc: $ff
    ret nz                                        ; $6dcd: $c0

    adc $39                                       ; $6dce: $ce $39
    ld l, h                                       ; $6dd0: $6c
    rst $38                                       ; $6dd1: $ff

jr_05e_6dd2:
    ld [c], a                                     ; $6dd2: $e2
    add hl, sp                                    ; $6dd3: $39
    ld h, e                                       ; $6dd4: $63
    ld sp, $c117                                  ; $6dd5: $31 $17 $c1
    pop hl                                        ; $6dd8: $e1

jr_05e_6dd9:
    ret nz                                        ; $6dd9: $c0

    rst $38                                       ; $6dda: $ff
    add b                                         ; $6ddb: $80
    call Call_000_36af                            ; $6ddc: $cd $af $36
    cp a                                          ; $6ddf: $bf
    pop hl                                        ; $6de0: $e1
    jp $af36                                      ; $6de1: $c3 $36 $af


    inc bc                                        ; $6de4: $03
    pop hl                                        ; $6de5: $e1
    ret nz                                        ; $6de6: $c0

    ldh [$80], a                                  ; $6de7: $e0 $80
    rst $18                                       ; $6de9: $df
    add b                                         ; $6dea: $80

jr_05e_6deb:
    xor h                                         ; $6deb: $ac
    add c                                         ; $6dec: $81
    ld l, a                                       ; $6ded: $6f
    cp a                                          ; $6dee: $bf
    ld l, [hl]                                    ; $6def: $6e
    ld d, l                                       ; $6df0: $55
    ld d, h                                       ; $6df1: $54
    ld l, [hl]                                    ; $6df2: $6e
    ld l, a                                       ; $6df3: $6f
    add c                                         ; $6df4: $81
    ret nz                                        ; $6df5: $c0

    db $e3                                        ; $6df6: $e3
    jr z, jr_05e_6dd2                             ; $6df7: $28 $d9

    rla                                           ; $6df9: $17
    jp z, $c0ff                                   ; $6dfa: $ca $ff $c0

    xor e                                         ; $6dfd: $ab
    and b                                         ; $6dfe: $a0
    add b                                         ; $6dff: $80
    rst $38                                       ; $6e00: $ff
    ld [c], a                                     ; $6e01: $e2
    and b                                         ; $6e02: $a0

Call_05e_6e03:
    ld sp, $178d                                  ; $6e03: $31 $8d $17
    add b                                         ; $6e06: $80
    pop hl                                        ; $6e07: $e1
    ld d, $15                                     ; $6e08: $16 $15
    jp z, $c0ff                                   ; $6e0a: $ca $ff $c0

    xor e                                         ; $6e0d: $ab
    ret nz                                        ; $6e0e: $c0

    and $31                                       ; $6e0f: $e6 $31
    rra                                           ; $6e11: $1f
    dec bc                                        ; $6e12: $0b
    ld a, [bc]                                    ; $6e13: $0a
    dec b                                         ; $6e14: $05
    ld a, [bc]                                    ; $6e15: $0a
    dec bc                                        ; $6e16: $0b
    ld b, b                                       ; $6e17: $40
    cp a                                          ; $6e18: $bf
    rst $38                                       ; $6e19: $ff
    rst $38                                       ; $6e1a: $ff
    rst $38                                       ; $6e1b: $ff
    rst $38                                       ; $6e1c: $ff
    nop                                           ; $6e1d: $00
    rst $38                                       ; $6e1e: $ff
    rst $38                                       ; $6e1f: $ff
    rst $38                                       ; $6e20: $ff
    rst $38                                       ; $6e21: $ff
    rst $38                                       ; $6e22: $ff
    rst $38                                       ; $6e23: $ff
    rst $38                                       ; $6e24: $ff
    rst $38                                       ; $6e25: $ff
    rst $38                                       ; $6e26: $ff
    rst $38                                       ; $6e27: $ff
    rst $38                                       ; $6e28: $ff
    rst $38                                       ; $6e29: $ff
    rst $38                                       ; $6e2a: $ff
    rst $38                                       ; $6e2b: $ff
    rst $38                                       ; $6e2c: $ff
    rst $38                                       ; $6e2d: $ff
    nop                                           ; $6e2e: $00
    rst $38                                       ; $6e2f: $ff
    rst $38                                       ; $6e30: $ff
    rst $38                                       ; $6e31: $ff
    rst $38                                       ; $6e32: $ff
    rst $38                                       ; $6e33: $ff
    rst $38                                       ; $6e34: $ff
    rst $38                                       ; $6e35: $ff

Call_05e_6e36:
    rst $38                                       ; $6e36: $ff
    rst $38                                       ; $6e37: $ff
    rst $38                                       ; $6e38: $ff
    rst $38                                       ; $6e39: $ff
    rst $38                                       ; $6e3a: $ff
    rst $38                                       ; $6e3b: $ff
    rst $38                                       ; $6e3c: $ff
    rst $38                                       ; $6e3d: $ff
    rst $38                                       ; $6e3e: $ff
    nop                                           ; $6e3f: $00
    rst $38                                       ; $6e40: $ff
    rst $38                                       ; $6e41: $ff
    rst $38                                       ; $6e42: $ff
    rst $38                                       ; $6e43: $ff
    rst $38                                       ; $6e44: $ff
    rst $38                                       ; $6e45: $ff
    rst $38                                       ; $6e46: $ff
    rst $38                                       ; $6e47: $ff
    rst $38                                       ; $6e48: $ff
    rst $38                                       ; $6e49: $ff
    rst $38                                       ; $6e4a: $ff
    rst $38                                       ; $6e4b: $ff
    rst $38                                       ; $6e4c: $ff
    rst $38                                       ; $6e4d: $ff
    rst $38                                       ; $6e4e: $ff
    rst $38                                       ; $6e4f: $ff
    nop                                           ; $6e50: $00
    rst $38                                       ; $6e51: $ff
    rst $38                                       ; $6e52: $ff
    rst $38                                       ; $6e53: $ff
    rst $38                                       ; $6e54: $ff
    rst $38                                       ; $6e55: $ff
    rst $38                                       ; $6e56: $ff
    rst $38                                       ; $6e57: $ff
    rst $38                                       ; $6e58: $ff
    rst $38                                       ; $6e59: $ff
    rst $38                                       ; $6e5a: $ff
    rst $38                                       ; $6e5b: $ff
    rst $38                                       ; $6e5c: $ff
    rst $38                                       ; $6e5d: $ff
    rst $38                                       ; $6e5e: $ff
    rst $38                                       ; $6e5f: $ff
    rst $38                                       ; $6e60: $ff
    nop                                           ; $6e61: $00
    rst $38                                       ; $6e62: $ff
    rst $38                                       ; $6e63: $ff
    rst $38                                       ; $6e64: $ff
    rst $38                                       ; $6e65: $ff
    rst $38                                       ; $6e66: $ff
    rst $38                                       ; $6e67: $ff
    rst $38                                       ; $6e68: $ff
    rst $38                                       ; $6e69: $ff
    rst $38                                       ; $6e6a: $ff
    rst $38                                       ; $6e6b: $ff
    rst $38                                       ; $6e6c: $ff
    rst $38                                       ; $6e6d: $ff
    rst $38                                       ; $6e6e: $ff
    rst $38                                       ; $6e6f: $ff
    rst $38                                       ; $6e70: $ff
    rst $38                                       ; $6e71: $ff
    nop                                           ; $6e72: $00
    rst $38                                       ; $6e73: $ff
    rst $38                                       ; $6e74: $ff
    rst $38                                       ; $6e75: $ff
    rst $38                                       ; $6e76: $ff
    rst $38                                       ; $6e77: $ff
    rst $38                                       ; $6e78: $ff
    rst $38                                       ; $6e79: $ff
    rst $38                                       ; $6e7a: $ff
    rst $38                                       ; $6e7b: $ff
    rst $38                                       ; $6e7c: $ff
    rst $38                                       ; $6e7d: $ff
    rst $38                                       ; $6e7e: $ff
    rst $38                                       ; $6e7f: $ff
    rst $38                                       ; $6e80: $ff
    rst $38                                       ; $6e81: $ff
    rst $38                                       ; $6e82: $ff
    nop                                           ; $6e83: $00
    rst $38                                       ; $6e84: $ff
    rst $38                                       ; $6e85: $ff
    rst $38                                       ; $6e86: $ff
    rst $38                                       ; $6e87: $ff
    rst $38                                       ; $6e88: $ff
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
    nop                                           ; $6e94: $00
    rst $38                                       ; $6e95: $ff
    rst $38                                       ; $6e96: $ff
    rst $38                                       ; $6e97: $ff
    rst $38                                       ; $6e98: $ff
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
    nop                                           ; $6ea5: $00
    rst $38                                       ; $6ea6: $ff
    rst $38                                       ; $6ea7: $ff
    rst $38                                       ; $6ea8: $ff
    rst $38                                       ; $6ea9: $ff
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
    rst $38                                       ; $6eb4: $ff
    rst $38                                       ; $6eb5: $ff
    nop                                           ; $6eb6: $00
    rst $38                                       ; $6eb7: $ff
    rst $38                                       ; $6eb8: $ff
    rst $38                                       ; $6eb9: $ff
    rst $38                                       ; $6eba: $ff
    rst $38                                       ; $6ebb: $ff
    rst $38                                       ; $6ebc: $ff
    rst $38                                       ; $6ebd: $ff
    rst $38                                       ; $6ebe: $ff
    rst $38                                       ; $6ebf: $ff
    rst $38                                       ; $6ec0: $ff
    rst $38                                       ; $6ec1: $ff
    rst $38                                       ; $6ec2: $ff
    rst $38                                       ; $6ec3: $ff
    rst $38                                       ; $6ec4: $ff
    rst $38                                       ; $6ec5: $ff
    rst $38                                       ; $6ec6: $ff
    nop                                           ; $6ec7: $00
    rst $38                                       ; $6ec8: $ff
    rst $38                                       ; $6ec9: $ff
    rst $38                                       ; $6eca: $ff
    rst $38                                       ; $6ecb: $ff
    rst $38                                       ; $6ecc: $ff
    rst $38                                       ; $6ecd: $ff
    rst $38                                       ; $6ece: $ff
    rst $38                                       ; $6ecf: $ff
    rst $38                                       ; $6ed0: $ff
    rst $38                                       ; $6ed1: $ff
    rst $38                                       ; $6ed2: $ff
    rst $38                                       ; $6ed3: $ff
    rst $38                                       ; $6ed4: $ff

Call_05e_6ed5:
    rst $38                                       ; $6ed5: $ff
    rst $38                                       ; $6ed6: $ff
    rst $38                                       ; $6ed7: $ff
    nop                                           ; $6ed8: $00
    rst $38                                       ; $6ed9: $ff
    db $f4                                        ; $6eda: $f4
    nop                                           ; $6edb: $00
    nop                                           ; $6edc: $00
    nop                                           ; $6edd: $00
    and l                                         ; $6ede: $a5
    nop                                           ; $6edf: $00
    rst $38                                       ; $6ee0: $ff
    push hl                                       ; $6ee1: $e5
    ld [hl-], a                                   ; $6ee2: $32
    or $e6                                        ; $6ee3: $f6 $e6
    rst $30                                       ; $6ee5: $f7
    rst $20                                       ; $6ee6: $e7
    dec [hl]                                      ; $6ee7: $35
    db $ec                                        ; $6ee8: $ec
    xor $37                                       ; $6ee9: $ee $37
    db $ec                                        ; $6eeb: $ec
    jp c, $c7f0                                   ; $6eec: $da $f0 $c7

    add sp, $33                                   ; $6eef: $e8 $33
    ld sp, $f2e0                                  ; $6ef1: $31 $e0 $f2
    ld [hl], $30                                  ; $6ef4: $36 $30
    scf                                           ; $6ef6: $37
    cp a                                          ; $6ef7: $bf
    ld h, $20                                     ; $6ef8: $26 $20
    daa                                           ; $6efa: $27
    db $10                                        ; $6efb: $10
    ld d, $17                                     ; $6efc: $16 $17
    jp nz, Jump_000_34f6                          ; $6efe: $c2 $f6 $34

    rst $38                                       ; $6f01: $ff
    ld [hl], $32                                  ; $6f02: $36 $32
    jr nc, jr_05e_6f3d                            ; $6f04: $30 $37

    ld sp, $3133                                  ; $6f06: $31 $33 $31
    inc sp                                        ; $6f09: $33
    nop                                           ; $6f0a: $00
    and b                                         ; $6f0b: $a0
    ei                                            ; $6f0c: $fb
    rst $38                                       ; $6f0d: $ff
    rst $28                                       ; $6f0e: $ef
    nop                                           ; $6f0f: $00
    nop                                           ; $6f10: $00
    nop                                           ; $6f11: $00
    ld a, [de]                                    ; $6f12: $1a
    ld l, a                                       ; $6f13: $6f
    ld c, d                                       ; $6f14: $4a
    ld l, a                                       ; $6f15: $6f
    and e                                         ; $6f16: $a3
    ld [hl], c                                    ; $6f17: $71
    dec e                                         ; $6f18: $1d
    ld [hl], e                                    ; $6f19: $73
    ret nz                                        ; $6f1a: $c0

    rra                                           ; $6f1b: $1f
    adc d                                         ; $6f1c: $8a
    inc bc                                        ; $6f1d: $03
    add b                                         ; $6f1e: $80
    ld [bc], a                                    ; $6f1f: $02
    ld h, b                                       ; $6f20: $60
    ld bc, $03ef                                  ; $6f21: $01 $ef $03
    db $f4                                        ; $6f24: $f4
    inc bc                                        ; $6f25: $03
    adc d                                         ; $6f26: $8a
    inc bc                                        ; $6f27: $03
    add b                                         ; $6f28: $80
    ld [bc], a                                    ; $6f29: $02
    rra                                           ; $6f2a: $1f
    ld [bc], a                                    ; $6f2b: $02
    ld c, e                                       ; $6f2c: $4b
    ld c, $38                                     ; $6f2d: $0e $38
    ld bc, $038a                                  ; $6f2f: $01 $8a $03
    ld [$0825], sp                                ; $6f32: $08 $25 $08
    dec h                                         ; $6f35: $25
    ld [$0825], sp                                ; $6f36: $08 $25 $08
    dec h                                         ; $6f39: $25
    ld [$0825], sp                                ; $6f3a: $08 $25 $08

jr_05e_6f3d:
    dec h                                         ; $6f3d: $25
    ld [$0825], sp                                ; $6f3e: $08 $25 $08
    dec h                                         ; $6f41: $25
    ld [$0825], sp                                ; $6f42: $08 $25 $08
    dec h                                         ; $6f45: $25
    ld [$0825], sp                                ; $6f46: $08 $25 $08
    dec h                                         ; $6f49: $25
    db $ed                                        ; $6f4a: $ed
    inc l                                         ; $6f4b: $2c
    rst $38                                       ; $6f4c: $ff
    rst $20                                       ; $6f4d: $e7
    inc c                                         ; $6f4e: $0c
    dec bc                                        ; $6f4f: $0b
    rst $38                                       ; $6f50: $ff
    ldh [$2b], a                                  ; $6f51: $e0 $2b
    dec hl                                        ; $6f53: $2b
    dec bc                                        ; $6f54: $0b
    adc e                                         ; $6f55: $8b
    dec bc                                        ; $6f56: $0b
    inc c                                         ; $6f57: $0c
    rst $38                                       ; $6f58: $ff

jr_05e_6f59:
    ldh [$4c], a                                  ; $6f59: $e0 $4c
    db $fd                                        ; $6f5b: $fd
    ldh [$fc], a                                  ; $6f5c: $e0 $fc
    ldh [$f5], a                                  ; $6f5e: $e0 $f5
    ldh [$2c], a                                  ; $6f60: $e0 $2c
    ldh a, [$fa]                                  ; $6f62: $f0 $fa
    ld [c], a                                     ; $6f64: $e2
    ldh a, [$ed]                                  ; $6f65: $f0 $ed
    ei                                            ; $6f67: $fb
    push hl                                       ; $6f68: $e5
    pop bc                                        ; $6f69: $c1
    db $ec                                        ; $6f6a: $ec
    ld l, e                                       ; $6f6b: $6b
    ld c, e                                       ; $6f6c: $4b
    dec bc                                        ; $6f6d: $0b
    dec hl                                        ; $6f6e: $2b
    inc b                                         ; $6f6f: $04
    ret nz                                        ; $6f70: $c0

    ld [c], a                                     ; $6f71: $e2
    jp nz, Jump_05e_4ce1                          ; $6f72: $c2 $e1 $4c

    ld [c], a                                     ; $6f75: $e2
    ldh [$c0], a                                  ; $6f76: $e0 $c0
    pop hl                                        ; $6f78: $e1
    ld a, [$f0e1]                                 ; $6f79: $fa $e1 $f0
    xor $c0                                       ; $6f7c: $ee $c0
    db $ed                                        ; $6f7e: $ed
    cp $82                                        ; $6f7f: $fe $82
    pop hl                                        ; $6f81: $e1
    ld l, e                                       ; $6f82: $6b
    ld l, e                                       ; $6f83: $6b
    ld l, e                                       ; $6f84: $6b
    ld c, e                                       ; $6f85: $4b
    ld c, e                                       ; $6f86: $4b
    dec bc                                        ; $6f87: $0b
    ld c, e                                       ; $6f88: $4b
    add b                                         ; $6f89: $80
    ret nz                                        ; $6f8a: $c0

    and $6b                                       ; $6f8b: $e6 $6b
    pop hl                                        ; $6f8d: $e1
    sbc [hl]                                      ; $6f8e: $9e
    ld [c], a                                     ; $6f8f: $e2
    ldh a, [$f0]                                  ; $6f90: $f0 $f0
    add b                                         ; $6f92: $80
    db $ec                                        ; $6f93: $ec
    ld b, e                                       ; $6f94: $43
    ldh [$c2], a                                  ; $6f95: $e0 $c2
    ldh [$0b], a                                  ; $6f97: $e0 $0b
    ld bc, $c04b                                  ; $6f99: $01 $4b $c0
    push hl                                       ; $6f9c: $e5
    ld b, b                                       ; $6f9d: $40
    ld [c], a                                     ; $6f9e: $e2
    add a                                         ; $6f9f: $87
    ld [c], a                                     ; $6fa0: $e2
    pop bc                                        ; $6fa1: $c1
    db $e4                                        ; $6fa2: $e4
    ldh a, [$ec]                                  ; $6fa3: $f0 $ec
    ret nz                                        ; $6fa5: $c0

    ld a, [c]                                     ; $6fa6: $f2
    jp nz, $03e0                                  ; $6fa7: $c2 $e0 $03

    ld c, e                                       ; $6faa: $4b
    ld l, e                                       ; $6fab: $6b
    nop                                           ; $6fac: $00
    db $e3                                        ; $6fad: $e3
    ld b, b                                       ; $6fae: $40
    db $e3                                        ; $6faf: $e3
    rra                                           ; $6fb0: $1f
    db $e4                                        ; $6fb1: $e4
    ldh a, [$f1]                                  ; $6fb2: $f0 $f1
    add sp, -$3c                                  ; $6fb4: $e8 $c4
    add c                                         ; $6fb6: $81
    ld [$4100], a                                 ; $6fb7: $ea $00 $41
    pop hl                                        ; $6fba: $e1
    ret nz                                        ; $6fbb: $c0

    ret z                                         ; $6fbc: $c8

    cp a                                          ; $6fbd: $bf
    db $e3                                        ; $6fbe: $e3
    pop de                                        ; $6fbf: $d1
    jp $edf0                                      ; $6fc0: $c3 $f0 $ed


    ret nz                                        ; $6fc3: $c0

    call z, $e5c0                                 ; $6fc4: $cc $c0 $e5
    ld a, a                                       ; $6fc7: $7f
    ret nz                                        ; $6fc8: $c0

    ldh [$80], a                                  ; $6fc9: $e0 $80
    add sp, $7f                                   ; $6fcb: $e8 $7f
    pop bc                                        ; $6fcd: $c1
    add b                                         ; $6fce: $80
    jp hl                                         ; $6fcf: $e9


    ldh a, [$e9]                                  ; $6fd0: $f0 $e9
    ret nz                                        ; $6fd2: $c0

    xor $2b                                       ; $6fd3: $ee $2b
    ld l, e                                       ; $6fd5: $6b
    ld c, e                                       ; $6fd6: $4b
    jr nc, jr_05e_6f59                            ; $6fd7: $30 $80

    add sp, -$40                                  ; $6fd9: $e8 $c0
    ei                                            ; $6fdb: $fb
    inc a                                         ; $6fdc: $3c
    rst $00                                       ; $6fdd: $c7
    ret nz                                        ; $6fde: $c0

    add sp, $2b                                   ; $6fdf: $e8 $2b
    ld c, e                                       ; $6fe1: $4b
    ld b, c                                       ; $6fe2: $41
    ret nz                                        ; $6fe3: $c0

    ld b, b                                       ; $6fe4: $40
    jp hl                                         ; $6fe5: $e9


    jr c, jr_05e_7039                             ; $6fe6: $38 $51

    jp hl                                         ; $6fe8: $e9


    ldh a, [$eb]                                  ; $6fe9: $f0 $eb
    ret nz                                        ; $6feb: $c0

    pop af                                        ; $6fec: $f1
    dec bc                                        ; $6fed: $0b
    dec hl                                        ; $6fee: $2b
    ld c, e                                       ; $6fef: $4b
    jp $80a1                                      ; $6ff0: $c3 $a1 $80


    jp hl                                         ; $6ff3: $e9


    nop                                           ; $6ff4: $00
    sub $a9                                       ; $6ff5: $d6 $a9
    ldh a, [$ed]                                  ; $6ff7: $f0 $ed
    ret nz                                        ; $6ff9: $c0

    ldh a, [$84]                                  ; $6ffa: $f0 $84
    and c                                         ; $6ffc: $a1
    nop                                           ; $6ffd: $00
    jp hl                                         ; $6ffe: $e9


    ret nc                                        ; $6fff: $d0

    jp z, $ebf0                                   ; $7000: $ca $f0 $eb

    ld a, e                                       ; $7003: $7b
    and [hl]                                      ; $7004: $a6
    ld b, $40                                     ; $7005: $06 $40
    and h                                         ; $7007: $a4
    ld l, h                                       ; $7008: $6c
    ld c, h                                       ; $7009: $4c
    ld b, h                                       ; $700a: $44
    and h                                         ; $700b: $a4
    inc a                                         ; $700c: $3c
    and c                                         ; $700d: $a1
    ld b, b                                       ; $700e: $40
    and [hl]                                      ; $700f: $a6
    add b                                         ; $7010: $80
    call z, $ea2f                                 ; $7011: $cc $2f $ea
    nop                                           ; $7014: $00
    ld b, b                                       ; $7015: $40
    xor l                                         ; $7016: $ad
    inc bc                                        ; $7017: $03
    and e                                         ; $7018: $a3
    cp [hl]                                       ; $7019: $be
    ld [c], a                                     ; $701a: $e2
    rlca                                          ; $701b: $07
    jp nz, $fb80                                  ; $701c: $c2 $80 $fb

    nop                                           ; $701f: $00
    or b                                          ; $7020: $b0
    add h                                         ; $7021: $84
    ld [c], a                                     ; $7022: $e2
    jp nz, Jump_000_0180                          ; $7023: $c2 $80 $01

    ld l, e                                       ; $7026: $6b
    ret nz                                        ; $7027: $c0

    ldh [rLY], a                                  ; $7028: $e0 $44
    pop bc                                        ; $702a: $c1
    cp $e1                                        ; $702b: $fe $e1
    ld [bc], a                                    ; $702d: $02
    rst $00                                       ; $702e: $c7
    ldh a, [$eb]                                  ; $702f: $f0 $eb
    ld a, e                                       ; $7031: $7b
    and a                                         ; $7032: $a7
    add b                                         ; $7033: $80
    adc b                                         ; $7034: $88
    ld c, $43                                     ; $7035: $0e $43
    db $e3                                        ; $7037: $e3
    ld l, e                                       ; $7038: $6b

jr_05e_7039:
    dec hl                                        ; $7039: $2b
    ld a, [bc]                                    ; $703a: $0a
    add c                                         ; $703b: $81
    add e                                         ; $703c: $83
    ld a, a                                       ; $703d: $7f
    jp z, $edf0                                   ; $703e: $ca $f0 $ed

    ret nz                                        ; $7041: $c0

    pop af                                        ; $7042: $f1
    ld c, $3d                                     ; $7043: $0e $3d
    pop hl                                        ; $7045: $e1
    ld l, e                                       ; $7046: $6b
    ld l, e                                       ; $7047: $6b
    ld a, [bc]                                    ; $7048: $0a
    ld b, b                                       ; $7049: $40
    pop hl                                        ; $704a: $e1
    add b                                         ; $704b: $80
    db $e3                                        ; $704c: $e3
    add d                                         ; $704d: $82
    xor c                                         ; $704e: $a9
    ldh a, [$eb]                                  ; $704f: $f0 $eb
    nop                                           ; $7051: $00
    ld a, l                                       ; $7052: $7d
    add a                                         ; $7053: $87
    push de                                       ; $7054: $d5
    push hl                                       ; $7055: $e5
    inc de                                        ; $7056: $13
    add d                                         ; $7057: $82
    ret z                                         ; $7058: $c8

    add sp, $00                                   ; $7059: $e8 $00
    adc e                                         ; $705b: $8b
    call $c08a                                    ; $705c: $cd $8a $c0
    ld [$6ed5], a                                 ; $705f: $ea $d5 $6e
    nop                                           ; $7062: $00
    rst $00                                       ; $7063: $c7
    db $ec                                        ; $7064: $ec
    nop                                           ; $7065: $00
    add a                                         ; $7066: $87
    ld a, a                                       ; $7067: $7f
    call nc, Call_05e_6ed5                        ; $7068: $d4 $d5 $6e
    rst $00                                       ; $706b: $c7
    ld l, d                                       ; $706c: $6a
    nop                                           ; $706d: $00
    add h                                         ; $706e: $84
    ld l, a                                       ; $706f: $6f
    adc $3c                                       ; $7070: $ce $3c
    xor d                                         ; $7072: $aa
    nop                                           ; $7073: $00
    push de                                       ; $7074: $d5
    ld l, e                                       ; $7075: $6b
    rst $00                                       ; $7076: $c7
    ld l, l                                       ; $7077: $6d
    db $ec                                        ; $7078: $ec
    push hl                                       ; $7079: $e5
    ld l, a                                       ; $707a: $6f
    jp z, $89fc                                   ; $707b: $ca $fc $89

    push de                                       ; $707e: $d5
    ld l, [hl]                                    ; $707f: $6e
    jr jr_05e_70ec                                ; $7080: $18 $6a

    add c                                         ; $7082: $81
    ld h, l                                       ; $7083: $65
    nop                                           ; $7084: $00
    ld l, a                                       ; $7085: $6f
    bit 7, h                                      ; $7086: $cb $7c
    ld l, d                                       ; $7088: $6a
    push de                                       ; $7089: $d5
    ld l, d                                       ; $708a: $6a
    jr jr_05e_70ff                                ; $708b: $18 $72

    ld l, a                                       ; $708d: $6f
    adc $3c                                       ; $708e: $ce $3c
    ld l, c                                       ; $7090: $69
    push de                                       ; $7091: $d5
    ld l, e                                       ; $7092: $6b
    ld b, c                                       ; $7093: $41
    ldh a, [rP1]                                  ; $7094: $f0 $00
    rst $30                                       ; $7096: $f7
    call nz, $f6fe                                ; $7097: $c4 $fe $f6
    push de                                       ; $709a: $d5
    ld l, h                                       ; $709b: $6c
    jr jr_05e_7109                                ; $709c: $18 $6b

    ld b, b                                       ; $709e: $40
    rst $20                                       ; $709f: $e7
    add c                                         ; $70a0: $81
    xor e                                         ; $70a1: $ab
    ld b, b                                       ; $70a2: $40
    db $ec                                        ; $70a3: $ec
    sub l                                         ; $70a4: $95
    ld h, [hl]                                    ; $70a5: $66
    nop                                           ; $70a6: $00
    jr @+$70                                      ; $70a7: $18 $6e

    ld b, b                                       ; $70a9: $40
    sub c                                         ; $70aa: $91
    ld a, h                                       ; $70ab: $7c
    ld c, d                                       ; $70ac: $4a
    push de                                       ; $70ad: $d5
    ld l, a                                       ; $70ae: $6f
    rla                                           ; $70af: $17
    sub c                                         ; $70b0: $91
    ld b, c                                       ; $70b1: $41
    rlc b                                         ; $70b2: $cb $00
    rst $08                                       ; $70b4: $cf
    inc sp                                        ; $70b5: $33
    db $f4                                        ; $70b6: $f4
    nop                                           ; $70b7: $00
    ld b, b                                       ; $70b8: $40
    sub e                                         ; $70b9: $93
    ret nz                                        ; $70ba: $c0

    xor $c0                                       ; $70bb: $ee $c0
    set 3, b                                      ; $70bd: $cb $d8
    ld d, b                                       ; $70bf: $50
    ld b, b                                       ; $70c0: $40
    sub l                                         ; $70c1: $95
    push de                                       ; $70c2: $d5
    ld [hl], c                                    ; $70c3: $71
    ld e, c                                       ; $70c4: $59
    ld c, l                                       ; $70c5: $4d
    ld b, c                                       ; $70c6: $41
    inc hl                                        ; $70c7: $23
    nop                                           ; $70c8: $00
    cp [hl]                                       ; $70c9: $be
    adc h                                         ; $70ca: $8c
    ld h, a                                       ; $70cb: $67
    adc b                                         ; $70cc: $88
    add b                                         ; $70cd: $80
    xor $97                                       ; $70ce: $ee $97
    adc h                                         ; $70d0: $8c
    ld c, $25                                     ; $70d1: $0e $25
    ret nz                                        ; $70d3: $c0

    ld a, [c]                                     ; $70d4: $f2
    push de                                       ; $70d5: $d5
    ld l, [hl]                                    ; $70d6: $6e
    jr jr_05e_7144                                ; $70d7: $18 $6b

    nop                                           ; $70d9: $00
    cp $86                                        ; $70da: $fe $86
    jp $d595                                      ; $70dc: $c3 $95 $d5


    ld l, [hl]                                    ; $70df: $6e
    ld [$0e6a], sp                                ; $70e0: $08 $6a $0e
    jr nc, jr_05e_70e5                            ; $70e3: $30 $00

jr_05e_70e5:
    sub e                                         ; $70e5: $93
    jr jr_05e_7160                                ; $70e6: $18 $78

    adc a                                         ; $70e8: $8f
    ld b, $00                                     ; $70e9: $06 $00
    ld a, l                                       ; $70eb: $7d

jr_05e_70ec:
    ld de, $ae66                                  ; $70ec: $11 $66 $ae
    jr jr_05e_715c                                ; $70ef: $18 $6b

    cp l                                          ; $70f1: $bd
    ld l, $7d                                     ; $70f2: $2e $7d
    db $10                                        ; $70f4: $10
    sub l                                         ; $70f5: $95
    dec l                                         ; $70f6: $2d
    add a                                         ; $70f7: $87
    jr z, jr_05e_7108                             ; $70f8: $28 $0e

    dec hl                                        ; $70fa: $2b
    nop                                           ; $70fb: $00
    ld h, l                                       ; $70fc: $65
    cp a                                          ; $70fd: $bf
    ld [bc], a                                    ; $70fe: $02

jr_05e_70ff:
    db $ec                                        ; $70ff: $ec
    cp [hl]                                       ; $7100: $be
    inc c                                         ; $7101: $0c
    ld h, l                                       ; $7102: $65
    cp a                                          ; $7103: $bf
    and h                                         ; $7104: $a4
    jp nc, $bf65                                  ; $7105: $d2 $65 $bf

jr_05e_7108:
    sub l                                         ; $7108: $95

jr_05e_7109:
    add hl, hl                                    ; $7109: $29
    ld c, c                                       ; $710a: $49
    daa                                           ; $710b: $27
    nop                                           ; $710c: $00
    ld c, $2e                                     ; $710d: $0e $2e
    dec a                                         ; $710f: $3d
    ld de, $3195                                  ; $7110: $11 $95 $31
    adc [hl]                                      ; $7113: $8e

jr_05e_7114:
    inc [hl]                                      ; $7114: $34
    ret c                                         ; $7115: $d8

    adc $c0                                       ; $7116: $ce $c0
    or e                                          ; $7118: $b3
    reti                                          ; $7119: $d9


    push bc                                       ; $711a: $c5
    ld c, $2f                                     ; $711b: $0e $2f
    nop                                           ; $711d: $00
    ld a, l                                       ; $711e: $7d
    inc de                                        ; $711f: $13
    sub l                                         ; $7120: $95
    ld l, $6e                                     ; $7121: $2e $6e
    and d                                         ; $7123: $a2
    ld c, $31                                     ; $7124: $0e $31
    db $fd                                        ; $7126: $fd
    ld de, $2e95                                  ; $7127: $11 $95 $2e
    xor [hl]                                      ; $712a: $ae
    jr z, jr_05e_7114                             ; $712b: $28 $e7

    db $ed                                        ; $712d: $ed
    nop                                           ; $712e: $00
    ld a, l                                       ; $712f: $7d
    ld de, $6e26                                  ; $7130: $11 $26 $6e
    ld [de], a                                    ; $7133: $12
    ld h, d                                       ; $7134: $62
    cp $0f                                        ; $7135: $fe $0f
    ret c                                         ; $7137: $d8

    sub $ac                                       ; $7138: $d6 $ac
    inc sp                                        ; $713a: $33
    add hl, hl                                    ; $713b: $29
    or c                                          ; $713c: $b1
    dec a                                         ; $713d: $3d
    sub d                                         ; $713e: $92
    ld [bc], a                                    ; $713f: $02
    sub b                                         ; $7140: $90
    jr nz, jr_05e_714f                            ; $7141: $20 $0c

    and e                                         ; $7143: $a3

jr_05e_7144:
    add c                                         ; $7144: $81
    ld l, c                                       ; $7145: $69
    db $fd                                        ; $7146: $fd
    sbc b                                         ; $7147: $98
    sub b                                         ; $7148: $90
    sub e                                         ; $7149: $93
    add a                                         ; $714a: $87
    ld h, h                                       ; $714b: $64
    sub [hl]                                      ; $714c: $96
    ld b, h                                       ; $714d: $44
    ld l, d                                       ; $714e: $6a

jr_05e_714f:
    nop                                           ; $714f: $00
    cp a                                          ; $7150: $bf
    ld [hl], d                                    ; $7151: $72
    rst $00                                       ; $7152: $c7
    ld a, [$85c0]                                 ; $7153: $fa $c0 $85
    ld l, $41                                     ; $7156: $2e $41
    cp $34                                        ; $7158: $fe $34
    add l                                         ; $715a: $85
    rst $38                                       ; $715b: $ff

jr_05e_715c:
    sbc a                                         ; $715c: $9f
    db $fc                                        ; $715d: $fc
    cp a                                          ; $715e: $bf
    ei                                            ; $715f: $fb

jr_05e_7160:
    nop                                           ; $7160: $00
    ret nz                                        ; $7161: $c0

    rst $38                                       ; $7162: $ff
    sbc $fe                                       ; $7163: $de $fe
    ret nz                                        ; $7165: $c0

    rst $38                                       ; $7166: $ff
    rst $38                                       ; $7167: $ff
    rst $38                                       ; $7168: $ff
    rst $38                                       ; $7169: $ff
    rst $38                                       ; $716a: $ff
    rst $38                                       ; $716b: $ff
    rst $38                                       ; $716c: $ff
    rst $38                                       ; $716d: $ff
    rst $38                                       ; $716e: $ff
    rst $38                                       ; $716f: $ff
    rst $38                                       ; $7170: $ff
    nop                                           ; $7171: $00
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
    rst $38                                       ; $717d: $ff
    rst $38                                       ; $717e: $ff
    rst $38                                       ; $717f: $ff
    rst $38                                       ; $7180: $ff
    rst $38                                       ; $7181: $ff
    nop                                           ; $7182: $00
    rst $38                                       ; $7183: $ff
    rst $38                                       ; $7184: $ff
    rst $38                                       ; $7185: $ff
    rst $38                                       ; $7186: $ff
    rst $38                                       ; $7187: $ff
    rst $38                                       ; $7188: $ff
    rst $38                                       ; $7189: $ff
    rst $38                                       ; $718a: $ff
    rst $38                                       ; $718b: $ff
    rst $38                                       ; $718c: $ff
    rst $38                                       ; $718d: $ff
    rst $38                                       ; $718e: $ff
    rst $38                                       ; $718f: $ff
    rst $38                                       ; $7190: $ff
    ccf                                           ; $7191: $3f
    or d                                          ; $7192: $b2
    nop                                           ; $7193: $00
    ld l, c                                       ; $7194: $69
    sub e                                         ; $7195: $93
    rst $38                                       ; $7196: $ff
    rst $38                                       ; $7197: $ff
    rst $38                                       ; $7198: $ff
    rst $38                                       ; $7199: $ff
    rst $38                                       ; $719a: $ff
    rst $38                                       ; $719b: $ff
    rst $38                                       ; $719c: $ff
    rst $38                                       ; $719d: $ff
    add b                                         ; $719e: $80

Jump_05e_719f:
    sbc [hl]                                      ; $719f: $9e
    nop                                           ; $71a0: $00
    nop                                           ; $71a1: $00
    nop                                           ; $71a2: $00
    db $ed                                        ; $71a3: $ed
    jr nz, @+$01                                  ; $71a4: $20 $ff

    rst $20                                       ; $71a6: $e7
    ld c, $31                                     ; $71a7: $0e $31
    rst $38                                       ; $71a9: $ff

Call_05e_71aa:
    ldh [$5d], a                                  ; $71aa: $e0 $5d
    ld e, h                                       ; $71ac: $5c
    ld e, e                                       ; $71ad: $5b
    db $e3                                        ; $71ae: $e3
    ld e, e                                       ; $71af: $5b
    nop                                           ; $71b0: $00
    rst $38                                       ; $71b1: $ff
    rst $38                                       ; $71b2: $ff
    rst $20                                       ; $71b3: $e7
    and $c1                                       ; $71b4: $e6 $c1
    db $ec                                        ; $71b6: $ec
    ld b, a                                       ; $71b7: $47
    ld c, l                                       ; $71b8: $4d
    ld sp, $60e9                                  ; $71b9: $31 $e9 $60
    ret nz                                        ; $71bc: $c0

    rst $38                                       ; $71bd: $ff
    ret nz                                        ; $71be: $c0

    pop af                                        ; $71bf: $f1
    rrca                                          ; $71c0: $0f
    jp nz, $46e1                                  ; $71c1: $c2 $e1 $46

    ld [hl], $32                                  ; $71c4: $36 $32
    rst $20                                       ; $71c6: $e7
    ld c, l                                       ; $71c7: $4d
    ld sp, $ca5f                                  ; $71c8: $31 $5f $ca
    rst $38                                       ; $71cb: $ff
    add b                                         ; $71cc: $80
    rst $28                                       ; $71cd: $ef
    ld [$3131], sp                                ; $71ce: $08 $31 $31
    rst $38                                       ; $71d1: $ff
    ld c, l                                       ; $71d2: $4d
    ld b, [hl]                                    ; $71d3: $46
    ld [hl], $30                                  ; $71d4: $36 $30
    jr nc, @+$32                                  ; $71d6: $30 $30

    add hl, sp                                    ; $71d8: $39
    ld sp, $5ef9                                  ; $71d9: $31 $f9 $5e
    jp z, Jump_05e_40ff                           ; $71dc: $ca $ff $40

    rst $28                                       ; $71df: $ef
    dec d                                         ; $71e0: $15
    ld sp, $3931                                  ; $71e1: $31 $31 $39
    ld l, d                                       ; $71e4: $6a
    sbc l                                         ; $71e5: $9d
    ld l, b                                       ; $71e6: $68
    rst $38                                       ; $71e7: $ff
    ldh [rHDMA2], a                               ; $71e8: $e0 $52
    ld sp, $ca31                                  ; $71ea: $31 $31 $ca
    rst $38                                       ; $71ed: $ff
    nop                                           ; $71ee: $00
    xor $00                                       ; $71ef: $ee $00
    rst $38                                       ; $71f1: $ff
    ld sp, $4931                                  ; $71f2: $31 $31 $49
    ld c, b                                       ; $71f5: $48
    ld h, a                                       ; $71f6: $67
    ld l, d                                       ; $71f7: $6a
    ld l, h                                       ; $71f8: $6c
    ld l, h                                       ; $71f9: $6c
    di                                            ; $71fa: $f3
    ld l, h                                       ; $71fb: $6c
    ld d, e                                       ; $71fc: $53
    ret nz                                        ; $71fd: $c0

    rst $38                                       ; $71fe: $ff
    ret nz                                        ; $71ff: $c0

    di                                            ; $7200: $f3
    add hl, sp                                    ; $7201: $39
    jr nc, jr_05e_7271                            ; $7202: $30 $6d

    ld h, a                                       ; $7204: $67
    rlca                                          ; $7205: $07
    ld l, d                                       ; $7206: $6a
    jr nc, jr_05e_7239                            ; $7207: $30 $30

    add b                                         ; $7209: $80
    rst $38                                       ; $720a: $ff
    ret nz                                        ; $720b: $c0

    or $bf                                        ; $720c: $f6 $bf
    ldh [rLCDC], a                                ; $720e: $e0 $40
    rst $38                                       ; $7210: $ff
    ld b, b                                       ; $7211: $40
    ld hl, sp+$06                                 ; $7212: $f8 $06
    cp a                                          ; $7214: $bf
    ldh [$65], a                                  ; $7215: $e0 $65
    ld h, l                                       ; $7217: $65

jr_05e_7218:
    ret nz                                        ; $7218: $c0

    rst $38                                       ; $7219: $ff
    nop                                           ; $721a: $00
    db $f4                                        ; $721b: $f4
    ccf                                           ; $721c: $3f
    pop hl                                        ; $721d: $e1
    ld b, b                                       ; $721e: $40
    ldh [rP1], a                                  ; $721f: $e0 $00
    rst $38                                       ; $7221: $ff
    ld b, [hl]                                    ; $7222: $46
    ret nz                                        ; $7223: $c0

    push af                                       ; $7224: $f5
    ld c, c                                       ; $7225: $49
    ld c, b                                       ; $7226: $48
    ld bc, $00e0                                  ; $7227: $01 $e0 $00
    rst $38                                       ; $722a: $ff
    add b                                         ; $722b: $80
    or d                                          ; $722c: $b2
    jr z, jr_05e_726f                             ; $722d: $28 $40

    ret nz                                        ; $722f: $c0

    inc de                                        ; $7230: $13
    ld sp, $003c                                  ; $7231: $31 $3c $00
    rst $18                                       ; $7234: $df
    ret nz                                        ; $7235: $c0

    or $17                                        ; $7236: $f6 $17
    ld b, d                                       ; $7238: $42

jr_05e_7239:
    and d                                         ; $7239: $a2
    add b                                         ; $723a: $80
    cp a                                          ; $723b: $bf
    add b                                         ; $723c: $80
    push af                                       ; $723d: $f5
    add e                                         ; $723e: $83
    ld hl, $c229                                  ; $723f: $21 $29 $c2
    add c                                         ; $7242: $81
    nop                                           ; $7243: $00
    cp a                                          ; $7244: $bf
    ret nz                                        ; $7245: $c0

    sub l                                         ; $7246: $95
    cp a                                          ; $7247: $bf
    push hl                                       ; $7248: $e5
    pop bc                                        ; $7249: $c1
    ldh [$5a], a                                  ; $724a: $e0 $5a
    jr c, jr_05e_7218                             ; $724c: $38 $ca

    rst $38                                       ; $724e: $ff
    add b                                         ; $724f: $80
    sub b                                         ; $7250: $90
    ld a, [hl]                                    ; $7251: $7e
    db $e3                                        ; $7252: $e3
    ld e, l                                       ; $7253: $5d
    ld e, h                                       ; $7254: $5c
    ld e, d                                       ; $7255: $5a
    ld b, b                                       ; $7256: $40
    sbc a                                         ; $7257: $9f
    rst $38                                       ; $7258: $ff
    rst $38                                       ; $7259: $ff
    nop                                           ; $725a: $00
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
    rst $38                                       ; $7267: $ff
    rst $38                                       ; $7268: $ff
    rst $38                                       ; $7269: $ff
    rst $38                                       ; $726a: $ff
    nop                                           ; $726b: $00
    rst $38                                       ; $726c: $ff
    rst $38                                       ; $726d: $ff
    rst $38                                       ; $726e: $ff

jr_05e_726f:
    rst $38                                       ; $726f: $ff
    rst $38                                       ; $7270: $ff

jr_05e_7271:
    rst $38                                       ; $7271: $ff
    rst $38                                       ; $7272: $ff
    rst $38                                       ; $7273: $ff
    rst $38                                       ; $7274: $ff
    rst $38                                       ; $7275: $ff
    rst $38                                       ; $7276: $ff
    rst $38                                       ; $7277: $ff
    rst $38                                       ; $7278: $ff
    rst $38                                       ; $7279: $ff
    rst $38                                       ; $727a: $ff
    rst $38                                       ; $727b: $ff
    nop                                           ; $727c: $00
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
    rst $38                                       ; $7289: $ff
    rst $38                                       ; $728a: $ff
    rst $38                                       ; $728b: $ff
    rst $38                                       ; $728c: $ff
    nop                                           ; $728d: $00
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
    rst $38                                       ; $729a: $ff
    rst $38                                       ; $729b: $ff
    rst $38                                       ; $729c: $ff
    rst $38                                       ; $729d: $ff
    nop                                           ; $729e: $00
    rst $38                                       ; $729f: $ff
    rst $38                                       ; $72a0: $ff
    rst $38                                       ; $72a1: $ff
    rst $38                                       ; $72a2: $ff
    rst $38                                       ; $72a3: $ff
    rst $38                                       ; $72a4: $ff
    rst $38                                       ; $72a5: $ff
    rst $38                                       ; $72a6: $ff
    rst $38                                       ; $72a7: $ff
    rst $38                                       ; $72a8: $ff
    rst $38                                       ; $72a9: $ff
    rst $38                                       ; $72aa: $ff
    rst $38                                       ; $72ab: $ff
    rst $38                                       ; $72ac: $ff
    rst $38                                       ; $72ad: $ff
    rst $38                                       ; $72ae: $ff
    nop                                           ; $72af: $00
    rst $38                                       ; $72b0: $ff
    rst $38                                       ; $72b1: $ff
    rst $38                                       ; $72b2: $ff
    rst $38                                       ; $72b3: $ff
    rst $38                                       ; $72b4: $ff
    rst $38                                       ; $72b5: $ff
    rst $38                                       ; $72b6: $ff
    rst $38                                       ; $72b7: $ff
    rst $38                                       ; $72b8: $ff
    rst $38                                       ; $72b9: $ff
    rst $38                                       ; $72ba: $ff
    rst $38                                       ; $72bb: $ff
    rst $38                                       ; $72bc: $ff
    rst $38                                       ; $72bd: $ff
    rst $38                                       ; $72be: $ff
    rst $38                                       ; $72bf: $ff
    nop                                           ; $72c0: $00
    rst $38                                       ; $72c1: $ff
    rst $38                                       ; $72c2: $ff
    rst $38                                       ; $72c3: $ff
    rst $38                                       ; $72c4: $ff
    rst $38                                       ; $72c5: $ff
    rst $38                                       ; $72c6: $ff
    rst $38                                       ; $72c7: $ff
    rst $38                                       ; $72c8: $ff
    rst $38                                       ; $72c9: $ff
    rst $38                                       ; $72ca: $ff
    rst $38                                       ; $72cb: $ff
    rst $38                                       ; $72cc: $ff
    rst $38                                       ; $72cd: $ff
    rst $38                                       ; $72ce: $ff
    rst $38                                       ; $72cf: $ff
    rst $38                                       ; $72d0: $ff
    nop                                           ; $72d1: $00
    rst $38                                       ; $72d2: $ff
    rst $38                                       ; $72d3: $ff
    rst $38                                       ; $72d4: $ff
    rst $38                                       ; $72d5: $ff
    rst $38                                       ; $72d6: $ff
    rst $38                                       ; $72d7: $ff
    rst $38                                       ; $72d8: $ff
    rst $38                                       ; $72d9: $ff
    rst $38                                       ; $72da: $ff
    rst $38                                       ; $72db: $ff
    rst $38                                       ; $72dc: $ff
    rst $38                                       ; $72dd: $ff
    rst $38                                       ; $72de: $ff
    rst $38                                       ; $72df: $ff
    rst $38                                       ; $72e0: $ff
    rst $38                                       ; $72e1: $ff
    nop                                           ; $72e2: $00
    rst $38                                       ; $72e3: $ff
    rst $38                                       ; $72e4: $ff
    rst $38                                       ; $72e5: $ff
    rst $38                                       ; $72e6: $ff
    rst $38                                       ; $72e7: $ff
    rst $38                                       ; $72e8: $ff
    rst $38                                       ; $72e9: $ff
    rst $38                                       ; $72ea: $ff
    rst $38                                       ; $72eb: $ff
    rst $38                                       ; $72ec: $ff
    rst $38                                       ; $72ed: $ff
    rst $38                                       ; $72ee: $ff
    rst $38                                       ; $72ef: $ff
    rst $38                                       ; $72f0: $ff
    rst $38                                       ; $72f1: $ff
    rst $38                                       ; $72f2: $ff
    nop                                           ; $72f3: $00
    rst $38                                       ; $72f4: $ff
    rst $38                                       ; $72f5: $ff
    rst $38                                       ; $72f6: $ff
    rst $38                                       ; $72f7: $ff
    rst $38                                       ; $72f8: $ff
    rst $38                                       ; $72f9: $ff
    rst $38                                       ; $72fa: $ff
    rst $38                                       ; $72fb: $ff
    rst $38                                       ; $72fc: $ff
    rst $38                                       ; $72fd: $ff
    rst $38                                       ; $72fe: $ff
    rst $38                                       ; $72ff: $ff
    rst $38                                       ; $7300: $ff
    rst $38                                       ; $7301: $ff
    rst $38                                       ; $7302: $ff
    rst $38                                       ; $7303: $ff
    nop                                           ; $7304: $00
    rst $38                                       ; $7305: $ff
    rst $38                                       ; $7306: $ff
    rst $38                                       ; $7307: $ff
    rst $38                                       ; $7308: $ff
    rst $38                                       ; $7309: $ff
    rst $38                                       ; $730a: $ff
    rst $38                                       ; $730b: $ff
    rst $38                                       ; $730c: $ff
    rst $38                                       ; $730d: $ff
    rst $38                                       ; $730e: $ff
    rst $38                                       ; $730f: $ff
    rst $38                                       ; $7310: $ff
    rst $38                                       ; $7311: $ff
    rst $38                                       ; $7312: $ff
    rst $38                                       ; $7313: $ff
    rst $38                                       ; $7314: $ff
    nop                                           ; $7315: $00
    rst $38                                       ; $7316: $ff
    rst $38                                       ; $7317: $ff
    rst $38                                       ; $7318: $ff
    push af                                       ; $7319: $f5
    nop                                           ; $731a: $00
    nop                                           ; $731b: $00
    nop                                           ; $731c: $00
    and l                                         ; $731d: $a5
    nop                                           ; $731e: $00
    rst $38                                       ; $731f: $ff
    push hl                                       ; $7320: $e5
    ld [hl-], a                                   ; $7321: $32
    or $e6                                        ; $7322: $f6 $e6
    rst $30                                       ; $7324: $f7
    rst $20                                       ; $7325: $e7
    dec [hl]                                      ; $7326: $35
    db $ec                                        ; $7327: $ec
    xor $37                                       ; $7328: $ee $37
    db $ec                                        ; $732a: $ec
    jp c, $c7f0                                   ; $732b: $da $f0 $c7

    add sp, $33                                   ; $732e: $e8 $33
    ld sp, $f2e0                                  ; $7330: $31 $e0 $f2
    ld [hl], $30                                  ; $7333: $36 $30
    scf                                           ; $7335: $37
    cp a                                          ; $7336: $bf
    ld h, $20                                     ; $7337: $26 $20
    daa                                           ; $7339: $27
    db $10                                        ; $733a: $10
    ld d, $17                                     ; $733b: $16 $17
    jp nz, Jump_000_34f6                          ; $733d: $c2 $f6 $34

    rst $38                                       ; $7340: $ff
    ld [hl], $32                                  ; $7341: $36 $32
    jr nc, jr_05e_737c                            ; $7343: $30 $37

    ld sp, $3133                                  ; $7345: $31 $33 $31
    inc sp                                        ; $7348: $33
    nop                                           ; $7349: $00
    and b                                         ; $734a: $a0
    ei                                            ; $734b: $fb
    rst $38                                       ; $734c: $ff
    rst $28                                       ; $734d: $ef
    nop                                           ; $734e: $00
    nop                                           ; $734f: $00
    nop                                           ; $7350: $00
    ld e, c                                       ; $7351: $59
    ld [hl], e                                    ; $7352: $73
    adc c                                         ; $7353: $89
    ld [hl], e                                    ; $7354: $73
    ld d, h                                       ; $7355: $54
    halt                                          ; $7356: $76
    ld c, [hl]                                    ; $7357: $4e
    ld a, b                                       ; $7358: $78
    ret nz                                        ; $7359: $c0

    rra                                           ; $735a: $1f
    adc d                                         ; $735b: $8a
    inc bc                                        ; $735c: $03
    add b                                         ; $735d: $80
    ld [bc], a                                    ; $735e: $02
    ld h, b                                       ; $735f: $60
    ld bc, $03ef                                  ; $7360: $01 $ef $03
    db $f4                                        ; $7363: $f4
    inc bc                                        ; $7364: $03
    adc d                                         ; $7365: $8a
    inc bc                                        ; $7366: $03
    add b                                         ; $7367: $80
    ld [bc], a                                    ; $7368: $02
    rra                                           ; $7369: $1f
    ld [bc], a                                    ; $736a: $02
    ld c, e                                       ; $736b: $4b
    ld c, $38                                     ; $736c: $0e $38
    ld bc, $038a                                  ; $736e: $01 $8a $03
    ld [$0825], sp                                ; $7371: $08 $25 $08
    dec h                                         ; $7374: $25
    ld [$0825], sp                                ; $7375: $08 $25 $08
    dec h                                         ; $7378: $25
    ld [$0825], sp                                ; $7379: $08 $25 $08

jr_05e_737c:
    dec h                                         ; $737c: $25
    ld [$0825], sp                                ; $737d: $08 $25 $08
    dec h                                         ; $7380: $25
    ld [$0825], sp                                ; $7381: $08 $25 $08
    dec h                                         ; $7384: $25
    ld [$0825], sp                                ; $7385: $08 $25 $08
    dec h                                         ; $7388: $25
    rst $38                                       ; $7389: $ff
    dec bc                                        ; $738a: $0b
    dec bc                                        ; $738b: $0b
    dec bc                                        ; $738c: $0b
    ld l, e                                       ; $738d: $6b
    dec bc                                        ; $738e: $0b
    dec bc                                        ; $738f: $0b
    ld c, e                                       ; $7390: $4b
    dec hl                                        ; $7391: $2b
    rst $38                                       ; $7392: $ff
    dec bc                                        ; $7393: $0b
    ld c, h                                       ; $7394: $4c
    ld c, h                                       ; $7395: $4c
    ld c, h                                       ; $7396: $4c
    inc c                                         ; $7397: $0c
    inc c                                         ; $7398: $0c
    inc c                                         ; $7399: $0c
    inc l                                         ; $739a: $2c
    rrca                                          ; $739b: $0f
    inc l                                         ; $739c: $2c
    inc l                                         ; $739d: $2c
    ld c, h                                       ; $739e: $4c
    dec bc                                        ; $739f: $0b
    rst $30                                       ; $73a0: $f7
    pop hl                                        ; $73a1: $e1
    ld a, [c]                                     ; $73a2: $f2
    ldh [$fd], a                                  ; $73a3: $e0 $fd
    push hl                                       ; $73a5: $e5
    rst $20                                       ; $73a6: $e7
    ld [c], a                                     ; $73a7: $e2
    ldh a, [$f9]                                  ; $73a8: $f0 $f9
    pop hl                                        ; $73aa: $e1
    add sp, -$1e                                  ; $73ab: $e8 $e2
    db $db                                        ; $73ad: $db
    ldh [$fd], a                                  ; $73ae: $e0 $fd
    jp hl                                         ; $73b0: $e9


    dec bc                                        ; $73b1: $0b
    ld l, e                                       ; $73b2: $6b
    ld l, e                                       ; $73b3: $6b
    ld l, e                                       ; $73b4: $6b
    ccf                                           ; $73b5: $3f
    dec hl                                        ; $73b6: $2b
    dec bc                                        ; $73b7: $0b
    ld c, e                                       ; $73b8: $4b
    ld c, e                                       ; $73b9: $4b
    dec bc                                        ; $73ba: $0b
    inc l                                         ; $73bb: $2c
    ret nz                                        ; $73bc: $c0

    ld [c], a                                     ; $73bd: $e2
    cp [hl]                                       ; $73be: $be
    pop hl                                        ; $73bf: $e1
    ret nz                                        ; $73c0: $c0

    ret nz                                        ; $73c1: $c0

    ld [$e0b9], a                                 ; $73c2: $ea $b9 $e0
    or d                                          ; $73c5: $b2
    db $e3                                        ; $73c6: $e3
    ld hl, sp-$1a                                 ; $73c7: $f8 $e6
    cp a                                          ; $73c9: $bf
    db $eb                                        ; $73ca: $eb
    jp nz, Jump_000_2be0                          ; $73cb: $c2 $e0 $2b

    dec hl                                        ; $73ce: $2b
    ld b, $7f                                     ; $73cf: $06 $7f
    ldh [rWX], a                                  ; $73d1: $e0 $4b
    ld c, e                                       ; $73d3: $4b
    ret nz                                        ; $73d4: $c0

    and $8e                                       ; $73d5: $e6 $8e
    db $e3                                        ; $73d7: $e3
    db $fc                                        ; $73d8: $fc
    ld [$e280], a                                 ; $73d9: $ea $80 $e2
    ld hl, sp-$1d                                 ; $73dc: $f8 $e3
    ld hl, sp-$80                                 ; $73de: $f8 $80
    db $ec                                        ; $73e0: $ec
    jp nz, $c0e0                                  ; $73e1: $c2 $e0 $c0

    pop hl                                        ; $73e4: $e1
    ld l, e                                       ; $73e5: $6b
    ld c, e                                       ; $73e6: $4b
    ld c, e                                       ; $73e7: $4b
    inc l                                         ; $73e8: $2c
    ld c, h                                       ; $73e9: $4c
    ld bc, $ff6c                                  ; $73ea: $01 $6c $ff
    ldh [$bf], a                                  ; $73ed: $e0 $bf
    ld [c], a                                     ; $73ef: $e2
    ld e, h                                       ; $73f0: $5c
    db $ec                                        ; $73f1: $ec
    ld c, b                                       ; $73f2: $48
    push hl                                       ; $73f3: $e5
    ld b, b                                       ; $73f4: $40
    pop af                                        ; $73f5: $f1
    ret nz                                        ; $73f6: $c0

    db $e4                                        ; $73f7: $e4
    ld a, $e1                                     ; $73f8: $3e $e1
    call nz, $e2ff                                ; $73fa: $c4 $ff $e2
    ld sp, hl                                     ; $73fd: $f9
    ret nz                                        ; $73fe: $c0

    inc l                                         ; $73ff: $2c
    ld c, a                                       ; $7400: $4f
    push hl                                       ; $7401: $e5
    add d                                         ; $7402: $82
    rst $20                                       ; $7403: $e7
    ccf                                           ; $7404: $3f
    add sp, $4c                                   ; $7405: $e8 $4c
    inc c                                         ; $7407: $0c
    add b                                         ; $7408: $80
    ldh [$e1], a                                  ; $7409: $e0 $e1
    push de                                       ; $740b: $d5
    pop bc                                        ; $740c: $c1
    add b                                         ; $740d: $80
    db $e4                                        ; $740e: $e4
    ld b, l                                       ; $740f: $45
    ldh [$c4], a                                  ; $7410: $e0 $c4
    ldh [$7f], a                                  ; $7412: $e0 $7f
    ldh [$b9], a                                  ; $7414: $e0 $b9
    ret nz                                        ; $7416: $c0

    dec bc                                        ; $7417: $0b
    add b                                         ; $7418: $80
    ld sp, hl                                     ; $7419: $f9
    pop bc                                        ; $741a: $c1
    add $c2                                       ; $741b: $c6 $c2
    ld b, b                                       ; $741d: $40
    ld [$e33f], a                                 ; $741e: $ea $3f $e3
    jp nz, $c0d0                                  ; $7421: $c2 $d0 $c0

    ret nz                                        ; $7424: $c0

    ret nz                                        ; $7425: $c0

    ld [c], a                                     ; $7426: $e2
    ld c, e                                       ; $7427: $4b
    add d                                         ; $7428: $82
    add hl, sp                                    ; $7429: $39
    pop hl                                        ; $742a: $e1
    ld l, e                                       ; $742b: $6b
    dec sp                                        ; $742c: $3b
    ldh [$f9], a                                  ; $742d: $e0 $f9
    pop bc                                        ; $742f: $c1
    adc h                                         ; $7430: $8c
    jp $eafc                                      ; $7431: $c3 $fc $ea


    ld a, a                                       ; $7434: $7f
    rst $10                                       ; $7435: $d7
    dec bc                                        ; $7436: $0b
    nop                                           ; $7437: $00
    ld a, a                                       ; $7438: $7f
    ld [c], a                                     ; $7439: $e2
    ld a, [$b7c2]                                 ; $743a: $fa $c2 $b7
    pop bc                                        ; $743d: $c1
    ld sp, hl                                     ; $743e: $f9
    jp nz, $c35b                                  ; $743f: $c2 $5b $c3

    add l                                         ; $7442: $85
    push bc                                       ; $7443: $c5
    ld c, h                                       ; $7444: $4c
    pop bc                                        ; $7445: $c1
    ld a, c                                       ; $7446: $79
    jp $f800                                      ; $7447: $c3 $00 $f8


    push hl                                       ; $744a: $e5
    ld b, b                                       ; $744b: $40
    jp z, $e0bf                                   ; $744c: $ca $bf $e0

    cp $e6                                        ; $744f: $fe $e6
    ld sp, hl                                     ; $7451: $f9
    call nz, $c698                                ; $7452: $c4 $98 $c6
    dec [hl]                                      ; $7455: $35
    db $e4                                        ; $7456: $e4

jr_05e_7457:
    ld hl, sp-$12                                 ; $7457: $f8 $ee
    jr nz, jr_05e_7457                            ; $7459: $20 $fc

    xor b                                         ; $745b: $a8
    ld de, $c0c0                                  ; $745c: $11 $c0 $c0
    jp nz, $e2b9                                  ; $745f: $c2 $b9 $e2

    cp l                                          ; $7462: $bd
    jp $b86b                                      ; $7463: $c3 $6b $b8


    and c                                         ; $7466: $a1
    sub [hl]                                      ; $7467: $96
    and $20                                       ; $7468: $e6 $20
    xor [hl]                                      ; $746a: $ae
    and b                                         ; $746b: $a0
    or c                                          ; $746c: $b1
    and d                                         ; $746d: $a2
    ld hl, sp-$1b                                 ; $746e: $f8 $e5
    ret nz                                        ; $7470: $c0

    xor h                                         ; $7471: $ac
    adc a                                         ; $7472: $8f
    and b                                         ; $7473: $a0
    inc l                                         ; $7474: $2c

jr_05e_7475:
    ld a, a                                       ; $7475: $7f
    jp nz, $e6c0                                  ; $7476: $c2 $c0 $e6

    inc bc                                        ; $7479: $03
    ld l, e                                       ; $747a: $6b
    dec bc                                        ; $747b: $0b
    ld b, e                                       ; $747c: $43
    push hl                                       ; $747d: $e5
    or [hl]                                       ; $747e: $b6
    push bc                                       ; $747f: $c5
    ld [hl], d                                    ; $7480: $72
    push hl                                       ; $7481: $e5
    add d                                         ; $7482: $82
    and e                                         ; $7483: $a3
    add c                                         ; $7484: $81
    jp nz, $c47c                                  ; $7485: $c2 $7c $c4

    nop                                           ; $7488: $00
    ret nz                                        ; $7489: $c0

    db $e3                                        ; $748a: $e3
    cp a                                          ; $748b: $bf
    pop hl                                        ; $748c: $e1
    cp d                                          ; $748d: $ba
    and b                                         ; $748e: $a0
    ld a, b                                       ; $748f: $78
    jp nz, $e030                                  ; $7490: $c2 $30 $e0

    ld b, b                                       ; $7493: $40
    ld [c], a                                     ; $7494: $e2
    inc bc                                        ; $7495: $03
    rst $00                                       ; $7496: $c7
    di                                            ; $7497: $f3
    call nz, $f840                                ; $7498: $c4 $40 $f8
    push hl                                       ; $749b: $e5
    ld a, [hl]                                    ; $749c: $7e
    adc $0c                                       ; $749d: $ce $0c
    and c                                         ; $749f: $a1
    pop bc                                        ; $74a0: $c1
    db $e4                                        ; $74a1: $e4
    add hl, sp                                    ; $74a2: $39
    and b                                         ; $74a3: $a0
    ld [hl], h                                    ; $74a4: $74
    and b                                         ; $74a5: $a0
    dec hl                                        ; $74a6: $2b
    ld d, b                                       ; $74a7: $50
    and l                                         ; $74a8: $a5
    and b                                         ; $74a9: $a0
    dec b                                         ; $74aa: $05
    and d                                         ; $74ab: $a2
    jr nc, jr_05e_7475                            ; $74ac: $30 $c7

    ld [hl], d                                    ; $74ae: $72
    and $fb                                       ; $74af: $e6 $fb
    adc h                                         ; $74b1: $8c
    dec h                                         ; $74b2: $25
    pop hl                                        ; $74b3: $e1
    inc l                                         ; $74b4: $2c
    add hl, sp                                    ; $74b5: $39
    jp Jump_000_004b                              ; $74b6: $c3 $4b $00


    ld [hl], a                                    ; $74b9: $77
    and b                                         ; $74ba: $a0
    ret nz                                        ; $74bb: $c0

    pop bc                                        ; $74bc: $c1
    adc $85                                       ; $74bd: $ce $85
    db $fd                                        ; $74bf: $fd
    or d                                          ; $74c0: $b2
    cp l                                          ; $74c1: $bd
    and c                                         ; $74c2: $a1
    ld [$bfc3], a                                 ; $74c3: $ea $c3 $bf
    add sp, -$48                                  ; $74c6: $e8 $b8
    and e                                         ; $74c8: $a3
    nop                                           ; $74c9: $00
    db $fd                                        ; $74ca: $fd
    and d                                         ; $74cb: $a2
    ret nz                                        ; $74cc: $c0

    db $e4                                        ; $74cd: $e4
    dec c                                         ; $74ce: $0d
    and h                                         ; $74cf: $a4
    cp l                                          ; $74d0: $bd
    xor l                                         ; $74d1: $ad
    di                                            ; $74d2: $f3
    add d                                         ; $74d3: $82
    ret nz                                        ; $74d4: $c0

    db $eb                                        ; $74d5: $eb
    sbc l                                         ; $74d6: $9d
    pop bc                                        ; $74d7: $c1
    cp e                                          ; $74d8: $bb
    jp Jump_05e_6b05                              ; $74d9: $c3 $05 $6b


    or a                                          ; $74dc: $b7
    add c                                         ; $74dd: $81
    ld c, e                                       ; $74de: $4b
    ld [c], a                                     ; $74df: $e2
    rst $00                                       ; $74e0: $c7
    sbc a                                         ; $74e1: $9f
    call nz, $e9f8                                ; $74e2: $c4 $f8 $e9
    inc hl                                        ; $74e5: $23
    add d                                         ; $74e6: $82
    add c                                         ; $74e7: $81
    rst $20                                       ; $74e8: $e7
    nop                                           ; $74e9: $00
    ld e, $85                                     ; $74ea: $1e $85
    adc h                                         ; $74ec: $8c
    add l                                         ; $74ed: $85
    rst $10                                       ; $74ee: $d7
    push bc                                       ; $74ef: $c5
    db $fc                                        ; $74f0: $fc
    ld sp, hl                                     ; $74f1: $f9
    inc sp                                        ; $74f2: $33
    push bc                                       ; $74f3: $c5
    cp l                                          ; $74f4: $bd
    jp hl                                         ; $74f5: $e9


    push de                                       ; $74f6: $d5
    ld l, d                                       ; $74f7: $6a
    or $f0                                        ; $74f8: $f6 $f0
    nop                                           ; $74fa: $00
    db $f4                                        ; $74fb: $f4
    add a                                         ; $74fc: $87
    cp l                                          ; $74fd: $bd
    ld l, [hl]                                    ; $74fe: $6e
    push de                                       ; $74ff: $d5
    ld l, [hl]                                    ; $7500: $6e
    or $f1                                        ; $7501: $f6 $f1
    or h                                          ; $7503: $b4
    adc d                                         ; $7504: $8a
    ld c, $e3                                     ; $7505: $0e $e3
    ld hl, $d5c6                                  ; $7507: $21 $c6 $d5
    ld l, l                                       ; $750a: $6d
    nop                                           ; $750b: $00
    or $f3                                        ; $750c: $f6 $f3
    adc h                                         ; $750e: $8c
    add $80                                       ; $750f: $c6 $80
    jp $cadb                                      ; $7511: $c3 $db $ca


    push de                                       ; $7514: $d5
    ld l, [hl]                                    ; $7515: $6e
    or $f3                                        ; $7516: $f6 $f3
    adc $c6                                       ; $7518: $ce $c6
    inc c                                         ; $751a: $0c
    pop bc                                        ; $751b: $c1
    nop                                           ; $751c: $00
    sbc a                                         ; $751d: $9f
    xor c                                         ; $751e: $a9
    push de                                       ; $751f: $d5
    ld l, e                                       ; $7520: $6b
    or $f2                                        ; $7521: $f6 $f2
    di                                            ; $7523: $f3
    adc d                                         ; $7524: $8a
    cp $a1                                        ; $7525: $fe $a1
    jp nz, $9ff0                                  ; $7527: $c2 $f0 $9f

    ld b, [hl]                                    ; $752a: $46
    or $f0                                        ; $752b: $f6 $f0
    nop                                           ; $752d: $00
    di                                            ; $752e: $f3
    adc e                                         ; $752f: $8b
    ld a, c                                       ; $7530: $79
    ld b, [hl]                                    ; $7531: $46
    push de                                       ; $7532: $d5
    halt                                          ; $7533: $76
    or $ec                                        ; $7534: $f6 $ec
    di                                            ; $7536: $f3
    adc e                                         ; $7537: $8b
    ld b, b                                       ; $7538: $40
    rst $20                                       ; $7539: $e7
    push de                                       ; $753a: $d5
    ld [hl], c                                    ; $753b: $71
    or $f2                                        ; $753c: $f6 $f2
    nop                                           ; $753e: $00
    di                                            ; $753f: $f3
    adc h                                         ; $7540: $8c
    ret nz                                        ; $7541: $c0

    add sp, -$2b                                  ; $7542: $e8 $d5
    ld l, [hl]                                    ; $7544: $6e
    or $f1                                        ; $7545: $f6 $f1
    di                                            ; $7547: $f3
    adc e                                         ; $7548: $8b
    nop                                           ; $7549: $00
    jp nc, $a7d4                                  ; $754a: $d2 $d4 $a7

    bit 4, [hl]                                   ; $754d: $cb $66
    nop                                           ; $754f: $00
    adc $c8                                       ; $7550: $ce $c8
    ret nz                                        ; $7552: $c0

    ei                                            ; $7553: $fb
    ld a, c                                       ; $7554: $79
    or e                                          ; $7555: $b3
    ld [$4a86], sp                                ; $7556: $08 $86 $4a
    dec h                                         ; $7559: $25
    ei                                            ; $755a: $fb
    adc c                                         ; $755b: $89
    ld b, d                                       ; $755c: $42
    bit 1, [hl]                                   ; $755d: $cb $4e
    ld [hl-], a                                   ; $755f: $32
    nop                                           ; $7560: $00
    ld l, l                                       ; $7561: $6d
    xor b                                         ; $7562: $a8
    xor l                                         ; $7563: $ad
    jr nc, jr_05e_75a2                            ; $7564: $30 $3c

    xor h                                         ; $7566: $ac
    ld c, [hl]                                    ; $7567: $4e
    cpl                                           ; $7568: $2f
    rlca                                          ; $7569: $07
    daa                                           ; $756a: $27
    jp z, $f907                                   ; $756b: $ca $07 $f9

    ld c, a                                       ; $756e: $4f
    db $e4                                        ; $756f: $e4
    dec b                                         ; $7570: $05
    nop                                           ; $7571: $00
    ld a, c                                       ; $7572: $79
    or e                                          ; $7573: $b3
    ld b, d                                       ; $7574: $42
    dec h                                         ; $7575: $25
    ld h, d                                       ; $7576: $62
    add l                                         ; $7577: $85
    ei                                            ; $7578: $fb
    dec c                                         ; $7579: $0d
    sbc l                                         ; $757a: $9d
    daa                                           ; $757b: $27
    ld c, [hl]                                    ; $757c: $4e
    jr nc, @-$2c                                  ; $757d: $30 $d2

    and [hl]                                      ; $757f: $a6
    cp $af                                        ; $7580: $fe $af
    nop                                           ; $7582: $00
    nop                                           ; $7583: $00
    add a                                         ; $7584: $87
    sbc l                                         ; $7585: $9d
    ld h, $79                                     ; $7586: $26 $79
    xor a                                         ; $7588: $af
    db $f4                                        ; $7589: $f4
    db $ed                                        ; $758a: $ed
    pop af                                        ; $758b: $f1
    ld c, b                                       ; $758c: $48
    ret nz                                        ; $758d: $c0

    ld h, [hl]                                    ; $758e: $66
    ld a, e                                       ; $758f: $7b
    or d                                          ; $7590: $b2
    adc a                                         ; $7591: $8f
    push hl                                       ; $7592: $e5
    nop                                           ; $7593: $00
    add c                                         ; $7594: $81
    xor d                                         ; $7595: $aa
    cp $b2                                        ; $7596: $fe $b2
    jr nc, @-$55                                  ; $7598: $30 $a9

    ld c, [hl]                                    ; $759a: $4e
    cpl                                           ; $759b: $2f
    ld l, l                                       ; $759c: $6d
    xor b                                         ; $759d: $a8
    ret nz                                        ; $759e: $c0

    db $f4                                        ; $759f: $f4
    sub l                                         ; $75a0: $95
    inc h                                         ; $75a1: $24

jr_05e_75a2:
    ld c, [hl]                                    ; $75a2: $4e
    ld [hl-], a                                   ; $75a3: $32
    nop                                           ; $75a4: $00
    ld l, l                                       ; $75a5: $6d
    xor c                                         ; $75a6: $a9
    pop af                                        ; $75a7: $f1
    ld c, l                                       ; $75a8: $4d
    pop bc                                        ; $75a9: $c1
    xor [hl]                                      ; $75aa: $ae
    ld c, [hl]                                    ; $75ab: $4e
    cpl                                           ; $75ac: $2f
    ld d, c                                       ; $75ad: $51
    db $d3                                        ; $75ae: $d3
    rst $30                                       ; $75af: $f7
    or l                                          ; $75b0: $b5
    ld c, [hl]                                    ; $75b1: $4e
    cpl                                           ; $75b2: $2f
    db $f4                                        ; $75b3: $f4
    ld [$6b00], a                                 ; $75b4: $ea $00 $6b
    xor c                                         ; $75b7: $a9
    ld [bc], a                                    ; $75b8: $02
    ld c, d                                       ; $75b9: $4a
    sub l                                         ; $75ba: $95
    inc h                                         ; $75bb: $24
    ld c, [hl]                                    ; $75bc: $4e
    jr nc, jr_05e_7601                            ; $75bd: $30 $42

    ld a, [hl+]                                   ; $75bf: $2a
    ld b, d                                       ; $75c0: $42
    inc de                                        ; $75c1: $13
    sbc d                                         ; $75c2: $9a
    and a                                         ; $75c3: $a7
    ld c, [hl]                                    ; $75c4: $4e
    ld [hl], $00                                  ; $75c5: $36 $00
    ld c, d                                       ; $75c7: $4a
    jr z, jr_05e_760c                             ; $75c8: $28 $42

    rrca                                          ; $75ca: $0f
    sbc a                                         ; $75cb: $9f
    ld [$344e], a                                 ; $75cc: $ea $4e $34
    ld c, l                                       ; $75cf: $4d
    push hl                                       ; $75d0: $e5
    rst $30                                       ; $75d1: $f7
    sub e                                         ; $75d2: $93
    add hl, sp                                    ; $75d3: $39
    ld l, b                                       ; $75d4: $68
    ld c, [hl]                                    ; $75d5: $4e
    inc [hl]                                      ; $75d6: $34
    nop                                           ; $75d7: $00
    ld b, d                                       ; $75d8: $42
    push bc                                       ; $75d9: $c5
    dec a                                         ; $75da: $3d
    jr z, jr_05e_7659                             ; $75db: $28 $7c

    db $10                                        ; $75dd: $10
    ld c, [hl]                                    ; $75de: $4e
    jr nc, jr_05e_762b                            ; $75df: $30 $4a

    ld a, [hl+]                                   ; $75e1: $2a
    rst $18                                       ; $75e2: $df
    xor c                                         ; $75e3: $a9
    ccf                                           ; $75e4: $3f
    ldh a, [rKEY1]                                ; $75e5: $f0 $4d
    ccf                                           ; $75e7: $3f
    nop                                           ; $75e8: $00
    ld a, [hl]                                    ; $75e9: $7e
    add hl, hl                                    ; $75ea: $29
    ld b, b                                       ; $75eb: $40
    ld [$0072], a                                 ; $75ec: $ea $72 $00
    ld d, [hl]                                    ; $75ef: $56
    inc c                                         ; $75f0: $0c
    di                                            ; $75f1: $f3
    db $eb                                        ; $75f2: $eb
    db $e4                                        ; $75f3: $e4
    xor $a7                                       ; $75f4: $ee $a7
    xor $56                                       ; $75f6: $ee $56
    inc c                                         ; $75f8: $0c
    nop                                           ; $75f9: $00
    rlca                                          ; $75fa: $07
    db $eb                                        ; $75fb: $eb
    rlca                                          ; $75fc: $07
    ld a, b                                       ; $75fd: $78
    di                                            ; $75fe: $f3
    inc c                                         ; $75ff: $0c
    dec hl                                        ; $7600: $2b

jr_05e_7601:
    ld a, [bc]                                    ; $7601: $0a
    ld e, b                                       ; $7602: $58
    xor h                                         ; $7603: $ac
    ld c, c                                       ; $7604: $49
    xor a                                         ; $7605: $af
    add b                                         ; $7606: $80
    jp hl                                         ; $7607: $e9


    rst $38                                       ; $7608: $ff
    rst $38                                       ; $7609: $ff
    nop                                           ; $760a: $00
    rst $20                                       ; $760b: $e7

jr_05e_760c:
    reti                                          ; $760c: $d9


    cp a                                          ; $760d: $bf
    rst $38                                       ; $760e: $ff
    ret nz                                        ; $760f: $c0

    ld a, [$ffdc]                                 ; $7610: $fa $dc $ff
    ret nz                                        ; $7613: $c0

    rst $38                                       ; $7614: $ff
    rst $38                                       ; $7615: $ff
    rst $38                                       ; $7616: $ff
    rst $38                                       ; $7617: $ff
    rst $38                                       ; $7618: $ff
    xor l                                         ; $7619: $ad
    xor [hl]                                      ; $761a: $ae
    nop                                           ; $761b: $00
    rst $08                                       ; $761c: $cf
    db $d3                                        ; $761d: $d3
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

jr_05e_762b:
    rst $38                                       ; $762b: $ff
    nop                                           ; $762c: $00
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
    nop                                           ; $763d: $00
    rst $38                                       ; $763e: $ff
    rst $38                                       ; $763f: $ff
    rst $38                                       ; $7640: $ff
    rst $38                                       ; $7641: $ff
    ld b, [hl]                                    ; $7642: $46
    ld [hl], a                                    ; $7643: $77
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
    nop                                           ; $764e: $00
    nop                                           ; $764f: $00
    add [hl]                                      ; $7650: $86
    nop                                           ; $7651: $00
    nop                                           ; $7652: $00
    nop                                           ; $7653: $00
    rst $38                                       ; $7654: $ff
    ld sp, $3131                                  ; $7655: $31 $31 $31
    ld b, a                                       ; $7658: $47

jr_05e_7659:
    ld d, [hl]                                    ; $7659: $56
    ld d, a                                       ; $765a: $57
    ld b, a                                       ; $765b: $47
    ld sp, $31ef                                  ; $765c: $31 $ef $31
    rla                                           ; $765f: $17
    jr z, jr_05e_7682                             ; $7660: $28 $20

    rst $38                                       ; $7662: $ff
    ldh [$28], a                                  ; $7663: $e0 $28
    ld hl, $e721                                  ; $7665: $21 $21 $e7
    dec d                                         ; $7668: $15
    ld sp, $ff00                                  ; $7669: $31 $00 $ff
    rst $38                                       ; $766c: $ff
    rst $20                                       ; $766d: $e7
    and $31                                       ; $766e: $e6 $31
    ld b, a                                       ; $7670: $47
    ld b, [hl]                                    ; $7671: $46
    rst $38                                       ; $7672: $ff
    ld [hl], $30                                  ; $7673: $36 $30
    ld l, e                                       ; $7675: $6b
    ld [hl], $3c                                  ; $7676: $36 $3c
    ld sp, $1615                                  ; $7678: $31 $15 $16
    db $e4                                        ; $767b: $e4
    ret nz                                        ; $767c: $c0

    pop hl                                        ; $767d: $e1
    cp [hl]                                       ; $767e: $be
    ldh [rNR22], a                                ; $767f: $e0 $17
    ret nz                                        ; $7681: $c0

jr_05e_7682:
    rst $38                                       ; $7682: $ff
    jp hl                                         ; $7683: $e9


    add sp, $37                                   ; $7684: $e8 $37
    ld [hl], $30                                  ; $7686: $36 $30
    cp a                                          ; $7688: $bf
    jr nc, jr_05e_76bb                            ; $7689: $30 $30

    ld l, e                                       ; $768b: $6b
    ld l, e                                       ; $768c: $6b
    ld c, b                                       ; $768d: $48
    ld c, c                                       ; $768e: $49
    ld a, a                                       ; $768f: $7f
    db $e4                                        ; $7690: $e4
    jr nz, jr_05e_76ba                            ; $7691: $20 $27

    jr nz, jr_05e_76ab                            ; $7693: $20 $16

    dec d                                         ; $7695: $15
    jp z, $e8ff                                   ; $7696: $ca $ff $e8

jr_05e_7699:
    rst $20                                       ; $7699: $e7
    ld d, c                                       ; $769a: $51
    pop bc                                        ; $769b: $c1
    ldh [$c0], a                                  ; $769c: $e0 $c0
    ldh [$3f], a                                  ; $769e: $e0 $3f
    jr nc, @+$3b                                  ; $76a0: $30 $39

    ld sp, $2715                                  ; $76a2: $31 $15 $27
    dec b                                         ; $76a5: $05
    rst $38                                       ; $76a6: $ff
    ldh [$7f], a                                  ; $76a7: $e0 $7f
    pop hl                                        ; $76a9: $e1
    ld [hl], h                                    ; $76aa: $74

jr_05e_76ab:
    jp z, $e8ff                                   ; $76ab: $ca $ff $e8

    rst $20                                       ; $76ae: $e7
    ld d, b                                       ; $76af: $50
    ret nz                                        ; $76b0: $c0

    db $e3                                        ; $76b1: $e3
    ld l, c                                       ; $76b2: $69
    ld c, b                                       ; $76b3: $48
    inc a                                         ; $76b4: $3c
    or $c0                                        ; $76b5: $f6 $c0
    db $e4                                        ; $76b7: $e4
    di                                            ; $76b8: $f3
    ret nz                                        ; $76b9: $c0

jr_05e_76ba:
    ld sp, hl                                     ; $76ba: $f9

jr_05e_76bb:
    ret nz                                        ; $76bb: $c0

    ld d, $ca                                     ; $76bc: $16 $ca
    rst $38                                       ; $76be: $ff
    add sp, -$19                                  ; $76bf: $e8 $e7
    ld c, c                                       ; $76c1: $49
    ld c, b                                       ; $76c2: $48
    ld l, h                                       ; $76c3: $6c
    rst $38                                       ; $76c4: $ff
    ld l, h                                       ; $76c5: $6c
    ld l, h                                       ; $76c6: $6c
    ld l, l                                       ; $76c7: $6d
    ld l, e                                       ; $76c8: $6b
    ld l, c                                       ; $76c9: $69
    jr nc, jr_05e_7702                            ; $76ca: $30 $36

    ld b, [hl]                                    ; $76cc: $46
    ld b, e                                       ; $76cd: $43
    ld d, [hl]                                    ; $76ce: $56
    ld d, [hl]                                    ; $76cf: $56
    cp c                                          ; $76d0: $b9
    ret nz                                        ; $76d1: $c0

    ld sp, hl                                     ; $76d2: $f9
    pop bc                                        ; $76d3: $c1
    jp z, $c0ff                                   ; $76d4: $ca $ff $c0

    ret z                                         ; $76d7: $c8

    add hl, sp                                    ; $76d8: $39
    ret nz                                        ; $76d9: $c0

    ldh [rNR13], a                                ; $76da: $e0 $13
    ld l, h                                       ; $76dc: $6c
    ld l, d                                       ; $76dd: $6a
    ei                                            ; $76de: $fb
    pop bc                                        ; $76df: $c1
    cp h                                          ; $76e0: $bc
    pop hl                                        ; $76e1: $e1
    ld c, l                                       ; $76e2: $4d
    ld a, b                                       ; $76e3: $78
    pop bc                                        ; $76e4: $c1
    jp z, $80ff                                   ; $76e5: $ca $ff $80

    ret z                                         ; $76e8: $c8

    ld e, a                                       ; $76e9: $5f
    ld c, c                                       ; $76ea: $49
    ld [hl], $68                                  ; $76eb: $36 $68
    ld l, b                                       ; $76ed: $68
    ld l, b                                       ; $76ee: $68
    ei                                            ; $76ef: $fb
    jp nz, $b769                                  ; $76f0: $c2 $69 $b7

    ret nz                                        ; $76f3: $c0

    cp b                                          ; $76f4: $b8
    ld sp, hl                                     ; $76f5: $f9
    jp nz, $ffca                                  ; $76f6: $c2 $ca $ff

    ld b, b                                       ; $76f9: $40
    ret z                                         ; $76fa: $c8

    ld sp, $3247                                  ; $76fb: $31 $47 $32
    cp l                                          ; $76fe: $bd
    pop bc                                        ; $76ff: $c1
    jr nc, jr_05e_7699                            ; $7700: $30 $97

jr_05e_7702:
    ld l, l                                       ; $7702: $6d
    ld l, l                                       ; $7703: $6d
    ld l, d                                       ; $7704: $6a
    ld a, b                                       ; $7705: $78
    jp Jump_05e_4031                              ; $7706: $c3 $31 $40


    rst $18                                       ; $7709: $df
    jp hl                                         ; $770a: $e9


    add sp, $12                                   ; $770b: $e8 $12
    adc a                                         ; $770d: $8f
    ld de, $4d31                                  ; $770e: $11 $31 $4d
    ld [hl-], a                                   ; $7711: $32
    dec a                                         ; $7712: $3d
    pop hl                                        ; $7713: $e1
    pop bc                                        ; $7714: $c1
    ldh [$38], a                                  ; $7715: $e0 $38
    ret nz                                        ; $7717: $c0

    ld l, e                                       ; $7718: $6b
    rst $08                                       ; $7719: $cf
    ld d, b                                       ; $771a: $50
    ld sp, $6031                                  ; $771b: $31 $31 $60
    jp z, $e8ff                                   ; $771e: $ca $ff $e8

    rst $20                                       ; $7721: $e7
    ld [hl+], a                                   ; $7722: $22
    ld hl, $12f3                                  ; $7723: $21 $f3 $12
    ld de, $e23d                                  ; $7726: $11 $3d $e2
    db $fd                                        ; $7729: $fd
    jp nz, $6b6b                                  ; $772a: $c2 $6b $6b

    ld d, c                                       ; $772d: $51
    ld sp, $60f3                                  ; $772e: $31 $f3 $60
    ld e, e                                       ; $7731: $5b
    jp z, $e8ff                                   ; $7732: $ca $ff $e8

    rst $20                                       ; $7735: $e7
    jr nz, @+$2a                                  ; $7736: $20 $28

    ld [hl+], a                                   ; $7738: $22
    ld hl, $010f                                  ; $7739: $21 $0f $01
    ld b, a                                       ; $773c: $47
    ld b, [hl]                                    ; $773d: $46
    ccf                                           ; $773e: $3f
    cp d                                          ; $773f: $ba
    and b                                         ; $7740: $a0
    ld a, b                                       ; $7741: $78
    pop bc                                        ; $7742: $c1
    add b                                         ; $7743: $80
    ldh [$c0], a                                  ; $7744: $e0 $c0
    rst $38                                       ; $7746: $ff
    sbc b                                         ; $7747: $98
    ret nz                                        ; $7748: $c0

    ld [$a00c], a                                 ; $7749: $ea $0c $a0
    inc a                                         ; $774c: $3c
    ldh [rOBP1], a                                ; $774d: $e0 $49
    ld c, b                                       ; $774f: $48
    pop bc                                        ; $7750: $c1
    ldh [$37], a                                  ; $7751: $e0 $37
    ret nz                                        ; $7753: $c0

    ld c, b                                       ; $7754: $48
    ret                                           ; $7755: $c9


    xor a                                         ; $7756: $af
    ld b, b                                       ; $7757: $40
    rst $38                                       ; $7758: $ff
    ret nz                                        ; $7759: $c0

    db $ed                                        ; $775a: $ed
    jr nz, jr_05e_7799                            ; $775b: $20 $3c

    pop hl                                        ; $775d: $e1
    add hl, sp                                    ; $775e: $39
    jp nz, Jump_05e_6c6c                          ; $775f: $c2 $6c $6c

    ld b, a                                       ; $7762: $47
    add e                                         ; $7763: $83
    xor d                                         ; $7764: $aa
    ld [hl], b                                    ; $7765: $70
    ret nz                                        ; $7766: $c0

    rst $18                                       ; $7767: $df
    ret nz                                        ; $7768: $c0

    db $ed                                        ; $7769: $ed
    cp [hl]                                       ; $776a: $be
    ldh [$2b], a                                  ; $776b: $e0 $2b
    cp e                                          ; $776d: $bb
    jp Jump_05e_719f                              ; $776e: $c3 $9f $71


    ld a, c                                       ; $7771: $79
    add b                                         ; $7772: $80
    xor [hl]                                      ; $7773: $ae
    ld [hl], b                                    ; $7774: $70
    ret nz                                        ; $7775: $c0

    rst $38                                       ; $7776: $ff
    ret nz                                        ; $7777: $c0

    xor $20                                       ; $7778: $ee $20
    rst $38                                       ; $777a: $ff
    nop                                           ; $777b: $00
    ld bc, $464d                                  ; $777c: $01 $4d $46
    ld d, l                                       ; $777f: $55
    ld d, l                                       ; $7780: $55
    ld l, [hl]                                    ; $7781: $6e
    ld a, c                                       ; $7782: $79
    inc bc                                        ; $7783: $03
    add b                                         ; $7784: $80
    add b                                         ; $7785: $80
    cp a                                          ; $7786: $bf
    ldh [$ca], a                                  ; $7787: $e0 $ca
    rst $38                                       ; $7789: $ff
    rst $38                                       ; $778a: $ff
    rst $38                                       ; $778b: $ff
    rst $38                                       ; $778c: $ff
    rst $38                                       ; $778d: $ff
    rst $38                                       ; $778e: $ff
    rst $38                                       ; $778f: $ff
    rst $38                                       ; $7790: $ff
    rst $38                                       ; $7791: $ff
    nop                                           ; $7792: $00
    rst $38                                       ; $7793: $ff
    rst $38                                       ; $7794: $ff
    rst $38                                       ; $7795: $ff
    rst $38                                       ; $7796: $ff
    rst $38                                       ; $7797: $ff
    rst $38                                       ; $7798: $ff

jr_05e_7799:
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
    nop                                           ; $77a3: $00
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
    nop                                           ; $77b4: $00
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

Call_05e_77c4:
    rst $38                                       ; $77c4: $ff
    nop                                           ; $77c5: $00
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
    nop                                           ; $77d6: $00
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
    nop                                           ; $77e7: $00
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
    nop                                           ; $77f8: $00
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
    nop                                           ; $7809: $00
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
    nop                                           ; $781a: $00
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
    nop                                           ; $782b: $00
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
    nop                                           ; $783c: $00
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
    di                                            ; $784a: $f3
    nop                                           ; $784b: $00
    nop                                           ; $784c: $00
    nop                                           ; $784d: $00
    and l                                         ; $784e: $a5
    nop                                           ; $784f: $00
    rst $38                                       ; $7850: $ff
    push hl                                       ; $7851: $e5
    ld [hl-], a                                   ; $7852: $32
    or $e6                                        ; $7853: $f6 $e6
    rst $30                                       ; $7855: $f7
    rst $20                                       ; $7856: $e7
    dec [hl]                                      ; $7857: $35
    db $ec                                        ; $7858: $ec
    xor $37                                       ; $7859: $ee $37
    db $ec                                        ; $785b: $ec
    jp c, $c7f0                                   ; $785c: $da $f0 $c7

    add sp, $33                                   ; $785f: $e8 $33
    ld sp, $f2e0                                  ; $7861: $31 $e0 $f2
    ld [hl], $30                                  ; $7864: $36 $30
    scf                                           ; $7866: $37
    cp a                                          ; $7867: $bf
    ld h, $20                                     ; $7868: $26 $20
    daa                                           ; $786a: $27
    db $10                                        ; $786b: $10
    ld d, $17                                     ; $786c: $16 $17
    jp nz, Jump_000_34f6                          ; $786e: $c2 $f6 $34

    rst $38                                       ; $7871: $ff
    ld [hl], $32                                  ; $7872: $36 $32
    jr nc, jr_05e_78ad                            ; $7874: $30 $37

    ld sp, $3133                                  ; $7876: $31 $33 $31
    inc sp                                        ; $7879: $33
    nop                                           ; $787a: $00
    and b                                         ; $787b: $a0
    ei                                            ; $787c: $fb
    rst $38                                       ; $787d: $ff
    rst $28                                       ; $787e: $ef
    nop                                           ; $787f: $00
    nop                                           ; $7880: $00
    nop                                           ; $7881: $00
    adc d                                         ; $7882: $8a
    ld a, b                                       ; $7883: $78
    cp d                                          ; $7884: $ba
    ld a, b                                       ; $7885: $78
    dec [hl]                                      ; $7886: $35
    ld a, d                                       ; $7887: $7a
    dec e                                         ; $7888: $1d
    ld a, h                                       ; $7889: $7c
    ret z                                         ; $788a: $c8

    inc bc                                        ; $788b: $03
    call nz, $0306                                ; $788c: $c4 $06 $03
    ld [bc], a                                    ; $788f: $02
    ld [bc], a                                    ; $7890: $02
    ld bc, $03c8                                  ; $7891: $01 $c8 $03
    ldh a, [$03]                                  ; $7894: $f0 $03
    call nz, $0306                                ; $7896: $c4 $06 $03
    ld [bc], a                                    ; $7899: $02
    ld c, b                                       ; $789a: $48
    ld a, a                                       ; $789b: $7f
    ld c, b                                       ; $789c: $48
    ld a, a                                       ; $789d: $7f
    ld c, b                                       ; $789e: $48
    ld a, a                                       ; $789f: $7f
    ld c, b                                       ; $78a0: $48
    ld a, a                                       ; $78a1: $7f
    ld e, a                                       ; $78a2: $5f
    ld e, e                                       ; $78a3: $5b
    ret z                                         ; $78a4: $c8

    inc bc                                        ; $78a5: $03
    inc bc                                        ; $78a6: $03
    ld [bc], a                                    ; $78a7: $02
    ld [bc], a                                    ; $78a8: $02
    ld bc, $0116                                  ; $78a9: $01 $16 $01
    ret z                                         ; $78ac: $c8

jr_05e_78ad:
    inc bc                                        ; $78ad: $03
    inc bc                                        ; $78ae: $03
    ld [bc], a                                    ; $78af: $02
    ld [bc], a                                    ; $78b0: $02
    ld bc, $2508                                  ; $78b1: $01 $08 $25
    ld [$0825], sp                                ; $78b4: $08 $25 $08
    dec h                                         ; $78b7: $25
    ld [$9d25], sp                                ; $78b8: $08 $25 $9d
    dec bc                                        ; $78bb: $0b
    rst $38                                       ; $78bc: $ff
    pop hl                                        ; $78bd: $e1
    ld l, e                                       ; $78be: $6b
    ld l, e                                       ; $78bf: $6b
    ld c, e                                       ; $78c0: $4b
    rst $38                                       ; $78c1: $ff
    pop hl                                        ; $78c2: $e1
    db $f4                                        ; $78c3: $f4
    ld [c], a                                     ; $78c4: $e2
    dec hl                                        ; $78c5: $2b
    db $e3                                        ; $78c6: $e3
    dec hl                                        ; $78c7: $2b
    ld a, [bc]                                    ; $78c8: $0a
    db $ec                                        ; $78c9: $ec
    ld [c], a                                     ; $78ca: $e2
    rst $38                                       ; $78cb: $ff
    rst $38                                       ; $78cc: $ff
    and $e5                                       ; $78cd: $e6 $e5
    ld l, e                                       ; $78cf: $6b
    ld l, e                                       ; $78d0: $6b
    dec hl                                        ; $78d1: $2b
    dec de                                        ; $78d2: $1b
    dec hl                                        ; $78d3: $2b
    ld l, e                                       ; $78d4: $6b
    cp l                                          ; $78d5: $bd
    db $e4                                        ; $78d6: $e4
    ld c, e                                       ; $78d7: $4b
    dec hl                                        ; $78d8: $2b
    cp [hl]                                       ; $78d9: $be
    ldh [$cd], a                                  ; $78da: $e0 $cd
    rst $38                                       ; $78dc: $ff
    ld [$83e9], a                                 ; $78dd: $ea $e9 $83
    ld c, e                                       ; $78e0: $4b
    dec bc                                        ; $78e1: $0b
    jp nz, Jump_05e_7de1                          ; $78e2: $c2 $e1 $7d

    push hl                                       ; $78e5: $e5
    ld a, d                                       ; $78e6: $7a
    db $e4                                        ; $78e7: $e4
    rst $38                                       ; $78e8: $ff
    rst $38                                       ; $78e9: $ff
    pop bc                                        ; $78ea: $c1
    and $4b                                       ; $78eb: $e6 $4b
    ld c, $82                                     ; $78ed: $0e $82
    ldh [$2b], a                                  ; $78ef: $e0 $2b
    dec hl                                        ; $78f1: $2b
    dec hl                                        ; $78f2: $2b
    add c                                         ; $78f3: $81
    db $e3                                        ; $78f4: $e3
    ld [hl], l                                    ; $78f5: $75
    ldh [$bf], a                                  ; $78f6: $e0 $bf
    rst $38                                       ; $78f8: $ff
    add d                                         ; $78f9: $82
    db $eb                                        ; $78fa: $eb
    ld [bc], a                                    ; $78fb: $02
    ld c, $e0                                     ; $78fc: $0e $e0
    dec hl                                        ; $78fe: $2b
    nop                                           ; $78ff: $00
    db $e3                                        ; $7900: $e3
    ld a, c                                       ; $7901: $79
    pop hl                                        ; $7902: $e1
    ret nz                                        ; $7903: $c0

    rst $38                                       ; $7904: $ff
    ret nz                                        ; $7905: $c0

    ldh a, [rSC]                                  ; $7906: $f0 $02
    db $e4                                        ; $7908: $e4
    ld a, d                                       ; $7909: $7a
    ldh [rP1], a                                  ; $790a: $e0 $00
    or l                                          ; $790c: $b5
    ld [c], a                                     ; $790d: $e2
    jp z, $ffff                                   ; $790e: $ca $ff $ff

    rlc b                                         ; $7911: $cb $00
    ld [c], a                                     ; $7913: $e2
    ret nz                                        ; $7914: $c0

    ld [c], a                                     ; $7915: $e2
    ld hl, sp-$3d                                 ; $7916: $f8 $c3
    call $81ff                                    ; $7918: $cd $ff $81
    jp z, $8a02                                   ; $791b: $ca $02 $8a

    ld [c], a                                     ; $791e: $e2
    ld l, e                                       ; $791f: $6b
    cp d                                          ; $7920: $ba
    ret nz                                        ; $7921: $c0

    ret nz                                        ; $7922: $c0

    db $e3                                        ; $7923: $e3
    dec l                                         ; $7924: $2d
    pop hl                                        ; $7925: $e1
    rst $38                                       ; $7926: $ff
    rst $38                                       ; $7927: $ff
    add sp, -$19                                  ; $7928: $e8 $e7
    add $c1                                       ; $792a: $c6 $c1
    nop                                           ; $792c: $00
    ld b, c                                       ; $792d: $41
    pop bc                                        ; $792e: $c1
    cp e                                          ; $792f: $bb
    pop bc                                        ; $7930: $c1
    ld [hl], a                                    ; $7931: $77
    jp nz, $ffcd                                  ; $7932: $c2 $cd $ff

    jp nz, $4ee9                                  ; $7935: $c2 $e9 $4e

    ret nz                                        ; $7938: $c0

    rst $00                                       ; $7939: $c7
    jp $c5bd                                      ; $793a: $c3 $bd $c5


    db $10                                        ; $793d: $10
    ld bc, $82df                                  ; $793e: $01 $df $82
    ld [$c3cb], a                                 ; $7941: $ea $cb $c3
    ret nz                                        ; $7944: $c0

    push hl                                       ; $7945: $e5
    ld c, e                                       ; $7946: $4b
    add d                                         ; $7947: $82
    rst $38                                       ; $7948: $ff
    cp [hl]                                       ; $7949: $be
    ld a, [c]                                     ; $794a: $f2
    ld c, b                                       ; $794b: $48
    pop bc                                        ; $794c: $c1
    nop                                           ; $794d: $00
    pop bc                                        ; $794e: $c1
    rst $38                                       ; $794f: $ff
    pop bc                                        ; $7950: $c1
    sub $be                                       ; $7951: $d6 $be
    jp nz, $c587                                  ; $7953: $c2 $87 $c5

    cp h                                          ; $7956: $bc
    rst $38                                       ; $7957: $ff
    nop                                           ; $7958: $00
    ld [$e4c0], a                                 ; $7959: $ea $c0 $e4
    ld a, [c]                                     ; $795c: $f2
    add a                                         ; $795d: $87
    adc b                                         ; $795e: $88
    ret nz                                        ; $795f: $c0

    sbc a                                         ; $7960: $9f
    add b                                         ; $7961: $80
    xor l                                         ; $7962: $ad
    or e                                          ; $7963: $b3
    adc c                                         ; $7964: $89
    ld a, [bc]                                    ; $7965: $0a
    pop bc                                        ; $7966: $c1
    rst $38                                       ; $7967: $ff
    ld bc, $74ab                                  ; $7968: $01 $ab $74
    adc e                                         ; $796b: $8b
    ld a, [bc]                                    ; $796c: $0a
    ld bc, $c00a                                  ; $796d: $01 $0a $c0
    cp a                                          ; $7970: $bf
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
    nop                                           ; $797d: $00
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
    nop                                           ; $798e: $00
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
    nop                                           ; $799f: $00
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
    nop                                           ; $79b0: $00
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
    nop                                           ; $79c1: $00
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
    nop                                           ; $79d2: $00
    rst $38                                       ; $79d3: $ff
    rst $38                                       ; $79d4: $ff

Call_05e_79d5:
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
    nop                                           ; $79e3: $00
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
    nop                                           ; $79f4: $00
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
    nop                                           ; $7a05: $00
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
    nop                                           ; $7a16: $00
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
    nop                                           ; $7a27: $00
    rst $38                                       ; $7a28: $ff
    rst $38                                       ; $7a29: $ff
    rst $38                                       ; $7a2a: $ff
    rst $38                                       ; $7a2b: $ff
    rst $38                                       ; $7a2c: $ff
    rst $38                                       ; $7a2d: $ff
    rst $38                                       ; $7a2e: $ff
    rst $38                                       ; $7a2f: $ff
    rst $38                                       ; $7a30: $ff
    push af                                       ; $7a31: $f5
    nop                                           ; $7a32: $00
    nop                                           ; $7a33: $00

jr_05e_7a34:
    nop                                           ; $7a34: $00
    rst $38                                       ; $7a35: $ff
    add hl, hl                                    ; $7a36: $29
    ld l, $01                                     ; $7a37: $2e $01
    ld bc, $4401                                  ; $7a39: $01 $01 $44
    ld d, $23                                     ; $7a3c: $16 $23
    rst $28                                       ; $7a3e: $ef
    ld [hl+], a                                   ; $7a3f: $22
    inc hl                                        ; $7a40: $23
    ld d, $17                                     ; $7a41: $16 $17
    or $e0                                        ; $7a43: $f6 $e0

jr_05e_7a45:
    jr nc, jr_05e_7a77                            ; $7a45: $30 $30

    dec hl                                        ; $7a47: $2b
    rst $00                                       ; $7a48: $c7
    ld a, [hl+]                                   ; $7a49: $2a
    jr z, jr_05e_7a9d                             ; $7a4a: $28 $51

    rst $38                                       ; $7a4c: $ff
    rst $38                                       ; $7a4d: $ff
    rst $20                                       ; $7a4e: $e7
    and $c1                                       ; $7a4f: $e6 $c1
    ldh [rLY], a                                  ; $7a51: $e0 $44
    ld b, e                                       ; $7a53: $43
    db $db                                        ; $7a54: $db
    ld b, c                                       ; $7a55: $41
    nop                                           ; $7a56: $00
    rst $38                                       ; $7a57: $ff
    ldh [$3b], a                                  ; $7a58: $e0 $3b
    ld b, $bb                                     ; $7a5a: $06 $bb
    ldh [$15], a                                  ; $7a5c: $e0 $15
    inc b                                         ; $7a5e: $04
    rst $20                                       ; $7a5f: $e7
    ld bc, $2e01                                  ; $7a60: $01 $01 $2e
    jp z, $e8ff                                   ; $7a63: $ca $ff $e8

    rst $20                                       ; $7a66: $e7
    ld bc, $4201                                  ; $7a67: $01 $01 $42
    db $ed                                        ; $7a6a: $ed
    inc a                                         ; $7a6b: $3c
    pop bc                                        ; $7a6c: $c1
    ld [c], a                                     ; $7a6d: $e2
    nop                                           ; $7a6e: $00
    dec sp                                        ; $7a6f: $3b
    rst $38                                       ; $7a70: $ff
    ldh [$38], a                                  ; $7a71: $e0 $38
    nop                                           ; $7a73: $00
    inc d                                         ; $7a74: $14
    rst $20                                       ; $7a75: $e7
    inc c                                         ; $7a76: $0c

jr_05e_7a77:
    ld bc, $ca01                                  ; $7a77: $01 $01 $ca
    rst $38                                       ; $7a7a: $ff
    ret nz                                        ; $7a7b: $c0

    add sp, $42                                   ; $7a7c: $e8 $42
    inc a                                         ; $7a7e: $3c
    ld c, d                                       ; $7a7f: $4a
    db $eb                                        ; $7a80: $eb
    nop                                           ; $7a81: $00
    jr c, jr_05e_7a45                             ; $7a82: $38 $c1

    ld [c], a                                     ; $7a84: $e2
    jr c, @+$01                                   ; $7a85: $38 $ff

    ldh [rP1], a                                  ; $7a87: $e0 $00
    jr c, jr_05e_7a90                             ; $7a89: $38 $05

    reti                                          ; $7a8b: $d9


    dec e                                         ; $7a8c: $1d
    ret nz                                        ; $7a8d: $c0

    rst $38                                       ; $7a8e: $ff
    jp hl                                         ; $7a8f: $e9


jr_05e_7a90:
    add sp, $3f                                   ; $7a90: $e8 $3f
    inc a                                         ; $7a92: $3c
    ret nz                                        ; $7a93: $c0

    ldh [rP1], a                                  ; $7a94: $e0 $00
    jr c, jr_05e_7a34                             ; $7a96: $38 $9c

    add e                                         ; $7a98: $83
    db $e3                                        ; $7a99: $e3
    add hl, sp                                    ; $7a9a: $39
    ldh [$38], a                                  ; $7a9b: $e0 $38

jr_05e_7a9d:
    nop                                           ; $7a9d: $00
    add hl, bc                                    ; $7a9e: $09
    ret nz                                        ; $7a9f: $c0

    rst $38                                       ; $7aa0: $ff
    jp hl                                         ; $7aa1: $e9


    add sp, $3d                                   ; $7aa2: $e8 $3d
    rst $00                                       ; $7aa4: $c7
    inc a                                         ; $7aa5: $3c
    inc a                                         ; $7aa6: $3c
    ld a, $c9                                     ; $7aa7: $3e $c9
    pop hl                                        ; $7aa9: $e1
    ld b, e                                       ; $7aaa: $43
    ld [c], a                                     ; $7aab: $e2
    ld a, [hl]                                    ; $7aac: $7e
    ld [c], a                                     ; $7aad: $e2
    jr @+$1b                                      ; $7aae: $18 $19

    cp h                                          ; $7ab0: $bc
    jp z, $e8ff                                   ; $7ab1: $ca $ff $e8

    rst $20                                       ; $7ab4: $e7
    ld c, d                                       ; $7ab5: $4a
    inc a                                         ; $7ab6: $3c
    inc a                                         ; $7ab7: $3c
    ld b, b                                       ; $7ab8: $40
    adc b                                         ; $7ab9: $88
    ld [c], a                                     ; $7aba: $e2
    ld [hl], $09                                  ; $7abb: $36 $09
    ld [hl], $43                                  ; $7abd: $36 $43
    ldh [$f7], a                                  ; $7abf: $e0 $f7
    jp nz, $ca1f                                  ; $7ac1: $c2 $1f $ca

    rst $38                                       ; $7ac4: $ff
    add b                                         ; $7ac5: $80
    jp hl                                         ; $7ac6: $e9


    ld b, c                                       ; $7ac7: $41
    ldh [$81], a                                  ; $7ac8: $e0 $81
    pop bc                                        ; $7aca: $c1
    db $e3                                        ; $7acb: $e3
    ld c, l                                       ; $7acc: $4d
    ld c, l                                       ; $7acd: $4d
    ld b, e                                       ; $7ace: $43
    pop hl                                        ; $7acf: $e1
    ret nz                                        ; $7ad0: $c0

    rst $38                                       ; $7ad1: $ff
    nop                                           ; $7ad2: $00
    xor $3e                                       ; $7ad3: $ee $3e
    ld a, [hl-]                                   ; $7ad5: $3a

jr_05e_7ad6:
    ld a, [hl-]                                   ; $7ad6: $3a
    ld h, l                                       ; $7ad7: $65
    ld a, [hl-]                                   ; $7ad8: $3a
    ret nz                                        ; $7ad9: $c0

    pop hl                                        ; $7ada: $e1
    ld c, [hl]                                    ; $7adb: $4e
    pop bc                                        ; $7adc: $c1
    pop bc                                        ; $7add: $c1
    scf                                           ; $7ade: $37
    ret nz                                        ; $7adf: $c0

    dec b                                         ; $7ae0: $05
    dec e                                         ; $7ae1: $1d
    jp z, $feff                                   ; $7ae2: $ca $ff $fe

    add sp, -$19                                  ; $7ae5: $e8 $e7
    ld c, h                                       ; $7ae7: $4c
    inc a                                         ; $7ae8: $3c
    ld b, b                                       ; $7ae9: $40
    inc sp                                        ; $7aea: $33
    inc sp                                        ; $7aeb: $33
    dec [hl]                                      ; $7aec: $35
    dec sp                                        ; $7aed: $3b
    ld c, b                                       ; $7aee: $48
    cp l                                          ; $7aef: $bd
    ret nz                                        ; $7af0: $c0

    cp c                                          ; $7af1: $b9
    ldh [$b7], a                                  ; $7af2: $e0 $b7
    ld [c], a                                     ; $7af4: $e2
    ld hl, $dfc0                                  ; $7af5: $21 $c0 $df
    ret nz                                        ; $7af8: $c0

    jp hl                                         ; $7af9: $e9


    ld a, $08                                     ; $7afa: $3e $08
    pop bc                                        ; $7afc: $c1
    ld a, d                                       ; $7afd: $7a
    cp a                                          ; $7afe: $bf
    ldh [$37], a                                  ; $7aff: $e0 $37
    ret nz                                        ; $7b01: $c0

    ld [c], a                                     ; $7b02: $e2
    ld a, [hl-]                                   ; $7b03: $3a
    nop                                           ; $7b04: $00
    ld b, $0c                                     ; $7b05: $06 $0c
    ret nz                                        ; $7b07: $c0

    rst $38                                       ; $7b08: $ff
    cp d                                          ; $7b09: $ba
    ret nz                                        ; $7b0a: $c0

    xor c                                         ; $7b0b: $a9
    jr nz, jr_05e_7ad6                            ; $7b0c: $20 $c8

    and c                                         ; $7b0e: $a1
    dec sp                                        ; $7b0f: $3b
    dec [hl]                                      ; $7b10: $35
    add hl, sp                                    ; $7b11: $39
    ret nz                                        ; $7b12: $c0

    db $e3                                        ; $7b13: $e3
    ld [de], a                                    ; $7b14: $12
    or c                                          ; $7b15: $b1
    dec d                                         ; $7b16: $15
    ld a, [hl-]                                   ; $7b17: $3a
    and b                                         ; $7b18: $a0
    jp z, $80ff                                   ; $7b19: $ca $ff $80

    xor b                                         ; $7b1c: $a8
    ld c, $02                                     ; $7b1d: $0e $02
    add a                                         ; $7b1f: $87
    and c                                         ; $7b20: $a1
    inc [hl]                                      ; $7b21: $34
    adc l                                         ; $7b22: $8d
    add hl, sp                                    ; $7b23: $39
    ccf                                           ; $7b24: $3f
    pop hl                                        ; $7b25: $e1
    ld b, $22                                     ; $7b26: $06 $22
    add d                                         ; $7b28: $82
    and b                                         ; $7b29: $a0
    ld b, b                                       ; $7b2a: $40
    cp a                                          ; $7b2b: $bf
    ld [$2fe9], a                                 ; $7b2c: $ea $e9 $2f
    dec sp                                        ; $7b2f: $3b
    ld bc, $bf1d                                  ; $7b30: $01 $1d $bf
    pop hl                                        ; $7b33: $e1
    inc [hl]                                      ; $7b34: $34
    add hl, sp                                    ; $7b35: $39
    ld b, $03                                     ; $7b36: $06 $03
    and b                                         ; $7b38: $a0
    cp [hl]                                       ; $7b39: $be
    add c                                         ; $7b3a: $81
    adc h                                         ; $7b3b: $8c
    ret nz                                        ; $7b3c: $c0

    sbc a                                         ; $7b3d: $9f
    ret nz                                        ; $7b3e: $c0

    adc l                                         ; $7b3f: $8d
    dec e                                         ; $7b40: $1d
    dec d                                         ; $7b41: $15
    rst $00                                       ; $7b42: $c7
    add c                                         ; $7b43: $81
    add d                                         ; $7b44: $82
    add c                                         ; $7b45: $81
    add e                                         ; $7b46: $83
    pop hl                                        ; $7b47: $e1
    jr z, @+$05                                   ; $7b48: $28 $03

    jr z, jr_05e_7b75                             ; $7b4a: $28 $29

    jp z, $e8ff                                   ; $7b4c: $ca $ff $e8

    rst $20                                       ; $7b4f: $e7
    ld b, b                                       ; $7b50: $40
    add d                                         ; $7b51: $82
    db $fd                                        ; $7b52: $fd
    rst $20                                       ; $7b53: $e7
    pop bc                                        ; $7b54: $c1
    pop hl                                        ; $7b55: $e1
    ret nz                                        ; $7b56: $c0

    rst $38                                       ; $7b57: $ff
    nop                                           ; $7b58: $00
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
    nop                                           ; $7b69: $00
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

jr_05e_7b75:
    rst $38                                       ; $7b75: $ff
    rst $38                                       ; $7b76: $ff
    rst $38                                       ; $7b77: $ff
    rst $38                                       ; $7b78: $ff
    rst $38                                       ; $7b79: $ff
    nop                                           ; $7b7a: $00
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
    nop                                           ; $7b8b: $00
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
    nop                                           ; $7b9c: $00
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
    nop                                           ; $7bad: $00
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
    nop                                           ; $7bbe: $00
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
    nop                                           ; $7bcf: $00
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
    nop                                           ; $7be0: $00
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
    nop                                           ; $7bf1: $00
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
    nop                                           ; $7c02: $00
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
    nop                                           ; $7c13: $00
    rst $38                                       ; $7c14: $ff
    rst $38                                       ; $7c15: $ff
    rst $38                                       ; $7c16: $ff
    rst $38                                       ; $7c17: $ff
    rst $38                                       ; $7c18: $ff
    db $f4                                        ; $7c19: $f4
    nop                                           ; $7c1a: $00
    nop                                           ; $7c1b: $00
    nop                                           ; $7c1c: $00
    ld sp, hl                                     ; $7c1d: $f9
    nop                                           ; $7c1e: $00
    rst $38                                       ; $7c1f: $ff

Jump_05e_7c20:
    rst $38                                       ; $7c20: $ff
    xor $ed                                       ; $7c21: $ee $ed
    ld [hl], $30                                  ; $7c23: $36 $30
    scf                                           ; $7c25: $37
    ld h, $20                                     ; $7c26: $26 $20
    cpl                                           ; $7c28: $2f
    daa                                           ; $7c29: $27
    db $10                                        ; $7c2a: $10
    ld d, $17                                     ; $7c2b: $16 $17
    push de                                       ; $7c2d: $d5
    rst $28                                       ; $7c2e: $ef
    ld de, $e0ff                                  ; $7c2f: $11 $ff $e0
    cp a                                          ; $7c32: $bf
    rst $38                                       ; $7c33: $ff
    nop                                           ; $7c34: $00
    rst $38                                       ; $7c35: $ff
    rst $38                                       ; $7c36: $ff
    rst $38                                       ; $7c37: $ff
    rst $38                                       ; $7c38: $ff
    rst $38                                       ; $7c39: $ff
    push hl                                       ; $7c3a: $e5
    nop                                           ; $7c3b: $00
    nop                                           ; $7c3c: $00
    nop                                           ; $7c3d: $00
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

Call_05e_7d00:
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

Jump_05e_7d3a:
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

Jump_05e_7de1:
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

Jump_05e_7f0f:
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

Jump_05e_7f6c:
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
